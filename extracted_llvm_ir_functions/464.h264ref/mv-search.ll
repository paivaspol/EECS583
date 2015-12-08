; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/mv-search.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, i32, i8** }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@QP2QUANT = constant [40 x i32] [i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 6, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 16, i32 18, i32 20, i32 23, i32 25, i32 29, i32 32, i32 36, i32 40, i32 45, i32 51, i32 57, i32 64, i32 72, i32 81, i32 91], align 16
@input = external global %struct.InputParameters*
@BlockSAD = internal unnamed_addr global i32***** null, align 8
@.str = private unnamed_addr constant [42 x i8] c"InitializeFastFullIntegerSearch: BlockSAD\00", align 1
@img = external global %struct.ImageParameters*
@search_setup_done = internal unnamed_addr global i32** null, align 8
@.str1 = private unnamed_addr constant [51 x i8] c"InitializeFastFullIntegerSearch: search_setup_done\00", align 1
@search_center_x = internal unnamed_addr global i32** null, align 8
@.str2 = private unnamed_addr constant [49 x i8] c"InitializeFastFullIntegerSearch: search_center_x\00", align 1
@search_center_y = internal unnamed_addr global i32** null, align 8
@.str3 = private unnamed_addr constant [49 x i8] c"InitializeFastFullIntegerSearch: search_center_y\00", align 1
@pos_00 = internal unnamed_addr global i32** null, align 8
@.str4 = private unnamed_addr constant [40 x i8] c"InitializeFastFullIntegerSearch: pos_00\00", align 1
@max_search_range = internal unnamed_addr global i32** null, align 8
@.str5 = private unnamed_addr constant [50 x i8] c"InitializeFastFullIntegerSearch: max_search_range\00", align 1
@active_pps = external global %struct.pic_parameter_set_rbsp_t*
@listX = external global [6 x %struct.storable_picture**]
@enc_picture = external global %struct.storable_picture*
@imgY_org = external global i16**
@PelYline_11 = internal unnamed_addr global i16* (i16*, i32, i32, i32, i32)* null, align 8
@spiral_search_x = common global i32* null, align 8
@spiral_search_y = common global i32* null, align 8
@byte_abs = common global i32* null, align 8
@pred_SAD_space = external global i32
@FME_blocktype = external global i32
@all_bwmincost = external global i32*****
@all_mincost = external global i32*****
@max_mvd = common global i32 0, align 4
@.str6 = private unnamed_addr constant [43 x i8] c"Init_Motion_Search_Module: spiral_search_x\00", align 1
@.str7 = private unnamed_addr constant [43 x i8] c"Init_Motion_Search_Module: spiral_search_y\00", align 1
@mvbits = common global i32* null, align 8
@.str8 = private unnamed_addr constant [34 x i8] c"Init_Motion_Search_Module: mvbits\00", align 1
@refbits = common global i32* null, align 8
@.str9 = private unnamed_addr constant [35 x i8] c"Init_Motion_Search_Module: refbits\00", align 1
@.str10 = private unnamed_addr constant [36 x i8] c"Init_Motion_Search_Module: byte_abs\00", align 1
@motion_cost = common global i32**** null, align 8
@PelY_14 = internal unnamed_addr global i16 (i16**, i32, i32, i32, i32)* null, align 8
@wbp_weight = external global i32****
@luma_log_weight_denom = external global i32
@wp_offset = external global i32***
@wp_luma_round = external global i32
@PelY_14b = internal unnamed_addr global i16 (i16**, i32, i32, i32, i32)* null, align 8
@BlockMotionSearch.orig_val = internal global [256 x i16] zeroinitializer, align 16
@BlockMotionSearch.orig_pic = internal global [16 x i16*] [i16* getelementptr inbounds ([256 x i16]* @BlockMotionSearch.orig_val, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 32) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 64) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 96) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 128) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 160) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 192) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 224) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 256) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 288) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 320) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 352) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 384) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 416) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 448) to i16*), i16* bitcast (i8* getelementptr (i8* bitcast ([256 x i16]* @BlockMotionSearch.orig_val to i8*), i64 480) to i16*)], align 16
@Bframe_ctr = external global i32
@pred_MV_uplayer = external global [2 x i32]
@pred_SAD_uplayer = external global i32
@flag_intra_SAD = external global i32
@pred_SAD_time = external global i32
@pred_MV_time = external global [2 x i32]
@pred_SAD_ref = external global i32
@pred_MV_ref = external global [2 x i32]
@direct_pdir = external global i16**
@direct_ref_idx = external global i16***
@PartitionMotionSearch.bx0 = internal unnamed_addr constant [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] [i32 0, i32 2, i32 0, i32 2]], align 16
@PartitionMotionSearch.by0 = internal unnamed_addr constant [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 2, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 0, i32 2, i32 2]], align 16
@listXsize = external global [6 x i32]
@Co_located = external global %struct.colocated_params*

; Function Attrs: nounwind optsize uwtable
define void @InitializeFastFullIntegerSearch() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %search_range1 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 8
  %1 = load i32* %search_range1, align 4, !tbaa !3
  %mul = shl nsw i32 %1, 1
  %add246 = or i32 %mul, 1
  %mul4 = mul nsw i32 %add246, %add246
  %call = tail call noalias i8* @malloc(i64 16) #7
  %2 = bitcast i8* %call to i32*****
  store i32***** %2, i32****** @BlockSAD, align 8, !tbaa !0
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0)) #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %conv46247 = zext i32 %mul4 to i64
  %mul47 = shl nuw nsw i64 %conv46247, 2
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.inc67, %for.cond.preheader
  %3 = phi %struct.ImageParameters* [ %.pre, %for.cond.preheader ], [ %24, %for.inc67 ]
  %indvars.iv286 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next287, %for.inc67 ]
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 9
  %4 = load i32* %max_num_references, align 4, !tbaa !3
  %add6 = add nsw i32 %4, 1
  %conv = sext i32 %add6 to i64
  %mul7 = shl nsw i64 %conv, 3
  %call8 = tail call noalias i8* @malloc(i64 %mul7) #7
  %5 = bitcast i8* %call8 to i32****
  %6 = load i32****** @BlockSAD, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32***** %6, i64 %indvars.iv286
  store i32**** %5, i32***** %arrayidx, align 8, !tbaa !0
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then11, label %for.cond13.preheader

if.then11:                                        ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0)) #7
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %if.then11, %for.body
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references14260 = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 9
  %8 = load i32* %max_num_references14260, align 4, !tbaa !3
  %cmp15261 = icmp slt i32 %8, 0
  br i1 %cmp15261, label %for.inc67, label %for.body17

for.body17:                                       ; preds = %for.cond13.preheader, %for.inc64
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %for.inc64 ], [ 0, %for.cond13.preheader ]
  %call18 = tail call noalias i8* @malloc(i64 64) #7
  %9 = bitcast i8* %call18 to i32***
  %10 = load i32****** @BlockSAD, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32***** %10, i64 %indvars.iv286
  %11 = load i32***** %arrayidx21, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds i32**** %11, i64 %indvars.iv284
  store i32*** %9, i32**** %arrayidx22, align 8, !tbaa !0
  %cmp23 = icmp eq i8* %call18, null
  br i1 %cmp23, label %if.then25, label %for.body30

if.then25:                                        ; preds = %for.body17
  tail call void @no_mem_exit(i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0)) #7
  br label %for.body30

for.body30:                                       ; preds = %for.body17, %if.then25, %for.inc61
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %for.inc61 ], [ 1, %if.then25 ], [ 1, %for.body17 ]
  %call31 = tail call noalias i8* @malloc(i64 128) #7
  %12 = bitcast i8* %call31 to i32**
  %13 = load i32****** @BlockSAD, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i32***** %13, i64 %indvars.iv286
  %14 = load i32***** %arrayidx35, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds i32**** %14, i64 %indvars.iv284
  %15 = load i32**** %arrayidx36, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i32*** %15, i64 %indvars.iv280
  store i32** %12, i32*** %arrayidx37, align 8, !tbaa !0
  %cmp38 = icmp eq i8* %call31, null
  br i1 %cmp38, label %if.then40, label %for.body45

if.then40:                                        ; preds = %for.body30
  tail call void @no_mem_exit(i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0)) #7
  br label %for.body45

for.body45:                                       ; preds = %for.body30, %if.then40, %for.inc
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %for.inc ], [ 0, %if.then40 ], [ 0, %for.body30 ]
  %call48 = tail call noalias i8* @malloc(i64 %mul47) #7
  %16 = bitcast i8* %call48 to i32*
  %17 = load i32****** @BlockSAD, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i32***** %17, i64 %indvars.iv286
  %18 = load i32***** %arrayidx53, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i32**** %18, i64 %indvars.iv284
  %19 = load i32**** %arrayidx54, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i32*** %19, i64 %indvars.iv280
  %20 = load i32*** %arrayidx55, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds i32** %20, i64 %indvars.iv276
  store i32* %16, i32** %arrayidx56, align 8, !tbaa !0
  %cmp57 = icmp eq i8* %call48, null
  br i1 %cmp57, label %if.then59, label %for.inc

if.then59:                                        ; preds = %for.body45
  tail call void @no_mem_exit(i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0)) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body45, %if.then59
  %indvars.iv.next277 = add i64 %indvars.iv276, 1
  %lftr.wideiv278 = trunc i64 %indvars.iv.next277 to i32
  %exitcond279 = icmp eq i32 %lftr.wideiv278, 16
  br i1 %exitcond279, label %for.inc61, label %for.body45

for.inc61:                                        ; preds = %for.inc
  %indvars.iv.next281 = add i64 %indvars.iv280, 1
  %lftr.wideiv282 = trunc i64 %indvars.iv.next281 to i32
  %exitcond283 = icmp eq i32 %lftr.wideiv282, 8
  br i1 %exitcond283, label %for.inc64, label %for.body30

for.inc64:                                        ; preds = %for.inc61
  %indvars.iv.next285 = add i64 %indvars.iv284, 1
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references14 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 9
  %22 = load i32* %max_num_references14, align 4, !tbaa !3
  %23 = trunc i64 %indvars.iv284 to i32
  %cmp15 = icmp slt i32 %23, %22
  br i1 %cmp15, label %for.body17, label %for.inc67

for.inc67:                                        ; preds = %for.inc64, %for.cond13.preheader
  %24 = phi %struct.ImageParameters* [ %7, %for.cond13.preheader ], [ %21, %for.inc64 ]
  %indvars.iv.next287 = add i64 %indvars.iv286, 1
  %lftr.wideiv288 = trunc i64 %indvars.iv.next287 to i32
  %exitcond289 = icmp eq i32 %lftr.wideiv288, 2
  br i1 %exitcond289, label %for.end69, label %for.body

for.end69:                                        ; preds = %for.inc67
  %call70 = tail call noalias i8* @malloc(i64 16) #7
  %25 = bitcast i8* %call70 to i32**
  store i32** %25, i32*** @search_setup_done, align 8, !tbaa !0
  %cmp71 = icmp eq i8* %call70, null
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.end69
  tail call void @no_mem_exit(i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0)) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %for.end69
  %call75 = tail call noalias i8* @malloc(i64 16) #7
  %26 = bitcast i8* %call75 to i32**
  store i32** %26, i32*** @search_center_x, align 8, !tbaa !0
  %cmp76 = icmp eq i8* %call75, null
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  tail call void @no_mem_exit(i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0)) #7
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end74
  %call80 = tail call noalias i8* @malloc(i64 16) #7
  %27 = bitcast i8* %call80 to i32**
  store i32** %27, i32*** @search_center_y, align 8, !tbaa !0
  %cmp81 = icmp eq i8* %call80, null
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end79
  tail call void @no_mem_exit(i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0)) #7
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end79
  %call85 = tail call noalias i8* @malloc(i64 16) #7
  %28 = bitcast i8* %call85 to i32**
  store i32** %28, i32*** @pos_00, align 8, !tbaa !0
  %cmp86 = icmp eq i8* %call85, null
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end84
  tail call void @no_mem_exit(i8* getelementptr inbounds ([40 x i8]* @.str4, i64 0, i64 0)) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end84
  %call90 = tail call noalias i8* @malloc(i64 16) #7
  %29 = bitcast i8* %call90 to i32**
  store i32** %29, i32*** @max_search_range, align 8, !tbaa !0
  %cmp91 = icmp eq i8* %call90, null
  br i1 %cmp91, label %if.then93, label %for.body98

if.then93:                                        ; preds = %if.end89
  tail call void @no_mem_exit(i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0)) #7
  br label %for.body98

for.body98:                                       ; preds = %for.inc154, %if.end89, %if.then93
  %indvars.iv272 = phi i64 [ 0, %if.then93 ], [ 0, %if.end89 ], [ %indvars.iv.next273, %for.inc154 ]
  %30 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references99 = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 9
  %31 = load i32* %max_num_references99, align 4, !tbaa !3
  %add100 = add nsw i32 %31, 1
  %conv101 = sext i32 %add100 to i64
  %mul102 = shl nsw i64 %conv101, 2
  %call103 = tail call noalias i8* @malloc(i64 %mul102) #7
  %32 = bitcast i8* %call103 to i32*
  %33 = load i32*** @search_setup_done, align 8, !tbaa !0
  %arrayidx105 = getelementptr inbounds i32** %33, i64 %indvars.iv272
  store i32* %32, i32** %arrayidx105, align 8, !tbaa !0
  %cmp106 = icmp eq i8* %call103, null
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %for.body98
  tail call void @no_mem_exit(i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0)) #7
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %for.body98
  %34 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references110 = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 9
  %35 = load i32* %max_num_references110, align 4, !tbaa !3
  %add111 = add nsw i32 %35, 1
  %conv112 = sext i32 %add111 to i64
  %mul113 = shl nsw i64 %conv112, 2
  %call114 = tail call noalias i8* @malloc(i64 %mul113) #7
  %36 = bitcast i8* %call114 to i32*
  %37 = load i32*** @search_center_x, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i32** %37, i64 %indvars.iv272
  store i32* %36, i32** %arrayidx116, align 8, !tbaa !0
  %cmp117 = icmp eq i8* %call114, null
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end109
  tail call void @no_mem_exit(i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0)) #7
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end109
  %38 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references121 = getelementptr inbounds %struct.ImageParameters* %38, i64 0, i32 9
  %39 = load i32* %max_num_references121, align 4, !tbaa !3
  %add122 = add nsw i32 %39, 1
  %conv123 = sext i32 %add122 to i64
  %mul124 = shl nsw i64 %conv123, 2
  %call125 = tail call noalias i8* @malloc(i64 %mul124) #7
  %40 = bitcast i8* %call125 to i32*
  %41 = load i32*** @search_center_y, align 8, !tbaa !0
  %arrayidx127 = getelementptr inbounds i32** %41, i64 %indvars.iv272
  store i32* %40, i32** %arrayidx127, align 8, !tbaa !0
  %cmp128 = icmp eq i8* %call125, null
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.end120
  tail call void @no_mem_exit(i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0)) #7
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.end120
  %42 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references132 = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 9
  %43 = load i32* %max_num_references132, align 4, !tbaa !3
  %add133 = add nsw i32 %43, 1
  %conv134 = sext i32 %add133 to i64
  %mul135 = shl nsw i64 %conv134, 2
  %call136 = tail call noalias i8* @malloc(i64 %mul135) #7
  %44 = bitcast i8* %call136 to i32*
  %45 = load i32*** @pos_00, align 8, !tbaa !0
  %arrayidx138 = getelementptr inbounds i32** %45, i64 %indvars.iv272
  store i32* %44, i32** %arrayidx138, align 8, !tbaa !0
  %cmp139 = icmp eq i8* %call136, null
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end131
  tail call void @no_mem_exit(i8* getelementptr inbounds ([40 x i8]* @.str4, i64 0, i64 0)) #7
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end131
  %46 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references143 = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 9
  %47 = load i32* %max_num_references143, align 4, !tbaa !3
  %add144 = add nsw i32 %47, 1
  %conv145 = sext i32 %add144 to i64
  %mul146 = shl nsw i64 %conv145, 2
  %call147 = tail call noalias i8* @malloc(i64 %mul146) #7
  %48 = bitcast i8* %call147 to i32*
  %49 = load i32*** @max_search_range, align 8, !tbaa !0
  %arrayidx149 = getelementptr inbounds i32** %49, i64 %indvars.iv272
  store i32* %48, i32** %arrayidx149, align 8, !tbaa !0
  %cmp150 = icmp eq i8* %call147, null
  br i1 %cmp150, label %if.then152, label %for.inc154

if.then152:                                       ; preds = %if.end142
  tail call void @no_mem_exit(i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0)) #7
  br label %for.inc154

for.inc154:                                       ; preds = %if.end142, %if.then152
  %indvars.iv.next273 = add i64 %indvars.iv272, 1
  %lftr.wideiv274 = trunc i64 %indvars.iv.next273 to i32
  %exitcond275 = icmp eq i32 %lftr.wideiv274, 2
  br i1 %exitcond275, label %for.end156, label %for.body98

for.end156:                                       ; preds = %for.inc154
  %50 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %full_search = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 78
  %51 = load i32* %full_search, align 4, !tbaa !3
  %cmp157 = icmp eq i32 %51, 2
  %52 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references165248 = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 9
  %53 = load i32*** @max_search_range, align 8, !tbaa !0
  br i1 %cmp157, label %for.cond160.preheader, label %for.cond179.preheader

for.cond179.preheader:                            ; preds = %for.end156
  %div = sdiv i32 %1, 2
  %.pre291 = load i32* %max_num_references165248, align 4, !tbaa !3
  br label %for.body182

for.cond160.preheader:                            ; preds = %for.end156
  %.pre290 = load i32* %max_num_references165248, align 4, !tbaa !3
  br label %for.cond164.preheader

for.cond164.preheader:                            ; preds = %for.inc176, %for.cond160.preheader
  %54 = phi i32 [ %.pre290, %for.cond160.preheader ], [ %58, %for.inc176 ]
  %indvars.iv264 = phi i64 [ 0, %for.cond160.preheader ], [ %indvars.iv.next265, %for.inc176 ]
  %cmp166249 = icmp slt i32 %54, 0
  br i1 %cmp166249, label %for.inc176, label %for.body168.lr.ph

for.body168.lr.ph:                                ; preds = %for.cond164.preheader
  %arrayidx171 = getelementptr inbounds i32** %53, i64 %indvars.iv264
  %55 = load i32** %arrayidx171, align 8, !tbaa !0
  br label %for.body168

for.body168:                                      ; preds = %for.body168, %for.body168.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body168 ], [ 0, %for.body168.lr.ph ]
  %arrayidx172 = getelementptr inbounds i32* %55, i64 %indvars.iv
  store i32 %1, i32* %arrayidx172, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %56 = load i32* %max_num_references165248, align 4, !tbaa !3
  %57 = trunc i64 %indvars.iv to i32
  %cmp166 = icmp slt i32 %57, %56
  br i1 %cmp166, label %for.body168, label %for.inc176

for.inc176:                                       ; preds = %for.body168, %for.cond164.preheader
  %58 = phi i32 [ %54, %for.cond164.preheader ], [ %56, %for.body168 ]
  %indvars.iv.next265 = add i64 %indvars.iv264, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next265 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %if.end206, label %for.cond164.preheader

for.body182:                                      ; preds = %for.inc203, %for.cond179.preheader
  %59 = phi i32 [ %.pre291, %for.cond179.preheader ], [ %64, %for.inc203 ]
  %indvars.iv268 = phi i64 [ 0, %for.cond179.preheader ], [ %indvars.iv.next269, %for.inc203 ]
  %idxprom184 = sext i32 %59 to i64
  %arrayidx186 = getelementptr inbounds i32** %53, i64 %indvars.iv268
  %60 = load i32** %arrayidx186, align 8, !tbaa !0
  %arrayidx187 = getelementptr inbounds i32* %60, i64 %idxprom184
  store i32 %1, i32* %arrayidx187, align 4, !tbaa !3
  store i32 %1, i32* %60, align 4, !tbaa !3
  %61 = load i32* %max_num_references165248, align 4, !tbaa !3
  %cmp193253 = icmp sgt i32 %61, 1
  br i1 %cmp193253, label %for.body195, label %for.inc203

for.body195:                                      ; preds = %for.body182, %for.body195
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %for.body195 ], [ 1, %for.body182 ]
  %arrayidx199 = getelementptr inbounds i32* %60, i64 %indvars.iv266
  store i32 %div, i32* %arrayidx199, align 4, !tbaa !3
  %indvars.iv.next267 = add i64 %indvars.iv266, 1
  %62 = load i32* %max_num_references165248, align 4, !tbaa !3
  %63 = trunc i64 %indvars.iv.next267 to i32
  %cmp193 = icmp slt i32 %63, %62
  br i1 %cmp193, label %for.body195, label %for.inc203

for.inc203:                                       ; preds = %for.body195, %for.body182
  %64 = phi i32 [ %61, %for.body182 ], [ %62, %for.body195 ]
  %indvars.iv.next269 = add i64 %indvars.iv268, 1
  %lftr.wideiv270 = trunc i64 %indvars.iv.next269 to i32
  %exitcond271 = icmp eq i32 %lftr.wideiv270, 2
  br i1 %exitcond271, label %if.end206, label %for.body182

if.end206:                                        ; preds = %for.inc203, %for.inc176
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @ClearFastFullIntegerSearch() #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end31, %entry
  %indvars.iv91 = phi i64 [ 0, %entry ], [ %indvars.iv.next92, %for.end31 ]
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references77 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 9
  %1 = load i32* %max_num_references77, align 4, !tbaa !3
  %cmp278 = icmp slt i32 %1, 0
  br i1 %cmp278, label %for.end31, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.end24
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.end24 ], [ 0, %for.cond1.preheader ]
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.end, %for.cond4.preheader
  %indvars.iv85 = phi i64 [ 1, %for.cond4.preheader ], [ %indvars.iv.next86, %for.end ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9, %for.cond7.preheader
  %indvars.iv81 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next82, %for.body9 ]
  %2 = load i32****** @BlockSAD, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32***** %2, i64 %indvars.iv91
  %3 = load i32***** %arrayidx, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32**** %3, i64 %indvars.iv89
  %4 = load i32**** %arrayidx13, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32*** %4, i64 %indvars.iv85
  %5 = load i32*** %arrayidx14, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32** %5, i64 %indvars.iv81
  %6 = load i32** %arrayidx15, align 8, !tbaa !0
  %7 = bitcast i32* %6 to i8*
  tail call void @free(i8* %7) #7
  %indvars.iv.next82 = add i64 %indvars.iv81, 1
  %lftr.wideiv83 = trunc i64 %indvars.iv.next82 to i32
  %exitcond84 = icmp eq i32 %lftr.wideiv83, 16
  br i1 %exitcond84, label %for.end, label %for.body9

for.end:                                          ; preds = %for.body9
  %8 = load i32****** @BlockSAD, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32***** %8, i64 %indvars.iv91
  %9 = load i32***** %arrayidx19, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i32**** %9, i64 %indvars.iv89
  %10 = load i32**** %arrayidx20, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32*** %10, i64 %indvars.iv85
  %11 = load i32*** %arrayidx21, align 8, !tbaa !0
  %12 = bitcast i32** %11 to i8*
  tail call void @free(i8* %12) #7
  %indvars.iv.next86 = add i64 %indvars.iv85, 1
  %lftr.wideiv87 = trunc i64 %indvars.iv.next86 to i32
  %exitcond88 = icmp eq i32 %lftr.wideiv87, 8
  br i1 %exitcond88, label %for.end24, label %for.cond7.preheader

for.end24:                                        ; preds = %for.end
  %13 = load i32****** @BlockSAD, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds i32***** %13, i64 %indvars.iv91
  %14 = load i32***** %arrayidx27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds i32**** %14, i64 %indvars.iv89
  %15 = load i32**** %arrayidx28, align 8, !tbaa !0
  %16 = bitcast i32*** %15 to i8*
  tail call void @free(i8* %16) #7
  %indvars.iv.next90 = add i64 %indvars.iv89, 1
  %17 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 9
  %18 = load i32* %max_num_references, align 4, !tbaa !3
  %19 = trunc i64 %indvars.iv89 to i32
  %cmp2 = icmp slt i32 %19, %18
  br i1 %cmp2, label %for.cond4.preheader, label %for.end31

for.end31:                                        ; preds = %for.end24, %for.cond1.preheader
  %20 = load i32****** @BlockSAD, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i32***** %20, i64 %indvars.iv91
  %21 = load i32***** %arrayidx33, align 8, !tbaa !0
  %22 = bitcast i32**** %21 to i8*
  tail call void @free(i8* %22) #7
  %indvars.iv.next92 = add i64 %indvars.iv91, 1
  %lftr.wideiv93 = trunc i64 %indvars.iv.next92 to i32
  %exitcond94 = icmp eq i32 %lftr.wideiv93, 2
  br i1 %exitcond94, label %for.end36, label %for.cond1.preheader

for.end36:                                        ; preds = %for.end31
  %23 = load i32****** @BlockSAD, align 8, !tbaa !0
  %24 = bitcast i32***** %23 to i8*
  tail call void @free(i8* %24) #7
  br label %for.body39

for.body39:                                       ; preds = %for.body39, %for.end36
  %indvars.iv = phi i64 [ 0, %for.end36 ], [ %indvars.iv.next, %for.body39 ]
  %25 = load i32*** @search_setup_done, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i32** %25, i64 %indvars.iv
  %26 = load i32** %arrayidx41, align 8, !tbaa !0
  %27 = bitcast i32* %26 to i8*
  tail call void @free(i8* %27) #7
  %28 = load i32*** @search_center_x, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds i32** %28, i64 %indvars.iv
  %29 = load i32** %arrayidx43, align 8, !tbaa !0
  %30 = bitcast i32* %29 to i8*
  tail call void @free(i8* %30) #7
  %31 = load i32*** @search_center_y, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds i32** %31, i64 %indvars.iv
  %32 = load i32** %arrayidx45, align 8, !tbaa !0
  %33 = bitcast i32* %32 to i8*
  tail call void @free(i8* %33) #7
  %34 = load i32*** @pos_00, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds i32** %34, i64 %indvars.iv
  %35 = load i32** %arrayidx47, align 8, !tbaa !0
  %36 = bitcast i32* %35 to i8*
  tail call void @free(i8* %36) #7
  %37 = load i32*** @max_search_range, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds i32** %37, i64 %indvars.iv
  %38 = load i32** %arrayidx49, align 8, !tbaa !0
  %39 = bitcast i32* %38 to i8*
  tail call void @free(i8* %39) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end52, label %for.body39

for.end52:                                        ; preds = %for.body39
  %40 = load i32*** @search_setup_done, align 8, !tbaa !0
  %41 = bitcast i32** %40 to i8*
  tail call void @free(i8* %41) #7
  %42 = load i32*** @search_center_x, align 8, !tbaa !0
  %43 = bitcast i32** %42 to i8*
  tail call void @free(i8* %43) #7
  %44 = load i32*** @search_center_y, align 8, !tbaa !0
  %45 = bitcast i32** %44 to i8*
  tail call void @free(i8* %45) #7
  %46 = load i32*** @pos_00, align 8, !tbaa !0
  %47 = bitcast i32** %46 to i8*
  tail call void @free(i8* %47) #7
  %48 = load i32*** @max_search_range, align 8, !tbaa !0
  %49 = bitcast i32** %48 to i8*
  tail call void @free(i8* %49) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @ResetFastFullIntegerSearch() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references13 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 9
  %1 = load i32*** @search_setup_done, align 8, !tbaa !0
  %.pre = load i32* %max_num_references13, align 4, !tbaa !3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc6, %entry
  %2 = phi i32 [ %.pre, %entry ], [ %6, %for.inc6 ]
  %indvars.iv17 = phi i64 [ 0, %entry ], [ %indvars.iv.next18, %for.inc6 ]
  %cmp214 = icmp slt i32 %2, 0
  br i1 %cmp214, label %for.inc6, label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds i32** %1, i64 %indvars.iv17
  %3 = load i32** %arrayidx, align 8, !tbaa !0
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body3.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.body3.lr.ph ]
  %arrayidx5 = getelementptr inbounds i32* %3, i64 %indvars.iv
  store i32 0, i32* %arrayidx5, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %4 = load i32* %max_num_references13, align 4, !tbaa !3
  %5 = trunc i64 %indvars.iv to i32
  %cmp2 = icmp slt i32 %5, %4
  br i1 %cmp2, label %for.body3, label %for.inc6

for.inc6:                                         ; preds = %for.body3, %for.cond1.preheader
  %6 = phi i32 [ %2, %for.cond1.preheader ], [ %4, %for.body3 ]
  %indvars.iv.next18 = add i64 %indvars.iv17, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next18 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end8, label %for.cond1.preheader

for.end8:                                         ; preds = %for.inc6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SetupLargerBlocks(i32 %list, i32 %refindex, i32 %max_pos) #0 {
entry:
  %idxprom = sext i32 %refindex to i64
  %idxprom1 = sext i32 %list to i64
  %0 = load i32****** @BlockSAD, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32***** %0, i64 %idxprom1
  %1 = load i32***** %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32**** %1, i64 %idxprom
  %2 = load i32**** %arrayidx2, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds i32*** %2, i64 6
  %3 = load i32*** %arrayidx3, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i32*** %2, i64 7
  %4 = load i32*** %arrayidx8, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i32** %4, i64 4
  %5 = load i32** %3, align 8, !tbaa !0
  %6 = load i32** %4, align 8, !tbaa !0
  %7 = load i32** %add.ptr, align 8, !tbaa !0
  %cmp864 = icmp sgt i32 %max_pos, 0
  br i1 %cmp864, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  %add.ptr15962 = getelementptr inbounds i32** %3, i64 1
  %add.ptr16963 = getelementptr inbounds i32** %4, i64 1
  %add.ptr17964 = getelementptr inbounds i32** %4, i64 5
  %8 = load i32** %add.ptr15962, align 8, !tbaa !0
  %9 = load i32** %add.ptr16963, align 8, !tbaa !0
  %10 = load i32** %add.ptr17964, align 8, !tbaa !0
  br label %for.end30.thread

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv958 = phi i64 [ %indvars.iv.next959, %for.body ], [ 0, %entry ]
  %arrayidx10 = getelementptr inbounds i32* %6, i64 %indvars.iv958
  %11 = load i32* %arrayidx10, align 4, !tbaa !3
  %arrayidx12 = getelementptr inbounds i32* %7, i64 %indvars.iv958
  %12 = load i32* %arrayidx12, align 4, !tbaa !3
  %add = add nsw i32 %12, %11
  %arrayidx14 = getelementptr inbounds i32* %5, i64 %indvars.iv958
  store i32 %add, i32* %arrayidx14, align 4, !tbaa !3
  %indvars.iv.next959 = add i64 %indvars.iv958, 1
  %lftr.wideiv960 = trunc i64 %indvars.iv.next959 to i32
  %exitcond961 = icmp eq i32 %lftr.wideiv960, %max_pos
  br i1 %exitcond961, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr15 = getelementptr inbounds i32** %3, i64 1
  %add.ptr16 = getelementptr inbounds i32** %4, i64 1
  %add.ptr17 = getelementptr inbounds i32** %4, i64 5
  %13 = load i32** %add.ptr15, align 8, !tbaa !0
  %14 = load i32** %add.ptr16, align 8, !tbaa !0
  %15 = load i32** %add.ptr17, align 8, !tbaa !0
  br i1 %cmp864, label %for.body20, label %for.end30.thread

for.body20:                                       ; preds = %for.end, %for.body20
  %indvars.iv954 = phi i64 [ %indvars.iv.next955, %for.body20 ], [ 0, %for.end ]
  %arrayidx22 = getelementptr inbounds i32* %14, i64 %indvars.iv954
  %16 = load i32* %arrayidx22, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds i32* %15, i64 %indvars.iv954
  %17 = load i32* %arrayidx24, align 4, !tbaa !3
  %add25 = add nsw i32 %17, %16
  %arrayidx27 = getelementptr inbounds i32* %13, i64 %indvars.iv954
  store i32 %add25, i32* %arrayidx27, align 4, !tbaa !3
  %indvars.iv.next955 = add i64 %indvars.iv954, 1
  %lftr.wideiv956 = trunc i64 %indvars.iv.next955 to i32
  %exitcond957 = icmp eq i32 %lftr.wideiv956, %max_pos
  br i1 %exitcond957, label %for.end30, label %for.body20

for.end30.thread:                                 ; preds = %for.end.thread, %for.end
  %.ph = phi i32* [ %10, %for.end.thread ], [ %15, %for.end ]
  %.ph965 = phi i32* [ %9, %for.end.thread ], [ %14, %for.end ]
  %.ph966 = phi i32* [ %8, %for.end.thread ], [ %13, %for.end ]
  %add.ptr31967 = getelementptr inbounds i32** %3, i64 2
  %add.ptr32968 = getelementptr inbounds i32** %4, i64 2
  %add.ptr33969 = getelementptr inbounds i32** %4, i64 6
  %18 = load i32** %add.ptr31967, align 8, !tbaa !0
  %19 = load i32** %add.ptr32968, align 8, !tbaa !0
  %20 = load i32** %add.ptr33969, align 8, !tbaa !0
  br label %for.end46

for.end30:                                        ; preds = %for.body20
  %add.ptr31 = getelementptr inbounds i32** %3, i64 2
  %add.ptr32 = getelementptr inbounds i32** %4, i64 2
  %add.ptr33 = getelementptr inbounds i32** %4, i64 6
  %21 = load i32** %add.ptr31, align 8, !tbaa !0
  %22 = load i32** %add.ptr32, align 8, !tbaa !0
  %23 = load i32** %add.ptr33, align 8, !tbaa !0
  br i1 %cmp864, label %for.body36, label %for.end46.thread

for.end46.thread:                                 ; preds = %for.end30
  %add.ptr47970 = getelementptr inbounds i32** %3, i64 3
  %add.ptr48971 = getelementptr inbounds i32** %4, i64 3
  %add.ptr49972 = getelementptr inbounds i32** %4, i64 7
  %24 = load i32** %add.ptr47970, align 8, !tbaa !0
  %25 = load i32** %add.ptr48971, align 8, !tbaa !0
  %26 = load i32** %add.ptr49972, align 8, !tbaa !0
  br label %for.end62.thread

for.body36:                                       ; preds = %for.end30, %for.body36
  %indvars.iv950 = phi i64 [ %indvars.iv.next951, %for.body36 ], [ 0, %for.end30 ]
  %arrayidx38 = getelementptr inbounds i32* %22, i64 %indvars.iv950
  %27 = load i32* %arrayidx38, align 4, !tbaa !3
  %arrayidx40 = getelementptr inbounds i32* %23, i64 %indvars.iv950
  %28 = load i32* %arrayidx40, align 4, !tbaa !3
  %add41 = add nsw i32 %28, %27
  %arrayidx43 = getelementptr inbounds i32* %21, i64 %indvars.iv950
  store i32 %add41, i32* %arrayidx43, align 4, !tbaa !3
  %indvars.iv.next951 = add i64 %indvars.iv950, 1
  %lftr.wideiv952 = trunc i64 %indvars.iv.next951 to i32
  %exitcond953 = icmp eq i32 %lftr.wideiv952, %max_pos
  br i1 %exitcond953, label %for.end46, label %for.body36

for.end46:                                        ; preds = %for.body36, %for.end30.thread
  %29 = phi i32* [ %20, %for.end30.thread ], [ %23, %for.body36 ]
  %30 = phi i32* [ %19, %for.end30.thread ], [ %22, %for.body36 ]
  %31 = phi i32* [ %18, %for.end30.thread ], [ %21, %for.body36 ]
  %32 = phi i32* [ %.ph966, %for.end30.thread ], [ %13, %for.body36 ]
  %33 = phi i32* [ %.ph965, %for.end30.thread ], [ %14, %for.body36 ]
  %34 = phi i32* [ %.ph, %for.end30.thread ], [ %15, %for.body36 ]
  %add.ptr47 = getelementptr inbounds i32** %3, i64 3
  %add.ptr48 = getelementptr inbounds i32** %4, i64 3
  %add.ptr49 = getelementptr inbounds i32** %4, i64 7
  %35 = load i32** %add.ptr47, align 8, !tbaa !0
  %36 = load i32** %add.ptr48, align 8, !tbaa !0
  %37 = load i32** %add.ptr49, align 8, !tbaa !0
  br i1 %cmp864, label %for.body52, label %for.end62.thread

for.body52:                                       ; preds = %for.end46, %for.body52
  %indvars.iv946 = phi i64 [ %indvars.iv.next947, %for.body52 ], [ 0, %for.end46 ]
  %arrayidx54 = getelementptr inbounds i32* %36, i64 %indvars.iv946
  %38 = load i32* %arrayidx54, align 4, !tbaa !3
  %arrayidx56 = getelementptr inbounds i32* %37, i64 %indvars.iv946
  %39 = load i32* %arrayidx56, align 4, !tbaa !3
  %add57 = add nsw i32 %39, %38
  %arrayidx59 = getelementptr inbounds i32* %35, i64 %indvars.iv946
  store i32 %add57, i32* %arrayidx59, align 4, !tbaa !3
  %indvars.iv.next947 = add i64 %indvars.iv946, 1
  %lftr.wideiv948 = trunc i64 %indvars.iv.next947 to i32
  %exitcond949 = icmp eq i32 %lftr.wideiv948, %max_pos
  br i1 %exitcond949, label %for.end62, label %for.body52

for.end62.thread:                                 ; preds = %for.end46.thread, %for.end46
  %.ph973 = phi i32* [ %26, %for.end46.thread ], [ %37, %for.end46 ]
  %.ph974 = phi i32* [ %25, %for.end46.thread ], [ %36, %for.end46 ]
  %.ph975 = phi i32* [ %24, %for.end46.thread ], [ %35, %for.end46 ]
  %.ph976 = phi i32* [ %15, %for.end46.thread ], [ %34, %for.end46 ]
  %.ph977 = phi i32* [ %14, %for.end46.thread ], [ %33, %for.end46 ]
  %.ph978 = phi i32* [ %13, %for.end46.thread ], [ %32, %for.end46 ]
  %.ph979 = phi i32* [ %21, %for.end46.thread ], [ %31, %for.end46 ]
  %.ph980 = phi i32* [ %22, %for.end46.thread ], [ %30, %for.end46 ]
  %.ph981 = phi i32* [ %23, %for.end46.thread ], [ %29, %for.end46 ]
  %add.ptr63982 = getelementptr inbounds i32** %3, i64 8
  %add.ptr64983 = getelementptr inbounds i32** %4, i64 8
  %add.ptr65984 = getelementptr inbounds i32** %4, i64 12
  %40 = load i32** %add.ptr63982, align 8, !tbaa !0
  %41 = load i32** %add.ptr64983, align 8, !tbaa !0
  %42 = load i32** %add.ptr65984, align 8, !tbaa !0
  br label %for.end78

for.end62:                                        ; preds = %for.body52
  %add.ptr63 = getelementptr inbounds i32** %3, i64 8
  %add.ptr64 = getelementptr inbounds i32** %4, i64 8
  %add.ptr65 = getelementptr inbounds i32** %4, i64 12
  %43 = load i32** %add.ptr63, align 8, !tbaa !0
  %44 = load i32** %add.ptr64, align 8, !tbaa !0
  %45 = load i32** %add.ptr65, align 8, !tbaa !0
  br i1 %cmp864, label %for.body68, label %for.end78.thread

for.end78.thread:                                 ; preds = %for.end62
  %add.ptr79985 = getelementptr inbounds i32** %3, i64 9
  %add.ptr80986 = getelementptr inbounds i32** %4, i64 9
  %add.ptr81987 = getelementptr inbounds i32** %4, i64 13
  %46 = load i32** %add.ptr79985, align 8, !tbaa !0
  %47 = load i32** %add.ptr80986, align 8, !tbaa !0
  %48 = load i32** %add.ptr81987, align 8, !tbaa !0
  br label %for.end94.thread

for.body68:                                       ; preds = %for.end62, %for.body68
  %indvars.iv942 = phi i64 [ %indvars.iv.next943, %for.body68 ], [ 0, %for.end62 ]
  %arrayidx70 = getelementptr inbounds i32* %44, i64 %indvars.iv942
  %49 = load i32* %arrayidx70, align 4, !tbaa !3
  %arrayidx72 = getelementptr inbounds i32* %45, i64 %indvars.iv942
  %50 = load i32* %arrayidx72, align 4, !tbaa !3
  %add73 = add nsw i32 %50, %49
  %arrayidx75 = getelementptr inbounds i32* %43, i64 %indvars.iv942
  store i32 %add73, i32* %arrayidx75, align 4, !tbaa !3
  %indvars.iv.next943 = add i64 %indvars.iv942, 1
  %lftr.wideiv944 = trunc i64 %indvars.iv.next943 to i32
  %exitcond945 = icmp eq i32 %lftr.wideiv944, %max_pos
  br i1 %exitcond945, label %for.end78, label %for.body68

for.end78:                                        ; preds = %for.body68, %for.end62.thread
  %51 = phi i32* [ %42, %for.end62.thread ], [ %45, %for.body68 ]
  %52 = phi i32* [ %41, %for.end62.thread ], [ %44, %for.body68 ]
  %53 = phi i32* [ %40, %for.end62.thread ], [ %43, %for.body68 ]
  %54 = phi i32* [ %.ph981, %for.end62.thread ], [ %29, %for.body68 ]
  %55 = phi i32* [ %.ph980, %for.end62.thread ], [ %30, %for.body68 ]
  %56 = phi i32* [ %.ph979, %for.end62.thread ], [ %31, %for.body68 ]
  %57 = phi i32* [ %.ph978, %for.end62.thread ], [ %32, %for.body68 ]
  %58 = phi i32* [ %.ph977, %for.end62.thread ], [ %33, %for.body68 ]
  %59 = phi i32* [ %.ph976, %for.end62.thread ], [ %34, %for.body68 ]
  %60 = phi i32* [ %.ph975, %for.end62.thread ], [ %35, %for.body68 ]
  %61 = phi i32* [ %.ph974, %for.end62.thread ], [ %36, %for.body68 ]
  %62 = phi i32* [ %.ph973, %for.end62.thread ], [ %37, %for.body68 ]
  %add.ptr79 = getelementptr inbounds i32** %3, i64 9
  %add.ptr80 = getelementptr inbounds i32** %4, i64 9
  %add.ptr81 = getelementptr inbounds i32** %4, i64 13
  %63 = load i32** %add.ptr79, align 8, !tbaa !0
  %64 = load i32** %add.ptr80, align 8, !tbaa !0
  %65 = load i32** %add.ptr81, align 8, !tbaa !0
  br i1 %cmp864, label %for.body84, label %for.end94.thread

for.body84:                                       ; preds = %for.end78, %for.body84
  %indvars.iv938 = phi i64 [ %indvars.iv.next939, %for.body84 ], [ 0, %for.end78 ]
  %arrayidx86 = getelementptr inbounds i32* %64, i64 %indvars.iv938
  %66 = load i32* %arrayidx86, align 4, !tbaa !3
  %arrayidx88 = getelementptr inbounds i32* %65, i64 %indvars.iv938
  %67 = load i32* %arrayidx88, align 4, !tbaa !3
  %add89 = add nsw i32 %67, %66
  %arrayidx91 = getelementptr inbounds i32* %63, i64 %indvars.iv938
  store i32 %add89, i32* %arrayidx91, align 4, !tbaa !3
  %indvars.iv.next939 = add i64 %indvars.iv938, 1
  %lftr.wideiv940 = trunc i64 %indvars.iv.next939 to i32
  %exitcond941 = icmp eq i32 %lftr.wideiv940, %max_pos
  br i1 %exitcond941, label %for.end94, label %for.body84

for.end94.thread:                                 ; preds = %for.end78.thread, %for.end78
  %.ph988 = phi i32* [ %48, %for.end78.thread ], [ %65, %for.end78 ]
  %.ph989 = phi i32* [ %47, %for.end78.thread ], [ %64, %for.end78 ]
  %.ph990 = phi i32* [ %46, %for.end78.thread ], [ %63, %for.end78 ]
  %.ph991 = phi i32* [ %37, %for.end78.thread ], [ %62, %for.end78 ]
  %.ph992 = phi i32* [ %36, %for.end78.thread ], [ %61, %for.end78 ]
  %.ph993 = phi i32* [ %35, %for.end78.thread ], [ %60, %for.end78 ]
  %.ph994 = phi i32* [ %34, %for.end78.thread ], [ %59, %for.end78 ]
  %.ph995 = phi i32* [ %33, %for.end78.thread ], [ %58, %for.end78 ]
  %.ph996 = phi i32* [ %32, %for.end78.thread ], [ %57, %for.end78 ]
  %.ph997 = phi i32* [ %31, %for.end78.thread ], [ %56, %for.end78 ]
  %.ph998 = phi i32* [ %30, %for.end78.thread ], [ %55, %for.end78 ]
  %.ph999 = phi i32* [ %29, %for.end78.thread ], [ %54, %for.end78 ]
  %.ph1000 = phi i32* [ %43, %for.end78.thread ], [ %53, %for.end78 ]
  %.ph1001 = phi i32* [ %44, %for.end78.thread ], [ %52, %for.end78 ]
  %.ph1002 = phi i32* [ %45, %for.end78.thread ], [ %51, %for.end78 ]
  %add.ptr951003 = getelementptr inbounds i32** %3, i64 10
  %add.ptr961004 = getelementptr inbounds i32** %4, i64 10
  %add.ptr971005 = getelementptr inbounds i32** %4, i64 14
  %68 = load i32** %add.ptr951003, align 8, !tbaa !0
  %69 = load i32** %add.ptr961004, align 8, !tbaa !0
  %70 = load i32** %add.ptr971005, align 8, !tbaa !0
  br label %for.end110

for.end94:                                        ; preds = %for.body84
  %add.ptr95 = getelementptr inbounds i32** %3, i64 10
  %add.ptr96 = getelementptr inbounds i32** %4, i64 10
  %add.ptr97 = getelementptr inbounds i32** %4, i64 14
  %71 = load i32** %add.ptr95, align 8, !tbaa !0
  %72 = load i32** %add.ptr96, align 8, !tbaa !0
  %73 = load i32** %add.ptr97, align 8, !tbaa !0
  br i1 %cmp864, label %for.body100, label %for.end110.thread

for.end110.thread:                                ; preds = %for.end94
  %add.ptr1111006 = getelementptr inbounds i32** %3, i64 11
  %add.ptr1121007 = getelementptr inbounds i32** %4, i64 11
  %add.ptr1131008 = getelementptr inbounds i32** %4, i64 15
  %74 = load i32** %add.ptr1111006, align 8, !tbaa !0
  %75 = load i32** %add.ptr1121007, align 8, !tbaa !0
  %76 = load i32** %add.ptr1131008, align 8, !tbaa !0
  br label %for.end126.thread

for.body100:                                      ; preds = %for.end94, %for.body100
  %indvars.iv934 = phi i64 [ %indvars.iv.next935, %for.body100 ], [ 0, %for.end94 ]
  %arrayidx102 = getelementptr inbounds i32* %72, i64 %indvars.iv934
  %77 = load i32* %arrayidx102, align 4, !tbaa !3
  %arrayidx104 = getelementptr inbounds i32* %73, i64 %indvars.iv934
  %78 = load i32* %arrayidx104, align 4, !tbaa !3
  %add105 = add nsw i32 %78, %77
  %arrayidx107 = getelementptr inbounds i32* %71, i64 %indvars.iv934
  store i32 %add105, i32* %arrayidx107, align 4, !tbaa !3
  %indvars.iv.next935 = add i64 %indvars.iv934, 1
  %lftr.wideiv936 = trunc i64 %indvars.iv.next935 to i32
  %exitcond937 = icmp eq i32 %lftr.wideiv936, %max_pos
  br i1 %exitcond937, label %for.end110, label %for.body100

for.end110:                                       ; preds = %for.body100, %for.end94.thread
  %79 = phi i32* [ %70, %for.end94.thread ], [ %73, %for.body100 ]
  %80 = phi i32* [ %69, %for.end94.thread ], [ %72, %for.body100 ]
  %81 = phi i32* [ %68, %for.end94.thread ], [ %71, %for.body100 ]
  %82 = phi i32* [ %.ph1002, %for.end94.thread ], [ %51, %for.body100 ]
  %83 = phi i32* [ %.ph1001, %for.end94.thread ], [ %52, %for.body100 ]
  %84 = phi i32* [ %.ph1000, %for.end94.thread ], [ %53, %for.body100 ]
  %85 = phi i32* [ %.ph999, %for.end94.thread ], [ %54, %for.body100 ]
  %86 = phi i32* [ %.ph998, %for.end94.thread ], [ %55, %for.body100 ]
  %87 = phi i32* [ %.ph997, %for.end94.thread ], [ %56, %for.body100 ]
  %88 = phi i32* [ %.ph996, %for.end94.thread ], [ %57, %for.body100 ]
  %89 = phi i32* [ %.ph995, %for.end94.thread ], [ %58, %for.body100 ]
  %90 = phi i32* [ %.ph994, %for.end94.thread ], [ %59, %for.body100 ]
  %91 = phi i32* [ %.ph993, %for.end94.thread ], [ %60, %for.body100 ]
  %92 = phi i32* [ %.ph992, %for.end94.thread ], [ %61, %for.body100 ]
  %93 = phi i32* [ %.ph991, %for.end94.thread ], [ %62, %for.body100 ]
  %94 = phi i32* [ %.ph990, %for.end94.thread ], [ %63, %for.body100 ]
  %95 = phi i32* [ %.ph989, %for.end94.thread ], [ %64, %for.body100 ]
  %96 = phi i32* [ %.ph988, %for.end94.thread ], [ %65, %for.body100 ]
  %add.ptr111 = getelementptr inbounds i32** %3, i64 11
  %add.ptr112 = getelementptr inbounds i32** %4, i64 11
  %add.ptr113 = getelementptr inbounds i32** %4, i64 15
  %97 = load i32** %add.ptr111, align 8, !tbaa !0
  %98 = load i32** %add.ptr112, align 8, !tbaa !0
  %99 = load i32** %add.ptr113, align 8, !tbaa !0
  br i1 %cmp864, label %for.body116, label %for.end126.thread

for.body116:                                      ; preds = %for.end110, %for.body116
  %indvars.iv930 = phi i64 [ %indvars.iv.next931, %for.body116 ], [ 0, %for.end110 ]
  %arrayidx118 = getelementptr inbounds i32* %98, i64 %indvars.iv930
  %100 = load i32* %arrayidx118, align 4, !tbaa !3
  %arrayidx120 = getelementptr inbounds i32* %99, i64 %indvars.iv930
  %101 = load i32* %arrayidx120, align 4, !tbaa !3
  %add121 = add nsw i32 %101, %100
  %arrayidx123 = getelementptr inbounds i32* %97, i64 %indvars.iv930
  store i32 %add121, i32* %arrayidx123, align 4, !tbaa !3
  %indvars.iv.next931 = add i64 %indvars.iv930, 1
  %lftr.wideiv932 = trunc i64 %indvars.iv.next931 to i32
  %exitcond933 = icmp eq i32 %lftr.wideiv932, %max_pos
  br i1 %exitcond933, label %for.end126, label %for.body116

for.end126.thread:                                ; preds = %for.end110.thread, %for.end110
  %.ph1009 = phi i32* [ %76, %for.end110.thread ], [ %99, %for.end110 ]
  %.ph1010 = phi i32* [ %75, %for.end110.thread ], [ %98, %for.end110 ]
  %.ph1011 = phi i32* [ %74, %for.end110.thread ], [ %97, %for.end110 ]
  %.ph1012 = phi i32* [ %65, %for.end110.thread ], [ %96, %for.end110 ]
  %.ph1013 = phi i32* [ %64, %for.end110.thread ], [ %95, %for.end110 ]
  %.ph1014 = phi i32* [ %63, %for.end110.thread ], [ %94, %for.end110 ]
  %.ph1015 = phi i32* [ %62, %for.end110.thread ], [ %93, %for.end110 ]
  %.ph1016 = phi i32* [ %61, %for.end110.thread ], [ %92, %for.end110 ]
  %.ph1017 = phi i32* [ %60, %for.end110.thread ], [ %91, %for.end110 ]
  %.ph1018 = phi i32* [ %59, %for.end110.thread ], [ %90, %for.end110 ]
  %.ph1020 = phi i32* [ %57, %for.end110.thread ], [ %88, %for.end110 ]
  %.ph1021 = phi i32* [ %56, %for.end110.thread ], [ %87, %for.end110 ]
  %.ph1022 = phi i32* [ %55, %for.end110.thread ], [ %86, %for.end110 ]
  %.ph1023 = phi i32* [ %54, %for.end110.thread ], [ %85, %for.end110 ]
  %.ph1024 = phi i32* [ %53, %for.end110.thread ], [ %84, %for.end110 ]
  %.ph1025 = phi i32* [ %52, %for.end110.thread ], [ %83, %for.end110 ]
  %.ph1026 = phi i32* [ %51, %for.end110.thread ], [ %82, %for.end110 ]
  %.ph1027 = phi i32* [ %71, %for.end110.thread ], [ %81, %for.end110 ]
  %.ph1028 = phi i32* [ %72, %for.end110.thread ], [ %80, %for.end110 ]
  %.ph1029 = phi i32* [ %73, %for.end110.thread ], [ %79, %for.end110 ]
  %arrayidx1311030 = getelementptr inbounds i32*** %2, i64 5
  %102 = load i32*** %arrayidx1311030, align 8, !tbaa !0
  br label %for.end150

for.end126:                                       ; preds = %for.body116
  %arrayidx131 = getelementptr inbounds i32*** %2, i64 5
  %103 = load i32*** %arrayidx131, align 8, !tbaa !0
  %104 = load i32** %103, align 8, !tbaa !0
  br i1 %cmp864, label %for.body140, label %for.end262.thread

for.body140:                                      ; preds = %for.end126, %for.body140
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %for.body140 ], [ 0, %for.end126 ]
  %arrayidx142 = getelementptr inbounds i32* %6, i64 %indvars.iv926
  %105 = load i32* %arrayidx142, align 4, !tbaa !3
  %arrayidx144 = getelementptr inbounds i32* %89, i64 %indvars.iv926
  %106 = load i32* %arrayidx144, align 4, !tbaa !3
  %add145 = add nsw i32 %106, %105
  %arrayidx147 = getelementptr inbounds i32* %104, i64 %indvars.iv926
  store i32 %add145, i32* %arrayidx147, align 4, !tbaa !3
  %indvars.iv.next927 = add i64 %indvars.iv926, 1
  %lftr.wideiv928 = trunc i64 %indvars.iv.next927 to i32
  %exitcond929 = icmp eq i32 %lftr.wideiv928, %max_pos
  br i1 %exitcond929, label %for.end150, label %for.body140

for.end150:                                       ; preds = %for.body140, %for.end126.thread
  %107 = phi i32** [ %102, %for.end126.thread ], [ %103, %for.body140 ]
  %108 = phi i32* [ %.ph1029, %for.end126.thread ], [ %79, %for.body140 ]
  %109 = phi i32* [ %.ph1028, %for.end126.thread ], [ %80, %for.body140 ]
  %110 = phi i32* [ %.ph1027, %for.end126.thread ], [ %81, %for.body140 ]
  %111 = phi i32* [ %.ph1026, %for.end126.thread ], [ %82, %for.body140 ]
  %112 = phi i32* [ %.ph1025, %for.end126.thread ], [ %83, %for.body140 ]
  %113 = phi i32* [ %.ph1024, %for.end126.thread ], [ %84, %for.body140 ]
  %114 = phi i32* [ %.ph1023, %for.end126.thread ], [ %85, %for.body140 ]
  %115 = phi i32* [ %.ph1022, %for.end126.thread ], [ %86, %for.body140 ]
  %116 = phi i32* [ %.ph1021, %for.end126.thread ], [ %87, %for.body140 ]
  %117 = phi i32* [ %.ph1020, %for.end126.thread ], [ %88, %for.body140 ]
  %118 = phi i32* [ %.ph1018, %for.end126.thread ], [ %90, %for.body140 ]
  %119 = phi i32* [ %.ph1017, %for.end126.thread ], [ %91, %for.body140 ]
  %120 = phi i32* [ %.ph1016, %for.end126.thread ], [ %92, %for.body140 ]
  %121 = phi i32* [ %.ph1015, %for.end126.thread ], [ %93, %for.body140 ]
  %122 = phi i32* [ %.ph1014, %for.end126.thread ], [ %94, %for.body140 ]
  %123 = phi i32* [ %.ph1013, %for.end126.thread ], [ %95, %for.body140 ]
  %124 = phi i32* [ %.ph1012, %for.end126.thread ], [ %96, %for.body140 ]
  %125 = phi i32* [ %.ph1011, %for.end126.thread ], [ %97, %for.body140 ]
  %126 = phi i32* [ %.ph1010, %for.end126.thread ], [ %98, %for.body140 ]
  %127 = phi i32* [ %.ph1009, %for.end126.thread ], [ %99, %for.body140 ]
  %add.ptr151 = getelementptr inbounds i32** %107, i64 2
  %128 = load i32** %add.ptr151, align 8, !tbaa !0
  br i1 %cmp864, label %for.body156, label %for.end262.thread

for.body156:                                      ; preds = %for.end150, %for.body156
  %indvars.iv922 = phi i64 [ %indvars.iv.next923, %for.body156 ], [ 0, %for.end150 ]
  %arrayidx158 = getelementptr inbounds i32* %115, i64 %indvars.iv922
  %129 = load i32* %arrayidx158, align 4, !tbaa !3
  %arrayidx160 = getelementptr inbounds i32* %120, i64 %indvars.iv922
  %130 = load i32* %arrayidx160, align 4, !tbaa !3
  %add161 = add nsw i32 %130, %129
  %arrayidx163 = getelementptr inbounds i32* %128, i64 %indvars.iv922
  store i32 %add161, i32* %arrayidx163, align 4, !tbaa !3
  %indvars.iv.next923 = add i64 %indvars.iv922, 1
  %lftr.wideiv924 = trunc i64 %indvars.iv.next923 to i32
  %exitcond925 = icmp eq i32 %lftr.wideiv924, %max_pos
  br i1 %exitcond925, label %for.end166, label %for.body156

for.end166:                                       ; preds = %for.body156
  %add.ptr167 = getelementptr inbounds i32** %107, i64 4
  %131 = load i32** %add.ptr167, align 8, !tbaa !0
  br i1 %cmp864, label %for.body172, label %for.end262.thread

for.body172:                                      ; preds = %for.end166, %for.body172
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %for.body172 ], [ 0, %for.end166 ]
  %arrayidx174 = getelementptr inbounds i32* %7, i64 %indvars.iv918
  %132 = load i32* %arrayidx174, align 4, !tbaa !3
  %arrayidx176 = getelementptr inbounds i32* %118, i64 %indvars.iv918
  %133 = load i32* %arrayidx176, align 4, !tbaa !3
  %add177 = add nsw i32 %133, %132
  %arrayidx179 = getelementptr inbounds i32* %131, i64 %indvars.iv918
  store i32 %add177, i32* %arrayidx179, align 4, !tbaa !3
  %indvars.iv.next919 = add i64 %indvars.iv918, 1
  %lftr.wideiv920 = trunc i64 %indvars.iv.next919 to i32
  %exitcond921 = icmp eq i32 %lftr.wideiv920, %max_pos
  br i1 %exitcond921, label %for.end182, label %for.body172

for.end182:                                       ; preds = %for.body172
  %add.ptr183 = getelementptr inbounds i32** %107, i64 6
  %134 = load i32** %add.ptr183, align 8, !tbaa !0
  br i1 %cmp864, label %for.body188, label %for.end262.thread

for.body188:                                      ; preds = %for.end182, %for.body188
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %for.body188 ], [ 0, %for.end182 ]
  %arrayidx190 = getelementptr inbounds i32* %114, i64 %indvars.iv914
  %135 = load i32* %arrayidx190, align 4, !tbaa !3
  %arrayidx192 = getelementptr inbounds i32* %121, i64 %indvars.iv914
  %136 = load i32* %arrayidx192, align 4, !tbaa !3
  %add193 = add nsw i32 %136, %135
  %arrayidx195 = getelementptr inbounds i32* %134, i64 %indvars.iv914
  store i32 %add193, i32* %arrayidx195, align 4, !tbaa !3
  %indvars.iv.next915 = add i64 %indvars.iv914, 1
  %lftr.wideiv916 = trunc i64 %indvars.iv.next915 to i32
  %exitcond917 = icmp eq i32 %lftr.wideiv916, %max_pos
  br i1 %exitcond917, label %for.end198, label %for.body188

for.end198:                                       ; preds = %for.body188
  %add.ptr199 = getelementptr inbounds i32** %107, i64 8
  %137 = load i32** %add.ptr199, align 8, !tbaa !0
  br i1 %cmp864, label %for.body204, label %for.end262.thread

for.body204:                                      ; preds = %for.end198, %for.body204
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %for.body204 ], [ 0, %for.end198 ]
  %arrayidx206 = getelementptr inbounds i32* %112, i64 %indvars.iv910
  %138 = load i32* %arrayidx206, align 4, !tbaa !3
  %arrayidx208 = getelementptr inbounds i32* %123, i64 %indvars.iv910
  %139 = load i32* %arrayidx208, align 4, !tbaa !3
  %add209 = add nsw i32 %139, %138
  %arrayidx211 = getelementptr inbounds i32* %137, i64 %indvars.iv910
  store i32 %add209, i32* %arrayidx211, align 4, !tbaa !3
  %indvars.iv.next911 = add i64 %indvars.iv910, 1
  %lftr.wideiv912 = trunc i64 %indvars.iv.next911 to i32
  %exitcond913 = icmp eq i32 %lftr.wideiv912, %max_pos
  br i1 %exitcond913, label %for.end214, label %for.body204

for.end214:                                       ; preds = %for.body204
  %add.ptr215 = getelementptr inbounds i32** %107, i64 10
  %140 = load i32** %add.ptr215, align 8, !tbaa !0
  br i1 %cmp864, label %for.body220, label %for.end262.thread

for.body220:                                      ; preds = %for.end214, %for.body220
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %for.body220 ], [ 0, %for.end214 ]
  %arrayidx222 = getelementptr inbounds i32* %109, i64 %indvars.iv906
  %141 = load i32* %arrayidx222, align 4, !tbaa !3
  %arrayidx224 = getelementptr inbounds i32* %126, i64 %indvars.iv906
  %142 = load i32* %arrayidx224, align 4, !tbaa !3
  %add225 = add nsw i32 %142, %141
  %arrayidx227 = getelementptr inbounds i32* %140, i64 %indvars.iv906
  store i32 %add225, i32* %arrayidx227, align 4, !tbaa !3
  %indvars.iv.next907 = add i64 %indvars.iv906, 1
  %lftr.wideiv908 = trunc i64 %indvars.iv.next907 to i32
  %exitcond909 = icmp eq i32 %lftr.wideiv908, %max_pos
  br i1 %exitcond909, label %for.end230, label %for.body220

for.end230:                                       ; preds = %for.body220
  %add.ptr231 = getelementptr inbounds i32** %107, i64 12
  %143 = load i32** %add.ptr231, align 8, !tbaa !0
  br i1 %cmp864, label %for.body236, label %for.end262.thread

for.body236:                                      ; preds = %for.end230, %for.body236
  %indvars.iv902 = phi i64 [ %indvars.iv.next903, %for.body236 ], [ 0, %for.end230 ]
  %arrayidx238 = getelementptr inbounds i32* %111, i64 %indvars.iv902
  %144 = load i32* %arrayidx238, align 4, !tbaa !3
  %arrayidx240 = getelementptr inbounds i32* %124, i64 %indvars.iv902
  %145 = load i32* %arrayidx240, align 4, !tbaa !3
  %add241 = add nsw i32 %145, %144
  %arrayidx243 = getelementptr inbounds i32* %143, i64 %indvars.iv902
  store i32 %add241, i32* %arrayidx243, align 4, !tbaa !3
  %indvars.iv.next903 = add i64 %indvars.iv902, 1
  %lftr.wideiv904 = trunc i64 %indvars.iv.next903 to i32
  %exitcond905 = icmp eq i32 %lftr.wideiv904, %max_pos
  br i1 %exitcond905, label %for.end246, label %for.body236

for.end246:                                       ; preds = %for.body236
  %add.ptr247 = getelementptr inbounds i32** %107, i64 14
  %146 = load i32** %add.ptr247, align 8, !tbaa !0
  br i1 %cmp864, label %for.body252, label %for.end262.thread

for.body252:                                      ; preds = %for.end246, %for.body252
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %for.body252 ], [ 0, %for.end246 ]
  %arrayidx254 = getelementptr inbounds i32* %108, i64 %indvars.iv898
  %147 = load i32* %arrayidx254, align 4, !tbaa !3
  %arrayidx256 = getelementptr inbounds i32* %127, i64 %indvars.iv898
  %148 = load i32* %arrayidx256, align 4, !tbaa !3
  %add257 = add nsw i32 %148, %147
  %arrayidx259 = getelementptr inbounds i32* %146, i64 %indvars.iv898
  store i32 %add257, i32* %arrayidx259, align 4, !tbaa !3
  %indvars.iv.next899 = add i64 %indvars.iv898, 1
  %lftr.wideiv900 = trunc i64 %indvars.iv.next899 to i32
  %exitcond901 = icmp eq i32 %lftr.wideiv900, %max_pos
  br i1 %exitcond901, label %for.end262, label %for.body252

for.end262.thread:                                ; preds = %for.end166, %for.end182, %for.end126, %for.end150, %for.end214, %for.end198, %for.end246, %for.end230
  %.ph1085 = phi i32* [ %125, %for.end246 ], [ %125, %for.end230 ], [ %125, %for.end198 ], [ %125, %for.end214 ], [ %125, %for.end150 ], [ %97, %for.end126 ], [ %125, %for.end182 ], [ %125, %for.end166 ]
  %.ph1086 = phi i32* [ %122, %for.end246 ], [ %122, %for.end230 ], [ %122, %for.end198 ], [ %122, %for.end214 ], [ %122, %for.end150 ], [ %94, %for.end126 ], [ %122, %for.end182 ], [ %122, %for.end166 ]
  %.ph1087 = phi i32* [ %119, %for.end246 ], [ %119, %for.end230 ], [ %119, %for.end198 ], [ %119, %for.end214 ], [ %119, %for.end150 ], [ %91, %for.end126 ], [ %119, %for.end182 ], [ %119, %for.end166 ]
  %.ph1089 = phi i32* [ %116, %for.end246 ], [ %116, %for.end230 ], [ %116, %for.end198 ], [ %116, %for.end214 ], [ %116, %for.end150 ], [ %87, %for.end126 ], [ %116, %for.end182 ], [ %116, %for.end166 ]
  %.ph1090 = phi i32* [ %113, %for.end246 ], [ %113, %for.end230 ], [ %113, %for.end198 ], [ %113, %for.end214 ], [ %113, %for.end150 ], [ %84, %for.end126 ], [ %113, %for.end182 ], [ %113, %for.end166 ]
  %.ph1091 = phi i32* [ %110, %for.end246 ], [ %110, %for.end230 ], [ %110, %for.end198 ], [ %110, %for.end214 ], [ %110, %for.end150 ], [ %81, %for.end126 ], [ %110, %for.end182 ], [ %110, %for.end166 ]
  %arrayidx2671092 = getelementptr inbounds i32*** %2, i64 4
  %149 = load i32*** %arrayidx2671092, align 8, !tbaa !0
  %150 = load i32** %149, align 8, !tbaa !0
  br label %for.end286

for.end262:                                       ; preds = %for.body252
  %arrayidx267 = getelementptr inbounds i32*** %2, i64 4
  %151 = load i32*** %arrayidx267, align 8, !tbaa !0
  %152 = load i32** %151, align 8, !tbaa !0
  br i1 %cmp864, label %for.body276, label %for.end286.thread

for.end286.thread:                                ; preds = %for.end262
  %add.ptr2871093 = getelementptr inbounds i32** %151, i64 2
  %153 = load i32** %add.ptr2871093, align 8, !tbaa !0
  br label %for.end302.thread

for.body276:                                      ; preds = %for.end262, %for.body276
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %for.body276 ], [ 0, %for.end262 ]
  %arrayidx278 = getelementptr inbounds i32* %5, i64 %indvars.iv894
  %154 = load i32* %arrayidx278, align 4, !tbaa !3
  %arrayidx280 = getelementptr inbounds i32* %117, i64 %indvars.iv894
  %155 = load i32* %arrayidx280, align 4, !tbaa !3
  %add281 = add nsw i32 %155, %154
  %arrayidx283 = getelementptr inbounds i32* %152, i64 %indvars.iv894
  store i32 %add281, i32* %arrayidx283, align 4, !tbaa !3
  %indvars.iv.next895 = add i64 %indvars.iv894, 1
  %lftr.wideiv896 = trunc i64 %indvars.iv.next895 to i32
  %exitcond897 = icmp eq i32 %lftr.wideiv896, %max_pos
  br i1 %exitcond897, label %for.end286, label %for.body276

for.end286:                                       ; preds = %for.body276, %for.end262.thread
  %156 = phi i32* [ %150, %for.end262.thread ], [ %152, %for.body276 ]
  %157 = phi i32** [ %149, %for.end262.thread ], [ %151, %for.body276 ]
  %158 = phi i32* [ %.ph1091, %for.end262.thread ], [ %110, %for.body276 ]
  %159 = phi i32* [ %.ph1090, %for.end262.thread ], [ %113, %for.body276 ]
  %160 = phi i32* [ %.ph1089, %for.end262.thread ], [ %116, %for.body276 ]
  %161 = phi i32* [ %.ph1087, %for.end262.thread ], [ %119, %for.body276 ]
  %162 = phi i32* [ %.ph1086, %for.end262.thread ], [ %122, %for.body276 ]
  %163 = phi i32* [ %.ph1085, %for.end262.thread ], [ %125, %for.body276 ]
  %add.ptr287 = getelementptr inbounds i32** %157, i64 2
  %164 = load i32** %add.ptr287, align 8, !tbaa !0
  br i1 %cmp864, label %for.body292, label %for.end302.thread

for.body292:                                      ; preds = %for.end286, %for.body292
  %indvars.iv890 = phi i64 [ %indvars.iv.next891, %for.body292 ], [ 0, %for.end286 ]
  %arrayidx294 = getelementptr inbounds i32* %160, i64 %indvars.iv890
  %165 = load i32* %arrayidx294, align 4, !tbaa !3
  %arrayidx296 = getelementptr inbounds i32* %161, i64 %indvars.iv890
  %166 = load i32* %arrayidx296, align 4, !tbaa !3
  %add297 = add nsw i32 %166, %165
  %arrayidx299 = getelementptr inbounds i32* %164, i64 %indvars.iv890
  store i32 %add297, i32* %arrayidx299, align 4, !tbaa !3
  %indvars.iv.next891 = add i64 %indvars.iv890, 1
  %lftr.wideiv892 = trunc i64 %indvars.iv.next891 to i32
  %exitcond893 = icmp eq i32 %lftr.wideiv892, %max_pos
  br i1 %exitcond893, label %for.end302, label %for.body292

for.end302.thread:                                ; preds = %for.end286.thread, %for.end286
  %.ph1094 = phi i32* [ %153, %for.end286.thread ], [ %164, %for.end286 ]
  %.ph1095 = phi i32* [ %125, %for.end286.thread ], [ %163, %for.end286 ]
  %.ph1098 = phi i32* [ %110, %for.end286.thread ], [ %158, %for.end286 ]
  %.ph1099 = phi i32** [ %151, %for.end286.thread ], [ %157, %for.end286 ]
  %.ph1100 = phi i32* [ %152, %for.end286.thread ], [ %156, %for.end286 ]
  %add.ptr3031101 = getelementptr inbounds i32** %.ph1099, i64 8
  %167 = load i32** %add.ptr3031101, align 8, !tbaa !0
  br label %for.end318

for.end302:                                       ; preds = %for.body292
  %add.ptr303 = getelementptr inbounds i32** %157, i64 8
  %168 = load i32** %add.ptr303, align 8, !tbaa !0
  br i1 %cmp864, label %for.body308, label %for.end318.thread

for.end318.thread:                                ; preds = %for.end302
  %add.ptr3191102 = getelementptr inbounds i32** %157, i64 10
  %169 = load i32** %add.ptr3191102, align 8, !tbaa !0
  br label %for.end334.thread

for.body308:                                      ; preds = %for.end302, %for.body308
  %indvars.iv886 = phi i64 [ %indvars.iv.next887, %for.body308 ], [ 0, %for.end302 ]
  %arrayidx310 = getelementptr inbounds i32* %159, i64 %indvars.iv886
  %170 = load i32* %arrayidx310, align 4, !tbaa !3
  %arrayidx312 = getelementptr inbounds i32* %162, i64 %indvars.iv886
  %171 = load i32* %arrayidx312, align 4, !tbaa !3
  %add313 = add nsw i32 %171, %170
  %arrayidx315 = getelementptr inbounds i32* %168, i64 %indvars.iv886
  store i32 %add313, i32* %arrayidx315, align 4, !tbaa !3
  %indvars.iv.next887 = add i64 %indvars.iv886, 1
  %lftr.wideiv888 = trunc i64 %indvars.iv.next887 to i32
  %exitcond889 = icmp eq i32 %lftr.wideiv888, %max_pos
  br i1 %exitcond889, label %for.end318, label %for.body308

for.end318:                                       ; preds = %for.body308, %for.end302.thread
  %172 = phi i32* [ %167, %for.end302.thread ], [ %168, %for.body308 ]
  %173 = phi i32* [ %.ph1100, %for.end302.thread ], [ %156, %for.body308 ]
  %174 = phi i32** [ %.ph1099, %for.end302.thread ], [ %157, %for.body308 ]
  %175 = phi i32* [ %.ph1098, %for.end302.thread ], [ %158, %for.body308 ]
  %176 = phi i32* [ %.ph1095, %for.end302.thread ], [ %163, %for.body308 ]
  %177 = phi i32* [ %.ph1094, %for.end302.thread ], [ %164, %for.body308 ]
  %add.ptr319 = getelementptr inbounds i32** %174, i64 10
  %178 = load i32** %add.ptr319, align 8, !tbaa !0
  br i1 %cmp864, label %for.body324, label %for.end334.thread

for.body324:                                      ; preds = %for.end318, %for.body324
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %for.body324 ], [ 0, %for.end318 ]
  %arrayidx326 = getelementptr inbounds i32* %175, i64 %indvars.iv882
  %179 = load i32* %arrayidx326, align 4, !tbaa !3
  %arrayidx328 = getelementptr inbounds i32* %176, i64 %indvars.iv882
  %180 = load i32* %arrayidx328, align 4, !tbaa !3
  %add329 = add nsw i32 %180, %179
  %arrayidx331 = getelementptr inbounds i32* %178, i64 %indvars.iv882
  store i32 %add329, i32* %arrayidx331, align 4, !tbaa !3
  %indvars.iv.next883 = add i64 %indvars.iv882, 1
  %lftr.wideiv884 = trunc i64 %indvars.iv.next883 to i32
  %exitcond885 = icmp eq i32 %lftr.wideiv884, %max_pos
  br i1 %exitcond885, label %for.end334, label %for.body324

for.end334.thread:                                ; preds = %for.end318.thread, %for.end318
  %.ph1103 = phi i32* [ %169, %for.end318.thread ], [ %178, %for.end318 ]
  %.ph1104 = phi i32* [ %164, %for.end318.thread ], [ %177, %for.end318 ]
  %.ph1105 = phi i32* [ %156, %for.end318.thread ], [ %173, %for.end318 ]
  %.ph1106 = phi i32* [ %168, %for.end318.thread ], [ %172, %for.end318 ]
  %arrayidx3391107 = getelementptr inbounds i32*** %2, i64 3
  %181 = load i32*** %arrayidx3391107, align 8, !tbaa !0
  %182 = load i32** %181, align 8, !tbaa !0
  br label %for.end358

for.end334:                                       ; preds = %for.body324
  %arrayidx339 = getelementptr inbounds i32*** %2, i64 3
  %183 = load i32*** %arrayidx339, align 8, !tbaa !0
  %184 = load i32** %183, align 8, !tbaa !0
  br i1 %cmp864, label %for.body348, label %for.end358.thread

for.end358.thread:                                ; preds = %for.end334
  %add.ptr3591108 = getelementptr inbounds i32** %183, i64 2
  %185 = load i32** %add.ptr3591108, align 8, !tbaa !0
  br label %for.end374.thread

for.body348:                                      ; preds = %for.end334, %for.body348
  %indvars.iv878 = phi i64 [ %indvars.iv.next879, %for.body348 ], [ 0, %for.end334 ]
  %arrayidx350 = getelementptr inbounds i32* %173, i64 %indvars.iv878
  %186 = load i32* %arrayidx350, align 4, !tbaa !3
  %arrayidx352 = getelementptr inbounds i32* %172, i64 %indvars.iv878
  %187 = load i32* %arrayidx352, align 4, !tbaa !3
  %add353 = add nsw i32 %187, %186
  %arrayidx355 = getelementptr inbounds i32* %184, i64 %indvars.iv878
  store i32 %add353, i32* %arrayidx355, align 4, !tbaa !3
  %indvars.iv.next879 = add i64 %indvars.iv878, 1
  %lftr.wideiv880 = trunc i64 %indvars.iv.next879 to i32
  %exitcond881 = icmp eq i32 %lftr.wideiv880, %max_pos
  br i1 %exitcond881, label %for.end358, label %for.body348

for.end358:                                       ; preds = %for.body348, %for.end334.thread
  %188 = phi i32* [ %182, %for.end334.thread ], [ %184, %for.body348 ]
  %189 = phi i32** [ %181, %for.end334.thread ], [ %183, %for.body348 ]
  %190 = phi i32* [ %.ph1104, %for.end334.thread ], [ %177, %for.body348 ]
  %191 = phi i32* [ %.ph1103, %for.end334.thread ], [ %178, %for.body348 ]
  %192 = phi i32* [ %.ph1106, %for.end334.thread ], [ %172, %for.body348 ]
  %193 = phi i32* [ %.ph1105, %for.end334.thread ], [ %173, %for.body348 ]
  %add.ptr359 = getelementptr inbounds i32** %189, i64 2
  %194 = load i32** %add.ptr359, align 8, !tbaa !0
  br i1 %cmp864, label %for.body364, label %for.end374.thread

for.body364:                                      ; preds = %for.end358, %for.body364
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %for.body364 ], [ 0, %for.end358 ]
  %arrayidx366 = getelementptr inbounds i32* %190, i64 %indvars.iv874
  %195 = load i32* %arrayidx366, align 4, !tbaa !3
  %arrayidx368 = getelementptr inbounds i32* %191, i64 %indvars.iv874
  %196 = load i32* %arrayidx368, align 4, !tbaa !3
  %add369 = add nsw i32 %196, %195
  %arrayidx371 = getelementptr inbounds i32* %194, i64 %indvars.iv874
  store i32 %add369, i32* %arrayidx371, align 4, !tbaa !3
  %indvars.iv.next875 = add i64 %indvars.iv874, 1
  %lftr.wideiv876 = trunc i64 %indvars.iv.next875 to i32
  %exitcond877 = icmp eq i32 %lftr.wideiv876, %max_pos
  br i1 %exitcond877, label %for.end374, label %for.body364

for.end374.thread:                                ; preds = %for.end358.thread, %for.end358
  %.ph1109 = phi i32* [ %185, %for.end358.thread ], [ %194, %for.end358 ]
  %.ph1111 = phi i32* [ %172, %for.end358.thread ], [ %192, %for.end358 ]
  %.ph1112 = phi i32* [ %184, %for.end358.thread ], [ %188, %for.end358 ]
  %.ph1113 = phi i32* [ %178, %for.end358.thread ], [ %191, %for.end358 ]
  %arrayidx3791115 = getelementptr inbounds i32*** %2, i64 2
  %197 = load i32*** %arrayidx3791115, align 8, !tbaa !0
  br label %for.end398

for.end374:                                       ; preds = %for.body364
  %arrayidx379 = getelementptr inbounds i32*** %2, i64 2
  %198 = load i32*** %arrayidx379, align 8, !tbaa !0
  %199 = load i32** %198, align 8, !tbaa !0
  br i1 %cmp864, label %for.body388, label %for.end438

for.body388:                                      ; preds = %for.end374, %for.body388
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %for.body388 ], [ 0, %for.end374 ]
  %arrayidx390 = getelementptr inbounds i32* %193, i64 %indvars.iv870
  %200 = load i32* %arrayidx390, align 4, !tbaa !3
  %arrayidx392 = getelementptr inbounds i32* %190, i64 %indvars.iv870
  %201 = load i32* %arrayidx392, align 4, !tbaa !3
  %add393 = add nsw i32 %201, %200
  %arrayidx395 = getelementptr inbounds i32* %199, i64 %indvars.iv870
  store i32 %add393, i32* %arrayidx395, align 4, !tbaa !3
  %indvars.iv.next871 = add i64 %indvars.iv870, 1
  %lftr.wideiv872 = trunc i64 %indvars.iv.next871 to i32
  %exitcond873 = icmp eq i32 %lftr.wideiv872, %max_pos
  br i1 %exitcond873, label %for.end398, label %for.body388

for.end398:                                       ; preds = %for.body388, %for.end374.thread
  %202 = phi i32** [ %197, %for.end374.thread ], [ %198, %for.body388 ]
  %203 = phi i32* [ %.ph1113, %for.end374.thread ], [ %191, %for.body388 ]
  %204 = phi i32* [ %.ph1112, %for.end374.thread ], [ %188, %for.body388 ]
  %205 = phi i32* [ %.ph1111, %for.end374.thread ], [ %192, %for.body388 ]
  %206 = phi i32* [ %.ph1109, %for.end374.thread ], [ %194, %for.body388 ]
  %add.ptr399 = getelementptr inbounds i32** %202, i64 8
  %207 = load i32** %add.ptr399, align 8, !tbaa !0
  br i1 %cmp864, label %for.body404, label %for.end438

for.body404:                                      ; preds = %for.end398, %for.body404
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %for.body404 ], [ 0, %for.end398 ]
  %arrayidx406 = getelementptr inbounds i32* %205, i64 %indvars.iv866
  %208 = load i32* %arrayidx406, align 4, !tbaa !3
  %arrayidx408 = getelementptr inbounds i32* %203, i64 %indvars.iv866
  %209 = load i32* %arrayidx408, align 4, !tbaa !3
  %add409 = add nsw i32 %209, %208
  %arrayidx411 = getelementptr inbounds i32* %207, i64 %indvars.iv866
  store i32 %add409, i32* %arrayidx411, align 4, !tbaa !3
  %indvars.iv.next867 = add i64 %indvars.iv866, 1
  %lftr.wideiv868 = trunc i64 %indvars.iv.next867 to i32
  %exitcond869 = icmp eq i32 %lftr.wideiv868, %max_pos
  br i1 %exitcond869, label %for.end414, label %for.body404

for.end414:                                       ; preds = %for.body404
  %arrayidx419 = getelementptr inbounds i32*** %2, i64 1
  %210 = load i32*** %arrayidx419, align 8, !tbaa !0
  %211 = load i32** %210, align 8, !tbaa !0
  br i1 %cmp864, label %for.body428, label %for.end438

for.body428:                                      ; preds = %for.end414, %for.body428
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body428 ], [ 0, %for.end414 ]
  %arrayidx430 = getelementptr inbounds i32* %204, i64 %indvars.iv
  %212 = load i32* %arrayidx430, align 4, !tbaa !3
  %arrayidx432 = getelementptr inbounds i32* %206, i64 %indvars.iv
  %213 = load i32* %arrayidx432, align 4, !tbaa !3
  %add433 = add nsw i32 %213, %212
  %arrayidx435 = getelementptr inbounds i32* %211, i64 %indvars.iv
  store i32 %add433, i32* %arrayidx435, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %max_pos
  br i1 %exitcond, label %for.end438, label %for.body428

for.end438:                                       ; preds = %for.end374, %for.end398, %for.body428, %for.end414
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SetupFastFullPelSearch(i16 signext %ref, i32 %list) #0 {
entry:
  %pmv = alloca [2 x i16], align 2
  %orig_blocks = alloca [256 x i16], align 16
  %0 = bitcast [256 x i16]* %orig_blocks to i8*
  call void @llvm.lifetime.start(i64 512, i8* %0) #3
  %arraydecay = getelementptr inbounds [256 x i16]* %orig_blocks, i64 0, i64 0
  %idxprom = sext i16 %ref to i64
  %idxprom1 = sext i32 %list to i64
  %1 = load i32****** @BlockSAD, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32***** %1, i64 %idxprom1
  %2 = load i32***** %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32**** %2, i64 %idxprom
  %3 = load i32**** %arrayidx2, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds i32*** %3, i64 7
  %4 = load i32*** %arrayidx3, align 8, !tbaa !0
  %5 = load i32*** @max_search_range, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i32** %5, i64 %idxprom1
  %6 = load i32** %arrayidx6, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds i32* %6, i64 %idxprom
  %7 = load i32* %arrayidx7, align 4, !tbaa !3
  %mul = shl nsw i32 %7, 1
  %add563 = or i32 %mul, 1
  %mul10 = mul nsw i32 %add563, %add563
  %8 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 90
  %9 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 3
  %10 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom11 = sext i32 %10 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 51
  %11 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %11, i64 %idxprom11, i32 22
  %12 = load i32* %mb_field, align 4, !tbaa !3
  %tobool13 = icmp eq i32 %12, 0
  br i1 %tobool13, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem565 = shl i32 %10, 1
  %13 = and i32 %rem565, 2
  %14 = add i32 %13, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond16 = phi i32 [ %14, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %15 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %15, i64 0, i32 19
  %16 = load i32* %weighted_pred_flag, align 4, !tbaa !1
  %tobool17 = icmp eq i32 %16, 0
  br i1 %tobool17, label %lor.rhs, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %cond.end
  %type = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 6
  %17 = load i32* %type, align 4, !tbaa !3
  switch i32 %17, label %lor.rhs [
    i32 0, label %lor.end.thread
    i32 3, label %lor.end.thread
  ]

lor.rhs:                                          ; preds = %land.lhs.true18, %cond.end
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %15, i64 0, i32 20
  %18 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %tobool21 = icmp eq i32 %18, 0
  br i1 %tobool21, label %lor.end.thread578, label %lor.end

lor.end.thread578:                                ; preds = %lor.rhs
  %add25579 = add nsw i32 %cond16, %list
  %idxprom26580 = sext i32 %add25579 to i64
  %arrayidx27581 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom26580
  %19 = load %struct.storable_picture*** %arrayidx27581, align 8, !tbaa !0
  %arrayidx28582 = getelementptr inbounds %struct.storable_picture** %19, i64 %idxprom
  %20 = load %struct.storable_picture** %arrayidx28582, align 8, !tbaa !0
  br label %if.else

lor.end.thread:                                   ; preds = %land.lhs.true18, %land.lhs.true18
  %add25574 = add nsw i32 %cond16, %list
  %idxprom26575 = sext i32 %add25574 to i64
  %arrayidx27576 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom26575
  %21 = load %struct.storable_picture*** %arrayidx27576, align 8, !tbaa !0
  %arrayidx28577 = getelementptr inbounds %struct.storable_picture** %21, i64 %idxprom
  %22 = load %struct.storable_picture** %arrayidx28577, align 8, !tbaa !0
  br label %land.lhs.true30

lor.end:                                          ; preds = %lor.rhs
  %type22 = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 6
  %23 = load i32* %type22, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %23, 1
  %add25 = add nsw i32 %cond16, %list
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom26
  %24 = load %struct.storable_picture*** %arrayidx27, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds %struct.storable_picture** %24, i64 %idxprom
  %25 = load %struct.storable_picture** %arrayidx28, align 8, !tbaa !0
  br i1 %cmp23, label %land.lhs.true30, label %if.else

land.lhs.true30:                                  ; preds = %lor.end.thread, %lor.end
  %26 = phi %struct.storable_picture* [ %22, %lor.end.thread ], [ %25, %lor.end ]
  %27 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters* %27, i64 0, i32 48
  %28 = load i32* %UseWeightedReferenceME, align 4, !tbaa !3
  %tobool31 = icmp eq i32 %28, 0
  br i1 %tobool31, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true30
  %imgY_11_w = getelementptr inbounds %struct.storable_picture* %26, i64 0, i32 27
  br label %if.end

if.else:                                          ; preds = %lor.end.thread578, %land.lhs.true30, %lor.end
  %29 = phi %struct.storable_picture* [ %26, %land.lhs.true30 ], [ %25, %lor.end ], [ %20, %lor.end.thread578 ]
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %29, i64 0, i32 26
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = phi %struct.storable_picture* [ %26, %if.then ], [ %29, %if.else ]
  %ref_pic.0.in = phi i16** [ %imgY_11_w, %if.then ], [ %imgY_11, %if.else ]
  %ref_pic.0 = load i16** %ref_pic.0.in, align 8
  %size_x = getelementptr inbounds %struct.storable_picture* %30, i64 0, i32 18
  %31 = load i32* %size_x, align 4, !tbaa !3
  %sub = add nsw i32 %31, -17
  %size_y = getelementptr inbounds %struct.storable_picture* %30, i64 0, i32 19
  %32 = load i32* %size_y, align 4, !tbaa !3
  %sub32 = add nsw i32 %32, -17
  %arraydecay35 = getelementptr inbounds [2 x i16]* %pmv, i64 0, i64 0
  %33 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx = getelementptr inbounds %struct.storable_picture* %33, i64 0, i32 32
  %34 = load i16**** %ref_idx, align 8, !tbaa !0
  %mv = getelementptr inbounds %struct.storable_picture* %33, i64 0, i32 35
  %35 = load i16***** %mv, align 8, !tbaa !0
  call void @SetMotionVectorPredictor(i16* %arraydecay35, i16*** %34, i16**** %35, i16 signext %ref, i32 %list, i32 0, i32 0, i32 16, i32 16) #8
  %36 = load i16* %arraydecay35, align 2, !tbaa !4
  %conv = sext i16 %36 to i32
  %div = sdiv i32 %conv, 4
  %37 = load i32*** @search_center_x, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i32** %37, i64 %idxprom1
  %38 = load i32** %arrayidx39, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i32* %38, i64 %idxprom
  store i32 %div, i32* %arrayidx40, align 4, !tbaa !3
  %arrayidx41 = getelementptr inbounds [2 x i16]* %pmv, i64 0, i64 1
  %39 = load i16* %arrayidx41, align 2, !tbaa !4
  %conv42 = sext i16 %39 to i32
  %div43 = sdiv i32 %conv42, 4
  %40 = load i32*** @search_center_y, align 8, !tbaa !0
  %arrayidx46 = getelementptr inbounds i32** %40, i64 %idxprom1
  %41 = load i32** %arrayidx46, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds i32* %41, i64 %idxprom
  store i32 %div43, i32* %arrayidx47, align 4, !tbaa !3
  %42 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 85
  %43 = load i32* %rdopt, align 4, !tbaa !3
  %tobool48 = icmp eq i32 %43, 0
  br i1 %tobool48, label %if.then49, label %for.body.lr.ph

if.then49:                                        ; preds = %if.end
  %sub50 = sub nsw i32 0, %7
  %44 = load i32* %arrayidx40, align 4, !tbaa !3
  %cmp55 = icmp slt i32 %7, %44
  %. = select i1 %cmp55, i32 %7, i32 %44
  %cmp65 = icmp slt i32 %., %sub50
  %sub50.. = select i1 %cmp65, i32 %sub50, i32 %.
  store i32 %sub50.., i32* %arrayidx40, align 4, !tbaa !3
  %45 = load i32* %arrayidx47, align 4, !tbaa !3
  %cmp95 = icmp slt i32 %7, %45
  %.569 = select i1 %cmp95, i32 %7, i32 %45
  %cmp105 = icmp slt i32 %.569, %sub50
  %cond125 = select i1 %cmp105, i32 %sub50, i32 %.569
  store i32 %cond125, i32* %arrayidx47, align 4, !tbaa !3
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then49, %if.end
  %46 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_x = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 37
  %47 = load i32* %opix_x, align 4, !tbaa !3
  %48 = load i32* %arrayidx40, align 4, !tbaa !3
  %add135 = add nsw i32 %48, %47
  store i32 %add135, i32* %arrayidx40, align 4, !tbaa !3
  %opix_y = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 38
  %49 = load i32* %opix_y, align 4, !tbaa !3
  %50 = load i32* %arrayidx47, align 4, !tbaa !3
  %add140 = add nsw i32 %50, %49
  store i32 %add140, i32* %arrayidx47, align 4, !tbaa !3
  %51 = load i32* %arrayidx40, align 4, !tbaa !3
  %52 = load i32* %opix_y, align 4, !tbaa !3
  %53 = load i32* %opix_x, align 4, !tbaa !3
  %54 = load i16*** @imgY_org, align 8, !tbaa !0
  %55 = sext i32 %52 to i64
  br label %for.body160.lr.ph

for.body160.lr.ph:                                ; preds = %for.inc165, %for.body.lr.ph
  %indvars.iv621 = phi i64 [ %55, %for.body.lr.ph ], [ %indvars.iv.next622, %for.inc165 ]
  %orgptr.0606 = phi i16* [ %arraydecay, %for.body.lr.ph ], [ %scevgep619, %for.inc165 ]
  %arrayidx163 = getelementptr inbounds i16** %54, i64 %indvars.iv621
  %56 = load i16** %arrayidx163, align 8, !tbaa !0
  %57 = sext i32 %53 to i64
  %58 = add i32 %53, 15
  %59 = icmp sgt i32 %53, %58
  %smax = select i1 %59, i32 %53, i32 %58
  %60 = sub i32 %smax, %53
  %61 = zext i32 %60 to i64
  br label %for.body160

for.body160:                                      ; preds = %for.body160.lr.ph, %for.body160
  %indvars.iv616 = phi i64 [ %57, %for.body160.lr.ph ], [ %indvars.iv.next617, %for.body160 ]
  %orgptr.1601 = phi i16* [ %orgptr.0606, %for.body160.lr.ph ], [ %incdec.ptr, %for.body160 ]
  %arrayidx164 = getelementptr inbounds i16* %56, i64 %indvars.iv616
  %62 = load i16* %arrayidx164, align 2, !tbaa !4
  %incdec.ptr = getelementptr inbounds i16* %orgptr.1601, i64 1
  store i16 %62, i16* %orgptr.1601, align 2, !tbaa !4
  %indvars.iv.next617 = add i64 %indvars.iv616, 1
  %63 = trunc i64 %indvars.iv616 to i32
  %cmp158 = icmp slt i32 %63, %58
  br i1 %cmp158, label %for.body160, label %for.inc165

for.inc165:                                       ; preds = %for.body160
  %scevgep618.sum = add i64 %61, 1
  %scevgep619 = getelementptr i16* %orgptr.0606, i64 %scevgep618.sum
  %indvars.iv.next622 = add i64 %indvars.iv621, 1
  %64 = add nsw i32 %52, 15
  %65 = trunc i64 %indvars.iv621 to i32
  %cmp152 = icmp slt i32 %65, %64
  br i1 %cmp152, label %for.body160.lr.ph, label %for.end167

for.end167:                                       ; preds = %for.inc165
  %cmp168 = icmp slt i32 %51, %7
  br i1 %cmp168, label %if.end183, label %land.lhs.true170

land.lhs.true170:                                 ; preds = %for.end167
  %sub171 = sub nsw i32 %sub, %7
  %cmp172 = icmp sgt i32 %51, %sub171
  %cmp175 = icmp slt i32 %add140, %7
  %or.cond = or i1 %cmp172, %cmp175
  br i1 %or.cond, label %if.end183, label %land.lhs.true177

land.lhs.true177:                                 ; preds = %land.lhs.true170
  %sub178 = sub nsw i32 %sub32, %7
  %cmp179 = icmp sgt i32 %add140, %sub178
  br i1 %cmp179, label %if.end183, label %if.then181

if.then181:                                       ; preds = %land.lhs.true177
  store i16* (i16*, i32, i32, i32, i32)* @FastLine16Y_11, i16* (i16*, i32, i32, i32, i32)** @PelYline_11, align 8, !tbaa !0
  br label %if.end183

if.end183:                                        ; preds = %for.end167, %land.lhs.true170, %land.lhs.true177, %if.then181
  %range_partly_outside.0 = phi i32 [ 0, %if.then181 ], [ 1, %land.lhs.true177 ], [ 1, %land.lhs.true170 ], [ 1, %for.end167 ]
  %66 = load i32* %rdopt, align 4, !tbaa !3
  %tobool185 = icmp eq i32 %66, 0
  br i1 %tobool185, label %if.then186, label %for.cond214.preheader

if.then186:                                       ; preds = %if.end183
  %67 = load i32* %opix_x, align 4, !tbaa !3
  %sub188 = sub nsw i32 %67, %51
  %68 = load i32* %opix_y, align 4, !tbaa !3
  %sub190 = sub nsw i32 %68, %add140
  %69 = load i32** @spiral_search_x, align 8, !tbaa !0
  %70 = load i32** @spiral_search_y, align 8, !tbaa !0
  br label %for.body194

for.body194:                                      ; preds = %if.then186, %for.inc210
  %indvars.iv614 = phi i64 [ 0, %if.then186 ], [ %indvars.iv.next615, %for.inc210 ]
  %pos.0596 = phi i32 [ 0, %if.then186 ], [ %inc211, %for.inc210 ]
  %arrayidx196 = getelementptr inbounds i32* %69, i64 %indvars.iv614
  %71 = load i32* %arrayidx196, align 4, !tbaa !3
  %cmp197 = icmp eq i32 %sub188, %71
  br i1 %cmp197, label %land.lhs.true199, label %for.inc210

land.lhs.true199:                                 ; preds = %for.body194
  %arrayidx201 = getelementptr inbounds i32* %70, i64 %indvars.iv614
  %72 = load i32* %arrayidx201, align 4, !tbaa !3
  %cmp202 = icmp eq i32 %sub190, %72
  br i1 %cmp202, label %if.then204, label %for.inc210

if.then204:                                       ; preds = %land.lhs.true199
  %73 = load i32*** @pos_00, align 8, !tbaa !0
  %arrayidx207 = getelementptr inbounds i32** %73, i64 %idxprom1
  %74 = load i32** %arrayidx207, align 8, !tbaa !0
  %arrayidx208 = getelementptr inbounds i32* %74, i64 %idxprom
  store i32 %pos.0596, i32* %arrayidx208, align 4, !tbaa !3
  br label %for.cond214.preheader

for.cond214.preheader:                            ; preds = %for.inc210, %if.end183, %if.then204
  %tobool224 = icmp eq i32 %range_partly_outside.0, 0
  br label %for.body217

for.inc210:                                       ; preds = %for.body194, %land.lhs.true199
  %indvars.iv.next615 = add i64 %indvars.iv614, 1
  %inc211 = add nsw i32 %pos.0596, 1
  %75 = trunc i64 %indvars.iv.next615 to i32
  %cmp192 = icmp slt i32 %75, %mul10
  br i1 %cmp192, label %for.body194, label %for.cond214.preheader

for.body217:                                      ; preds = %for.inc405, %for.cond214.preheader
  %indvars.iv611 = phi i64 [ 0, %for.cond214.preheader ], [ %indvars.iv.next612, %for.inc405 ]
  %76 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx219 = getelementptr inbounds i32* %76, i64 %indvars.iv611
  %77 = load i32* %arrayidx219, align 4, !tbaa !3
  %add220 = add nsw i32 %77, %add140
  %78 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx222 = getelementptr inbounds i32* %78, i64 %indvars.iv611
  %79 = load i32* %arrayidx222, align 4, !tbaa !3
  %add223 = add nsw i32 %79, %51
  br i1 %tobool224, label %for.cond246.preheader, label %if.then225

if.then225:                                       ; preds = %for.body217
  %notlhs = icmp sgt i32 %add220, -1
  %notrhs = icmp sle i32 %add220, %sub32
  %or.cond571.not = and i1 %notrhs, %notlhs
  %cmp232 = icmp sgt i32 %add223, -1
  %or.cond572 = and i1 %or.cond571.not, %cmp232
  %or.cond572.not = xor i1 %or.cond572, true
  %cmp235 = icmp sgt i32 %add223, %sub
  %or.cond573 = or i1 %cmp235, %or.cond572.not
  br i1 %or.cond573, label %if.else238, label %if.then237

if.then237:                                       ; preds = %if.then225
  store i16* (i16*, i32, i32, i32, i32)* @FastLine16Y_11, i16* (i16*, i32, i32, i32, i32)** @PelYline_11, align 8, !tbaa !0
  br label %for.cond246.preheader

if.else238:                                       ; preds = %if.then225
  store i16* (i16*, i32, i32, i32, i32)* @UMVLine16Y_11, i16* (i16*, i32, i32, i32, i32)** @PelYline_11, align 8, !tbaa !0
  br label %for.cond246.preheader

for.cond246.preheader:                            ; preds = %if.else238, %if.then237, %for.body217, %for.end381
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end381 ], [ 0, %for.body217 ], [ 0, %if.then237 ], [ 0, %if.else238 ]
  %orgptr.2593 = phi i16* [ %scevgep, %for.end381 ], [ %arraydecay, %for.body217 ], [ %arraydecay, %if.then237 ], [ %arraydecay, %if.else238 ]
  %abs_y.0592 = phi i32 [ %130, %for.end381 ], [ %add220, %for.body217 ], [ %add220, %if.then237 ], [ %add220, %if.else238 ]
  %blky.0590 = phi i32 [ %inc403, %for.end381 ], [ 0, %for.body217 ], [ 0, %if.then237 ], [ 0, %if.else238 ]
  %scevgep = getelementptr i16* %orgptr.2593, i64 64
  br label %for.body249

for.body249:                                      ; preds = %for.body249.for.body249_crit_edge, %for.cond246.preheader
  %orgptr.3589 = phi i16* [ %orgptr.2593, %for.cond246.preheader ], [ %incdec.ptr373, %for.body249.for.body249_crit_edge ]
  %y.1588 = phi i32 [ 1, %for.cond246.preheader ], [ %phitmp, %for.body249.for.body249_crit_edge ]
  %abs_y.1587 = phi i32 [ %abs_y.0592, %for.cond246.preheader ], [ %inc250, %for.body249.for.body249_crit_edge ]
  %LineSadBlk0.0586 = phi i32 [ 0, %for.cond246.preheader ], [ %add282, %for.body249.for.body249_crit_edge ]
  %LineSadBlk1.0585 = phi i32 [ 0, %for.cond246.preheader ], [ %add314, %for.body249.for.body249_crit_edge ]
  %LineSadBlk3.0584 = phi i32 [ 0, %for.cond246.preheader ], [ %add378, %for.body249.for.body249_crit_edge ]
  %LineSadBlk2.0583 = phi i32 [ 0, %for.cond246.preheader ], [ %add346, %for.body249.for.body249_crit_edge ]
  %80 = load i16* (i16*, i32, i32, i32, i32)** @PelYline_11, align 8, !tbaa !0
  %call = call i16* %80(i16* %ref_pic.0, i32 %abs_y.1587, i32 %add223, i32 %32, i32 %31) #7
  %incdec.ptr251 = getelementptr inbounds i16* %call, i64 1
  %81 = load i16* %call, align 2, !tbaa !4
  %conv252 = zext i16 %81 to i64
  %incdec.ptr253 = getelementptr inbounds i16* %orgptr.3589, i64 1
  %82 = load i16* %orgptr.3589, align 2, !tbaa !4
  %conv254 = zext i16 %82 to i64
  %sub255 = sub i64 %conv252, %conv254
  %83 = load i32** @byte_abs, align 8, !tbaa !0
  %arrayidx257 = getelementptr inbounds i32* %83, i64 %sub255
  %84 = load i32* %arrayidx257, align 4, !tbaa !3
  %add258 = add nsw i32 %84, %LineSadBlk0.0586
  %incdec.ptr259 = getelementptr inbounds i16* %call, i64 2
  %85 = load i16* %incdec.ptr251, align 2, !tbaa !4
  %conv260 = zext i16 %85 to i64
  %incdec.ptr261 = getelementptr inbounds i16* %orgptr.3589, i64 2
  %86 = load i16* %incdec.ptr253, align 2, !tbaa !4
  %conv262 = zext i16 %86 to i64
  %sub263 = sub i64 %conv260, %conv262
  %arrayidx265 = getelementptr inbounds i32* %83, i64 %sub263
  %87 = load i32* %arrayidx265, align 4, !tbaa !3
  %add266 = add nsw i32 %add258, %87
  %incdec.ptr267 = getelementptr inbounds i16* %call, i64 3
  %88 = load i16* %incdec.ptr259, align 2, !tbaa !4
  %conv268 = zext i16 %88 to i64
  %incdec.ptr269 = getelementptr inbounds i16* %orgptr.3589, i64 3
  %89 = load i16* %incdec.ptr261, align 2, !tbaa !4
  %conv270 = zext i16 %89 to i64
  %sub271 = sub i64 %conv268, %conv270
  %arrayidx273 = getelementptr inbounds i32* %83, i64 %sub271
  %90 = load i32* %arrayidx273, align 4, !tbaa !3
  %add274 = add nsw i32 %add266, %90
  %incdec.ptr275 = getelementptr inbounds i16* %call, i64 4
  %91 = load i16* %incdec.ptr267, align 2, !tbaa !4
  %conv276 = zext i16 %91 to i64
  %incdec.ptr277 = getelementptr inbounds i16* %orgptr.3589, i64 4
  %92 = load i16* %incdec.ptr269, align 2, !tbaa !4
  %conv278 = zext i16 %92 to i64
  %sub279 = sub i64 %conv276, %conv278
  %arrayidx281 = getelementptr inbounds i32* %83, i64 %sub279
  %93 = load i32* %arrayidx281, align 4, !tbaa !3
  %add282 = add nsw i32 %add274, %93
  %incdec.ptr283 = getelementptr inbounds i16* %call, i64 5
  %94 = load i16* %incdec.ptr275, align 2, !tbaa !4
  %conv284 = zext i16 %94 to i64
  %incdec.ptr285 = getelementptr inbounds i16* %orgptr.3589, i64 5
  %95 = load i16* %incdec.ptr277, align 2, !tbaa !4
  %conv286 = zext i16 %95 to i64
  %sub287 = sub i64 %conv284, %conv286
  %arrayidx289 = getelementptr inbounds i32* %83, i64 %sub287
  %96 = load i32* %arrayidx289, align 4, !tbaa !3
  %add290 = add nsw i32 %96, %LineSadBlk1.0585
  %incdec.ptr291 = getelementptr inbounds i16* %call, i64 6
  %97 = load i16* %incdec.ptr283, align 2, !tbaa !4
  %conv292 = zext i16 %97 to i64
  %incdec.ptr293 = getelementptr inbounds i16* %orgptr.3589, i64 6
  %98 = load i16* %incdec.ptr285, align 2, !tbaa !4
  %conv294 = zext i16 %98 to i64
  %sub295 = sub i64 %conv292, %conv294
  %arrayidx297 = getelementptr inbounds i32* %83, i64 %sub295
  %99 = load i32* %arrayidx297, align 4, !tbaa !3
  %add298 = add nsw i32 %add290, %99
  %incdec.ptr299 = getelementptr inbounds i16* %call, i64 7
  %100 = load i16* %incdec.ptr291, align 2, !tbaa !4
  %conv300 = zext i16 %100 to i64
  %incdec.ptr301 = getelementptr inbounds i16* %orgptr.3589, i64 7
  %101 = load i16* %incdec.ptr293, align 2, !tbaa !4
  %conv302 = zext i16 %101 to i64
  %sub303 = sub i64 %conv300, %conv302
  %arrayidx305 = getelementptr inbounds i32* %83, i64 %sub303
  %102 = load i32* %arrayidx305, align 4, !tbaa !3
  %add306 = add nsw i32 %add298, %102
  %incdec.ptr307 = getelementptr inbounds i16* %call, i64 8
  %103 = load i16* %incdec.ptr299, align 2, !tbaa !4
  %conv308 = zext i16 %103 to i64
  %incdec.ptr309 = getelementptr inbounds i16* %orgptr.3589, i64 8
  %104 = load i16* %incdec.ptr301, align 2, !tbaa !4
  %conv310 = zext i16 %104 to i64
  %sub311 = sub i64 %conv308, %conv310
  %arrayidx313 = getelementptr inbounds i32* %83, i64 %sub311
  %105 = load i32* %arrayidx313, align 4, !tbaa !3
  %add314 = add nsw i32 %add306, %105
  %incdec.ptr315 = getelementptr inbounds i16* %call, i64 9
  %106 = load i16* %incdec.ptr307, align 2, !tbaa !4
  %conv316 = zext i16 %106 to i64
  %incdec.ptr317 = getelementptr inbounds i16* %orgptr.3589, i64 9
  %107 = load i16* %incdec.ptr309, align 2, !tbaa !4
  %conv318 = zext i16 %107 to i64
  %sub319 = sub i64 %conv316, %conv318
  %arrayidx321 = getelementptr inbounds i32* %83, i64 %sub319
  %108 = load i32* %arrayidx321, align 4, !tbaa !3
  %add322 = add nsw i32 %108, %LineSadBlk2.0583
  %incdec.ptr323 = getelementptr inbounds i16* %call, i64 10
  %109 = load i16* %incdec.ptr315, align 2, !tbaa !4
  %conv324 = zext i16 %109 to i64
  %incdec.ptr325 = getelementptr inbounds i16* %orgptr.3589, i64 10
  %110 = load i16* %incdec.ptr317, align 2, !tbaa !4
  %conv326 = zext i16 %110 to i64
  %sub327 = sub i64 %conv324, %conv326
  %arrayidx329 = getelementptr inbounds i32* %83, i64 %sub327
  %111 = load i32* %arrayidx329, align 4, !tbaa !3
  %add330 = add nsw i32 %add322, %111
  %incdec.ptr331 = getelementptr inbounds i16* %call, i64 11
  %112 = load i16* %incdec.ptr323, align 2, !tbaa !4
  %conv332 = zext i16 %112 to i64
  %incdec.ptr333 = getelementptr inbounds i16* %orgptr.3589, i64 11
  %113 = load i16* %incdec.ptr325, align 2, !tbaa !4
  %conv334 = zext i16 %113 to i64
  %sub335 = sub i64 %conv332, %conv334
  %arrayidx337 = getelementptr inbounds i32* %83, i64 %sub335
  %114 = load i32* %arrayidx337, align 4, !tbaa !3
  %add338 = add nsw i32 %add330, %114
  %incdec.ptr339 = getelementptr inbounds i16* %call, i64 12
  %115 = load i16* %incdec.ptr331, align 2, !tbaa !4
  %conv340 = zext i16 %115 to i64
  %incdec.ptr341 = getelementptr inbounds i16* %orgptr.3589, i64 12
  %116 = load i16* %incdec.ptr333, align 2, !tbaa !4
  %conv342 = zext i16 %116 to i64
  %sub343 = sub i64 %conv340, %conv342
  %arrayidx345 = getelementptr inbounds i32* %83, i64 %sub343
  %117 = load i32* %arrayidx345, align 4, !tbaa !3
  %add346 = add nsw i32 %add338, %117
  %incdec.ptr347 = getelementptr inbounds i16* %call, i64 13
  %118 = load i16* %incdec.ptr339, align 2, !tbaa !4
  %conv348 = zext i16 %118 to i64
  %incdec.ptr349 = getelementptr inbounds i16* %orgptr.3589, i64 13
  %119 = load i16* %incdec.ptr341, align 2, !tbaa !4
  %conv350 = zext i16 %119 to i64
  %sub351 = sub i64 %conv348, %conv350
  %arrayidx353 = getelementptr inbounds i32* %83, i64 %sub351
  %120 = load i32* %arrayidx353, align 4, !tbaa !3
  %add354 = add nsw i32 %120, %LineSadBlk3.0584
  %incdec.ptr355 = getelementptr inbounds i16* %call, i64 14
  %121 = load i16* %incdec.ptr347, align 2, !tbaa !4
  %conv356 = zext i16 %121 to i64
  %incdec.ptr357 = getelementptr inbounds i16* %orgptr.3589, i64 14
  %122 = load i16* %incdec.ptr349, align 2, !tbaa !4
  %conv358 = zext i16 %122 to i64
  %sub359 = sub i64 %conv356, %conv358
  %arrayidx361 = getelementptr inbounds i32* %83, i64 %sub359
  %123 = load i32* %arrayidx361, align 4, !tbaa !3
  %add362 = add nsw i32 %add354, %123
  %incdec.ptr363 = getelementptr inbounds i16* %call, i64 15
  %124 = load i16* %incdec.ptr355, align 2, !tbaa !4
  %conv364 = zext i16 %124 to i64
  %incdec.ptr365 = getelementptr inbounds i16* %orgptr.3589, i64 15
  %125 = load i16* %incdec.ptr357, align 2, !tbaa !4
  %conv366 = zext i16 %125 to i64
  %sub367 = sub i64 %conv364, %conv366
  %arrayidx369 = getelementptr inbounds i32* %83, i64 %sub367
  %126 = load i32* %arrayidx369, align 4, !tbaa !3
  %add370 = add nsw i32 %add362, %126
  %127 = load i16* %incdec.ptr363, align 2, !tbaa !4
  %conv372 = zext i16 %127 to i64
  %128 = load i16* %incdec.ptr365, align 2, !tbaa !4
  %conv374 = zext i16 %128 to i64
  %sub375 = sub i64 %conv372, %conv374
  %arrayidx377 = getelementptr inbounds i32* %83, i64 %sub375
  %129 = load i32* %arrayidx377, align 4, !tbaa !3
  %add378 = add nsw i32 %add370, %129
  %exitcond = icmp eq i32 %y.1588, 4
  br i1 %exitcond, label %for.end381, label %for.body249.for.body249_crit_edge

for.body249.for.body249_crit_edge:                ; preds = %for.body249
  %incdec.ptr373 = getelementptr inbounds i16* %orgptr.3589, i64 16
  %inc250 = add nsw i32 %abs_y.1587, 1
  %phitmp = add i32 %y.1588, 1
  br label %for.body249

for.end381:                                       ; preds = %for.body249
  %130 = add i32 %abs_y.0592, 4
  %131 = or i64 %indvars.iv, 1
  %arrayidx385 = getelementptr inbounds i32** %4, i64 %indvars.iv
  %132 = load i32** %arrayidx385, align 8, !tbaa !0
  %arrayidx386 = getelementptr inbounds i32* %132, i64 %indvars.iv611
  store i32 %add282, i32* %arrayidx386, align 4, !tbaa !3
  %133 = or i64 %indvars.iv, 2
  %arrayidx390 = getelementptr inbounds i32** %4, i64 %131
  %134 = load i32** %arrayidx390, align 8, !tbaa !0
  %arrayidx391 = getelementptr inbounds i32* %134, i64 %indvars.iv611
  store i32 %add314, i32* %arrayidx391, align 4, !tbaa !3
  %135 = or i64 %indvars.iv, 3
  %arrayidx395 = getelementptr inbounds i32** %4, i64 %133
  %136 = load i32** %arrayidx395, align 8, !tbaa !0
  %arrayidx396 = getelementptr inbounds i32* %136, i64 %indvars.iv611
  store i32 %add346, i32* %arrayidx396, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 4
  %arrayidx400 = getelementptr inbounds i32** %4, i64 %135
  %137 = load i32** %arrayidx400, align 8, !tbaa !0
  %arrayidx401 = getelementptr inbounds i32* %137, i64 %indvars.iv611
  store i32 %add378, i32* %arrayidx401, align 4, !tbaa !3
  %inc403 = add nsw i32 %blky.0590, 1
  %exitcond610 = icmp eq i32 %inc403, 4
  br i1 %exitcond610, label %for.inc405, label %for.cond246.preheader

for.inc405:                                       ; preds = %for.end381
  %indvars.iv.next612 = add i64 %indvars.iv611, 1
  %138 = trunc i64 %indvars.iv.next612 to i32
  %cmp215 = icmp slt i32 %138, %mul10
  br i1 %cmp215, label %for.body217, label %for.end407

for.end407:                                       ; preds = %for.inc405
  %conv408 = sext i16 %ref to i32
  call void @SetupLargerBlocks(i32 %list, i32 %conv408, i32 %mul10) #8
  %139 = load i32*** @search_setup_done, align 8, !tbaa !0
  %arrayidx411 = getelementptr inbounds i32** %139, i64 %idxprom1
  %140 = load i32** %arrayidx411, align 8, !tbaa !0
  %arrayidx412 = getelementptr inbounds i32* %140, i64 %idxprom
  store i32 1, i32* %arrayidx412, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 512, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @SetMotionVectorPredictor(i16* nocapture %pmv, i16*** nocapture %refPic, i16**** nocapture %tmp_mv, i16 signext %ref_frame, i32 %list, i32 %block_x, i32 %block_y, i32 %blockshape_x, i32 %blockshape_y) #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  %block_c = alloca %struct.pix_pos, align 4
  %block_d = alloca %struct.pix_pos, align 4
  %temp_pred_SAD = alloca [2 x i32], align 4
  %mul = shl nsw i32 %block_x, 2
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %1 = load i32* %current_mb_nr, align 4, !tbaa !3
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %FMEnable = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 134
  %3 = load i32* %FMEnable, align 4, !tbaa !3
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* @pred_SAD_space, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  call void @getLuma4x4Neighbour(i32 %1, i32 %block_x, i32 %block_y, i32 -1, i32 0, %struct.pix_pos* %block_a) #7
  call void @getLuma4x4Neighbour(i32 %1, i32 %block_x, i32 %block_y, i32 0, i32 -1, %struct.pix_pos* %block_b) #7
  call void @getLuma4x4Neighbour(i32 %1, i32 %block_x, i32 %block_y, i32 %blockshape_x, i32 -1, %struct.pix_pos* %block_c) #7
  call void @getLuma4x4Neighbour(i32 %1, i32 %block_x, i32 %block_y, i32 -1, i32 -1, %struct.pix_pos* %block_d) #7
  %cmp = icmp sgt i32 %block_y, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  %available31.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 0
  %.pre = load i32* %available31.phi.trans.insert, align 4, !tbaa !3
  br label %if.end30

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp slt i32 %mul, 8
  br i1 %cmp3, label %if.then4, label %if.else20

if.then4:                                         ; preds = %if.then2
  %mul1.mask = and i32 %block_y, 1073741823
  %cmp5 = icmp eq i32 %mul1.mask, 2
  br i1 %cmp5, label %if.then6, label %if.else11

if.then6:                                         ; preds = %if.then4
  %cmp7 = icmp eq i32 %blockshape_x, 16
  %available = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %available, align 4, !tbaa !3
  br label %if.end30.thread

if.else:                                          ; preds = %if.then6
  %4 = load i32* %available, align 4, !tbaa !3
  %and = and i32 %4, 1
  store i32 %and, i32* %available, align 4, !tbaa !3
  br label %if.end30

if.else11:                                        ; preds = %if.then4
  %add = add nsw i32 %mul, %blockshape_x
  %cmp12 = icmp eq i32 %add, 8
  %available14 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 0
  br i1 %cmp12, label %if.else16, label %if.then13

if.then13:                                        ; preds = %if.else11
  %5 = load i32* %available14, align 4, !tbaa !3
  %and15 = and i32 %5, 1
  store i32 %and15, i32* %available14, align 4, !tbaa !3
  br label %if.end30

if.else16:                                        ; preds = %if.else11
  store i32 0, i32* %available14, align 4, !tbaa !3
  br label %if.end30.thread

if.else20:                                        ; preds = %if.then2
  %add21 = add nsw i32 %mul, %blockshape_x
  %cmp22 = icmp eq i32 %add21, 16
  %available24 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 0
  br i1 %cmp22, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.else20
  %6 = load i32* %available24, align 4, !tbaa !3
  %and25 = and i32 %6, 1
  store i32 %and25, i32* %available24, align 4, !tbaa !3
  br label %if.end30

if.else26:                                        ; preds = %if.else20
  store i32 0, i32* %available24, align 4, !tbaa !3
  br label %if.end30.thread

if.end30.thread:                                  ; preds = %if.else16, %if.then8, %if.else26
  %available311088 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 0
  br label %if.then33

if.end30:                                         ; preds = %if.end.if.end30_crit_edge, %if.then13, %if.else, %if.then23
  %7 = phi i32 [ %.pre, %if.end.if.end30_crit_edge ], [ %and15, %if.then13 ], [ %and, %if.else ], [ %and25, %if.then23 ]
  %available31 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 0
  %tobool32 = icmp eq i32 %7, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30.thread, %if.end30
  %available311091 = phi i32* [ %available311088, %if.end30.thread ], [ %available31, %if.end30 ]
  %8 = bitcast %struct.pix_pos* %block_c to i8*
  %9 = bitcast %struct.pix_pos* %block_d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 4, i1 false), !tbaa.struct !5
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %if.then33
  %available311090 = phi i32* [ %available31, %if.end30 ], [ %available311091, %if.then33 ]
  %10 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 90
  %11 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool35 = icmp eq i32 %11, 0
  br i1 %tobool35, label %if.then36, label %if.else73

if.then36:                                        ; preds = %if.end34
  %available37 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0
  %12 = load i32* %available37, align 4, !tbaa !3
  %tobool38 = icmp eq i32 %12, 0
  br i1 %tobool38, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then36
  %pos_y = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 5
  %13 = load i32* %pos_y, align 4, !tbaa !3
  %idxprom = sext i32 %13 to i64
  %pos_x = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 4
  %14 = load i32* %pos_x, align 4, !tbaa !3
  %idxprom39 = sext i32 %14 to i64
  %idxprom40 = sext i32 %list to i64
  %arrayidx = getelementptr inbounds i16*** %refPic, i64 %idxprom40
  %15 = load i16*** %arrayidx, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i16** %15, i64 %idxprom39
  %16 = load i16** %arrayidx41, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds i16* %16, i64 %idxprom
  %17 = load i16* %arrayidx42, align 2, !tbaa !4
  %conv = sext i16 %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %if.then36, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %if.then36 ]
  %available43 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0
  %18 = load i32* %available43, align 4, !tbaa !3
  %tobool44 = icmp eq i32 %18, 0
  br i1 %tobool44, label %cond.end56, label %cond.true45

cond.true45:                                      ; preds = %cond.end
  %pos_y46 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 5
  %19 = load i32* %pos_y46, align 4, !tbaa !3
  %idxprom47 = sext i32 %19 to i64
  %pos_x48 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 4
  %20 = load i32* %pos_x48, align 4, !tbaa !3
  %idxprom49 = sext i32 %20 to i64
  %idxprom50 = sext i32 %list to i64
  %arrayidx51 = getelementptr inbounds i16*** %refPic, i64 %idxprom50
  %21 = load i16*** %arrayidx51, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds i16** %21, i64 %idxprom49
  %22 = load i16** %arrayidx52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i16* %22, i64 %idxprom47
  %23 = load i16* %arrayidx53, align 2, !tbaa !4
  %conv54 = sext i16 %23 to i32
  br label %cond.end56

cond.end56:                                       ; preds = %cond.end, %cond.true45
  %cond57 = phi i32 [ %conv54, %cond.true45 ], [ -1, %cond.end ]
  %24 = load i32* %available311090, align 4, !tbaa !3
  %tobool59 = icmp eq i32 %24, 0
  br i1 %tobool59, label %if.end289, label %cond.true60

cond.true60:                                      ; preds = %cond.end56
  %pos_y61 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 5
  %25 = load i32* %pos_y61, align 4, !tbaa !3
  %idxprom62 = sext i32 %25 to i64
  %pos_x63 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 4
  %26 = load i32* %pos_x63, align 4, !tbaa !3
  %idxprom64 = sext i32 %26 to i64
  %idxprom65 = sext i32 %list to i64
  %arrayidx66 = getelementptr inbounds i16*** %refPic, i64 %idxprom65
  %27 = load i16*** %arrayidx66, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds i16** %27, i64 %idxprom64
  %28 = load i16** %arrayidx67, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds i16* %28, i64 %idxprom62
  %29 = load i16* %arrayidx68, align 2, !tbaa !4
  %conv69 = sext i16 %29 to i32
  br label %if.end289

if.else73:                                        ; preds = %if.end34
  %current_mb_nr74 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 3
  %30 = load i32* %current_mb_nr74, align 4, !tbaa !3
  %idxprom75 = sext i32 %30 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 51
  %31 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %31, i64 %idxprom75, i32 22
  %32 = load i32* %mb_field, align 4, !tbaa !3
  %tobool77 = icmp eq i32 %32, 0
  %available79 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0
  %33 = load i32* %available79, align 4, !tbaa !3
  %tobool80 = icmp ne i32 %33, 0
  br i1 %tobool77, label %if.else183, label %if.then78

if.then78:                                        ; preds = %if.else73
  br i1 %tobool80, label %cond.true81, label %cond.end111

cond.true81:                                      ; preds = %if.then78
  %mb_addr = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1
  %34 = load i32* %mb_addr, align 4, !tbaa !3
  %idxprom82 = sext i32 %34 to i64
  %mb_field85 = getelementptr inbounds %struct.macroblock* %31, i64 %idxprom82, i32 22
  %35 = load i32* %mb_field85, align 4, !tbaa !3
  %tobool86 = icmp eq i32 %35, 0
  %pos_y88 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 5
  %36 = load i32* %pos_y88, align 4, !tbaa !3
  %idxprom89 = sext i32 %36 to i64
  %pos_x90 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 4
  %37 = load i32* %pos_x90, align 4, !tbaa !3
  %idxprom91 = sext i32 %37 to i64
  %idxprom92 = sext i32 %list to i64
  %arrayidx93 = getelementptr inbounds i16*** %refPic, i64 %idxprom92
  %38 = load i16*** %arrayidx93, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds i16** %38, i64 %idxprom91
  %39 = load i16** %arrayidx94, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds i16* %39, i64 %idxprom89
  %40 = load i16* %arrayidx95, align 2, !tbaa !4
  %conv96 = sext i16 %40 to i32
  %mul107 = zext i1 %tobool86 to i32
  %mul107.conv96 = shl nsw i32 %conv96, %mul107
  br label %cond.end111

cond.end111:                                      ; preds = %cond.true81, %if.then78
  %cond112 = phi i32 [ -1, %if.then78 ], [ %mul107.conv96, %cond.true81 ]
  %available113 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0
  %41 = load i32* %available113, align 4, !tbaa !3
  %tobool114 = icmp eq i32 %41, 0
  br i1 %tobool114, label %cond.end146, label %cond.true115

cond.true115:                                     ; preds = %cond.end111
  %mb_addr116 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1
  %42 = load i32* %mb_addr116, align 4, !tbaa !3
  %idxprom117 = sext i32 %42 to i64
  %mb_field120 = getelementptr inbounds %struct.macroblock* %31, i64 %idxprom117, i32 22
  %43 = load i32* %mb_field120, align 4, !tbaa !3
  %tobool121 = icmp eq i32 %43, 0
  %pos_y123 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 5
  %44 = load i32* %pos_y123, align 4, !tbaa !3
  %idxprom124 = sext i32 %44 to i64
  %pos_x125 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 4
  %45 = load i32* %pos_x125, align 4, !tbaa !3
  %idxprom126 = sext i32 %45 to i64
  %idxprom127 = sext i32 %list to i64
  %arrayidx128 = getelementptr inbounds i16*** %refPic, i64 %idxprom127
  %46 = load i16*** %arrayidx128, align 8, !tbaa !0
  %arrayidx129 = getelementptr inbounds i16** %46, i64 %idxprom126
  %47 = load i16** %arrayidx129, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i16* %47, i64 %idxprom124
  %48 = load i16* %arrayidx130, align 2, !tbaa !4
  %conv131 = sext i16 %48 to i32
  %mul142 = zext i1 %tobool121 to i32
  %mul142.conv131 = shl nsw i32 %conv131, %mul142
  br label %cond.end146

cond.end146:                                      ; preds = %cond.end111, %cond.true115
  %cond147 = phi i32 [ %mul142.conv131, %cond.true115 ], [ -1, %cond.end111 ]
  %49 = load i32* %available311090, align 4, !tbaa !3
  %tobool149 = icmp eq i32 %49, 0
  br i1 %tobool149, label %if.end289, label %cond.true150

cond.true150:                                     ; preds = %cond.end146
  %mb_addr151 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 1
  %50 = load i32* %mb_addr151, align 4, !tbaa !3
  %idxprom152 = sext i32 %50 to i64
  %mb_field155 = getelementptr inbounds %struct.macroblock* %31, i64 %idxprom152, i32 22
  %51 = load i32* %mb_field155, align 4, !tbaa !3
  %tobool156 = icmp eq i32 %51, 0
  %pos_y158 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 5
  %52 = load i32* %pos_y158, align 4, !tbaa !3
  %idxprom159 = sext i32 %52 to i64
  %pos_x160 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 4
  %53 = load i32* %pos_x160, align 4, !tbaa !3
  %idxprom161 = sext i32 %53 to i64
  %idxprom162 = sext i32 %list to i64
  %arrayidx163 = getelementptr inbounds i16*** %refPic, i64 %idxprom162
  %54 = load i16*** %arrayidx163, align 8, !tbaa !0
  %arrayidx164 = getelementptr inbounds i16** %54, i64 %idxprom161
  %55 = load i16** %arrayidx164, align 8, !tbaa !0
  %arrayidx165 = getelementptr inbounds i16* %55, i64 %idxprom159
  %56 = load i16* %arrayidx165, align 2, !tbaa !4
  %conv166 = sext i16 %56 to i32
  %mul177 = zext i1 %tobool156 to i32
  %mul177.conv166 = shl nsw i32 %conv166, %mul177
  br label %if.end289

if.else183:                                       ; preds = %if.else73
  br i1 %tobool80, label %cond.true186, label %cond.end216

cond.true186:                                     ; preds = %if.else183
  %mb_addr187 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1
  %57 = load i32* %mb_addr187, align 4, !tbaa !3
  %idxprom188 = sext i32 %57 to i64
  %mb_field191 = getelementptr inbounds %struct.macroblock* %31, i64 %idxprom188, i32 22
  %58 = load i32* %mb_field191, align 4, !tbaa !3
  %tobool192 = icmp ne i32 %58, 0
  %pos_y194 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 5
  %59 = load i32* %pos_y194, align 4, !tbaa !3
  %idxprom195 = sext i32 %59 to i64
  %pos_x196 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 4
  %60 = load i32* %pos_x196, align 4, !tbaa !3
  %idxprom197 = sext i32 %60 to i64
  %idxprom198 = sext i32 %list to i64
  %arrayidx199 = getelementptr inbounds i16*** %refPic, i64 %idxprom198
  %61 = load i16*** %arrayidx199, align 8, !tbaa !0
  %arrayidx200 = getelementptr inbounds i16** %61, i64 %idxprom197
  %62 = load i16** %arrayidx200, align 8, !tbaa !0
  %arrayidx201 = getelementptr inbounds i16* %62, i64 %idxprom195
  %63 = load i16* %arrayidx201, align 2, !tbaa !4
  %conv202 = sext i16 %63 to i32
  %shr = zext i1 %tobool192 to i32
  %cond214 = ashr i32 %conv202, %shr
  br label %cond.end216

cond.end216:                                      ; preds = %if.else183, %cond.true186
  %cond217 = phi i32 [ %cond214, %cond.true186 ], [ -1, %if.else183 ]
  %available218 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0
  %64 = load i32* %available218, align 4, !tbaa !3
  %tobool219 = icmp eq i32 %64, 0
  br i1 %tobool219, label %cond.end251, label %cond.true220

cond.true220:                                     ; preds = %cond.end216
  %mb_addr221 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1
  %65 = load i32* %mb_addr221, align 4, !tbaa !3
  %idxprom222 = sext i32 %65 to i64
  %mb_field225 = getelementptr inbounds %struct.macroblock* %31, i64 %idxprom222, i32 22
  %66 = load i32* %mb_field225, align 4, !tbaa !3
  %tobool226 = icmp ne i32 %66, 0
  %pos_y228 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 5
  %67 = load i32* %pos_y228, align 4, !tbaa !3
  %idxprom229 = sext i32 %67 to i64
  %pos_x230 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 4
  %68 = load i32* %pos_x230, align 4, !tbaa !3
  %idxprom231 = sext i32 %68 to i64
  %idxprom232 = sext i32 %list to i64
  %arrayidx233 = getelementptr inbounds i16*** %refPic, i64 %idxprom232
  %69 = load i16*** %arrayidx233, align 8, !tbaa !0
  %arrayidx234 = getelementptr inbounds i16** %69, i64 %idxprom231
  %70 = load i16** %arrayidx234, align 8, !tbaa !0
  %arrayidx235 = getelementptr inbounds i16* %70, i64 %idxprom229
  %71 = load i16* %arrayidx235, align 2, !tbaa !4
  %conv236 = sext i16 %71 to i32
  %shr237 = zext i1 %tobool226 to i32
  %cond249 = ashr i32 %conv236, %shr237
  br label %cond.end251

cond.end251:                                      ; preds = %cond.end216, %cond.true220
  %cond252 = phi i32 [ %cond249, %cond.true220 ], [ -1, %cond.end216 ]
  %72 = load i32* %available311090, align 4, !tbaa !3
  %tobool254 = icmp eq i32 %72, 0
  br i1 %tobool254, label %if.end289, label %cond.true255

cond.true255:                                     ; preds = %cond.end251
  %mb_addr256 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 1
  %73 = load i32* %mb_addr256, align 4, !tbaa !3
  %idxprom257 = sext i32 %73 to i64
  %mb_field260 = getelementptr inbounds %struct.macroblock* %31, i64 %idxprom257, i32 22
  %74 = load i32* %mb_field260, align 4, !tbaa !3
  %tobool261 = icmp ne i32 %74, 0
  %pos_y263 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 5
  %75 = load i32* %pos_y263, align 4, !tbaa !3
  %idxprom264 = sext i32 %75 to i64
  %pos_x265 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 4
  %76 = load i32* %pos_x265, align 4, !tbaa !3
  %idxprom266 = sext i32 %76 to i64
  %idxprom267 = sext i32 %list to i64
  %arrayidx268 = getelementptr inbounds i16*** %refPic, i64 %idxprom267
  %77 = load i16*** %arrayidx268, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds i16** %77, i64 %idxprom266
  %78 = load i16** %arrayidx269, align 8, !tbaa !0
  %arrayidx270 = getelementptr inbounds i16* %78, i64 %idxprom264
  %79 = load i16* %arrayidx270, align 2, !tbaa !4
  %conv271 = sext i16 %79 to i32
  %shr272 = zext i1 %tobool261 to i32
  %cond284 = ashr i32 %conv271, %shr272
  br label %if.end289

if.end289:                                        ; preds = %cond.true150, %cond.true255, %cond.end251, %cond.end146, %cond.true60, %cond.end56
  %80 = phi i32 [ 0, %cond.end56 ], [ %24, %cond.true60 ], [ %49, %cond.true150 ], [ 0, %cond.end146 ], [ 0, %cond.end251 ], [ %72, %cond.true255 ]
  %81 = phi i32 [ %18, %cond.end56 ], [ %18, %cond.true60 ], [ %41, %cond.true150 ], [ %41, %cond.end146 ], [ %64, %cond.end251 ], [ %64, %cond.true255 ]
  %82 = phi i32 [ %12, %cond.end56 ], [ %12, %cond.true60 ], [ %33, %cond.true150 ], [ %33, %cond.end146 ], [ %33, %cond.end251 ], [ %33, %cond.true255 ]
  %rFrameL.0 = phi i32 [ %cond, %cond.end56 ], [ %cond, %cond.true60 ], [ %cond112, %cond.true150 ], [ %cond112, %cond.end146 ], [ %cond217, %cond.end251 ], [ %cond217, %cond.true255 ]
  %rFrameU.0 = phi i32 [ %cond57, %cond.end56 ], [ %cond57, %cond.true60 ], [ %cond147, %cond.true150 ], [ %cond147, %cond.end146 ], [ %cond252, %cond.end251 ], [ %cond252, %cond.true255 ]
  %rFrameUR.0 = phi i32 [ -1, %cond.end56 ], [ %conv69, %cond.true60 ], [ %mul177.conv166, %cond.true150 ], [ -1, %cond.end146 ], [ -1, %cond.end251 ], [ %cond284, %cond.true255 ]
  %conv290 = sext i16 %ref_frame to i32
  %cmp291 = icmp eq i32 %rFrameL.0, %conv290
  %cmp291.not = xor i1 %cmp291, true
  %cmp294 = icmp eq i32 %rFrameU.0, %conv290
  %or.cond = or i1 %cmp294, %cmp291.not
  %cmp298 = icmp eq i32 %rFrameUR.0, %conv290
  %or.cond1068 = or i1 %or.cond, %cmp298
  br i1 %or.cond1068, label %if.else301, label %if.end329

if.else301:                                       ; preds = %if.end289
  %cmp303 = icmp ne i32 %rFrameL.0, %conv290
  %or.cond1069 = and i1 %cmp303, %cmp294
  %cmp298.not = xor i1 %cmp298, true
  %or.cond1070.not = and i1 %or.cond1069, %cmp298.not
  %cmp303.not = xor i1 %cmp303, true
  %brmerge = or i1 %or.cond1070.not, %cmp303.not
  %.mux = select i1 %or.cond1070.not, i32 2, i32 0
  br i1 %brmerge, label %if.end329, label %land.lhs.true318

land.lhs.true318:                                 ; preds = %if.else301
  %cmp320 = icmp ne i32 %rFrameU.0, %conv290
  %or.cond1071 = and i1 %cmp320, %cmp298
  %.1080 = select i1 %or.cond1071, i32 3, i32 0
  br label %if.end329

if.end329:                                        ; preds = %land.lhs.true318, %if.else301, %if.end289
  %mvPredType.0 = phi i32 [ 1, %if.end289 ], [ %.mux, %if.else301 ], [ %.1080, %land.lhs.true318 ]
  %cmp330 = icmp eq i32 %blockshape_x, 8
  %cmp333 = icmp eq i32 %blockshape_y, 16
  %or.cond1072 = and i1 %cmp330, %cmp333
  br i1 %or.cond1072, label %if.then335, label %if.else351

if.then335:                                       ; preds = %if.end329
  %cmp336 = icmp eq i32 %block_x, 0
  br i1 %cmp336, label %if.then338, label %if.else344

if.then338:                                       ; preds = %if.then335
  %.mvPredType.0 = select i1 %cmp291, i32 1, i32 %mvPredType.0
  br label %if.end374

if.else344:                                       ; preds = %if.then335
  %.mvPredType.01073 = select i1 %cmp298, i32 3, i32 %mvPredType.0
  br label %if.end374

if.else351:                                       ; preds = %if.end329
  %cmp352 = icmp eq i32 %blockshape_x, 16
  %cmp355 = icmp eq i32 %blockshape_y, 8
  %or.cond1074 = and i1 %cmp352, %cmp355
  br i1 %or.cond1074, label %if.then357, label %if.end374

if.then357:                                       ; preds = %if.else351
  %cmp358 = icmp eq i32 %block_y, 0
  br i1 %cmp358, label %if.then360, label %if.else366

if.then360:                                       ; preds = %if.then357
  %.mvPredType.01075 = select i1 %cmp294, i32 2, i32 %mvPredType.0
  br label %if.end374

if.else366:                                       ; preds = %if.then357
  %.mvPredType.01076 = select i1 %cmp291, i32 1, i32 %mvPredType.0
  br label %if.end374

if.end374:                                        ; preds = %if.else351, %if.else366, %if.then360, %if.else344, %if.then338
  %mvPredType.1 = phi i32 [ %.mvPredType.0, %if.then338 ], [ %.mvPredType.01073, %if.else344 ], [ %.mvPredType.01075, %if.then360 ], [ %.mvPredType.01076, %if.else366 ], [ %mvPredType.0, %if.else351 ]
  %tobool383 = icmp eq i32 %82, 0
  %tobool400 = icmp eq i32 %81, 0
  %tobool417 = icmp eq i32 %80, 0
  %pos_y420 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 5
  %83 = load i32* %pos_y420, align 4, !tbaa !3
  %idxprom421 = sext i32 %83 to i64
  %pos_x422 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 4
  %84 = load i32* %pos_x422, align 4, !tbaa !3
  %idxprom423 = sext i32 %84 to i64
  %idxprom424 = sext i32 %list to i64
  %arrayidx425 = getelementptr inbounds i16**** %tmp_mv, i64 %idxprom424
  %pos_y403 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 5
  %85 = load i32* %pos_y403, align 4, !tbaa !3
  %idxprom404 = sext i32 %85 to i64
  %pos_x405 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 4
  %86 = load i32* %pos_x405, align 4, !tbaa !3
  %idxprom406 = sext i32 %86 to i64
  %pos_y386 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 5
  %87 = load i32* %pos_y386, align 4, !tbaa !3
  %idxprom387 = sext i32 %87 to i64
  %pos_x388 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 4
  %88 = load i32* %pos_x388, align 4, !tbaa !3
  %idxprom389 = sext i32 %88 to i64
  %89 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %FMEnable677 = getelementptr inbounds %struct.InputParameters* %89, i64 0, i32 134
  %90 = load i32* %FMEnable677, align 4, !tbaa !3
  %tobool678 = icmp eq i32 %90, 0
  %available746 = getelementptr inbounds %struct.pix_pos* %block_d, i64 0, i32 0
  %91 = load i32* %available746, align 4, !tbaa !3
  %tobool747 = icmp eq i32 %91, 0
  %cmp782 = icmp eq i32 %list, 1
  %92 = load i32* @FME_blocktype, align 4, !tbaa !3
  %idxprom785 = sext i32 %92 to i64
  %93 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx790 = getelementptr inbounds i32***** %93, i64 %idxprom423
  %idxprom797 = sext i16 %ref_frame to i64
  %94 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx802 = getelementptr inbounds i32***** %94, i64 %idxprom423
  %pos_y753 = getelementptr inbounds %struct.pix_pos* %block_d, i64 0, i32 5
  %95 = load i32* %pos_y753, align 4, !tbaa !3
  %idxprom754 = sext i32 %95 to i64
  %pos_x755 = getelementptr inbounds %struct.pix_pos* %block_d, i64 0, i32 4
  %96 = load i32* %pos_x755, align 4, !tbaa !3
  %idxprom756 = sext i32 %96 to i64
  %arrayidx757 = getelementptr inbounds i32***** %93, i64 %idxprom756
  %arrayidx769 = getelementptr inbounds i32***** %94, i64 %idxprom756
  %arrayidx724 = getelementptr inbounds i32***** %93, i64 %idxprom406
  %arrayidx736 = getelementptr inbounds i32***** %94, i64 %idxprom406
  %arrayidx691 = getelementptr inbounds i32***** %93, i64 %idxprom389
  %arrayidx703 = getelementptr inbounds i32***** %94, i64 %idxprom389
  %current_mb_nr434 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 3
  %mb_data436 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 51
  %tobool442 = icmp ne i32 %82, 0
  %mb_addr561 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1
  %97 = load i32* %mb_addr561, align 4, !tbaa !3
  %idxprom562 = sext i32 %97 to i64
  %mb_addr639 = getelementptr inbounds %struct.pix_pos* %block_c, i64 0, i32 1
  %98 = load i32* %mb_addr639, align 4, !tbaa !3
  %idxprom640 = sext i32 %98 to i64
  %mb_addr600 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1
  %99 = load i32* %mb_addr600, align 4, !tbaa !3
  %idxprom601 = sext i32 %99 to i64
  br label %for.body

for.body:                                         ; preds = %sw.epilog, %if.end374
  %100 = phi i32 [ %90, %if.end374 ], [ %191, %sw.epilog ]
  %101 = phi i32 [ %90, %if.end374 ], [ %192, %sw.epilog ]
  %102 = phi i32 [ %90, %if.end374 ], [ %193, %sw.epilog ]
  %103 = phi i32 [ %90, %if.end374 ], [ %194, %sw.epilog ]
  %indvars.iv = phi i64 [ 0, %if.end374 ], [ %indvars.iv.next, %sw.epilog ]
  %SAD_c.01087 = phi i32 [ 0, %if.end374 ], [ %SAD_c.1, %sw.epilog ]
  %SAD_b.01086 = phi i32 [ 0, %if.end374 ], [ %SAD_b.1, %sw.epilog ]
  %SAD_a.01085 = phi i32 [ 0, %if.end374 ], [ %SAD_a.1, %sw.epilog ]
  %pred_vec.01081 = phi i32 [ 0, %if.end374 ], [ %pred_vec.2, %sw.epilog ]
  %104 = trunc i64 %indvars.iv to i32
  %cmp379 = icmp eq i32 %104, 0
  %or.cond1077 = or i1 %tobool35, %cmp379
  br i1 %or.cond1077, label %if.then381, label %if.else433

if.then381:                                       ; preds = %for.body
  br i1 %tobool383, label %cond.end397, label %cond.true384

cond.true384:                                     ; preds = %if.then381
  %105 = load i16**** %arrayidx425, align 8, !tbaa !0
  %arrayidx392 = getelementptr inbounds i16*** %105, i64 %idxprom389
  %106 = load i16*** %arrayidx392, align 8, !tbaa !0
  %arrayidx393 = getelementptr inbounds i16** %106, i64 %idxprom387
  %107 = load i16** %arrayidx393, align 8, !tbaa !0
  %arrayidx394 = getelementptr inbounds i16* %107, i64 %indvars.iv
  %108 = load i16* %arrayidx394, align 2, !tbaa !4
  %conv395 = sext i16 %108 to i32
  br label %cond.end397

cond.end397:                                      ; preds = %if.then381, %cond.true384
  %cond398 = phi i32 [ %conv395, %cond.true384 ], [ 0, %if.then381 ]
  br i1 %tobool400, label %cond.end414, label %cond.true401

cond.true401:                                     ; preds = %cond.end397
  %109 = load i16**** %arrayidx425, align 8, !tbaa !0
  %arrayidx409 = getelementptr inbounds i16*** %109, i64 %idxprom406
  %110 = load i16*** %arrayidx409, align 8, !tbaa !0
  %arrayidx410 = getelementptr inbounds i16** %110, i64 %idxprom404
  %111 = load i16** %arrayidx410, align 8, !tbaa !0
  %arrayidx411 = getelementptr inbounds i16* %111, i64 %indvars.iv
  %112 = load i16* %arrayidx411, align 2, !tbaa !4
  %conv412 = sext i16 %112 to i32
  br label %cond.end414

cond.end414:                                      ; preds = %cond.end397, %cond.true401
  %cond415 = phi i32 [ %conv412, %cond.true401 ], [ 0, %cond.end397 ]
  br i1 %tobool417, label %if.end676, label %cond.true418

cond.true418:                                     ; preds = %cond.end414
  %113 = load i16**** %arrayidx425, align 8, !tbaa !0
  %arrayidx426 = getelementptr inbounds i16*** %113, i64 %idxprom423
  %114 = load i16*** %arrayidx426, align 8, !tbaa !0
  %arrayidx427 = getelementptr inbounds i16** %114, i64 %idxprom421
  %115 = load i16** %arrayidx427, align 8, !tbaa !0
  %arrayidx428 = getelementptr inbounds i16* %115, i64 %indvars.iv
  %116 = load i16* %arrayidx428, align 2, !tbaa !4
  %conv429 = sext i16 %116 to i32
  br label %if.end676

if.else433:                                       ; preds = %for.body
  %117 = load i32* %current_mb_nr434, align 4, !tbaa !3
  %idxprom435 = sext i32 %117 to i64
  %118 = load %struct.macroblock** %mb_data436, align 8, !tbaa !0
  %mb_field438 = getelementptr inbounds %struct.macroblock* %118, i64 %idxprom435, i32 22
  %119 = load i32* %mb_field438, align 4, !tbaa !3
  %tobool439 = icmp eq i32 %119, 0
  br i1 %tobool439, label %if.else557, label %if.then440

if.then440:                                       ; preds = %if.else433
  br i1 %tobool442, label %cond.true443, label %cond.end477

cond.true443:                                     ; preds = %if.then440
  %mb_field448 = getelementptr inbounds %struct.macroblock* %118, i64 %idxprom562, i32 22
  %120 = load i32* %mb_field448, align 4, !tbaa !3
  %tobool449 = icmp eq i32 %120, 0
  %121 = load i16**** %arrayidx425, align 8, !tbaa !0
  %arrayidx458 = getelementptr inbounds i16*** %121, i64 %idxprom389
  %122 = load i16*** %arrayidx458, align 8, !tbaa !0
  %arrayidx459 = getelementptr inbounds i16** %122, i64 %idxprom387
  %123 = load i16** %arrayidx459, align 8, !tbaa !0
  %arrayidx460 = getelementptr inbounds i16* %123, i64 %indvars.iv
  %124 = load i16* %arrayidx460, align 2, !tbaa !4
  %conv461 = sext i16 %124 to i32
  br i1 %tobool449, label %cond.false462, label %cond.end477

cond.false462:                                    ; preds = %cond.true443
  %div = sdiv i32 %conv461, 2
  br label %cond.end477

cond.end477:                                      ; preds = %cond.true443, %if.then440, %cond.false462
  %cond478 = phi i32 [ %div, %cond.false462 ], [ %conv461, %cond.true443 ], [ 0, %if.then440 ]
  br i1 %tobool400, label %cond.end516, label %cond.true481

cond.true481:                                     ; preds = %cond.end477
  %mb_field486 = getelementptr inbounds %struct.macroblock* %118, i64 %idxprom601, i32 22
  %125 = load i32* %mb_field486, align 4, !tbaa !3
  %tobool487 = icmp eq i32 %125, 0
  %126 = load i16**** %arrayidx425, align 8, !tbaa !0
  %arrayidx496 = getelementptr inbounds i16*** %126, i64 %idxprom406
  %127 = load i16*** %arrayidx496, align 8, !tbaa !0
  %arrayidx497 = getelementptr inbounds i16** %127, i64 %idxprom404
  %128 = load i16** %arrayidx497, align 8, !tbaa !0
  %arrayidx498 = getelementptr inbounds i16* %128, i64 %indvars.iv
  %129 = load i16* %arrayidx498, align 2, !tbaa !4
  %conv499 = sext i16 %129 to i32
  br i1 %tobool487, label %cond.false500, label %cond.end516

cond.false500:                                    ; preds = %cond.true481
  %div512 = sdiv i32 %conv499, 2
  br label %cond.end516

cond.end516:                                      ; preds = %cond.true481, %cond.end477, %cond.false500
  %cond517 = phi i32 [ %div512, %cond.false500 ], [ %conv499, %cond.true481 ], [ 0, %cond.end477 ]
  br i1 %tobool417, label %if.end676, label %cond.true520

cond.true520:                                     ; preds = %cond.end516
  %mb_field525 = getelementptr inbounds %struct.macroblock* %118, i64 %idxprom640, i32 22
  %130 = load i32* %mb_field525, align 4, !tbaa !3
  %tobool526 = icmp eq i32 %130, 0
  %131 = load i16**** %arrayidx425, align 8, !tbaa !0
  %arrayidx535 = getelementptr inbounds i16*** %131, i64 %idxprom423
  %132 = load i16*** %arrayidx535, align 8, !tbaa !0
  %arrayidx536 = getelementptr inbounds i16** %132, i64 %idxprom421
  %133 = load i16** %arrayidx536, align 8, !tbaa !0
  %arrayidx537 = getelementptr inbounds i16* %133, i64 %indvars.iv
  %134 = load i16* %arrayidx537, align 2, !tbaa !4
  %conv538 = sext i16 %134 to i32
  br i1 %tobool526, label %cond.false539, label %if.end676

cond.false539:                                    ; preds = %cond.true520
  %div551 = sdiv i32 %conv538, 2
  br label %if.end676

if.else557:                                       ; preds = %if.else433
  br i1 %tobool442, label %cond.true560, label %cond.end595

cond.true560:                                     ; preds = %if.else557
  %mb_field565 = getelementptr inbounds %struct.macroblock* %118, i64 %idxprom562, i32 22
  %135 = load i32* %mb_field565, align 4, !tbaa !3
  %136 = load i16**** %arrayidx425, align 8, !tbaa !0
  %arrayidx575 = getelementptr inbounds i16*** %136, i64 %idxprom389
  %137 = load i16*** %arrayidx575, align 8, !tbaa !0
  %arrayidx576 = getelementptr inbounds i16** %137, i64 %idxprom387
  %138 = load i16** %arrayidx576, align 8, !tbaa !0
  %arrayidx577 = getelementptr inbounds i16* %138, i64 %indvars.iv
  %139 = load i16* %arrayidx577, align 2, !tbaa !4
  %conv578 = sext i16 %139 to i32
  %not.tobool566 = icmp ne i32 %135, 0
  %mul579 = zext i1 %not.tobool566 to i32
  %conv578.mul579 = shl nsw i32 %conv578, %mul579
  br label %cond.end595

cond.end595:                                      ; preds = %cond.true560, %if.else557
  %cond596 = phi i32 [ 0, %if.else557 ], [ %conv578.mul579, %cond.true560 ]
  br i1 %tobool400, label %cond.end634, label %cond.true599

cond.true599:                                     ; preds = %cond.end595
  %mb_field604 = getelementptr inbounds %struct.macroblock* %118, i64 %idxprom601, i32 22
  %140 = load i32* %mb_field604, align 4, !tbaa !3
  %141 = load i16**** %arrayidx425, align 8, !tbaa !0
  %arrayidx614 = getelementptr inbounds i16*** %141, i64 %idxprom406
  %142 = load i16*** %arrayidx614, align 8, !tbaa !0
  %arrayidx615 = getelementptr inbounds i16** %142, i64 %idxprom404
  %143 = load i16** %arrayidx615, align 8, !tbaa !0
  %arrayidx616 = getelementptr inbounds i16* %143, i64 %indvars.iv
  %144 = load i16* %arrayidx616, align 2, !tbaa !4
  %conv617 = sext i16 %144 to i32
  %not.tobool605 = icmp ne i32 %140, 0
  %mul618 = zext i1 %not.tobool605 to i32
  %conv617.mul618 = shl nsw i32 %conv617, %mul618
  br label %cond.end634

cond.end634:                                      ; preds = %cond.true599, %cond.end595
  %cond635 = phi i32 [ 0, %cond.end595 ], [ %conv617.mul618, %cond.true599 ]
  br i1 %tobool417, label %if.end676, label %cond.true638

cond.true638:                                     ; preds = %cond.end634
  %mb_field643 = getelementptr inbounds %struct.macroblock* %118, i64 %idxprom640, i32 22
  %145 = load i32* %mb_field643, align 4, !tbaa !3
  %146 = load i16**** %arrayidx425, align 8, !tbaa !0
  %arrayidx653 = getelementptr inbounds i16*** %146, i64 %idxprom423
  %147 = load i16*** %arrayidx653, align 8, !tbaa !0
  %arrayidx654 = getelementptr inbounds i16** %147, i64 %idxprom421
  %148 = load i16** %arrayidx654, align 8, !tbaa !0
  %arrayidx655 = getelementptr inbounds i16* %148, i64 %indvars.iv
  %149 = load i16* %arrayidx655, align 2, !tbaa !4
  %conv656 = sext i16 %149 to i32
  %not.tobool644 = icmp ne i32 %145, 0
  %mul657 = zext i1 %not.tobool644 to i32
  %conv656.mul657 = shl nsw i32 %conv656, %mul657
  br label %if.end676

if.end676:                                        ; preds = %cond.true638, %cond.end634, %cond.false539, %cond.end516, %cond.true520, %cond.true418, %cond.end414
  %mv_a.0 = phi i32 [ %cond398, %cond.end414 ], [ %cond398, %cond.true418 ], [ %cond478, %cond.true520 ], [ %cond478, %cond.end516 ], [ %cond478, %cond.false539 ], [ %cond596, %cond.true638 ], [ %cond596, %cond.end634 ]
  %mv_b.0 = phi i32 [ %cond415, %cond.end414 ], [ %cond415, %cond.true418 ], [ %cond517, %cond.true520 ], [ %cond517, %cond.end516 ], [ %cond517, %cond.false539 ], [ %cond635, %cond.true638 ], [ %cond635, %cond.end634 ]
  %mv_c.0 = phi i32 [ 0, %cond.end414 ], [ %conv429, %cond.true418 ], [ %conv538, %cond.true520 ], [ 0, %cond.end516 ], [ %div551, %cond.false539 ], [ %conv656.mul657, %cond.true638 ], [ 0, %cond.end634 ]
  br i1 %tobool678, label %if.end812, label %if.then679

if.then679:                                       ; preds = %if.end676
  br i1 %tobool383, label %cond.end711, label %cond.true682

cond.true682:                                     ; preds = %if.then679
  br i1 %cmp782, label %cond.true685, label %cond.false696

cond.true685:                                     ; preds = %cond.true682
  %150 = load i32***** %arrayidx691, align 8, !tbaa !0
  %arrayidx692 = getelementptr inbounds i32**** %150, i64 %idxprom387
  %151 = load i32**** %arrayidx692, align 8, !tbaa !0
  %152 = load i32*** %151, align 8, !tbaa !0
  %arrayidx694 = getelementptr inbounds i32** %152, i64 %idxprom785
  %153 = load i32** %arrayidx694, align 8, !tbaa !0
  %154 = load i32* %153, align 4, !tbaa !3
  br label %cond.end711

cond.false696:                                    ; preds = %cond.true682
  %155 = load i32***** %arrayidx703, align 8, !tbaa !0
  %arrayidx704 = getelementptr inbounds i32**** %155, i64 %idxprom387
  %156 = load i32**** %arrayidx704, align 8, !tbaa !0
  %arrayidx705 = getelementptr inbounds i32*** %156, i64 %idxprom797
  %157 = load i32*** %arrayidx705, align 8, !tbaa !0
  %arrayidx706 = getelementptr inbounds i32** %157, i64 %idxprom785
  %158 = load i32** %arrayidx706, align 8, !tbaa !0
  %159 = load i32* %158, align 4, !tbaa !3
  br label %cond.end711

cond.end711:                                      ; preds = %if.then679, %cond.true685, %cond.false696
  %cond712 = phi i32 [ %154, %cond.true685 ], [ %159, %cond.false696 ], [ 0, %if.then679 ]
  br i1 %tobool400, label %cond.end744, label %cond.true715

cond.true715:                                     ; preds = %cond.end711
  br i1 %cmp782, label %cond.true718, label %cond.false729

cond.true718:                                     ; preds = %cond.true715
  %160 = load i32***** %arrayidx724, align 8, !tbaa !0
  %arrayidx725 = getelementptr inbounds i32**** %160, i64 %idxprom404
  %161 = load i32**** %arrayidx725, align 8, !tbaa !0
  %162 = load i32*** %161, align 8, !tbaa !0
  %arrayidx727 = getelementptr inbounds i32** %162, i64 %idxprom785
  %163 = load i32** %arrayidx727, align 8, !tbaa !0
  %164 = load i32* %163, align 4, !tbaa !3
  br label %cond.end744

cond.false729:                                    ; preds = %cond.true715
  %165 = load i32***** %arrayidx736, align 8, !tbaa !0
  %arrayidx737 = getelementptr inbounds i32**** %165, i64 %idxprom404
  %166 = load i32**** %arrayidx737, align 8, !tbaa !0
  %arrayidx738 = getelementptr inbounds i32*** %166, i64 %idxprom797
  %167 = load i32*** %arrayidx738, align 8, !tbaa !0
  %arrayidx739 = getelementptr inbounds i32** %167, i64 %idxprom785
  %168 = load i32** %arrayidx739, align 8, !tbaa !0
  %169 = load i32* %168, align 4, !tbaa !3
  br label %cond.end744

cond.end744:                                      ; preds = %cond.end711, %cond.true718, %cond.false729
  %cond745 = phi i32 [ %164, %cond.true718 ], [ %169, %cond.false729 ], [ 0, %cond.end711 ]
  br i1 %tobool747, label %cond.end777, label %cond.true748

cond.true748:                                     ; preds = %cond.end744
  br i1 %cmp782, label %cond.true751, label %cond.false762

cond.true751:                                     ; preds = %cond.true748
  %170 = load i32***** %arrayidx757, align 8, !tbaa !0
  %arrayidx758 = getelementptr inbounds i32**** %170, i64 %idxprom754
  %171 = load i32**** %arrayidx758, align 8, !tbaa !0
  %172 = load i32*** %171, align 8, !tbaa !0
  %arrayidx760 = getelementptr inbounds i32** %172, i64 %idxprom785
  %173 = load i32** %arrayidx760, align 8, !tbaa !0
  %174 = load i32* %173, align 4, !tbaa !3
  br label %cond.end777

cond.false762:                                    ; preds = %cond.true748
  %175 = load i32***** %arrayidx769, align 8, !tbaa !0
  %arrayidx770 = getelementptr inbounds i32**** %175, i64 %idxprom754
  %176 = load i32**** %arrayidx770, align 8, !tbaa !0
  %arrayidx771 = getelementptr inbounds i32*** %176, i64 %idxprom797
  %177 = load i32*** %arrayidx771, align 8, !tbaa !0
  %arrayidx772 = getelementptr inbounds i32** %177, i64 %idxprom785
  %178 = load i32** %arrayidx772, align 8, !tbaa !0
  %179 = load i32* %178, align 4, !tbaa !3
  br label %cond.end777

cond.end777:                                      ; preds = %cond.end744, %cond.true751, %cond.false762
  %cond778 = phi i32 [ %174, %cond.true751 ], [ %179, %cond.false762 ], [ 0, %cond.end744 ]
  br i1 %tobool417, label %if.end812, label %cond.true781

cond.true781:                                     ; preds = %cond.end777
  br i1 %cmp782, label %cond.true784, label %cond.false795

cond.true784:                                     ; preds = %cond.true781
  %180 = load i32***** %arrayidx790, align 8, !tbaa !0
  %arrayidx791 = getelementptr inbounds i32**** %180, i64 %idxprom421
  %181 = load i32**** %arrayidx791, align 8, !tbaa !0
  %182 = load i32*** %181, align 8, !tbaa !0
  %arrayidx793 = getelementptr inbounds i32** %182, i64 %idxprom785
  %183 = load i32** %arrayidx793, align 8, !tbaa !0
  %184 = load i32* %183, align 4, !tbaa !3
  br label %if.end812

cond.false795:                                    ; preds = %cond.true781
  %185 = load i32***** %arrayidx802, align 8, !tbaa !0
  %arrayidx803 = getelementptr inbounds i32**** %185, i64 %idxprom421
  %186 = load i32**** %arrayidx803, align 8, !tbaa !0
  %arrayidx804 = getelementptr inbounds i32*** %186, i64 %idxprom797
  %187 = load i32*** %arrayidx804, align 8, !tbaa !0
  %arrayidx805 = getelementptr inbounds i32** %187, i64 %idxprom785
  %188 = load i32** %arrayidx805, align 8, !tbaa !0
  %189 = load i32* %188, align 4, !tbaa !3
  br label %if.end812

if.end812:                                        ; preds = %cond.false795, %cond.true784, %cond.end777, %if.end676
  %SAD_a.1 = phi i32 [ %SAD_a.01085, %if.end676 ], [ %cond712, %cond.end777 ], [ %cond712, %cond.true784 ], [ %cond712, %cond.false795 ]
  %SAD_b.1 = phi i32 [ %SAD_b.01086, %if.end676 ], [ %cond745, %cond.end777 ], [ %cond745, %cond.true784 ], [ %cond745, %cond.false795 ]
  %SAD_c.1 = phi i32 [ %SAD_c.01087, %if.end676 ], [ %cond778, %cond.end777 ], [ %184, %cond.true784 ], [ %189, %cond.false795 ]
  switch i32 %mvPredType.1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb892
    i32 2, label %sw.bb899
    i32 3, label %sw.bb906
  ]

sw.bb:                                            ; preds = %if.end812
  %190 = or i32 %81, %80
  %brmerge1093 = icmp eq i32 %190, 0
  br i1 %brmerge1093, label %if.then818, label %if.else825

if.then818:                                       ; preds = %sw.bb
  %tobool820 = icmp eq i32 %103, 0
  br i1 %tobool820, label %sw.epilog, label %if.then821

if.then821:                                       ; preds = %if.then818
  %arrayidx823 = getelementptr inbounds [2 x i32]* %temp_pred_SAD, i64 0, i64 %indvars.iv
  store i32 %SAD_a.1, i32* %arrayidx823, align 4, !tbaa !3
  br label %if.end865

if.else825:                                       ; preds = %sw.bb
  %add826 = add nsw i32 %mv_b.0, %mv_a.0
  %add827 = add nsw i32 %add826, %mv_c.0
  %cmp828 = icmp slt i32 %mv_b.0, %mv_c.0
  %cond833 = select i1 %cmp828, i32 %mv_b.0, i32 %mv_c.0
  %cmp834 = icmp slt i32 %mv_a.0, %cond833
  %mv_a.0.cond833 = select i1 %cmp834, i32 %mv_a.0, i32 %cond833
  %sub = sub i32 %add827, %mv_a.0.cond833
  %cmp846 = icmp sgt i32 %mv_b.0, %mv_c.0
  %cond851 = select i1 %cmp846, i32 %mv_b.0, i32 %mv_c.0
  %cmp852 = icmp sgt i32 %mv_a.0, %cond851
  %cond863 = select i1 %cmp852, i32 %mv_a.0, i32 %cond851
  %sub864 = sub i32 %sub, %cond863
  br label %if.end865

if.end865:                                        ; preds = %if.then821, %if.else825
  %pred_vec.1 = phi i32 [ %sub864, %if.else825 ], [ %mv_a.0, %if.then821 ]
  %tobool867 = icmp eq i32 %103, 0
  br i1 %tobool867, label %sw.epilog, label %if.then868

if.then868:                                       ; preds = %if.end865
  %cmp869 = icmp ne i32 %pred_vec.1, %mv_a.0
  %cmp872 = icmp eq i32 %SAD_a.1, 0
  %or.cond1078 = or i1 %cmp869, %cmp872
  br i1 %or.cond1078, label %if.else877, label %if.then874

if.then874:                                       ; preds = %if.then868
  %arrayidx876 = getelementptr inbounds [2 x i32]* %temp_pred_SAD, i64 0, i64 %indvars.iv
  store i32 %SAD_a.1, i32* %arrayidx876, align 4, !tbaa !3
  br label %sw.epilog

if.else877:                                       ; preds = %if.then868
  %cmp878 = icmp ne i32 %pred_vec.1, %mv_b.0
  %cmp881 = icmp eq i32 %SAD_b.1, 0
  %or.cond1079 = or i1 %cmp878, %cmp881
  %arrayidx888 = getelementptr inbounds [2 x i32]* %temp_pred_SAD, i64 0, i64 %indvars.iv
  br i1 %or.cond1079, label %if.else886, label %if.then883

if.then883:                                       ; preds = %if.else877
  store i32 %SAD_b.1, i32* %arrayidx888, align 4, !tbaa !3
  br label %sw.epilog

if.else886:                                       ; preds = %if.else877
  store i32 %SAD_c.1, i32* %arrayidx888, align 4, !tbaa !3
  br label %sw.epilog

sw.bb892:                                         ; preds = %if.end812
  %tobool894 = icmp eq i32 %102, 0
  br i1 %tobool894, label %sw.epilog, label %if.then895

if.then895:                                       ; preds = %sw.bb892
  %arrayidx897 = getelementptr inbounds [2 x i32]* %temp_pred_SAD, i64 0, i64 %indvars.iv
  store i32 %SAD_a.1, i32* %arrayidx897, align 4, !tbaa !3
  br label %sw.epilog

sw.bb899:                                         ; preds = %if.end812
  %tobool901 = icmp eq i32 %101, 0
  br i1 %tobool901, label %sw.epilog, label %if.then902

if.then902:                                       ; preds = %sw.bb899
  %arrayidx904 = getelementptr inbounds [2 x i32]* %temp_pred_SAD, i64 0, i64 %indvars.iv
  store i32 %SAD_b.1, i32* %arrayidx904, align 4, !tbaa !3
  br label %sw.epilog

sw.bb906:                                         ; preds = %if.end812
  %tobool908 = icmp eq i32 %100, 0
  br i1 %tobool908, label %sw.epilog, label %if.then909

if.then909:                                       ; preds = %sw.bb906
  %arrayidx911 = getelementptr inbounds [2 x i32]* %temp_pred_SAD, i64 0, i64 %indvars.iv
  store i32 %SAD_c.1, i32* %arrayidx911, align 4, !tbaa !3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then818, %if.end865, %sw.bb892, %sw.bb899, %sw.bb906, %if.end812, %if.then909, %if.then902, %if.then895, %if.then883, %if.else886, %if.then874
  %191 = phi i32 [ %100, %if.end812 ], [ %100, %if.then909 ], [ 0, %sw.bb906 ], [ %100, %if.then902 ], [ %100, %sw.bb899 ], [ %100, %if.then895 ], [ %100, %sw.bb892 ], [ %100, %if.then874 ], [ %100, %if.then883 ], [ %100, %if.else886 ], [ %100, %if.end865 ], [ %100, %if.then818 ]
  %192 = phi i32 [ %101, %if.end812 ], [ %100, %if.then909 ], [ 0, %sw.bb906 ], [ %101, %if.then902 ], [ 0, %sw.bb899 ], [ %101, %if.then895 ], [ %101, %sw.bb892 ], [ %101, %if.then874 ], [ %101, %if.then883 ], [ %101, %if.else886 ], [ %101, %if.end865 ], [ %101, %if.then818 ]
  %193 = phi i32 [ %102, %if.end812 ], [ %100, %if.then909 ], [ 0, %sw.bb906 ], [ %101, %if.then902 ], [ 0, %sw.bb899 ], [ %102, %if.then895 ], [ 0, %sw.bb892 ], [ %102, %if.then874 ], [ %102, %if.then883 ], [ %102, %if.else886 ], [ %102, %if.end865 ], [ %102, %if.then818 ]
  %194 = phi i32 [ %103, %if.end812 ], [ %100, %if.then909 ], [ 0, %sw.bb906 ], [ %101, %if.then902 ], [ 0, %sw.bb899 ], [ %102, %if.then895 ], [ 0, %sw.bb892 ], [ %103, %if.then874 ], [ %103, %if.then883 ], [ %103, %if.else886 ], [ 0, %if.end865 ], [ 0, %if.then818 ]
  %pred_vec.2 = phi i32 [ %pred_vec.01081, %if.end812 ], [ %mv_c.0, %if.then909 ], [ %mv_c.0, %sw.bb906 ], [ %mv_b.0, %if.then902 ], [ %mv_b.0, %sw.bb899 ], [ %mv_a.0, %if.then895 ], [ %mv_a.0, %sw.bb892 ], [ %mv_a.0, %if.then874 ], [ %mv_b.0, %if.then883 ], [ %pred_vec.1, %if.else886 ], [ %pred_vec.1, %if.end865 ], [ %mv_a.0, %if.then818 ]
  %conv913 = trunc i32 %pred_vec.2 to i16
  %arrayidx915 = getelementptr inbounds i16* %pmv, i64 %indvars.iv
  store i16 %conv913, i16* %arrayidx915, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %sw.epilog
  %tobool917 = icmp eq i32 %194, 0
  br i1 %tobool917, label %if.end929, label %if.then918

if.then918:                                       ; preds = %for.end
  %arrayidx919 = getelementptr inbounds [2 x i32]* %temp_pred_SAD, i64 0, i64 0
  %195 = load i32* %arrayidx919, align 4, !tbaa !3
  %arrayidx920 = getelementptr inbounds [2 x i32]* %temp_pred_SAD, i64 0, i64 1
  %196 = load i32* %arrayidx920, align 4, !tbaa !3
  %cmp921 = icmp sgt i32 %195, %196
  %. = select i1 %cmp921, i32 %196, i32 %195
  store i32 %., i32* @pred_SAD_space, align 4, !tbaa !3
  br label %if.end929

if.end929:                                        ; preds = %for.end, %if.then918
  ret void
}

; Function Attrs: optsize
declare i16* @FastLine16Y_11(i16*, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare i16* @UMVLine16Y_11(i16*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @getLuma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define void @Init_Motion_Search_Module() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 155
  %1 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 156
  %2 = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %cmp = icmp sgt i32 %1, %2
  %. = select i1 %cmp, i32 %1, i32 %2
  %add = add nsw i32 %., 1
  %mul = shl nsw i32 %add, 1
  %3 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %search_range5 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 8
  %4 = load i32* %search_range5, align 4, !tbaa !3
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 9
  %5 = load i32* %max_num_references, align 4, !tbaa !3
  %mul6 = shl nsw i32 %4, 1
  %add7250 = or i32 %mul6, 1
  %mul10 = mul nsw i32 %add7250, %add7250
  %cmp11 = icmp ult i32 %mul10, 9
  %phitmp252253 = zext i32 %mul10 to i64
  %cond20 = select i1 %cmp11, i64 9, i64 %phitmp252253
  %add21 = add nsw i32 %5, 1
  %cmp22 = icmp slt i32 %add21, 16
  br i1 %cmp22, label %cond.end26, label %cond.false24

cond.false24:                                     ; preds = %entry
  %phitmp = sitofp i32 %add21 to double
  br label %cond.end26

cond.end26:                                       ; preds = %entry, %cond.false24
  %cond27 = phi double [ %phitmp, %cond.false24 ], [ 1.600000e+01, %entry ]
  %call = tail call double @log(double %cond27) #7
  %div = fdiv double %call, 0x3FE62E42FEFA39EF
  %add29 = fadd double %div, 1.000000e-10
  %call30 = tail call double @floor(double %add29) #9
  %conv31 = fptosi double %call30 to i32
  %mul32 = shl nsw i32 %conv31, 1
  %add33251 = or i32 %mul32, 1
  %add34 = add nsw i32 %conv31, 1
  %shl = shl i32 1, %add34
  %sub = add nsw i32 %shl, -1
  %add36 = shl i32 %4, 3
  %add38 = add i32 %add36, 13
  %conv39 = sitofp i32 %add38 to double
  %call40 = tail call double @log(double %conv39) #7
  %div42 = fdiv double %call40, 0x3FE62E42FEFA39EF
  %add43 = fadd double %div42, 1.000000e-10
  %call44 = tail call double @ceil(double %add43) #9
  %conv45 = fptosi double %call44 to i32
  %mul46 = shl nsw i32 %conv45, 1
  %add47 = add nsw i32 %mul46, 3
  %shr48 = ashr i32 %add47, 1
  %shl49 = shl i32 1, %shr48
  %sub50 = add nsw i32 %shl49, -1
  store i32 %sub50, i32* @max_mvd, align 4, !tbaa !3
  %call52 = tail call noalias i8* @calloc(i64 %cond20, i64 4) #7
  %6 = bitcast i8* %call52 to i32*
  store i32* %6, i32** @spiral_search_x, align 8, !tbaa !0
  %cmp53 = icmp eq i8* %call52, null
  br i1 %cmp53, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end26
  tail call void @no_mem_exit(i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end26
  %call56 = tail call noalias i8* @calloc(i64 %cond20, i64 4) #7
  %7 = bitcast i8* %call56 to i32*
  store i32* %7, i32** @spiral_search_y, align 8, !tbaa !0
  %cmp57 = icmp eq i8* %call56, null
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([43 x i8]* @.str7, i64 0, i64 0)) #7
  br label %if.end60

if.end60:                                         ; preds = %if.end, %if.then59
  %8 = load i32* @max_mvd, align 4, !tbaa !3
  %mul61 = shl nsw i32 %8, 1
  %add62254 = or i32 %mul61, 1
  %conv63 = sext i32 %add62254 to i64
  %call64 = tail call noalias i8* @calloc(i64 %conv63, i64 4) #7
  %9 = bitcast i8* %call64 to i32*
  store i32* %9, i32** @mvbits, align 8, !tbaa !0
  %cmp65 = icmp eq i8* %call64, null
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end60
  tail call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8]* @.str8, i64 0, i64 0)) #7
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end60
  %conv69 = sext i32 %sub to i64
  %call70 = tail call noalias i8* @calloc(i64 %conv69, i64 4) #7
  %10 = bitcast i8* %call70 to i32*
  store i32* %10, i32** @refbits, align 8, !tbaa !0
  %cmp71 = icmp eq i8* %call70, null
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end68
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str9, i64 0, i64 0)) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end68
  %conv75 = sext i32 %mul to i64
  %call76 = tail call noalias i8* @calloc(i64 %conv75, i64 4) #7
  %11 = bitcast i8* %call76 to i32*
  store i32* %11, i32** @byte_abs, align 8, !tbaa !0
  %cmp77 = icmp eq i8* %call76, null
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end74
  tail call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8]* @.str10, i64 0, i64 0)) #7
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end74
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_num_references81 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 9
  %13 = load i32* %max_num_references81, align 4, !tbaa !3
  %add82 = add nsw i32 %13, 1
  %call83 = tail call i32 @get_mem4Dint(i32***** @motion_cost, i32 8, i32 2, i32 %add82, i32 4) #7
  %14 = load i32* @max_mvd, align 4, !tbaa !3
  %15 = load i32** @mvbits, align 8, !tbaa !0
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i32* %15, i64 %idx.ext
  store i32* %add.ptr, i32** @mvbits, align 8, !tbaa !0
  %16 = load i32** @byte_abs, align 8, !tbaa !0
  %idx.ext85 = sext i32 %add to i64
  %add.ptr86 = getelementptr inbounds i32* %16, i64 %idx.ext85
  store i32* %add.ptr86, i32** @byte_abs, align 8, !tbaa !0
  store i32 1, i32* %add.ptr, align 4, !tbaa !3
  %cmp87273 = icmp slt i32 %conv45, 0
  br i1 %cmp87273, label %for.end102, label %for.body

for.body:                                         ; preds = %if.end80, %for.inc100
  %bits.0274 = phi i32 [ %add101, %for.inc100 ], [ 3, %if.end80 ]
  %shr89 = ashr i32 %bits.0274, 1
  %shl90 = shl i32 1, %shr89
  %shr91 = ashr i32 %shl90, 1
  %cmp93271 = icmp slt i32 %shr91, %shl90
  br i1 %cmp93271, label %for.body95.lr.ph, label %for.inc100

for.body95.lr.ph:                                 ; preds = %for.body
  %17 = sext i32 %shr91 to i64
  br label %for.body95

for.body95:                                       ; preds = %for.body95, %for.body95.lr.ph
  %indvars.iv293 = phi i64 [ %17, %for.body95.lr.ph ], [ %indvars.iv.next294, %for.body95 ]
  %i.0272 = phi i32 [ %shr91, %for.body95.lr.ph ], [ %inc, %for.body95 ]
  %add.ptr.sum = add i64 %idx.ext, %indvars.iv293
  %arrayidx96 = getelementptr inbounds i32* %15, i64 %add.ptr.sum
  store i32 %bits.0274, i32* %arrayidx96, align 4, !tbaa !3
  %sub97 = sub i64 0, %indvars.iv293
  %sext = shl i64 %sub97, 32
  %idxprom98 = ashr exact i64 %sext, 32
  %add.ptr.sum297 = add i64 %idx.ext, %idxprom98
  %arrayidx99 = getelementptr inbounds i32* %15, i64 %add.ptr.sum297
  store i32 %bits.0274, i32* %arrayidx99, align 4, !tbaa !3
  %indvars.iv.next294 = add i64 %indvars.iv293, 1
  %inc = add nsw i32 %i.0272, 1
  %exitcond295 = icmp eq i32 %inc, %shl90
  br i1 %exitcond295, label %for.inc100, label %for.body95

for.inc100:                                       ; preds = %for.body95, %for.body
  %add101 = add nsw i32 %bits.0274, 2
  %cmp87 = icmp sgt i32 %add101, %add47
  br i1 %cmp87, label %for.end102, label %for.body

for.end102:                                       ; preds = %for.inc100, %if.end80
  %18 = load i32** @refbits, align 8, !tbaa !0
  store i32 1, i32* %18, align 4, !tbaa !3
  %cmp105269 = icmp slt i32 %add33251, 3
  br i1 %cmp105269, label %for.end124, label %for.body107

for.body107:                                      ; preds = %for.end102, %for.inc122
  %bits.1270 = phi i32 [ %add123, %for.inc122 ], [ 3, %for.end102 ]
  %shr108 = ashr i32 %bits.1270, 1
  %add109 = add nsw i32 %shr108, 1
  %shl110 = shl i32 1, %add109
  %sub111 = add nsw i32 %shl110, -1
  %shr112 = ashr i32 %sub111, 1
  %cmp114267 = icmp slt i32 %shr112, %sub111
  br i1 %cmp114267, label %for.body116.lr.ph, label %for.inc122

for.body116.lr.ph:                                ; preds = %for.body107
  %19 = sext i32 %shr112 to i64
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.body116
  %indvars.iv291 = phi i64 [ %19, %for.body116.lr.ph ], [ %indvars.iv.next292, %for.body116 ]
  %arrayidx118 = getelementptr inbounds i32* %18, i64 %indvars.iv291
  store i32 %bits.1270, i32* %arrayidx118, align 4, !tbaa !3
  %indvars.iv.next292 = add i64 %indvars.iv291, 1
  %20 = trunc i64 %indvars.iv.next292 to i32
  %cmp114 = icmp slt i32 %20, %sub111
  br i1 %cmp114, label %for.body116, label %for.inc122

for.inc122:                                       ; preds = %for.body116, %for.body107
  %add123 = add nsw i32 %bits.1270, 2
  %cmp105 = icmp sgt i32 %add123, %add33251
  br i1 %cmp105, label %for.end124, label %for.body107

for.end124:                                       ; preds = %for.inc122, %for.end102
  store i32 0, i32* %add.ptr86, align 4, !tbaa !3
  %cmp128265 = icmp sgt i32 %., 0
  br i1 %cmp128265, label %for.body130, label %for.end138

for.body130:                                      ; preds = %for.end124, %for.body130
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %for.body130 ], [ 1, %for.end124 ]
  %add.ptr86.sum = sub i64 %idx.ext85, %indvars.iv288
  %arrayidx133 = getelementptr inbounds i32* %16, i64 %add.ptr86.sum
  %21 = trunc i64 %indvars.iv288 to i32
  store i32 %21, i32* %arrayidx133, align 4, !tbaa !3
  %add.ptr86.sum296 = add i64 %idx.ext85, %indvars.iv288
  %arrayidx135 = getelementptr inbounds i32* %16, i64 %add.ptr86.sum296
  store i32 %21, i32* %arrayidx135, align 4, !tbaa !3
  %indvars.iv.next289 = add i64 %indvars.iv288, 1
  %22 = trunc i64 %indvars.iv.next289 to i32
  %cmp128 = icmp slt i32 %22, %add
  br i1 %cmp128, label %for.body130, label %for.end138

for.end138:                                       ; preds = %for.body130, %for.end124
  %23 = load i32** @spiral_search_y, align 8, !tbaa !0
  store i32 0, i32* %23, align 4, !tbaa !3
  %24 = load i32** @spiral_search_x, align 8, !tbaa !0
  store i32 0, i32* %24, align 4, !tbaa !3
  %cmp142 = icmp slt i32 %4, 1
  %cond147 = select i1 %cmp142, i32 1, i32 %4
  br label %for.body150

for.body150:                                      ; preds = %for.inc190, %for.end138
  %indvars.iv285 = phi i32 [ %indvars.iv.next286, %for.inc190 ], [ 2, %for.end138 ]
  %indvars.iv283 = phi i32 [ %indvars.iv.next284, %for.inc190 ], [ 6, %for.end138 ]
  %indvars.iv278 = phi i32 [ %indvars.iv.next279, %for.inc190 ], [ 1, %for.end138 ]
  %indvars.iv276 = phi i32 [ %indvars.iv.next277, %for.inc190 ], [ 2, %for.end138 ]
  %k.0264 = phi i32 [ %30, %for.inc190 ], [ 1, %for.end138 ]
  %sub151 = sub nsw i32 0, %indvars.iv278
  %add152 = sub i32 1, %indvars.iv278
  %cmp154255 = icmp slt i32 %add152, %indvars.iv278
  br i1 %cmp154255, label %for.body156.lr.ph, label %for.body175.lr.ph

for.body156.lr.ph:                                ; preds = %for.body150
  %25 = sext i32 %k.0264 to i64
  br label %for.body156

for.body156:                                      ; preds = %for.body156, %for.body156.lr.ph
  %indvars.iv = phi i64 [ %25, %for.body156.lr.ph ], [ %indvars.iv.next, %for.body156 ]
  %i.3257 = phi i32 [ %add152, %for.body156.lr.ph ], [ %inc169, %for.body156 ]
  %arrayidx158 = getelementptr inbounds i32* %24, i64 %indvars.iv
  store i32 %i.3257, i32* %arrayidx158, align 4, !tbaa !3
  %26 = add nsw i64 %indvars.iv, 1
  %arrayidx162 = getelementptr inbounds i32* %23, i64 %indvars.iv
  store i32 %sub151, i32* %arrayidx162, align 4, !tbaa !3
  %arrayidx164 = getelementptr inbounds i32* %24, i64 %26
  store i32 %i.3257, i32* %arrayidx164, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 2
  %arrayidx167 = getelementptr inbounds i32* %23, i64 %26
  store i32 %indvars.iv278, i32* %arrayidx167, align 4, !tbaa !3
  %inc169 = add nsw i32 %i.3257, 1
  %exitcond = icmp eq i32 %inc169, %indvars.iv278
  br i1 %exitcond, label %for.cond153.for.cond172.loopexit_crit_edge, label %for.body156

for.cond153.for.cond172.loopexit_crit_edge:       ; preds = %for.body156
  %27 = add i32 %k.0264, %indvars.iv276
  br label %for.body175.lr.ph

for.body175.lr.ph:                                ; preds = %for.body150, %for.cond153.for.cond172.loopexit_crit_edge
  %k.1.lcssa = phi i32 [ %27, %for.cond153.for.cond172.loopexit_crit_edge ], [ %k.0264, %for.body150 ]
  %28 = sext i32 %k.1.lcssa to i64
  br label %for.body175

for.body175:                                      ; preds = %for.body175, %for.body175.lr.ph
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %for.body175 ], [ %28, %for.body175.lr.ph ]
  %i.4260 = phi i32 [ %inc188, %for.body175 ], [ %sub151, %for.body175.lr.ph ]
  %arrayidx178 = getelementptr inbounds i32* %24, i64 %indvars.iv280
  store i32 %sub151, i32* %arrayidx178, align 4, !tbaa !3
  %29 = add nsw i64 %indvars.iv280, 1
  %arrayidx181 = getelementptr inbounds i32* %23, i64 %indvars.iv280
  store i32 %i.4260, i32* %arrayidx181, align 4, !tbaa !3
  %arrayidx183 = getelementptr inbounds i32* %24, i64 %29
  store i32 %indvars.iv278, i32* %arrayidx183, align 4, !tbaa !3
  %indvars.iv.next281 = add i64 %indvars.iv280, 2
  %arrayidx186 = getelementptr inbounds i32* %23, i64 %29
  store i32 %i.4260, i32* %arrayidx186, align 4, !tbaa !3
  %inc188 = add nsw i32 %i.4260, 1
  %exitcond287 = icmp eq i32 %inc188, %indvars.iv285
  br i1 %exitcond287, label %for.inc190, label %for.body175

for.inc190:                                       ; preds = %for.body175
  %30 = add i32 %k.1.lcssa, %indvars.iv283
  %indvars.iv.next279 = add i32 %indvars.iv278, 1
  %cmp148 = icmp slt i32 %indvars.iv278, %cond147
  %indvars.iv.next277 = add i32 %indvars.iv276, 4
  %indvars.iv.next284 = add i32 %indvars.iv283, 4
  %indvars.iv.next286 = add i32 %indvars.iv285, 1
  br i1 %cmp148, label %for.body150, label %for.end192

for.end192:                                       ; preds = %for.inc190
  %31 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %FMEnable = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 134
  %32 = load i32* %FMEnable, align 4, !tbaa !3
  %tobool = icmp eq i32 %32, 0
  br i1 %tobool, label %if.then193, label %if.end194

if.then193:                                       ; preds = %for.end192
  tail call void @InitializeFastFullIntegerSearch() #8
  br label %if.end194

if.end194:                                        ; preds = %for.end192, %if.then193
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #4

; Function Attrs: nounwind optsize
declare double @log(double) #1

; Function Attrs: nounwind optsize readnone
declare double @ceil(double) #4

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare i32 @get_mem4Dint(i32*****, i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Clear_Motion_Search_Module() #0 {
entry:
  %0 = load i32* @max_mvd, align 4, !tbaa !3
  %1 = load i32** @mvbits, align 8, !tbaa !0
  %idx.ext = sext i32 %0 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32* %1, i64 %idx.neg
  store i32* %add.ptr, i32** @mvbits, align 8, !tbaa !0
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 155
  %3 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 156
  %4 = load i32* %max_imgpel_value_uv, align 4, !tbaa !3
  %cmp = icmp sgt i32 %3, %4
  %. = select i1 %cmp, i32 %3, i32 %4
  %add = add nsw i32 %., 1
  %5 = load i32** @byte_abs, align 8, !tbaa !0
  %idx.ext4 = sext i32 %add to i64
  %idx.neg5 = sub i64 0, %idx.ext4
  %add.ptr6 = getelementptr inbounds i32* %5, i64 %idx.neg5
  store i32* %add.ptr6, i32** @byte_abs, align 8, !tbaa !0
  %6 = load i32** @spiral_search_x, align 8, !tbaa !0
  %7 = bitcast i32* %6 to i8*
  tail call void @free(i8* %7) #7
  %8 = load i32** @spiral_search_y, align 8, !tbaa !0
  %9 = bitcast i32* %8 to i8*
  tail call void @free(i8* %9) #7
  %10 = load i32** @mvbits, align 8, !tbaa !0
  %11 = bitcast i32* %10 to i8*
  tail call void @free(i8* %11) #7
  %12 = load i32** @refbits, align 8, !tbaa !0
  %13 = bitcast i32* %12 to i8*
  tail call void @free(i8* %13) #7
  %14 = load i32** @byte_abs, align 8, !tbaa !0
  %15 = bitcast i32* %14 to i8*
  tail call void @free(i8* %15) #7
  %16 = load i32***** @motion_cost, align 8, !tbaa !0
  tail call void @free_mem4Dint(i32**** %16, i32 8, i32 2) #7
  %17 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %FMEnable = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 134
  %18 = load i32* %FMEnable, align 4, !tbaa !3
  %tobool = icmp eq i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ClearFastFullIntegerSearch() #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare void @free_mem4Dint(i32****, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @FullPelBlockMotionSearch(i16** nocapture %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* nocapture %mv_x, i16* nocapture %mv_y, i32 %search_range, i32 %min_mcost, double %lambda) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %1 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %4 = load i32* %mb_field, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem270 = shl i32 %2, 1
  %5 = and i32 %rem270, 2
  %6 = add i32 %5, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %idxprom5 = sext i16 %ref to i64
  %add = add nsw i32 %cond4, %list
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom6
  %7 = load %struct.storable_picture*** %arrayidx7, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds %struct.storable_picture** %7, i64 %idxprom5
  %8 = load %struct.storable_picture** %arrayidx8, align 8, !tbaa !0
  %size_x = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 18
  %9 = load i32* %size_x, align 4, !tbaa !3
  %size_y = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 19
  %10 = load i32* %size_y, align 4, !tbaa !3
  %mul = shl nsw i32 %search_range, 1
  %add19267 = or i32 %mul, 1
  %mul22 = mul nsw i32 %add19267, %add19267
  %mul23 = fmul double %lambda, 6.553600e+04
  %add24 = fadd double %mul23, 5.000000e-01
  %conv = fptosi double %add24 to i32
  %idxprom25 = sext i32 %blocktype to i64
  %11 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 20, i64 %idxprom25, i64 1
  %12 = load i32* %arrayidx27, align 4, !tbaa !3
  %arrayidx31 = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 20, i64 %idxprom25, i64 0
  %13 = load i32* %arrayidx31, align 4, !tbaa !3
  %shr = ashr i32 %13, 2
  %shl = shl i32 %pic_pix_x, 2
  %conv32 = sext i16 %pred_mv_x to i32
  %shl34 = shl i32 %pic_pix_y, 2
  %conv35 = sext i16 %pred_mv_y to i32
  %14 = load i16* %mv_x, align 2, !tbaa !4
  %conv37 = sext i16 %14 to i32
  %add38 = add nsw i32 %conv37, %pic_pix_x
  %15 = load i16* %mv_y, align 2, !tbaa !4
  %conv39 = sext i16 %15 to i32
  %add40 = add nsw i32 %conv39, %pic_pix_y
  %cmp = icmp eq i32 %blocktype, 1
  br i1 %cmp, label %land.lhs.true42, label %land.end

land.lhs.true42:                                  ; preds = %cond.end
  %rdopt = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 85
  %16 = load i32* %rdopt, align 4, !tbaa !3
  %tobool43 = icmp eq i32 %16, 0
  br i1 %tobool43, label %land.lhs.true44, label %land.end

land.lhs.true44:                                  ; preds = %land.lhs.true42
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %17 = load i32* %type, align 4, !tbaa !3
  %cmp48 = icmp eq i16 %ref, 0
  %not.cmp45 = icmp ne i32 %17, 1
  %.cmp48 = and i1 %cmp48, %not.cmp45
  br label %land.end

land.end:                                         ; preds = %land.lhs.true44, %land.lhs.true42, %cond.end
  %18 = phi i1 [ false, %land.lhs.true42 ], [ false, %cond.end ], [ %.cmp48, %land.lhs.true44 ]
  %19 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %19, i64 0, i32 19
  %20 = load i32* %weighted_pred_flag, align 4, !tbaa !1
  %tobool50 = icmp eq i32 %20, 0
  br i1 %tobool50, label %lor.rhs, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %land.end
  %type52 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %21 = load i32* %type52, align 4, !tbaa !3
  switch i32 %21, label %lor.rhs [
    i32 0, label %land.lhs.true66
    i32 3, label %land.lhs.true66
  ]

lor.rhs:                                          ; preds = %land.lhs.true51, %land.end
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %19, i64 0, i32 20
  %22 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %tobool58 = icmp eq i32 %22, 0
  br i1 %tobool58, label %if.else, label %land.rhs59

land.rhs59:                                       ; preds = %lor.rhs
  %type60 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %23 = load i32* %type60, align 4, !tbaa !3
  %cmp61 = icmp eq i32 %23, 1
  br i1 %cmp61, label %land.lhs.true66, label %if.else

land.lhs.true66:                                  ; preds = %land.lhs.true51, %land.lhs.true51, %land.rhs59
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 48
  %24 = load i32* %UseWeightedReferenceME, align 4, !tbaa !3
  %tobool67 = icmp eq i32 %24, 0
  br i1 %tobool67, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true66
  %imgY_11_w = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 27
  br label %if.end

if.else:                                          ; preds = %lor.rhs, %land.lhs.true66, %land.rhs59
  %imgY_1178 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 26
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ref_pic.0.in = phi i16** [ %imgY_11_w, %if.then ], [ %imgY_1178, %if.else ]
  %ref_pic.0 = load i16** %ref_pic.0.in, align 8
  %cmp79 = icmp sgt i32 %add38, %search_range
  br i1 %cmp79, label %land.lhs.true81, label %if.else96

land.lhs.true81:                                  ; preds = %if.end
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %25 = load i32* %width, align 4, !tbaa !3
  %sub = xor i32 %search_range, -1
  %sub82 = sub i32 %sub, %13
  %sub83 = add i32 %sub82, %25
  %cmp84 = icmp slt i32 %add38, %sub83
  %cmp87 = icmp sgt i32 %add40, %search_range
  %or.cond = and i1 %cmp84, %cmp87
  br i1 %or.cond, label %land.lhs.true89, label %if.else96

land.lhs.true89:                                  ; preds = %land.lhs.true81
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %26 = load i32* %height, align 4, !tbaa !3
  %sub91 = sub i32 %sub, %12
  %sub92 = add i32 %sub91, %26
  %cmp93 = icmp slt i32 %add40, %sub92
  br i1 %cmp93, label %if.end97, label %if.else96

if.else96:                                        ; preds = %land.lhs.true89, %land.lhs.true81, %if.end
  br label %if.end97

if.end97:                                         ; preds = %land.lhs.true89, %if.else96
  %get_ref_line.0 = phi i16* (i32, i16*, i32, i32, i32, i32)* [ @UMVLineX, %if.else96 ], [ @FastLineX, %land.lhs.true89 ]
  %sum = add i32 %conv32, %shl
  %sum287 = add i32 %conv35, %shl34
  %shr126 = ashr i32 %conv, 12
  %cmp134279 = icmp sgt i32 %12, 0
  %cmp141274 = icmp sgt i32 %shr, 0
  br label %for.body

for.body:                                         ; preds = %for.inc186, %if.end97
  %indvars.iv290 = phi i64 [ 0, %if.end97 ], [ %indvars.iv.next291, %for.inc186 ]
  %min_mcost.addr.0286 = phi i32 [ %min_mcost, %if.end97 ], [ %min_mcost.addr.1, %for.inc186 ]
  %best_pos.0283 = phi i32 [ 0, %if.end97 ], [ %best_pos.1, %for.inc186 ]
  %27 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx101 = getelementptr inbounds i32* %27, i64 %indvars.iv290
  %28 = load i32* %arrayidx101, align 4, !tbaa !3
  %add102 = add nsw i32 %28, %add38
  %29 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx104 = getelementptr inbounds i32* %29, i64 %indvars.iv290
  %30 = load i32* %arrayidx104, align 4, !tbaa !3
  %add105 = add nsw i32 %30, %add40
  %shl106 = shl i32 %add102, 2
  %sub107 = sub i32 %shl106, %sum
  %idxprom108 = sext i32 %sub107 to i64
  %31 = load i32** @mvbits, align 8, !tbaa !0
  %arrayidx109 = getelementptr inbounds i32* %31, i64 %idxprom108
  %32 = load i32* %arrayidx109, align 4, !tbaa !3
  %shl110 = shl i32 %add105, 2
  %sub111 = sub i32 %shl110, %sum287
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds i32* %31, i64 %idxprom112
  %33 = load i32* %arrayidx113, align 4, !tbaa !3
  %add114 = add nsw i32 %33, %32
  %mul115 = mul nsw i32 %add114, %conv
  %shr116 = ashr i32 %mul115, 16
  %cmp119 = icmp eq i32 %add102, %pic_pix_x
  %or.cond271 = and i1 %18, %cmp119
  %cmp122 = icmp eq i32 %add105, %pic_pix_y
  %or.cond272 = and i1 %or.cond271, %cmp122
  %sub127 = select i1 %or.cond272, i32 %shr126, i32 0
  %sub127.shr116 = sub nsw i32 %shr116, %sub127
  %cmp129 = icmp slt i32 %sub127.shr116, %min_mcost.addr.0286
  br i1 %cmp129, label %for.cond133.preheader, label %for.inc186

for.cond133.preheader:                            ; preds = %for.body
  br i1 %cmp134279, label %for.body136.lr.ph, label %for.end181

for.body136.lr.ph:                                ; preds = %for.cond133.preheader
  %34 = zext i32 %add105 to i64
  br label %for.body136

for.cond133:                                      ; preds = %for.end
  %35 = trunc i64 %indvars.iv.next to i32
  %cmp134 = icmp slt i32 %35, %12
  br i1 %cmp134, label %for.body136, label %for.end181

for.body136:                                      ; preds = %for.body136.lr.ph, %for.cond133
  %indvars.iv = phi i64 [ 0, %for.body136.lr.ph ], [ %indvars.iv.next, %for.cond133 ]
  %mcost.1280 = phi i32 [ %sub127.shr116, %for.body136.lr.ph ], [ %mcost.2.lcssa, %for.cond133 ]
  %36 = add nsw i64 %indvars.iv, %34
  %37 = trunc i64 %36 to i32
  %call = tail call i16* %get_ref_line.0(i32 %13, i16* %ref_pic.0, i32 %37, i32 %add102, i32 %10, i32 %9) #7
  br i1 %cmp141274, label %for.body143.lr.ph, label %for.end

for.body143.lr.ph:                                ; preds = %for.body136
  %arrayidx139 = getelementptr inbounds i16** %orig_pic, i64 %indvars.iv
  %38 = load i16** %arrayidx139, align 8, !tbaa !0
  %39 = load i32** @byte_abs, align 8, !tbaa !0
  br label %for.body143

for.body143:                                      ; preds = %for.body143, %for.body143.lr.ph
  %x4.0278 = phi i32 [ 0, %for.body143.lr.ph ], [ %inc, %for.body143 ]
  %mcost.2277 = phi i32 [ %mcost.1280, %for.body143.lr.ph ], [ %add174, %for.body143 ]
  %orig_line.0276 = phi i16* [ %38, %for.body143.lr.ph ], [ %incdec.ptr167, %for.body143 ]
  %ref_line.0275 = phi i16* [ %call, %for.body143.lr.ph ], [ %incdec.ptr169, %for.body143 ]
  %incdec.ptr = getelementptr inbounds i16* %orig_line.0276, i64 1
  %40 = load i16* %orig_line.0276, align 2, !tbaa !4
  %conv144 = zext i16 %40 to i64
  %incdec.ptr145 = getelementptr inbounds i16* %ref_line.0275, i64 1
  %41 = load i16* %ref_line.0275, align 2, !tbaa !4
  %conv146 = zext i16 %41 to i64
  %sub147 = sub i64 %conv144, %conv146
  %arrayidx149 = getelementptr inbounds i32* %39, i64 %sub147
  %42 = load i32* %arrayidx149, align 4, !tbaa !3
  %add150 = add nsw i32 %42, %mcost.2277
  %incdec.ptr151 = getelementptr inbounds i16* %orig_line.0276, i64 2
  %43 = load i16* %incdec.ptr, align 2, !tbaa !4
  %conv152 = zext i16 %43 to i64
  %incdec.ptr153 = getelementptr inbounds i16* %ref_line.0275, i64 2
  %44 = load i16* %incdec.ptr145, align 2, !tbaa !4
  %conv154 = zext i16 %44 to i64
  %sub155 = sub i64 %conv152, %conv154
  %arrayidx157 = getelementptr inbounds i32* %39, i64 %sub155
  %45 = load i32* %arrayidx157, align 4, !tbaa !3
  %add158 = add nsw i32 %add150, %45
  %incdec.ptr159 = getelementptr inbounds i16* %orig_line.0276, i64 3
  %46 = load i16* %incdec.ptr151, align 2, !tbaa !4
  %conv160 = zext i16 %46 to i64
  %incdec.ptr161 = getelementptr inbounds i16* %ref_line.0275, i64 3
  %47 = load i16* %incdec.ptr153, align 2, !tbaa !4
  %conv162 = zext i16 %47 to i64
  %sub163 = sub i64 %conv160, %conv162
  %arrayidx165 = getelementptr inbounds i32* %39, i64 %sub163
  %48 = load i32* %arrayidx165, align 4, !tbaa !3
  %add166 = add nsw i32 %add158, %48
  %incdec.ptr167 = getelementptr inbounds i16* %orig_line.0276, i64 4
  %49 = load i16* %incdec.ptr159, align 2, !tbaa !4
  %conv168 = zext i16 %49 to i64
  %incdec.ptr169 = getelementptr inbounds i16* %ref_line.0275, i64 4
  %50 = load i16* %incdec.ptr161, align 2, !tbaa !4
  %conv170 = zext i16 %50 to i64
  %sub171 = sub i64 %conv168, %conv170
  %arrayidx173 = getelementptr inbounds i32* %39, i64 %sub171
  %51 = load i32* %arrayidx173, align 4, !tbaa !3
  %add174 = add nsw i32 %add166, %51
  %inc = add nsw i32 %x4.0278, 1
  %exitcond = icmp eq i32 %inc, %shr
  br i1 %exitcond, label %for.end, label %for.body143

for.end:                                          ; preds = %for.body143, %for.body136
  %mcost.2.lcssa = phi i32 [ %mcost.1280, %for.body136 ], [ %add174, %for.body143 ]
  %cmp175 = icmp slt i32 %mcost.2.lcssa, %min_mcost.addr.0286
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp175, label %for.cond133, label %for.end181

for.end181:                                       ; preds = %for.cond133, %for.end, %for.cond133.preheader
  %mcost.3 = phi i32 [ %sub127.shr116, %for.cond133.preheader ], [ %mcost.2.lcssa, %for.end ], [ %mcost.2.lcssa, %for.cond133 ]
  %cmp182 = icmp slt i32 %mcost.3, %min_mcost.addr.0286
  %52 = trunc i64 %indvars.iv290 to i32
  %pos.0.best_pos.0 = select i1 %cmp182, i32 %52, i32 %best_pos.0283
  %mcost.3.min_mcost.addr.0 = select i1 %cmp182, i32 %mcost.3, i32 %min_mcost.addr.0286
  br label %for.inc186

for.inc186:                                       ; preds = %for.end181, %for.body
  %best_pos.1 = phi i32 [ %best_pos.0283, %for.body ], [ %pos.0.best_pos.0, %for.end181 ]
  %min_mcost.addr.1 = phi i32 [ %min_mcost.addr.0286, %for.body ], [ %mcost.3.min_mcost.addr.0, %for.end181 ]
  %indvars.iv.next291 = add i64 %indvars.iv290, 1
  %53 = trunc i64 %indvars.iv.next291 to i32
  %cmp98 = icmp slt i32 %53, %mul22
  br i1 %cmp98, label %for.body, label %for.end188

for.end188:                                       ; preds = %for.inc186
  %tobool189 = icmp eq i32 %best_pos.1, 0
  br i1 %tobool189, label %if.end201, label %if.then190

if.then190:                                       ; preds = %for.end188
  %idxprom191 = sext i32 %best_pos.1 to i64
  %54 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx192 = getelementptr inbounds i32* %54, i64 %idxprom191
  %55 = load i32* %arrayidx192, align 4, !tbaa !3
  %56 = load i16* %mv_x, align 2, !tbaa !4
  %conv193268 = zext i16 %56 to i32
  %add194 = add nsw i32 %conv193268, %55
  %conv195 = trunc i32 %add194 to i16
  store i16 %conv195, i16* %mv_x, align 2, !tbaa !4
  %57 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx197 = getelementptr inbounds i32* %57, i64 %idxprom191
  %58 = load i32* %arrayidx197, align 4, !tbaa !3
  %59 = load i16* %mv_y, align 2, !tbaa !4
  %conv198269 = zext i16 %59 to i32
  %add199 = add nsw i32 %conv198269, %58
  %conv200 = trunc i32 %add199 to i16
  store i16 %conv200, i16* %mv_y, align 2, !tbaa !4
  br label %if.end201

if.end201:                                        ; preds = %for.end188, %if.then190
  ret i32 %min_mcost.addr.1
}

; Function Attrs: optsize
declare i16* @FastLineX(i32, i16*, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare i16* @UMVLineX(i32, i16*, i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @FastFullPelBlockMotionSearch(i16** nocapture %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* nocapture %mv_x, i16* nocapture %mv_y, i32 %search_range, i32 %min_mcost, double %lambda) #0 {
entry:
  %mul = shl nsw i32 %search_range, 1
  %add128 = or i32 %mul, 1
  %mul3 = mul nsw i32 %add128, %add128
  %mul4 = fmul double %lambda, 6.553600e+04
  %add5 = fadd double %mul4, 5.000000e-01
  %conv = fptosi double %add5 to i32
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 38
  %1 = load i32* %opix_y, align 4, !tbaa !3
  %sub = sub i32 %pic_pix_y, %1
  %opix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 37
  %2 = load i32* %opix_x, align 4, !tbaa !3
  %sub6 = sub nsw i32 %pic_pix_x, %2
  %shr = ashr i32 %sub6, 2
  %add7 = add nsw i32 %sub, %shr
  %idxprom = sext i32 %add7 to i64
  %idxprom8 = sext i32 %blocktype to i64
  %idxprom9 = sext i16 %ref to i64
  %idxprom10 = sext i32 %list to i64
  %3 = load i32****** @BlockSAD, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32***** %3, i64 %idxprom10
  %4 = load i32***** %arrayidx, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i32**** %4, i64 %idxprom9
  %5 = load i32**** %arrayidx11, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32*** %5, i64 %idxprom8
  %6 = load i32*** %arrayidx12, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32** %6, i64 %idxprom
  %7 = load i32** %arrayidx13, align 8, !tbaa !0
  %8 = load i32*** @search_setup_done, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32** %8, i64 %idxprom10
  %9 = load i32** %arrayidx16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32* %9, i64 %idxprom9
  %10 = load i32* %arrayidx17, align 4, !tbaa !3
  %tobool = icmp eq i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @SetupFastFullPelSearch(i16 signext %ref, i32 %list) #8
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_x22.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 37
  %.pre133 = load i32* %opix_x22.phi.trans.insert, align 4, !tbaa !3
  %opix_y28.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 38
  %.pre134 = load i32* %opix_y28.phi.trans.insert, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %11 = phi i32 [ %1, %entry ], [ %.pre134, %if.then ]
  %12 = phi i32 [ %2, %entry ], [ %.pre133, %if.then ]
  %13 = load i32*** @search_center_x, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i32** %13, i64 %idxprom10
  %14 = load i32** %arrayidx20, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %14, i64 %idxprom9
  %15 = load i32* %arrayidx21, align 4, !tbaa !3
  %sub23 = sub nsw i32 %15, %12
  %16 = load i32*** @search_center_y, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i32** %16, i64 %idxprom10
  %17 = load i32** %arrayidx26, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds i32* %17, i64 %idxprom9
  %18 = load i32* %arrayidx27, align 4, !tbaa !3
  %sub29 = sub nsw i32 %18, %11
  %19 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt = getelementptr inbounds %struct.InputParameters* %19, i64 0, i32 85
  %20 = load i32* %rdopt, align 4, !tbaa !3
  %tobool30 = icmp eq i32 %20, 0
  br i1 %tobool30, label %if.then31, label %if.end.for.cond.preheader_crit_edge

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  %.pre135 = load i32** @mvbits, align 8, !tbaa !0
  br label %for.cond.preheader

if.then31:                                        ; preds = %if.end
  %21 = load i32*** @pos_00, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32** %21, i64 %idxprom10
  %22 = load i32** %arrayidx34, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i32* %22, i64 %idxprom9
  %23 = load i32* %arrayidx35, align 4, !tbaa !3
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds i32* %7, i64 %idxprom36
  %24 = load i32* %arrayidx37, align 4, !tbaa !3
  %conv38 = sext i16 %pred_mv_x to i64
  %sub39 = sub i64 0, %conv38
  %25 = load i32** @mvbits, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i32* %25, i64 %sub39
  %26 = load i32* %arrayidx41, align 4, !tbaa !3
  %conv42 = sext i16 %pred_mv_y to i64
  %sub43 = sub i64 0, %conv42
  %arrayidx45 = getelementptr inbounds i32* %25, i64 %sub43
  %27 = load i32* %arrayidx45, align 4, !tbaa !3
  %add46 = add nsw i32 %27, %26
  %mul47 = mul nsw i32 %add46, %conv
  %shr48 = ashr i32 %mul47, 16
  %add49 = add nsw i32 %shr48, %24
  %cmp = icmp slt i32 %add49, %min_mcost
  %. = select i1 %cmp, i32 %23, i32 0
  %add49.min_mcost = select i1 %cmp, i32 %add49, i32 %min_mcost
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end.for.cond.preheader_crit_edge, %if.then31
  %28 = phi i32* [ %25, %if.then31 ], [ %.pre135, %if.end.for.cond.preheader_crit_edge ]
  %best_pos.1.ph = phi i32 [ %., %if.then31 ], [ 0, %if.end.for.cond.preheader_crit_edge ]
  %min_mcost.addr.1.ph = phi i32 [ %add49.min_mcost, %if.then31 ], [ %min_mcost, %if.end.for.cond.preheader_crit_edge ]
  %29 = load i32** @spiral_search_x, align 8, !tbaa !0
  %30 = load i32** @spiral_search_y, align 8, !tbaa !0
  %conv69 = sext i16 %pred_mv_x to i32
  %conv74 = sext i16 %pred_mv_y to i32
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %block_sad.0132 = phi i32* [ %7, %for.cond.preheader ], [ %incdec.ptr, %for.inc ]
  %min_mcost.addr.1131 = phi i32 [ %min_mcost.addr.1.ph, %for.cond.preheader ], [ %min_mcost.addr.2, %for.inc ]
  %best_pos.1130 = phi i32 [ %best_pos.1.ph, %for.cond.preheader ], [ %best_pos.2, %for.inc ]
  %31 = load i32* %block_sad.0132, align 4, !tbaa !3
  %cmp60 = icmp slt i32 %31, %min_mcost.addr.1131
  br i1 %cmp60, label %if.then62, label %for.inc

if.then62:                                        ; preds = %for.body
  %arrayidx64 = getelementptr inbounds i32* %29, i64 %indvars.iv
  %32 = load i32* %arrayidx64, align 4, !tbaa !3
  %add65 = add nsw i32 %32, %sub23
  %arrayidx67 = getelementptr inbounds i32* %30, i64 %indvars.iv
  %33 = load i32* %arrayidx67, align 4, !tbaa !3
  %add68 = add nsw i32 %33, %sub29
  %shl = shl i32 %add65, 2
  %sub70 = sub nsw i32 %shl, %conv69
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds i32* %28, i64 %idxprom71
  %34 = load i32* %arrayidx72, align 4, !tbaa !3
  %shl73 = shl i32 %add68, 2
  %sub75 = sub nsw i32 %shl73, %conv74
  %idxprom76 = sext i32 %sub75 to i64
  %arrayidx77 = getelementptr inbounds i32* %28, i64 %idxprom76
  %35 = load i32* %arrayidx77, align 4, !tbaa !3
  %add78 = add nsw i32 %35, %34
  %mul79 = mul nsw i32 %add78, %conv
  %shr80 = ashr i32 %mul79, 16
  %add81 = add nsw i32 %shr80, %31
  %cmp82 = icmp slt i32 %add81, %min_mcost.addr.1131
  %36 = trunc i64 %indvars.iv to i32
  %pos.0.best_pos.1 = select i1 %cmp82, i32 %36, i32 %best_pos.1130
  %add81.min_mcost.addr.1 = select i1 %cmp82, i32 %add81, i32 %min_mcost.addr.1131
  br label %for.inc

for.inc:                                          ; preds = %if.then62, %for.body
  %best_pos.2 = phi i32 [ %best_pos.1130, %for.body ], [ %pos.0.best_pos.1, %if.then62 ]
  %min_mcost.addr.2 = phi i32 [ %min_mcost.addr.1131, %for.body ], [ %add81.min_mcost.addr.1, %if.then62 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds i32* %block_sad.0132, i64 1
  %37 = trunc i64 %indvars.iv.next to i32
  %cmp58 = icmp slt i32 %37, %mul3
  br i1 %cmp58, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %idxprom87 = sext i32 %best_pos.2 to i64
  %arrayidx88 = getelementptr inbounds i32* %29, i64 %idxprom87
  %38 = load i32* %arrayidx88, align 4, !tbaa !3
  %add89 = add nsw i32 %38, %sub23
  %conv90 = trunc i32 %add89 to i16
  store i16 %conv90, i16* %mv_x, align 2, !tbaa !4
  %arrayidx92 = getelementptr inbounds i32* %30, i64 %idxprom87
  %39 = load i32* %arrayidx92, align 4, !tbaa !3
  %add93 = add nsw i32 %39, %sub29
  %conv94 = trunc i32 %add93 to i16
  store i16 %conv94, i16* %mv_y, align 2, !tbaa !4
  ret i32 %min_mcost.addr.2
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @SATD(i32* nocapture %diff, i32 %use_hadamard) #5 {
entry:
  %d = alloca [16 x i32], align 16
  %0 = bitcast [16 x i32]* %d to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #3
  %tobool = icmp eq i32 %use_hadamard, 0
  br i1 %tobool, label %for.cond260.preheader, label %if.then

for.cond260.preheader:                            ; preds = %entry
  %1 = load i32** @byte_abs, align 8, !tbaa !0
  br label %for.body262

if.then:                                          ; preds = %entry
  %2 = load i32* %diff, align 4, !tbaa !3
  %arrayidx1 = getelementptr inbounds i32* %diff, i64 12
  %3 = load i32* %arrayidx1, align 4, !tbaa !3
  %add = add nsw i32 %3, %2
  %arrayidx3 = getelementptr inbounds i32* %diff, i64 4
  %4 = load i32* %arrayidx3, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds i32* %diff, i64 8
  %5 = load i32* %arrayidx4, align 4, !tbaa !3
  %add5 = add nsw i32 %5, %4
  %sub = sub nsw i32 %4, %5
  %sub12 = sub nsw i32 %2, %3
  %arrayidx14 = getelementptr inbounds i32* %diff, i64 1
  %6 = load i32* %arrayidx14, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32* %diff, i64 13
  %7 = load i32* %arrayidx15, align 4, !tbaa !3
  %add16 = add nsw i32 %7, %6
  %arrayidx18 = getelementptr inbounds i32* %diff, i64 5
  %8 = load i32* %arrayidx18, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %diff, i64 9
  %9 = load i32* %arrayidx19, align 4, !tbaa !3
  %add20 = add nsw i32 %9, %8
  %sub24 = sub nsw i32 %8, %9
  %sub28 = sub nsw i32 %6, %7
  %arrayidx30 = getelementptr inbounds i32* %diff, i64 2
  %10 = load i32* %arrayidx30, align 4, !tbaa !3
  %arrayidx31 = getelementptr inbounds i32* %diff, i64 14
  %11 = load i32* %arrayidx31, align 4, !tbaa !3
  %add32 = add nsw i32 %11, %10
  %arrayidx34 = getelementptr inbounds i32* %diff, i64 6
  %12 = load i32* %arrayidx34, align 4, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32* %diff, i64 10
  %13 = load i32* %arrayidx35, align 4, !tbaa !3
  %add36 = add nsw i32 %13, %12
  %sub40 = sub nsw i32 %12, %13
  %sub44 = sub nsw i32 %10, %11
  %arrayidx46 = getelementptr inbounds i32* %diff, i64 3
  %14 = load i32* %arrayidx46, align 4, !tbaa !3
  %arrayidx47 = getelementptr inbounds i32* %diff, i64 15
  %15 = load i32* %arrayidx47, align 4, !tbaa !3
  %add48 = add nsw i32 %15, %14
  %arrayidx50 = getelementptr inbounds i32* %diff, i64 7
  %16 = load i32* %arrayidx50, align 4, !tbaa !3
  %arrayidx51 = getelementptr inbounds i32* %diff, i64 11
  %17 = load i32* %arrayidx51, align 4, !tbaa !3
  %add52 = add nsw i32 %17, %16
  %sub56 = sub nsw i32 %16, %17
  %sub60 = sub nsw i32 %14, %15
  %add64 = add nsw i32 %add5, %add
  %arrayidx65 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 0
  %sub68 = sub nsw i32 %add, %add5
  %arrayidx69 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 8
  %add72 = add nsw i32 %sub, %sub12
  %arrayidx73 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 4
  %sub76 = sub nsw i32 %sub12, %sub
  %arrayidx77 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 12
  %add80 = add nsw i32 %add20, %add16
  %arrayidx81 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 1
  %sub84 = sub nsw i32 %add16, %add20
  %arrayidx85 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 9
  %add88 = add nsw i32 %sub24, %sub28
  %arrayidx89 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 5
  %sub92 = sub nsw i32 %sub28, %sub24
  %arrayidx93 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 13
  %add96 = add nsw i32 %add36, %add32
  %arrayidx97 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 2
  %sub100 = sub nsw i32 %add32, %add36
  %arrayidx101 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 10
  %add104 = add nsw i32 %sub40, %sub44
  %arrayidx105 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 6
  %sub108 = sub nsw i32 %sub44, %sub40
  %arrayidx109 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 14
  %add112 = add nsw i32 %add52, %add48
  %arrayidx113 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 3
  %sub116 = sub nsw i32 %add48, %add52
  %arrayidx117 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 11
  %add120 = add nsw i32 %sub56, %sub60
  %arrayidx121 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 7
  %sub124 = sub nsw i32 %sub60, %sub56
  %arrayidx125 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 15
  %add128 = add nsw i32 %add112, %add64
  %add132 = add nsw i32 %add96, %add80
  %sub136 = sub nsw i32 %add80, %add96
  %sub140 = sub nsw i32 %add64, %add112
  %add144 = add nsw i32 %add120, %add72
  %add148 = add nsw i32 %add104, %add88
  %sub152 = sub nsw i32 %add88, %add104
  %sub156 = sub nsw i32 %add72, %add120
  %add160 = add nsw i32 %sub116, %sub68
  %add164 = add nsw i32 %sub100, %sub84
  %sub168 = sub nsw i32 %sub84, %sub100
  %sub172 = sub nsw i32 %sub68, %sub116
  %add176 = add nsw i32 %sub76, %sub124
  %add180 = add nsw i32 %sub108, %sub92
  %sub184 = sub nsw i32 %sub92, %sub108
  %sub188 = sub nsw i32 %sub76, %sub124
  %add192 = add nsw i32 %add132, %add128
  store i32 %add192, i32* %arrayidx65, align 16, !tbaa !3
  %sub196 = sub nsw i32 %add128, %add132
  store i32 %sub196, i32* %arrayidx81, align 4, !tbaa !3
  %add200 = add nsw i32 %sub136, %sub140
  store i32 %add200, i32* %arrayidx97, align 8, !tbaa !3
  %sub204 = sub nsw i32 %sub140, %sub136
  store i32 %sub204, i32* %arrayidx113, align 4, !tbaa !3
  %add208 = add nsw i32 %add148, %add144
  store i32 %add208, i32* %arrayidx73, align 16, !tbaa !3
  %sub212 = sub nsw i32 %add144, %add148
  store i32 %sub212, i32* %arrayidx89, align 4, !tbaa !3
  %add216 = add nsw i32 %sub152, %sub156
  store i32 %add216, i32* %arrayidx105, align 8, !tbaa !3
  %sub220 = sub nsw i32 %sub156, %sub152
  store i32 %sub220, i32* %arrayidx121, align 4, !tbaa !3
  %add224 = add nsw i32 %add164, %add160
  store i32 %add224, i32* %arrayidx69, align 16, !tbaa !3
  %sub228 = sub nsw i32 %add160, %add164
  store i32 %sub228, i32* %arrayidx85, align 4, !tbaa !3
  %add232 = add nsw i32 %sub168, %sub172
  store i32 %add232, i32* %arrayidx101, align 8, !tbaa !3
  %sub236 = sub nsw i32 %sub172, %sub168
  store i32 %sub236, i32* %arrayidx117, align 4, !tbaa !3
  %add240 = add nsw i32 %add180, %add176
  store i32 %add240, i32* %arrayidx77, align 16, !tbaa !3
  %sub244 = sub nsw i32 %add176, %add180
  store i32 %sub244, i32* %arrayidx93, align 4, !tbaa !3
  %add248 = add nsw i32 %sub184, %sub188
  store i32 %add248, i32* %arrayidx109, align 8, !tbaa !3
  %sub252 = sub nsw i32 %sub188, %sub184
  store i32 %sub252, i32* %arrayidx125, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %indvars.iv380 = phi i64 [ 1, %if.then ], [ %phitmp, %for.body.for.body_crit_edge ]
  %dd.0378 = phi i32 [ %add192, %if.then ], [ %18, %for.body.for.body_crit_edge ]
  %satd.0377 = phi i32 [ 0, %if.then ], [ %add257, %for.body.for.body_crit_edge ]
  %cmp255 = icmp slt i32 %dd.0378, 0
  %sub256 = sub nsw i32 0, %dd.0378
  %cond = select i1 %cmp255, i32 %sub256, i32 %dd.0378
  %add257 = add nsw i32 %cond, %satd.0377
  %lftr.wideiv382 = trunc i64 %indvars.iv380 to i32
  %exitcond383 = icmp eq i32 %lftr.wideiv382, 16
  br i1 %exitcond383, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx258 = getelementptr inbounds [16 x i32]* %d, i64 0, i64 %indvars.iv380
  %18 = load i32* %arrayidx258, align 4, !tbaa !3
  %phitmp = add i64 %indvars.iv380, 1
  br label %for.body

for.end:                                          ; preds = %for.body
  %add259 = add nsw i32 %add257, 1
  %shr = ashr i32 %add259, 1
  br label %if.end

for.body262:                                      ; preds = %for.body262, %for.cond260.preheader
  %indvars.iv = phi i64 [ 0, %for.cond260.preheader ], [ %indvars.iv.next, %for.body262 ]
  %satd.1375 = phi i32 [ 0, %for.cond260.preheader ], [ %add267, %for.body262 ]
  %arrayidx264 = getelementptr inbounds i32* %diff, i64 %indvars.iv
  %19 = load i32* %arrayidx264, align 4, !tbaa !3
  %idxprom265 = sext i32 %19 to i64
  %arrayidx266 = getelementptr inbounds i32* %1, i64 %idxprom265
  %20 = load i32* %arrayidx266, align 4, !tbaa !3
  %add267 = add nsw i32 %20, %satd.1375
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %if.end, label %for.body262

if.end:                                           ; preds = %for.body262, %for.end
  %satd.2 = phi i32 [ %shr, %for.end ], [ %add267, %for.body262 ]
  call void @llvm.lifetime.end(i64 64, i8* %0) #3
  ret i32 %satd.2
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @SATD8X8(i32* nocapture %diff, i32 %use_hadamard) #5 {
entry:
  %m2 = alloca [8 x [8 x i32]], align 16
  %0 = bitcast [8 x [8 x i32]]* %m2 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #3
  %tobool = icmp eq i32 %use_hadamard, 0
  br i1 %tobool, label %for.cond524.preheader, label %for.body

for.cond524.preheader:                            ; preds = %entry
  %1 = load i32** @byte_abs, align 8, !tbaa !0
  br label %for.body526

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv738 = phi i64 [ %indvars.iv.next739, %for.body ], [ 0, %entry ]
  %2 = shl i64 %indvars.iv738, 3
  %arrayidx = getelementptr inbounds i32* %diff, i64 %2
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %4 = or i64 %2, 4
  %arrayidx3 = getelementptr inbounds i32* %diff, i64 %4
  %5 = load i32* %arrayidx3, align 4, !tbaa !3
  %add4 = add nsw i32 %5, %3
  %arrayidx7 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 %indvars.iv738, i64 0
  %6 = or i64 %2, 1
  %arrayidx11 = getelementptr inbounds i32* %diff, i64 %6
  %7 = load i32* %arrayidx11, align 4, !tbaa !3
  %8 = or i64 %2, 5
  %arrayidx15 = getelementptr inbounds i32* %diff, i64 %8
  %9 = load i32* %arrayidx15, align 4, !tbaa !3
  %add16 = add nsw i32 %9, %7
  %arrayidx19 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 %indvars.iv738, i64 1
  %10 = or i64 %2, 2
  %arrayidx23 = getelementptr inbounds i32* %diff, i64 %10
  %11 = load i32* %arrayidx23, align 4, !tbaa !3
  %12 = or i64 %2, 6
  %arrayidx27 = getelementptr inbounds i32* %diff, i64 %12
  %13 = load i32* %arrayidx27, align 4, !tbaa !3
  %add28 = add nsw i32 %13, %11
  %arrayidx31 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 %indvars.iv738, i64 2
  %14 = or i64 %2, 3
  %arrayidx35 = getelementptr inbounds i32* %diff, i64 %14
  %15 = load i32* %arrayidx35, align 4, !tbaa !3
  %16 = or i64 %2, 7
  %arrayidx39 = getelementptr inbounds i32* %diff, i64 %16
  %17 = load i32* %arrayidx39, align 4, !tbaa !3
  %add40 = add nsw i32 %17, %15
  %arrayidx43 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 %indvars.iv738, i64 3
  %sub = sub nsw i32 %3, %5
  %arrayidx53 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 %indvars.iv738, i64 4
  %sub62 = sub nsw i32 %7, %9
  %arrayidx65 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 %indvars.iv738, i64 5
  %sub74 = sub nsw i32 %11, %13
  %arrayidx77 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 %indvars.iv738, i64 6
  %sub86 = sub nsw i32 %15, %17
  %arrayidx89 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 %indvars.iv738, i64 7
  %add96 = add nsw i32 %add28, %add4
  %add106 = add nsw i32 %add40, %add16
  %sub116 = sub nsw i32 %add4, %add28
  %sub126 = sub nsw i32 %add16, %add40
  %add136 = add nsw i32 %sub74, %sub
  %add146 = add nsw i32 %sub86, %sub62
  %sub156 = sub nsw i32 %sub, %sub74
  %sub166 = sub nsw i32 %sub62, %sub86
  %add176 = add nsw i32 %add106, %add96
  store i32 %add176, i32* %arrayidx7, align 16, !tbaa !3
  %sub186 = sub nsw i32 %add96, %add106
  store i32 %sub186, i32* %arrayidx19, align 4, !tbaa !3
  %add196 = add nsw i32 %sub126, %sub116
  store i32 %add196, i32* %arrayidx31, align 8, !tbaa !3
  %sub206 = sub nsw i32 %sub116, %sub126
  store i32 %sub206, i32* %arrayidx43, align 4, !tbaa !3
  %add216 = add nsw i32 %add146, %add136
  store i32 %add216, i32* %arrayidx53, align 16, !tbaa !3
  %sub226 = sub nsw i32 %add136, %add146
  store i32 %sub226, i32* %arrayidx65, align 4, !tbaa !3
  %add236 = add nsw i32 %sub166, %sub156
  store i32 %add236, i32* %arrayidx77, align 8, !tbaa !3
  %sub246 = sub nsw i32 %sub156, %sub166
  store i32 %sub246, i32* %arrayidx89, align 4, !tbaa !3
  %indvars.iv.next739 = add i64 %indvars.iv738, 1
  %lftr.wideiv748 = trunc i64 %indvars.iv.next739 to i32
  %exitcond749 = icmp eq i32 %lftr.wideiv748, 8
  br i1 %exitcond749, label %for.body252, label %for.body

for.body252:                                      ; preds = %for.body, %for.body252
  %indvars.iv734 = phi i64 [ %indvars.iv.next735, %for.body252 ], [ 0, %for.body ]
  %arrayidx255 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 0, i64 %indvars.iv734
  %18 = load i32* %arrayidx255, align 4, !tbaa !3
  %arrayidx258 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 4, i64 %indvars.iv734
  %19 = load i32* %arrayidx258, align 4, !tbaa !3
  %add259 = add nsw i32 %19, %18
  %arrayidx265 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 1, i64 %indvars.iv734
  %20 = load i32* %arrayidx265, align 4, !tbaa !3
  %arrayidx268 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 5, i64 %indvars.iv734
  %21 = load i32* %arrayidx268, align 4, !tbaa !3
  %add269 = add nsw i32 %21, %20
  %arrayidx275 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 2, i64 %indvars.iv734
  %22 = load i32* %arrayidx275, align 4, !tbaa !3
  %arrayidx278 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 6, i64 %indvars.iv734
  %23 = load i32* %arrayidx278, align 4, !tbaa !3
  %add279 = add nsw i32 %23, %22
  %arrayidx285 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 3, i64 %indvars.iv734
  %24 = load i32* %arrayidx285, align 4, !tbaa !3
  %arrayidx288 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 7, i64 %indvars.iv734
  %25 = load i32* %arrayidx288, align 4, !tbaa !3
  %add289 = add nsw i32 %25, %24
  %sub299 = sub nsw i32 %18, %19
  %sub309 = sub nsw i32 %20, %21
  %sub319 = sub nsw i32 %22, %23
  %sub329 = sub nsw i32 %24, %25
  %add339 = add nsw i32 %add279, %add259
  %add349 = add nsw i32 %add289, %add269
  %sub359 = sub nsw i32 %add259, %add279
  %sub369 = sub nsw i32 %add269, %add289
  %add379 = add nsw i32 %sub319, %sub299
  %add389 = add nsw i32 %sub329, %sub309
  %sub399 = sub nsw i32 %sub299, %sub319
  %sub409 = sub nsw i32 %sub309, %sub329
  %add419 = add nsw i32 %add349, %add339
  store i32 %add419, i32* %arrayidx255, align 4, !tbaa !3
  %sub429 = sub nsw i32 %add339, %add349
  store i32 %sub429, i32* %arrayidx265, align 4, !tbaa !3
  %add439 = add nsw i32 %sub369, %sub359
  store i32 %add439, i32* %arrayidx275, align 4, !tbaa !3
  %sub449 = sub nsw i32 %sub359, %sub369
  store i32 %sub449, i32* %arrayidx285, align 4, !tbaa !3
  %add459 = add nsw i32 %add389, %add379
  store i32 %add459, i32* %arrayidx258, align 4, !tbaa !3
  %sub469 = sub nsw i32 %add379, %add389
  store i32 %sub469, i32* %arrayidx268, align 4, !tbaa !3
  %add479 = add nsw i32 %sub409, %sub399
  store i32 %add479, i32* %arrayidx278, align 4, !tbaa !3
  %sub489 = sub nsw i32 %sub399, %sub409
  store i32 %sub489, i32* %arrayidx288, align 4, !tbaa !3
  %indvars.iv.next735 = add i64 %indvars.iv734, 1
  %lftr.wideiv736 = trunc i64 %indvars.iv.next735 to i32
  %exitcond737 = icmp eq i32 %lftr.wideiv736, 8
  br i1 %exitcond737, label %for.cond499.preheader, label %for.body252

for.cond499.preheader:                            ; preds = %for.body252, %for.inc520
  %indvars.iv730 = phi i64 [ %indvars.iv.next731, %for.inc520 ], [ 0, %for.body252 ]
  %sad.0723 = phi i32 [ %add516, %for.inc520 ], [ 0, %for.body252 ]
  br label %for.body501

for.body501:                                      ; preds = %for.body501, %for.cond499.preheader
  %indvars.iv726 = phi i64 [ 0, %for.cond499.preheader ], [ %indvars.iv.next727, %for.body501 ]
  %sad.1720 = phi i32 [ %sad.0723, %for.cond499.preheader ], [ %add516, %for.body501 ]
  %arrayidx505 = getelementptr inbounds [8 x [8 x i32]]* %m2, i64 0, i64 %indvars.iv730, i64 %indvars.iv726
  %26 = load i32* %arrayidx505, align 4, !tbaa !3
  %cmp506 = icmp slt i32 %26, 0
  %sub511 = sub nsw i32 0, %26
  %cond = select i1 %cmp506, i32 %sub511, i32 %26
  %add516 = add nsw i32 %cond, %sad.1720
  %indvars.iv.next727 = add i64 %indvars.iv726, 1
  %lftr.wideiv728 = trunc i64 %indvars.iv.next727 to i32
  %exitcond729 = icmp eq i32 %lftr.wideiv728, 8
  br i1 %exitcond729, label %for.inc520, label %for.body501

for.inc520:                                       ; preds = %for.body501
  %indvars.iv.next731 = add i64 %indvars.iv730, 1
  %lftr.wideiv732 = trunc i64 %indvars.iv.next731 to i32
  %exitcond733 = icmp eq i32 %lftr.wideiv732, 8
  br i1 %exitcond733, label %for.end522, label %for.cond499.preheader

for.end522:                                       ; preds = %for.inc520
  %add523 = add nsw i32 %add516, 2
  %shr = ashr i32 %add523, 2
  br label %if.end

for.body526:                                      ; preds = %for.body526, %for.cond524.preheader
  %indvars.iv = phi i64 [ 0, %for.cond524.preheader ], [ %indvars.iv.next, %for.body526 ]
  %sad.2718 = phi i32 [ 0, %for.cond524.preheader ], [ %add531, %for.body526 ]
  %arrayidx528 = getelementptr inbounds i32* %diff, i64 %indvars.iv
  %27 = load i32* %arrayidx528, align 4, !tbaa !3
  %idxprom529 = sext i32 %27 to i64
  %arrayidx530 = getelementptr inbounds i32* %1, i64 %idxprom529
  %28 = load i32* %arrayidx530, align 4, !tbaa !3
  %add531 = add nsw i32 %28, %sad.2718
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 64
  br i1 %exitcond, label %if.end, label %for.body526

if.end:                                           ; preds = %for.body526, %for.end522
  %sad.3 = phi i32 [ %shr, %for.end522 ], [ %add531, %for.body526 ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #3
  ret i32 %sad.3
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @find_SATD([16 x i32]* nocapture %curr_diff, i32 %use_hadamard, i32 %blocktype) #5 {
entry:
  %diff = alloca [256 x i32], align 16
  %idxprom = sext i32 %blocktype to i64
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 20, i64 %idxprom, i64 0
  %1 = load i32* %arrayidx1, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 20, i64 %idxprom, i64 1
  %2 = load i32* %arrayidx5, align 4, !tbaa !3
  %cmp = icmp sgt i32 %blocktype, 4
  %cond = select i1 %cmp, i32 4, i32 8
  %3 = bitcast [256 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %3) #3
  %cmp6119 = icmp sgt i32 %2, 0
  br i1 %cmp6119, label %for.cond7.preheader.lr.ph, label %for.end32

for.cond7.preheader.lr.ph:                        ; preds = %entry
  %cmp8115 = icmp sgt i32 %1, 0
  %4 = sub i32 0, %cond
  %5 = zext i32 %cond to i64
  %6 = zext i32 %4 to i64
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond7.preheader.lr.ph, %for.inc30
  %indvars.iv160 = phi i32 [ -1, %for.cond7.preheader.lr.ph ], [ %indvars.iv.next161, %for.inc30 ]
  %indvars.iv157 = phi i32 [ 1, %for.cond7.preheader.lr.ph ], [ %indvars.iv.next158, %for.inc30 ]
  %indvars.iv155 = phi i32 [ %cond, %for.cond7.preheader.lr.ph ], [ %indvars.iv.next156, %for.inc30 ]
  %indvar142 = phi i64 [ 0, %for.cond7.preheader.lr.ph ], [ %indvar.next143, %for.inc30 ]
  %k.0122 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %k.1.lcssa, %for.inc30 ]
  %y.0120 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %add, %for.inc30 ]
  %7 = icmp sgt i32 %indvars.iv155, %indvars.iv157
  %smax159 = select i1 %7, i32 %indvars.iv155, i32 %indvars.iv157
  %8 = add i32 %smax159, %indvars.iv160
  %9 = mul i64 %5, %indvar142
  %add = add nsw i32 %y.0120, %cond
  br i1 %cmp8115, label %for.cond10.preheader, label %for.inc30

for.cond10.preheader:                             ; preds = %for.cond7.preheader, %for.inc27
  %indvars.iv153 = phi i32 [ %indvars.iv.next154, %for.inc27 ], [ 0, %for.cond7.preheader ]
  %indvars.iv150 = phi i32 [ %indvars.iv.next151, %for.inc27 ], [ 1, %for.cond7.preheader ]
  %indvars.iv148 = phi i32 [ %indvars.iv.next149, %for.inc27 ], [ %cond, %for.cond7.preheader ]
  %indvar144 = phi i64 [ %indvar.next145, %for.inc27 ], [ 0, %for.cond7.preheader ]
  %indvar136 = phi i32 [ %indvar.next137, %for.inc27 ], [ 0, %for.cond7.preheader ]
  %k.1117 = phi i32 [ %33, %for.inc27 ], [ %k.0122, %for.cond7.preheader ]
  %x.0116 = phi i32 [ %add14, %for.inc27 ], [ 0, %for.cond7.preheader ]
  %10 = icmp sgt i32 %indvars.iv148, %indvars.iv150
  %smax152 = select i1 %10, i32 %indvars.iv148, i32 %indvars.iv150
  %11 = add i32 %smax152, %indvars.iv153
  %12 = mul i32 %cond, %indvar136
  %13 = add i32 %cond, %12
  %14 = or i32 %12, 1
  %15 = icmp sgt i32 %13, %14
  %smax138 = select i1 %15, i32 %13, i32 %14
  %16 = mul i32 %indvar136, %4
  %17 = add i32 %smax138, %16
  %18 = mul i64 %5, %indvar144
  %19 = mul i64 %6, %indvar144
  %20 = add i64 %19, 4294967295
  %21 = trunc i64 %20 to i32
  %22 = add i32 %smax138, %21
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 2
  %25 = add i64 %24, 4
  %26 = add i32 %k.1117, %smax152
  %27 = add i32 %26, %indvars.iv153
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10.preheader, %for.cond13.preheader
  %indvar140 = phi i64 [ 0, %for.cond10.preheader ], [ %indvar.next141, %for.cond13.preheader ]
  %indvar = phi i32 [ 0, %for.cond10.preheader ], [ %indvar.next, %for.cond13.preheader ]
  %j.0114 = phi i32 [ %y.0120, %for.cond10.preheader ], [ %inc25, %for.cond13.preheader ]
  %28 = mul i32 %17, %indvar
  %29 = add i32 %k.1117, %28
  %30 = sext i32 %29 to i64
  %scevgep = getelementptr [256 x i32]* %diff, i64 0, i64 %30
  %scevgep139 = bitcast i32* %scevgep to i8*
  %31 = add i64 %9, %indvar140
  %scevgep146 = getelementptr [16 x i32]* %curr_diff, i64 %31, i64 %18
  %scevgep146147 = bitcast i32* %scevgep146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep139, i8* %scevgep146147, i64 %25, i32 4, i1 false)
  %inc25 = add nsw i32 %j.0114, 1
  %cmp11 = icmp slt i32 %inc25, %add
  %indvar.next = add i32 %indvar, 1
  %indvar.next141 = add i64 %indvar140, 1
  br i1 %cmp11, label %for.cond13.preheader, label %for.inc27

for.inc27:                                        ; preds = %for.cond13.preheader
  %32 = mul i32 %8, %11
  %add14 = add nsw i32 %x.0116, %cond
  %33 = add i32 %27, %32
  %cmp8 = icmp slt i32 %add14, %1
  %indvars.iv.next149 = add i32 %indvars.iv148, %cond
  %indvars.iv.next151 = add i32 %indvars.iv150, %cond
  %indvars.iv.next154 = sub i32 %indvars.iv153, %cond
  %indvar.next137 = add i32 %indvar136, 1
  %indvar.next145 = add i64 %indvar144, 1
  br i1 %cmp8, label %for.cond10.preheader, label %for.inc30

for.inc30:                                        ; preds = %for.cond7.preheader, %for.inc27
  %k.1.lcssa = phi i32 [ %33, %for.inc27 ], [ %k.0122, %for.cond7.preheader ]
  %cmp6 = icmp slt i32 %add, %2
  %indvar.next143 = add i64 %indvar142, 1
  %indvars.iv.next156 = add i32 %indvars.iv155, %cond
  %indvars.iv.next158 = add i32 %indvars.iv157, %cond
  %indvars.iv.next161 = sub i32 %indvars.iv160, %cond
  br i1 %cmp6, label %for.cond7.preheader, label %for.end32

for.end32:                                        ; preds = %for.inc30, %entry
  %tobool = icmp eq i32 %use_hadamard, 0
  br i1 %tobool, label %for.cond69.preheader, label %if.then

for.cond69.preheader:                             ; preds = %for.end32
  %mul = mul i32 %2, %1
  %cmp70108 = icmp sgt i32 %mul, 0
  br i1 %cmp70108, label %for.body71.lr.ph, label %if.end

for.body71.lr.ph:                                 ; preds = %for.cond69.preheader
  %34 = load i32** @byte_abs, align 8, !tbaa !0
  br label %for.body71

if.then:                                          ; preds = %for.end32
  switch i32 %blocktype, label %if.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb45
    i32 3, label %sw.bb45
    i32 4, label %sw.bb53
    i32 5, label %sw.bb57
    i32 6, label %sw.bb57
    i32 7, label %sw.bb65
  ]

sw.bb:                                            ; preds = %if.then
  %arraydecay = getelementptr inbounds [256 x i32]* %diff, i64 0, i64 0
  %hadamard = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 6
  %35 = load i32* %hadamard, align 4, !tbaa !3
  %call = call i32 @SATD8X8(i32* %arraydecay, i32 %35) #8
  %arrayidx33 = getelementptr inbounds [256 x i32]* %diff, i64 0, i64 64
  %call35 = call i32 @SATD8X8(i32* %arrayidx33, i32 %35) #8
  %add36 = add nsw i32 %call35, %call
  %arrayidx37 = getelementptr inbounds [256 x i32]* %diff, i64 0, i64 128
  %call39 = call i32 @SATD8X8(i32* %arrayidx37, i32 %35) #8
  %add40 = add nsw i32 %add36, %call39
  %arrayidx41 = getelementptr inbounds [256 x i32]* %diff, i64 0, i64 192
  %call43 = call i32 @SATD8X8(i32* %arrayidx41, i32 %35) #8
  %add44 = add nsw i32 %add40, %call43
  br label %if.end

sw.bb45:                                          ; preds = %if.then, %if.then
  %arraydecay46 = getelementptr inbounds [256 x i32]* %diff, i64 0, i64 0
  %hadamard47 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 6
  %36 = load i32* %hadamard47, align 4, !tbaa !3
  %call48 = call i32 @SATD8X8(i32* %arraydecay46, i32 %36) #8
  %arrayidx49 = getelementptr inbounds [256 x i32]* %diff, i64 0, i64 64
  %call51 = call i32 @SATD8X8(i32* %arrayidx49, i32 %36) #8
  %add52 = add nsw i32 %call51, %call48
  br label %if.end

sw.bb53:                                          ; preds = %if.then
  %arraydecay54 = getelementptr inbounds [256 x i32]* %diff, i64 0, i64 0
  %hadamard55 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 6
  %37 = load i32* %hadamard55, align 4, !tbaa !3
  %call56 = call i32 @SATD8X8(i32* %arraydecay54, i32 %37) #8
  br label %if.end

sw.bb57:                                          ; preds = %if.then, %if.then
  %arraydecay58 = getelementptr inbounds [256 x i32]* %diff, i64 0, i64 0
  %hadamard59 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 6
  %38 = load i32* %hadamard59, align 4, !tbaa !3
  %call60 = call i32 @SATD(i32* %arraydecay58, i32 %38) #8
  %arrayidx61 = getelementptr inbounds [256 x i32]* %diff, i64 0, i64 16
  %call63 = call i32 @SATD(i32* %arrayidx61, i32 %38) #8
  %add64 = add nsw i32 %call63, %call60
  br label %if.end

sw.bb65:                                          ; preds = %if.then
  %arraydecay66 = getelementptr inbounds [256 x i32]* %diff, i64 0, i64 0
  %hadamard67 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 6
  %39 = load i32* %hadamard67, align 4, !tbaa !3
  %call68 = call i32 @SATD(i32* %arraydecay66, i32 %39) #8
  br label %if.end

for.body71:                                       ; preds = %for.body71, %for.body71.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body71.lr.ph ], [ %indvars.iv.next, %for.body71 ]
  %sad.0109 = phi i32 [ 0, %for.body71.lr.ph ], [ %add76, %for.body71 ]
  %arrayidx73 = getelementptr inbounds [256 x i32]* %diff, i64 0, i64 %indvars.iv
  %40 = load i32* %arrayidx73, align 4, !tbaa !3
  %idxprom74 = sext i32 %40 to i64
  %arrayidx75 = getelementptr inbounds i32* %34, i64 %idxprom74
  %41 = load i32* %arrayidx75, align 4, !tbaa !3
  %add76 = add nsw i32 %41, %sad.0109
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %mul
  br i1 %exitcond, label %if.end, label %for.body71

if.end:                                           ; preds = %for.cond69.preheader, %for.body71, %if.then, %sw.bb, %sw.bb45, %sw.bb53, %sw.bb57, %sw.bb65
  %sad.1 = phi i32 [ %call68, %sw.bb65 ], [ %add64, %sw.bb57 ], [ %call56, %sw.bb53 ], [ %add52, %sw.bb45 ], [ %add44, %sw.bb ], [ -1, %if.then ], [ 0, %for.cond69.preheader ], [ %add76, %for.body71 ]
  call void @llvm.lifetime.end(i64 1024, i8* %3) #3
  ret i32 %sad.1
}

; Function Attrs: nounwind optsize uwtable
define i32 @SubPelBlockMotionSearch(i16** nocapture %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* nocapture %mv_x, i16* nocapture %mv_y, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, double %lambda) #0 {
entry:
  %curr_diff = alloca [16 x [16 x i32]], align 16
  %diff = alloca [16 x i32], align 16
  %0 = bitcast [16 x [16 x i32]]* %curr_diff to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #3
  %1 = bitcast [16 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #3
  %mul = fmul double %lambda, 6.553600e+04
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %cmp = icmp eq i32 %blocktype, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i16* %mv_x, align 2, !tbaa !4
  %cmp3 = icmp eq i16 %2, 0
  br i1 %cmp3, label %land.lhs.true5, label %land.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %3 = load i16* %mv_y, align 2, !tbaa !4
  %cmp7 = icmp eq i16 %3, 0
  br i1 %cmp7, label %land.lhs.true9, label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %4 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %hadamard = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 6
  %5 = load i32* %hadamard, align 4, !tbaa !3
  %tobool = icmp eq i32 %5, 0
  br i1 %tobool, label %land.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true9
  %rdopt = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 85
  %6 = load i32* %rdopt, align 4, !tbaa !3
  %tobool11 = icmp eq i32 %6, 0
  br i1 %tobool11, label %land.lhs.true12, label %land.end

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 6
  %8 = load i32* %type, align 4, !tbaa !3
  %cmp16 = icmp eq i16 %ref, 0
  %not.cmp13 = icmp ne i32 %8, 1
  %.cmp16 = and i1 %cmp16, %not.cmp13
  br label %land.end

land.end:                                         ; preds = %land.lhs.true5, %land.lhs.true, %entry, %land.lhs.true12, %land.lhs.true10, %land.lhs.true9
  %9 = phi i1 [ false, %land.lhs.true10 ], [ false, %land.lhs.true9 ], [ %.cmp16, %land.lhs.true12 ], [ false, %entry ], [ false, %land.lhs.true ], [ false, %land.lhs.true5 ]
  %idxprom = sext i32 %blocktype to i64
  %10 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 20, i64 %idxprom, i64 0
  %11 = load i32* %arrayidx18, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 20, i64 %idxprom, i64 1
  %12 = load i32* %arrayidx22, align 4, !tbaa !3
  %shl = shl i32 %pic_pix_x, 2
  %shl23 = shl i32 %pic_pix_y, 2
  %hadamard24 = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 6
  %13 = load i32* %hadamard24, align 4, !tbaa !3
  %tobool25 = icmp eq i32 %13, 0
  br i1 %tobool25, label %cond.end38, label %cond.true30

cond.true30:                                      ; preds = %land.end
  %hadamardqpel = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 7
  %14 = load i32* %hadamardqpel, align 4, !tbaa !3
  %tobool26 = icmp ne i32 %14, 0
  %cond = zext i1 %tobool26 to i32
  %cmp31 = icmp slt i32 %search_pos2, 1
  %cond36 = select i1 %cmp31, i32 1, i32 %search_pos2
  br label %cond.end38

cond.end38:                                       ; preds = %land.end, %cond.true30
  %cond271229 = phi i32 [ %cond, %cond.true30 ], [ 1, %land.end ]
  %cond39 = phi i32 [ %cond36, %cond.true30 ], [ %search_pos2, %land.end ]
  %15 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 90
  %16 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool40 = icmp eq i32 %16, 0
  br i1 %tobool40, label %cond.end50, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %cond.end38
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 3
  %17 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom42 = sext i32 %17 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 51
  %18 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %18, i64 %idxprom42, i32 22
  %19 = load i32* %mb_field, align 4, !tbaa !3
  %tobool44 = icmp eq i32 %19, 0
  br i1 %tobool44, label %cond.end50, label %cond.true45

cond.true45:                                      ; preds = %land.lhs.true41
  %rem1110 = shl i32 %17, 1
  %20 = and i32 %rem1110, 2
  %21 = add i32 %20, 2
  br label %cond.end50

cond.end50:                                       ; preds = %land.lhs.true41, %cond.end38, %cond.true45
  %cond51 = phi i32 [ %21, %cond.true45 ], [ 0, %land.lhs.true41 ], [ 0, %cond.end38 ]
  %22 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %22, i64 0, i32 19
  %23 = load i32* %weighted_pred_flag, align 4, !tbaa !1
  %tobool52 = icmp eq i32 %23, 0
  br i1 %tobool52, label %lor.rhs, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %cond.end50
  %type54 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 6
  %24 = load i32* %type54, align 4, !tbaa !3
  switch i32 %24, label %lor.rhs [
    i32 0, label %lor.end
    i32 3, label %lor.end
  ]

lor.rhs:                                          ; preds = %land.lhs.true53, %cond.end50
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %22, i64 0, i32 20
  %25 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %tobool60 = icmp eq i32 %25, 0
  br i1 %tobool60, label %lor.end, label %land.rhs61

land.rhs61:                                       ; preds = %lor.rhs
  %type62 = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 6
  %26 = load i32* %type62, align 4, !tbaa !3
  %cmp63 = icmp eq i32 %26, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true53, %land.lhs.true53, %land.rhs61
  %27 = phi i1 [ %cmp63, %land.rhs61 ], [ true, %land.lhs.true53 ], [ true, %land.lhs.true53 ], [ false, %lor.rhs ]
  %hadamardqpel67 = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 7
  %28 = load i32* %hadamardqpel67, align 4, !tbaa !3
  %tobool68 = icmp eq i32 %28, 0
  %. = select i1 %tobool68, i32 %13, i32 0
  %cond76 = zext i1 %tobool68 to i32
  %idxprom77 = sext i16 %ref to i64
  %add78 = add nsw i32 %cond51, %list
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom79
  %29 = load %struct.storable_picture*** %arrayidx80, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds %struct.storable_picture** %29, i64 %idxprom77
  %30 = load %struct.storable_picture** %arrayidx81, align 8, !tbaa !0
  br i1 %27, label %land.lhs.true83, label %if.else

land.lhs.true83:                                  ; preds = %lor.end
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 48
  %31 = load i32* %UseWeightedReferenceME, align 4, !tbaa !3
  %tobool84 = icmp eq i32 %31, 0
  br i1 %tobool84, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true83
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture* %30, i64 0, i32 29
  br label %if.end

if.else:                                          ; preds = %land.lhs.true83, %lor.end
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %30, i64 0, i32 28
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ref_pic.0.in = phi i16*** [ %imgY_ups_w, %if.then ], [ %imgY_ups, %if.else ]
  %ref_pic.0 = load i16*** %ref_pic.0.in, align 8
  %size_x = getelementptr inbounds %struct.storable_picture* %30, i64 0, i32 18
  %32 = load i32* %size_x, align 4, !tbaa !3
  %size_y = getelementptr inbounds %struct.storable_picture* %30, i64 0, i32 19
  %33 = load i32* %size_y, align 4, !tbaa !3
  %sub = sub nsw i32 %32, %11
  %add96 = shl i32 %sub, 2
  %sub99 = sub nsw i32 %33, %12
  %add100 = shl i32 %sub99, 2
  %34 = load i16* %mv_x, align 2, !tbaa !4
  %shl103 = shl i16 %34, 2
  store i16 %shl103, i16* %mv_x, align 2, !tbaa !4
  %35 = load i16* %mv_y, align 2, !tbaa !4
  %shl106 = shl i16 %35, 2
  store i16 %shl106, i16* %mv_y, align 2, !tbaa !4
  %36 = load i16* %mv_x, align 2, !tbaa !4
  %conv108 = sext i16 %36 to i32
  %add109 = add nsw i32 %conv108, %shl
  %cmp110 = icmp sgt i32 %add109, 1
  br i1 %cmp110, label %land.lhs.true112, label %if.else130

land.lhs.true112:                                 ; preds = %if.end
  %sub1151108 = or i32 %add96, 2
  %cmp116 = icmp slt i32 %add109, %sub1151108
  br i1 %cmp116, label %land.lhs.true118, label %if.else130

land.lhs.true118:                                 ; preds = %land.lhs.true112
  %conv119 = sext i16 %shl106 to i32
  %add120 = add nsw i32 %conv119, %shl23
  %cmp121 = icmp sgt i32 %add120, 1
  br i1 %cmp121, label %land.lhs.true123, label %if.else130

land.lhs.true123:                                 ; preds = %land.lhs.true118
  %sub1261109 = or i32 %add100, 2
  %cmp127 = icmp slt i32 %add120, %sub1261109
  br i1 %cmp127, label %if.end131, label %if.else130

if.else130:                                       ; preds = %land.lhs.true123, %land.lhs.true118, %land.lhs.true112, %if.end
  br label %if.end131

if.end131:                                        ; preds = %land.lhs.true123, %if.else130
  %storemerge = phi i16 (i16**, i32, i32, i32, i32)* [ @UMVPelY_14, %if.else130 ], [ @FastPelY_14, %land.lhs.true123 ]
  store i16 (i16**, i32, i32, i32, i32)* %storemerge, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %cmp1321153 = icmp slt i32 %cond271229, %cond39
  br i1 %cmp1321153, label %for.body.lr.ph, label %if.end399

for.body.lr.ph:                                   ; preds = %if.end131
  %conv145 = sext i16 %pred_mv_x to i32
  %conv150 = sext i16 %pred_mv_y to i32
  %shr162 = ashr i32 %conv, 12
  %cmp1701146 = icmp sgt i32 %12, 0
  %arraydecay374 = getelementptr inbounds [16 x [16 x i32]]* %curr_diff, i64 0, i64 0
  %cmp1811140 = icmp sgt i32 %11, 0
  %arraydecay = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 1
  %incdec.ptr202 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 2
  %incdec.ptr211 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 3
  %incdec.ptr220 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 4
  %incdec.ptr231 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 5
  %incdec.ptr240 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 6
  %incdec.ptr249 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 7
  %incdec.ptr258 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 8
  %incdec.ptr269 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 9
  %incdec.ptr278 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 10
  %incdec.ptr287 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 11
  %incdec.ptr296 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 12
  %incdec.ptr307 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 13
  %incdec.ptr316 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 14
  %incdec.ptr325 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 15
  %37 = zext i32 %pic_pix_x to i64
  %38 = zext i32 %pic_pix_y to i64
  %39 = zext i32 %cond271229 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc382.for.body_crit_edge, %for.body.lr.ph
  %40 = phi i16 [ %shl106, %for.body.lr.ph ], [ %.pre1224, %for.inc382.for.body_crit_edge ]
  %41 = phi i16 [ %36, %for.body.lr.ph ], [ %.pre1223, %for.inc382.for.body_crit_edge ]
  %42 = phi %struct.InputParameters* [ %10, %for.body.lr.ph ], [ %110, %for.inc382.for.body_crit_edge ]
  %indvars.iv1221 = phi i64 [ %39, %for.body.lr.ph ], [ %indvars.iv.next1222, %for.inc382.for.body_crit_edge ]
  %min_mcost.addr.01157 = phi i32 [ %min_mcost, %for.body.lr.ph ], [ %min_mcost.addr.1, %for.inc382.for.body_crit_edge ]
  %best_pos.01154 = phi i32 [ 0, %for.body.lr.ph ], [ %best_pos.1, %for.inc382.for.body_crit_edge ]
  %conv134 = sext i16 %41 to i32
  %43 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx136 = getelementptr inbounds i32* %43, i64 %indvars.iv1221
  %44 = load i32* %arrayidx136, align 4, !tbaa !3
  %shl137 = shl i32 %44, 1
  %add138 = add nsw i32 %shl137, %conv134
  %conv139 = sext i16 %40 to i32
  %45 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx141 = getelementptr inbounds i32* %45, i64 %indvars.iv1221
  %46 = load i32* %arrayidx141, align 4, !tbaa !3
  %shl142 = shl i32 %46, 1
  %add143 = add nsw i32 %shl142, %conv139
  %sub146 = sub nsw i32 %add138, %conv145
  %idxprom147 = sext i32 %sub146 to i64
  %47 = load i32** @mvbits, align 8, !tbaa !0
  %arrayidx148 = getelementptr inbounds i32* %47, i64 %idxprom147
  %48 = load i32* %arrayidx148, align 4, !tbaa !3
  %sub151 = sub nsw i32 %add143, %conv150
  %idxprom152 = sext i32 %sub151 to i64
  %arrayidx153 = getelementptr inbounds i32* %47, i64 %idxprom152
  %49 = load i32* %arrayidx153, align 4, !tbaa !3
  %add154 = add nsw i32 %49, %48
  %mul155 = mul nsw i32 %add154, %conv
  %shr = ashr i32 %mul155, 16
  %50 = trunc i64 %indvars.iv1221 to i32
  %cmp158 = icmp eq i32 %50, 0
  %or.cond = and i1 %9, %cmp158
  %sub163 = select i1 %or.cond, i32 %shr162, i32 0
  %sub163.shr = sub nsw i32 %shr, %sub163
  %cmp165 = icmp slt i32 %sub163.shr, %min_mcost.addr.01157
  br i1 %cmp165, label %for.cond169.preheader, label %for.inc382

for.cond169.preheader:                            ; preds = %for.body
  br i1 %cmp1701146, label %for.body176, label %for.end370

for.body176:                                      ; preds = %for.cond169.preheader, %for.inc368
  %51 = phi %struct.InputParameters* [ %106, %for.inc368 ], [ %42, %for.cond169.preheader ]
  %indvars.iv1216 = phi i64 [ %indvars.iv.next1217, %for.inc368 ], [ 0, %for.cond169.preheader ]
  %indvar1197 = phi i32 [ %indvar.next1198, %for.inc368 ], [ 0, %for.cond169.preheader ]
  %mcost.11151 = phi i32 [ %mcost.4, %for.inc368 ], [ %sub163.shr, %for.cond169.preheader ]
  %52 = shl i32 %indvar1197, 2
  %53 = add nsw i64 %indvars.iv1216, %38
  %54 = trunc i64 %53 to i32
  %shl178 = shl i32 %54, 2
  %add179 = add nsw i32 %shl178, %add143
  br i1 %cmp1811140, label %for.body183.lr.ph, label %for.inc368

for.body183.lr.ph:                                ; preds = %for.body176
  %arrayidx188 = getelementptr inbounds i16** %orig_pic, i64 %indvars.iv1216
  %55 = or i64 %indvars.iv1216, 1
  %arrayidx223 = getelementptr inbounds i16** %orig_pic, i64 %55
  %add224 = add nsw i32 %add179, 4
  %56 = or i64 %indvars.iv1216, 2
  %arrayidx261 = getelementptr inbounds i16** %orig_pic, i64 %56
  %add262 = add nsw i32 %add179, 8
  %add2971107 = shl i64 %indvars.iv1216, 32
  %sext1227 = ashr exact i64 %add2971107, 32
  %idxprom298 = or i64 %sext1227, 3
  %arrayidx299 = getelementptr inbounds i16** %orig_pic, i64 %idxprom298
  %add300 = add nsw i32 %add179, 12
  br label %for.body183

for.body183:                                      ; preds = %for.inc365.for.body183_crit_edge, %for.body183.lr.ph
  %indvars.iv1211 = phi i64 [ 0, %for.body183.lr.ph ], [ %indvars.iv.next1212, %for.inc365.for.body183_crit_edge ]
  %indvar1194 = phi i64 [ 0, %for.body183.lr.ph ], [ %indvar.next1195, %for.inc365.for.body183_crit_edge ]
  %mcost.21143 = phi i32 [ %mcost.11151, %for.body183.lr.ph ], [ %mcost.3, %for.inc365.for.body183_crit_edge ]
  %57 = shl i64 %indvar1194, 2
  %58 = add nsw i64 %indvars.iv1211, %37
  %59 = trunc i64 %58 to i32
  %shl185 = shl i32 %59, 2
  %add186 = add nsw i32 %shl185, %add138
  %60 = load i16** %arrayidx188, align 8, !tbaa !0
  %arrayidx190 = getelementptr inbounds i16* %60, i64 %indvars.iv1211
  %61 = load i16* %arrayidx190, align 2, !tbaa !4
  %conv191 = zext i16 %61 to i32
  %62 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call = call zeroext i16 %62(i16** %ref_pic.0, i32 %add179, i32 %add186, i32 %33, i32 %32) #7
  %conv192 = zext i16 %call to i32
  %sub193 = sub nsw i32 %conv191, %conv192
  store i32 %sub193, i32* %arraydecay, align 16, !tbaa !3
  %63 = or i64 %indvars.iv1211, 1
  %arrayidx196 = getelementptr inbounds i16* %60, i64 %63
  %64 = load i16* %arrayidx196, align 2, !tbaa !4
  %conv197 = zext i16 %64 to i32
  %65 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add198 = add nsw i32 %add186, 4
  %call199 = call zeroext i16 %65(i16** %ref_pic.0, i32 %add179, i32 %add198, i32 %33, i32 %32) #7
  %conv200 = zext i16 %call199 to i32
  %sub201 = sub nsw i32 %conv197, %conv200
  store i32 %sub201, i32* %incdec.ptr, align 4, !tbaa !3
  %66 = or i64 %indvars.iv1211, 2
  %arrayidx205 = getelementptr inbounds i16* %60, i64 %66
  %67 = load i16* %arrayidx205, align 2, !tbaa !4
  %conv206 = zext i16 %67 to i32
  %68 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add207 = add nsw i32 %add186, 8
  %call208 = call zeroext i16 %68(i16** %ref_pic.0, i32 %add179, i32 %add207, i32 %33, i32 %32) #7
  %conv209 = zext i16 %call208 to i32
  %sub210 = sub nsw i32 %conv206, %conv209
  store i32 %sub210, i32* %incdec.ptr202, align 8, !tbaa !3
  %add2121104 = shl i64 %indvars.iv1211, 32
  %sext1228 = ashr exact i64 %add2121104, 32
  %idxprom213 = or i64 %sext1228, 3
  %arrayidx214 = getelementptr inbounds i16* %60, i64 %idxprom213
  %69 = load i16* %arrayidx214, align 2, !tbaa !4
  %conv215 = zext i16 %69 to i32
  %70 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add216 = add nsw i32 %add186, 12
  %call217 = call zeroext i16 %70(i16** %ref_pic.0, i32 %add179, i32 %add216, i32 %33, i32 %32) #7
  %conv218 = zext i16 %call217 to i32
  %sub219 = sub nsw i32 %conv215, %conv218
  store i32 %sub219, i32* %incdec.ptr211, align 4, !tbaa !3
  %71 = load i16** %arrayidx223, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds i16* %71, i64 %indvars.iv1211
  %72 = load i16* %arrayidx226, align 2, !tbaa !4
  %conv227 = zext i16 %72 to i32
  %73 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call228 = call zeroext i16 %73(i16** %ref_pic.0, i32 %add224, i32 %add186, i32 %33, i32 %32) #7
  %conv229 = zext i16 %call228 to i32
  %sub230 = sub nsw i32 %conv227, %conv229
  store i32 %sub230, i32* %incdec.ptr220, align 16, !tbaa !3
  %arrayidx234 = getelementptr inbounds i16* %71, i64 %63
  %74 = load i16* %arrayidx234, align 2, !tbaa !4
  %conv235 = zext i16 %74 to i32
  %75 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call237 = call zeroext i16 %75(i16** %ref_pic.0, i32 %add224, i32 %add198, i32 %33, i32 %32) #7
  %conv238 = zext i16 %call237 to i32
  %sub239 = sub nsw i32 %conv235, %conv238
  store i32 %sub239, i32* %incdec.ptr231, align 4, !tbaa !3
  %arrayidx243 = getelementptr inbounds i16* %71, i64 %66
  %76 = load i16* %arrayidx243, align 2, !tbaa !4
  %conv244 = zext i16 %76 to i32
  %77 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call246 = call zeroext i16 %77(i16** %ref_pic.0, i32 %add224, i32 %add207, i32 %33, i32 %32) #7
  %conv247 = zext i16 %call246 to i32
  %sub248 = sub nsw i32 %conv244, %conv247
  store i32 %sub248, i32* %incdec.ptr240, align 8, !tbaa !3
  %arrayidx252 = getelementptr inbounds i16* %71, i64 %idxprom213
  %78 = load i16* %arrayidx252, align 2, !tbaa !4
  %conv253 = zext i16 %78 to i32
  %79 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call255 = call zeroext i16 %79(i16** %ref_pic.0, i32 %add224, i32 %add216, i32 %33, i32 %32) #7
  %conv256 = zext i16 %call255 to i32
  %sub257 = sub nsw i32 %conv253, %conv256
  store i32 %sub257, i32* %incdec.ptr249, align 4, !tbaa !3
  %80 = load i16** %arrayidx261, align 8, !tbaa !0
  %arrayidx264 = getelementptr inbounds i16* %80, i64 %indvars.iv1211
  %81 = load i16* %arrayidx264, align 2, !tbaa !4
  %conv265 = zext i16 %81 to i32
  %82 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call266 = call zeroext i16 %82(i16** %ref_pic.0, i32 %add262, i32 %add186, i32 %33, i32 %32) #7
  %conv267 = zext i16 %call266 to i32
  %sub268 = sub nsw i32 %conv265, %conv267
  store i32 %sub268, i32* %incdec.ptr258, align 16, !tbaa !3
  %arrayidx272 = getelementptr inbounds i16* %80, i64 %63
  %83 = load i16* %arrayidx272, align 2, !tbaa !4
  %conv273 = zext i16 %83 to i32
  %84 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call275 = call zeroext i16 %84(i16** %ref_pic.0, i32 %add262, i32 %add198, i32 %33, i32 %32) #7
  %conv276 = zext i16 %call275 to i32
  %sub277 = sub nsw i32 %conv273, %conv276
  store i32 %sub277, i32* %incdec.ptr269, align 4, !tbaa !3
  %arrayidx281 = getelementptr inbounds i16* %80, i64 %66
  %85 = load i16* %arrayidx281, align 2, !tbaa !4
  %conv282 = zext i16 %85 to i32
  %86 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call284 = call zeroext i16 %86(i16** %ref_pic.0, i32 %add262, i32 %add207, i32 %33, i32 %32) #7
  %conv285 = zext i16 %call284 to i32
  %sub286 = sub nsw i32 %conv282, %conv285
  store i32 %sub286, i32* %incdec.ptr278, align 8, !tbaa !3
  %arrayidx290 = getelementptr inbounds i16* %80, i64 %idxprom213
  %87 = load i16* %arrayidx290, align 2, !tbaa !4
  %conv291 = zext i16 %87 to i32
  %88 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call293 = call zeroext i16 %88(i16** %ref_pic.0, i32 %add262, i32 %add216, i32 %33, i32 %32) #7
  %conv294 = zext i16 %call293 to i32
  %sub295 = sub nsw i32 %conv291, %conv294
  store i32 %sub295, i32* %incdec.ptr287, align 4, !tbaa !3
  %89 = load i16** %arrayidx299, align 8, !tbaa !0
  %arrayidx302 = getelementptr inbounds i16* %89, i64 %indvars.iv1211
  %90 = load i16* %arrayidx302, align 2, !tbaa !4
  %conv303 = zext i16 %90 to i32
  %91 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call304 = call zeroext i16 %91(i16** %ref_pic.0, i32 %add300, i32 %add186, i32 %33, i32 %32) #7
  %conv305 = zext i16 %call304 to i32
  %sub306 = sub nsw i32 %conv303, %conv305
  store i32 %sub306, i32* %incdec.ptr296, align 16, !tbaa !3
  %arrayidx310 = getelementptr inbounds i16* %89, i64 %63
  %92 = load i16* %arrayidx310, align 2, !tbaa !4
  %conv311 = zext i16 %92 to i32
  %93 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call313 = call zeroext i16 %93(i16** %ref_pic.0, i32 %add300, i32 %add198, i32 %33, i32 %32) #7
  %conv314 = zext i16 %call313 to i32
  %sub315 = sub nsw i32 %conv311, %conv314
  store i32 %sub315, i32* %incdec.ptr307, align 4, !tbaa !3
  %arrayidx319 = getelementptr inbounds i16* %89, i64 %66
  %94 = load i16* %arrayidx319, align 2, !tbaa !4
  %conv320 = zext i16 %94 to i32
  %95 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call322 = call zeroext i16 %95(i16** %ref_pic.0, i32 %add300, i32 %add207, i32 %33, i32 %32) #7
  %conv323 = zext i16 %call322 to i32
  %sub324 = sub nsw i32 %conv320, %conv323
  store i32 %sub324, i32* %incdec.ptr316, align 8, !tbaa !3
  %arrayidx328 = getelementptr inbounds i16* %89, i64 %idxprom213
  %96 = load i16* %arrayidx328, align 2, !tbaa !4
  %conv329 = zext i16 %96 to i32
  %97 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call331 = call zeroext i16 %97(i16** %ref_pic.0, i32 %add300, i32 %add216, i32 %33, i32 %32) #7
  %conv332 = zext i16 %call331 to i32
  %sub333 = sub nsw i32 %conv329, %conv332
  store i32 %sub333, i32* %incdec.ptr325, align 4, !tbaa !3
  %98 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %98, i64 0, i32 123
  %99 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool334 = icmp eq i32 %99, 0
  br i1 %tobool334, label %if.then335, label %for.cond348.preheader

if.then335:                                       ; preds = %for.body183
  %call337 = call i32 @SATD(i32* %arraydecay, i32 %.) #8
  %add338 = add nsw i32 %call337, %mcost.21143
  %cmp339 = icmp sgt i32 %add338, %min_mcost.addr.01157
  br i1 %cmp339, label %for.end370, label %for.inc365

for.cond348.preheader:                            ; preds = %for.body183, %for.cond348.preheader
  %indvars.iv1205 = phi i64 [ %indvars.iv.next1206, %for.cond348.preheader ], [ 0, %for.body183 ]
  %100 = trunc i64 %indvars.iv1205 to i32
  %101 = add i32 %52, %100
  %102 = sext i32 %101 to i64
  %103 = shl nsw i64 %102, 4
  %scevgep1196.sum = add i64 %57, %103
  %scevgep1199 = getelementptr [16 x [16 x i32]]* %curr_diff, i64 0, i64 0, i64 %scevgep1196.sum
  %scevgep11991200 = bitcast i32* %scevgep1199 to i8*
  %104 = shl i64 %indvars.iv1205, 2
  %scevgep1203 = getelementptr [16 x i32]* %diff, i64 0, i64 %104
  %scevgep12031204 = bitcast i32* %scevgep1203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep11991200, i8* %scevgep12031204, i64 16, i32 16, i1 false)
  %indvars.iv.next1206 = add i64 %indvars.iv1205, 1
  %lftr.wideiv1209 = trunc i64 %indvars.iv.next1206 to i32
  %exitcond1210 = icmp eq i32 %lftr.wideiv1209, 4
  br i1 %exitcond1210, label %for.inc365, label %for.cond348.preheader

for.inc365:                                       ; preds = %for.cond348.preheader, %if.then335
  %mcost.3 = phi i32 [ %add338, %if.then335 ], [ %mcost.21143, %for.cond348.preheader ]
  %indvars.iv.next1212 = add i64 %indvars.iv1211, 4
  %105 = trunc i64 %indvars.iv.next1212 to i32
  %cmp181 = icmp slt i32 %105, %11
  br i1 %cmp181, label %for.inc365.for.body183_crit_edge, label %for.inc368

for.inc365.for.body183_crit_edge:                 ; preds = %for.inc365
  %indvar.next1195 = add i64 %indvar1194, 1
  br label %for.body183

for.inc368:                                       ; preds = %for.inc365, %for.body176
  %106 = phi %struct.InputParameters* [ %51, %for.body176 ], [ %98, %for.inc365 ]
  %mcost.4 = phi i32 [ %mcost.11151, %for.body176 ], [ %mcost.3, %for.inc365 ]
  %indvars.iv.next1217 = add i64 %indvars.iv1216, 4
  %107 = trunc i64 %indvars.iv.next1217 to i32
  %cmp170 = icmp slt i32 %107, %12
  %indvar.next1198 = add i32 %indvar1197, 1
  br i1 %cmp170, label %for.body176, label %for.end370

for.end370:                                       ; preds = %if.then335, %for.inc368, %for.cond169.preheader
  %108 = phi %struct.InputParameters* [ %42, %for.cond169.preheader ], [ %106, %for.inc368 ], [ %98, %if.then335 ]
  %mcost.1.lcssa = phi i32 [ %sub163.shr, %for.cond169.preheader ], [ %mcost.4, %for.inc368 ], [ %add338, %if.then335 ]
  %AllowTransform8x8371 = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 123
  %109 = load i32* %AllowTransform8x8371, align 4, !tbaa !3
  %tobool372 = icmp eq i32 %109, 0
  br i1 %tobool372, label %if.end377, label %if.then373

if.then373:                                       ; preds = %for.end370
  %call375 = call i32 @find_SATD([16 x i32]* %arraydecay374, i32 %., i32 %blocktype) #8
  %add376 = add nsw i32 %call375, %mcost.1.lcssa
  br label %if.end377

if.end377:                                        ; preds = %for.end370, %if.then373
  %mcost.5 = phi i32 [ %add376, %if.then373 ], [ %mcost.1.lcssa, %for.end370 ]
  %cmp378 = icmp slt i32 %mcost.5, %min_mcost.addr.01157
  %pos.0.best_pos.0 = select i1 %cmp378, i32 %50, i32 %best_pos.01154
  %mcost.5.min_mcost.addr.0 = select i1 %cmp378, i32 %mcost.5, i32 %min_mcost.addr.01157
  br label %for.inc382

for.inc382:                                       ; preds = %if.end377, %for.body
  %110 = phi %struct.InputParameters* [ %42, %for.body ], [ %108, %if.end377 ]
  %best_pos.1 = phi i32 [ %best_pos.01154, %for.body ], [ %pos.0.best_pos.0, %if.end377 ]
  %min_mcost.addr.1 = phi i32 [ %min_mcost.addr.01157, %for.body ], [ %mcost.5.min_mcost.addr.0, %if.end377 ]
  %indvars.iv.next1222 = add i64 %indvars.iv1221, 1
  %111 = trunc i64 %indvars.iv.next1222 to i32
  %cmp132 = icmp slt i32 %111, %cond39
  br i1 %cmp132, label %for.inc382.for.body_crit_edge, label %for.end384

for.inc382.for.body_crit_edge:                    ; preds = %for.inc382
  %.pre1223 = load i16* %mv_x, align 2, !tbaa !4
  %.pre1224 = load i16* %mv_y, align 2, !tbaa !4
  br label %for.body

for.end384:                                       ; preds = %for.inc382
  %tobool385 = icmp eq i32 %best_pos.1, 0
  br i1 %tobool385, label %if.end399, label %if.then386

if.then386:                                       ; preds = %for.end384
  %idxprom387 = sext i32 %best_pos.1 to i64
  %112 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx388 = getelementptr inbounds i32* %112, i64 %idxprom387
  %113 = load i32* %arrayidx388, align 4, !tbaa !3
  %shl389 = shl i32 %113, 1
  %114 = load i16* %mv_x, align 2, !tbaa !4
  %conv3901100 = zext i16 %114 to i32
  %add391 = add nsw i32 %conv3901100, %shl389
  %conv392 = trunc i32 %add391 to i16
  store i16 %conv392, i16* %mv_x, align 2, !tbaa !4
  %115 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx394 = getelementptr inbounds i32* %115, i64 %idxprom387
  %116 = load i32* %arrayidx394, align 4, !tbaa !3
  %shl395 = shl i32 %116, 1
  %117 = load i16* %mv_y, align 2, !tbaa !4
  %conv3961101 = zext i16 %117 to i32
  %add397 = add nsw i32 %conv3961101, %shl395
  %conv398 = trunc i32 %add397 to i16
  store i16 %conv398, i16* %mv_y, align 2, !tbaa !4
  br label %if.end399

if.end399:                                        ; preds = %if.end131, %for.end384, %if.then386
  %min_mcost.addr.0.lcssa1237 = phi i32 [ %min_mcost.addr.1, %if.then386 ], [ %min_mcost.addr.1, %for.end384 ], [ %min_mcost, %if.end131 ]
  %118 = phi %struct.InputParameters* [ %110, %if.then386 ], [ %110, %for.end384 ], [ %10, %if.end131 ]
  %hadamardqpel400 = getelementptr inbounds %struct.InputParameters* %118, i64 0, i32 7
  %119 = load i32* %hadamardqpel400, align 4, !tbaa !3
  %tobool401 = icmp eq i32 %119, 0
  %min_mcost.addr.0. = select i1 %tobool401, i32 %min_mcost.addr.0.lcssa1237, i32 2147483647
  %120 = load i16* %mv_x, align 2, !tbaa !4
  %conv404 = sext i16 %120 to i32
  %add405 = add nsw i32 %conv404, %shl
  %cmp406 = icmp sgt i32 %add405, 1
  br i1 %cmp406, label %land.lhs.true408, label %if.else426

land.lhs.true408:                                 ; preds = %if.end399
  %sub4111098 = or i32 %add96, 3
  %cmp412 = icmp slt i32 %add405, %sub4111098
  br i1 %cmp412, label %land.lhs.true414, label %if.else426

land.lhs.true414:                                 ; preds = %land.lhs.true408
  %121 = load i16* %mv_y, align 2, !tbaa !4
  %conv415 = sext i16 %121 to i32
  %add416 = add nsw i32 %conv415, %shl23
  %cmp417 = icmp sgt i32 %add416, 1
  br i1 %cmp417, label %land.lhs.true419, label %if.else426

land.lhs.true419:                                 ; preds = %land.lhs.true414
  %sub4221099 = or i32 %add100, 3
  %cmp423 = icmp slt i32 %add416, %sub4221099
  br i1 %cmp423, label %if.end427, label %if.else426

if.else426:                                       ; preds = %land.lhs.true419, %land.lhs.true414, %land.lhs.true408, %if.end399
  br label %if.end427

if.end427:                                        ; preds = %land.lhs.true419, %if.else426
  %storemerge1089 = phi i16 (i16**, i32, i32, i32, i32)* [ @UMVPelY_14, %if.else426 ], [ @FastPelY_14, %land.lhs.true419 ]
  store i16 (i16**, i32, i32, i32, i32)* %storemerge1089, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %cmp4291129 = icmp slt i32 %cond76, %search_pos4
  br i1 %cmp4291129, label %for.body431.lr.ph, label %if.end695

for.body431.lr.ph:                                ; preds = %if.end427
  %conv441 = sext i16 %pred_mv_x to i32
  %conv446 = sext i16 %pred_mv_y to i32
  %cmp4581122 = icmp sgt i32 %12, 0
  %arraydecay671 = getelementptr inbounds [16 x [16 x i32]]* %curr_diff, i64 0, i64 0
  %cmp4701117 = icmp sgt i32 %11, 0
  %arraydecay476 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 0
  %incdec.ptr485 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 1
  %incdec.ptr494 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 2
  %incdec.ptr503 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 3
  %incdec.ptr512 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 4
  %incdec.ptr523 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 5
  %incdec.ptr532 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 6
  %incdec.ptr541 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 7
  %incdec.ptr550 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 8
  %incdec.ptr561 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 9
  %incdec.ptr570 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 10
  %incdec.ptr579 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 11
  %incdec.ptr588 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 12
  %incdec.ptr599 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 13
  %incdec.ptr608 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 14
  %incdec.ptr617 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 15
  %122 = zext i32 %pic_pix_x to i64
  %123 = zext i32 %pic_pix_y to i64
  %124 = zext i1 %tobool68 to i64
  br label %for.body431

for.body431:                                      ; preds = %for.inc680.for.body431_crit_edge, %for.body431.lr.ph
  %125 = phi i16 [ %120, %for.body431.lr.ph ], [ %.pre, %for.inc680.for.body431_crit_edge ]
  %126 = phi %struct.InputParameters* [ %118, %for.body431.lr.ph ], [ %197, %for.inc680.for.body431_crit_edge ]
  %indvars.iv1183 = phi i64 [ %124, %for.body431.lr.ph ], [ %indvars.iv.next1184, %for.inc680.for.body431_crit_edge ]
  %min_mcost.addr.31133 = phi i32 [ %min_mcost.addr.0., %for.body431.lr.ph ], [ %min_mcost.addr.4, %for.inc680.for.body431_crit_edge ]
  %pos.11131 = phi i32 [ %cond76, %for.body431.lr.ph ], [ %inc681, %for.inc680.for.body431_crit_edge ]
  %best_pos.21130 = phi i32 [ 0, %for.body431.lr.ph ], [ %best_pos.3, %for.inc680.for.body431_crit_edge ]
  %conv432 = sext i16 %125 to i32
  %127 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx434 = getelementptr inbounds i32* %127, i64 %indvars.iv1183
  %128 = load i32* %arrayidx434, align 4, !tbaa !3
  %add435 = add nsw i32 %128, %conv432
  %129 = load i16* %mv_y, align 2, !tbaa !4
  %conv436 = sext i16 %129 to i32
  %130 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx438 = getelementptr inbounds i32* %130, i64 %indvars.iv1183
  %131 = load i32* %arrayidx438, align 4, !tbaa !3
  %add439 = add nsw i32 %131, %conv436
  %sub442 = sub nsw i32 %add435, %conv441
  %idxprom443 = sext i32 %sub442 to i64
  %132 = load i32** @mvbits, align 8, !tbaa !0
  %arrayidx444 = getelementptr inbounds i32* %132, i64 %idxprom443
  %133 = load i32* %arrayidx444, align 4, !tbaa !3
  %sub447 = sub nsw i32 %add439, %conv446
  %idxprom448 = sext i32 %sub447 to i64
  %arrayidx449 = getelementptr inbounds i32* %132, i64 %idxprom448
  %134 = load i32* %arrayidx449, align 4, !tbaa !3
  %add450 = add nsw i32 %134, %133
  %mul451 = mul nsw i32 %add450, %conv
  %shr452 = ashr i32 %mul451, 16
  %cmp453 = icmp slt i32 %shr452, %min_mcost.addr.31133
  br i1 %cmp453, label %for.cond457.preheader, label %for.inc680

for.cond457.preheader:                            ; preds = %for.body431
  br i1 %cmp4581122, label %for.body465, label %for.end667

for.body465:                                      ; preds = %for.cond457.preheader, %for.inc665
  %135 = phi %struct.InputParameters* [ %191, %for.inc665 ], [ %126, %for.cond457.preheader ]
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %for.inc665 ], [ 0, %for.cond457.preheader ]
  %indvar1163 = phi i32 [ %indvar.next1164, %for.inc665 ], [ 0, %for.cond457.preheader ]
  %mcost.61127 = phi i32 [ %mcost.9, %for.inc665 ], [ %shr452, %for.cond457.preheader ]
  %136 = shl i32 %indvar1163, 2
  %137 = add nsw i64 %indvars.iv1178, %123
  %138 = trunc i64 %137 to i32
  %shl467 = shl i32 %138, 2
  %add468 = add nsw i32 %shl467, %add439
  br i1 %cmp4701117, label %for.body472.lr.ph, label %for.inc665

for.body472.lr.ph:                                ; preds = %for.body465
  %arrayidx478 = getelementptr inbounds i16** %orig_pic, i64 %indvars.iv1178
  %139 = or i64 %indvars.iv1178, 1
  %arrayidx515 = getelementptr inbounds i16** %orig_pic, i64 %139
  %add516 = add nsw i32 %add468, 4
  %140 = or i64 %indvars.iv1178, 2
  %arrayidx553 = getelementptr inbounds i16** %orig_pic, i64 %140
  %add554 = add nsw i32 %add468, 8
  %add5891097 = shl i64 %indvars.iv1178, 32
  %sext = ashr exact i64 %add5891097, 32
  %idxprom590 = or i64 %sext, 3
  %arrayidx591 = getelementptr inbounds i16** %orig_pic, i64 %idxprom590
  %add592 = add nsw i32 %add468, 12
  br label %for.body472

for.body472:                                      ; preds = %for.inc662.for.body472_crit_edge, %for.body472.lr.ph
  %indvars.iv1173 = phi i64 [ 0, %for.body472.lr.ph ], [ %indvars.iv.next1174, %for.inc662.for.body472_crit_edge ]
  %indvar = phi i64 [ 0, %for.body472.lr.ph ], [ %indvar.next, %for.inc662.for.body472_crit_edge ]
  %mcost.71120 = phi i32 [ %mcost.61127, %for.body472.lr.ph ], [ %mcost.8, %for.inc662.for.body472_crit_edge ]
  %141 = shl i64 %indvar, 2
  %142 = add nsw i64 %indvars.iv1173, %122
  %143 = trunc i64 %142 to i32
  %shl474 = shl i32 %143, 2
  %add475 = add nsw i32 %shl474, %add435
  %144 = load i16** %arrayidx478, align 8, !tbaa !0
  %arrayidx480 = getelementptr inbounds i16* %144, i64 %indvars.iv1173
  %145 = load i16* %arrayidx480, align 2, !tbaa !4
  %conv481 = zext i16 %145 to i32
  %146 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call482 = call zeroext i16 %146(i16** %ref_pic.0, i32 %add468, i32 %add475, i32 %33, i32 %32) #7
  %conv483 = zext i16 %call482 to i32
  %sub484 = sub nsw i32 %conv481, %conv483
  store i32 %sub484, i32* %arraydecay476, align 16, !tbaa !3
  %147 = or i64 %indvars.iv1173, 1
  %arrayidx488 = getelementptr inbounds i16* %144, i64 %147
  %148 = load i16* %arrayidx488, align 2, !tbaa !4
  %conv489 = zext i16 %148 to i32
  %149 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add490 = add nsw i32 %add475, 4
  %call491 = call zeroext i16 %149(i16** %ref_pic.0, i32 %add468, i32 %add490, i32 %33, i32 %32) #7
  %conv492 = zext i16 %call491 to i32
  %sub493 = sub nsw i32 %conv489, %conv492
  store i32 %sub493, i32* %incdec.ptr485, align 4, !tbaa !3
  %150 = or i64 %indvars.iv1173, 2
  %arrayidx497 = getelementptr inbounds i16* %144, i64 %150
  %151 = load i16* %arrayidx497, align 2, !tbaa !4
  %conv498 = zext i16 %151 to i32
  %152 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add499 = add nsw i32 %add475, 8
  %call500 = call zeroext i16 %152(i16** %ref_pic.0, i32 %add468, i32 %add499, i32 %33, i32 %32) #7
  %conv501 = zext i16 %call500 to i32
  %sub502 = sub nsw i32 %conv498, %conv501
  store i32 %sub502, i32* %incdec.ptr494, align 8, !tbaa !3
  %add5041094 = shl i64 %indvars.iv1173, 32
  %sext1226 = ashr exact i64 %add5041094, 32
  %idxprom505 = or i64 %sext1226, 3
  %arrayidx506 = getelementptr inbounds i16* %144, i64 %idxprom505
  %153 = load i16* %arrayidx506, align 2, !tbaa !4
  %conv507 = zext i16 %153 to i32
  %154 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add508 = add nsw i32 %add475, 12
  %call509 = call zeroext i16 %154(i16** %ref_pic.0, i32 %add468, i32 %add508, i32 %33, i32 %32) #7
  %conv510 = zext i16 %call509 to i32
  %sub511 = sub nsw i32 %conv507, %conv510
  store i32 %sub511, i32* %incdec.ptr503, align 4, !tbaa !3
  %155 = load i16** %arrayidx515, align 8, !tbaa !0
  %arrayidx518 = getelementptr inbounds i16* %155, i64 %indvars.iv1173
  %156 = load i16* %arrayidx518, align 2, !tbaa !4
  %conv519 = zext i16 %156 to i32
  %157 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call520 = call zeroext i16 %157(i16** %ref_pic.0, i32 %add516, i32 %add475, i32 %33, i32 %32) #7
  %conv521 = zext i16 %call520 to i32
  %sub522 = sub nsw i32 %conv519, %conv521
  store i32 %sub522, i32* %incdec.ptr512, align 16, !tbaa !3
  %arrayidx526 = getelementptr inbounds i16* %155, i64 %147
  %158 = load i16* %arrayidx526, align 2, !tbaa !4
  %conv527 = zext i16 %158 to i32
  %159 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call529 = call zeroext i16 %159(i16** %ref_pic.0, i32 %add516, i32 %add490, i32 %33, i32 %32) #7
  %conv530 = zext i16 %call529 to i32
  %sub531 = sub nsw i32 %conv527, %conv530
  store i32 %sub531, i32* %incdec.ptr523, align 4, !tbaa !3
  %arrayidx535 = getelementptr inbounds i16* %155, i64 %150
  %160 = load i16* %arrayidx535, align 2, !tbaa !4
  %conv536 = zext i16 %160 to i32
  %161 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call538 = call zeroext i16 %161(i16** %ref_pic.0, i32 %add516, i32 %add499, i32 %33, i32 %32) #7
  %conv539 = zext i16 %call538 to i32
  %sub540 = sub nsw i32 %conv536, %conv539
  store i32 %sub540, i32* %incdec.ptr532, align 8, !tbaa !3
  %arrayidx544 = getelementptr inbounds i16* %155, i64 %idxprom505
  %162 = load i16* %arrayidx544, align 2, !tbaa !4
  %conv545 = zext i16 %162 to i32
  %163 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call547 = call zeroext i16 %163(i16** %ref_pic.0, i32 %add516, i32 %add508, i32 %33, i32 %32) #7
  %conv548 = zext i16 %call547 to i32
  %sub549 = sub nsw i32 %conv545, %conv548
  store i32 %sub549, i32* %incdec.ptr541, align 4, !tbaa !3
  %164 = load i16** %arrayidx553, align 8, !tbaa !0
  %arrayidx556 = getelementptr inbounds i16* %164, i64 %indvars.iv1173
  %165 = load i16* %arrayidx556, align 2, !tbaa !4
  %conv557 = zext i16 %165 to i32
  %166 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call558 = call zeroext i16 %166(i16** %ref_pic.0, i32 %add554, i32 %add475, i32 %33, i32 %32) #7
  %conv559 = zext i16 %call558 to i32
  %sub560 = sub nsw i32 %conv557, %conv559
  store i32 %sub560, i32* %incdec.ptr550, align 16, !tbaa !3
  %arrayidx564 = getelementptr inbounds i16* %164, i64 %147
  %167 = load i16* %arrayidx564, align 2, !tbaa !4
  %conv565 = zext i16 %167 to i32
  %168 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call567 = call zeroext i16 %168(i16** %ref_pic.0, i32 %add554, i32 %add490, i32 %33, i32 %32) #7
  %conv568 = zext i16 %call567 to i32
  %sub569 = sub nsw i32 %conv565, %conv568
  store i32 %sub569, i32* %incdec.ptr561, align 4, !tbaa !3
  %arrayidx573 = getelementptr inbounds i16* %164, i64 %150
  %169 = load i16* %arrayidx573, align 2, !tbaa !4
  %conv574 = zext i16 %169 to i32
  %170 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call576 = call zeroext i16 %170(i16** %ref_pic.0, i32 %add554, i32 %add499, i32 %33, i32 %32) #7
  %conv577 = zext i16 %call576 to i32
  %sub578 = sub nsw i32 %conv574, %conv577
  store i32 %sub578, i32* %incdec.ptr570, align 8, !tbaa !3
  %arrayidx582 = getelementptr inbounds i16* %164, i64 %idxprom505
  %171 = load i16* %arrayidx582, align 2, !tbaa !4
  %conv583 = zext i16 %171 to i32
  %172 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call585 = call zeroext i16 %172(i16** %ref_pic.0, i32 %add554, i32 %add508, i32 %33, i32 %32) #7
  %conv586 = zext i16 %call585 to i32
  %sub587 = sub nsw i32 %conv583, %conv586
  store i32 %sub587, i32* %incdec.ptr579, align 4, !tbaa !3
  %173 = load i16** %arrayidx591, align 8, !tbaa !0
  %arrayidx594 = getelementptr inbounds i16* %173, i64 %indvars.iv1173
  %174 = load i16* %arrayidx594, align 2, !tbaa !4
  %conv595 = zext i16 %174 to i32
  %175 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call596 = call zeroext i16 %175(i16** %ref_pic.0, i32 %add592, i32 %add475, i32 %33, i32 %32) #7
  %conv597 = zext i16 %call596 to i32
  %sub598 = sub nsw i32 %conv595, %conv597
  store i32 %sub598, i32* %incdec.ptr588, align 16, !tbaa !3
  %arrayidx602 = getelementptr inbounds i16* %173, i64 %147
  %176 = load i16* %arrayidx602, align 2, !tbaa !4
  %conv603 = zext i16 %176 to i32
  %177 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call605 = call zeroext i16 %177(i16** %ref_pic.0, i32 %add592, i32 %add490, i32 %33, i32 %32) #7
  %conv606 = zext i16 %call605 to i32
  %sub607 = sub nsw i32 %conv603, %conv606
  store i32 %sub607, i32* %incdec.ptr599, align 4, !tbaa !3
  %arrayidx611 = getelementptr inbounds i16* %173, i64 %150
  %178 = load i16* %arrayidx611, align 2, !tbaa !4
  %conv612 = zext i16 %178 to i32
  %179 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call614 = call zeroext i16 %179(i16** %ref_pic.0, i32 %add592, i32 %add499, i32 %33, i32 %32) #7
  %conv615 = zext i16 %call614 to i32
  %sub616 = sub nsw i32 %conv612, %conv615
  store i32 %sub616, i32* %incdec.ptr608, align 8, !tbaa !3
  %arrayidx620 = getelementptr inbounds i16* %173, i64 %idxprom505
  %180 = load i16* %arrayidx620, align 2, !tbaa !4
  %conv621 = zext i16 %180 to i32
  %181 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call623 = call zeroext i16 %181(i16** %ref_pic.0, i32 %add592, i32 %add508, i32 %33, i32 %32) #7
  %conv624 = zext i16 %call623 to i32
  %sub625 = sub nsw i32 %conv621, %conv624
  store i32 %sub625, i32* %incdec.ptr617, align 4, !tbaa !3
  %182 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8626 = getelementptr inbounds %struct.InputParameters* %182, i64 0, i32 123
  %183 = load i32* %AllowTransform8x8626, align 4, !tbaa !3
  %tobool627 = icmp eq i32 %183, 0
  br i1 %tobool627, label %if.then628, label %for.cond642.preheader

if.then628:                                       ; preds = %for.body472
  %hadamard630 = getelementptr inbounds %struct.InputParameters* %182, i64 0, i32 6
  %184 = load i32* %hadamard630, align 4, !tbaa !3
  %call631 = call i32 @SATD(i32* %arraydecay476, i32 %184) #8
  %add632 = add nsw i32 %call631, %mcost.71120
  %cmp633 = icmp sgt i32 %add632, %min_mcost.addr.31133
  br i1 %cmp633, label %for.end667, label %for.inc662

for.cond642.preheader:                            ; preds = %for.body472, %for.cond642.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond642.preheader ], [ 0, %for.body472 ]
  %185 = trunc i64 %indvars.iv to i32
  %186 = add i32 %136, %185
  %187 = sext i32 %186 to i64
  %188 = shl nsw i64 %187, 4
  %scevgep.sum = add i64 %141, %188
  %scevgep1165 = getelementptr [16 x [16 x i32]]* %curr_diff, i64 0, i64 0, i64 %scevgep.sum
  %scevgep11651166 = bitcast i32* %scevgep1165 to i8*
  %189 = shl i64 %indvars.iv, 2
  %scevgep1169 = getelementptr [16 x i32]* %diff, i64 0, i64 %189
  %scevgep11691170 = bitcast i32* %scevgep1169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep11651166, i8* %scevgep11691170, i64 16, i32 16, i1 false)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc662, label %for.cond642.preheader

for.inc662:                                       ; preds = %for.cond642.preheader, %if.then628
  %mcost.8 = phi i32 [ %add632, %if.then628 ], [ %mcost.71120, %for.cond642.preheader ]
  %indvars.iv.next1174 = add i64 %indvars.iv1173, 4
  %190 = trunc i64 %indvars.iv.next1174 to i32
  %cmp470 = icmp slt i32 %190, %11
  br i1 %cmp470, label %for.inc662.for.body472_crit_edge, label %for.inc665

for.inc662.for.body472_crit_edge:                 ; preds = %for.inc662
  %indvar.next = add i64 %indvar, 1
  br label %for.body472

for.inc665:                                       ; preds = %for.inc662, %for.body465
  %191 = phi %struct.InputParameters* [ %135, %for.body465 ], [ %182, %for.inc662 ]
  %mcost.9 = phi i32 [ %mcost.61127, %for.body465 ], [ %mcost.8, %for.inc662 ]
  %indvars.iv.next1179 = add i64 %indvars.iv1178, 4
  %192 = trunc i64 %indvars.iv.next1179 to i32
  %cmp458 = icmp slt i32 %192, %12
  %indvar.next1164 = add i32 %indvar1163, 1
  br i1 %cmp458, label %for.body465, label %for.end667

for.end667:                                       ; preds = %if.then628, %for.inc665, %for.cond457.preheader
  %193 = phi %struct.InputParameters* [ %126, %for.cond457.preheader ], [ %191, %for.inc665 ], [ %182, %if.then628 ]
  %mcost.6.lcssa = phi i32 [ %shr452, %for.cond457.preheader ], [ %mcost.9, %for.inc665 ], [ %add632, %if.then628 ]
  %AllowTransform8x8668 = getelementptr inbounds %struct.InputParameters* %193, i64 0, i32 123
  %194 = load i32* %AllowTransform8x8668, align 4, !tbaa !3
  %tobool669 = icmp eq i32 %194, 0
  br i1 %tobool669, label %if.end675, label %if.then670

if.then670:                                       ; preds = %for.end667
  %hadamard672 = getelementptr inbounds %struct.InputParameters* %193, i64 0, i32 6
  %195 = load i32* %hadamard672, align 4, !tbaa !3
  %call673 = call i32 @find_SATD([16 x i32]* %arraydecay671, i32 %195, i32 %blocktype) #8
  %add674 = add nsw i32 %call673, %mcost.6.lcssa
  br label %if.end675

if.end675:                                        ; preds = %for.end667, %if.then670
  %mcost.10 = phi i32 [ %add674, %if.then670 ], [ %mcost.6.lcssa, %for.end667 ]
  %cmp676 = icmp slt i32 %mcost.10, %min_mcost.addr.31133
  %196 = trunc i64 %indvars.iv1183 to i32
  %pos.1.best_pos.2 = select i1 %cmp676, i32 %196, i32 %best_pos.21130
  %mcost.10.min_mcost.addr.3 = select i1 %cmp676, i32 %mcost.10, i32 %min_mcost.addr.31133
  br label %for.inc680

for.inc680:                                       ; preds = %if.end675, %for.body431
  %197 = phi %struct.InputParameters* [ %126, %for.body431 ], [ %193, %if.end675 ]
  %best_pos.3 = phi i32 [ %best_pos.21130, %for.body431 ], [ %pos.1.best_pos.2, %if.end675 ]
  %min_mcost.addr.4 = phi i32 [ %min_mcost.addr.31133, %for.body431 ], [ %mcost.10.min_mcost.addr.3, %if.end675 ]
  %inc681 = add nsw i32 %pos.11131, 1
  %exitcond1186 = icmp eq i32 %inc681, %search_pos4
  br i1 %exitcond1186, label %for.end682, label %for.inc680.for.body431_crit_edge

for.inc680.for.body431_crit_edge:                 ; preds = %for.inc680
  %indvars.iv.next1184 = add i64 %indvars.iv1183, 1
  %.pre = load i16* %mv_x, align 2, !tbaa !4
  br label %for.body431

for.end682:                                       ; preds = %for.inc680
  %tobool683 = icmp eq i32 %best_pos.3, 0
  br i1 %tobool683, label %if.end695, label %if.then684

if.then684:                                       ; preds = %for.end682
  %idxprom685 = sext i32 %best_pos.3 to i64
  %198 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx686 = getelementptr inbounds i32* %198, i64 %idxprom685
  %199 = load i32* %arrayidx686, align 4, !tbaa !3
  %200 = load i16* %mv_x, align 2, !tbaa !4
  %conv6871090 = zext i16 %200 to i32
  %add688 = add nsw i32 %conv6871090, %199
  %conv689 = trunc i32 %add688 to i16
  store i16 %conv689, i16* %mv_x, align 2, !tbaa !4
  %201 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx691 = getelementptr inbounds i32* %201, i64 %idxprom685
  %202 = load i32* %arrayidx691, align 4, !tbaa !3
  %203 = load i16* %mv_y, align 2, !tbaa !4
  %conv6921091 = zext i16 %203 to i32
  %add693 = add nsw i32 %conv6921091, %202
  %conv694 = trunc i32 %add693 to i16
  store i16 %conv694, i16* %mv_y, align 2, !tbaa !4
  br label %if.end695

if.end695:                                        ; preds = %if.end427, %for.end682, %if.then684
  %min_mcost.addr.3.lcssa1245 = phi i32 [ %min_mcost.addr.4, %for.end682 ], [ %min_mcost.addr.4, %if.then684 ], [ %min_mcost.addr.0., %if.end427 ]
  call void @llvm.lifetime.end(i64 64, i8* %1) #3
  call void @llvm.lifetime.end(i64 1024, i8* %0) #3
  ret i32 %min_mcost.addr.3.lcssa1245
}

; Function Attrs: optsize
declare zeroext i16 @FastPelY_14(i16**, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare zeroext i16 @UMVPelY_14(i16**, i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @FullPelBlockMotionBiPred(i16** nocapture %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i32 %iteration, i16 signext %pred_mv_x1, i16 signext %pred_mv_y1, i16 signext %pred_mv_x2, i16 signext %pred_mv_y2, i16* nocapture %mv_x, i16* nocapture %mv_y, i16* nocapture %s_mv_x, i16* nocapture %s_mv_y, i32 %search_range, i32 %min_mcost, double %lambda) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %1 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %4 = load i32* %mb_field, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %rem839 = shl i32 %2, 1
  %5 = and i32 %rem839, 2
  %6 = add i32 %5, 2
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ]
  %idxprom5 = sext i16 %ref to i64
  %add = add nsw i32 %cond4, %list
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom6
  %7 = load %struct.storable_picture*** %arrayidx7, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds %struct.storable_picture** %7, i64 %idxprom5
  %8 = load %struct.storable_picture** %arrayidx8, align 8, !tbaa !0
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 26
  %9 = load i16** %imgY_11, align 8, !tbaa !0
  %cmp = icmp eq i32 %list, 0
  %add10799 = or i32 %cond4, 1
  %cond13 = select i1 %cmp, i32 %add10799, i32 %cond4
  %idxprom14800 = zext i32 %cond13 to i64
  %arrayidx15 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom14800
  %10 = load %struct.storable_picture*** %arrayidx15, align 8, !tbaa !0
  %11 = load %struct.storable_picture** %10, align 8, !tbaa !0
  %imgY_1117 = getelementptr inbounds %struct.storable_picture* %11, i64 0, i32 26
  %12 = load i16** %imgY_1117, align 8, !tbaa !0
  %size_x = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 18
  %13 = load i32* %size_x, align 4, !tbaa !3
  %size_y = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 19
  %14 = load i32* %size_y, align 4, !tbaa !3
  %mul = shl nsw i32 %search_range, 1
  %add28801 = or i32 %mul, 1
  %mul31 = mul nsw i32 %add28801, %add28801
  %mul32 = fmul double %lambda, 6.553600e+04
  %add33 = fadd double %mul32, 5.000000e-01
  %conv = fptosi double %add33 to i32
  %idxprom34 = sext i32 %blocktype to i64
  %15 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds %struct.InputParameters* %15, i64 0, i32 20, i64 %idxprom34, i64 1
  %16 = load i32* %arrayidx36, align 4, !tbaa !3
  %arrayidx40 = getelementptr inbounds %struct.InputParameters* %15, i64 0, i32 20, i64 %idxprom34, i64 0
  %17 = load i32* %arrayidx40, align 4, !tbaa !3
  %shr = ashr i32 %17, 2
  %shl = shl i32 %pic_pix_x, 2
  %conv41 = sext i16 %pred_mv_x1 to i32
  %shl43 = shl i32 %pic_pix_y, 2
  %conv44 = sext i16 %pred_mv_y1 to i32
  %conv47 = sext i16 %pred_mv_x2 to i32
  %conv50 = sext i16 %pred_mv_y2 to i32
  %18 = load i16* %mv_x, align 2, !tbaa !4
  %conv52802 = zext i16 %18 to i32
  %add53 = add nsw i32 %conv52802, %pic_pix_x
  %19 = load i16* %mv_y, align 2, !tbaa !4
  %conv55803 = zext i16 %19 to i32
  %add56 = add nsw i32 %conv55803, %pic_pix_y
  %20 = load i16* %s_mv_x, align 2, !tbaa !4
  %conv58804 = zext i16 %20 to i32
  %add59 = add nsw i32 %conv58804, %pic_pix_x
  %21 = load i16* %s_mv_y, align 2, !tbaa !4
  %conv61805 = zext i16 %21 to i32
  %add62 = add nsw i32 %conv61805, %pic_pix_y
  %22 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %22, i64 0, i32 20
  %23 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %cmp64 = icmp ne i32 %23, 0
  br i1 %cmp64, label %cond.true69, label %cond.end141

cond.true69:                                      ; preds = %cond.end
  br i1 %cmp, label %cond.true149, label %cond.false156

cond.end141:                                      ; preds = %cond.end
  %24 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %shl90 = shl i32 1, %24
  br label %cond.end164

cond.true149:                                     ; preds = %cond.true69
  %idxprom74838 = zext i32 %cond4 to i64
  %25 = load i32***** @wbp_weight, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds i32**** %25, i64 %idxprom74838
  %26 = load i32**** %arrayidx75, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i32*** %26, i64 %idxprom5
  %27 = load i32*** %arrayidx76, align 8, !tbaa !0
  %28 = load i32** %27, align 8, !tbaa !0
  %29 = load i32* %28, align 4, !tbaa !3
  %idxprom102836 = zext i32 %add10799 to i64
  %arrayidx103 = getelementptr inbounds i32**** %25, i64 %idxprom102836
  %30 = load i32**** %arrayidx103, align 8, !tbaa !0
  %arrayidx104 = getelementptr inbounds i32*** %30, i64 %idxprom5
  %31 = load i32*** %arrayidx104, align 8, !tbaa !0
  %32 = load i32** %31, align 8, !tbaa !0
  %33 = load i32* %32, align 4, !tbaa !3
  %34 = load i32**** @wp_offset, align 8, !tbaa !0
  %arrayidx129 = getelementptr inbounds i32*** %34, i64 %idxprom74838
  %35 = load i32*** %arrayidx129, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i32** %35, i64 %idxprom5
  %36 = load i32** %arrayidx130, align 8, !tbaa !0
  %37 = load i32* %36, align 4, !tbaa !3
  %arrayidx153 = getelementptr inbounds i32*** %34, i64 %idxprom102836
  %38 = load i32*** %arrayidx153, align 8, !tbaa !0
  %arrayidx154 = getelementptr inbounds i32** %38, i64 %idxprom5
  %39 = load i32** %arrayidx154, align 8, !tbaa !0
  %40 = load i32* %39, align 4, !tbaa !3
  br label %cond.end164

cond.false156:                                    ; preds = %cond.true69
  %idxprom82837 = zext i32 %add10799 to i64
  %41 = load i32***** @wbp_weight, align 8, !tbaa !0
  %arrayidx83 = getelementptr inbounds i32**** %41, i64 %idxprom82837
  %42 = load i32**** %arrayidx83, align 8, !tbaa !0
  %43 = load i32*** %42, align 8, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32** %43, i64 %idxprom5
  %44 = load i32** %arrayidx85, align 8, !tbaa !0
  %45 = load i32* %44, align 4, !tbaa !3
  %idxprom109835 = zext i32 %cond4 to i64
  %arrayidx110 = getelementptr inbounds i32**** %41, i64 %idxprom109835
  %46 = load i32**** %arrayidx110, align 8, !tbaa !0
  %47 = load i32*** %46, align 8, !tbaa !0
  %arrayidx112 = getelementptr inbounds i32** %47, i64 %idxprom5
  %48 = load i32** %arrayidx112, align 8, !tbaa !0
  %49 = load i32* %48, align 4, !tbaa !3
  %50 = load i32**** @wp_offset, align 8, !tbaa !0
  %arrayidx135 = getelementptr inbounds i32*** %50, i64 %idxprom82837
  %51 = load i32*** %arrayidx135, align 8, !tbaa !0
  %52 = load i32** %51, align 8, !tbaa !0
  %53 = load i32* %52, align 4, !tbaa !3
  %arrayidx158 = getelementptr inbounds i32*** %50, i64 %idxprom109835
  %54 = load i32*** %arrayidx158, align 8, !tbaa !0
  %55 = load i32** %54, align 8, !tbaa !0
  %56 = load i32* %55, align 4, !tbaa !3
  br label %cond.end164

cond.end164:                                      ; preds = %cond.end141, %cond.true149, %cond.false156
  %cond142855 = phi i32 [ %37, %cond.true149 ], [ %53, %cond.false156 ], [ 0, %cond.end141 ]
  %cond92840845853 = phi i32 [ %29, %cond.true149 ], [ %45, %cond.false156 ], [ %shl90, %cond.end141 ]
  %cond119847851 = phi i32 [ %33, %cond.true149 ], [ %49, %cond.false156 ], [ %shl90, %cond.end141 ]
  %cond165 = phi i32 [ %40, %cond.true149 ], [ %56, %cond.false156 ], [ 0, %cond.end141 ]
  %sext = shl i32 %cond165, 16
  %conv167 = ashr exact i32 %sext, 16
  %sext806 = shl i32 %cond142855, 16
  %conv168 = ashr exact i32 %sext806, 16
  %add169 = add nsw i32 %conv167, %conv168
  %sext808 = shl i32 %add53, 16
  %conv173 = ashr exact i32 %sext808, 16
  %cmp174 = icmp sgt i32 %conv173, %search_range
  br i1 %cmp174, label %land.lhs.true176, label %if.else

land.lhs.true176:                                 ; preds = %cond.end164
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %57 = load i32* %width, align 4, !tbaa !3
  %sub = xor i32 %search_range, -1
  %sub178 = sub i32 %sub, %17
  %sub179 = add i32 %sub178, %57
  %cmp180 = icmp slt i32 %conv173, %sub179
  br i1 %cmp180, label %land.lhs.true182, label %if.else

land.lhs.true182:                                 ; preds = %land.lhs.true176
  %sext830 = shl i32 %add56, 16
  %conv183 = ashr exact i32 %sext830, 16
  %cmp184 = icmp sgt i32 %conv183, %search_range
  br i1 %cmp184, label %land.lhs.true186, label %if.else

land.lhs.true186:                                 ; preds = %land.lhs.true182
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %58 = load i32* %height, align 4, !tbaa !3
  %sub189 = sub i32 %sub, %16
  %sub190 = add i32 %sub189, %58
  %cmp191 = icmp slt i32 %conv183, %sub190
  br i1 %cmp191, label %if.end, label %if.else

if.else:                                          ; preds = %land.lhs.true186, %land.lhs.true182, %land.lhs.true176, %cond.end164
  br label %if.end

if.end:                                           ; preds = %land.lhs.true186, %if.else
  %get_ref_line2.0 = phi i16* (i32, i16*, i32, i32, i32, i32)* [ @UMVLineX, %if.else ], [ @FastLineX, %land.lhs.true186 ]
  %sext809 = shl i32 %add59, 16
  %conv193 = ashr exact i32 %sext809, 16
  %cmp194 = icmp sgt i32 %conv193, %search_range
  br i1 %cmp194, label %land.lhs.true196, label %if.else217

land.lhs.true196:                                 ; preds = %if.end
  %width198 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13
  %59 = load i32* %width198, align 4, !tbaa !3
  %sub199 = xor i32 %search_range, -1
  %sub200 = sub i32 %sub199, %17
  %sub201 = add i32 %sub200, %59
  %cmp202 = icmp slt i32 %conv193, %sub201
  br i1 %cmp202, label %land.lhs.true204, label %if.else217

land.lhs.true204:                                 ; preds = %land.lhs.true196
  %sext829 = shl i32 %add62, 16
  %conv205 = ashr exact i32 %sext829, 16
  %cmp206 = icmp sgt i32 %conv205, %search_range
  br i1 %cmp206, label %land.lhs.true208, label %if.else217

land.lhs.true208:                                 ; preds = %land.lhs.true204
  %height210 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15
  %60 = load i32* %height210, align 4, !tbaa !3
  %sub212 = sub i32 %sub199, %16
  %sub213 = add i32 %sub212, %60
  %cmp214 = icmp slt i32 %conv205, %sub213
  br i1 %cmp214, label %if.end218, label %if.else217

if.else217:                                       ; preds = %land.lhs.true208, %land.lhs.true204, %land.lhs.true196, %if.end
  %sext813.pre = shl i32 %add62, 16
  %conv234.pre = ashr exact i32 %sext813.pre, 16
  br label %if.end218

if.end218:                                        ; preds = %land.lhs.true208, %if.else217
  %conv234.pre-phi = phi i32 [ %conv205, %land.lhs.true208 ], [ %conv234.pre, %if.else217 ]
  %sext813.pre-phi = phi i32 [ %sext829, %land.lhs.true208 ], [ %sext813.pre, %if.else217 ]
  %get_ref_line1.0 = phi i16* (i32, i16*, i32, i32, i32, i32)* [ @FastLineX, %land.lhs.true208 ], [ @UMVLineX, %if.else217 ]
  %sext812 = shl i32 %add56, 16
  %conv225 = ashr exact i32 %sext812, 16
  %shl230 = ashr exact i32 %sext809, 14
  %sum = add i32 %conv41, %shl
  %sub231 = sub i32 %shl230, %sum
  %idxprom232 = sext i32 %sub231 to i64
  %shl235 = ashr exact i32 %sext813.pre-phi, 14
  %sum895 = add i32 %conv44, %shl43
  %sub236 = sub i32 %shl235, %sum895
  %idxprom237 = sext i32 %sub236 to i64
  %sum896 = add i32 %conv47, %shl
  %sum897 = add i32 %conv50, %shl43
  %cmp518874 = icmp sgt i32 %16, 0
  %cmp530868 = icmp sgt i32 %shr, 0
  %sext814 = shl i32 %cond92840845853, 16
  %sext815 = shl i32 %cond119847851, 16
  %add170 = shl nsw i32 %add169, 15
  %61 = add i32 %add170, 32768
  %conv291 = ashr i32 %61, 16
  %62 = sext i32 %conv234.pre-phi to i64
  br label %for.body

for.body:                                         ; preds = %for.inc596, %if.end218
  %indvars.iv907 = phi i64 [ 0, %if.end218 ], [ %indvars.iv.next908, %for.inc596 ]
  %min_mcost.addr.0894 = phi i32 [ %min_mcost, %if.end218 ], [ %min_mcost.addr.1, %for.inc596 ]
  %best_pos.0891 = phi i32 [ 0, %if.end218 ], [ %best_pos.1, %for.inc596 ]
  %63 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx223 = getelementptr inbounds i32* %63, i64 %indvars.iv907
  %64 = load i32* %arrayidx223, align 4, !tbaa !3
  %add224 = add nsw i32 %64, %conv173
  %65 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx227 = getelementptr inbounds i32* %65, i64 %indvars.iv907
  %66 = load i32* %arrayidx227, align 4, !tbaa !3
  %add228 = add nsw i32 %66, %conv225
  %67 = load i32** @mvbits, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds i32* %67, i64 %idxprom232
  %68 = load i32* %arrayidx233, align 4, !tbaa !3
  %arrayidx238 = getelementptr inbounds i32* %67, i64 %idxprom237
  %69 = load i32* %arrayidx238, align 4, !tbaa !3
  %add239 = add nsw i32 %69, %68
  %mul240 = mul nsw i32 %add239, %conv
  %shr241 = ashr i32 %mul240, 16
  %shl242 = shl i32 %add224, 2
  %sub243 = sub i32 %shl242, %sum896
  %idxprom244 = sext i32 %sub243 to i64
  %arrayidx245 = getelementptr inbounds i32* %67, i64 %idxprom244
  %70 = load i32* %arrayidx245, align 4, !tbaa !3
  %shl246 = shl i32 %add228, 2
  %sub247 = sub i32 %shl246, %sum897
  %idxprom248 = sext i32 %sub247 to i64
  %arrayidx249 = getelementptr inbounds i32* %67, i64 %idxprom248
  %71 = load i32* %arrayidx249, align 4, !tbaa !3
  %add250 = add nsw i32 %71, %70
  %mul251 = mul nsw i32 %add250, %conv
  %shr252 = ashr i32 %mul251, 16
  %add253 = add nsw i32 %shr252, %shr241
  %cmp254 = icmp slt i32 %add253, %min_mcost.addr.0894
  br i1 %cmp254, label %if.end257, label %for.inc596

if.end257:                                        ; preds = %for.body
  br i1 %cmp64, label %for.cond260.preheader, label %for.cond517.preheader

for.cond260.preheader:                            ; preds = %if.end257
  br i1 %cmp518874, label %for.body263.lr.ph, label %if.end591

for.body263.lr.ph:                                ; preds = %for.cond260.preheader
  %72 = zext i32 %add228 to i64
  br label %for.body263

for.cond517.preheader:                            ; preds = %if.end257
  br i1 %cmp518874, label %for.body520.lr.ph, label %if.end591

for.body520.lr.ph:                                ; preds = %for.cond517.preheader
  %73 = zext i32 %add228 to i64
  br label %for.body520

for.cond260:                                      ; preds = %for.end
  %74 = trunc i64 %indvars.iv.next904 to i32
  %cmp261 = icmp slt i32 %74, %16
  br i1 %cmp261, label %for.body263, label %if.end591

for.body263:                                      ; preds = %for.body263.lr.ph, %for.cond260
  %indvars.iv903 = phi i64 [ 0, %for.body263.lr.ph ], [ %indvars.iv.next904, %for.cond260 ]
  %mcost.0888 = phi i32 [ %add253, %for.body263.lr.ph ], [ %mcost.1.lcssa, %for.cond260 ]
  %75 = add nsw i64 %indvars.iv903, %72
  %76 = trunc i64 %75 to i32
  %call = tail call i16* %get_ref_line2.0(i32 %17, i16* %12, i32 %76, i32 %add224, i32 %14, i32 %13) #7
  %77 = add nsw i64 %indvars.iv903, %62
  %78 = trunc i64 %77 to i32
  %call268 = tail call i16* %get_ref_line1.0(i32 %17, i16* %9, i32 %78, i32 %conv193, i32 %14, i32 %13) #7
  br i1 %cmp530868, label %for.body274.lr.ph, label %for.end

for.body274.lr.ph:                                ; preds = %for.body263
  %arrayidx270 = getelementptr inbounds i16** %orig_pic, i64 %indvars.iv903
  %79 = load i16** %arrayidx270, align 8, !tbaa !0
  %80 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul287 = shl i32 %80, 1
  %81 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add289 = add nsw i32 %81, 1
  %82 = load i32** @byte_abs, align 8, !tbaa !0
  %83 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value482 = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 155
  br label %for.body274

for.body274:                                      ; preds = %cond.end499, %for.body274.lr.ph
  %x4.0883 = phi i32 [ 0, %for.body274.lr.ph ], [ %inc, %cond.end499 ]
  %mcost.1882 = phi i32 [ %mcost.0888, %for.body274.lr.ph ], [ %add508, %cond.end499 ]
  %orig_line.0881 = phi i16* [ %79, %for.body274.lr.ph ], [ %incdec.ptr502, %cond.end499 ]
  %ref2_line.0880 = phi i16* [ %call, %for.body274.lr.ph ], [ %incdec.ptr456, %cond.end499 ]
  %ref1_line.0879 = phi i16* [ %call268, %for.body274.lr.ph ], [ %incdec.ptr451, %cond.end499 ]
  %incdec.ptr = getelementptr inbounds i16* %ref1_line.0879, i64 1
  %84 = load i16* %ref1_line.0879, align 2, !tbaa !4
  %conv276 = zext i16 %84 to i32
  %incdec.ptr280 = getelementptr inbounds i16* %ref2_line.0880, i64 1
  %85 = load i16* %ref2_line.0880, align 2, !tbaa !4
  %conv281 = zext i16 %85 to i32
  %sext816 = mul i32 %sext814, %conv276
  %conv284 = ashr exact i32 %sext816, 16
  %sext817 = mul i32 %sext815, %conv281
  %conv285 = ashr exact i32 %sext817, 16
  %add286 = add i32 %mul287, %conv284
  %add288 = add i32 %add286, %conv285
  %shr290 = ashr i32 %add288, %add289
  %add292 = add nsw i32 %shr290, %conv291
  %cmp293 = icmp slt i32 %add292, 0
  br i1 %cmp293, label %cond.end322, label %cond.false296

cond.false296:                                    ; preds = %for.body274
  %86 = load i32* %max_imgpel_value482, align 4, !tbaa !3
  %cmp306 = icmp sgt i32 %add292, %86
  %.add292 = select i1 %cmp306, i32 %86, i32 %add292
  %phitmp = shl i32 %.add292, 16
  %phitmp860 = ashr exact i32 %phitmp, 16
  br label %cond.end322

cond.end322:                                      ; preds = %cond.false296, %for.body274
  %cond323 = phi i32 [ 0, %for.body274 ], [ %phitmp860, %cond.false296 ]
  %incdec.ptr325 = getelementptr inbounds i16* %orig_line.0881, i64 1
  %87 = load i16* %orig_line.0881, align 2, !tbaa !4
  %conv326 = zext i16 %87 to i32
  %sub328 = sub nsw i32 %conv326, %cond323
  %idxprom329 = sext i32 %sub328 to i64
  %arrayidx330 = getelementptr inbounds i32* %82, i64 %idxprom329
  %88 = load i32* %arrayidx330, align 4, !tbaa !3
  %add331 = add nsw i32 %88, %mcost.1882
  %incdec.ptr333 = getelementptr inbounds i16* %ref1_line.0879, i64 2
  %89 = load i16* %incdec.ptr, align 2, !tbaa !4
  %conv334 = zext i16 %89 to i32
  %incdec.ptr338 = getelementptr inbounds i16* %ref2_line.0880, i64 2
  %90 = load i16* %incdec.ptr280, align 2, !tbaa !4
  %conv339 = zext i16 %90 to i32
  %sext820 = mul i32 %sext814, %conv334
  %conv342 = ashr exact i32 %sext820, 16
  %sext821 = mul i32 %sext815, %conv339
  %conv343 = ashr exact i32 %sext821, 16
  %add344 = add i32 %mul287, %conv342
  %add346 = add i32 %add344, %conv343
  %shr348 = ashr i32 %add346, %add289
  %add350 = add nsw i32 %shr348, %conv291
  %cmp351 = icmp slt i32 %add350, 0
  br i1 %cmp351, label %cond.end381, label %cond.false354

cond.false354:                                    ; preds = %cond.end322
  %91 = load i32* %max_imgpel_value482, align 4, !tbaa !3
  %cmp365 = icmp sgt i32 %add350, %91
  %.add350 = select i1 %cmp365, i32 %91, i32 %add350
  %phitmp861 = shl i32 %.add350, 16
  %phitmp862 = ashr exact i32 %phitmp861, 16
  br label %cond.end381

cond.end381:                                      ; preds = %cond.false354, %cond.end322
  %cond382 = phi i32 [ 0, %cond.end322 ], [ %phitmp862, %cond.false354 ]
  %incdec.ptr384 = getelementptr inbounds i16* %orig_line.0881, i64 2
  %92 = load i16* %incdec.ptr325, align 2, !tbaa !4
  %conv385 = zext i16 %92 to i32
  %sub387 = sub nsw i32 %conv385, %cond382
  %idxprom388 = sext i32 %sub387 to i64
  %arrayidx389 = getelementptr inbounds i32* %82, i64 %idxprom388
  %93 = load i32* %arrayidx389, align 4, !tbaa !3
  %add390 = add nsw i32 %add331, %93
  %incdec.ptr392 = getelementptr inbounds i16* %ref1_line.0879, i64 3
  %94 = load i16* %incdec.ptr333, align 2, !tbaa !4
  %conv393 = zext i16 %94 to i32
  %incdec.ptr397 = getelementptr inbounds i16* %ref2_line.0880, i64 3
  %95 = load i16* %incdec.ptr338, align 2, !tbaa !4
  %conv398 = zext i16 %95 to i32
  %sext823 = mul i32 %sext814, %conv393
  %conv401 = ashr exact i32 %sext823, 16
  %sext824 = mul i32 %sext815, %conv398
  %conv402 = ashr exact i32 %sext824, 16
  %add403 = add i32 %mul287, %conv401
  %add405 = add i32 %add403, %conv402
  %shr407 = ashr i32 %add405, %add289
  %add409 = add nsw i32 %shr407, %conv291
  %cmp410 = icmp slt i32 %add409, 0
  br i1 %cmp410, label %cond.end440, label %cond.false413

cond.false413:                                    ; preds = %cond.end381
  %96 = load i32* %max_imgpel_value482, align 4, !tbaa !3
  %cmp424 = icmp sgt i32 %add409, %96
  %.add409 = select i1 %cmp424, i32 %96, i32 %add409
  %phitmp863 = shl i32 %.add409, 16
  %phitmp864 = ashr exact i32 %phitmp863, 16
  br label %cond.end440

cond.end440:                                      ; preds = %cond.false413, %cond.end381
  %cond441 = phi i32 [ 0, %cond.end381 ], [ %phitmp864, %cond.false413 ]
  %incdec.ptr443 = getelementptr inbounds i16* %orig_line.0881, i64 3
  %97 = load i16* %incdec.ptr384, align 2, !tbaa !4
  %conv444 = zext i16 %97 to i32
  %sub446 = sub nsw i32 %conv444, %cond441
  %idxprom447 = sext i32 %sub446 to i64
  %arrayidx448 = getelementptr inbounds i32* %82, i64 %idxprom447
  %98 = load i32* %arrayidx448, align 4, !tbaa !3
  %add449 = add nsw i32 %add390, %98
  %incdec.ptr451 = getelementptr inbounds i16* %ref1_line.0879, i64 4
  %99 = load i16* %incdec.ptr392, align 2, !tbaa !4
  %conv452 = zext i16 %99 to i32
  %incdec.ptr456 = getelementptr inbounds i16* %ref2_line.0880, i64 4
  %100 = load i16* %incdec.ptr397, align 2, !tbaa !4
  %conv457 = zext i16 %100 to i32
  %sext826 = mul i32 %sext814, %conv452
  %conv460 = ashr exact i32 %sext826, 16
  %sext827 = mul i32 %sext815, %conv457
  %conv461 = ashr exact i32 %sext827, 16
  %add462 = add i32 %mul287, %conv460
  %add464 = add i32 %add462, %conv461
  %shr466 = ashr i32 %add464, %add289
  %add468 = add nsw i32 %shr466, %conv291
  %cmp469 = icmp slt i32 %add468, 0
  br i1 %cmp469, label %cond.end499, label %cond.false472

cond.false472:                                    ; preds = %cond.end440
  %101 = load i32* %max_imgpel_value482, align 4, !tbaa !3
  %cmp483 = icmp sgt i32 %add468, %101
  %.add468 = select i1 %cmp483, i32 %101, i32 %add468
  %phitmp865 = shl i32 %.add468, 16
  %phitmp866 = ashr exact i32 %phitmp865, 16
  br label %cond.end499

cond.end499:                                      ; preds = %cond.false472, %cond.end440
  %cond500 = phi i32 [ 0, %cond.end440 ], [ %phitmp866, %cond.false472 ]
  %incdec.ptr502 = getelementptr inbounds i16* %orig_line.0881, i64 4
  %102 = load i16* %incdec.ptr443, align 2, !tbaa !4
  %conv503 = zext i16 %102 to i32
  %sub505 = sub nsw i32 %conv503, %cond500
  %idxprom506 = sext i32 %sub505 to i64
  %arrayidx507 = getelementptr inbounds i32* %82, i64 %idxprom506
  %103 = load i32* %arrayidx507, align 4, !tbaa !3
  %add508 = add nsw i32 %add449, %103
  %inc = add nsw i32 %x4.0883, 1
  %exitcond901 = icmp eq i32 %inc, %shr
  br i1 %exitcond901, label %for.end, label %for.body274

for.end:                                          ; preds = %cond.end499, %for.body263
  %mcost.1.lcssa = phi i32 [ %mcost.0888, %for.body263 ], [ %add508, %cond.end499 ]
  %cmp509 = icmp slt i32 %mcost.1.lcssa, %min_mcost.addr.0894
  %indvars.iv.next904 = add i64 %indvars.iv903, 1
  br i1 %cmp509, label %for.cond260, label %if.end591

for.cond517:                                      ; preds = %for.end583
  %104 = trunc i64 %indvars.iv.next to i32
  %cmp518 = icmp slt i32 %104, %16
  br i1 %cmp518, label %for.body520, label %if.end591

for.body520:                                      ; preds = %for.body520.lr.ph, %for.cond517
  %indvars.iv = phi i64 [ 0, %for.body520.lr.ph ], [ %indvars.iv.next, %for.cond517 ]
  %mcost.2875 = phi i32 [ %add253, %for.body520.lr.ph ], [ %mcost.3.lcssa, %for.cond517 ]
  %105 = add nsw i64 %indvars.iv, %73
  %106 = trunc i64 %105 to i32
  %call522 = tail call i16* %get_ref_line2.0(i32 %17, i16* %12, i32 %106, i32 %add224, i32 %14, i32 %13) #7
  %107 = add nsw i64 %indvars.iv, %62
  %108 = trunc i64 %107 to i32
  %call526 = tail call i16* %get_ref_line1.0(i32 %17, i16* %9, i32 %108, i32 %conv193, i32 %14, i32 %13) #7
  br i1 %cmp530868, label %for.body532.lr.ph, label %for.end583

for.body532.lr.ph:                                ; preds = %for.body520
  %arrayidx528 = getelementptr inbounds i16** %orig_pic, i64 %indvars.iv
  %109 = load i16** %arrayidx528, align 8, !tbaa !0
  %110 = load i32** @byte_abs, align 8, !tbaa !0
  br label %for.body532

for.body532:                                      ; preds = %for.body532, %for.body532.lr.ph
  %x4.1873 = phi i32 [ 0, %for.body532.lr.ph ], [ %inc582, %for.body532 ]
  %mcost.3872 = phi i32 [ %mcost.2875, %for.body532.lr.ph ], [ %add580, %for.body532 ]
  %orig_line.1871 = phi i16* [ %109, %for.body532.lr.ph ], [ %incdec.ptr569, %for.body532 ]
  %ref2_line.1870 = phi i16* [ %call522, %for.body532.lr.ph ], [ %incdec.ptr573, %for.body532 ]
  %ref1_line.1869 = phi i16* [ %call526, %for.body532.lr.ph ], [ %incdec.ptr571, %for.body532 ]
  %incdec.ptr533 = getelementptr inbounds i16* %orig_line.1871, i64 1
  %111 = load i16* %orig_line.1871, align 2, !tbaa !4
  %conv534 = zext i16 %111 to i32
  %incdec.ptr535 = getelementptr inbounds i16* %ref1_line.1869, i64 1
  %112 = load i16* %ref1_line.1869, align 2, !tbaa !4
  %conv536 = zext i16 %112 to i32
  %incdec.ptr537 = getelementptr inbounds i16* %ref2_line.1870, i64 1
  %113 = load i16* %ref2_line.1870, align 2, !tbaa !4
  %conv538 = zext i16 %113 to i32
  %add539 = add nsw i32 %conv538, %conv536
  %shr540 = lshr i32 %add539, 1
  %sub541 = sub nsw i32 %conv534, %shr540
  %idxprom542 = sext i32 %sub541 to i64
  %arrayidx543 = getelementptr inbounds i32* %110, i64 %idxprom542
  %114 = load i32* %arrayidx543, align 4, !tbaa !3
  %add544 = add nsw i32 %114, %mcost.3872
  %incdec.ptr545 = getelementptr inbounds i16* %orig_line.1871, i64 2
  %115 = load i16* %incdec.ptr533, align 2, !tbaa !4
  %conv546 = zext i16 %115 to i32
  %incdec.ptr547 = getelementptr inbounds i16* %ref1_line.1869, i64 2
  %116 = load i16* %incdec.ptr535, align 2, !tbaa !4
  %conv548 = zext i16 %116 to i32
  %incdec.ptr549 = getelementptr inbounds i16* %ref2_line.1870, i64 2
  %117 = load i16* %incdec.ptr537, align 2, !tbaa !4
  %conv550 = zext i16 %117 to i32
  %add551 = add nsw i32 %conv550, %conv548
  %shr552 = lshr i32 %add551, 1
  %sub553 = sub nsw i32 %conv546, %shr552
  %idxprom554 = sext i32 %sub553 to i64
  %arrayidx555 = getelementptr inbounds i32* %110, i64 %idxprom554
  %118 = load i32* %arrayidx555, align 4, !tbaa !3
  %add556 = add nsw i32 %add544, %118
  %incdec.ptr557 = getelementptr inbounds i16* %orig_line.1871, i64 3
  %119 = load i16* %incdec.ptr545, align 2, !tbaa !4
  %conv558 = zext i16 %119 to i32
  %incdec.ptr559 = getelementptr inbounds i16* %ref1_line.1869, i64 3
  %120 = load i16* %incdec.ptr547, align 2, !tbaa !4
  %conv560 = zext i16 %120 to i32
  %incdec.ptr561 = getelementptr inbounds i16* %ref2_line.1870, i64 3
  %121 = load i16* %incdec.ptr549, align 2, !tbaa !4
  %conv562 = zext i16 %121 to i32
  %add563 = add nsw i32 %conv562, %conv560
  %shr564 = lshr i32 %add563, 1
  %sub565 = sub nsw i32 %conv558, %shr564
  %idxprom566 = sext i32 %sub565 to i64
  %arrayidx567 = getelementptr inbounds i32* %110, i64 %idxprom566
  %122 = load i32* %arrayidx567, align 4, !tbaa !3
  %add568 = add nsw i32 %add556, %122
  %incdec.ptr569 = getelementptr inbounds i16* %orig_line.1871, i64 4
  %123 = load i16* %incdec.ptr557, align 2, !tbaa !4
  %conv570 = zext i16 %123 to i32
  %incdec.ptr571 = getelementptr inbounds i16* %ref1_line.1869, i64 4
  %124 = load i16* %incdec.ptr559, align 2, !tbaa !4
  %conv572 = zext i16 %124 to i32
  %incdec.ptr573 = getelementptr inbounds i16* %ref2_line.1870, i64 4
  %125 = load i16* %incdec.ptr561, align 2, !tbaa !4
  %conv574 = zext i16 %125 to i32
  %add575 = add nsw i32 %conv574, %conv572
  %shr576 = lshr i32 %add575, 1
  %sub577 = sub nsw i32 %conv570, %shr576
  %idxprom578 = sext i32 %sub577 to i64
  %arrayidx579 = getelementptr inbounds i32* %110, i64 %idxprom578
  %126 = load i32* %arrayidx579, align 4, !tbaa !3
  %add580 = add nsw i32 %add568, %126
  %inc582 = add nsw i32 %x4.1873, 1
  %exitcond = icmp eq i32 %inc582, %shr
  br i1 %exitcond, label %for.end583, label %for.body532

for.end583:                                       ; preds = %for.body532, %for.body520
  %mcost.3.lcssa = phi i32 [ %mcost.2875, %for.body520 ], [ %add580, %for.body532 ]
  %cmp584 = icmp slt i32 %mcost.3.lcssa, %min_mcost.addr.0894
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp584, label %for.cond517, label %if.end591

if.end591:                                        ; preds = %for.cond260.preheader, %for.end, %for.cond260, %for.cond517.preheader, %for.end583, %for.cond517
  %mcost.4 = phi i32 [ %add253, %for.cond517.preheader ], [ %mcost.3.lcssa, %for.end583 ], [ %mcost.3.lcssa, %for.cond517 ], [ %add253, %for.cond260.preheader ], [ %mcost.1.lcssa, %for.end ], [ %mcost.1.lcssa, %for.cond260 ]
  %cmp592 = icmp slt i32 %mcost.4, %min_mcost.addr.0894
  %127 = trunc i64 %indvars.iv907 to i32
  %pos.0.best_pos.0 = select i1 %cmp592, i32 %127, i32 %best_pos.0891
  %mcost.4.min_mcost.addr.0 = select i1 %cmp592, i32 %mcost.4, i32 %min_mcost.addr.0894
  br label %for.inc596

for.inc596:                                       ; preds = %if.end591, %for.body
  %best_pos.1 = phi i32 [ %best_pos.0891, %for.body ], [ %pos.0.best_pos.0, %if.end591 ]
  %min_mcost.addr.1 = phi i32 [ %min_mcost.addr.0894, %for.body ], [ %mcost.4.min_mcost.addr.0, %if.end591 ]
  %indvars.iv.next908 = add i64 %indvars.iv907, 1
  %128 = trunc i64 %indvars.iv.next908 to i32
  %cmp219 = icmp slt i32 %128, %mul31
  br i1 %cmp219, label %for.body, label %for.end598

for.end598:                                       ; preds = %for.inc596
  %tobool599 = icmp eq i32 %best_pos.1, 0
  br i1 %tobool599, label %if.end611, label %if.then600

if.then600:                                       ; preds = %for.end598
  %idxprom601 = sext i32 %best_pos.1 to i64
  %129 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx602 = getelementptr inbounds i32* %129, i64 %idxprom601
  %130 = load i32* %arrayidx602, align 4, !tbaa !3
  %131 = load i16* %mv_x, align 2, !tbaa !4
  %conv603810 = zext i16 %131 to i32
  %add604 = add nsw i32 %conv603810, %130
  %conv605 = trunc i32 %add604 to i16
  store i16 %conv605, i16* %mv_x, align 2, !tbaa !4
  %132 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx607 = getelementptr inbounds i32* %132, i64 %idxprom601
  %133 = load i32* %arrayidx607, align 4, !tbaa !3
  %134 = load i16* %mv_y, align 2, !tbaa !4
  %conv608811 = zext i16 %134 to i32
  %add609 = add nsw i32 %conv608811, %133
  %conv610 = trunc i32 %add609 to i16
  store i16 %conv610, i16* %mv_y, align 2, !tbaa !4
  br label %if.end611

if.end611:                                        ; preds = %for.end598, %if.then600
  ret i32 %min_mcost.addr.1
}

; Function Attrs: nounwind optsize uwtable
define i32 @SubPelBlockSearchBiPred(i16** nocapture %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* nocapture %mv_x, i16* nocapture %mv_y, i16* nocapture %s_mv_x, i16* nocapture %s_mv_y, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, double %lambda) #0 {
entry:
  %curr_diff = alloca [16 x [16 x i32]], align 16
  %diff = alloca [16 x i32], align 16
  %0 = bitcast [16 x [16 x i32]]* %curr_diff to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #3
  %1 = bitcast [16 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #3
  %mul = fmul double %lambda, 6.553600e+04
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %idxprom = sext i32 %blocktype to i64
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 20, i64 %idxprom, i64 0
  %3 = load i32* %arrayidx1, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 20, i64 %idxprom, i64 1
  %4 = load i32* %arrayidx6, align 4, !tbaa !3
  %shl = shl i32 %pic_pix_x, 18
  %shl9 = shl i32 %pic_pix_y, 18
  %hadamard = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 6
  %5 = load i32* %hadamard, align 4, !tbaa !3
  %tobool = icmp ne i32 %5, 0
  %6 = zext i1 %tobool to i16
  %conv11 = xor i16 %6, 1
  br i1 %tobool, label %cond.true, label %cond.end18

cond.true:                                        ; preds = %entry
  %cmp = icmp slt i32 %search_pos2, 1
  %cond16 = select i1 %cmp, i32 1, i32 %search_pos2
  br label %cond.end18

cond.end18:                                       ; preds = %entry, %cond.true
  %cond19 = phi i32 [ %cond16, %cond.true ], [ %search_pos2, %entry ]
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 90
  %8 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool21 = icmp eq i32 %8, 0
  br i1 %tobool21, label %cond.end30, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end18
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 3
  %9 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom22 = sext i32 %9 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 51
  %10 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %10, i64 %idxprom22, i32 22
  %11 = load i32* %mb_field, align 4, !tbaa !3
  %tobool24 = icmp eq i32 %11, 0
  br i1 %tobool24, label %cond.end30, label %cond.true25

cond.true25:                                      ; preds = %land.lhs.true
  %rem6205 = and i32 %9, 1
  %tobool27 = icmp ne i32 %rem6205, 0
  %phitmp = select i1 %tobool27, i16 4, i16 2
  br label %cond.end30

cond.end30:                                       ; preds = %land.lhs.true, %cond.end18, %cond.true25
  %cond31 = phi i16 [ %phitmp, %cond.true25 ], [ 0, %land.lhs.true ], [ 0, %cond.end18 ]
  %12 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %12, i64 0, i32 20
  %13 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %conv33 = trunc i32 %13 to i16
  %sext.mask = and i32 %13, 65535
  %tobool35 = icmp eq i32 %sext.mask, 0
  br i1 %tobool35, label %cond.end133, label %cond.true36

cond.true36:                                      ; preds = %cond.end30
  %cmp37 = icmp eq i32 %list, 0
  %idxprom40 = sext i16 %ref to i64
  %idxprom416204 = zext i16 %cond31 to i64
  br i1 %cmp37, label %cond.true117, label %cond.false125

cond.true117:                                     ; preds = %cond.true36
  %14 = load i32***** @wbp_weight, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds i32**** %14, i64 %idxprom416204
  %15 = load i32**** %arrayidx42, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds i32*** %15, i64 %idxprom40
  %16 = load i32*** %arrayidx43, align 8, !tbaa !0
  %17 = load i32** %16, align 8, !tbaa !0
  %18 = load i32* %17, align 4, !tbaa !3
  %add696199 = or i64 %idxprom416204, 1
  %arrayidx71 = getelementptr inbounds i32**** %14, i64 %add696199
  %19 = load i32**** %arrayidx71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds i32*** %19, i64 %idxprom40
  %20 = load i32*** %arrayidx72, align 8, !tbaa !0
  %21 = load i32** %20, align 8, !tbaa !0
  %22 = load i32* %21, align 4, !tbaa !3
  %23 = load i32**** @wp_offset, align 8, !tbaa !0
  %arrayidx96 = getelementptr inbounds i32*** %23, i64 %idxprom416204
  %24 = load i32*** %arrayidx96, align 8, !tbaa !0
  %arrayidx97 = getelementptr inbounds i32** %24, i64 %idxprom40
  %25 = load i32** %arrayidx97, align 8, !tbaa !0
  %26 = load i32* %25, align 4, !tbaa !3
  %arrayidx122 = getelementptr inbounds i32*** %23, i64 %add696199
  %27 = load i32*** %arrayidx122, align 8, !tbaa !0
  %arrayidx123 = getelementptr inbounds i32** %27, i64 %idxprom40
  %28 = load i32** %arrayidx123, align 8, !tbaa !0
  %29 = load i32* %28, align 4, !tbaa !3
  br label %cond.end133

cond.false125:                                    ; preds = %cond.true36
  %add496202 = or i64 %idxprom416204, 1
  %30 = load i32***** @wbp_weight, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i32**** %30, i64 %add496202
  %31 = load i32**** %arrayidx51, align 8, !tbaa !0
  %32 = load i32*** %31, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i32** %32, i64 %idxprom40
  %33 = load i32** %arrayidx53, align 8, !tbaa !0
  %34 = load i32* %33, align 4, !tbaa !3
  %arrayidx78 = getelementptr inbounds i32**** %30, i64 %idxprom416204
  %35 = load i32**** %arrayidx78, align 8, !tbaa !0
  %36 = load i32*** %35, align 8, !tbaa !0
  %arrayidx80 = getelementptr inbounds i32** %36, i64 %idxprom40
  %37 = load i32** %arrayidx80, align 8, !tbaa !0
  %38 = load i32* %37, align 4, !tbaa !3
  %39 = load i32**** @wp_offset, align 8, !tbaa !0
  %arrayidx103 = getelementptr inbounds i32*** %39, i64 %add496202
  %40 = load i32*** %arrayidx103, align 8, !tbaa !0
  %41 = load i32** %40, align 8, !tbaa !0
  %42 = load i32* %41, align 4, !tbaa !3
  %arrayidx127 = getelementptr inbounds i32*** %39, i64 %idxprom416204
  %43 = load i32*** %arrayidx127, align 8, !tbaa !0
  %44 = load i32** %43, align 8, !tbaa !0
  %45 = load i32* %44, align 4, !tbaa !3
  br label %cond.end133

cond.end133:                                      ; preds = %cond.end30, %cond.true117, %cond.false125
  %cond1106239 = phi i32 [ %26, %cond.true117 ], [ %42, %cond.false125 ], [ 0, %cond.end30 ]
  %cond59621962286237 = phi i32 [ %18, %cond.true117 ], [ %34, %cond.false125 ], [ 1, %cond.end30 ]
  %cond8662306235 = phi i32 [ %22, %cond.true117 ], [ %38, %cond.false125 ], [ 1, %cond.end30 ]
  %cond134 = phi i32 [ %29, %cond.true117 ], [ %45, %cond.false125 ], [ 0, %cond.end30 ]
  %sext = shl i32 %cond134, 16
  %conv136 = ashr exact i32 %sext, 16
  %sext6081 = shl i32 %cond1106239, 16
  %conv137 = ashr exact i32 %sext6081, 16
  %add138 = add i32 %conv137, 1
  %add139 = add i32 %add138, %conv136
  %shr6082 = lshr i32 %add139, 1
  %hadamardqpel = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 7
  %46 = load i32* %hadamardqpel, align 4, !tbaa !3
  %tobool141 = icmp eq i32 %46, 0
  %. = select i1 %tobool141, i32 %5, i32 0
  %idxprom150 = sext i16 %ref to i64
  %conv1516083 = zext i16 %cond31 to i32
  %add152 = add nsw i32 %conv1516083, %list
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom153
  %47 = load %struct.storable_picture*** %arrayidx154, align 8, !tbaa !0
  %arrayidx155 = getelementptr inbounds %struct.storable_picture** %47, i64 %idxprom150
  %48 = load %struct.storable_picture** %arrayidx155, align 8, !tbaa !0
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %48, i64 0, i32 28
  %49 = load i16*** %imgY_ups, align 8, !tbaa !0
  %cmp156 = icmp eq i32 %list, 0
  %add1606084 = zext i1 %cmp156 to i32
  %cond164 = or i32 %conv1516083, %add1606084
  %idxprom1656085 = zext i32 %cond164 to i64
  %arrayidx166 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom1656085
  %50 = load %struct.storable_picture*** %arrayidx166, align 8, !tbaa !0
  %51 = load %struct.storable_picture** %50, align 8, !tbaa !0
  %imgY_ups168 = getelementptr inbounds %struct.storable_picture* %51, i64 0, i32 28
  %52 = load i16*** %imgY_ups168, align 8, !tbaa !0
  %size_x = getelementptr inbounds %struct.storable_picture* %48, i64 0, i32 18
  %53 = load i32* %size_x, align 4, !tbaa !3
  %size_y = getelementptr inbounds %struct.storable_picture* %48, i64 0, i32 19
  %54 = load i32* %size_y, align 4, !tbaa !3
  %sext6086 = shl i32 %3, 16
  %conv176 = ashr exact i32 %sext6086, 16
  %sub = sub nsw i32 %53, %conv176
  %add177 = shl i32 %sub, 2
  %shl178 = add i32 %add177, 4
  %sext6087 = shl i32 %4, 16
  %conv181 = ashr exact i32 %sext6087, 16
  %sub182 = sub nsw i32 %54, %conv181
  %add183 = shl i32 %sub182, 2
  %shl184 = add i32 %add183, 4
  %55 = load i16* %mv_x, align 2, !tbaa !4
  %shl187 = shl i16 %55, 2
  store i16 %shl187, i16* %mv_x, align 2, !tbaa !4
  %56 = load i16* %mv_y, align 2, !tbaa !4
  %shl190 = shl i16 %56, 2
  store i16 %shl190, i16* %mv_y, align 2, !tbaa !4
  %conv192 = ashr exact i32 %shl, 16
  %57 = load i16* %mv_x, align 2, !tbaa !4
  %conv193 = sext i16 %57 to i32
  %add194 = add nsw i32 %conv193, %conv192
  %cmp195 = icmp sgt i32 %add194, 1
  br i1 %cmp195, label %land.lhs.true197, label %if.else

land.lhs.true197:                                 ; preds = %cond.end133
  %sext6186 = shl i32 %shl178, 16
  %conv201 = ashr exact i32 %sext6186, 16
  %sub202 = add nsw i32 %conv201, -2
  %cmp203 = icmp slt i32 %add194, %sub202
  br i1 %cmp203, label %land.lhs.true205, label %if.else

land.lhs.true205:                                 ; preds = %land.lhs.true197
  %conv206 = ashr exact i32 %shl9, 16
  %conv207 = sext i16 %shl190 to i32
  %add208 = add nsw i32 %conv207, %conv206
  %cmp209 = icmp sgt i32 %add208, 1
  br i1 %cmp209, label %land.lhs.true211, label %if.else

land.lhs.true211:                                 ; preds = %land.lhs.true205
  %sext6188 = shl i32 %shl184, 16
  %conv215 = ashr exact i32 %sext6188, 16
  %sub216 = add nsw i32 %conv215, -2
  %cmp217 = icmp slt i32 %add208, %sub216
  br i1 %cmp217, label %if.end, label %if.else

if.else:                                          ; preds = %land.lhs.true211, %land.lhs.true205, %land.lhs.true197, %cond.end133
  br label %if.end

if.end:                                           ; preds = %land.lhs.true211, %if.else
  %storemerge = phi i16 (i16**, i32, i32, i32, i32)* [ @UMVPelY_14, %if.else ], [ @FastPelY_14, %land.lhs.true211 ]
  store i16 (i16**, i32, i32, i32, i32)* %storemerge, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %58 = load i16* %s_mv_x, align 2, !tbaa !4
  %conv220 = sext i16 %58 to i32
  %add221 = add nsw i32 %conv220, %conv192
  %cmp222 = icmp sgt i32 %add221, 1
  br i1 %cmp222, label %land.lhs.true224, label %if.else247

land.lhs.true224:                                 ; preds = %if.end
  %sext6183 = shl i32 %shl178, 16
  %conv228 = ashr exact i32 %sext6183, 16
  %sub229 = add nsw i32 %conv228, -2
  %cmp230 = icmp slt i32 %add221, %sub229
  br i1 %cmp230, label %land.lhs.true232, label %if.else247

land.lhs.true232:                                 ; preds = %land.lhs.true224
  %conv233 = ashr exact i32 %shl9, 16
  %59 = load i16* %s_mv_y, align 2, !tbaa !4
  %conv234 = sext i16 %59 to i32
  %add235 = add nsw i32 %conv234, %conv233
  %cmp236 = icmp sgt i32 %add235, 1
  br i1 %cmp236, label %land.lhs.true238, label %if.else247

land.lhs.true238:                                 ; preds = %land.lhs.true232
  %sext6185 = shl i32 %shl184, 16
  %conv242 = ashr exact i32 %sext6185, 16
  %sub243 = add nsw i32 %conv242, -2
  %cmp244 = icmp slt i32 %add235, %sub243
  br i1 %cmp244, label %if.end248, label %if.else247

if.else247:                                       ; preds = %land.lhs.true238, %land.lhs.true232, %land.lhs.true224, %if.end
  br label %if.end248

if.end248:                                        ; preds = %land.lhs.true238, %if.else247
  %storemerge6089 = phi i16 (i16**, i32, i32, i32, i32)* [ @UMVPelY_14, %if.else247 ], [ @FastPelY_14, %land.lhs.true238 ]
  store i16 (i16**, i32, i32, i32, i32)* %storemerge6089, i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %conv24963116318 = zext i16 %conv11 to i32
  %sext6090 = shl i32 %cond19, 16
  %conv250 = ashr exact i32 %sext6090, 16
  %cmp2516312 = icmp slt i32 %conv24963116318, %conv250
  br i1 %cmp2516312, label %for.body.lr.ph, label %if.end2125

for.body.lr.ph:                                   ; preds = %if.end248
  %conv268 = sext i16 %pred_mv_x to i32
  %conv275 = sext i16 %pred_mv_y to i32
  %cmp2866304 = icmp sgt i32 %sext6087, 0
  %arraydecay2096 = getelementptr inbounds [16 x [16 x i32]]* %curr_diff, i64 0, i64 0
  %tobool302 = icmp eq i16 %conv33, 0
  %cmp3076285 = icmp sgt i32 %sext6086, 0
  %arraydecay = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 0
  %sext6165 = shl i32 %cond59621962286237, 16
  %conv324 = ashr exact i32 %sext6165, 16
  %sext6168 = shl i32 %cond8662306235, 16
  %conv329 = ashr exact i32 %sext6168, 16
  %sext6171 = shl i32 %shr6082, 16
  %conv340 = ashr exact i32 %sext6171, 16
  %incdec.ptr = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 1
  %incdec.ptr480 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 2
  %incdec.ptr564 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 3
  %incdec.ptr648 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 4
  %incdec.ptr734 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 5
  %incdec.ptr818 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 6
  %incdec.ptr902 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 7
  %incdec.ptr986 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 8
  %incdec.ptr1072 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 9
  %incdec.ptr1156 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 10
  %incdec.ptr1240 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 11
  %incdec.ptr1324 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 12
  %incdec.ptr1410 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 13
  %incdec.ptr1494 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 14
  %incdec.ptr1578 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 15
  br label %for.body

for.body:                                         ; preds = %if.end2101.for.body_crit_edge, %for.body.lr.ph
  %60 = phi i16 [ %shl190, %for.body.lr.ph ], [ %.pre6383, %if.end2101.for.body_crit_edge ]
  %61 = phi i16 [ %57, %for.body.lr.ph ], [ %.pre6382, %if.end2101.for.body_crit_edge ]
  %62 = phi %struct.InputParameters* [ %2, %for.body.lr.ph ], [ %387, %if.end2101.for.body_crit_edge ]
  %min_mcost.addr.06315 = phi i32 [ %min_mcost, %for.body.lr.ph ], [ %conv2102.min_mcost.addr.0, %if.end2101.for.body_crit_edge ]
  %pos.06314 = phi i16 [ %conv11, %for.body.lr.ph ], [ %inc2109, %if.end2101.for.body_crit_edge ]
  %best_pos.06313 = phi i16 [ 0, %for.body.lr.ph ], [ %pos.0.best_pos.0, %if.end2101.for.body_crit_edge ]
  %conv2536141 = zext i16 %61 to i32
  %idxprom254 = sext i16 %pos.06314 to i64
  %63 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx255 = getelementptr inbounds i32* %63, i64 %idxprom254
  %64 = load i32* %arrayidx255, align 4, !tbaa !3
  %shl256 = shl i32 %64, 1
  %add257 = add nsw i32 %shl256, %conv2536141
  %conv2596142 = zext i16 %60 to i32
  %65 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx261 = getelementptr inbounds i32* %65, i64 %idxprom254
  %66 = load i32* %arrayidx261, align 4, !tbaa !3
  %shl262 = shl i32 %66, 1
  %add263 = add nsw i32 %shl262, %conv2596142
  %sext6143 = shl i32 %add257, 16
  %conv265 = ashr exact i32 %sext6143, 16
  %sub269 = sub nsw i32 %conv265, %conv268
  %idxprom270 = sext i32 %sub269 to i64
  %67 = load i32** @mvbits, align 8, !tbaa !0
  %arrayidx271 = getelementptr inbounds i32* %67, i64 %idxprom270
  %68 = load i32* %arrayidx271, align 4, !tbaa !3
  %sext6144 = shl i32 %add263, 16
  %conv272 = ashr exact i32 %sext6144, 16
  %sub276 = sub nsw i32 %conv272, %conv275
  %idxprom277 = sext i32 %sub276 to i64
  %arrayidx278 = getelementptr inbounds i32* %67, i64 %idxprom277
  %69 = load i32* %arrayidx278, align 4, !tbaa !3
  %add279 = add nsw i32 %69, %68
  %mul280 = mul nsw i32 %add279, %conv
  %shr2816145 = lshr i32 %mul280, 16
  %conv282 = trunc i32 %shr2816145 to i16
  br i1 %cmp2866304, label %for.body289, label %for.end2092

for.body289:                                      ; preds = %for.inc2088, %for.body
  %70 = phi %struct.InputParameters* [ %62, %for.body ], [ %386, %for.inc2088 ]
  %conv2846309 = phi i32 [ 0, %for.body ], [ %conv284, %for.inc2088 ]
  %mcost.06308 = phi i16 [ %conv282, %for.body ], [ %mcost.5, %for.inc2088 ]
  %y0.06306 = phi i16 [ 0, %for.body ], [ %add2090, %for.inc2088 ]
  %add291 = add nsw i32 %conv2846309, %pic_pix_y
  %shl292 = shl i32 %add291, 2
  %71 = load i16* %s_mv_y, align 2, !tbaa !4
  %conv2936147 = zext i16 %71 to i32
  %add294 = add nsw i32 %conv2936147, %shl292
  %add300 = add nsw i32 %shl292, %conv272
  br i1 %tobool302, label %for.cond1704.preheader, label %for.cond304.preheader

for.cond1704.preheader:                           ; preds = %for.body289
  br i1 %cmp3076285, label %for.body1709.lr.ph, label %for.inc2088

for.body1709.lr.ph:                               ; preds = %for.cond1704.preheader
  %idxprom1723 = sext i16 %y0.06306 to i64
  %arrayidx1724 = getelementptr inbounds i16** %orig_pic, i64 %idxprom1723
  %sext6149 = shl i32 %add294, 16
  %conv1728 = ashr exact i32 %sext6149, 16
  %sext6151 = shl i32 %add300, 16
  %conv1732 = ashr exact i32 %sext6151, 16
  %add18046153 = or i32 %conv2846309, 1
  %idxprom1805 = sext i32 %add18046153 to i64
  %arrayidx1806 = getelementptr inbounds i16** %orig_pic, i64 %idxprom1805
  %sext6154 = add i32 %sext6149, 262144
  %conv1810 = ashr exact i32 %sext6154, 16
  %sext6155 = add i32 %sext6151, 262144
  %conv1814 = ashr exact i32 %sext6155, 16
  %add18866156 = or i32 %conv2846309, 2
  %idxprom1887 = sext i32 %add18866156 to i64
  %arrayidx1888 = getelementptr inbounds i16** %orig_pic, i64 %idxprom1887
  %sext6157 = add i32 %sext6149, 524288
  %conv1892 = ashr exact i32 %sext6157, 16
  %sext6158 = add i32 %sext6151, 524288
  %conv1896 = ashr exact i32 %sext6158, 16
  %add19686159 = or i32 %conv2846309, 3
  %idxprom1969 = sext i32 %add19686159 to i64
  %arrayidx1970 = getelementptr inbounds i16** %orig_pic, i64 %idxprom1969
  %sext6160 = add i32 %sext6149, 786432
  %conv1974 = ashr exact i32 %sext6160, 16
  %sext6161 = add i32 %sext6151, 786432
  %conv1978 = ashr exact i32 %sext6161, 16
  br label %for.body1709

for.cond304.preheader:                            ; preds = %for.body289
  br i1 %cmp3076285, label %for.body309.lr.ph, label %for.inc2088

for.body309.lr.ph:                                ; preds = %for.cond304.preheader
  %idxprom322 = sext i16 %y0.06306 to i64
  %arrayidx323 = getelementptr inbounds i16** %orig_pic, i64 %idxprom322
  %sext6166 = shl i32 %add294, 16
  %conv325 = ashr exact i32 %sext6166, 16
  %sext6169 = shl i32 %add300, 16
  %conv330 = ashr exact i32 %sext6169, 16
  %add6566172 = or i32 %conv2846309, 1
  %idxprom657 = sext i32 %add6566172 to i64
  %arrayidx658 = getelementptr inbounds i16** %orig_pic, i64 %idxprom657
  %sext6173 = add i32 %sext6166, 262144
  %conv660 = ashr exact i32 %sext6173, 16
  %sext6174 = add i32 %sext6169, 262144
  %conv666 = ashr exact i32 %sext6174, 16
  %add9946175 = or i32 %conv2846309, 2
  %idxprom995 = sext i32 %add9946175 to i64
  %arrayidx996 = getelementptr inbounds i16** %orig_pic, i64 %idxprom995
  %sext6176 = add i32 %sext6166, 524288
  %conv998 = ashr exact i32 %sext6176, 16
  %sext6177 = add i32 %sext6169, 524288
  %conv1004 = ashr exact i32 %sext6177, 16
  %add13326178 = or i32 %conv2846309, 3
  %idxprom1333 = sext i32 %add13326178 to i64
  %arrayidx1334 = getelementptr inbounds i16** %orig_pic, i64 %idxprom1333
  %sext6179 = add i32 %sext6166, 786432
  %conv1336 = ashr exact i32 %sext6179, 16
  %sext6180 = add i32 %sext6169, 786432
  %conv1342 = ashr exact i32 %sext6180, 16
  br label %for.body309

for.body309:                                      ; preds = %for.inc1698, %for.body309.lr.ph
  %conv3056288 = phi i32 [ 0, %for.body309.lr.ph ], [ %conv305, %for.inc1698 ]
  %mcost.16287 = phi i16 [ %mcost.06308, %for.body309.lr.ph ], [ %mcost.2, %for.inc1698 ]
  %x0.06286 = phi i16 [ 0, %for.body309.lr.ph ], [ %add1700, %for.inc1698 ]
  %add311 = add nsw i32 %conv3056288, %pic_pix_x
  %shl312 = shl i32 %add311, 2
  %72 = load i16* %s_mv_x, align 2, !tbaa !4
  %conv3136164 = zext i16 %72 to i32
  %add314 = add nsw i32 %conv3136164, %shl312
  %add320 = add nsw i32 %shl312, %conv265
  %73 = load i16** %arrayidx323, align 8, !tbaa !0
  %74 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %sext6167 = shl i32 %add314, 16
  %conv326 = ashr exact i32 %sext6167, 16
  %call = call zeroext i16 %74(i16** %49, i32 %conv325, i32 %conv326, i32 %54, i32 %53) #7
  %conv327 = zext i16 %call to i32
  %mul328 = mul nsw i32 %conv327, %conv324
  %75 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %sext6170 = shl i32 %add320, 16
  %conv331 = ashr exact i32 %sext6170, 16
  %call332 = call zeroext i16 %75(i16** %52, i32 %conv330, i32 %conv331, i32 %54, i32 %53) #7
  %conv333 = zext i16 %call332 to i32
  %mul334 = mul nsw i32 %conv333, %conv329
  %add335 = add nsw i32 %mul334, %mul328
  %76 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul336 = shl i32 %76, 1
  %add337 = add nsw i32 %add335, %mul336
  %77 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add338 = add nsw i32 %77, 1
  %shr339 = ashr i32 %add337, %add338
  %add341 = add nsw i32 %shr339, %conv340
  %cmp342 = icmp slt i32 %add341, 0
  br i1 %cmp342, label %cond.end391, label %cond.false345

cond.false345:                                    ; preds = %for.body309
  %78 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call349 = call zeroext i16 %78(i16** %49, i32 %conv325, i32 %conv326, i32 %54, i32 %53) #7
  %conv350 = zext i16 %call349 to i32
  %mul351 = mul nsw i32 %conv350, %conv324
  %79 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call355 = call zeroext i16 %79(i16** %52, i32 %conv330, i32 %conv331, i32 %54, i32 %53) #7
  %conv356 = zext i16 %call355 to i32
  %mul357 = mul nsw i32 %conv356, %conv329
  %add358 = add nsw i32 %mul357, %mul351
  %80 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul359 = shl i32 %80, 1
  %add360 = add nsw i32 %add358, %mul359
  %81 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add361 = add nsw i32 %81, 1
  %shr362 = ashr i32 %add360, %add361
  %add364 = add nsw i32 %shr362, %conv340
  %82 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 155
  %83 = load i32* %max_imgpel_value, align 4, !tbaa !3
  %cmp365 = icmp sgt i32 %add364, %83
  br i1 %cmp365, label %cond.end391, label %cond.false369

cond.false369:                                    ; preds = %cond.false345
  %84 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call373 = call zeroext i16 %84(i16** %49, i32 %conv325, i32 %conv326, i32 %54, i32 %53) #7
  %conv374 = zext i16 %call373 to i32
  %mul375 = mul nsw i32 %conv374, %conv324
  %85 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call379 = call zeroext i16 %85(i16** %52, i32 %conv330, i32 %conv331, i32 %54, i32 %53) #7
  %conv380 = zext i16 %call379 to i32
  %mul381 = mul nsw i32 %conv380, %conv329
  %add382 = add nsw i32 %mul381, %mul375
  %86 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul383 = shl i32 %86, 1
  %add384 = add nsw i32 %add382, %mul383
  %87 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add385 = add nsw i32 %87, 1
  %shr386 = ashr i32 %add384, %add385
  %add388 = add nsw i32 %shr386, %conv340
  br label %cond.end391

cond.end391:                                      ; preds = %cond.false345, %cond.false369, %for.body309
  %cond392 = phi i32 [ 0, %for.body309 ], [ %add388, %cond.false369 ], [ %83, %cond.false345 ]
  %idxprom393 = sext i16 %x0.06286 to i64
  %arrayidx394 = getelementptr inbounds i16* %73, i64 %idxprom393
  %88 = load i16* %arrayidx394, align 2, !tbaa !4
  %conv395 = zext i16 %88 to i32
  %sub396 = sub nsw i32 %conv395, %cond392
  store i32 %sub396, i32* %arraydecay, align 16, !tbaa !3
  %89 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add400 = add nsw i32 %conv326, 4
  %call401 = call zeroext i16 %89(i16** %49, i32 %conv325, i32 %add400, i32 %54, i32 %53) #7
  %conv402 = zext i16 %call401 to i32
  %mul403 = mul nsw i32 %conv402, %conv324
  %90 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add407 = add nsw i32 %conv331, 4
  %call408 = call zeroext i16 %90(i16** %52, i32 %conv330, i32 %add407, i32 %54, i32 %53) #7
  %conv409 = zext i16 %call408 to i32
  %mul410 = mul nsw i32 %conv409, %conv329
  %add411 = add nsw i32 %mul410, %mul403
  %91 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul412 = shl i32 %91, 1
  %add413 = add nsw i32 %add411, %mul412
  %92 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add414 = add nsw i32 %92, 1
  %shr415 = ashr i32 %add413, %add414
  %add417 = add nsw i32 %shr415, %conv340
  %cmp418 = icmp slt i32 %add417, 0
  br i1 %cmp418, label %cond.end472, label %cond.false421

cond.false421:                                    ; preds = %cond.end391
  %93 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call426 = call zeroext i16 %93(i16** %49, i32 %conv325, i32 %add400, i32 %54, i32 %53) #7
  %conv427 = zext i16 %call426 to i32
  %mul428 = mul nsw i32 %conv427, %conv324
  %94 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call433 = call zeroext i16 %94(i16** %52, i32 %conv330, i32 %add407, i32 %54, i32 %53) #7
  %conv434 = zext i16 %call433 to i32
  %mul435 = mul nsw i32 %conv434, %conv329
  %add436 = add nsw i32 %mul435, %mul428
  %95 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul437 = shl i32 %95, 1
  %add438 = add nsw i32 %add436, %mul437
  %96 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add439 = add nsw i32 %96, 1
  %shr440 = ashr i32 %add438, %add439
  %add442 = add nsw i32 %shr440, %conv340
  %97 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value443 = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 155
  %98 = load i32* %max_imgpel_value443, align 4, !tbaa !3
  %cmp444 = icmp sgt i32 %add442, %98
  br i1 %cmp444, label %cond.end472, label %cond.false448

cond.false448:                                    ; preds = %cond.false421
  %99 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call453 = call zeroext i16 %99(i16** %49, i32 %conv325, i32 %add400, i32 %54, i32 %53) #7
  %conv454 = zext i16 %call453 to i32
  %mul455 = mul nsw i32 %conv454, %conv324
  %100 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call460 = call zeroext i16 %100(i16** %52, i32 %conv330, i32 %add407, i32 %54, i32 %53) #7
  %conv461 = zext i16 %call460 to i32
  %mul462 = mul nsw i32 %conv461, %conv329
  %add463 = add nsw i32 %mul462, %mul455
  %101 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul464 = shl i32 %101, 1
  %add465 = add nsw i32 %add463, %mul464
  %102 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add466 = add nsw i32 %102, 1
  %shr467 = ashr i32 %add465, %add466
  %add469 = add nsw i32 %shr467, %conv340
  br label %cond.end472

cond.end472:                                      ; preds = %cond.false421, %cond.false448, %cond.end391
  %cond473 = phi i32 [ 0, %cond.end391 ], [ %add469, %cond.false448 ], [ %98, %cond.false421 ]
  %add4756212 = or i32 %conv3056288, 1
  %idxprom476 = sext i32 %add4756212 to i64
  %arrayidx477 = getelementptr inbounds i16* %73, i64 %idxprom476
  %103 = load i16* %arrayidx477, align 2, !tbaa !4
  %conv478 = zext i16 %103 to i32
  %sub479 = sub nsw i32 %conv478, %cond473
  store i32 %sub479, i32* %incdec.ptr, align 4, !tbaa !3
  %104 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add484 = add nsw i32 %conv326, 8
  %call485 = call zeroext i16 %104(i16** %49, i32 %conv325, i32 %add484, i32 %54, i32 %53) #7
  %conv486 = zext i16 %call485 to i32
  %mul487 = mul nsw i32 %conv486, %conv324
  %105 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add491 = add nsw i32 %conv331, 8
  %call492 = call zeroext i16 %105(i16** %52, i32 %conv330, i32 %add491, i32 %54, i32 %53) #7
  %conv493 = zext i16 %call492 to i32
  %mul494 = mul nsw i32 %conv493, %conv329
  %add495 = add nsw i32 %mul494, %mul487
  %106 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul496 = shl i32 %106, 1
  %add497 = add nsw i32 %add495, %mul496
  %107 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add498 = add nsw i32 %107, 1
  %shr499 = ashr i32 %add497, %add498
  %add501 = add nsw i32 %shr499, %conv340
  %cmp502 = icmp slt i32 %add501, 0
  br i1 %cmp502, label %cond.end556, label %cond.false505

cond.false505:                                    ; preds = %cond.end472
  %108 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call510 = call zeroext i16 %108(i16** %49, i32 %conv325, i32 %add484, i32 %54, i32 %53) #7
  %conv511 = zext i16 %call510 to i32
  %mul512 = mul nsw i32 %conv511, %conv324
  %109 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call517 = call zeroext i16 %109(i16** %52, i32 %conv330, i32 %add491, i32 %54, i32 %53) #7
  %conv518 = zext i16 %call517 to i32
  %mul519 = mul nsw i32 %conv518, %conv329
  %add520 = add nsw i32 %mul519, %mul512
  %110 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul521 = shl i32 %110, 1
  %add522 = add nsw i32 %add520, %mul521
  %111 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add523 = add nsw i32 %111, 1
  %shr524 = ashr i32 %add522, %add523
  %add526 = add nsw i32 %shr524, %conv340
  %112 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value527 = getelementptr inbounds %struct.ImageParameters* %112, i64 0, i32 155
  %113 = load i32* %max_imgpel_value527, align 4, !tbaa !3
  %cmp528 = icmp sgt i32 %add526, %113
  br i1 %cmp528, label %cond.end556, label %cond.false532

cond.false532:                                    ; preds = %cond.false505
  %114 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call537 = call zeroext i16 %114(i16** %49, i32 %conv325, i32 %add484, i32 %54, i32 %53) #7
  %conv538 = zext i16 %call537 to i32
  %mul539 = mul nsw i32 %conv538, %conv324
  %115 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call544 = call zeroext i16 %115(i16** %52, i32 %conv330, i32 %add491, i32 %54, i32 %53) #7
  %conv545 = zext i16 %call544 to i32
  %mul546 = mul nsw i32 %conv545, %conv329
  %add547 = add nsw i32 %mul546, %mul539
  %116 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul548 = shl i32 %116, 1
  %add549 = add nsw i32 %add547, %mul548
  %117 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add550 = add nsw i32 %117, 1
  %shr551 = ashr i32 %add549, %add550
  %add553 = add nsw i32 %shr551, %conv340
  br label %cond.end556

cond.end556:                                      ; preds = %cond.false505, %cond.false532, %cond.end472
  %cond557 = phi i32 [ 0, %cond.end472 ], [ %add553, %cond.false532 ], [ %113, %cond.false505 ]
  %add5596213 = or i32 %conv3056288, 2
  %idxprom560 = sext i32 %add5596213 to i64
  %arrayidx561 = getelementptr inbounds i16* %73, i64 %idxprom560
  %118 = load i16* %arrayidx561, align 2, !tbaa !4
  %conv562 = zext i16 %118 to i32
  %sub563 = sub nsw i32 %conv562, %cond557
  store i32 %sub563, i32* %incdec.ptr480, align 8, !tbaa !3
  %119 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add568 = add nsw i32 %conv326, 12
  %call569 = call zeroext i16 %119(i16** %49, i32 %conv325, i32 %add568, i32 %54, i32 %53) #7
  %conv570 = zext i16 %call569 to i32
  %mul571 = mul nsw i32 %conv570, %conv324
  %120 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add575 = add nsw i32 %conv331, 12
  %call576 = call zeroext i16 %120(i16** %52, i32 %conv330, i32 %add575, i32 %54, i32 %53) #7
  %conv577 = zext i16 %call576 to i32
  %mul578 = mul nsw i32 %conv577, %conv329
  %add579 = add nsw i32 %mul578, %mul571
  %121 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul580 = shl i32 %121, 1
  %add581 = add nsw i32 %add579, %mul580
  %122 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add582 = add nsw i32 %122, 1
  %shr583 = ashr i32 %add581, %add582
  %add585 = add nsw i32 %shr583, %conv340
  %cmp586 = icmp slt i32 %add585, 0
  br i1 %cmp586, label %cond.end640, label %cond.false589

cond.false589:                                    ; preds = %cond.end556
  %123 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call594 = call zeroext i16 %123(i16** %49, i32 %conv325, i32 %add568, i32 %54, i32 %53) #7
  %conv595 = zext i16 %call594 to i32
  %mul596 = mul nsw i32 %conv595, %conv324
  %124 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call601 = call zeroext i16 %124(i16** %52, i32 %conv330, i32 %add575, i32 %54, i32 %53) #7
  %conv602 = zext i16 %call601 to i32
  %mul603 = mul nsw i32 %conv602, %conv329
  %add604 = add nsw i32 %mul603, %mul596
  %125 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul605 = shl i32 %125, 1
  %add606 = add nsw i32 %add604, %mul605
  %126 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add607 = add nsw i32 %126, 1
  %shr608 = ashr i32 %add606, %add607
  %add610 = add nsw i32 %shr608, %conv340
  %127 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value611 = getelementptr inbounds %struct.ImageParameters* %127, i64 0, i32 155
  %128 = load i32* %max_imgpel_value611, align 4, !tbaa !3
  %cmp612 = icmp sgt i32 %add610, %128
  br i1 %cmp612, label %cond.end640, label %cond.false616

cond.false616:                                    ; preds = %cond.false589
  %129 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call621 = call zeroext i16 %129(i16** %49, i32 %conv325, i32 %add568, i32 %54, i32 %53) #7
  %conv622 = zext i16 %call621 to i32
  %mul623 = mul nsw i32 %conv622, %conv324
  %130 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call628 = call zeroext i16 %130(i16** %52, i32 %conv330, i32 %add575, i32 %54, i32 %53) #7
  %conv629 = zext i16 %call628 to i32
  %mul630 = mul nsw i32 %conv629, %conv329
  %add631 = add nsw i32 %mul630, %mul623
  %131 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul632 = shl i32 %131, 1
  %add633 = add nsw i32 %add631, %mul632
  %132 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add634 = add nsw i32 %132, 1
  %shr635 = ashr i32 %add633, %add634
  %add637 = add nsw i32 %shr635, %conv340
  br label %cond.end640

cond.end640:                                      ; preds = %cond.false589, %cond.false616, %cond.end556
  %cond641 = phi i32 [ 0, %cond.end556 ], [ %add637, %cond.false616 ], [ %128, %cond.false589 ]
  %add6436214 = or i32 %conv3056288, 3
  %idxprom644 = sext i32 %add6436214 to i64
  %arrayidx645 = getelementptr inbounds i16* %73, i64 %idxprom644
  %133 = load i16* %arrayidx645, align 2, !tbaa !4
  %conv646 = zext i16 %133 to i32
  %sub647 = sub nsw i32 %conv646, %cond641
  store i32 %sub647, i32* %incdec.ptr564, align 4, !tbaa !3
  %134 = load i16** %arrayidx658, align 8, !tbaa !0
  %135 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call662 = call zeroext i16 %135(i16** %49, i32 %conv660, i32 %conv326, i32 %54, i32 %53) #7
  %conv663 = zext i16 %call662 to i32
  %mul664 = mul nsw i32 %conv663, %conv324
  %136 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call668 = call zeroext i16 %136(i16** %52, i32 %conv666, i32 %conv331, i32 %54, i32 %53) #7
  %conv669 = zext i16 %call668 to i32
  %mul670 = mul nsw i32 %conv669, %conv329
  %add671 = add nsw i32 %mul670, %mul664
  %137 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul672 = shl i32 %137, 1
  %add673 = add nsw i32 %add671, %mul672
  %138 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add674 = add nsw i32 %138, 1
  %shr675 = ashr i32 %add673, %add674
  %add677 = add nsw i32 %shr675, %conv340
  %cmp678 = icmp slt i32 %add677, 0
  br i1 %cmp678, label %cond.end728, label %cond.false681

cond.false681:                                    ; preds = %cond.end640
  %139 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call685 = call zeroext i16 %139(i16** %49, i32 %conv660, i32 %conv326, i32 %54, i32 %53) #7
  %conv686 = zext i16 %call685 to i32
  %mul687 = mul nsw i32 %conv686, %conv324
  %140 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call691 = call zeroext i16 %140(i16** %52, i32 %conv666, i32 %conv331, i32 %54, i32 %53) #7
  %conv692 = zext i16 %call691 to i32
  %mul693 = mul nsw i32 %conv692, %conv329
  %add694 = add nsw i32 %mul693, %mul687
  %141 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul695 = shl i32 %141, 1
  %add696 = add nsw i32 %add694, %mul695
  %142 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add697 = add nsw i32 %142, 1
  %shr698 = ashr i32 %add696, %add697
  %add700 = add nsw i32 %shr698, %conv340
  %143 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value701 = getelementptr inbounds %struct.ImageParameters* %143, i64 0, i32 155
  %144 = load i32* %max_imgpel_value701, align 4, !tbaa !3
  %cmp702 = icmp sgt i32 %add700, %144
  br i1 %cmp702, label %cond.end728, label %cond.false706

cond.false706:                                    ; preds = %cond.false681
  %145 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call710 = call zeroext i16 %145(i16** %49, i32 %conv660, i32 %conv326, i32 %54, i32 %53) #7
  %conv711 = zext i16 %call710 to i32
  %mul712 = mul nsw i32 %conv711, %conv324
  %146 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call716 = call zeroext i16 %146(i16** %52, i32 %conv666, i32 %conv331, i32 %54, i32 %53) #7
  %conv717 = zext i16 %call716 to i32
  %mul718 = mul nsw i32 %conv717, %conv329
  %add719 = add nsw i32 %mul718, %mul712
  %147 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul720 = shl i32 %147, 1
  %add721 = add nsw i32 %add719, %mul720
  %148 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add722 = add nsw i32 %148, 1
  %shr723 = ashr i32 %add721, %add722
  %add725 = add nsw i32 %shr723, %conv340
  br label %cond.end728

cond.end728:                                      ; preds = %cond.false681, %cond.false706, %cond.end640
  %cond729 = phi i32 [ 0, %cond.end640 ], [ %add725, %cond.false706 ], [ %144, %cond.false681 ]
  %arrayidx731 = getelementptr inbounds i16* %134, i64 %idxprom393
  %149 = load i16* %arrayidx731, align 2, !tbaa !4
  %conv732 = zext i16 %149 to i32
  %sub733 = sub nsw i32 %conv732, %cond729
  store i32 %sub733, i32* %incdec.ptr648, align 16, !tbaa !3
  %150 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call739 = call zeroext i16 %150(i16** %49, i32 %conv660, i32 %add400, i32 %54, i32 %53) #7
  %conv740 = zext i16 %call739 to i32
  %mul741 = mul nsw i32 %conv740, %conv324
  %151 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call746 = call zeroext i16 %151(i16** %52, i32 %conv666, i32 %add407, i32 %54, i32 %53) #7
  %conv747 = zext i16 %call746 to i32
  %mul748 = mul nsw i32 %conv747, %conv329
  %add749 = add nsw i32 %mul748, %mul741
  %152 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul750 = shl i32 %152, 1
  %add751 = add nsw i32 %add749, %mul750
  %153 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add752 = add nsw i32 %153, 1
  %shr753 = ashr i32 %add751, %add752
  %add755 = add nsw i32 %shr753, %conv340
  %cmp756 = icmp slt i32 %add755, 0
  br i1 %cmp756, label %cond.end810, label %cond.false759

cond.false759:                                    ; preds = %cond.end728
  %154 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call764 = call zeroext i16 %154(i16** %49, i32 %conv660, i32 %add400, i32 %54, i32 %53) #7
  %conv765 = zext i16 %call764 to i32
  %mul766 = mul nsw i32 %conv765, %conv324
  %155 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call771 = call zeroext i16 %155(i16** %52, i32 %conv666, i32 %add407, i32 %54, i32 %53) #7
  %conv772 = zext i16 %call771 to i32
  %mul773 = mul nsw i32 %conv772, %conv329
  %add774 = add nsw i32 %mul773, %mul766
  %156 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul775 = shl i32 %156, 1
  %add776 = add nsw i32 %add774, %mul775
  %157 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add777 = add nsw i32 %157, 1
  %shr778 = ashr i32 %add776, %add777
  %add780 = add nsw i32 %shr778, %conv340
  %158 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value781 = getelementptr inbounds %struct.ImageParameters* %158, i64 0, i32 155
  %159 = load i32* %max_imgpel_value781, align 4, !tbaa !3
  %cmp782 = icmp sgt i32 %add780, %159
  br i1 %cmp782, label %cond.end810, label %cond.false786

cond.false786:                                    ; preds = %cond.false759
  %160 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call791 = call zeroext i16 %160(i16** %49, i32 %conv660, i32 %add400, i32 %54, i32 %53) #7
  %conv792 = zext i16 %call791 to i32
  %mul793 = mul nsw i32 %conv792, %conv324
  %161 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call798 = call zeroext i16 %161(i16** %52, i32 %conv666, i32 %add407, i32 %54, i32 %53) #7
  %conv799 = zext i16 %call798 to i32
  %mul800 = mul nsw i32 %conv799, %conv329
  %add801 = add nsw i32 %mul800, %mul793
  %162 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul802 = shl i32 %162, 1
  %add803 = add nsw i32 %add801, %mul802
  %163 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add804 = add nsw i32 %163, 1
  %shr805 = ashr i32 %add803, %add804
  %add807 = add nsw i32 %shr805, %conv340
  br label %cond.end810

cond.end810:                                      ; preds = %cond.false759, %cond.false786, %cond.end728
  %cond811 = phi i32 [ 0, %cond.end728 ], [ %add807, %cond.false786 ], [ %159, %cond.false759 ]
  %arrayidx815 = getelementptr inbounds i16* %134, i64 %idxprom476
  %164 = load i16* %arrayidx815, align 2, !tbaa !4
  %conv816 = zext i16 %164 to i32
  %sub817 = sub nsw i32 %conv816, %cond811
  store i32 %sub817, i32* %incdec.ptr734, align 4, !tbaa !3
  %165 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call823 = call zeroext i16 %165(i16** %49, i32 %conv660, i32 %add484, i32 %54, i32 %53) #7
  %conv824 = zext i16 %call823 to i32
  %mul825 = mul nsw i32 %conv824, %conv324
  %166 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call830 = call zeroext i16 %166(i16** %52, i32 %conv666, i32 %add491, i32 %54, i32 %53) #7
  %conv831 = zext i16 %call830 to i32
  %mul832 = mul nsw i32 %conv831, %conv329
  %add833 = add nsw i32 %mul832, %mul825
  %167 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul834 = shl i32 %167, 1
  %add835 = add nsw i32 %add833, %mul834
  %168 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add836 = add nsw i32 %168, 1
  %shr837 = ashr i32 %add835, %add836
  %add839 = add nsw i32 %shr837, %conv340
  %cmp840 = icmp slt i32 %add839, 0
  br i1 %cmp840, label %cond.end894, label %cond.false843

cond.false843:                                    ; preds = %cond.end810
  %169 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call848 = call zeroext i16 %169(i16** %49, i32 %conv660, i32 %add484, i32 %54, i32 %53) #7
  %conv849 = zext i16 %call848 to i32
  %mul850 = mul nsw i32 %conv849, %conv324
  %170 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call855 = call zeroext i16 %170(i16** %52, i32 %conv666, i32 %add491, i32 %54, i32 %53) #7
  %conv856 = zext i16 %call855 to i32
  %mul857 = mul nsw i32 %conv856, %conv329
  %add858 = add nsw i32 %mul857, %mul850
  %171 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul859 = shl i32 %171, 1
  %add860 = add nsw i32 %add858, %mul859
  %172 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add861 = add nsw i32 %172, 1
  %shr862 = ashr i32 %add860, %add861
  %add864 = add nsw i32 %shr862, %conv340
  %173 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value865 = getelementptr inbounds %struct.ImageParameters* %173, i64 0, i32 155
  %174 = load i32* %max_imgpel_value865, align 4, !tbaa !3
  %cmp866 = icmp sgt i32 %add864, %174
  br i1 %cmp866, label %cond.end894, label %cond.false870

cond.false870:                                    ; preds = %cond.false843
  %175 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call875 = call zeroext i16 %175(i16** %49, i32 %conv660, i32 %add484, i32 %54, i32 %53) #7
  %conv876 = zext i16 %call875 to i32
  %mul877 = mul nsw i32 %conv876, %conv324
  %176 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call882 = call zeroext i16 %176(i16** %52, i32 %conv666, i32 %add491, i32 %54, i32 %53) #7
  %conv883 = zext i16 %call882 to i32
  %mul884 = mul nsw i32 %conv883, %conv329
  %add885 = add nsw i32 %mul884, %mul877
  %177 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul886 = shl i32 %177, 1
  %add887 = add nsw i32 %add885, %mul886
  %178 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add888 = add nsw i32 %178, 1
  %shr889 = ashr i32 %add887, %add888
  %add891 = add nsw i32 %shr889, %conv340
  br label %cond.end894

cond.end894:                                      ; preds = %cond.false843, %cond.false870, %cond.end810
  %cond895 = phi i32 [ 0, %cond.end810 ], [ %add891, %cond.false870 ], [ %174, %cond.false843 ]
  %arrayidx899 = getelementptr inbounds i16* %134, i64 %idxprom560
  %179 = load i16* %arrayidx899, align 2, !tbaa !4
  %conv900 = zext i16 %179 to i32
  %sub901 = sub nsw i32 %conv900, %cond895
  store i32 %sub901, i32* %incdec.ptr818, align 8, !tbaa !3
  %180 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call907 = call zeroext i16 %180(i16** %49, i32 %conv660, i32 %add568, i32 %54, i32 %53) #7
  %conv908 = zext i16 %call907 to i32
  %mul909 = mul nsw i32 %conv908, %conv324
  %181 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call914 = call zeroext i16 %181(i16** %52, i32 %conv666, i32 %add575, i32 %54, i32 %53) #7
  %conv915 = zext i16 %call914 to i32
  %mul916 = mul nsw i32 %conv915, %conv329
  %add917 = add nsw i32 %mul916, %mul909
  %182 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul918 = shl i32 %182, 1
  %add919 = add nsw i32 %add917, %mul918
  %183 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add920 = add nsw i32 %183, 1
  %shr921 = ashr i32 %add919, %add920
  %add923 = add nsw i32 %shr921, %conv340
  %cmp924 = icmp slt i32 %add923, 0
  br i1 %cmp924, label %cond.end978, label %cond.false927

cond.false927:                                    ; preds = %cond.end894
  %184 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call932 = call zeroext i16 %184(i16** %49, i32 %conv660, i32 %add568, i32 %54, i32 %53) #7
  %conv933 = zext i16 %call932 to i32
  %mul934 = mul nsw i32 %conv933, %conv324
  %185 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call939 = call zeroext i16 %185(i16** %52, i32 %conv666, i32 %add575, i32 %54, i32 %53) #7
  %conv940 = zext i16 %call939 to i32
  %mul941 = mul nsw i32 %conv940, %conv329
  %add942 = add nsw i32 %mul941, %mul934
  %186 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul943 = shl i32 %186, 1
  %add944 = add nsw i32 %add942, %mul943
  %187 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add945 = add nsw i32 %187, 1
  %shr946 = ashr i32 %add944, %add945
  %add948 = add nsw i32 %shr946, %conv340
  %188 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value949 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 155
  %189 = load i32* %max_imgpel_value949, align 4, !tbaa !3
  %cmp950 = icmp sgt i32 %add948, %189
  br i1 %cmp950, label %cond.end978, label %cond.false954

cond.false954:                                    ; preds = %cond.false927
  %190 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call959 = call zeroext i16 %190(i16** %49, i32 %conv660, i32 %add568, i32 %54, i32 %53) #7
  %conv960 = zext i16 %call959 to i32
  %mul961 = mul nsw i32 %conv960, %conv324
  %191 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call966 = call zeroext i16 %191(i16** %52, i32 %conv666, i32 %add575, i32 %54, i32 %53) #7
  %conv967 = zext i16 %call966 to i32
  %mul968 = mul nsw i32 %conv967, %conv329
  %add969 = add nsw i32 %mul968, %mul961
  %192 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul970 = shl i32 %192, 1
  %add971 = add nsw i32 %add969, %mul970
  %193 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add972 = add nsw i32 %193, 1
  %shr973 = ashr i32 %add971, %add972
  %add975 = add nsw i32 %shr973, %conv340
  br label %cond.end978

cond.end978:                                      ; preds = %cond.false927, %cond.false954, %cond.end894
  %cond979 = phi i32 [ 0, %cond.end894 ], [ %add975, %cond.false954 ], [ %189, %cond.false927 ]
  %arrayidx983 = getelementptr inbounds i16* %134, i64 %idxprom644
  %194 = load i16* %arrayidx983, align 2, !tbaa !4
  %conv984 = zext i16 %194 to i32
  %sub985 = sub nsw i32 %conv984, %cond979
  store i32 %sub985, i32* %incdec.ptr902, align 4, !tbaa !3
  %195 = load i16** %arrayidx996, align 8, !tbaa !0
  %196 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1000 = call zeroext i16 %196(i16** %49, i32 %conv998, i32 %conv326, i32 %54, i32 %53) #7
  %conv1001 = zext i16 %call1000 to i32
  %mul1002 = mul nsw i32 %conv1001, %conv324
  %197 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1006 = call zeroext i16 %197(i16** %52, i32 %conv1004, i32 %conv331, i32 %54, i32 %53) #7
  %conv1007 = zext i16 %call1006 to i32
  %mul1008 = mul nsw i32 %conv1007, %conv329
  %add1009 = add nsw i32 %mul1008, %mul1002
  %198 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1010 = shl i32 %198, 1
  %add1011 = add nsw i32 %add1009, %mul1010
  %199 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1012 = add nsw i32 %199, 1
  %shr1013 = ashr i32 %add1011, %add1012
  %add1015 = add nsw i32 %shr1013, %conv340
  %cmp1016 = icmp slt i32 %add1015, 0
  br i1 %cmp1016, label %cond.end1066, label %cond.false1019

cond.false1019:                                   ; preds = %cond.end978
  %200 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1023 = call zeroext i16 %200(i16** %49, i32 %conv998, i32 %conv326, i32 %54, i32 %53) #7
  %conv1024 = zext i16 %call1023 to i32
  %mul1025 = mul nsw i32 %conv1024, %conv324
  %201 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1029 = call zeroext i16 %201(i16** %52, i32 %conv1004, i32 %conv331, i32 %54, i32 %53) #7
  %conv1030 = zext i16 %call1029 to i32
  %mul1031 = mul nsw i32 %conv1030, %conv329
  %add1032 = add nsw i32 %mul1031, %mul1025
  %202 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1033 = shl i32 %202, 1
  %add1034 = add nsw i32 %add1032, %mul1033
  %203 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1035 = add nsw i32 %203, 1
  %shr1036 = ashr i32 %add1034, %add1035
  %add1038 = add nsw i32 %shr1036, %conv340
  %204 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value1039 = getelementptr inbounds %struct.ImageParameters* %204, i64 0, i32 155
  %205 = load i32* %max_imgpel_value1039, align 4, !tbaa !3
  %cmp1040 = icmp sgt i32 %add1038, %205
  br i1 %cmp1040, label %cond.end1066, label %cond.false1044

cond.false1044:                                   ; preds = %cond.false1019
  %206 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1048 = call zeroext i16 %206(i16** %49, i32 %conv998, i32 %conv326, i32 %54, i32 %53) #7
  %conv1049 = zext i16 %call1048 to i32
  %mul1050 = mul nsw i32 %conv1049, %conv324
  %207 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1054 = call zeroext i16 %207(i16** %52, i32 %conv1004, i32 %conv331, i32 %54, i32 %53) #7
  %conv1055 = zext i16 %call1054 to i32
  %mul1056 = mul nsw i32 %conv1055, %conv329
  %add1057 = add nsw i32 %mul1056, %mul1050
  %208 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1058 = shl i32 %208, 1
  %add1059 = add nsw i32 %add1057, %mul1058
  %209 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1060 = add nsw i32 %209, 1
  %shr1061 = ashr i32 %add1059, %add1060
  %add1063 = add nsw i32 %shr1061, %conv340
  br label %cond.end1066

cond.end1066:                                     ; preds = %cond.false1019, %cond.false1044, %cond.end978
  %cond1067 = phi i32 [ 0, %cond.end978 ], [ %add1063, %cond.false1044 ], [ %205, %cond.false1019 ]
  %arrayidx1069 = getelementptr inbounds i16* %195, i64 %idxprom393
  %210 = load i16* %arrayidx1069, align 2, !tbaa !4
  %conv1070 = zext i16 %210 to i32
  %sub1071 = sub nsw i32 %conv1070, %cond1067
  store i32 %sub1071, i32* %incdec.ptr986, align 16, !tbaa !3
  %211 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1077 = call zeroext i16 %211(i16** %49, i32 %conv998, i32 %add400, i32 %54, i32 %53) #7
  %conv1078 = zext i16 %call1077 to i32
  %mul1079 = mul nsw i32 %conv1078, %conv324
  %212 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1084 = call zeroext i16 %212(i16** %52, i32 %conv1004, i32 %add407, i32 %54, i32 %53) #7
  %conv1085 = zext i16 %call1084 to i32
  %mul1086 = mul nsw i32 %conv1085, %conv329
  %add1087 = add nsw i32 %mul1086, %mul1079
  %213 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1088 = shl i32 %213, 1
  %add1089 = add nsw i32 %add1087, %mul1088
  %214 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1090 = add nsw i32 %214, 1
  %shr1091 = ashr i32 %add1089, %add1090
  %add1093 = add nsw i32 %shr1091, %conv340
  %cmp1094 = icmp slt i32 %add1093, 0
  br i1 %cmp1094, label %cond.end1148, label %cond.false1097

cond.false1097:                                   ; preds = %cond.end1066
  %215 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1102 = call zeroext i16 %215(i16** %49, i32 %conv998, i32 %add400, i32 %54, i32 %53) #7
  %conv1103 = zext i16 %call1102 to i32
  %mul1104 = mul nsw i32 %conv1103, %conv324
  %216 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1109 = call zeroext i16 %216(i16** %52, i32 %conv1004, i32 %add407, i32 %54, i32 %53) #7
  %conv1110 = zext i16 %call1109 to i32
  %mul1111 = mul nsw i32 %conv1110, %conv329
  %add1112 = add nsw i32 %mul1111, %mul1104
  %217 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1113 = shl i32 %217, 1
  %add1114 = add nsw i32 %add1112, %mul1113
  %218 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1115 = add nsw i32 %218, 1
  %shr1116 = ashr i32 %add1114, %add1115
  %add1118 = add nsw i32 %shr1116, %conv340
  %219 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value1119 = getelementptr inbounds %struct.ImageParameters* %219, i64 0, i32 155
  %220 = load i32* %max_imgpel_value1119, align 4, !tbaa !3
  %cmp1120 = icmp sgt i32 %add1118, %220
  br i1 %cmp1120, label %cond.end1148, label %cond.false1124

cond.false1124:                                   ; preds = %cond.false1097
  %221 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1129 = call zeroext i16 %221(i16** %49, i32 %conv998, i32 %add400, i32 %54, i32 %53) #7
  %conv1130 = zext i16 %call1129 to i32
  %mul1131 = mul nsw i32 %conv1130, %conv324
  %222 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1136 = call zeroext i16 %222(i16** %52, i32 %conv1004, i32 %add407, i32 %54, i32 %53) #7
  %conv1137 = zext i16 %call1136 to i32
  %mul1138 = mul nsw i32 %conv1137, %conv329
  %add1139 = add nsw i32 %mul1138, %mul1131
  %223 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1140 = shl i32 %223, 1
  %add1141 = add nsw i32 %add1139, %mul1140
  %224 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1142 = add nsw i32 %224, 1
  %shr1143 = ashr i32 %add1141, %add1142
  %add1145 = add nsw i32 %shr1143, %conv340
  br label %cond.end1148

cond.end1148:                                     ; preds = %cond.false1097, %cond.false1124, %cond.end1066
  %cond1149 = phi i32 [ 0, %cond.end1066 ], [ %add1145, %cond.false1124 ], [ %220, %cond.false1097 ]
  %arrayidx1153 = getelementptr inbounds i16* %195, i64 %idxprom476
  %225 = load i16* %arrayidx1153, align 2, !tbaa !4
  %conv1154 = zext i16 %225 to i32
  %sub1155 = sub nsw i32 %conv1154, %cond1149
  store i32 %sub1155, i32* %incdec.ptr1072, align 4, !tbaa !3
  %226 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1161 = call zeroext i16 %226(i16** %49, i32 %conv998, i32 %add484, i32 %54, i32 %53) #7
  %conv1162 = zext i16 %call1161 to i32
  %mul1163 = mul nsw i32 %conv1162, %conv324
  %227 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1168 = call zeroext i16 %227(i16** %52, i32 %conv1004, i32 %add491, i32 %54, i32 %53) #7
  %conv1169 = zext i16 %call1168 to i32
  %mul1170 = mul nsw i32 %conv1169, %conv329
  %add1171 = add nsw i32 %mul1170, %mul1163
  %228 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1172 = shl i32 %228, 1
  %add1173 = add nsw i32 %add1171, %mul1172
  %229 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1174 = add nsw i32 %229, 1
  %shr1175 = ashr i32 %add1173, %add1174
  %add1177 = add nsw i32 %shr1175, %conv340
  %cmp1178 = icmp slt i32 %add1177, 0
  br i1 %cmp1178, label %cond.end1232, label %cond.false1181

cond.false1181:                                   ; preds = %cond.end1148
  %230 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1186 = call zeroext i16 %230(i16** %49, i32 %conv998, i32 %add484, i32 %54, i32 %53) #7
  %conv1187 = zext i16 %call1186 to i32
  %mul1188 = mul nsw i32 %conv1187, %conv324
  %231 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1193 = call zeroext i16 %231(i16** %52, i32 %conv1004, i32 %add491, i32 %54, i32 %53) #7
  %conv1194 = zext i16 %call1193 to i32
  %mul1195 = mul nsw i32 %conv1194, %conv329
  %add1196 = add nsw i32 %mul1195, %mul1188
  %232 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1197 = shl i32 %232, 1
  %add1198 = add nsw i32 %add1196, %mul1197
  %233 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1199 = add nsw i32 %233, 1
  %shr1200 = ashr i32 %add1198, %add1199
  %add1202 = add nsw i32 %shr1200, %conv340
  %234 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value1203 = getelementptr inbounds %struct.ImageParameters* %234, i64 0, i32 155
  %235 = load i32* %max_imgpel_value1203, align 4, !tbaa !3
  %cmp1204 = icmp sgt i32 %add1202, %235
  br i1 %cmp1204, label %cond.end1232, label %cond.false1208

cond.false1208:                                   ; preds = %cond.false1181
  %236 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1213 = call zeroext i16 %236(i16** %49, i32 %conv998, i32 %add484, i32 %54, i32 %53) #7
  %conv1214 = zext i16 %call1213 to i32
  %mul1215 = mul nsw i32 %conv1214, %conv324
  %237 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1220 = call zeroext i16 %237(i16** %52, i32 %conv1004, i32 %add491, i32 %54, i32 %53) #7
  %conv1221 = zext i16 %call1220 to i32
  %mul1222 = mul nsw i32 %conv1221, %conv329
  %add1223 = add nsw i32 %mul1222, %mul1215
  %238 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1224 = shl i32 %238, 1
  %add1225 = add nsw i32 %add1223, %mul1224
  %239 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1226 = add nsw i32 %239, 1
  %shr1227 = ashr i32 %add1225, %add1226
  %add1229 = add nsw i32 %shr1227, %conv340
  br label %cond.end1232

cond.end1232:                                     ; preds = %cond.false1181, %cond.false1208, %cond.end1148
  %cond1233 = phi i32 [ 0, %cond.end1148 ], [ %add1229, %cond.false1208 ], [ %235, %cond.false1181 ]
  %arrayidx1237 = getelementptr inbounds i16* %195, i64 %idxprom560
  %240 = load i16* %arrayidx1237, align 2, !tbaa !4
  %conv1238 = zext i16 %240 to i32
  %sub1239 = sub nsw i32 %conv1238, %cond1233
  store i32 %sub1239, i32* %incdec.ptr1156, align 8, !tbaa !3
  %241 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1245 = call zeroext i16 %241(i16** %49, i32 %conv998, i32 %add568, i32 %54, i32 %53) #7
  %conv1246 = zext i16 %call1245 to i32
  %mul1247 = mul nsw i32 %conv1246, %conv324
  %242 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1252 = call zeroext i16 %242(i16** %52, i32 %conv1004, i32 %add575, i32 %54, i32 %53) #7
  %conv1253 = zext i16 %call1252 to i32
  %mul1254 = mul nsw i32 %conv1253, %conv329
  %add1255 = add nsw i32 %mul1254, %mul1247
  %243 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1256 = shl i32 %243, 1
  %add1257 = add nsw i32 %add1255, %mul1256
  %244 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1258 = add nsw i32 %244, 1
  %shr1259 = ashr i32 %add1257, %add1258
  %add1261 = add nsw i32 %shr1259, %conv340
  %cmp1262 = icmp slt i32 %add1261, 0
  br i1 %cmp1262, label %cond.end1316, label %cond.false1265

cond.false1265:                                   ; preds = %cond.end1232
  %245 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1270 = call zeroext i16 %245(i16** %49, i32 %conv998, i32 %add568, i32 %54, i32 %53) #7
  %conv1271 = zext i16 %call1270 to i32
  %mul1272 = mul nsw i32 %conv1271, %conv324
  %246 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1277 = call zeroext i16 %246(i16** %52, i32 %conv1004, i32 %add575, i32 %54, i32 %53) #7
  %conv1278 = zext i16 %call1277 to i32
  %mul1279 = mul nsw i32 %conv1278, %conv329
  %add1280 = add nsw i32 %mul1279, %mul1272
  %247 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1281 = shl i32 %247, 1
  %add1282 = add nsw i32 %add1280, %mul1281
  %248 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1283 = add nsw i32 %248, 1
  %shr1284 = ashr i32 %add1282, %add1283
  %add1286 = add nsw i32 %shr1284, %conv340
  %249 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value1287 = getelementptr inbounds %struct.ImageParameters* %249, i64 0, i32 155
  %250 = load i32* %max_imgpel_value1287, align 4, !tbaa !3
  %cmp1288 = icmp sgt i32 %add1286, %250
  br i1 %cmp1288, label %cond.end1316, label %cond.false1292

cond.false1292:                                   ; preds = %cond.false1265
  %251 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1297 = call zeroext i16 %251(i16** %49, i32 %conv998, i32 %add568, i32 %54, i32 %53) #7
  %conv1298 = zext i16 %call1297 to i32
  %mul1299 = mul nsw i32 %conv1298, %conv324
  %252 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1304 = call zeroext i16 %252(i16** %52, i32 %conv1004, i32 %add575, i32 %54, i32 %53) #7
  %conv1305 = zext i16 %call1304 to i32
  %mul1306 = mul nsw i32 %conv1305, %conv329
  %add1307 = add nsw i32 %mul1306, %mul1299
  %253 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1308 = shl i32 %253, 1
  %add1309 = add nsw i32 %add1307, %mul1308
  %254 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1310 = add nsw i32 %254, 1
  %shr1311 = ashr i32 %add1309, %add1310
  %add1313 = add nsw i32 %shr1311, %conv340
  br label %cond.end1316

cond.end1316:                                     ; preds = %cond.false1265, %cond.false1292, %cond.end1232
  %cond1317 = phi i32 [ 0, %cond.end1232 ], [ %add1313, %cond.false1292 ], [ %250, %cond.false1265 ]
  %arrayidx1321 = getelementptr inbounds i16* %195, i64 %idxprom644
  %255 = load i16* %arrayidx1321, align 2, !tbaa !4
  %conv1322 = zext i16 %255 to i32
  %sub1323 = sub nsw i32 %conv1322, %cond1317
  store i32 %sub1323, i32* %incdec.ptr1240, align 4, !tbaa !3
  %256 = load i16** %arrayidx1334, align 8, !tbaa !0
  %257 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1338 = call zeroext i16 %257(i16** %49, i32 %conv1336, i32 %conv326, i32 %54, i32 %53) #7
  %conv1339 = zext i16 %call1338 to i32
  %mul1340 = mul nsw i32 %conv1339, %conv324
  %258 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1344 = call zeroext i16 %258(i16** %52, i32 %conv1342, i32 %conv331, i32 %54, i32 %53) #7
  %conv1345 = zext i16 %call1344 to i32
  %mul1346 = mul nsw i32 %conv1345, %conv329
  %add1347 = add nsw i32 %mul1346, %mul1340
  %259 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1348 = shl i32 %259, 1
  %add1349 = add nsw i32 %add1347, %mul1348
  %260 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1350 = add nsw i32 %260, 1
  %shr1351 = ashr i32 %add1349, %add1350
  %add1353 = add nsw i32 %shr1351, %conv340
  %cmp1354 = icmp slt i32 %add1353, 0
  br i1 %cmp1354, label %cond.end1404, label %cond.false1357

cond.false1357:                                   ; preds = %cond.end1316
  %261 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1361 = call zeroext i16 %261(i16** %49, i32 %conv1336, i32 %conv326, i32 %54, i32 %53) #7
  %conv1362 = zext i16 %call1361 to i32
  %mul1363 = mul nsw i32 %conv1362, %conv324
  %262 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1367 = call zeroext i16 %262(i16** %52, i32 %conv1342, i32 %conv331, i32 %54, i32 %53) #7
  %conv1368 = zext i16 %call1367 to i32
  %mul1369 = mul nsw i32 %conv1368, %conv329
  %add1370 = add nsw i32 %mul1369, %mul1363
  %263 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1371 = shl i32 %263, 1
  %add1372 = add nsw i32 %add1370, %mul1371
  %264 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1373 = add nsw i32 %264, 1
  %shr1374 = ashr i32 %add1372, %add1373
  %add1376 = add nsw i32 %shr1374, %conv340
  %265 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value1377 = getelementptr inbounds %struct.ImageParameters* %265, i64 0, i32 155
  %266 = load i32* %max_imgpel_value1377, align 4, !tbaa !3
  %cmp1378 = icmp sgt i32 %add1376, %266
  br i1 %cmp1378, label %cond.end1404, label %cond.false1382

cond.false1382:                                   ; preds = %cond.false1357
  %267 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1386 = call zeroext i16 %267(i16** %49, i32 %conv1336, i32 %conv326, i32 %54, i32 %53) #7
  %conv1387 = zext i16 %call1386 to i32
  %mul1388 = mul nsw i32 %conv1387, %conv324
  %268 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1392 = call zeroext i16 %268(i16** %52, i32 %conv1342, i32 %conv331, i32 %54, i32 %53) #7
  %conv1393 = zext i16 %call1392 to i32
  %mul1394 = mul nsw i32 %conv1393, %conv329
  %add1395 = add nsw i32 %mul1394, %mul1388
  %269 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1396 = shl i32 %269, 1
  %add1397 = add nsw i32 %add1395, %mul1396
  %270 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1398 = add nsw i32 %270, 1
  %shr1399 = ashr i32 %add1397, %add1398
  %add1401 = add nsw i32 %shr1399, %conv340
  br label %cond.end1404

cond.end1404:                                     ; preds = %cond.false1357, %cond.false1382, %cond.end1316
  %cond1405 = phi i32 [ 0, %cond.end1316 ], [ %add1401, %cond.false1382 ], [ %266, %cond.false1357 ]
  %arrayidx1407 = getelementptr inbounds i16* %256, i64 %idxprom393
  %271 = load i16* %arrayidx1407, align 2, !tbaa !4
  %conv1408 = zext i16 %271 to i32
  %sub1409 = sub nsw i32 %conv1408, %cond1405
  store i32 %sub1409, i32* %incdec.ptr1324, align 16, !tbaa !3
  %272 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1415 = call zeroext i16 %272(i16** %49, i32 %conv1336, i32 %add400, i32 %54, i32 %53) #7
  %conv1416 = zext i16 %call1415 to i32
  %mul1417 = mul nsw i32 %conv1416, %conv324
  %273 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1422 = call zeroext i16 %273(i16** %52, i32 %conv1342, i32 %add407, i32 %54, i32 %53) #7
  %conv1423 = zext i16 %call1422 to i32
  %mul1424 = mul nsw i32 %conv1423, %conv329
  %add1425 = add nsw i32 %mul1424, %mul1417
  %274 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1426 = shl i32 %274, 1
  %add1427 = add nsw i32 %add1425, %mul1426
  %275 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1428 = add nsw i32 %275, 1
  %shr1429 = ashr i32 %add1427, %add1428
  %add1431 = add nsw i32 %shr1429, %conv340
  %cmp1432 = icmp slt i32 %add1431, 0
  br i1 %cmp1432, label %cond.end1486, label %cond.false1435

cond.false1435:                                   ; preds = %cond.end1404
  %276 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1440 = call zeroext i16 %276(i16** %49, i32 %conv1336, i32 %add400, i32 %54, i32 %53) #7
  %conv1441 = zext i16 %call1440 to i32
  %mul1442 = mul nsw i32 %conv1441, %conv324
  %277 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1447 = call zeroext i16 %277(i16** %52, i32 %conv1342, i32 %add407, i32 %54, i32 %53) #7
  %conv1448 = zext i16 %call1447 to i32
  %mul1449 = mul nsw i32 %conv1448, %conv329
  %add1450 = add nsw i32 %mul1449, %mul1442
  %278 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1451 = shl i32 %278, 1
  %add1452 = add nsw i32 %add1450, %mul1451
  %279 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1453 = add nsw i32 %279, 1
  %shr1454 = ashr i32 %add1452, %add1453
  %add1456 = add nsw i32 %shr1454, %conv340
  %280 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value1457 = getelementptr inbounds %struct.ImageParameters* %280, i64 0, i32 155
  %281 = load i32* %max_imgpel_value1457, align 4, !tbaa !3
  %cmp1458 = icmp sgt i32 %add1456, %281
  br i1 %cmp1458, label %cond.end1486, label %cond.false1462

cond.false1462:                                   ; preds = %cond.false1435
  %282 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1467 = call zeroext i16 %282(i16** %49, i32 %conv1336, i32 %add400, i32 %54, i32 %53) #7
  %conv1468 = zext i16 %call1467 to i32
  %mul1469 = mul nsw i32 %conv1468, %conv324
  %283 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1474 = call zeroext i16 %283(i16** %52, i32 %conv1342, i32 %add407, i32 %54, i32 %53) #7
  %conv1475 = zext i16 %call1474 to i32
  %mul1476 = mul nsw i32 %conv1475, %conv329
  %add1477 = add nsw i32 %mul1476, %mul1469
  %284 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1478 = shl i32 %284, 1
  %add1479 = add nsw i32 %add1477, %mul1478
  %285 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1480 = add nsw i32 %285, 1
  %shr1481 = ashr i32 %add1479, %add1480
  %add1483 = add nsw i32 %shr1481, %conv340
  br label %cond.end1486

cond.end1486:                                     ; preds = %cond.false1435, %cond.false1462, %cond.end1404
  %cond1487 = phi i32 [ 0, %cond.end1404 ], [ %add1483, %cond.false1462 ], [ %281, %cond.false1435 ]
  %arrayidx1491 = getelementptr inbounds i16* %256, i64 %idxprom476
  %286 = load i16* %arrayidx1491, align 2, !tbaa !4
  %conv1492 = zext i16 %286 to i32
  %sub1493 = sub nsw i32 %conv1492, %cond1487
  store i32 %sub1493, i32* %incdec.ptr1410, align 4, !tbaa !3
  %287 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1499 = call zeroext i16 %287(i16** %49, i32 %conv1336, i32 %add484, i32 %54, i32 %53) #7
  %conv1500 = zext i16 %call1499 to i32
  %mul1501 = mul nsw i32 %conv1500, %conv324
  %288 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1506 = call zeroext i16 %288(i16** %52, i32 %conv1342, i32 %add491, i32 %54, i32 %53) #7
  %conv1507 = zext i16 %call1506 to i32
  %mul1508 = mul nsw i32 %conv1507, %conv329
  %add1509 = add nsw i32 %mul1508, %mul1501
  %289 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1510 = shl i32 %289, 1
  %add1511 = add nsw i32 %add1509, %mul1510
  %290 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1512 = add nsw i32 %290, 1
  %shr1513 = ashr i32 %add1511, %add1512
  %add1515 = add nsw i32 %shr1513, %conv340
  %cmp1516 = icmp slt i32 %add1515, 0
  br i1 %cmp1516, label %cond.end1570, label %cond.false1519

cond.false1519:                                   ; preds = %cond.end1486
  %291 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1524 = call zeroext i16 %291(i16** %49, i32 %conv1336, i32 %add484, i32 %54, i32 %53) #7
  %conv1525 = zext i16 %call1524 to i32
  %mul1526 = mul nsw i32 %conv1525, %conv324
  %292 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1531 = call zeroext i16 %292(i16** %52, i32 %conv1342, i32 %add491, i32 %54, i32 %53) #7
  %conv1532 = zext i16 %call1531 to i32
  %mul1533 = mul nsw i32 %conv1532, %conv329
  %add1534 = add nsw i32 %mul1533, %mul1526
  %293 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1535 = shl i32 %293, 1
  %add1536 = add nsw i32 %add1534, %mul1535
  %294 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1537 = add nsw i32 %294, 1
  %shr1538 = ashr i32 %add1536, %add1537
  %add1540 = add nsw i32 %shr1538, %conv340
  %295 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value1541 = getelementptr inbounds %struct.ImageParameters* %295, i64 0, i32 155
  %296 = load i32* %max_imgpel_value1541, align 4, !tbaa !3
  %cmp1542 = icmp sgt i32 %add1540, %296
  br i1 %cmp1542, label %cond.end1570, label %cond.false1546

cond.false1546:                                   ; preds = %cond.false1519
  %297 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1551 = call zeroext i16 %297(i16** %49, i32 %conv1336, i32 %add484, i32 %54, i32 %53) #7
  %conv1552 = zext i16 %call1551 to i32
  %mul1553 = mul nsw i32 %conv1552, %conv324
  %298 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1558 = call zeroext i16 %298(i16** %52, i32 %conv1342, i32 %add491, i32 %54, i32 %53) #7
  %conv1559 = zext i16 %call1558 to i32
  %mul1560 = mul nsw i32 %conv1559, %conv329
  %add1561 = add nsw i32 %mul1560, %mul1553
  %299 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1562 = shl i32 %299, 1
  %add1563 = add nsw i32 %add1561, %mul1562
  %300 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1564 = add nsw i32 %300, 1
  %shr1565 = ashr i32 %add1563, %add1564
  %add1567 = add nsw i32 %shr1565, %conv340
  br label %cond.end1570

cond.end1570:                                     ; preds = %cond.false1519, %cond.false1546, %cond.end1486
  %cond1571 = phi i32 [ 0, %cond.end1486 ], [ %add1567, %cond.false1546 ], [ %296, %cond.false1519 ]
  %arrayidx1575 = getelementptr inbounds i16* %256, i64 %idxprom560
  %301 = load i16* %arrayidx1575, align 2, !tbaa !4
  %conv1576 = zext i16 %301 to i32
  %sub1577 = sub nsw i32 %conv1576, %cond1571
  store i32 %sub1577, i32* %incdec.ptr1494, align 8, !tbaa !3
  %302 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1583 = call zeroext i16 %302(i16** %49, i32 %conv1336, i32 %add568, i32 %54, i32 %53) #7
  %conv1584 = zext i16 %call1583 to i32
  %mul1585 = mul nsw i32 %conv1584, %conv324
  %303 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1590 = call zeroext i16 %303(i16** %52, i32 %conv1342, i32 %add575, i32 %54, i32 %53) #7
  %conv1591 = zext i16 %call1590 to i32
  %mul1592 = mul nsw i32 %conv1591, %conv329
  %add1593 = add nsw i32 %mul1592, %mul1585
  %304 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1594 = shl i32 %304, 1
  %add1595 = add nsw i32 %add1593, %mul1594
  %305 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1596 = add nsw i32 %305, 1
  %shr1597 = ashr i32 %add1595, %add1596
  %add1599 = add nsw i32 %shr1597, %conv340
  %cmp1600 = icmp slt i32 %add1599, 0
  br i1 %cmp1600, label %cond.end1654, label %cond.false1603

cond.false1603:                                   ; preds = %cond.end1570
  %306 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1608 = call zeroext i16 %306(i16** %49, i32 %conv1336, i32 %add568, i32 %54, i32 %53) #7
  %conv1609 = zext i16 %call1608 to i32
  %mul1610 = mul nsw i32 %conv1609, %conv324
  %307 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1615 = call zeroext i16 %307(i16** %52, i32 %conv1342, i32 %add575, i32 %54, i32 %53) #7
  %conv1616 = zext i16 %call1615 to i32
  %mul1617 = mul nsw i32 %conv1616, %conv329
  %add1618 = add nsw i32 %mul1617, %mul1610
  %308 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1619 = shl i32 %308, 1
  %add1620 = add nsw i32 %add1618, %mul1619
  %309 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1621 = add nsw i32 %309, 1
  %shr1622 = ashr i32 %add1620, %add1621
  %add1624 = add nsw i32 %shr1622, %conv340
  %310 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value1625 = getelementptr inbounds %struct.ImageParameters* %310, i64 0, i32 155
  %311 = load i32* %max_imgpel_value1625, align 4, !tbaa !3
  %cmp1626 = icmp sgt i32 %add1624, %311
  br i1 %cmp1626, label %cond.end1654, label %cond.false1630

cond.false1630:                                   ; preds = %cond.false1603
  %312 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1635 = call zeroext i16 %312(i16** %49, i32 %conv1336, i32 %add568, i32 %54, i32 %53) #7
  %conv1636 = zext i16 %call1635 to i32
  %mul1637 = mul nsw i32 %conv1636, %conv324
  %313 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1642 = call zeroext i16 %313(i16** %52, i32 %conv1342, i32 %add575, i32 %54, i32 %53) #7
  %conv1643 = zext i16 %call1642 to i32
  %mul1644 = mul nsw i32 %conv1643, %conv329
  %add1645 = add nsw i32 %mul1644, %mul1637
  %314 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul1646 = shl i32 %314, 1
  %add1647 = add nsw i32 %add1645, %mul1646
  %315 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add1648 = add nsw i32 %315, 1
  %shr1649 = ashr i32 %add1647, %add1648
  %add1651 = add nsw i32 %shr1649, %conv340
  br label %cond.end1654

cond.end1654:                                     ; preds = %cond.false1603, %cond.false1630, %cond.end1570
  %cond1655 = phi i32 [ 0, %cond.end1570 ], [ %add1651, %cond.false1630 ], [ %311, %cond.false1603 ]
  %arrayidx1659 = getelementptr inbounds i16* %256, i64 %idxprom644
  %316 = load i16* %arrayidx1659, align 2, !tbaa !4
  %conv1660 = zext i16 %316 to i32
  %sub1661 = sub nsw i32 %conv1660, %cond1655
  store i32 %sub1661, i32* %incdec.ptr1578, align 4, !tbaa !3
  %317 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %317, i64 0, i32 123
  %318 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool1662 = icmp eq i32 %318, 0
  br i1 %tobool1662, label %if.then1663, label %for.cond1675.preheader

for.cond1675.preheader:                           ; preds = %cond.end1654
  %319 = sext i32 %conv3056288 to i64
  br label %for.cond1679.preheader

if.then1663:                                      ; preds = %cond.end1654
  %call1665 = call i32 @SATD(i32* %arraydecay, i32 %.) #8
  %conv16666181 = zext i16 %mcost.16287 to i32
  %add1667 = add nsw i32 %call1665, %conv16666181
  %conv1668 = trunc i32 %add1667 to i16
  %sext6182 = shl i32 %add1667, 16
  %conv1669 = ashr exact i32 %sext6182, 16
  %cmp1670 = icmp sgt i32 %conv1669, %min_mcost.addr.06315
  br i1 %cmp1670, label %for.end2092, label %for.inc1698

for.cond1679.preheader:                           ; preds = %for.cond1679.preheader, %for.cond1675.preheader
  %indvars.iv6358 = phi i64 [ 0, %for.cond1675.preheader ], [ %indvars.iv.next6359, %for.cond1679.preheader ]
  %320 = trunc i64 %indvars.iv6358 to i32
  %321 = add i32 %conv2846309, %320
  %322 = sext i32 %321 to i64
  %323 = shl nsw i64 %322, 4
  %scevgep6353.sum = add i64 %319, %323
  %scevgep6354 = getelementptr [16 x [16 x i32]]* %curr_diff, i64 0, i64 0, i64 %scevgep6353.sum
  %scevgep63546355 = bitcast i32* %scevgep6354 to i8*
  %324 = shl i64 %indvars.iv6358, 2
  %scevgep6356 = getelementptr [16 x i32]* %diff, i64 0, i64 %324
  %scevgep63566357 = bitcast i32* %scevgep6356 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep63546355, i8* %scevgep63566357, i64 16, i32 4, i1 false)
  %indvars.iv.next6359 = add i64 %indvars.iv6358, 1
  %lftr.wideiv6362 = trunc i64 %indvars.iv.next6359 to i32
  %exitcond6363 = icmp eq i32 %lftr.wideiv6362, 4
  br i1 %exitcond6363, label %for.inc1698, label %for.cond1679.preheader

for.inc1698:                                      ; preds = %for.cond1679.preheader, %if.then1663
  %mcost.2 = phi i16 [ %conv1668, %if.then1663 ], [ %mcost.16287, %for.cond1679.preheader ]
  %add1700 = add i16 %x0.06286, 4
  %conv305 = sext i16 %add1700 to i32
  %cmp307 = icmp slt i32 %conv305, %conv176
  br i1 %cmp307, label %for.body309, label %for.inc2088

for.body1709:                                     ; preds = %for.inc2082, %for.body1709.lr.ph
  %conv17056301 = phi i32 [ 0, %for.body1709.lr.ph ], [ %conv1705, %for.inc2082 ]
  %mcost.36300 = phi i16 [ %mcost.06308, %for.body1709.lr.ph ], [ %mcost.4, %for.inc2082 ]
  %x0.16299 = phi i16 [ 0, %for.body1709.lr.ph ], [ %add2084, %for.inc2082 ]
  %add1711 = add nsw i32 %conv17056301, %pic_pix_x
  %shl1712 = shl i32 %add1711, 2
  %325 = load i16* %s_mv_x, align 2, !tbaa !4
  %conv17136148 = zext i16 %325 to i32
  %add1714 = add nsw i32 %conv17136148, %shl1712
  %add1720 = add nsw i32 %shl1712, %conv265
  %326 = load i16** %arrayidx1724, align 8, !tbaa !0
  %idxprom1725 = sext i16 %x0.16299 to i64
  %arrayidx1726 = getelementptr inbounds i16* %326, i64 %idxprom1725
  %327 = load i16* %arrayidx1726, align 2, !tbaa !4
  %conv1727 = zext i16 %327 to i32
  %328 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %sext6150 = shl i32 %add1714, 16
  %conv1729 = ashr exact i32 %sext6150, 16
  %call1730 = call zeroext i16 %328(i16** %49, i32 %conv1728, i32 %conv1729, i32 %54, i32 %53) #7
  %conv1731 = zext i16 %call1730 to i32
  %329 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %sext6152 = shl i32 %add1720, 16
  %conv1733 = ashr exact i32 %sext6152, 16
  %call1734 = call zeroext i16 %329(i16** %52, i32 %conv1732, i32 %conv1733, i32 %54, i32 %53) #7
  %conv1735 = zext i16 %call1734 to i32
  %add1736 = add nsw i32 %conv1735, %conv1731
  %shr1737 = lshr i32 %add1736, 1
  %sub1738 = sub nsw i32 %conv1727, %shr1737
  store i32 %sub1738, i32* %arraydecay, align 16, !tbaa !3
  %add17416215 = or i32 %conv17056301, 1
  %idxprom1742 = sext i32 %add17416215 to i64
  %arrayidx1743 = getelementptr inbounds i16* %326, i64 %idxprom1742
  %330 = load i16* %arrayidx1743, align 2, !tbaa !4
  %conv1744 = zext i16 %330 to i32
  %331 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add1747 = add nsw i32 %conv1729, 4
  %call1748 = call zeroext i16 %331(i16** %49, i32 %conv1728, i32 %add1747, i32 %54, i32 %53) #7
  %conv1749 = zext i16 %call1748 to i32
  %332 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add1752 = add nsw i32 %conv1733, 4
  %call1753 = call zeroext i16 %332(i16** %52, i32 %conv1732, i32 %add1752, i32 %54, i32 %53) #7
  %conv1754 = zext i16 %call1753 to i32
  %add1755 = add nsw i32 %conv1754, %conv1749
  %shr1756 = lshr i32 %add1755, 1
  %sub1757 = sub nsw i32 %conv1744, %shr1756
  store i32 %sub1757, i32* %incdec.ptr, align 4, !tbaa !3
  %add17606216 = or i32 %conv17056301, 2
  %idxprom1761 = sext i32 %add17606216 to i64
  %arrayidx1762 = getelementptr inbounds i16* %326, i64 %idxprom1761
  %333 = load i16* %arrayidx1762, align 2, !tbaa !4
  %conv1763 = zext i16 %333 to i32
  %334 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add1766 = add nsw i32 %conv1729, 8
  %call1767 = call zeroext i16 %334(i16** %49, i32 %conv1728, i32 %add1766, i32 %54, i32 %53) #7
  %conv1768 = zext i16 %call1767 to i32
  %335 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add1771 = add nsw i32 %conv1733, 8
  %call1772 = call zeroext i16 %335(i16** %52, i32 %conv1732, i32 %add1771, i32 %54, i32 %53) #7
  %conv1773 = zext i16 %call1772 to i32
  %add1774 = add nsw i32 %conv1773, %conv1768
  %shr1775 = lshr i32 %add1774, 1
  %sub1776 = sub nsw i32 %conv1763, %shr1775
  store i32 %sub1776, i32* %incdec.ptr480, align 8, !tbaa !3
  %add17796217 = or i32 %conv17056301, 3
  %idxprom1780 = sext i32 %add17796217 to i64
  %arrayidx1781 = getelementptr inbounds i16* %326, i64 %idxprom1780
  %336 = load i16* %arrayidx1781, align 2, !tbaa !4
  %conv1782 = zext i16 %336 to i32
  %337 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add1785 = add nsw i32 %conv1729, 12
  %call1786 = call zeroext i16 %337(i16** %49, i32 %conv1728, i32 %add1785, i32 %54, i32 %53) #7
  %conv1787 = zext i16 %call1786 to i32
  %338 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add1790 = add nsw i32 %conv1733, 12
  %call1791 = call zeroext i16 %338(i16** %52, i32 %conv1732, i32 %add1790, i32 %54, i32 %53) #7
  %conv1792 = zext i16 %call1791 to i32
  %add1793 = add nsw i32 %conv1792, %conv1787
  %shr1794 = lshr i32 %add1793, 1
  %sub1795 = sub nsw i32 %conv1782, %shr1794
  store i32 %sub1795, i32* %incdec.ptr564, align 4, !tbaa !3
  %339 = load i16** %arrayidx1806, align 8, !tbaa !0
  %arrayidx1808 = getelementptr inbounds i16* %339, i64 %idxprom1725
  %340 = load i16* %arrayidx1808, align 2, !tbaa !4
  %conv1809 = zext i16 %340 to i32
  %341 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1812 = call zeroext i16 %341(i16** %49, i32 %conv1810, i32 %conv1729, i32 %54, i32 %53) #7
  %conv1813 = zext i16 %call1812 to i32
  %342 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1816 = call zeroext i16 %342(i16** %52, i32 %conv1814, i32 %conv1733, i32 %54, i32 %53) #7
  %conv1817 = zext i16 %call1816 to i32
  %add1818 = add nsw i32 %conv1817, %conv1813
  %shr1819 = lshr i32 %add1818, 2
  %sub1820 = sub nsw i32 %conv1809, %shr1819
  store i32 %sub1820, i32* %incdec.ptr648, align 16, !tbaa !3
  %arrayidx1825 = getelementptr inbounds i16* %339, i64 %idxprom1742
  %343 = load i16* %arrayidx1825, align 2, !tbaa !4
  %conv1826 = zext i16 %343 to i32
  %344 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1830 = call zeroext i16 %344(i16** %49, i32 %conv1810, i32 %add1747, i32 %54, i32 %53) #7
  %conv1831 = zext i16 %call1830 to i32
  %345 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1835 = call zeroext i16 %345(i16** %52, i32 %conv1814, i32 %add1752, i32 %54, i32 %53) #7
  %conv1836 = zext i16 %call1835 to i32
  %add1837 = add nsw i32 %conv1836, %conv1831
  %shr1838 = lshr i32 %add1837, 2
  %sub1839 = sub nsw i32 %conv1826, %shr1838
  store i32 %sub1839, i32* %incdec.ptr734, align 4, !tbaa !3
  %arrayidx1844 = getelementptr inbounds i16* %339, i64 %idxprom1761
  %346 = load i16* %arrayidx1844, align 2, !tbaa !4
  %conv1845 = zext i16 %346 to i32
  %347 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1849 = call zeroext i16 %347(i16** %49, i32 %conv1810, i32 %add1766, i32 %54, i32 %53) #7
  %conv1850 = zext i16 %call1849 to i32
  %348 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1854 = call zeroext i16 %348(i16** %52, i32 %conv1814, i32 %add1771, i32 %54, i32 %53) #7
  %conv1855 = zext i16 %call1854 to i32
  %add1856 = add nsw i32 %conv1855, %conv1850
  %shr1857 = lshr i32 %add1856, 2
  %sub1858 = sub nsw i32 %conv1845, %shr1857
  store i32 %sub1858, i32* %incdec.ptr818, align 8, !tbaa !3
  %arrayidx1863 = getelementptr inbounds i16* %339, i64 %idxprom1780
  %349 = load i16* %arrayidx1863, align 2, !tbaa !4
  %conv1864 = zext i16 %349 to i32
  %350 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1868 = call zeroext i16 %350(i16** %49, i32 %conv1810, i32 %add1785, i32 %54, i32 %53) #7
  %conv1869 = zext i16 %call1868 to i32
  %351 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1873 = call zeroext i16 %351(i16** %52, i32 %conv1814, i32 %add1790, i32 %54, i32 %53) #7
  %conv1874 = zext i16 %call1873 to i32
  %add1875 = add nsw i32 %conv1874, %conv1869
  %shr1876 = lshr i32 %add1875, 2
  %sub1877 = sub nsw i32 %conv1864, %shr1876
  store i32 %sub1877, i32* %incdec.ptr902, align 4, !tbaa !3
  %352 = load i16** %arrayidx1888, align 8, !tbaa !0
  %arrayidx1890 = getelementptr inbounds i16* %352, i64 %idxprom1725
  %353 = load i16* %arrayidx1890, align 2, !tbaa !4
  %conv1891 = zext i16 %353 to i32
  %354 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1894 = call zeroext i16 %354(i16** %49, i32 %conv1892, i32 %conv1729, i32 %54, i32 %53) #7
  %conv1895 = zext i16 %call1894 to i32
  %355 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1898 = call zeroext i16 %355(i16** %52, i32 %conv1896, i32 %conv1733, i32 %54, i32 %53) #7
  %conv1899 = zext i16 %call1898 to i32
  %add1900 = add nsw i32 %conv1899, %conv1895
  %shr1901 = lshr i32 %add1900, 1
  %sub1902 = sub nsw i32 %conv1891, %shr1901
  store i32 %sub1902, i32* %incdec.ptr986, align 16, !tbaa !3
  %arrayidx1907 = getelementptr inbounds i16* %352, i64 %idxprom1742
  %356 = load i16* %arrayidx1907, align 2, !tbaa !4
  %conv1908 = zext i16 %356 to i32
  %357 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1912 = call zeroext i16 %357(i16** %49, i32 %conv1892, i32 %add1747, i32 %54, i32 %53) #7
  %conv1913 = zext i16 %call1912 to i32
  %358 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1917 = call zeroext i16 %358(i16** %52, i32 %conv1896, i32 %add1752, i32 %54, i32 %53) #7
  %conv1918 = zext i16 %call1917 to i32
  %add1919 = add nsw i32 %conv1918, %conv1913
  %shr1920 = lshr i32 %add1919, 1
  %sub1921 = sub nsw i32 %conv1908, %shr1920
  store i32 %sub1921, i32* %incdec.ptr1072, align 4, !tbaa !3
  %arrayidx1926 = getelementptr inbounds i16* %352, i64 %idxprom1761
  %359 = load i16* %arrayidx1926, align 2, !tbaa !4
  %conv1927 = zext i16 %359 to i32
  %360 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1931 = call zeroext i16 %360(i16** %49, i32 %conv1892, i32 %add1766, i32 %54, i32 %53) #7
  %conv1932 = zext i16 %call1931 to i32
  %361 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1936 = call zeroext i16 %361(i16** %52, i32 %conv1896, i32 %add1771, i32 %54, i32 %53) #7
  %conv1937 = zext i16 %call1936 to i32
  %add1938 = add nsw i32 %conv1937, %conv1932
  %shr1939 = lshr i32 %add1938, 1
  %sub1940 = sub nsw i32 %conv1927, %shr1939
  store i32 %sub1940, i32* %incdec.ptr1156, align 8, !tbaa !3
  %arrayidx1945 = getelementptr inbounds i16* %352, i64 %idxprom1780
  %362 = load i16* %arrayidx1945, align 2, !tbaa !4
  %conv1946 = zext i16 %362 to i32
  %363 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1950 = call zeroext i16 %363(i16** %49, i32 %conv1892, i32 %add1785, i32 %54, i32 %53) #7
  %conv1951 = zext i16 %call1950 to i32
  %364 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1955 = call zeroext i16 %364(i16** %52, i32 %conv1896, i32 %add1790, i32 %54, i32 %53) #7
  %conv1956 = zext i16 %call1955 to i32
  %add1957 = add nsw i32 %conv1956, %conv1951
  %shr1958 = lshr i32 %add1957, 1
  %sub1959 = sub nsw i32 %conv1946, %shr1958
  store i32 %sub1959, i32* %incdec.ptr1240, align 4, !tbaa !3
  %365 = load i16** %arrayidx1970, align 8, !tbaa !0
  %arrayidx1972 = getelementptr inbounds i16* %365, i64 %idxprom1725
  %366 = load i16* %arrayidx1972, align 2, !tbaa !4
  %conv1973 = zext i16 %366 to i32
  %367 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1976 = call zeroext i16 %367(i16** %49, i32 %conv1974, i32 %conv1729, i32 %54, i32 %53) #7
  %conv1977 = zext i16 %call1976 to i32
  %368 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1980 = call zeroext i16 %368(i16** %52, i32 %conv1978, i32 %conv1733, i32 %54, i32 %53) #7
  %conv1981 = zext i16 %call1980 to i32
  %add1982 = add nsw i32 %conv1981, %conv1977
  %shr1983 = lshr i32 %add1982, 1
  %sub1984 = sub nsw i32 %conv1973, %shr1983
  store i32 %sub1984, i32* %incdec.ptr1324, align 16, !tbaa !3
  %arrayidx1989 = getelementptr inbounds i16* %365, i64 %idxprom1742
  %369 = load i16* %arrayidx1989, align 2, !tbaa !4
  %conv1990 = zext i16 %369 to i32
  %370 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call1994 = call zeroext i16 %370(i16** %49, i32 %conv1974, i32 %add1747, i32 %54, i32 %53) #7
  %conv1995 = zext i16 %call1994 to i32
  %371 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call1999 = call zeroext i16 %371(i16** %52, i32 %conv1978, i32 %add1752, i32 %54, i32 %53) #7
  %conv2000 = zext i16 %call1999 to i32
  %add2001 = add nsw i32 %conv2000, %conv1995
  %shr2002 = lshr i32 %add2001, 1
  %sub2003 = sub nsw i32 %conv1990, %shr2002
  store i32 %sub2003, i32* %incdec.ptr1410, align 4, !tbaa !3
  %arrayidx2008 = getelementptr inbounds i16* %365, i64 %idxprom1761
  %372 = load i16* %arrayidx2008, align 2, !tbaa !4
  %conv2009 = zext i16 %372 to i32
  %373 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2013 = call zeroext i16 %373(i16** %49, i32 %conv1974, i32 %add1766, i32 %54, i32 %53) #7
  %conv2014 = zext i16 %call2013 to i32
  %374 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2018 = call zeroext i16 %374(i16** %52, i32 %conv1978, i32 %add1771, i32 %54, i32 %53) #7
  %conv2019 = zext i16 %call2018 to i32
  %add2020 = add nsw i32 %conv2019, %conv2014
  %shr2021 = lshr i32 %add2020, 1
  %sub2022 = sub nsw i32 %conv2009, %shr2021
  store i32 %sub2022, i32* %incdec.ptr1494, align 8, !tbaa !3
  %arrayidx2027 = getelementptr inbounds i16* %365, i64 %idxprom1780
  %375 = load i16* %arrayidx2027, align 2, !tbaa !4
  %conv2028 = zext i16 %375 to i32
  %376 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2032 = call zeroext i16 %376(i16** %49, i32 %conv1974, i32 %add1785, i32 %54, i32 %53) #7
  %conv2033 = zext i16 %call2032 to i32
  %377 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2037 = call zeroext i16 %377(i16** %52, i32 %conv1978, i32 %add1790, i32 %54, i32 %53) #7
  %conv2038 = zext i16 %call2037 to i32
  %add2039 = add nsw i32 %conv2038, %conv2033
  %shr2040 = lshr i32 %add2039, 1
  %sub2041 = sub nsw i32 %conv2028, %shr2040
  store i32 %sub2041, i32* %incdec.ptr1578, align 4, !tbaa !3
  %378 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x82042 = getelementptr inbounds %struct.InputParameters* %378, i64 0, i32 123
  %379 = load i32* %AllowTransform8x82042, align 4, !tbaa !3
  %tobool2043 = icmp eq i32 %379, 0
  br i1 %tobool2043, label %if.then2044, label %for.cond2056.preheader

for.cond2056.preheader:                           ; preds = %for.body1709
  %380 = sext i32 %conv17056301 to i64
  br label %for.cond2060.preheader

if.then2044:                                      ; preds = %for.body1709
  %call2046 = call i32 @SATD(i32* %arraydecay, i32 %.) #8
  %conv20476162 = zext i16 %mcost.36300 to i32
  %add2048 = add nsw i32 %call2046, %conv20476162
  %conv2049 = trunc i32 %add2048 to i16
  %sext6163 = shl i32 %add2048, 16
  %conv2050 = ashr exact i32 %sext6163, 16
  %cmp2051 = icmp sgt i32 %conv2050, %min_mcost.addr.06315
  br i1 %cmp2051, label %for.end2092, label %for.inc2082

for.cond2060.preheader:                           ; preds = %for.cond2060.preheader, %for.cond2056.preheader
  %indvars.iv6376 = phi i64 [ 0, %for.cond2056.preheader ], [ %indvars.iv.next6377, %for.cond2060.preheader ]
  %381 = trunc i64 %indvars.iv6376 to i32
  %382 = add i32 %conv2846309, %381
  %383 = sext i32 %382 to i64
  %384 = shl nsw i64 %383, 4
  %scevgep6371.sum = add i64 %380, %384
  %scevgep6372 = getelementptr [16 x [16 x i32]]* %curr_diff, i64 0, i64 0, i64 %scevgep6371.sum
  %scevgep63726373 = bitcast i32* %scevgep6372 to i8*
  %385 = shl i64 %indvars.iv6376, 2
  %scevgep6374 = getelementptr [16 x i32]* %diff, i64 0, i64 %385
  %scevgep63746375 = bitcast i32* %scevgep6374 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep63726373, i8* %scevgep63746375, i64 16, i32 4, i1 false)
  %indvars.iv.next6377 = add i64 %indvars.iv6376, 1
  %lftr.wideiv6380 = trunc i64 %indvars.iv.next6377 to i32
  %exitcond6381 = icmp eq i32 %lftr.wideiv6380, 4
  br i1 %exitcond6381, label %for.inc2082, label %for.cond2060.preheader

for.inc2082:                                      ; preds = %for.cond2060.preheader, %if.then2044
  %mcost.4 = phi i16 [ %conv2049, %if.then2044 ], [ %mcost.36300, %for.cond2060.preheader ]
  %add2084 = add i16 %x0.16299, 4
  %conv1705 = sext i16 %add2084 to i32
  %cmp1707 = icmp slt i32 %conv1705, %conv176
  br i1 %cmp1707, label %for.body1709, label %for.inc2088

for.inc2088:                                      ; preds = %for.cond1704.preheader, %for.inc2082, %for.cond304.preheader, %for.inc1698
  %386 = phi %struct.InputParameters* [ %70, %for.cond304.preheader ], [ %317, %for.inc1698 ], [ %70, %for.cond1704.preheader ], [ %378, %for.inc2082 ]
  %mcost.5 = phi i16 [ %mcost.06308, %for.cond304.preheader ], [ %mcost.2, %for.inc1698 ], [ %mcost.06308, %for.cond1704.preheader ], [ %mcost.4, %for.inc2082 ]
  %add2090 = add i16 %y0.06306, 4
  %conv284 = sext i16 %add2090 to i32
  %cmp286 = icmp slt i32 %conv284, %conv181
  br i1 %cmp286, label %for.body289, label %for.end2092

for.end2092:                                      ; preds = %if.then2044, %if.then1663, %for.inc2088, %for.body
  %387 = phi %struct.InputParameters* [ %62, %for.body ], [ %386, %for.inc2088 ], [ %317, %if.then1663 ], [ %378, %if.then2044 ]
  %mcost.0.lcssa = phi i16 [ %conv282, %for.body ], [ %mcost.5, %for.inc2088 ], [ %conv1668, %if.then1663 ], [ %conv2049, %if.then2044 ]
  %AllowTransform8x82093 = getelementptr inbounds %struct.InputParameters* %387, i64 0, i32 123
  %388 = load i32* %AllowTransform8x82093, align 4, !tbaa !3
  %tobool2094 = icmp eq i32 %388, 0
  br i1 %tobool2094, label %if.end2101, label %if.then2095

if.then2095:                                      ; preds = %for.end2092
  %call2097 = call i32 @find_SATD([16 x i32]* %arraydecay2096, i32 %., i32 %blocktype) #8
  %conv20986146 = zext i16 %mcost.0.lcssa to i32
  %add2099 = add nsw i32 %call2097, %conv20986146
  %conv2100 = trunc i32 %add2099 to i16
  br label %if.end2101

if.end2101:                                       ; preds = %for.end2092, %if.then2095
  %mcost.6 = phi i16 [ %conv2100, %if.then2095 ], [ %mcost.0.lcssa, %for.end2092 ]
  %conv2102 = sext i16 %mcost.6 to i32
  %cmp2103 = icmp slt i32 %conv2102, %min_mcost.addr.06315
  %pos.0.best_pos.0 = select i1 %cmp2103, i16 %pos.06314, i16 %best_pos.06313
  %conv2102.min_mcost.addr.0 = select i1 %cmp2103, i32 %conv2102, i32 %min_mcost.addr.06315
  %inc2109 = add i16 %pos.06314, 1
  %conv249 = sext i16 %inc2109 to i32
  %cmp251 = icmp slt i32 %conv249, %conv250
  br i1 %cmp251, label %if.end2101.for.body_crit_edge, label %for.end2110

if.end2101.for.body_crit_edge:                    ; preds = %if.end2101
  %.pre6382 = load i16* %mv_x, align 2, !tbaa !4
  %.pre6383 = load i16* %mv_y, align 2, !tbaa !4
  br label %for.body

for.end2110:                                      ; preds = %if.end2101
  %tobool2111 = icmp eq i16 %pos.0.best_pos.0, 0
  br i1 %tobool2111, label %if.end2125, label %if.then2112

if.then2112:                                      ; preds = %for.end2110
  %idxprom2113 = sext i16 %pos.0.best_pos.0 to i64
  %389 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx2114 = getelementptr inbounds i32* %389, i64 %idxprom2113
  %390 = load i32* %arrayidx2114, align 4, !tbaa !3
  %shl2115 = shl i32 %390, 1
  %391 = load i16* %mv_x, align 2, !tbaa !4
  %conv21166139 = zext i16 %391 to i32
  %add2117 = add nsw i32 %conv21166139, %shl2115
  %conv2118 = trunc i32 %add2117 to i16
  store i16 %conv2118, i16* %mv_x, align 2, !tbaa !4
  %392 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx2120 = getelementptr inbounds i32* %392, i64 %idxprom2113
  %393 = load i32* %arrayidx2120, align 4, !tbaa !3
  %shl2121 = shl i32 %393, 1
  %394 = load i16* %mv_y, align 2, !tbaa !4
  %conv21226140 = zext i16 %394 to i32
  %add2123 = add nsw i32 %conv21226140, %shl2121
  %conv2124 = trunc i32 %add2123 to i16
  store i16 %conv2124, i16* %mv_y, align 2, !tbaa !4
  br label %if.end2125

if.end2125:                                       ; preds = %if.end248, %for.end2110, %if.then2112
  %min_mcost.addr.0.lcssa6391 = phi i32 [ %conv2102.min_mcost.addr.0, %if.then2112 ], [ %conv2102.min_mcost.addr.0, %for.end2110 ], [ %min_mcost, %if.end248 ]
  %395 = phi %struct.InputParameters* [ %387, %if.then2112 ], [ %387, %for.end2110 ], [ %2, %if.end248 ]
  %hadamardqpel2126 = getelementptr inbounds %struct.InputParameters* %395, i64 0, i32 7
  %396 = load i32* %hadamardqpel2126, align 4, !tbaa !3
  %tobool2127 = icmp eq i32 %396, 0
  %min_mcost.addr.0. = select i1 %tobool2127, i32 %min_mcost.addr.0.lcssa6391, i32 2147483647
  %397 = load i16* %mv_x, align 2, !tbaa !4
  %conv2131 = sext i16 %397 to i32
  %add2132 = add nsw i32 %conv2131, %conv192
  %cmp2133 = icmp sgt i32 %add2132, 1
  br i1 %cmp2133, label %land.lhs.true2135, label %if.else2158

land.lhs.true2135:                                ; preds = %if.end2125
  %sext6136 = shl i32 %shl178, 16
  %conv2139 = ashr exact i32 %sext6136, 16
  %sub2140 = add nsw i32 %conv2139, -1
  %cmp2141 = icmp slt i32 %add2132, %sub2140
  br i1 %cmp2141, label %land.lhs.true2143, label %if.else2158

land.lhs.true2143:                                ; preds = %land.lhs.true2135
  %conv2144 = ashr exact i32 %shl9, 16
  %398 = load i16* %mv_y, align 2, !tbaa !4
  %conv2145 = sext i16 %398 to i32
  %add2146 = add nsw i32 %conv2145, %conv2144
  %cmp2147 = icmp sgt i32 %add2146, 1
  br i1 %cmp2147, label %land.lhs.true2149, label %if.else2158

land.lhs.true2149:                                ; preds = %land.lhs.true2143
  %sext6138 = shl i32 %shl184, 16
  %conv2153 = ashr exact i32 %sext6138, 16
  %sub2154 = add nsw i32 %conv2153, -1
  %cmp2155 = icmp slt i32 %add2146, %sub2154
  br i1 %cmp2155, label %if.end2159, label %if.else2158

if.else2158:                                      ; preds = %land.lhs.true2149, %land.lhs.true2143, %land.lhs.true2135, %if.end2125
  br label %if.end2159

if.end2159:                                       ; preds = %land.lhs.true2149, %if.else2158
  %storemerge6091 = phi i16 (i16**, i32, i32, i32, i32)* [ @UMVPelY_14, %if.else2158 ], [ @FastPelY_14, %land.lhs.true2149 ]
  store i16 (i16**, i32, i32, i32, i32)* %storemerge6091, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %conv21626274 = zext i1 %tobool141 to i32
  %cmp21636275 = icmp slt i32 %conv21626274, %search_pos4
  br i1 %cmp21636275, label %for.body2165.lr.ph, label %if.end4048

for.body2165.lr.ph:                               ; preds = %if.end2159
  %conv2160 = zext i1 %tobool141 to i16
  %conv2179 = sext i16 %pred_mv_x to i32
  %conv2186 = sext i16 %pred_mv_y to i32
  %cmp21976267 = icmp sgt i32 %sext6087, 0
  %arraydecay4020 = getelementptr inbounds [16 x [16 x i32]]* %curr_diff, i64 0, i64 0
  %tobool2216 = icmp eq i16 %conv33, 0
  %cmp22216249 = icmp sgt i32 %sext6086, 0
  %arraydecay2236 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 0
  %sext6118 = shl i32 %cond59621962286237, 16
  %conv2239 = ashr exact i32 %sext6118, 16
  %sext6121 = shl i32 %cond8662306235, 16
  %conv2245 = ashr exact i32 %sext6121, 16
  %sext6124 = shl i32 %shr6082, 16
  %conv2256 = ashr exact i32 %sext6124, 16
  %incdec.ptr2314 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 1
  %incdec.ptr2398 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 2
  %incdec.ptr2482 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 3
  %incdec.ptr2566 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 4
  %incdec.ptr2652 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 5
  %incdec.ptr2736 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 6
  %incdec.ptr2820 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 7
  %incdec.ptr2904 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 8
  %incdec.ptr2990 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 9
  %incdec.ptr3074 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 10
  %incdec.ptr3158 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 11
  %incdec.ptr3242 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 12
  %incdec.ptr3328 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 13
  %incdec.ptr3412 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 14
  %incdec.ptr3496 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 15
  br label %for.body2165

for.body2165:                                     ; preds = %if.end4026.for.body2165_crit_edge, %for.body2165.lr.ph
  %399 = phi i16 [ %397, %for.body2165.lr.ph ], [ %.pre, %if.end4026.for.body2165_crit_edge ]
  %400 = phi %struct.InputParameters* [ %395, %for.body2165.lr.ph ], [ %728, %if.end4026.for.body2165_crit_edge ]
  %min_mcost.addr.36278 = phi i32 [ %min_mcost.addr.0., %for.body2165.lr.ph ], [ %conv4027.min_mcost.addr.3, %if.end4026.for.body2165_crit_edge ]
  %pos.16277 = phi i16 [ %conv2160, %for.body2165.lr.ph ], [ %inc4034, %if.end4026.for.body2165_crit_edge ]
  %best_pos.26276 = phi i16 [ 0, %for.body2165.lr.ph ], [ %pos.1.best_pos.2, %if.end4026.for.body2165_crit_edge ]
  %conv21666094 = zext i16 %399 to i32
  %idxprom2167 = sext i16 %pos.16277 to i64
  %401 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx2168 = getelementptr inbounds i32* %401, i64 %idxprom2167
  %402 = load i32* %arrayidx2168, align 4, !tbaa !3
  %add2169 = add nsw i32 %402, %conv21666094
  %403 = load i16* %mv_y, align 2, !tbaa !4
  %conv21716095 = zext i16 %403 to i32
  %404 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx2173 = getelementptr inbounds i32* %404, i64 %idxprom2167
  %405 = load i32* %arrayidx2173, align 4, !tbaa !3
  %add2174 = add nsw i32 %405, %conv21716095
  %sext6096 = shl i32 %add2169, 16
  %conv2176 = ashr exact i32 %sext6096, 16
  %sub2180 = sub nsw i32 %conv2176, %conv2179
  %idxprom2181 = sext i32 %sub2180 to i64
  %406 = load i32** @mvbits, align 8, !tbaa !0
  %arrayidx2182 = getelementptr inbounds i32* %406, i64 %idxprom2181
  %407 = load i32* %arrayidx2182, align 4, !tbaa !3
  %sext6097 = shl i32 %add2174, 16
  %conv2183 = ashr exact i32 %sext6097, 16
  %sub2187 = sub nsw i32 %conv2183, %conv2186
  %idxprom2188 = sext i32 %sub2187 to i64
  %arrayidx2189 = getelementptr inbounds i32* %406, i64 %idxprom2188
  %408 = load i32* %arrayidx2189, align 4, !tbaa !3
  %add2190 = add nsw i32 %408, %407
  %mul2191 = mul nsw i32 %add2190, %conv
  %shr21926098 = lshr i32 %mul2191, 16
  %conv2193 = trunc i32 %shr21926098 to i16
  br i1 %cmp21976267, label %for.body2203, label %for.end4016

for.body2203:                                     ; preds = %for.inc4012, %for.body2165
  %409 = phi %struct.InputParameters* [ %400, %for.body2165 ], [ %727, %for.inc4012 ]
  %conv21956272 = phi i32 [ 0, %for.body2165 ], [ %conv2195, %for.inc4012 ]
  %mcost.76271 = phi i16 [ %conv2193, %for.body2165 ], [ %mcost.12, %for.inc4012 ]
  %y0.16269 = phi i16 [ 0, %for.body2165 ], [ %add4014, %for.inc4012 ]
  %add2205 = add nsw i32 %conv21956272, %pic_pix_y
  %shl2206 = shl i32 %add2205, 2
  %410 = load i16* %s_mv_y, align 2, !tbaa !4
  %conv22076100 = zext i16 %410 to i32
  %add2208 = add nsw i32 %conv22076100, %shl2206
  %add2214 = add nsw i32 %shl2206, %conv2183
  br i1 %tobool2216, label %for.cond3627.preheader, label %for.cond2218.preheader

for.cond3627.preheader:                           ; preds = %for.body2203
  br i1 %cmp22216249, label %for.body3632.lr.ph, label %for.inc4012

for.body3632.lr.ph:                               ; preds = %for.cond3627.preheader
  %idxprom3646 = sext i16 %y0.16269 to i64
  %arrayidx3647 = getelementptr inbounds i16** %orig_pic, i64 %idxprom3646
  %sext6102 = shl i32 %add2208, 16
  %conv3651 = ashr exact i32 %sext6102, 16
  %sext6104 = shl i32 %add2214, 16
  %conv3655 = ashr exact i32 %sext6104, 16
  %add37276106 = or i32 %conv21956272, 1
  %idxprom3728 = sext i32 %add37276106 to i64
  %arrayidx3729 = getelementptr inbounds i16** %orig_pic, i64 %idxprom3728
  %sext6107 = add i32 %sext6102, 262144
  %conv3733 = ashr exact i32 %sext6107, 16
  %sext6108 = add i32 %sext6104, 262144
  %conv3737 = ashr exact i32 %sext6108, 16
  %add38096109 = or i32 %conv21956272, 2
  %idxprom3810 = sext i32 %add38096109 to i64
  %arrayidx3811 = getelementptr inbounds i16** %orig_pic, i64 %idxprom3810
  %sext6110 = add i32 %sext6102, 524288
  %conv3815 = ashr exact i32 %sext6110, 16
  %sext6111 = add i32 %sext6104, 524288
  %conv3819 = ashr exact i32 %sext6111, 16
  %add38916112 = or i32 %conv21956272, 3
  %idxprom3892 = sext i32 %add38916112 to i64
  %arrayidx3893 = getelementptr inbounds i16** %orig_pic, i64 %idxprom3892
  %sext6113 = add i32 %sext6102, 786432
  %conv3897 = ashr exact i32 %sext6113, 16
  %sext6114 = add i32 %sext6104, 786432
  %conv3901 = ashr exact i32 %sext6114, 16
  br label %for.body3632

for.cond2218.preheader:                           ; preds = %for.body2203
  br i1 %cmp22216249, label %for.body2223.lr.ph, label %for.inc4012

for.body2223.lr.ph:                               ; preds = %for.cond2218.preheader
  %idxprom2237 = sext i16 %y0.16269 to i64
  %arrayidx2238 = getelementptr inbounds i16** %orig_pic, i64 %idxprom2237
  %sext6119 = shl i32 %add2208, 16
  %conv2240 = ashr exact i32 %sext6119, 16
  %sext6122 = shl i32 %add2214, 16
  %conv2246 = ashr exact i32 %sext6122, 16
  %add25716125 = or i32 %conv21956272, 1
  %idxprom2572 = sext i32 %add25716125 to i64
  %arrayidx2573 = getelementptr inbounds i16** %orig_pic, i64 %idxprom2572
  %sext6126 = add i32 %sext6119, 262144
  %conv2578 = ashr exact i32 %sext6126, 16
  %sext6127 = add i32 %sext6122, 262144
  %conv2584 = ashr exact i32 %sext6127, 16
  %add29096128 = or i32 %conv21956272, 2
  %idxprom2910 = sext i32 %add29096128 to i64
  %arrayidx2911 = getelementptr inbounds i16** %orig_pic, i64 %idxprom2910
  %sext6129 = add i32 %sext6119, 524288
  %conv2916 = ashr exact i32 %sext6129, 16
  %sext6130 = add i32 %sext6122, 524288
  %conv2922 = ashr exact i32 %sext6130, 16
  %add32476131 = or i32 %conv21956272, 3
  %idxprom3248 = sext i32 %add32476131 to i64
  %arrayidx3249 = getelementptr inbounds i16** %orig_pic, i64 %idxprom3248
  %sext6132 = add i32 %sext6119, 786432
  %conv3254 = ashr exact i32 %sext6132, 16
  %sext6133 = add i32 %sext6122, 786432
  %conv3260 = ashr exact i32 %sext6133, 16
  br label %for.body2223

for.body2223:                                     ; preds = %for.inc3621, %for.body2223.lr.ph
  %conv22196252 = phi i32 [ 0, %for.body2223.lr.ph ], [ %conv2219, %for.inc3621 ]
  %mcost.86251 = phi i16 [ %mcost.76271, %for.body2223.lr.ph ], [ %mcost.9, %for.inc3621 ]
  %x0.26250 = phi i16 [ 0, %for.body2223.lr.ph ], [ %add3623, %for.inc3621 ]
  %add2225 = add nsw i32 %conv22196252, %pic_pix_x
  %shl2226 = shl i32 %add2225, 2
  %411 = load i16* %s_mv_x, align 2, !tbaa !4
  %conv22276117 = zext i16 %411 to i32
  %add2228 = add nsw i32 %conv22276117, %shl2226
  %add2234 = add nsw i32 %shl2226, %conv2176
  %412 = load i16** %arrayidx2238, align 8, !tbaa !0
  %413 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %sext6120 = shl i32 %add2228, 16
  %conv2241 = ashr exact i32 %sext6120, 16
  %call2242 = call zeroext i16 %413(i16** %49, i32 %conv2240, i32 %conv2241, i32 %54, i32 %53) #7
  %conv2243 = zext i16 %call2242 to i32
  %mul2244 = mul nsw i32 %conv2243, %conv2239
  %414 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %sext6123 = shl i32 %add2234, 16
  %conv2247 = ashr exact i32 %sext6123, 16
  %call2248 = call zeroext i16 %414(i16** %52, i32 %conv2246, i32 %conv2247, i32 %54, i32 %53) #7
  %conv2249 = zext i16 %call2248 to i32
  %mul2250 = mul nsw i32 %conv2249, %conv2245
  %add2251 = add nsw i32 %mul2250, %mul2244
  %415 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2252 = shl i32 %415, 1
  %add2253 = add nsw i32 %add2251, %mul2252
  %416 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2254 = add nsw i32 %416, 1
  %shr2255 = ashr i32 %add2253, %add2254
  %add2257 = add nsw i32 %shr2255, %conv2256
  %cmp2258 = icmp slt i32 %add2257, 0
  br i1 %cmp2258, label %cond.end2308, label %cond.false2261

cond.false2261:                                   ; preds = %for.body2223
  %417 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2265 = call zeroext i16 %417(i16** %49, i32 %conv2240, i32 %conv2241, i32 %54, i32 %53) #7
  %conv2266 = zext i16 %call2265 to i32
  %mul2267 = mul nsw i32 %conv2266, %conv2239
  %418 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2271 = call zeroext i16 %418(i16** %52, i32 %conv2246, i32 %conv2247, i32 %54, i32 %53) #7
  %conv2272 = zext i16 %call2271 to i32
  %mul2273 = mul nsw i32 %conv2272, %conv2245
  %add2274 = add nsw i32 %mul2273, %mul2267
  %419 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2275 = shl i32 %419, 1
  %add2276 = add nsw i32 %add2274, %mul2275
  %420 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2277 = add nsw i32 %420, 1
  %shr2278 = ashr i32 %add2276, %add2277
  %add2280 = add nsw i32 %shr2278, %conv2256
  %421 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value2281 = getelementptr inbounds %struct.ImageParameters* %421, i64 0, i32 155
  %422 = load i32* %max_imgpel_value2281, align 4, !tbaa !3
  %cmp2282 = icmp sgt i32 %add2280, %422
  br i1 %cmp2282, label %cond.end2308, label %cond.false2286

cond.false2286:                                   ; preds = %cond.false2261
  %423 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2290 = call zeroext i16 %423(i16** %49, i32 %conv2240, i32 %conv2241, i32 %54, i32 %53) #7
  %conv2291 = zext i16 %call2290 to i32
  %mul2292 = mul nsw i32 %conv2291, %conv2239
  %424 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2296 = call zeroext i16 %424(i16** %52, i32 %conv2246, i32 %conv2247, i32 %54, i32 %53) #7
  %conv2297 = zext i16 %call2296 to i32
  %mul2298 = mul nsw i32 %conv2297, %conv2245
  %add2299 = add nsw i32 %mul2298, %mul2292
  %425 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2300 = shl i32 %425, 1
  %add2301 = add nsw i32 %add2299, %mul2300
  %426 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2302 = add nsw i32 %426, 1
  %shr2303 = ashr i32 %add2301, %add2302
  %add2305 = add nsw i32 %shr2303, %conv2256
  br label %cond.end2308

cond.end2308:                                     ; preds = %cond.false2261, %cond.false2286, %for.body2223
  %cond2309 = phi i32 [ 0, %for.body2223 ], [ %add2305, %cond.false2286 ], [ %422, %cond.false2261 ]
  %idxprom2310 = sext i16 %x0.26250 to i64
  %arrayidx2311 = getelementptr inbounds i16* %412, i64 %idxprom2310
  %427 = load i16* %arrayidx2311, align 2, !tbaa !4
  %conv2312 = zext i16 %427 to i32
  %sub2313 = sub nsw i32 %conv2312, %cond2309
  store i32 %sub2313, i32* %arraydecay2236, align 16, !tbaa !3
  %428 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add2318 = add nsw i32 %conv2241, 4
  %call2319 = call zeroext i16 %428(i16** %49, i32 %conv2240, i32 %add2318, i32 %54, i32 %53) #7
  %conv2320 = zext i16 %call2319 to i32
  %mul2321 = mul nsw i32 %conv2320, %conv2239
  %429 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add2325 = add nsw i32 %conv2247, 4
  %call2326 = call zeroext i16 %429(i16** %52, i32 %conv2246, i32 %add2325, i32 %54, i32 %53) #7
  %conv2327 = zext i16 %call2326 to i32
  %mul2328 = mul nsw i32 %conv2327, %conv2245
  %add2329 = add nsw i32 %mul2328, %mul2321
  %430 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2330 = shl i32 %430, 1
  %add2331 = add nsw i32 %add2329, %mul2330
  %431 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2332 = add nsw i32 %431, 1
  %shr2333 = ashr i32 %add2331, %add2332
  %add2335 = add nsw i32 %shr2333, %conv2256
  %cmp2336 = icmp slt i32 %add2335, 0
  br i1 %cmp2336, label %cond.end2390, label %cond.false2339

cond.false2339:                                   ; preds = %cond.end2308
  %432 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2344 = call zeroext i16 %432(i16** %49, i32 %conv2240, i32 %add2318, i32 %54, i32 %53) #7
  %conv2345 = zext i16 %call2344 to i32
  %mul2346 = mul nsw i32 %conv2345, %conv2239
  %433 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2351 = call zeroext i16 %433(i16** %52, i32 %conv2246, i32 %add2325, i32 %54, i32 %53) #7
  %conv2352 = zext i16 %call2351 to i32
  %mul2353 = mul nsw i32 %conv2352, %conv2245
  %add2354 = add nsw i32 %mul2353, %mul2346
  %434 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2355 = shl i32 %434, 1
  %add2356 = add nsw i32 %add2354, %mul2355
  %435 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2357 = add nsw i32 %435, 1
  %shr2358 = ashr i32 %add2356, %add2357
  %add2360 = add nsw i32 %shr2358, %conv2256
  %436 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value2361 = getelementptr inbounds %struct.ImageParameters* %436, i64 0, i32 155
  %437 = load i32* %max_imgpel_value2361, align 4, !tbaa !3
  %cmp2362 = icmp sgt i32 %add2360, %437
  br i1 %cmp2362, label %cond.end2390, label %cond.false2366

cond.false2366:                                   ; preds = %cond.false2339
  %438 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2371 = call zeroext i16 %438(i16** %49, i32 %conv2240, i32 %add2318, i32 %54, i32 %53) #7
  %conv2372 = zext i16 %call2371 to i32
  %mul2373 = mul nsw i32 %conv2372, %conv2239
  %439 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2378 = call zeroext i16 %439(i16** %52, i32 %conv2246, i32 %add2325, i32 %54, i32 %53) #7
  %conv2379 = zext i16 %call2378 to i32
  %mul2380 = mul nsw i32 %conv2379, %conv2245
  %add2381 = add nsw i32 %mul2380, %mul2373
  %440 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2382 = shl i32 %440, 1
  %add2383 = add nsw i32 %add2381, %mul2382
  %441 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2384 = add nsw i32 %441, 1
  %shr2385 = ashr i32 %add2383, %add2384
  %add2387 = add nsw i32 %shr2385, %conv2256
  br label %cond.end2390

cond.end2390:                                     ; preds = %cond.false2339, %cond.false2366, %cond.end2308
  %cond2391 = phi i32 [ 0, %cond.end2308 ], [ %add2387, %cond.false2366 ], [ %437, %cond.false2339 ]
  %add23936206 = or i32 %conv22196252, 1
  %idxprom2394 = sext i32 %add23936206 to i64
  %arrayidx2395 = getelementptr inbounds i16* %412, i64 %idxprom2394
  %442 = load i16* %arrayidx2395, align 2, !tbaa !4
  %conv2396 = zext i16 %442 to i32
  %sub2397 = sub nsw i32 %conv2396, %cond2391
  store i32 %sub2397, i32* %incdec.ptr2314, align 4, !tbaa !3
  %443 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add2402 = add nsw i32 %conv2241, 8
  %call2403 = call zeroext i16 %443(i16** %49, i32 %conv2240, i32 %add2402, i32 %54, i32 %53) #7
  %conv2404 = zext i16 %call2403 to i32
  %mul2405 = mul nsw i32 %conv2404, %conv2239
  %444 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add2409 = add nsw i32 %conv2247, 8
  %call2410 = call zeroext i16 %444(i16** %52, i32 %conv2246, i32 %add2409, i32 %54, i32 %53) #7
  %conv2411 = zext i16 %call2410 to i32
  %mul2412 = mul nsw i32 %conv2411, %conv2245
  %add2413 = add nsw i32 %mul2412, %mul2405
  %445 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2414 = shl i32 %445, 1
  %add2415 = add nsw i32 %add2413, %mul2414
  %446 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2416 = add nsw i32 %446, 1
  %shr2417 = ashr i32 %add2415, %add2416
  %add2419 = add nsw i32 %shr2417, %conv2256
  %cmp2420 = icmp slt i32 %add2419, 0
  br i1 %cmp2420, label %cond.end2474, label %cond.false2423

cond.false2423:                                   ; preds = %cond.end2390
  %447 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2428 = call zeroext i16 %447(i16** %49, i32 %conv2240, i32 %add2402, i32 %54, i32 %53) #7
  %conv2429 = zext i16 %call2428 to i32
  %mul2430 = mul nsw i32 %conv2429, %conv2239
  %448 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2435 = call zeroext i16 %448(i16** %52, i32 %conv2246, i32 %add2409, i32 %54, i32 %53) #7
  %conv2436 = zext i16 %call2435 to i32
  %mul2437 = mul nsw i32 %conv2436, %conv2245
  %add2438 = add nsw i32 %mul2437, %mul2430
  %449 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2439 = shl i32 %449, 1
  %add2440 = add nsw i32 %add2438, %mul2439
  %450 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2441 = add nsw i32 %450, 1
  %shr2442 = ashr i32 %add2440, %add2441
  %add2444 = add nsw i32 %shr2442, %conv2256
  %451 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value2445 = getelementptr inbounds %struct.ImageParameters* %451, i64 0, i32 155
  %452 = load i32* %max_imgpel_value2445, align 4, !tbaa !3
  %cmp2446 = icmp sgt i32 %add2444, %452
  br i1 %cmp2446, label %cond.end2474, label %cond.false2450

cond.false2450:                                   ; preds = %cond.false2423
  %453 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2455 = call zeroext i16 %453(i16** %49, i32 %conv2240, i32 %add2402, i32 %54, i32 %53) #7
  %conv2456 = zext i16 %call2455 to i32
  %mul2457 = mul nsw i32 %conv2456, %conv2239
  %454 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2462 = call zeroext i16 %454(i16** %52, i32 %conv2246, i32 %add2409, i32 %54, i32 %53) #7
  %conv2463 = zext i16 %call2462 to i32
  %mul2464 = mul nsw i32 %conv2463, %conv2245
  %add2465 = add nsw i32 %mul2464, %mul2457
  %455 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2466 = shl i32 %455, 1
  %add2467 = add nsw i32 %add2465, %mul2466
  %456 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2468 = add nsw i32 %456, 1
  %shr2469 = ashr i32 %add2467, %add2468
  %add2471 = add nsw i32 %shr2469, %conv2256
  br label %cond.end2474

cond.end2474:                                     ; preds = %cond.false2423, %cond.false2450, %cond.end2390
  %cond2475 = phi i32 [ 0, %cond.end2390 ], [ %add2471, %cond.false2450 ], [ %452, %cond.false2423 ]
  %add24776207 = or i32 %conv22196252, 2
  %idxprom2478 = sext i32 %add24776207 to i64
  %arrayidx2479 = getelementptr inbounds i16* %412, i64 %idxprom2478
  %457 = load i16* %arrayidx2479, align 2, !tbaa !4
  %conv2480 = zext i16 %457 to i32
  %sub2481 = sub nsw i32 %conv2480, %cond2475
  store i32 %sub2481, i32* %incdec.ptr2398, align 8, !tbaa !3
  %458 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add2486 = add nsw i32 %conv2241, 12
  %call2487 = call zeroext i16 %458(i16** %49, i32 %conv2240, i32 %add2486, i32 %54, i32 %53) #7
  %conv2488 = zext i16 %call2487 to i32
  %mul2489 = mul nsw i32 %conv2488, %conv2239
  %459 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add2493 = add nsw i32 %conv2247, 12
  %call2494 = call zeroext i16 %459(i16** %52, i32 %conv2246, i32 %add2493, i32 %54, i32 %53) #7
  %conv2495 = zext i16 %call2494 to i32
  %mul2496 = mul nsw i32 %conv2495, %conv2245
  %add2497 = add nsw i32 %mul2496, %mul2489
  %460 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2498 = shl i32 %460, 1
  %add2499 = add nsw i32 %add2497, %mul2498
  %461 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2500 = add nsw i32 %461, 1
  %shr2501 = ashr i32 %add2499, %add2500
  %add2503 = add nsw i32 %shr2501, %conv2256
  %cmp2504 = icmp slt i32 %add2503, 0
  br i1 %cmp2504, label %cond.end2558, label %cond.false2507

cond.false2507:                                   ; preds = %cond.end2474
  %462 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2512 = call zeroext i16 %462(i16** %49, i32 %conv2240, i32 %add2486, i32 %54, i32 %53) #7
  %conv2513 = zext i16 %call2512 to i32
  %mul2514 = mul nsw i32 %conv2513, %conv2239
  %463 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2519 = call zeroext i16 %463(i16** %52, i32 %conv2246, i32 %add2493, i32 %54, i32 %53) #7
  %conv2520 = zext i16 %call2519 to i32
  %mul2521 = mul nsw i32 %conv2520, %conv2245
  %add2522 = add nsw i32 %mul2521, %mul2514
  %464 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2523 = shl i32 %464, 1
  %add2524 = add nsw i32 %add2522, %mul2523
  %465 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2525 = add nsw i32 %465, 1
  %shr2526 = ashr i32 %add2524, %add2525
  %add2528 = add nsw i32 %shr2526, %conv2256
  %466 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value2529 = getelementptr inbounds %struct.ImageParameters* %466, i64 0, i32 155
  %467 = load i32* %max_imgpel_value2529, align 4, !tbaa !3
  %cmp2530 = icmp sgt i32 %add2528, %467
  br i1 %cmp2530, label %cond.end2558, label %cond.false2534

cond.false2534:                                   ; preds = %cond.false2507
  %468 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2539 = call zeroext i16 %468(i16** %49, i32 %conv2240, i32 %add2486, i32 %54, i32 %53) #7
  %conv2540 = zext i16 %call2539 to i32
  %mul2541 = mul nsw i32 %conv2540, %conv2239
  %469 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2546 = call zeroext i16 %469(i16** %52, i32 %conv2246, i32 %add2493, i32 %54, i32 %53) #7
  %conv2547 = zext i16 %call2546 to i32
  %mul2548 = mul nsw i32 %conv2547, %conv2245
  %add2549 = add nsw i32 %mul2548, %mul2541
  %470 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2550 = shl i32 %470, 1
  %add2551 = add nsw i32 %add2549, %mul2550
  %471 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2552 = add nsw i32 %471, 1
  %shr2553 = ashr i32 %add2551, %add2552
  %add2555 = add nsw i32 %shr2553, %conv2256
  br label %cond.end2558

cond.end2558:                                     ; preds = %cond.false2507, %cond.false2534, %cond.end2474
  %cond2559 = phi i32 [ 0, %cond.end2474 ], [ %add2555, %cond.false2534 ], [ %467, %cond.false2507 ]
  %add25616208 = or i32 %conv22196252, 3
  %idxprom2562 = sext i32 %add25616208 to i64
  %arrayidx2563 = getelementptr inbounds i16* %412, i64 %idxprom2562
  %472 = load i16* %arrayidx2563, align 2, !tbaa !4
  %conv2564 = zext i16 %472 to i32
  %sub2565 = sub nsw i32 %conv2564, %cond2559
  store i32 %sub2565, i32* %incdec.ptr2482, align 4, !tbaa !3
  %473 = load i16** %arrayidx2573, align 8, !tbaa !0
  %474 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2580 = call zeroext i16 %474(i16** %49, i32 %conv2578, i32 %conv2241, i32 %54, i32 %53) #7
  %conv2581 = zext i16 %call2580 to i32
  %mul2582 = mul nsw i32 %conv2581, %conv2239
  %475 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2586 = call zeroext i16 %475(i16** %52, i32 %conv2584, i32 %conv2247, i32 %54, i32 %53) #7
  %conv2587 = zext i16 %call2586 to i32
  %mul2588 = mul nsw i32 %conv2587, %conv2245
  %add2589 = add nsw i32 %mul2588, %mul2582
  %476 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2590 = shl i32 %476, 1
  %add2591 = add nsw i32 %add2589, %mul2590
  %477 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2592 = add nsw i32 %477, 1
  %shr2593 = ashr i32 %add2591, %add2592
  %add2595 = add nsw i32 %shr2593, %conv2256
  %cmp2596 = icmp slt i32 %add2595, 0
  br i1 %cmp2596, label %cond.end2646, label %cond.false2599

cond.false2599:                                   ; preds = %cond.end2558
  %478 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2603 = call zeroext i16 %478(i16** %49, i32 %conv2578, i32 %conv2241, i32 %54, i32 %53) #7
  %conv2604 = zext i16 %call2603 to i32
  %mul2605 = mul nsw i32 %conv2604, %conv2239
  %479 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2609 = call zeroext i16 %479(i16** %52, i32 %conv2584, i32 %conv2247, i32 %54, i32 %53) #7
  %conv2610 = zext i16 %call2609 to i32
  %mul2611 = mul nsw i32 %conv2610, %conv2245
  %add2612 = add nsw i32 %mul2611, %mul2605
  %480 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2613 = shl i32 %480, 1
  %add2614 = add nsw i32 %add2612, %mul2613
  %481 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2615 = add nsw i32 %481, 1
  %shr2616 = ashr i32 %add2614, %add2615
  %add2618 = add nsw i32 %shr2616, %conv2256
  %482 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value2619 = getelementptr inbounds %struct.ImageParameters* %482, i64 0, i32 155
  %483 = load i32* %max_imgpel_value2619, align 4, !tbaa !3
  %cmp2620 = icmp sgt i32 %add2618, %483
  br i1 %cmp2620, label %cond.end2646, label %cond.false2624

cond.false2624:                                   ; preds = %cond.false2599
  %484 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2628 = call zeroext i16 %484(i16** %49, i32 %conv2578, i32 %conv2241, i32 %54, i32 %53) #7
  %conv2629 = zext i16 %call2628 to i32
  %mul2630 = mul nsw i32 %conv2629, %conv2239
  %485 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2634 = call zeroext i16 %485(i16** %52, i32 %conv2584, i32 %conv2247, i32 %54, i32 %53) #7
  %conv2635 = zext i16 %call2634 to i32
  %mul2636 = mul nsw i32 %conv2635, %conv2245
  %add2637 = add nsw i32 %mul2636, %mul2630
  %486 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2638 = shl i32 %486, 1
  %add2639 = add nsw i32 %add2637, %mul2638
  %487 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2640 = add nsw i32 %487, 1
  %shr2641 = ashr i32 %add2639, %add2640
  %add2643 = add nsw i32 %shr2641, %conv2256
  br label %cond.end2646

cond.end2646:                                     ; preds = %cond.false2599, %cond.false2624, %cond.end2558
  %cond2647 = phi i32 [ 0, %cond.end2558 ], [ %add2643, %cond.false2624 ], [ %483, %cond.false2599 ]
  %arrayidx2649 = getelementptr inbounds i16* %473, i64 %idxprom2310
  %488 = load i16* %arrayidx2649, align 2, !tbaa !4
  %conv2650 = zext i16 %488 to i32
  %sub2651 = sub nsw i32 %conv2650, %cond2647
  store i32 %sub2651, i32* %incdec.ptr2566, align 16, !tbaa !3
  %489 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2657 = call zeroext i16 %489(i16** %49, i32 %conv2578, i32 %add2318, i32 %54, i32 %53) #7
  %conv2658 = zext i16 %call2657 to i32
  %mul2659 = mul nsw i32 %conv2658, %conv2239
  %490 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2664 = call zeroext i16 %490(i16** %52, i32 %conv2584, i32 %add2325, i32 %54, i32 %53) #7
  %conv2665 = zext i16 %call2664 to i32
  %mul2666 = mul nsw i32 %conv2665, %conv2245
  %add2667 = add nsw i32 %mul2666, %mul2659
  %491 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2668 = shl i32 %491, 1
  %add2669 = add nsw i32 %add2667, %mul2668
  %492 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2670 = add nsw i32 %492, 1
  %shr2671 = ashr i32 %add2669, %add2670
  %add2673 = add nsw i32 %shr2671, %conv2256
  %cmp2674 = icmp slt i32 %add2673, 0
  br i1 %cmp2674, label %cond.end2728, label %cond.false2677

cond.false2677:                                   ; preds = %cond.end2646
  %493 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2682 = call zeroext i16 %493(i16** %49, i32 %conv2578, i32 %add2318, i32 %54, i32 %53) #7
  %conv2683 = zext i16 %call2682 to i32
  %mul2684 = mul nsw i32 %conv2683, %conv2239
  %494 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2689 = call zeroext i16 %494(i16** %52, i32 %conv2584, i32 %add2325, i32 %54, i32 %53) #7
  %conv2690 = zext i16 %call2689 to i32
  %mul2691 = mul nsw i32 %conv2690, %conv2245
  %add2692 = add nsw i32 %mul2691, %mul2684
  %495 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2693 = shl i32 %495, 1
  %add2694 = add nsw i32 %add2692, %mul2693
  %496 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2695 = add nsw i32 %496, 1
  %shr2696 = ashr i32 %add2694, %add2695
  %add2698 = add nsw i32 %shr2696, %conv2256
  %497 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value2699 = getelementptr inbounds %struct.ImageParameters* %497, i64 0, i32 155
  %498 = load i32* %max_imgpel_value2699, align 4, !tbaa !3
  %cmp2700 = icmp sgt i32 %add2698, %498
  br i1 %cmp2700, label %cond.end2728, label %cond.false2704

cond.false2704:                                   ; preds = %cond.false2677
  %499 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2709 = call zeroext i16 %499(i16** %49, i32 %conv2578, i32 %add2318, i32 %54, i32 %53) #7
  %conv2710 = zext i16 %call2709 to i32
  %mul2711 = mul nsw i32 %conv2710, %conv2239
  %500 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2716 = call zeroext i16 %500(i16** %52, i32 %conv2584, i32 %add2325, i32 %54, i32 %53) #7
  %conv2717 = zext i16 %call2716 to i32
  %mul2718 = mul nsw i32 %conv2717, %conv2245
  %add2719 = add nsw i32 %mul2718, %mul2711
  %501 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2720 = shl i32 %501, 1
  %add2721 = add nsw i32 %add2719, %mul2720
  %502 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2722 = add nsw i32 %502, 1
  %shr2723 = ashr i32 %add2721, %add2722
  %add2725 = add nsw i32 %shr2723, %conv2256
  br label %cond.end2728

cond.end2728:                                     ; preds = %cond.false2677, %cond.false2704, %cond.end2646
  %cond2729 = phi i32 [ 0, %cond.end2646 ], [ %add2725, %cond.false2704 ], [ %498, %cond.false2677 ]
  %arrayidx2733 = getelementptr inbounds i16* %473, i64 %idxprom2394
  %503 = load i16* %arrayidx2733, align 2, !tbaa !4
  %conv2734 = zext i16 %503 to i32
  %sub2735 = sub nsw i32 %conv2734, %cond2729
  store i32 %sub2735, i32* %incdec.ptr2652, align 4, !tbaa !3
  %504 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2741 = call zeroext i16 %504(i16** %49, i32 %conv2578, i32 %add2402, i32 %54, i32 %53) #7
  %conv2742 = zext i16 %call2741 to i32
  %mul2743 = mul nsw i32 %conv2742, %conv2239
  %505 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2748 = call zeroext i16 %505(i16** %52, i32 %conv2584, i32 %add2409, i32 %54, i32 %53) #7
  %conv2749 = zext i16 %call2748 to i32
  %mul2750 = mul nsw i32 %conv2749, %conv2245
  %add2751 = add nsw i32 %mul2750, %mul2743
  %506 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2752 = shl i32 %506, 1
  %add2753 = add nsw i32 %add2751, %mul2752
  %507 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2754 = add nsw i32 %507, 1
  %shr2755 = ashr i32 %add2753, %add2754
  %add2757 = add nsw i32 %shr2755, %conv2256
  %cmp2758 = icmp slt i32 %add2757, 0
  br i1 %cmp2758, label %cond.end2812, label %cond.false2761

cond.false2761:                                   ; preds = %cond.end2728
  %508 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2766 = call zeroext i16 %508(i16** %49, i32 %conv2578, i32 %add2402, i32 %54, i32 %53) #7
  %conv2767 = zext i16 %call2766 to i32
  %mul2768 = mul nsw i32 %conv2767, %conv2239
  %509 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2773 = call zeroext i16 %509(i16** %52, i32 %conv2584, i32 %add2409, i32 %54, i32 %53) #7
  %conv2774 = zext i16 %call2773 to i32
  %mul2775 = mul nsw i32 %conv2774, %conv2245
  %add2776 = add nsw i32 %mul2775, %mul2768
  %510 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2777 = shl i32 %510, 1
  %add2778 = add nsw i32 %add2776, %mul2777
  %511 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2779 = add nsw i32 %511, 1
  %shr2780 = ashr i32 %add2778, %add2779
  %add2782 = add nsw i32 %shr2780, %conv2256
  %512 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value2783 = getelementptr inbounds %struct.ImageParameters* %512, i64 0, i32 155
  %513 = load i32* %max_imgpel_value2783, align 4, !tbaa !3
  %cmp2784 = icmp sgt i32 %add2782, %513
  br i1 %cmp2784, label %cond.end2812, label %cond.false2788

cond.false2788:                                   ; preds = %cond.false2761
  %514 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2793 = call zeroext i16 %514(i16** %49, i32 %conv2578, i32 %add2402, i32 %54, i32 %53) #7
  %conv2794 = zext i16 %call2793 to i32
  %mul2795 = mul nsw i32 %conv2794, %conv2239
  %515 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2800 = call zeroext i16 %515(i16** %52, i32 %conv2584, i32 %add2409, i32 %54, i32 %53) #7
  %conv2801 = zext i16 %call2800 to i32
  %mul2802 = mul nsw i32 %conv2801, %conv2245
  %add2803 = add nsw i32 %mul2802, %mul2795
  %516 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2804 = shl i32 %516, 1
  %add2805 = add nsw i32 %add2803, %mul2804
  %517 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2806 = add nsw i32 %517, 1
  %shr2807 = ashr i32 %add2805, %add2806
  %add2809 = add nsw i32 %shr2807, %conv2256
  br label %cond.end2812

cond.end2812:                                     ; preds = %cond.false2761, %cond.false2788, %cond.end2728
  %cond2813 = phi i32 [ 0, %cond.end2728 ], [ %add2809, %cond.false2788 ], [ %513, %cond.false2761 ]
  %arrayidx2817 = getelementptr inbounds i16* %473, i64 %idxprom2478
  %518 = load i16* %arrayidx2817, align 2, !tbaa !4
  %conv2818 = zext i16 %518 to i32
  %sub2819 = sub nsw i32 %conv2818, %cond2813
  store i32 %sub2819, i32* %incdec.ptr2736, align 8, !tbaa !3
  %519 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2825 = call zeroext i16 %519(i16** %49, i32 %conv2578, i32 %add2486, i32 %54, i32 %53) #7
  %conv2826 = zext i16 %call2825 to i32
  %mul2827 = mul nsw i32 %conv2826, %conv2239
  %520 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2832 = call zeroext i16 %520(i16** %52, i32 %conv2584, i32 %add2493, i32 %54, i32 %53) #7
  %conv2833 = zext i16 %call2832 to i32
  %mul2834 = mul nsw i32 %conv2833, %conv2245
  %add2835 = add nsw i32 %mul2834, %mul2827
  %521 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2836 = shl i32 %521, 1
  %add2837 = add nsw i32 %add2835, %mul2836
  %522 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2838 = add nsw i32 %522, 1
  %shr2839 = ashr i32 %add2837, %add2838
  %add2841 = add nsw i32 %shr2839, %conv2256
  %cmp2842 = icmp slt i32 %add2841, 0
  br i1 %cmp2842, label %cond.end2896, label %cond.false2845

cond.false2845:                                   ; preds = %cond.end2812
  %523 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2850 = call zeroext i16 %523(i16** %49, i32 %conv2578, i32 %add2486, i32 %54, i32 %53) #7
  %conv2851 = zext i16 %call2850 to i32
  %mul2852 = mul nsw i32 %conv2851, %conv2239
  %524 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2857 = call zeroext i16 %524(i16** %52, i32 %conv2584, i32 %add2493, i32 %54, i32 %53) #7
  %conv2858 = zext i16 %call2857 to i32
  %mul2859 = mul nsw i32 %conv2858, %conv2245
  %add2860 = add nsw i32 %mul2859, %mul2852
  %525 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2861 = shl i32 %525, 1
  %add2862 = add nsw i32 %add2860, %mul2861
  %526 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2863 = add nsw i32 %526, 1
  %shr2864 = ashr i32 %add2862, %add2863
  %add2866 = add nsw i32 %shr2864, %conv2256
  %527 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value2867 = getelementptr inbounds %struct.ImageParameters* %527, i64 0, i32 155
  %528 = load i32* %max_imgpel_value2867, align 4, !tbaa !3
  %cmp2868 = icmp sgt i32 %add2866, %528
  br i1 %cmp2868, label %cond.end2896, label %cond.false2872

cond.false2872:                                   ; preds = %cond.false2845
  %529 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2877 = call zeroext i16 %529(i16** %49, i32 %conv2578, i32 %add2486, i32 %54, i32 %53) #7
  %conv2878 = zext i16 %call2877 to i32
  %mul2879 = mul nsw i32 %conv2878, %conv2239
  %530 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2884 = call zeroext i16 %530(i16** %52, i32 %conv2584, i32 %add2493, i32 %54, i32 %53) #7
  %conv2885 = zext i16 %call2884 to i32
  %mul2886 = mul nsw i32 %conv2885, %conv2245
  %add2887 = add nsw i32 %mul2886, %mul2879
  %531 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2888 = shl i32 %531, 1
  %add2889 = add nsw i32 %add2887, %mul2888
  %532 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2890 = add nsw i32 %532, 1
  %shr2891 = ashr i32 %add2889, %add2890
  %add2893 = add nsw i32 %shr2891, %conv2256
  br label %cond.end2896

cond.end2896:                                     ; preds = %cond.false2845, %cond.false2872, %cond.end2812
  %cond2897 = phi i32 [ 0, %cond.end2812 ], [ %add2893, %cond.false2872 ], [ %528, %cond.false2845 ]
  %arrayidx2901 = getelementptr inbounds i16* %473, i64 %idxprom2562
  %533 = load i16* %arrayidx2901, align 2, !tbaa !4
  %conv2902 = zext i16 %533 to i32
  %sub2903 = sub nsw i32 %conv2902, %cond2897
  store i32 %sub2903, i32* %incdec.ptr2820, align 4, !tbaa !3
  %534 = load i16** %arrayidx2911, align 8, !tbaa !0
  %535 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2918 = call zeroext i16 %535(i16** %49, i32 %conv2916, i32 %conv2241, i32 %54, i32 %53) #7
  %conv2919 = zext i16 %call2918 to i32
  %mul2920 = mul nsw i32 %conv2919, %conv2239
  %536 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2924 = call zeroext i16 %536(i16** %52, i32 %conv2922, i32 %conv2247, i32 %54, i32 %53) #7
  %conv2925 = zext i16 %call2924 to i32
  %mul2926 = mul nsw i32 %conv2925, %conv2245
  %add2927 = add nsw i32 %mul2926, %mul2920
  %537 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2928 = shl i32 %537, 1
  %add2929 = add nsw i32 %add2927, %mul2928
  %538 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2930 = add nsw i32 %538, 1
  %shr2931 = ashr i32 %add2929, %add2930
  %add2933 = add nsw i32 %shr2931, %conv2256
  %cmp2934 = icmp slt i32 %add2933, 0
  br i1 %cmp2934, label %cond.end2984, label %cond.false2937

cond.false2937:                                   ; preds = %cond.end2896
  %539 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2941 = call zeroext i16 %539(i16** %49, i32 %conv2916, i32 %conv2241, i32 %54, i32 %53) #7
  %conv2942 = zext i16 %call2941 to i32
  %mul2943 = mul nsw i32 %conv2942, %conv2239
  %540 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2947 = call zeroext i16 %540(i16** %52, i32 %conv2922, i32 %conv2247, i32 %54, i32 %53) #7
  %conv2948 = zext i16 %call2947 to i32
  %mul2949 = mul nsw i32 %conv2948, %conv2245
  %add2950 = add nsw i32 %mul2949, %mul2943
  %541 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2951 = shl i32 %541, 1
  %add2952 = add nsw i32 %add2950, %mul2951
  %542 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2953 = add nsw i32 %542, 1
  %shr2954 = ashr i32 %add2952, %add2953
  %add2956 = add nsw i32 %shr2954, %conv2256
  %543 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value2957 = getelementptr inbounds %struct.ImageParameters* %543, i64 0, i32 155
  %544 = load i32* %max_imgpel_value2957, align 4, !tbaa !3
  %cmp2958 = icmp sgt i32 %add2956, %544
  br i1 %cmp2958, label %cond.end2984, label %cond.false2962

cond.false2962:                                   ; preds = %cond.false2937
  %545 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2966 = call zeroext i16 %545(i16** %49, i32 %conv2916, i32 %conv2241, i32 %54, i32 %53) #7
  %conv2967 = zext i16 %call2966 to i32
  %mul2968 = mul nsw i32 %conv2967, %conv2239
  %546 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call2972 = call zeroext i16 %546(i16** %52, i32 %conv2922, i32 %conv2247, i32 %54, i32 %53) #7
  %conv2973 = zext i16 %call2972 to i32
  %mul2974 = mul nsw i32 %conv2973, %conv2245
  %add2975 = add nsw i32 %mul2974, %mul2968
  %547 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul2976 = shl i32 %547, 1
  %add2977 = add nsw i32 %add2975, %mul2976
  %548 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add2978 = add nsw i32 %548, 1
  %shr2979 = ashr i32 %add2977, %add2978
  %add2981 = add nsw i32 %shr2979, %conv2256
  br label %cond.end2984

cond.end2984:                                     ; preds = %cond.false2937, %cond.false2962, %cond.end2896
  %cond2985 = phi i32 [ 0, %cond.end2896 ], [ %add2981, %cond.false2962 ], [ %544, %cond.false2937 ]
  %arrayidx2987 = getelementptr inbounds i16* %534, i64 %idxprom2310
  %549 = load i16* %arrayidx2987, align 2, !tbaa !4
  %conv2988 = zext i16 %549 to i32
  %sub2989 = sub nsw i32 %conv2988, %cond2985
  store i32 %sub2989, i32* %incdec.ptr2904, align 16, !tbaa !3
  %550 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call2995 = call zeroext i16 %550(i16** %49, i32 %conv2916, i32 %add2318, i32 %54, i32 %53) #7
  %conv2996 = zext i16 %call2995 to i32
  %mul2997 = mul nsw i32 %conv2996, %conv2239
  %551 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3002 = call zeroext i16 %551(i16** %52, i32 %conv2922, i32 %add2325, i32 %54, i32 %53) #7
  %conv3003 = zext i16 %call3002 to i32
  %mul3004 = mul nsw i32 %conv3003, %conv2245
  %add3005 = add nsw i32 %mul3004, %mul2997
  %552 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3006 = shl i32 %552, 1
  %add3007 = add nsw i32 %add3005, %mul3006
  %553 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3008 = add nsw i32 %553, 1
  %shr3009 = ashr i32 %add3007, %add3008
  %add3011 = add nsw i32 %shr3009, %conv2256
  %cmp3012 = icmp slt i32 %add3011, 0
  br i1 %cmp3012, label %cond.end3066, label %cond.false3015

cond.false3015:                                   ; preds = %cond.end2984
  %554 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3020 = call zeroext i16 %554(i16** %49, i32 %conv2916, i32 %add2318, i32 %54, i32 %53) #7
  %conv3021 = zext i16 %call3020 to i32
  %mul3022 = mul nsw i32 %conv3021, %conv2239
  %555 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3027 = call zeroext i16 %555(i16** %52, i32 %conv2922, i32 %add2325, i32 %54, i32 %53) #7
  %conv3028 = zext i16 %call3027 to i32
  %mul3029 = mul nsw i32 %conv3028, %conv2245
  %add3030 = add nsw i32 %mul3029, %mul3022
  %556 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3031 = shl i32 %556, 1
  %add3032 = add nsw i32 %add3030, %mul3031
  %557 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3033 = add nsw i32 %557, 1
  %shr3034 = ashr i32 %add3032, %add3033
  %add3036 = add nsw i32 %shr3034, %conv2256
  %558 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value3037 = getelementptr inbounds %struct.ImageParameters* %558, i64 0, i32 155
  %559 = load i32* %max_imgpel_value3037, align 4, !tbaa !3
  %cmp3038 = icmp sgt i32 %add3036, %559
  br i1 %cmp3038, label %cond.end3066, label %cond.false3042

cond.false3042:                                   ; preds = %cond.false3015
  %560 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3047 = call zeroext i16 %560(i16** %49, i32 %conv2916, i32 %add2318, i32 %54, i32 %53) #7
  %conv3048 = zext i16 %call3047 to i32
  %mul3049 = mul nsw i32 %conv3048, %conv2239
  %561 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3054 = call zeroext i16 %561(i16** %52, i32 %conv2922, i32 %add2325, i32 %54, i32 %53) #7
  %conv3055 = zext i16 %call3054 to i32
  %mul3056 = mul nsw i32 %conv3055, %conv2245
  %add3057 = add nsw i32 %mul3056, %mul3049
  %562 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3058 = shl i32 %562, 1
  %add3059 = add nsw i32 %add3057, %mul3058
  %563 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3060 = add nsw i32 %563, 1
  %shr3061 = ashr i32 %add3059, %add3060
  %add3063 = add nsw i32 %shr3061, %conv2256
  br label %cond.end3066

cond.end3066:                                     ; preds = %cond.false3015, %cond.false3042, %cond.end2984
  %cond3067 = phi i32 [ 0, %cond.end2984 ], [ %add3063, %cond.false3042 ], [ %559, %cond.false3015 ]
  %arrayidx3071 = getelementptr inbounds i16* %534, i64 %idxprom2394
  %564 = load i16* %arrayidx3071, align 2, !tbaa !4
  %conv3072 = zext i16 %564 to i32
  %sub3073 = sub nsw i32 %conv3072, %cond3067
  store i32 %sub3073, i32* %incdec.ptr2990, align 4, !tbaa !3
  %565 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3079 = call zeroext i16 %565(i16** %49, i32 %conv2916, i32 %add2402, i32 %54, i32 %53) #7
  %conv3080 = zext i16 %call3079 to i32
  %mul3081 = mul nsw i32 %conv3080, %conv2239
  %566 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3086 = call zeroext i16 %566(i16** %52, i32 %conv2922, i32 %add2409, i32 %54, i32 %53) #7
  %conv3087 = zext i16 %call3086 to i32
  %mul3088 = mul nsw i32 %conv3087, %conv2245
  %add3089 = add nsw i32 %mul3088, %mul3081
  %567 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3090 = shl i32 %567, 1
  %add3091 = add nsw i32 %add3089, %mul3090
  %568 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3092 = add nsw i32 %568, 1
  %shr3093 = ashr i32 %add3091, %add3092
  %add3095 = add nsw i32 %shr3093, %conv2256
  %cmp3096 = icmp slt i32 %add3095, 0
  br i1 %cmp3096, label %cond.end3150, label %cond.false3099

cond.false3099:                                   ; preds = %cond.end3066
  %569 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3104 = call zeroext i16 %569(i16** %49, i32 %conv2916, i32 %add2402, i32 %54, i32 %53) #7
  %conv3105 = zext i16 %call3104 to i32
  %mul3106 = mul nsw i32 %conv3105, %conv2239
  %570 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3111 = call zeroext i16 %570(i16** %52, i32 %conv2922, i32 %add2409, i32 %54, i32 %53) #7
  %conv3112 = zext i16 %call3111 to i32
  %mul3113 = mul nsw i32 %conv3112, %conv2245
  %add3114 = add nsw i32 %mul3113, %mul3106
  %571 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3115 = shl i32 %571, 1
  %add3116 = add nsw i32 %add3114, %mul3115
  %572 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3117 = add nsw i32 %572, 1
  %shr3118 = ashr i32 %add3116, %add3117
  %add3120 = add nsw i32 %shr3118, %conv2256
  %573 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value3121 = getelementptr inbounds %struct.ImageParameters* %573, i64 0, i32 155
  %574 = load i32* %max_imgpel_value3121, align 4, !tbaa !3
  %cmp3122 = icmp sgt i32 %add3120, %574
  br i1 %cmp3122, label %cond.end3150, label %cond.false3126

cond.false3126:                                   ; preds = %cond.false3099
  %575 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3131 = call zeroext i16 %575(i16** %49, i32 %conv2916, i32 %add2402, i32 %54, i32 %53) #7
  %conv3132 = zext i16 %call3131 to i32
  %mul3133 = mul nsw i32 %conv3132, %conv2239
  %576 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3138 = call zeroext i16 %576(i16** %52, i32 %conv2922, i32 %add2409, i32 %54, i32 %53) #7
  %conv3139 = zext i16 %call3138 to i32
  %mul3140 = mul nsw i32 %conv3139, %conv2245
  %add3141 = add nsw i32 %mul3140, %mul3133
  %577 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3142 = shl i32 %577, 1
  %add3143 = add nsw i32 %add3141, %mul3142
  %578 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3144 = add nsw i32 %578, 1
  %shr3145 = ashr i32 %add3143, %add3144
  %add3147 = add nsw i32 %shr3145, %conv2256
  br label %cond.end3150

cond.end3150:                                     ; preds = %cond.false3099, %cond.false3126, %cond.end3066
  %cond3151 = phi i32 [ 0, %cond.end3066 ], [ %add3147, %cond.false3126 ], [ %574, %cond.false3099 ]
  %arrayidx3155 = getelementptr inbounds i16* %534, i64 %idxprom2478
  %579 = load i16* %arrayidx3155, align 2, !tbaa !4
  %conv3156 = zext i16 %579 to i32
  %sub3157 = sub nsw i32 %conv3156, %cond3151
  store i32 %sub3157, i32* %incdec.ptr3074, align 8, !tbaa !3
  %580 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3163 = call zeroext i16 %580(i16** %49, i32 %conv2916, i32 %add2486, i32 %54, i32 %53) #7
  %conv3164 = zext i16 %call3163 to i32
  %mul3165 = mul nsw i32 %conv3164, %conv2239
  %581 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3170 = call zeroext i16 %581(i16** %52, i32 %conv2922, i32 %add2493, i32 %54, i32 %53) #7
  %conv3171 = zext i16 %call3170 to i32
  %mul3172 = mul nsw i32 %conv3171, %conv2245
  %add3173 = add nsw i32 %mul3172, %mul3165
  %582 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3174 = shl i32 %582, 1
  %add3175 = add nsw i32 %add3173, %mul3174
  %583 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3176 = add nsw i32 %583, 1
  %shr3177 = ashr i32 %add3175, %add3176
  %add3179 = add nsw i32 %shr3177, %conv2256
  %cmp3180 = icmp slt i32 %add3179, 0
  br i1 %cmp3180, label %cond.end3234, label %cond.false3183

cond.false3183:                                   ; preds = %cond.end3150
  %584 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3188 = call zeroext i16 %584(i16** %49, i32 %conv2916, i32 %add2486, i32 %54, i32 %53) #7
  %conv3189 = zext i16 %call3188 to i32
  %mul3190 = mul nsw i32 %conv3189, %conv2239
  %585 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3195 = call zeroext i16 %585(i16** %52, i32 %conv2922, i32 %add2493, i32 %54, i32 %53) #7
  %conv3196 = zext i16 %call3195 to i32
  %mul3197 = mul nsw i32 %conv3196, %conv2245
  %add3198 = add nsw i32 %mul3197, %mul3190
  %586 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3199 = shl i32 %586, 1
  %add3200 = add nsw i32 %add3198, %mul3199
  %587 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3201 = add nsw i32 %587, 1
  %shr3202 = ashr i32 %add3200, %add3201
  %add3204 = add nsw i32 %shr3202, %conv2256
  %588 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value3205 = getelementptr inbounds %struct.ImageParameters* %588, i64 0, i32 155
  %589 = load i32* %max_imgpel_value3205, align 4, !tbaa !3
  %cmp3206 = icmp sgt i32 %add3204, %589
  br i1 %cmp3206, label %cond.end3234, label %cond.false3210

cond.false3210:                                   ; preds = %cond.false3183
  %590 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3215 = call zeroext i16 %590(i16** %49, i32 %conv2916, i32 %add2486, i32 %54, i32 %53) #7
  %conv3216 = zext i16 %call3215 to i32
  %mul3217 = mul nsw i32 %conv3216, %conv2239
  %591 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3222 = call zeroext i16 %591(i16** %52, i32 %conv2922, i32 %add2493, i32 %54, i32 %53) #7
  %conv3223 = zext i16 %call3222 to i32
  %mul3224 = mul nsw i32 %conv3223, %conv2245
  %add3225 = add nsw i32 %mul3224, %mul3217
  %592 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3226 = shl i32 %592, 1
  %add3227 = add nsw i32 %add3225, %mul3226
  %593 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3228 = add nsw i32 %593, 1
  %shr3229 = ashr i32 %add3227, %add3228
  %add3231 = add nsw i32 %shr3229, %conv2256
  br label %cond.end3234

cond.end3234:                                     ; preds = %cond.false3183, %cond.false3210, %cond.end3150
  %cond3235 = phi i32 [ 0, %cond.end3150 ], [ %add3231, %cond.false3210 ], [ %589, %cond.false3183 ]
  %arrayidx3239 = getelementptr inbounds i16* %534, i64 %idxprom2562
  %594 = load i16* %arrayidx3239, align 2, !tbaa !4
  %conv3240 = zext i16 %594 to i32
  %sub3241 = sub nsw i32 %conv3240, %cond3235
  store i32 %sub3241, i32* %incdec.ptr3158, align 4, !tbaa !3
  %595 = load i16** %arrayidx3249, align 8, !tbaa !0
  %596 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3256 = call zeroext i16 %596(i16** %49, i32 %conv3254, i32 %conv2241, i32 %54, i32 %53) #7
  %conv3257 = zext i16 %call3256 to i32
  %mul3258 = mul nsw i32 %conv3257, %conv2239
  %597 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3262 = call zeroext i16 %597(i16** %52, i32 %conv3260, i32 %conv2247, i32 %54, i32 %53) #7
  %conv3263 = zext i16 %call3262 to i32
  %mul3264 = mul nsw i32 %conv3263, %conv2245
  %add3265 = add nsw i32 %mul3264, %mul3258
  %598 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3266 = shl i32 %598, 1
  %add3267 = add nsw i32 %add3265, %mul3266
  %599 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3268 = add nsw i32 %599, 1
  %shr3269 = ashr i32 %add3267, %add3268
  %add3271 = add nsw i32 %shr3269, %conv2256
  %cmp3272 = icmp slt i32 %add3271, 0
  br i1 %cmp3272, label %cond.end3322, label %cond.false3275

cond.false3275:                                   ; preds = %cond.end3234
  %600 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3279 = call zeroext i16 %600(i16** %49, i32 %conv3254, i32 %conv2241, i32 %54, i32 %53) #7
  %conv3280 = zext i16 %call3279 to i32
  %mul3281 = mul nsw i32 %conv3280, %conv2239
  %601 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3285 = call zeroext i16 %601(i16** %52, i32 %conv3260, i32 %conv2247, i32 %54, i32 %53) #7
  %conv3286 = zext i16 %call3285 to i32
  %mul3287 = mul nsw i32 %conv3286, %conv2245
  %add3288 = add nsw i32 %mul3287, %mul3281
  %602 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3289 = shl i32 %602, 1
  %add3290 = add nsw i32 %add3288, %mul3289
  %603 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3291 = add nsw i32 %603, 1
  %shr3292 = ashr i32 %add3290, %add3291
  %add3294 = add nsw i32 %shr3292, %conv2256
  %604 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value3295 = getelementptr inbounds %struct.ImageParameters* %604, i64 0, i32 155
  %605 = load i32* %max_imgpel_value3295, align 4, !tbaa !3
  %cmp3296 = icmp sgt i32 %add3294, %605
  br i1 %cmp3296, label %cond.end3322, label %cond.false3300

cond.false3300:                                   ; preds = %cond.false3275
  %606 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3304 = call zeroext i16 %606(i16** %49, i32 %conv3254, i32 %conv2241, i32 %54, i32 %53) #7
  %conv3305 = zext i16 %call3304 to i32
  %mul3306 = mul nsw i32 %conv3305, %conv2239
  %607 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3310 = call zeroext i16 %607(i16** %52, i32 %conv3260, i32 %conv2247, i32 %54, i32 %53) #7
  %conv3311 = zext i16 %call3310 to i32
  %mul3312 = mul nsw i32 %conv3311, %conv2245
  %add3313 = add nsw i32 %mul3312, %mul3306
  %608 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3314 = shl i32 %608, 1
  %add3315 = add nsw i32 %add3313, %mul3314
  %609 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3316 = add nsw i32 %609, 1
  %shr3317 = ashr i32 %add3315, %add3316
  %add3319 = add nsw i32 %shr3317, %conv2256
  br label %cond.end3322

cond.end3322:                                     ; preds = %cond.false3275, %cond.false3300, %cond.end3234
  %cond3323 = phi i32 [ 0, %cond.end3234 ], [ %add3319, %cond.false3300 ], [ %605, %cond.false3275 ]
  %arrayidx3325 = getelementptr inbounds i16* %595, i64 %idxprom2310
  %610 = load i16* %arrayidx3325, align 2, !tbaa !4
  %conv3326 = zext i16 %610 to i32
  %sub3327 = sub nsw i32 %conv3326, %cond3323
  store i32 %sub3327, i32* %incdec.ptr3242, align 16, !tbaa !3
  %611 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3333 = call zeroext i16 %611(i16** %49, i32 %conv3254, i32 %add2318, i32 %54, i32 %53) #7
  %conv3334 = zext i16 %call3333 to i32
  %mul3335 = mul nsw i32 %conv3334, %conv2239
  %612 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3340 = call zeroext i16 %612(i16** %52, i32 %conv3260, i32 %add2325, i32 %54, i32 %53) #7
  %conv3341 = zext i16 %call3340 to i32
  %mul3342 = mul nsw i32 %conv3341, %conv2245
  %add3343 = add nsw i32 %mul3342, %mul3335
  %613 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3344 = shl i32 %613, 1
  %add3345 = add nsw i32 %add3343, %mul3344
  %614 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3346 = add nsw i32 %614, 1
  %shr3347 = ashr i32 %add3345, %add3346
  %add3349 = add nsw i32 %shr3347, %conv2256
  %cmp3350 = icmp slt i32 %add3349, 0
  br i1 %cmp3350, label %cond.end3404, label %cond.false3353

cond.false3353:                                   ; preds = %cond.end3322
  %615 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3358 = call zeroext i16 %615(i16** %49, i32 %conv3254, i32 %add2318, i32 %54, i32 %53) #7
  %conv3359 = zext i16 %call3358 to i32
  %mul3360 = mul nsw i32 %conv3359, %conv2239
  %616 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3365 = call zeroext i16 %616(i16** %52, i32 %conv3260, i32 %add2325, i32 %54, i32 %53) #7
  %conv3366 = zext i16 %call3365 to i32
  %mul3367 = mul nsw i32 %conv3366, %conv2245
  %add3368 = add nsw i32 %mul3367, %mul3360
  %617 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3369 = shl i32 %617, 1
  %add3370 = add nsw i32 %add3368, %mul3369
  %618 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3371 = add nsw i32 %618, 1
  %shr3372 = ashr i32 %add3370, %add3371
  %add3374 = add nsw i32 %shr3372, %conv2256
  %619 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value3375 = getelementptr inbounds %struct.ImageParameters* %619, i64 0, i32 155
  %620 = load i32* %max_imgpel_value3375, align 4, !tbaa !3
  %cmp3376 = icmp sgt i32 %add3374, %620
  br i1 %cmp3376, label %cond.end3404, label %cond.false3380

cond.false3380:                                   ; preds = %cond.false3353
  %621 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3385 = call zeroext i16 %621(i16** %49, i32 %conv3254, i32 %add2318, i32 %54, i32 %53) #7
  %conv3386 = zext i16 %call3385 to i32
  %mul3387 = mul nsw i32 %conv3386, %conv2239
  %622 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3392 = call zeroext i16 %622(i16** %52, i32 %conv3260, i32 %add2325, i32 %54, i32 %53) #7
  %conv3393 = zext i16 %call3392 to i32
  %mul3394 = mul nsw i32 %conv3393, %conv2245
  %add3395 = add nsw i32 %mul3394, %mul3387
  %623 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3396 = shl i32 %623, 1
  %add3397 = add nsw i32 %add3395, %mul3396
  %624 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3398 = add nsw i32 %624, 1
  %shr3399 = ashr i32 %add3397, %add3398
  %add3401 = add nsw i32 %shr3399, %conv2256
  br label %cond.end3404

cond.end3404:                                     ; preds = %cond.false3353, %cond.false3380, %cond.end3322
  %cond3405 = phi i32 [ 0, %cond.end3322 ], [ %add3401, %cond.false3380 ], [ %620, %cond.false3353 ]
  %arrayidx3409 = getelementptr inbounds i16* %595, i64 %idxprom2394
  %625 = load i16* %arrayidx3409, align 2, !tbaa !4
  %conv3410 = zext i16 %625 to i32
  %sub3411 = sub nsw i32 %conv3410, %cond3405
  store i32 %sub3411, i32* %incdec.ptr3328, align 4, !tbaa !3
  %626 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3417 = call zeroext i16 %626(i16** %49, i32 %conv3254, i32 %add2402, i32 %54, i32 %53) #7
  %conv3418 = zext i16 %call3417 to i32
  %mul3419 = mul nsw i32 %conv3418, %conv2239
  %627 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3424 = call zeroext i16 %627(i16** %52, i32 %conv3260, i32 %add2409, i32 %54, i32 %53) #7
  %conv3425 = zext i16 %call3424 to i32
  %mul3426 = mul nsw i32 %conv3425, %conv2245
  %add3427 = add nsw i32 %mul3426, %mul3419
  %628 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3428 = shl i32 %628, 1
  %add3429 = add nsw i32 %add3427, %mul3428
  %629 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3430 = add nsw i32 %629, 1
  %shr3431 = ashr i32 %add3429, %add3430
  %add3433 = add nsw i32 %shr3431, %conv2256
  %cmp3434 = icmp slt i32 %add3433, 0
  br i1 %cmp3434, label %cond.end3488, label %cond.false3437

cond.false3437:                                   ; preds = %cond.end3404
  %630 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3442 = call zeroext i16 %630(i16** %49, i32 %conv3254, i32 %add2402, i32 %54, i32 %53) #7
  %conv3443 = zext i16 %call3442 to i32
  %mul3444 = mul nsw i32 %conv3443, %conv2239
  %631 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3449 = call zeroext i16 %631(i16** %52, i32 %conv3260, i32 %add2409, i32 %54, i32 %53) #7
  %conv3450 = zext i16 %call3449 to i32
  %mul3451 = mul nsw i32 %conv3450, %conv2245
  %add3452 = add nsw i32 %mul3451, %mul3444
  %632 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3453 = shl i32 %632, 1
  %add3454 = add nsw i32 %add3452, %mul3453
  %633 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3455 = add nsw i32 %633, 1
  %shr3456 = ashr i32 %add3454, %add3455
  %add3458 = add nsw i32 %shr3456, %conv2256
  %634 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value3459 = getelementptr inbounds %struct.ImageParameters* %634, i64 0, i32 155
  %635 = load i32* %max_imgpel_value3459, align 4, !tbaa !3
  %cmp3460 = icmp sgt i32 %add3458, %635
  br i1 %cmp3460, label %cond.end3488, label %cond.false3464

cond.false3464:                                   ; preds = %cond.false3437
  %636 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3469 = call zeroext i16 %636(i16** %49, i32 %conv3254, i32 %add2402, i32 %54, i32 %53) #7
  %conv3470 = zext i16 %call3469 to i32
  %mul3471 = mul nsw i32 %conv3470, %conv2239
  %637 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3476 = call zeroext i16 %637(i16** %52, i32 %conv3260, i32 %add2409, i32 %54, i32 %53) #7
  %conv3477 = zext i16 %call3476 to i32
  %mul3478 = mul nsw i32 %conv3477, %conv2245
  %add3479 = add nsw i32 %mul3478, %mul3471
  %638 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3480 = shl i32 %638, 1
  %add3481 = add nsw i32 %add3479, %mul3480
  %639 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3482 = add nsw i32 %639, 1
  %shr3483 = ashr i32 %add3481, %add3482
  %add3485 = add nsw i32 %shr3483, %conv2256
  br label %cond.end3488

cond.end3488:                                     ; preds = %cond.false3437, %cond.false3464, %cond.end3404
  %cond3489 = phi i32 [ 0, %cond.end3404 ], [ %add3485, %cond.false3464 ], [ %635, %cond.false3437 ]
  %arrayidx3493 = getelementptr inbounds i16* %595, i64 %idxprom2478
  %640 = load i16* %arrayidx3493, align 2, !tbaa !4
  %conv3494 = zext i16 %640 to i32
  %sub3495 = sub nsw i32 %conv3494, %cond3489
  store i32 %sub3495, i32* %incdec.ptr3412, align 8, !tbaa !3
  %641 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3501 = call zeroext i16 %641(i16** %49, i32 %conv3254, i32 %add2486, i32 %54, i32 %53) #7
  %conv3502 = zext i16 %call3501 to i32
  %mul3503 = mul nsw i32 %conv3502, %conv2239
  %642 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3508 = call zeroext i16 %642(i16** %52, i32 %conv3260, i32 %add2493, i32 %54, i32 %53) #7
  %conv3509 = zext i16 %call3508 to i32
  %mul3510 = mul nsw i32 %conv3509, %conv2245
  %add3511 = add nsw i32 %mul3510, %mul3503
  %643 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3512 = shl i32 %643, 1
  %add3513 = add nsw i32 %add3511, %mul3512
  %644 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3514 = add nsw i32 %644, 1
  %shr3515 = ashr i32 %add3513, %add3514
  %add3517 = add nsw i32 %shr3515, %conv2256
  %cmp3518 = icmp slt i32 %add3517, 0
  br i1 %cmp3518, label %cond.end3572, label %cond.false3521

cond.false3521:                                   ; preds = %cond.end3488
  %645 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3526 = call zeroext i16 %645(i16** %49, i32 %conv3254, i32 %add2486, i32 %54, i32 %53) #7
  %conv3527 = zext i16 %call3526 to i32
  %mul3528 = mul nsw i32 %conv3527, %conv2239
  %646 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3533 = call zeroext i16 %646(i16** %52, i32 %conv3260, i32 %add2493, i32 %54, i32 %53) #7
  %conv3534 = zext i16 %call3533 to i32
  %mul3535 = mul nsw i32 %conv3534, %conv2245
  %add3536 = add nsw i32 %mul3535, %mul3528
  %647 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3537 = shl i32 %647, 1
  %add3538 = add nsw i32 %add3536, %mul3537
  %648 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3539 = add nsw i32 %648, 1
  %shr3540 = ashr i32 %add3538, %add3539
  %add3542 = add nsw i32 %shr3540, %conv2256
  %649 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %max_imgpel_value3543 = getelementptr inbounds %struct.ImageParameters* %649, i64 0, i32 155
  %650 = load i32* %max_imgpel_value3543, align 4, !tbaa !3
  %cmp3544 = icmp sgt i32 %add3542, %650
  br i1 %cmp3544, label %cond.end3572, label %cond.false3548

cond.false3548:                                   ; preds = %cond.false3521
  %651 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3553 = call zeroext i16 %651(i16** %49, i32 %conv3254, i32 %add2486, i32 %54, i32 %53) #7
  %conv3554 = zext i16 %call3553 to i32
  %mul3555 = mul nsw i32 %conv3554, %conv2239
  %652 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3560 = call zeroext i16 %652(i16** %52, i32 %conv3260, i32 %add2493, i32 %54, i32 %53) #7
  %conv3561 = zext i16 %call3560 to i32
  %mul3562 = mul nsw i32 %conv3561, %conv2245
  %add3563 = add nsw i32 %mul3562, %mul3555
  %653 = load i32* @wp_luma_round, align 4, !tbaa !3
  %mul3564 = shl i32 %653, 1
  %add3565 = add nsw i32 %add3563, %mul3564
  %654 = load i32* @luma_log_weight_denom, align 4, !tbaa !3
  %add3566 = add nsw i32 %654, 1
  %shr3567 = ashr i32 %add3565, %add3566
  %add3569 = add nsw i32 %shr3567, %conv2256
  br label %cond.end3572

cond.end3572:                                     ; preds = %cond.false3521, %cond.false3548, %cond.end3488
  %cond3573 = phi i32 [ 0, %cond.end3488 ], [ %add3569, %cond.false3548 ], [ %650, %cond.false3521 ]
  %arrayidx3577 = getelementptr inbounds i16* %595, i64 %idxprom2562
  %655 = load i16* %arrayidx3577, align 2, !tbaa !4
  %conv3578 = zext i16 %655 to i32
  %sub3579 = sub nsw i32 %conv3578, %cond3573
  store i32 %sub3579, i32* %incdec.ptr3496, align 4, !tbaa !3
  %656 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x83580 = getelementptr inbounds %struct.InputParameters* %656, i64 0, i32 123
  %657 = load i32* %AllowTransform8x83580, align 4, !tbaa !3
  %tobool3581 = icmp eq i32 %657, 0
  br i1 %tobool3581, label %if.then3582, label %for.cond3595.preheader

for.cond3595.preheader:                           ; preds = %cond.end3572
  %658 = sext i32 %conv22196252 to i64
  br label %for.cond3599.preheader

if.then3582:                                      ; preds = %cond.end3572
  %hadamard3584 = getelementptr inbounds %struct.InputParameters* %656, i64 0, i32 6
  %659 = load i32* %hadamard3584, align 4, !tbaa !3
  %call3585 = call i32 @SATD(i32* %arraydecay2236, i32 %659) #8
  %conv35866134 = zext i16 %mcost.86251 to i32
  %add3587 = add nsw i32 %call3585, %conv35866134
  %conv3588 = trunc i32 %add3587 to i16
  %sext6135 = shl i32 %add3587, 16
  %conv3589 = ashr exact i32 %sext6135, 16
  %cmp3590 = icmp sgt i32 %conv3589, %min_mcost.addr.36278
  br i1 %cmp3590, label %for.end4016, label %for.inc3621

for.cond3599.preheader:                           ; preds = %for.cond3599.preheader, %for.cond3595.preheader
  %indvars.iv = phi i64 [ 0, %for.cond3595.preheader ], [ %indvars.iv.next, %for.cond3599.preheader ]
  %660 = trunc i64 %indvars.iv to i32
  %661 = add i32 %conv21956272, %660
  %662 = sext i32 %661 to i64
  %663 = shl nsw i64 %662, 4
  %scevgep.sum = add i64 %658, %663
  %scevgep6322 = getelementptr [16 x [16 x i32]]* %curr_diff, i64 0, i64 0, i64 %scevgep.sum
  %scevgep63226323 = bitcast i32* %scevgep6322 to i8*
  %664 = shl i64 %indvars.iv, 2
  %scevgep6324 = getelementptr [16 x i32]* %diff, i64 0, i64 %664
  %scevgep63246325 = bitcast i32* %scevgep6324 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep63226323, i8* %scevgep63246325, i64 16, i32 4, i1 false)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc3621, label %for.cond3599.preheader

for.inc3621:                                      ; preds = %for.cond3599.preheader, %if.then3582
  %mcost.9 = phi i16 [ %conv3588, %if.then3582 ], [ %mcost.86251, %for.cond3599.preheader ]
  %add3623 = add i16 %x0.26250, 4
  %conv2219 = sext i16 %add3623 to i32
  %cmp2221 = icmp slt i32 %conv2219, %conv176
  br i1 %cmp2221, label %for.body2223, label %for.inc4012

for.body3632:                                     ; preds = %for.inc4006, %for.body3632.lr.ph
  %conv36286264 = phi i32 [ 0, %for.body3632.lr.ph ], [ %conv3628, %for.inc4006 ]
  %mcost.106263 = phi i16 [ %mcost.76271, %for.body3632.lr.ph ], [ %mcost.11, %for.inc4006 ]
  %x0.36262 = phi i16 [ 0, %for.body3632.lr.ph ], [ %add4008, %for.inc4006 ]
  %add3634 = add nsw i32 %conv36286264, %pic_pix_x
  %shl3635 = shl i32 %add3634, 2
  %665 = load i16* %s_mv_x, align 2, !tbaa !4
  %conv36366101 = zext i16 %665 to i32
  %add3637 = add nsw i32 %conv36366101, %shl3635
  %add3643 = add nsw i32 %shl3635, %conv2176
  %666 = load i16** %arrayidx3647, align 8, !tbaa !0
  %idxprom3648 = sext i16 %x0.36262 to i64
  %arrayidx3649 = getelementptr inbounds i16* %666, i64 %idxprom3648
  %667 = load i16* %arrayidx3649, align 2, !tbaa !4
  %conv3650 = zext i16 %667 to i32
  %668 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %sext6103 = shl i32 %add3637, 16
  %conv3652 = ashr exact i32 %sext6103, 16
  %call3653 = call zeroext i16 %668(i16** %49, i32 %conv3651, i32 %conv3652, i32 %54, i32 %53) #7
  %conv3654 = zext i16 %call3653 to i32
  %669 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %sext6105 = shl i32 %add3643, 16
  %conv3656 = ashr exact i32 %sext6105, 16
  %call3657 = call zeroext i16 %669(i16** %52, i32 %conv3655, i32 %conv3656, i32 %54, i32 %53) #7
  %conv3658 = zext i16 %call3657 to i32
  %add3659 = add nsw i32 %conv3658, %conv3654
  %shr3660 = lshr i32 %add3659, 1
  %sub3661 = sub nsw i32 %conv3650, %shr3660
  store i32 %sub3661, i32* %arraydecay2236, align 16, !tbaa !3
  %add36646209 = or i32 %conv36286264, 1
  %idxprom3665 = sext i32 %add36646209 to i64
  %arrayidx3666 = getelementptr inbounds i16* %666, i64 %idxprom3665
  %670 = load i16* %arrayidx3666, align 2, !tbaa !4
  %conv3667 = zext i16 %670 to i32
  %671 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add3670 = add nsw i32 %conv3652, 4
  %call3671 = call zeroext i16 %671(i16** %49, i32 %conv3651, i32 %add3670, i32 %54, i32 %53) #7
  %conv3672 = zext i16 %call3671 to i32
  %672 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add3675 = add nsw i32 %conv3656, 4
  %call3676 = call zeroext i16 %672(i16** %52, i32 %conv3655, i32 %add3675, i32 %54, i32 %53) #7
  %conv3677 = zext i16 %call3676 to i32
  %add3678 = add nsw i32 %conv3677, %conv3672
  %shr3679 = lshr i32 %add3678, 1
  %sub3680 = sub nsw i32 %conv3667, %shr3679
  store i32 %sub3680, i32* %incdec.ptr2314, align 4, !tbaa !3
  %add36836210 = or i32 %conv36286264, 2
  %idxprom3684 = sext i32 %add36836210 to i64
  %arrayidx3685 = getelementptr inbounds i16* %666, i64 %idxprom3684
  %673 = load i16* %arrayidx3685, align 2, !tbaa !4
  %conv3686 = zext i16 %673 to i32
  %674 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add3689 = add nsw i32 %conv3652, 8
  %call3690 = call zeroext i16 %674(i16** %49, i32 %conv3651, i32 %add3689, i32 %54, i32 %53) #7
  %conv3691 = zext i16 %call3690 to i32
  %675 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add3694 = add nsw i32 %conv3656, 8
  %call3695 = call zeroext i16 %675(i16** %52, i32 %conv3655, i32 %add3694, i32 %54, i32 %53) #7
  %conv3696 = zext i16 %call3695 to i32
  %add3697 = add nsw i32 %conv3696, %conv3691
  %shr3698 = lshr i32 %add3697, 1
  %sub3699 = sub nsw i32 %conv3686, %shr3698
  store i32 %sub3699, i32* %incdec.ptr2398, align 8, !tbaa !3
  %add37026211 = or i32 %conv36286264, 3
  %idxprom3703 = sext i32 %add37026211 to i64
  %arrayidx3704 = getelementptr inbounds i16* %666, i64 %idxprom3703
  %676 = load i16* %arrayidx3704, align 2, !tbaa !4
  %conv3705 = zext i16 %676 to i32
  %677 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %add3708 = add nsw i32 %conv3652, 12
  %call3709 = call zeroext i16 %677(i16** %49, i32 %conv3651, i32 %add3708, i32 %54, i32 %53) #7
  %conv3710 = zext i16 %call3709 to i32
  %678 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %add3713 = add nsw i32 %conv3656, 12
  %call3714 = call zeroext i16 %678(i16** %52, i32 %conv3655, i32 %add3713, i32 %54, i32 %53) #7
  %conv3715 = zext i16 %call3714 to i32
  %add3716 = add nsw i32 %conv3715, %conv3710
  %shr3717 = lshr i32 %add3716, 1
  %sub3718 = sub nsw i32 %conv3705, %shr3717
  store i32 %sub3718, i32* %incdec.ptr2482, align 4, !tbaa !3
  %679 = load i16** %arrayidx3729, align 8, !tbaa !0
  %arrayidx3731 = getelementptr inbounds i16* %679, i64 %idxprom3648
  %680 = load i16* %arrayidx3731, align 2, !tbaa !4
  %conv3732 = zext i16 %680 to i32
  %681 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3735 = call zeroext i16 %681(i16** %49, i32 %conv3733, i32 %conv3652, i32 %54, i32 %53) #7
  %conv3736 = zext i16 %call3735 to i32
  %682 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3739 = call zeroext i16 %682(i16** %52, i32 %conv3737, i32 %conv3656, i32 %54, i32 %53) #7
  %conv3740 = zext i16 %call3739 to i32
  %add3741 = add nsw i32 %conv3740, %conv3736
  %shr3742 = lshr i32 %add3741, 1
  %sub3743 = sub nsw i32 %conv3732, %shr3742
  store i32 %sub3743, i32* %incdec.ptr2566, align 16, !tbaa !3
  %arrayidx3748 = getelementptr inbounds i16* %679, i64 %idxprom3665
  %683 = load i16* %arrayidx3748, align 2, !tbaa !4
  %conv3749 = zext i16 %683 to i32
  %684 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3753 = call zeroext i16 %684(i16** %49, i32 %conv3733, i32 %add3670, i32 %54, i32 %53) #7
  %conv3754 = zext i16 %call3753 to i32
  %685 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3758 = call zeroext i16 %685(i16** %52, i32 %conv3737, i32 %add3675, i32 %54, i32 %53) #7
  %conv3759 = zext i16 %call3758 to i32
  %add3760 = add nsw i32 %conv3759, %conv3754
  %shr3761 = lshr i32 %add3760, 1
  %sub3762 = sub nsw i32 %conv3749, %shr3761
  store i32 %sub3762, i32* %incdec.ptr2652, align 4, !tbaa !3
  %arrayidx3767 = getelementptr inbounds i16* %679, i64 %idxprom3684
  %686 = load i16* %arrayidx3767, align 2, !tbaa !4
  %conv3768 = zext i16 %686 to i32
  %687 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3772 = call zeroext i16 %687(i16** %49, i32 %conv3733, i32 %add3689, i32 %54, i32 %53) #7
  %conv3773 = zext i16 %call3772 to i32
  %688 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3777 = call zeroext i16 %688(i16** %52, i32 %conv3737, i32 %add3694, i32 %54, i32 %53) #7
  %conv3778 = zext i16 %call3777 to i32
  %add3779 = add nsw i32 %conv3778, %conv3773
  %shr3780 = lshr i32 %add3779, 1
  %sub3781 = sub nsw i32 %conv3768, %shr3780
  store i32 %sub3781, i32* %incdec.ptr2736, align 8, !tbaa !3
  %arrayidx3786 = getelementptr inbounds i16* %679, i64 %idxprom3703
  %689 = load i16* %arrayidx3786, align 2, !tbaa !4
  %conv3787 = zext i16 %689 to i32
  %690 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3791 = call zeroext i16 %690(i16** %49, i32 %conv3733, i32 %add3708, i32 %54, i32 %53) #7
  %conv3792 = zext i16 %call3791 to i32
  %691 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3796 = call zeroext i16 %691(i16** %52, i32 %conv3737, i32 %add3713, i32 %54, i32 %53) #7
  %conv3797 = zext i16 %call3796 to i32
  %add3798 = add nsw i32 %conv3797, %conv3792
  %shr3799 = lshr i32 %add3798, 1
  %sub3800 = sub nsw i32 %conv3787, %shr3799
  store i32 %sub3800, i32* %incdec.ptr2820, align 4, !tbaa !3
  %692 = load i16** %arrayidx3811, align 8, !tbaa !0
  %arrayidx3813 = getelementptr inbounds i16* %692, i64 %idxprom3648
  %693 = load i16* %arrayidx3813, align 2, !tbaa !4
  %conv3814 = zext i16 %693 to i32
  %694 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3817 = call zeroext i16 %694(i16** %49, i32 %conv3815, i32 %conv3652, i32 %54, i32 %53) #7
  %conv3818 = zext i16 %call3817 to i32
  %695 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3821 = call zeroext i16 %695(i16** %52, i32 %conv3819, i32 %conv3656, i32 %54, i32 %53) #7
  %conv3822 = zext i16 %call3821 to i32
  %add3823 = add nsw i32 %conv3822, %conv3818
  %shr3824 = lshr i32 %add3823, 1
  %sub3825 = sub nsw i32 %conv3814, %shr3824
  store i32 %sub3825, i32* %incdec.ptr2904, align 16, !tbaa !3
  %arrayidx3830 = getelementptr inbounds i16* %692, i64 %idxprom3665
  %696 = load i16* %arrayidx3830, align 2, !tbaa !4
  %conv3831 = zext i16 %696 to i32
  %697 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3835 = call zeroext i16 %697(i16** %49, i32 %conv3815, i32 %add3670, i32 %54, i32 %53) #7
  %conv3836 = zext i16 %call3835 to i32
  %698 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3840 = call zeroext i16 %698(i16** %52, i32 %conv3819, i32 %add3675, i32 %54, i32 %53) #7
  %conv3841 = zext i16 %call3840 to i32
  %add3842 = add nsw i32 %conv3841, %conv3836
  %shr3843 = lshr i32 %add3842, 1
  %sub3844 = sub nsw i32 %conv3831, %shr3843
  store i32 %sub3844, i32* %incdec.ptr2990, align 4, !tbaa !3
  %arrayidx3849 = getelementptr inbounds i16* %692, i64 %idxprom3684
  %699 = load i16* %arrayidx3849, align 2, !tbaa !4
  %conv3850 = zext i16 %699 to i32
  %700 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3854 = call zeroext i16 %700(i16** %49, i32 %conv3815, i32 %add3689, i32 %54, i32 %53) #7
  %conv3855 = zext i16 %call3854 to i32
  %701 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3859 = call zeroext i16 %701(i16** %52, i32 %conv3819, i32 %add3694, i32 %54, i32 %53) #7
  %conv3860 = zext i16 %call3859 to i32
  %add3861 = add nsw i32 %conv3860, %conv3855
  %shr3862 = lshr i32 %add3861, 1
  %sub3863 = sub nsw i32 %conv3850, %shr3862
  store i32 %sub3863, i32* %incdec.ptr3074, align 8, !tbaa !3
  %arrayidx3868 = getelementptr inbounds i16* %692, i64 %idxprom3703
  %702 = load i16* %arrayidx3868, align 2, !tbaa !4
  %conv3869 = zext i16 %702 to i32
  %703 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3873 = call zeroext i16 %703(i16** %49, i32 %conv3815, i32 %add3708, i32 %54, i32 %53) #7
  %conv3874 = zext i16 %call3873 to i32
  %704 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3878 = call zeroext i16 %704(i16** %52, i32 %conv3819, i32 %add3713, i32 %54, i32 %53) #7
  %conv3879 = zext i16 %call3878 to i32
  %add3880 = add nsw i32 %conv3879, %conv3874
  %shr3881 = lshr i32 %add3880, 1
  %sub3882 = sub nsw i32 %conv3869, %shr3881
  store i32 %sub3882, i32* %incdec.ptr3158, align 4, !tbaa !3
  %705 = load i16** %arrayidx3893, align 8, !tbaa !0
  %arrayidx3895 = getelementptr inbounds i16* %705, i64 %idxprom3648
  %706 = load i16* %arrayidx3895, align 2, !tbaa !4
  %conv3896 = zext i16 %706 to i32
  %707 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3899 = call zeroext i16 %707(i16** %49, i32 %conv3897, i32 %conv3652, i32 %54, i32 %53) #7
  %conv3900 = zext i16 %call3899 to i32
  %708 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3903 = call zeroext i16 %708(i16** %52, i32 %conv3901, i32 %conv3656, i32 %54, i32 %53) #7
  %conv3904 = zext i16 %call3903 to i32
  %add3905 = add nsw i32 %conv3904, %conv3900
  %shr3906 = lshr i32 %add3905, 1
  %sub3907 = sub nsw i32 %conv3896, %shr3906
  store i32 %sub3907, i32* %incdec.ptr3242, align 16, !tbaa !3
  %arrayidx3912 = getelementptr inbounds i16* %705, i64 %idxprom3665
  %709 = load i16* %arrayidx3912, align 2, !tbaa !4
  %conv3913 = zext i16 %709 to i32
  %710 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3917 = call zeroext i16 %710(i16** %49, i32 %conv3897, i32 %add3670, i32 %54, i32 %53) #7
  %conv3918 = zext i16 %call3917 to i32
  %711 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3922 = call zeroext i16 %711(i16** %52, i32 %conv3901, i32 %add3675, i32 %54, i32 %53) #7
  %conv3923 = zext i16 %call3922 to i32
  %add3924 = add nsw i32 %conv3923, %conv3918
  %shr3925 = lshr i32 %add3924, 1
  %sub3926 = sub nsw i32 %conv3913, %shr3925
  store i32 %sub3926, i32* %incdec.ptr3328, align 4, !tbaa !3
  %arrayidx3931 = getelementptr inbounds i16* %705, i64 %idxprom3684
  %712 = load i16* %arrayidx3931, align 2, !tbaa !4
  %conv3932 = zext i16 %712 to i32
  %713 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3936 = call zeroext i16 %713(i16** %49, i32 %conv3897, i32 %add3689, i32 %54, i32 %53) #7
  %conv3937 = zext i16 %call3936 to i32
  %714 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3941 = call zeroext i16 %714(i16** %52, i32 %conv3901, i32 %add3694, i32 %54, i32 %53) #7
  %conv3942 = zext i16 %call3941 to i32
  %add3943 = add nsw i32 %conv3942, %conv3937
  %shr3944 = lshr i32 %add3943, 1
  %sub3945 = sub nsw i32 %conv3932, %shr3944
  store i32 %sub3945, i32* %incdec.ptr3412, align 8, !tbaa !3
  %arrayidx3950 = getelementptr inbounds i16* %705, i64 %idxprom3703
  %715 = load i16* %arrayidx3950, align 2, !tbaa !4
  %conv3951 = zext i16 %715 to i32
  %716 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14b, align 8, !tbaa !0
  %call3955 = call zeroext i16 %716(i16** %49, i32 %conv3897, i32 %add3708, i32 %54, i32 %53) #7
  %conv3956 = zext i16 %call3955 to i32
  %717 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !tbaa !0
  %call3960 = call zeroext i16 %717(i16** %52, i32 %conv3901, i32 %add3713, i32 %54, i32 %53) #7
  %conv3961 = zext i16 %call3960 to i32
  %add3962 = add nsw i32 %conv3961, %conv3956
  %shr3963 = lshr i32 %add3962, 1
  %sub3964 = sub nsw i32 %conv3951, %shr3963
  store i32 %sub3964, i32* %incdec.ptr3496, align 4, !tbaa !3
  %718 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x83965 = getelementptr inbounds %struct.InputParameters* %718, i64 0, i32 123
  %719 = load i32* %AllowTransform8x83965, align 4, !tbaa !3
  %tobool3966 = icmp eq i32 %719, 0
  br i1 %tobool3966, label %if.then3967, label %for.cond3980.preheader

for.cond3980.preheader:                           ; preds = %for.body3632
  %720 = sext i32 %conv36286264 to i64
  br label %for.cond3984.preheader

if.then3967:                                      ; preds = %for.body3632
  %hadamard3969 = getelementptr inbounds %struct.InputParameters* %718, i64 0, i32 6
  %721 = load i32* %hadamard3969, align 4, !tbaa !3
  %call3970 = call i32 @SATD(i32* %arraydecay2236, i32 %721) #8
  %conv39716115 = zext i16 %mcost.106263 to i32
  %add3972 = add nsw i32 %call3970, %conv39716115
  %conv3973 = trunc i32 %add3972 to i16
  %sext6116 = shl i32 %add3972, 16
  %conv3974 = ashr exact i32 %sext6116, 16
  %cmp3975 = icmp sgt i32 %conv3974, %min_mcost.addr.36278
  br i1 %cmp3975, label %for.end4016, label %for.inc4006

for.cond3984.preheader:                           ; preds = %for.cond3984.preheader, %for.cond3980.preheader
  %indvars.iv6340 = phi i64 [ 0, %for.cond3980.preheader ], [ %indvars.iv.next6341, %for.cond3984.preheader ]
  %722 = trunc i64 %indvars.iv6340 to i32
  %723 = add i32 %conv21956272, %722
  %724 = sext i32 %723 to i64
  %725 = shl nsw i64 %724, 4
  %scevgep6335.sum = add i64 %720, %725
  %scevgep6336 = getelementptr [16 x [16 x i32]]* %curr_diff, i64 0, i64 0, i64 %scevgep6335.sum
  %scevgep63366337 = bitcast i32* %scevgep6336 to i8*
  %726 = shl i64 %indvars.iv6340, 2
  %scevgep6338 = getelementptr [16 x i32]* %diff, i64 0, i64 %726
  %scevgep63386339 = bitcast i32* %scevgep6338 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep63366337, i8* %scevgep63386339, i64 16, i32 4, i1 false)
  %indvars.iv.next6341 = add i64 %indvars.iv6340, 1
  %lftr.wideiv6344 = trunc i64 %indvars.iv.next6341 to i32
  %exitcond6345 = icmp eq i32 %lftr.wideiv6344, 4
  br i1 %exitcond6345, label %for.inc4006, label %for.cond3984.preheader

for.inc4006:                                      ; preds = %for.cond3984.preheader, %if.then3967
  %mcost.11 = phi i16 [ %conv3973, %if.then3967 ], [ %mcost.106263, %for.cond3984.preheader ]
  %add4008 = add i16 %x0.36262, 4
  %conv3628 = sext i16 %add4008 to i32
  %cmp3630 = icmp slt i32 %conv3628, %conv176
  br i1 %cmp3630, label %for.body3632, label %for.inc4012

for.inc4012:                                      ; preds = %for.cond3627.preheader, %for.inc4006, %for.cond2218.preheader, %for.inc3621
  %727 = phi %struct.InputParameters* [ %409, %for.cond2218.preheader ], [ %656, %for.inc3621 ], [ %409, %for.cond3627.preheader ], [ %718, %for.inc4006 ]
  %mcost.12 = phi i16 [ %mcost.76271, %for.cond2218.preheader ], [ %mcost.9, %for.inc3621 ], [ %mcost.76271, %for.cond3627.preheader ], [ %mcost.11, %for.inc4006 ]
  %add4014 = add i16 %y0.16269, 4
  %conv2195 = sext i16 %add4014 to i32
  %cmp2197 = icmp slt i32 %conv2195, %conv181
  br i1 %cmp2197, label %for.body2203, label %for.end4016

for.end4016:                                      ; preds = %if.then3967, %if.then3582, %for.inc4012, %for.body2165
  %728 = phi %struct.InputParameters* [ %400, %for.body2165 ], [ %727, %for.inc4012 ], [ %656, %if.then3582 ], [ %718, %if.then3967 ]
  %mcost.7.lcssa = phi i16 [ %conv2193, %for.body2165 ], [ %mcost.12, %for.inc4012 ], [ %conv3588, %if.then3582 ], [ %conv3973, %if.then3967 ]
  %AllowTransform8x84017 = getelementptr inbounds %struct.InputParameters* %728, i64 0, i32 123
  %729 = load i32* %AllowTransform8x84017, align 4, !tbaa !3
  %tobool4018 = icmp eq i32 %729, 0
  br i1 %tobool4018, label %if.end4026, label %if.then4019

if.then4019:                                      ; preds = %for.end4016
  %hadamard4021 = getelementptr inbounds %struct.InputParameters* %728, i64 0, i32 6
  %730 = load i32* %hadamard4021, align 4, !tbaa !3
  %call4022 = call i32 @find_SATD([16 x i32]* %arraydecay4020, i32 %730, i32 %blocktype) #8
  %conv40236099 = zext i16 %mcost.7.lcssa to i32
  %add4024 = add nsw i32 %call4022, %conv40236099
  %conv4025 = trunc i32 %add4024 to i16
  br label %if.end4026

if.end4026:                                       ; preds = %for.end4016, %if.then4019
  %mcost.13 = phi i16 [ %conv4025, %if.then4019 ], [ %mcost.7.lcssa, %for.end4016 ]
  %conv4027 = sext i16 %mcost.13 to i32
  %cmp4028 = icmp slt i32 %conv4027, %min_mcost.addr.36278
  %pos.1.best_pos.2 = select i1 %cmp4028, i16 %pos.16277, i16 %best_pos.26276
  %conv4027.min_mcost.addr.3 = select i1 %cmp4028, i32 %conv4027, i32 %min_mcost.addr.36278
  %inc4034 = add i16 %pos.16277, 1
  %conv2162 = sext i16 %inc4034 to i32
  %cmp2163 = icmp slt i32 %conv2162, %search_pos4
  br i1 %cmp2163, label %if.end4026.for.body2165_crit_edge, label %for.end4035

if.end4026.for.body2165_crit_edge:                ; preds = %if.end4026
  %.pre = load i16* %mv_x, align 2, !tbaa !4
  br label %for.body2165

for.end4035:                                      ; preds = %if.end4026
  %tobool4036 = icmp eq i16 %pos.1.best_pos.2, 0
  br i1 %tobool4036, label %if.end4048, label %if.then4037

if.then4037:                                      ; preds = %for.end4035
  %idxprom4038 = sext i16 %pos.1.best_pos.2 to i64
  %731 = load i32** @spiral_search_x, align 8, !tbaa !0
  %arrayidx4039 = getelementptr inbounds i32* %731, i64 %idxprom4038
  %732 = load i32* %arrayidx4039, align 4, !tbaa !3
  %733 = load i16* %mv_x, align 2, !tbaa !4
  %conv40406092 = zext i16 %733 to i32
  %add4041 = add nsw i32 %conv40406092, %732
  %conv4042 = trunc i32 %add4041 to i16
  store i16 %conv4042, i16* %mv_x, align 2, !tbaa !4
  %734 = load i32** @spiral_search_y, align 8, !tbaa !0
  %arrayidx4044 = getelementptr inbounds i32* %734, i64 %idxprom4038
  %735 = load i32* %arrayidx4044, align 4, !tbaa !3
  %736 = load i16* %mv_y, align 2, !tbaa !4
  %conv40456093 = zext i16 %736 to i32
  %add4046 = add nsw i32 %conv40456093, %735
  %conv4047 = trunc i32 %add4046 to i16
  store i16 %conv4047, i16* %mv_y, align 2, !tbaa !4
  br label %if.end4048

if.end4048:                                       ; preds = %if.end2159, %for.end4035, %if.then4037
  %min_mcost.addr.3.lcssa6401 = phi i32 [ %conv4027.min_mcost.addr.3, %for.end4035 ], [ %conv4027.min_mcost.addr.3, %if.then4037 ], [ %min_mcost.addr.0., %if.end2159 ]
  call void @llvm.lifetime.end(i64 64, i8* %1) #3
  call void @llvm.lifetime.end(i64 1024, i8* %0) #3
  ret i32 %min_mcost.addr.3.lcssa6401
}

; Function Attrs: nounwind optsize uwtable
define i32 @BPredPartitionCost(i32 %blocktype, i32 %block8x8, i16 signext %fw_ref, i16 signext %bw_ref, i32 %lambda_factor, i32 %list) #0 {
entry:
  %diff = alloca [64 x i32], align 16
  %curr_blk = alloca [16 x [16 x i32]], align 16
  %0 = bitcast [64 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #3
  %1 = bitcast [16 x [16 x i32]]* %curr_blk to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #3
  %idxprom = sext i32 %blocktype to i64
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 20, i64 %idxprom, i64 0
  %3 = load i32* %arrayidx1, align 4, !tbaa !3
  %cmp = icmp slt i32 %3, 8
  %. = select i1 %cmp, i32 %3, i32 8
  %arrayidx9 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 20, i64 %idxprom, i64 1
  %4 = load i32* %arrayidx9, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %4, 8
  %cond18 = select i1 %cmp10, i32 %4, i32 8
  %cmp19 = icmp slt i32 %blocktype, 4
  %idxprom24 = select i1 %cmp19, i64 %idxprom, i64 4
  %arrayidx26 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 21, i64 %idxprom24, i64 0
  %5 = load i32* %arrayidx26, align 4, !tbaa !3
  %arrayidx30 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 21, i64 %idxprom24, i64 1
  %6 = load i32* %arrayidx30, align 4, !tbaa !3
  %tobool = icmp eq i32 %list, 0
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 72
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 73
  %cond42.in = select i1 %tobool, i16******* %bipred_mv2, i16******* %bipred_mv1
  %cond42 = load i16******* %cond42.in, align 8
  %pred_mv = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 70
  %8 = load i16******* %pred_mv, align 8, !tbaa !0
  %idxprom43 = sext i32 %block8x8 to i64
  %arrayidx46 = getelementptr inbounds [5 x [4 x i32]]* @PartitionMotionSearch.by0, i64 0, i64 %idxprom24, i64 %idxprom43
  %9 = load i32* %arrayidx46, align 4, !tbaa !3
  %cmp51450 = icmp sgt i32 %6, 0
  br i1 %cmp51450, label %for.body.lr.ph, label %entry.for.end169_crit_edge

entry.for.end169_crit_edge:                       ; preds = %entry
  %add179437.pre = add nsw i32 %9, %6
  br label %for.end169

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx38 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 21, i64 %idxprom, i64 1
  %arrayidx34 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 21, i64 %idxprom, i64 0
  %10 = load i32* %arrayidx38, align 4, !tbaa !3
  %11 = load i32* %arrayidx34, align 4, !tbaa !3
  %arrayidx55 = getelementptr inbounds [5 x [4 x i32]]* @PartitionMotionSearch.bx0, i64 0, i64 %idxprom24, i64 %idxprom43
  %12 = load i32* %arrayidx55, align 4, !tbaa !3
  %cmp62445 = icmp sgt i32 %5, 0
  %add = add nsw i32 %9, %6
  %idxprom65 = sext i16 %fw_ref to i64
  %13 = load i32** @mvbits, align 8, !tbaa !0
  %idxprom115 = sext i16 %bw_ref to i64
  %14 = sext i32 %12 to i64
  %15 = sext i32 %11 to i64
  %16 = sext i32 %9 to i64
  %17 = sext i32 %10 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc167
  %indvars.iv493 = phi i64 [ %16, %for.body.lr.ph ], [ %indvars.iv.next494, %for.inc167 ]
  %mvd_bits.0451 = phi i32 [ 0, %for.body.lr.ph ], [ %mvd_bits.1.lcssa, %for.inc167 ]
  br i1 %cmp62445, label %for.body63.lr.ph, label %for.inc167

for.body63.lr.ph:                                 ; preds = %for.body
  %add61 = add nsw i32 %12, %5
  br label %for.body63

for.body63:                                       ; preds = %for.body63.lr.ph, %for.body63
  %indvars.iv491 = phi i64 [ %14, %for.body63.lr.ph ], [ %indvars.iv.next492, %for.body63 ]
  %mvd_bits.1446 = phi i32 [ %mvd_bits.0451, %for.body63.lr.ph ], [ %add165, %for.body63 ]
  %arrayidx68 = getelementptr inbounds i16****** %cond42, i64 %indvars.iv491
  %18 = load i16****** %arrayidx68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds i16***** %18, i64 %indvars.iv493
  %19 = load i16***** %arrayidx69, align 8, !tbaa !0
  %20 = load i16**** %19, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds i16*** %20, i64 %idxprom65
  %21 = load i16*** %arrayidx71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds i16** %21, i64 %idxprom
  %22 = load i16** %arrayidx72, align 8, !tbaa !0
  %23 = load i16* %22, align 2, !tbaa !4
  %conv = sext i16 %23 to i64
  %arrayidx78 = getelementptr inbounds i16****** %8, i64 %indvars.iv491
  %24 = load i16****** %arrayidx78, align 8, !tbaa !0
  %arrayidx79 = getelementptr inbounds i16***** %24, i64 %indvars.iv493
  %25 = load i16***** %arrayidx79, align 8, !tbaa !0
  %26 = load i16**** %25, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds i16*** %26, i64 %idxprom65
  %27 = load i16*** %arrayidx81, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds i16** %27, i64 %idxprom
  %28 = load i16** %arrayidx82, align 8, !tbaa !0
  %29 = load i16* %28, align 2, !tbaa !4
  %conv84 = sext i16 %29 to i64
  %sub = sub i64 %conv, %conv84
  %arrayidx86 = getelementptr inbounds i32* %13, i64 %sub
  %30 = load i32* %arrayidx86, align 4, !tbaa !3
  %add87 = add nsw i32 %30, %mvd_bits.1446
  %arrayidx97 = getelementptr inbounds i16* %22, i64 1
  %31 = load i16* %arrayidx97, align 2, !tbaa !4
  %conv98 = sext i16 %31 to i64
  %arrayidx108 = getelementptr inbounds i16* %28, i64 1
  %32 = load i16* %arrayidx108, align 2, !tbaa !4
  %conv109 = sext i16 %32 to i64
  %sub110 = sub i64 %conv98, %conv109
  %arrayidx112 = getelementptr inbounds i32* %13, i64 %sub110
  %33 = load i32* %arrayidx112, align 4, !tbaa !3
  %add113 = add nsw i32 %add87, %33
  %arrayidx120 = getelementptr inbounds i16**** %19, i64 1
  %34 = load i16**** %arrayidx120, align 8, !tbaa !0
  %arrayidx121 = getelementptr inbounds i16*** %34, i64 %idxprom115
  %35 = load i16*** %arrayidx121, align 8, !tbaa !0
  %arrayidx122 = getelementptr inbounds i16** %35, i64 %idxprom
  %36 = load i16** %arrayidx122, align 8, !tbaa !0
  %37 = load i16* %36, align 2, !tbaa !4
  %conv124 = sext i16 %37 to i64
  %arrayidx131 = getelementptr inbounds i16**** %25, i64 1
  %38 = load i16**** %arrayidx131, align 8, !tbaa !0
  %arrayidx132 = getelementptr inbounds i16*** %38, i64 %idxprom115
  %39 = load i16*** %arrayidx132, align 8, !tbaa !0
  %arrayidx133 = getelementptr inbounds i16** %39, i64 %idxprom
  %40 = load i16** %arrayidx133, align 8, !tbaa !0
  %41 = load i16* %40, align 2, !tbaa !4
  %conv135 = sext i16 %41 to i64
  %sub136 = sub i64 %conv124, %conv135
  %arrayidx138 = getelementptr inbounds i32* %13, i64 %sub136
  %42 = load i32* %arrayidx138, align 4, !tbaa !3
  %add139 = add nsw i32 %add113, %42
  %arrayidx149 = getelementptr inbounds i16* %36, i64 1
  %43 = load i16* %arrayidx149, align 2, !tbaa !4
  %conv150 = sext i16 %43 to i64
  %arrayidx160 = getelementptr inbounds i16* %40, i64 1
  %44 = load i16* %arrayidx160, align 2, !tbaa !4
  %conv161 = sext i16 %44 to i64
  %sub162 = sub i64 %conv150, %conv161
  %arrayidx164 = getelementptr inbounds i32* %13, i64 %sub162
  %45 = load i32* %arrayidx164, align 4, !tbaa !3
  %add165 = add nsw i32 %add139, %45
  %indvars.iv.next492 = add i64 %indvars.iv491, %15
  %46 = trunc i64 %indvars.iv.next492 to i32
  %cmp62 = icmp slt i32 %46, %add61
  br i1 %cmp62, label %for.body63, label %for.inc167

for.inc167:                                       ; preds = %for.body63, %for.body
  %mvd_bits.1.lcssa = phi i32 [ %mvd_bits.0451, %for.body ], [ %add165, %for.body63 ]
  %indvars.iv.next494 = add i64 %indvars.iv493, %17
  %47 = trunc i64 %indvars.iv.next494 to i32
  %cmp51 = icmp slt i32 %47, %add
  br i1 %cmp51, label %for.body, label %for.end169

for.end169:                                       ; preds = %for.inc167, %entry.for.end169_crit_edge
  %add179437.pre-phi = phi i32 [ %add179437.pre, %entry.for.end169_crit_edge ], [ %add, %for.inc167 ]
  %mvd_bits.0.lcssa = phi i32 [ 0, %entry.for.end169_crit_edge ], [ %mvd_bits.1.lcssa, %for.inc167 ]
  %mul = mul nsw i32 %mvd_bits.0.lcssa, %lambda_factor
  %shr = ashr i32 %mul, 16
  %cmp180438 = icmp slt i32 %9, %add179437.pre-phi
  br i1 %cmp180438, label %for.body182.lr.ph, label %for.end247

for.body182.lr.ph:                                ; preds = %for.end169
  %arrayidx187 = getelementptr inbounds [5 x [4 x i32]]* @PartitionMotionSearch.bx0, i64 0, i64 %idxprom24, i64 %idxprom43
  %48 = load i32* %arrayidx187, align 4, !tbaa !3
  %cmp194432 = icmp sgt i32 %5, 0
  %cmp237 = icmp sgt i32 %blocktype, 4
  %arraydecay = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 0
  %49 = sext i32 %48 to i64
  %50 = sext i32 %9 to i64
  br label %for.body182

for.body182:                                      ; preds = %for.body182.lr.ph, %for.inc244
  %51 = phi %struct.ImageParameters* [ %7, %for.body182.lr.ph ], [ %77, %for.inc244 ]
  %52 = phi %struct.InputParameters* [ %2, %for.body182.lr.ph ], [ %78, %for.inc244 ]
  %indvars.iv489 = phi i64 [ 0, %for.body182.lr.ph ], [ %indvars.iv.next490, %for.inc244 ]
  %indvars.iv487 = phi i64 [ %50, %for.body182.lr.ph ], [ %indvars.iv.next488, %for.inc244 ]
  %mcost.0441 = phi i32 [ %shr, %for.body182.lr.ph ], [ %mcost.1.lcssa, %for.inc244 ]
  %53 = trunc i64 %indvars.iv487 to i32
  %shl = shl i32 %53, 2
  br i1 %cmp194432, label %for.body196.lr.ph, label %for.inc244

for.body196.lr.ph:                                ; preds = %for.body182
  %opix_y = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 38
  %54 = load i32* %opix_y, align 4, !tbaa !3
  %add183 = add nsw i32 %54, %shl
  %add193 = add nsw i32 %48, %5
  %55 = sext i32 %shl to i64
  %56 = sext i32 %add183 to i64
  br label %for.body196

for.body196:                                      ; preds = %for.body196.lr.ph, %for.inc240
  %57 = phi %struct.ImageParameters* [ %51, %for.body196.lr.ph ], [ %61, %for.inc240 ]
  %indvars.iv485 = phi i64 [ 0, %for.body196.lr.ph ], [ %indvars.iv.next486, %for.inc240 ]
  %indvars.iv483 = phi i64 [ %49, %for.body196.lr.ph ], [ %indvars.iv.next484, %for.inc240 ]
  %mcost.1434 = phi i32 [ %mcost.0441, %for.body196.lr.ph ], [ %mcost.2, %for.inc240 ]
  %opix_x = getelementptr inbounds %struct.ImageParameters* %57, i64 0, i32 37
  %58 = load i32* %opix_x, align 4, !tbaa !3
  %59 = trunc i64 %indvars.iv483 to i32
  %shl197 = shl i32 %59, 2
  %add198 = add nsw i32 %58, %shl197
  call void @LumaPrediction4x4Bi(i32 %shl197, i32 %shl, i32 2, i32 %blocktype, i32 %blocktype, i16 signext %fw_ref, i16 signext %bw_ref, i32 %list) #7
  %60 = load i16*** @imgY_org, align 8, !tbaa !0
  %61 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %62 = sext i32 %shl197 to i64
  %63 = sext i32 %add198 to i64
  br label %for.cond203.preheader

for.cond203.preheader:                            ; preds = %for.inc233, %for.body196
  %indvars.iv479 = phi i64 [ 0, %for.body196 ], [ %indvars.iv.next480, %for.inc233 ]
  %indvars.iv474 = phi i64 [ 0, %for.body196 ], [ %indvars.iv.next475, %for.inc233 ]
  %64 = add nsw i64 %56, %indvars.iv474
  %arrayidx211 = getelementptr inbounds i16** %60, i64 %64
  %65 = load i16** %arrayidx211, align 8, !tbaa !0
  %66 = add nsw i64 %indvars.iv474, %55
  %67 = add nsw i64 %indvars.iv474, %indvars.iv489
  br label %for.body206

for.body206:                                      ; preds = %for.body206, %for.cond203.preheader
  %indvars.iv470 = phi i64 [ %indvars.iv479, %for.cond203.preheader ], [ %indvars.iv.next471, %for.body206 ]
  %indvars.iv = phi i64 [ 0, %for.cond203.preheader ], [ %indvars.iv.next, %for.body206 ]
  %68 = add nsw i64 %63, %indvars.iv
  %arrayidx212 = getelementptr inbounds i16* %65, i64 %68
  %69 = load i16* %arrayidx212, align 2, !tbaa !4
  %conv213 = zext i16 %69 to i32
  %70 = add nsw i64 %indvars.iv, %62
  %arrayidx219 = getelementptr inbounds %struct.ImageParameters* %61, i64 0, i32 45, i64 %70, i64 %66
  %71 = load i16* %arrayidx219, align 2, !tbaa !4
  %conv220 = zext i16 %71 to i32
  %sub221 = sub nsw i32 %conv213, %conv220
  %72 = add nsw i64 %indvars.iv, %indvars.iv485
  %arrayidx227 = getelementptr inbounds [16 x [16 x i32]]* %curr_blk, i64 0, i64 %67, i64 %72
  store i32 %sub221, i32* %arrayidx227, align 4, !tbaa !3
  %arrayidx229 = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 %indvars.iv470
  store i32 %sub221, i32* %arrayidx229, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next471 = add i64 %indvars.iv470, 1
  %lftr.wideiv472 = trunc i64 %indvars.iv.next to i32
  %exitcond473 = icmp eq i32 %lftr.wideiv472, 4
  br i1 %exitcond473, label %for.inc233, label %for.body206

for.inc233:                                       ; preds = %for.body206
  %indvars.iv.next480 = add i64 %indvars.iv479, 4
  %indvars.iv.next475 = add i64 %indvars.iv474, 1
  %lftr.wideiv481 = trunc i64 %indvars.iv.next475 to i32
  %exitcond482 = icmp eq i32 %lftr.wideiv481, 4
  br i1 %exitcond482, label %for.end235, label %for.cond203.preheader

for.end235:                                       ; preds = %for.inc233
  %73 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 123
  %74 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool236 = icmp eq i32 %74, 0
  %or.cond = or i1 %tobool236, %cmp237
  br i1 %or.cond, label %if.then, label %for.inc240

if.then:                                          ; preds = %for.end235
  %hadamard = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 6
  %75 = load i32* %hadamard, align 4, !tbaa !3
  %call = call i32 @SATD(i32* %arraydecay, i32 %75) #8
  %add239 = add nsw i32 %call, %mcost.1434
  br label %for.inc240

for.inc240:                                       ; preds = %for.end235, %if.then
  %mcost.2 = phi i32 [ %add239, %if.then ], [ %mcost.1434, %for.end235 ]
  %indvars.iv.next486 = add i64 %indvars.iv485, 4
  %indvars.iv.next484 = add i64 %indvars.iv483, 1
  %76 = trunc i64 %indvars.iv.next484 to i32
  %cmp194 = icmp slt i32 %76, %add193
  br i1 %cmp194, label %for.body196, label %for.inc244

for.inc244:                                       ; preds = %for.inc240, %for.body182
  %77 = phi %struct.ImageParameters* [ %51, %for.body182 ], [ %61, %for.inc240 ]
  %78 = phi %struct.InputParameters* [ %52, %for.body182 ], [ %73, %for.inc240 ]
  %mcost.1.lcssa = phi i32 [ %mcost.0441, %for.body182 ], [ %mcost.2, %for.inc240 ]
  %indvars.iv.next490 = add i64 %indvars.iv489, 4
  %indvars.iv.next488 = add i64 %indvars.iv487, 1
  %79 = trunc i64 %indvars.iv.next488 to i32
  %cmp180 = icmp slt i32 %79, %add179437.pre-phi
  br i1 %cmp180, label %for.body182, label %for.end247

for.end247:                                       ; preds = %for.inc244, %for.end169
  %80 = phi %struct.InputParameters* [ %2, %for.end169 ], [ %78, %for.inc244 ]
  %mcost.0.lcssa = phi i32 [ %shr, %for.end169 ], [ %mcost.1.lcssa, %for.inc244 ]
  %AllowTransform8x8248 = getelementptr inbounds %struct.InputParameters* %80, i64 0, i32 123
  %81 = load i32* %AllowTransform8x8248, align 4, !tbaa !3
  %tobool249 = icmp ne i32 %81, 0
  %cmp250 = icmp slt i32 %blocktype, 5
  %or.cond413 = and i1 %tobool249, %cmp250
  br i1 %or.cond413, label %for.cond253.preheader, label %if.end302

for.cond253.preheader:                            ; preds = %for.end247
  %arrayidx257422 = getelementptr inbounds %struct.InputParameters* %80, i64 0, i32 20, i64 %idxprom24, i64 1
  %82 = load i32* %arrayidx257422, align 4, !tbaa !3
  %cmp258423 = icmp sgt i32 %82, 0
  br i1 %cmp258423, label %for.cond261.preheader.lr.ph, label %if.end302

for.cond261.preheader.lr.ph:                      ; preds = %for.cond253.preheader
  %arraydecay292 = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 0
  %83 = icmp slt i32 %3, 8
  %84 = sext i32 %3 to i64
  %85 = select i1 %83, i64 %84, i64 8
  %86 = icmp slt i32 %4, 8
  %87 = sext i32 %4 to i64
  %88 = select i1 %86, i64 %87, i64 8
  %arrayidx265418.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %80, i64 0, i32 20, i64 %idxprom24, i64 0
  %.pre495 = load i32* %arrayidx265418.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond261.preheader

for.cond261.preheader:                            ; preds = %for.cond261.preheader.lr.ph, %for.inc299
  %89 = phi i32 [ %.pre495, %for.cond261.preheader.lr.ph ], [ %98, %for.inc299 ]
  %90 = phi i32 [ %82, %for.cond261.preheader.lr.ph ], [ %99, %for.inc299 ]
  %indvar462 = phi i64 [ 0, %for.cond261.preheader.lr.ph ], [ %indvar.next463, %for.inc299 ]
  %mcost.3425 = phi i32 [ %mcost.0.lcssa, %for.cond261.preheader.lr.ph ], [ %mcost.4.lcssa, %for.inc299 ]
  %byy.1424 = phi i32 [ 0, %for.cond261.preheader.lr.ph ], [ %add300, %for.inc299 ]
  %91 = mul i64 %88, %indvar462
  %cmp266419 = icmp sgt i32 %89, 0
  br i1 %cmp266419, label %for.cond269.preheader, label %for.inc299

for.cond269.preheader:                            ; preds = %for.cond261.preheader, %for.end291
  %indvar459 = phi i64 [ %indvar.next460, %for.end291 ], [ 0, %for.cond261.preheader ]
  %mcost.4421 = phi i32 [ %add295, %for.end291 ], [ %mcost.3425, %for.cond261.preheader ]
  %bxx.1420 = phi i32 [ %add297, %for.end291 ], [ 0, %for.cond261.preheader ]
  %92 = mul i64 %85, %indvar459
  br label %for.cond273.preheader

for.cond273.preheader:                            ; preds = %for.cond273.preheader, %for.cond269.preheader
  %indvar = phi i64 [ 0, %for.cond269.preheader ], [ %indvar.next, %for.cond273.preheader ]
  %93 = shl i64 %indvar, 3
  %scevgep = getelementptr [64 x i32]* %diff, i64 0, i64 %93
  %scevgep458 = bitcast i32* %scevgep to i8*
  %94 = add i64 %91, %indvar
  %sext = shl i64 %94, 32
  %95 = ashr exact i64 %sext, 28
  %scevgep461.sum = add i64 %92, %95
  %scevgep465 = getelementptr [16 x [16 x i32]]* %curr_blk, i64 0, i64 0, i64 %scevgep461.sum
  %scevgep465466 = bitcast i32* %scevgep465 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep458, i8* %scevgep465466, i64 32, i32 4, i1 false)
  %indvar.next = add i64 %indvar, 1
  %lftr.wideiv = trunc i64 %indvar.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.end291, label %for.cond273.preheader

for.end291:                                       ; preds = %for.cond273.preheader
  %hadamard293 = getelementptr inbounds %struct.InputParameters* %80, i64 0, i32 6
  %96 = load i32* %hadamard293, align 4, !tbaa !3
  %call294 = call i32 @SATD8X8(i32* %arraydecay292, i32 %96) #8
  %add295 = add nsw i32 %call294, %mcost.4421
  %add297 = add nsw i32 %bxx.1420, %.
  %97 = load i32* %arrayidx265418.phi.trans.insert, align 4, !tbaa !3
  %cmp266 = icmp slt i32 %add297, %97
  %indvar.next460 = add i64 %indvar459, 1
  br i1 %cmp266, label %for.cond269.preheader, label %for.cond261.for.inc299_crit_edge

for.cond261.for.inc299_crit_edge:                 ; preds = %for.end291
  %.pre = load i32* %arrayidx257422, align 4, !tbaa !3
  br label %for.inc299

for.inc299:                                       ; preds = %for.cond261.for.inc299_crit_edge, %for.cond261.preheader
  %98 = phi i32 [ %97, %for.cond261.for.inc299_crit_edge ], [ %89, %for.cond261.preheader ]
  %99 = phi i32 [ %.pre, %for.cond261.for.inc299_crit_edge ], [ %90, %for.cond261.preheader ]
  %mcost.4.lcssa = phi i32 [ %add295, %for.cond261.for.inc299_crit_edge ], [ %mcost.3425, %for.cond261.preheader ]
  %add300 = add nsw i32 %byy.1424, %cond18
  %cmp258 = icmp slt i32 %add300, %99
  %indvar.next463 = add i64 %indvar462, 1
  br i1 %cmp258, label %for.cond261.preheader, label %if.end302

if.end302:                                        ; preds = %for.cond253.preheader, %for.inc299, %for.end247
  %mcost.5 = phi i32 [ %mcost.0.lcssa, %for.end247 ], [ %mcost.0.lcssa, %for.cond253.preheader ], [ %mcost.4.lcssa, %for.inc299 ]
  call void @llvm.lifetime.end(i64 1024, i8* %1) #3
  call void @llvm.lifetime.end(i64 256, i8* %0) #3
  ret i32 %mcost.5
}

; Function Attrs: optsize
declare void @LumaPrediction4x4Bi(i32, i32, i32, i32, i32, i16 signext, i16 signext, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @BlockMotionSearch(i16 signext %ref, i32 %list, i32 %mb_x, i32 %mb_y, i32 %blocktype, i32 %search_range, double %lambda) #0 {
entry:
  %mv_x = alloca i16, align 2
  %mv_y = alloca i16, align 2
  %bimv_x = alloca i16, align 2
  %bimv_y = alloca i16, align 2
  %tempmv_x = alloca i16, align 2
  %tempmv_y = alloca i16, align 2
  %pred_mv_bi = alloca [2 x i16], align 2
  %shr = ashr i32 %mb_x, 2
  %shr1 = ashr i32 %mb_y, 2
  %idxprom = sext i32 %blocktype to i64
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 20, i64 %idxprom, i64 0
  %1 = load i32* %arrayidx2, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 20, i64 %idxprom, i64 1
  %2 = load i32* %arrayidx6, align 4, !tbaa !3
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %opix_x = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 37
  %4 = load i32* %opix_x, align 4, !tbaa !3
  %add = add nsw i32 %4, %mb_x
  %opix_y = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 38
  %5 = load i32* %opix_y, align 4, !tbaa !3
  %add7 = add nsw i32 %5, %mb_y
  %idxprom8 = sext i32 %list to i64
  %6 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv = getelementptr inbounds %struct.storable_picture* %6, i64 0, i32 35
  %7 = load i16***** %mv, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i16**** %7, i64 %idxprom8
  %8 = load i16**** %arrayidx9, align 8, !tbaa !0
  %all_mv10 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 71
  %9 = load i16******* %all_mv10, align 8, !tbaa !0
  %FMEnable = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 134
  %10 = load i32* %FMEnable, align 4, !tbaa !3
  %tobool = icmp eq i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34
  %11 = load i32* %successive_Bframe, align 4, !tbaa !3
  %tobool11 = icmp eq i32 %11, 0
  br i1 %tobool11, label %if.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %12 = load i32* @Bframe_ctr, align 4, !tbaa !3
  %rem = srem i32 %12, %11
  %add12 = add nsw i32 %rem, 1
  br label %if.end

if.end:                                           ; preds = %cond.true, %if.then, %entry
  %N_Bframe.0 = phi i32 [ 0, %entry ], [ 0, %if.then ], [ %11, %cond.true ]
  %n_Bframe.0 = phi i32 [ 0, %entry ], [ 0, %if.then ], [ %add12, %cond.true ]
  %idxprom14 = sext i16 %ref to i64
  %idxprom16 = sext i32 %shr1 to i64
  %idxprom17 = sext i32 %shr to i64
  %pred_mv18 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 70
  %13 = load i16******* %pred_mv18, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i16****** %13, i64 %idxprom17
  %14 = load i16****** %arrayidx19, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i16***** %14, i64 %idxprom16
  %15 = load i16***** %arrayidx20, align 8, !tbaa !0
  %arrayidx21 = getelementptr inbounds i16**** %15, i64 %idxprom8
  %16 = load i16**** %arrayidx21, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds i16*** %16, i64 %idxprom14
  %17 = load i16*** %arrayidx22, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i16** %17, i64 %idxprom
  %18 = load i16** %arrayidx23, align 8, !tbaa !0
  %cmp2127 = icmp sgt i32 %2, 0
  br i1 %cmp2127, label %for.cond24.preheader.lr.ph, label %for.end39

for.cond24.preheader.lr.ph:                       ; preds = %if.end
  %cmp252125 = icmp sgt i32 %1, 0
  %19 = load i16*** @imgY_org, align 8, !tbaa !0
  %20 = sext i32 %add to i64
  %21 = sext i32 %add7 to i64
  br label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.inc37, %for.cond24.preheader.lr.ph
  %indvars.iv2167 = phi i64 [ 0, %for.cond24.preheader.lr.ph ], [ %indvars.iv.next2168, %for.inc37 ]
  br i1 %cmp252125, label %for.body26.lr.ph, label %for.inc37

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %22 = add nsw i64 %indvars.iv2167, %21
  %arrayidx31 = getelementptr inbounds i16** %19, i64 %22
  %23 = load i16** %arrayidx31, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds [16 x i16*]* @BlockMotionSearch.orig_pic, i64 0, i64 %indvars.iv2167
  %24 = load i16** %arrayidx35, align 8, !tbaa !0
  br label %for.body26

for.body26:                                       ; preds = %for.body26, %for.body26.lr.ph
  %indvars.iv2162 = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next2163, %for.body26 ]
  %25 = add nsw i64 %indvars.iv2162, %20
  %arrayidx32 = getelementptr inbounds i16* %23, i64 %25
  %26 = load i16* %arrayidx32, align 2, !tbaa !4
  %arrayidx36 = getelementptr inbounds i16* %24, i64 %indvars.iv2162
  store i16 %26, i16* %arrayidx36, align 2, !tbaa !4
  %indvars.iv.next2163 = add i64 %indvars.iv2162, 1
  %lftr.wideiv2165 = trunc i64 %indvars.iv.next2163 to i32
  %exitcond2166 = icmp eq i32 %lftr.wideiv2165, %1
  br i1 %exitcond2166, label %for.inc37, label %for.body26

for.inc37:                                        ; preds = %for.body26, %for.cond24.preheader
  %indvars.iv.next2168 = add i64 %indvars.iv2167, 1
  %lftr.wideiv2170 = trunc i64 %indvars.iv.next2168 to i32
  %exitcond2171 = icmp eq i32 %lftr.wideiv2170, %2
  br i1 %exitcond2171, label %for.end39, label %for.cond24.preheader

for.end39:                                        ; preds = %for.inc37, %if.end
  br i1 %tobool, label %if.end990, label %if.then42

if.then42:                                        ; preds = %for.end39
  %cmp43 = icmp sgt i32 %blocktype, 6
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then42
  %arrayidx49 = getelementptr inbounds i16****** %9, i64 %idxprom17
  %27 = load i16****** %arrayidx49, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds i16***** %27, i64 %idxprom16
  %28 = load i16***** %arrayidx50, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i16**** %28, i64 %idxprom8
  %29 = load i16**** %arrayidx51, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds i16*** %29, i64 %idxprom14
  %30 = load i16*** %arrayidx52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i16** %30, i64 5
  %31 = load i16** %arrayidx53, align 8, !tbaa !0
  %32 = load i16* %31, align 2, !tbaa !4
  %conv = sext i16 %32 to i32
  store i32 %conv, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 0), align 4, !tbaa !3
  %arrayidx64 = getelementptr inbounds i16* %31, i64 1
  %33 = load i16* %arrayidx64, align 2, !tbaa !4
  %conv65 = sext i16 %33 to i32
  store i32 %conv65, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 1), align 4, !tbaa !3
  %cmp66 = icmp eq i32 %list, 1
  %pix_y = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %34 = load i32* %pix_y, align 4, !tbaa !3
  %shr69 = ashr i32 %34, 2
  %add70 = add nsw i32 %shr69, %shr1
  %idxprom71 = sext i32 %add70 to i64
  %pix_x = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %35 = load i32* %pix_x, align 4, !tbaa !3
  %shr72 = ashr i32 %35, 2
  %add73 = add nsw i32 %shr72, %shr
  %idxprom74 = sext i32 %add73 to i64
  br i1 %cmp66, label %cond.true68, label %cond.false80

cond.true68:                                      ; preds = %if.then44
  %36 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds i32***** %36, i64 %idxprom74
  %37 = load i32***** %arrayidx75, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i32**** %37, i64 %idxprom71
  %38 = load i32**** %arrayidx76, align 8, !tbaa !0
  br label %cond.end95

cond.false80:                                     ; preds = %if.then44
  %39 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx90 = getelementptr inbounds i32***** %39, i64 %idxprom74
  %40 = load i32***** %arrayidx90, align 8, !tbaa !0
  %arrayidx91 = getelementptr inbounds i32**** %40, i64 %idxprom71
  %41 = load i32**** %arrayidx91, align 8, !tbaa !0
  %arrayidx92 = getelementptr inbounds i32*** %41, i64 %idxprom14
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false80, %cond.true68
  %.pn2089.in = phi i32*** [ %38, %cond.true68 ], [ %arrayidx92, %cond.false80 ]
  %.pn2089 = load i32*** %.pn2089.in, align 8
  %cond96.in.in = getelementptr inbounds i32** %.pn2089, i64 5
  %cond96.in = load i32** %cond96.in.in, align 8
  %cond96 = load i32* %cond96.in, align 4
  %div = sdiv i32 %cond96, 2
  store i32 %div, i32* @pred_SAD_uplayer, align 4, !tbaa !3
  br label %if.end279

if.else:                                          ; preds = %if.then42
  %cmp97 = icmp sgt i32 %blocktype, 4
  br i1 %cmp97, label %if.then99, label %if.else156

if.then99:                                        ; preds = %if.else
  %arrayidx104 = getelementptr inbounds i16****** %9, i64 %idxprom17
  %42 = load i16****** %arrayidx104, align 8, !tbaa !0
  %arrayidx105 = getelementptr inbounds i16***** %42, i64 %idxprom16
  %43 = load i16***** %arrayidx105, align 8, !tbaa !0
  %arrayidx106 = getelementptr inbounds i16**** %43, i64 %idxprom8
  %44 = load i16**** %arrayidx106, align 8, !tbaa !0
  %arrayidx107 = getelementptr inbounds i16*** %44, i64 %idxprom14
  %45 = load i16*** %arrayidx107, align 8, !tbaa !0
  %arrayidx108 = getelementptr inbounds i16** %45, i64 4
  %46 = load i16** %arrayidx108, align 8, !tbaa !0
  %47 = load i16* %46, align 2, !tbaa !4
  %conv110 = sext i16 %47 to i32
  store i32 %conv110, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 0), align 4, !tbaa !3
  %arrayidx120 = getelementptr inbounds i16* %46, i64 1
  %48 = load i16* %arrayidx120, align 2, !tbaa !4
  %conv121 = sext i16 %48 to i32
  store i32 %conv121, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 1), align 4, !tbaa !3
  %cmp122 = icmp eq i32 %list, 1
  %pix_y125 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %49 = load i32* %pix_y125, align 4, !tbaa !3
  %shr126 = ashr i32 %49, 2
  %add127 = add nsw i32 %shr126, %shr1
  %idxprom128 = sext i32 %add127 to i64
  %pix_x129 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %50 = load i32* %pix_x129, align 4, !tbaa !3
  %shr130 = ashr i32 %50, 2
  %add131 = add nsw i32 %shr130, %shr
  %idxprom132 = sext i32 %add131 to i64
  br i1 %cmp122, label %cond.true124, label %cond.false138

cond.true124:                                     ; preds = %if.then99
  %51 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx133 = getelementptr inbounds i32***** %51, i64 %idxprom132
  %52 = load i32***** %arrayidx133, align 8, !tbaa !0
  %arrayidx134 = getelementptr inbounds i32**** %52, i64 %idxprom128
  %53 = load i32**** %arrayidx134, align 8, !tbaa !0
  br label %cond.end153

cond.false138:                                    ; preds = %if.then99
  %54 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx148 = getelementptr inbounds i32***** %54, i64 %idxprom132
  %55 = load i32***** %arrayidx148, align 8, !tbaa !0
  %arrayidx149 = getelementptr inbounds i32**** %55, i64 %idxprom128
  %56 = load i32**** %arrayidx149, align 8, !tbaa !0
  %arrayidx150 = getelementptr inbounds i32*** %56, i64 %idxprom14
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false138, %cond.true124
  %.pn2088.in = phi i32*** [ %53, %cond.true124 ], [ %arrayidx150, %cond.false138 ]
  %.pn2088 = load i32*** %.pn2088.in, align 8
  %cond154.in.in = getelementptr inbounds i32** %.pn2088, i64 4
  %cond154.in = load i32** %cond154.in.in, align 8
  %cond154 = load i32* %cond154.in, align 4
  %div155 = sdiv i32 %cond154, 2
  store i32 %div155, i32* @pred_SAD_uplayer, align 4, !tbaa !3
  br label %if.end279

if.else156:                                       ; preds = %if.else
  %cmp157 = icmp eq i32 %blocktype, 4
  br i1 %cmp157, label %if.then159, label %if.else216

if.then159:                                       ; preds = %if.else156
  %arrayidx164 = getelementptr inbounds i16****** %9, i64 %idxprom17
  %57 = load i16****** %arrayidx164, align 8, !tbaa !0
  %arrayidx165 = getelementptr inbounds i16***** %57, i64 %idxprom16
  %58 = load i16***** %arrayidx165, align 8, !tbaa !0
  %arrayidx166 = getelementptr inbounds i16**** %58, i64 %idxprom8
  %59 = load i16**** %arrayidx166, align 8, !tbaa !0
  %arrayidx167 = getelementptr inbounds i16*** %59, i64 %idxprom14
  %60 = load i16*** %arrayidx167, align 8, !tbaa !0
  %arrayidx168 = getelementptr inbounds i16** %60, i64 2
  %61 = load i16** %arrayidx168, align 8, !tbaa !0
  %62 = load i16* %61, align 2, !tbaa !4
  %conv170 = sext i16 %62 to i32
  store i32 %conv170, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 0), align 4, !tbaa !3
  %arrayidx180 = getelementptr inbounds i16* %61, i64 1
  %63 = load i16* %arrayidx180, align 2, !tbaa !4
  %conv181 = sext i16 %63 to i32
  store i32 %conv181, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 1), align 4, !tbaa !3
  %cmp182 = icmp eq i32 %list, 1
  %pix_y185 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %64 = load i32* %pix_y185, align 4, !tbaa !3
  %shr186 = ashr i32 %64, 2
  %add187 = add nsw i32 %shr186, %shr1
  %idxprom188 = sext i32 %add187 to i64
  %pix_x189 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %65 = load i32* %pix_x189, align 4, !tbaa !3
  %shr190 = ashr i32 %65, 2
  %add191 = add nsw i32 %shr190, %shr
  %idxprom192 = sext i32 %add191 to i64
  br i1 %cmp182, label %cond.true184, label %cond.false198

cond.true184:                                     ; preds = %if.then159
  %66 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx193 = getelementptr inbounds i32***** %66, i64 %idxprom192
  %67 = load i32***** %arrayidx193, align 8, !tbaa !0
  %arrayidx194 = getelementptr inbounds i32**** %67, i64 %idxprom188
  %68 = load i32**** %arrayidx194, align 8, !tbaa !0
  br label %cond.end213

cond.false198:                                    ; preds = %if.then159
  %69 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx208 = getelementptr inbounds i32***** %69, i64 %idxprom192
  %70 = load i32***** %arrayidx208, align 8, !tbaa !0
  %arrayidx209 = getelementptr inbounds i32**** %70, i64 %idxprom188
  %71 = load i32**** %arrayidx209, align 8, !tbaa !0
  %arrayidx210 = getelementptr inbounds i32*** %71, i64 %idxprom14
  br label %cond.end213

cond.end213:                                      ; preds = %cond.false198, %cond.true184
  %.pn2087.in = phi i32*** [ %68, %cond.true184 ], [ %arrayidx210, %cond.false198 ]
  %.pn2087 = load i32*** %.pn2087.in, align 8
  %cond214.in.in = getelementptr inbounds i32** %.pn2087, i64 2
  %cond214.in = load i32** %cond214.in.in, align 8
  %cond214 = load i32* %cond214.in, align 4
  %div215 = sdiv i32 %cond214, 2
  store i32 %div215, i32* @pred_SAD_uplayer, align 4, !tbaa !3
  br label %if.end279

if.else216:                                       ; preds = %if.else156
  %cmp217 = icmp sgt i32 %blocktype, 1
  br i1 %cmp217, label %if.then219, label %if.end279

if.then219:                                       ; preds = %if.else216
  %arrayidx224 = getelementptr inbounds i16****** %9, i64 %idxprom17
  %72 = load i16****** %arrayidx224, align 8, !tbaa !0
  %arrayidx225 = getelementptr inbounds i16***** %72, i64 %idxprom16
  %73 = load i16***** %arrayidx225, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds i16**** %73, i64 %idxprom8
  %74 = load i16**** %arrayidx226, align 8, !tbaa !0
  %arrayidx227 = getelementptr inbounds i16*** %74, i64 %idxprom14
  %75 = load i16*** %arrayidx227, align 8, !tbaa !0
  %arrayidx228 = getelementptr inbounds i16** %75, i64 1
  %76 = load i16** %arrayidx228, align 8, !tbaa !0
  %77 = load i16* %76, align 2, !tbaa !4
  %conv230 = sext i16 %77 to i32
  store i32 %conv230, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 0), align 4, !tbaa !3
  %arrayidx240 = getelementptr inbounds i16* %76, i64 1
  %78 = load i16* %arrayidx240, align 2, !tbaa !4
  %conv241 = sext i16 %78 to i32
  store i32 %conv241, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 1), align 4, !tbaa !3
  %cmp242 = icmp eq i32 %list, 1
  %pix_y245 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %79 = load i32* %pix_y245, align 4, !tbaa !3
  %shr246 = ashr i32 %79, 2
  %add247 = add nsw i32 %shr246, %shr1
  %idxprom248 = sext i32 %add247 to i64
  %pix_x249 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %80 = load i32* %pix_x249, align 4, !tbaa !3
  %shr250 = ashr i32 %80, 2
  %add251 = add nsw i32 %shr250, %shr
  %idxprom252 = sext i32 %add251 to i64
  br i1 %cmp242, label %cond.true244, label %cond.false258

cond.true244:                                     ; preds = %if.then219
  %81 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx253 = getelementptr inbounds i32***** %81, i64 %idxprom252
  %82 = load i32***** %arrayidx253, align 8, !tbaa !0
  %arrayidx254 = getelementptr inbounds i32**** %82, i64 %idxprom248
  %83 = load i32**** %arrayidx254, align 8, !tbaa !0
  br label %cond.end273

cond.false258:                                    ; preds = %if.then219
  %84 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx268 = getelementptr inbounds i32***** %84, i64 %idxprom252
  %85 = load i32***** %arrayidx268, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds i32**** %85, i64 %idxprom248
  %86 = load i32**** %arrayidx269, align 8, !tbaa !0
  %arrayidx270 = getelementptr inbounds i32*** %86, i64 %idxprom14
  br label %cond.end273

cond.end273:                                      ; preds = %cond.false258, %cond.true244
  %.pn2086.in = phi i32*** [ %83, %cond.true244 ], [ %arrayidx270, %cond.false258 ]
  %.pn2086 = load i32*** %.pn2086.in, align 8
  %cond274.in.in = getelementptr inbounds i32** %.pn2086, i64 1
  %cond274.in = load i32** %cond274.in.in, align 8
  %cond274 = load i32* %cond274.in, align 4
  %div275 = sdiv i32 %cond274, 2
  store i32 %div275, i32* @pred_SAD_uplayer, align 4, !tbaa !3
  br label %if.end279

if.end279:                                        ; preds = %cond.end153, %if.else216, %cond.end273, %cond.end213, %cond.end95
  %type = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 6
  %87 = load i32* %type, align 4, !tbaa !3
  %cmp280 = icmp eq i32 %87, 1
  br i1 %cmp280, label %land.lhs.true, label %if.end528

land.lhs.true:                                    ; preds = %if.end279
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 113
  %88 = load i32* %nal_reference_idc, align 4, !tbaa !3
  %cmp282 = icmp sgt i32 %88, 0
  br i1 %cmp282, label %if.then284, label %if.end528

if.then284:                                       ; preds = %land.lhs.true
  br i1 %cmp43, label %if.then287, label %if.else344

if.then287:                                       ; preds = %if.then284
  %arrayidx292 = getelementptr inbounds i16****** %9, i64 %idxprom17
  %89 = load i16****** %arrayidx292, align 8, !tbaa !0
  %arrayidx293 = getelementptr inbounds i16***** %89, i64 %idxprom16
  %90 = load i16***** %arrayidx293, align 8, !tbaa !0
  %arrayidx294 = getelementptr inbounds i16**** %90, i64 %idxprom8
  %91 = load i16**** %arrayidx294, align 8, !tbaa !0
  %arrayidx295 = getelementptr inbounds i16*** %91, i64 %idxprom14
  %92 = load i16*** %arrayidx295, align 8, !tbaa !0
  %arrayidx296 = getelementptr inbounds i16** %92, i64 5
  %93 = load i16** %arrayidx296, align 8, !tbaa !0
  %94 = load i16* %93, align 2, !tbaa !4
  %conv298 = sext i16 %94 to i32
  store i32 %conv298, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 0), align 4, !tbaa !3
  %arrayidx308 = getelementptr inbounds i16* %93, i64 1
  %95 = load i16* %arrayidx308, align 2, !tbaa !4
  %conv309 = sext i16 %95 to i32
  store i32 %conv309, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 1), align 4, !tbaa !3
  %cmp310 = icmp eq i32 %list, 1
  %pix_y313 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %96 = load i32* %pix_y313, align 4, !tbaa !3
  %shr314 = ashr i32 %96, 2
  %add315 = add nsw i32 %shr314, %shr1
  %idxprom316 = sext i32 %add315 to i64
  %pix_x317 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %97 = load i32* %pix_x317, align 4, !tbaa !3
  %shr318 = ashr i32 %97, 2
  %add319 = add nsw i32 %shr318, %shr
  %idxprom320 = sext i32 %add319 to i64
  br i1 %cmp310, label %cond.true312, label %cond.false326

cond.true312:                                     ; preds = %if.then287
  %98 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx321 = getelementptr inbounds i32***** %98, i64 %idxprom320
  %99 = load i32***** %arrayidx321, align 8, !tbaa !0
  %arrayidx322 = getelementptr inbounds i32**** %99, i64 %idxprom316
  %100 = load i32**** %arrayidx322, align 8, !tbaa !0
  br label %cond.end341

cond.false326:                                    ; preds = %if.then287
  %101 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx336 = getelementptr inbounds i32***** %101, i64 %idxprom320
  %102 = load i32***** %arrayidx336, align 8, !tbaa !0
  %arrayidx337 = getelementptr inbounds i32**** %102, i64 %idxprom316
  %103 = load i32**** %arrayidx337, align 8, !tbaa !0
  %arrayidx338 = getelementptr inbounds i32*** %103, i64 %idxprom14
  br label %cond.end341

cond.end341:                                      ; preds = %cond.false326, %cond.true312
  %.pn2085.in = phi i32*** [ %100, %cond.true312 ], [ %arrayidx338, %cond.false326 ]
  %.pn2085 = load i32*** %.pn2085.in, align 8
  %cond342.in.in = getelementptr inbounds i32** %.pn2085, i64 5
  %cond342.in = load i32** %cond342.in.in, align 8
  %cond342 = load i32* %cond342.in, align 4
  %div343 = sdiv i32 %cond342, 2
  store i32 %div343, i32* @pred_SAD_uplayer, align 4, !tbaa !3
  br label %if.end528

if.else344:                                       ; preds = %if.then284
  %cmp345 = icmp sgt i32 %blocktype, 4
  br i1 %cmp345, label %if.then347, label %if.else404

if.then347:                                       ; preds = %if.else344
  %arrayidx352 = getelementptr inbounds i16****** %9, i64 %idxprom17
  %104 = load i16****** %arrayidx352, align 8, !tbaa !0
  %arrayidx353 = getelementptr inbounds i16***** %104, i64 %idxprom16
  %105 = load i16***** %arrayidx353, align 8, !tbaa !0
  %arrayidx354 = getelementptr inbounds i16**** %105, i64 %idxprom8
  %106 = load i16**** %arrayidx354, align 8, !tbaa !0
  %arrayidx355 = getelementptr inbounds i16*** %106, i64 %idxprom14
  %107 = load i16*** %arrayidx355, align 8, !tbaa !0
  %arrayidx356 = getelementptr inbounds i16** %107, i64 4
  %108 = load i16** %arrayidx356, align 8, !tbaa !0
  %109 = load i16* %108, align 2, !tbaa !4
  %conv358 = sext i16 %109 to i32
  store i32 %conv358, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 0), align 4, !tbaa !3
  %arrayidx368 = getelementptr inbounds i16* %108, i64 1
  %110 = load i16* %arrayidx368, align 2, !tbaa !4
  %conv369 = sext i16 %110 to i32
  store i32 %conv369, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 1), align 4, !tbaa !3
  %cmp370 = icmp eq i32 %list, 1
  %pix_y373 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %111 = load i32* %pix_y373, align 4, !tbaa !3
  %shr374 = ashr i32 %111, 2
  %add375 = add nsw i32 %shr374, %shr1
  %idxprom376 = sext i32 %add375 to i64
  %pix_x377 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %112 = load i32* %pix_x377, align 4, !tbaa !3
  %shr378 = ashr i32 %112, 2
  %add379 = add nsw i32 %shr378, %shr
  %idxprom380 = sext i32 %add379 to i64
  br i1 %cmp370, label %cond.true372, label %cond.false386

cond.true372:                                     ; preds = %if.then347
  %113 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx381 = getelementptr inbounds i32***** %113, i64 %idxprom380
  %114 = load i32***** %arrayidx381, align 8, !tbaa !0
  %arrayidx382 = getelementptr inbounds i32**** %114, i64 %idxprom376
  %115 = load i32**** %arrayidx382, align 8, !tbaa !0
  br label %cond.end401

cond.false386:                                    ; preds = %if.then347
  %116 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx396 = getelementptr inbounds i32***** %116, i64 %idxprom380
  %117 = load i32***** %arrayidx396, align 8, !tbaa !0
  %arrayidx397 = getelementptr inbounds i32**** %117, i64 %idxprom376
  %118 = load i32**** %arrayidx397, align 8, !tbaa !0
  %arrayidx398 = getelementptr inbounds i32*** %118, i64 %idxprom14
  br label %cond.end401

cond.end401:                                      ; preds = %cond.false386, %cond.true372
  %.pn2084.in = phi i32*** [ %115, %cond.true372 ], [ %arrayidx398, %cond.false386 ]
  %.pn2084 = load i32*** %.pn2084.in, align 8
  %cond402.in.in = getelementptr inbounds i32** %.pn2084, i64 4
  %cond402.in = load i32** %cond402.in.in, align 8
  %cond402 = load i32* %cond402.in, align 4
  %div403 = sdiv i32 %cond402, 2
  store i32 %div403, i32* @pred_SAD_uplayer, align 4, !tbaa !3
  br label %if.end528

if.else404:                                       ; preds = %if.else344
  %cmp405 = icmp eq i32 %blocktype, 4
  br i1 %cmp405, label %if.then407, label %if.else464

if.then407:                                       ; preds = %if.else404
  %arrayidx412 = getelementptr inbounds i16****** %9, i64 %idxprom17
  %119 = load i16****** %arrayidx412, align 8, !tbaa !0
  %arrayidx413 = getelementptr inbounds i16***** %119, i64 %idxprom16
  %120 = load i16***** %arrayidx413, align 8, !tbaa !0
  %arrayidx414 = getelementptr inbounds i16**** %120, i64 %idxprom8
  %121 = load i16**** %arrayidx414, align 8, !tbaa !0
  %arrayidx415 = getelementptr inbounds i16*** %121, i64 %idxprom14
  %122 = load i16*** %arrayidx415, align 8, !tbaa !0
  %arrayidx416 = getelementptr inbounds i16** %122, i64 2
  %123 = load i16** %arrayidx416, align 8, !tbaa !0
  %124 = load i16* %123, align 2, !tbaa !4
  %conv418 = sext i16 %124 to i32
  store i32 %conv418, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 0), align 4, !tbaa !3
  %arrayidx428 = getelementptr inbounds i16* %123, i64 1
  %125 = load i16* %arrayidx428, align 2, !tbaa !4
  %conv429 = sext i16 %125 to i32
  store i32 %conv429, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 1), align 4, !tbaa !3
  %cmp430 = icmp eq i32 %list, 1
  %pix_y433 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %126 = load i32* %pix_y433, align 4, !tbaa !3
  %shr434 = ashr i32 %126, 2
  %add435 = add nsw i32 %shr434, %shr1
  %idxprom436 = sext i32 %add435 to i64
  %pix_x437 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %127 = load i32* %pix_x437, align 4, !tbaa !3
  %shr438 = ashr i32 %127, 2
  %add439 = add nsw i32 %shr438, %shr
  %idxprom440 = sext i32 %add439 to i64
  br i1 %cmp430, label %cond.true432, label %cond.false446

cond.true432:                                     ; preds = %if.then407
  %128 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx441 = getelementptr inbounds i32***** %128, i64 %idxprom440
  %129 = load i32***** %arrayidx441, align 8, !tbaa !0
  %arrayidx442 = getelementptr inbounds i32**** %129, i64 %idxprom436
  %130 = load i32**** %arrayidx442, align 8, !tbaa !0
  br label %cond.end461

cond.false446:                                    ; preds = %if.then407
  %131 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx456 = getelementptr inbounds i32***** %131, i64 %idxprom440
  %132 = load i32***** %arrayidx456, align 8, !tbaa !0
  %arrayidx457 = getelementptr inbounds i32**** %132, i64 %idxprom436
  %133 = load i32**** %arrayidx457, align 8, !tbaa !0
  %arrayidx458 = getelementptr inbounds i32*** %133, i64 %idxprom14
  br label %cond.end461

cond.end461:                                      ; preds = %cond.false446, %cond.true432
  %.pn2083.in = phi i32*** [ %130, %cond.true432 ], [ %arrayidx458, %cond.false446 ]
  %.pn2083 = load i32*** %.pn2083.in, align 8
  %cond462.in.in = getelementptr inbounds i32** %.pn2083, i64 2
  %cond462.in = load i32** %cond462.in.in, align 8
  %cond462 = load i32* %cond462.in, align 4
  %div463 = sdiv i32 %cond462, 2
  store i32 %div463, i32* @pred_SAD_uplayer, align 4, !tbaa !3
  br label %if.end528

if.else464:                                       ; preds = %if.else404
  %cmp465 = icmp sgt i32 %blocktype, 1
  br i1 %cmp465, label %if.then467, label %if.end528

if.then467:                                       ; preds = %if.else464
  %arrayidx472 = getelementptr inbounds i16****** %9, i64 %idxprom17
  %134 = load i16****** %arrayidx472, align 8, !tbaa !0
  %arrayidx473 = getelementptr inbounds i16***** %134, i64 %idxprom16
  %135 = load i16***** %arrayidx473, align 8, !tbaa !0
  %arrayidx474 = getelementptr inbounds i16**** %135, i64 %idxprom8
  %136 = load i16**** %arrayidx474, align 8, !tbaa !0
  %arrayidx475 = getelementptr inbounds i16*** %136, i64 %idxprom14
  %137 = load i16*** %arrayidx475, align 8, !tbaa !0
  %arrayidx476 = getelementptr inbounds i16** %137, i64 1
  %138 = load i16** %arrayidx476, align 8, !tbaa !0
  %139 = load i16* %138, align 2, !tbaa !4
  %conv478 = sext i16 %139 to i32
  store i32 %conv478, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 0), align 4, !tbaa !3
  %arrayidx488 = getelementptr inbounds i16* %138, i64 1
  %140 = load i16* %arrayidx488, align 2, !tbaa !4
  %conv489 = sext i16 %140 to i32
  store i32 %conv489, i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 1), align 4, !tbaa !3
  %cmp490 = icmp eq i32 %list, 1
  %pix_y493 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %141 = load i32* %pix_y493, align 4, !tbaa !3
  %shr494 = ashr i32 %141, 2
  %add495 = add nsw i32 %shr494, %shr1
  %idxprom496 = sext i32 %add495 to i64
  %pix_x497 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %142 = load i32* %pix_x497, align 4, !tbaa !3
  %shr498 = ashr i32 %142, 2
  %add499 = add nsw i32 %shr498, %shr
  %idxprom500 = sext i32 %add499 to i64
  br i1 %cmp490, label %cond.true492, label %cond.false506

cond.true492:                                     ; preds = %if.then467
  %143 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx501 = getelementptr inbounds i32***** %143, i64 %idxprom500
  %144 = load i32***** %arrayidx501, align 8, !tbaa !0
  %arrayidx502 = getelementptr inbounds i32**** %144, i64 %idxprom496
  %145 = load i32**** %arrayidx502, align 8, !tbaa !0
  br label %cond.end521

cond.false506:                                    ; preds = %if.then467
  %146 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx516 = getelementptr inbounds i32***** %146, i64 %idxprom500
  %147 = load i32***** %arrayidx516, align 8, !tbaa !0
  %arrayidx517 = getelementptr inbounds i32**** %147, i64 %idxprom496
  %148 = load i32**** %arrayidx517, align 8, !tbaa !0
  %arrayidx518 = getelementptr inbounds i32*** %148, i64 %idxprom14
  br label %cond.end521

cond.end521:                                      ; preds = %cond.false506, %cond.true492
  %.pn.in = phi i32*** [ %145, %cond.true492 ], [ %arrayidx518, %cond.false506 ]
  %.pn = load i32*** %.pn.in, align 8
  %cond522.in.in = getelementptr inbounds i32** %.pn, i64 1
  %cond522.in = load i32** %cond522.in.in, align 8
  %cond522 = load i32* %cond522.in, align 4
  %div523 = sdiv i32 %cond522, 2
  store i32 %div523, i32* @pred_SAD_uplayer, align 4, !tbaa !3
  br label %if.end528

if.end528:                                        ; preds = %if.else464, %land.lhs.true, %if.end279, %cond.end341, %cond.end461, %cond.end521, %cond.end401
  %149 = load i32* @flag_intra_SAD, align 4, !tbaa !3
  %tobool529 = icmp ne i32 %149, 0
  %150 = load i32* @pred_SAD_uplayer, align 4, !tbaa !3
  %cond533 = select i1 %tobool529, i32 0, i32 %150
  store i32 %cond533, i32* @pred_SAD_uplayer, align 4, !tbaa !3
  %number = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 0
  %151 = load i32* %number, align 4, !tbaa !3
  %conv534 = sext i16 %ref to i32
  %add535 = add nsw i32 %conv534, 1
  %cmp536 = icmp sgt i32 %151, %add535
  br i1 %cmp536, label %if.then538, label %if.end584

if.then538:                                       ; preds = %if.end528
  %pix_y541 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %152 = load i32* %pix_y541, align 4, !tbaa !3
  %shr542 = ashr i32 %152, 2
  %add543 = add nsw i32 %shr542, %shr1
  %idxprom544 = sext i32 %add543 to i64
  %pix_x545 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %153 = load i32* %pix_x545, align 4, !tbaa !3
  %shr546 = ashr i32 %153, 2
  %add547 = add nsw i32 %shr546, %shr
  %idxprom548 = sext i32 %add547 to i64
  %154 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx549 = getelementptr inbounds i32***** %154, i64 %idxprom548
  %155 = load i32***** %arrayidx549, align 8, !tbaa !0
  %arrayidx550 = getelementptr inbounds i32**** %155, i64 %idxprom544
  %156 = load i32**** %arrayidx550, align 8, !tbaa !0
  %arrayidx551 = getelementptr inbounds i32*** %156, i64 %idxprom14
  %157 = load i32*** %arrayidx551, align 8, !tbaa !0
  %arrayidx552 = getelementptr inbounds i32** %157, i64 %idxprom
  %158 = load i32** %arrayidx552, align 8, !tbaa !0
  %159 = load i32* %158, align 4, !tbaa !3
  store i32 %159, i32* @pred_SAD_time, align 4, !tbaa !3
  %160 = load i32* %pix_y541, align 4, !tbaa !3
  %shr557 = ashr i32 %160, 2
  %add558 = add nsw i32 %shr557, %shr1
  %idxprom559 = sext i32 %add558 to i64
  %161 = load i32* %pix_x545, align 4, !tbaa !3
  %shr561 = ashr i32 %161, 2
  %add562 = add nsw i32 %shr561, %shr
  %idxprom563 = sext i32 %add562 to i64
  %arrayidx564 = getelementptr inbounds i32***** %154, i64 %idxprom563
  %162 = load i32***** %arrayidx564, align 8, !tbaa !0
  %arrayidx565 = getelementptr inbounds i32**** %162, i64 %idxprom559
  %163 = load i32**** %arrayidx565, align 8, !tbaa !0
  %arrayidx566 = getelementptr inbounds i32*** %163, i64 %idxprom14
  %164 = load i32*** %arrayidx566, align 8, !tbaa !0
  %arrayidx567 = getelementptr inbounds i32** %164, i64 %idxprom
  %165 = load i32** %arrayidx567, align 8, !tbaa !0
  %arrayidx568 = getelementptr inbounds i32* %165, i64 1
  %166 = load i32* %arrayidx568, align 4, !tbaa !3
  store i32 %166, i32* getelementptr inbounds ([2 x i32]* @pred_MV_time, i64 0, i64 0), align 4, !tbaa !3
  %167 = load i32* %pix_y541, align 4, !tbaa !3
  %shr572 = ashr i32 %167, 2
  %add573 = add nsw i32 %shr572, %shr1
  %idxprom574 = sext i32 %add573 to i64
  %168 = load i32* %pix_x545, align 4, !tbaa !3
  %shr576 = ashr i32 %168, 2
  %add577 = add nsw i32 %shr576, %shr
  %idxprom578 = sext i32 %add577 to i64
  %arrayidx579 = getelementptr inbounds i32***** %154, i64 %idxprom578
  %169 = load i32***** %arrayidx579, align 8, !tbaa !0
  %arrayidx580 = getelementptr inbounds i32**** %169, i64 %idxprom574
  %170 = load i32**** %arrayidx580, align 8, !tbaa !0
  %arrayidx581 = getelementptr inbounds i32*** %170, i64 %idxprom14
  %171 = load i32*** %arrayidx581, align 8, !tbaa !0
  %arrayidx582 = getelementptr inbounds i32** %171, i64 %idxprom
  %172 = load i32** %arrayidx582, align 8, !tbaa !0
  %arrayidx583 = getelementptr inbounds i32* %172, i64 2
  %173 = load i32* %arrayidx583, align 4, !tbaa !3
  store i32 %173, i32* getelementptr inbounds ([2 x i32]* @pred_MV_time, i64 0, i64 1), align 4, !tbaa !3
  br label %if.end584

if.end584:                                        ; preds = %if.then538, %if.end528
  %cmp585 = icmp eq i32 %list, 1
  br i1 %cmp585, label %land.lhs.true587, label %if.end667

land.lhs.true587:                                 ; preds = %if.end584
  %174 = load i32* @Bframe_ctr, align 4, !tbaa !3
  %rem588 = srem i32 %174, %N_Bframe.0
  %cmp589 = icmp sgt i32 %rem588, 1
  br i1 %cmp589, label %if.then591, label %if.end667

if.then591:                                       ; preds = %land.lhs.true587
  %pix_y594 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %175 = load i32* %pix_y594, align 4, !tbaa !3
  %shr595 = ashr i32 %175, 2
  %add596 = add nsw i32 %shr595, %shr1
  %idxprom597 = sext i32 %add596 to i64
  %pix_x598 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %176 = load i32* %pix_x598, align 4, !tbaa !3
  %shr599 = ashr i32 %176, 2
  %add600 = add nsw i32 %shr599, %shr
  %idxprom601 = sext i32 %add600 to i64
  %177 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx602 = getelementptr inbounds i32***** %177, i64 %idxprom601
  %178 = load i32***** %arrayidx602, align 8, !tbaa !0
  %arrayidx603 = getelementptr inbounds i32**** %178, i64 %idxprom597
  %179 = load i32**** %arrayidx603, align 8, !tbaa !0
  %arrayidx604 = getelementptr inbounds i32*** %179, i64 %idxprom14
  %180 = load i32*** %arrayidx604, align 8, !tbaa !0
  %arrayidx605 = getelementptr inbounds i32** %180, i64 %idxprom
  %181 = load i32** %arrayidx605, align 8, !tbaa !0
  %182 = load i32* %181, align 4, !tbaa !3
  store i32 %182, i32* @pred_SAD_time, align 4, !tbaa !3
  %183 = load i32* %pix_y594, align 4, !tbaa !3
  %shr609 = ashr i32 %183, 2
  %add610 = add nsw i32 %shr609, %shr1
  %idxprom611 = sext i32 %add610 to i64
  %184 = load i32* %pix_x598, align 4, !tbaa !3
  %shr613 = ashr i32 %184, 2
  %add614 = add nsw i32 %shr613, %shr
  %idxprom615 = sext i32 %add614 to i64
  %arrayidx616 = getelementptr inbounds i32***** %177, i64 %idxprom615
  %185 = load i32***** %arrayidx616, align 8, !tbaa !0
  %arrayidx617 = getelementptr inbounds i32**** %185, i64 %idxprom611
  %186 = load i32**** %arrayidx617, align 8, !tbaa !0
  %187 = load i32*** %186, align 8, !tbaa !0
  %arrayidx619 = getelementptr inbounds i32** %187, i64 %idxprom
  %188 = load i32** %arrayidx619, align 8, !tbaa !0
  %arrayidx620 = getelementptr inbounds i32* %188, i64 1
  %189 = load i32* %arrayidx620, align 4, !tbaa !3
  %conv621 = sitofp i32 %189 to double
  %cmp622 = icmp eq i32 %n_Bframe.0, 1
  br i1 %cmp622, label %cond.true624, label %cond.false626

cond.true624:                                     ; preds = %if.then591
  %conv625 = sitofp i32 %N_Bframe.0 to double
  br label %cond.end633

cond.false626:                                    ; preds = %if.then591
  %sub = sub nsw i32 %N_Bframe.0, %n_Bframe.0
  %conv627 = sitofp i32 %sub to double
  %add628 = fadd double %conv627, 1.000000e+00
  %add631 = fadd double %conv627, 2.000000e+00
  %div632 = fdiv double %add628, %add631
  br label %cond.end633

cond.end633:                                      ; preds = %cond.false626, %cond.true624
  %cond634 = phi double [ %conv625, %cond.true624 ], [ %div632, %cond.false626 ]
  %mul = fmul double %conv621, %cond634
  %conv635 = fptosi double %mul to i32
  store i32 %conv635, i32* getelementptr inbounds ([2 x i32]* @pred_MV_time, i64 0, i64 0), align 4, !tbaa !3
  %190 = load i32* %pix_y594, align 4, !tbaa !3
  %shr638 = ashr i32 %190, 2
  %add639 = add nsw i32 %shr638, %shr1
  %idxprom640 = sext i32 %add639 to i64
  %191 = load i32* %pix_x598, align 4, !tbaa !3
  %shr642 = ashr i32 %191, 2
  %add643 = add nsw i32 %shr642, %shr
  %idxprom644 = sext i32 %add643 to i64
  %arrayidx645 = getelementptr inbounds i32***** %177, i64 %idxprom644
  %192 = load i32***** %arrayidx645, align 8, !tbaa !0
  %arrayidx646 = getelementptr inbounds i32**** %192, i64 %idxprom640
  %193 = load i32**** %arrayidx646, align 8, !tbaa !0
  %194 = load i32*** %193, align 8, !tbaa !0
  %arrayidx648 = getelementptr inbounds i32** %194, i64 %idxprom
  %195 = load i32** %arrayidx648, align 8, !tbaa !0
  %arrayidx649 = getelementptr inbounds i32* %195, i64 2
  %196 = load i32* %arrayidx649, align 4, !tbaa !3
  %conv650 = sitofp i32 %196 to double
  br i1 %cmp622, label %cond.true653, label %cond.false655

cond.true653:                                     ; preds = %cond.end633
  %conv654 = sitofp i32 %N_Bframe.0 to double
  br label %cond.end663

cond.false655:                                    ; preds = %cond.end633
  %sub656 = sub nsw i32 %N_Bframe.0, %n_Bframe.0
  %conv657 = sitofp i32 %sub656 to double
  %add658 = fadd double %conv657, 1.000000e+00
  %add661 = fadd double %conv657, 2.000000e+00
  %div662 = fdiv double %add658, %add661
  br label %cond.end663

cond.end663:                                      ; preds = %cond.false655, %cond.true653
  %cond664 = phi double [ %conv654, %cond.true653 ], [ %div662, %cond.false655 ]
  %mul665 = fmul double %conv650, %cond664
  %conv666 = fptosi double %mul665 to i32
  store i32 %conv666, i32* getelementptr inbounds ([2 x i32]* @pred_MV_time, i64 0, i64 1), align 4, !tbaa !3
  br label %if.end667

if.end667:                                        ; preds = %cond.end663, %land.lhs.true587, %if.end584
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 91
  %197 = load i32* %PicInterlace, align 4, !tbaa !3
  %cmp668 = icmp eq i32 %197, 1
  br i1 %cmp668, label %if.then670, label %if.else836

if.then670:                                       ; preds = %if.end667
  %198 = load i32* %type, align 4, !tbaa !3
  %cmp672 = icmp eq i32 %198, 0
  %cmp676 = icmp sgt i16 %ref, 1
  %or.cond = and i1 %cmp672, %cmp676
  br i1 %or.cond, label %if.then678, label %if.end755

if.then678:                                       ; preds = %if.then670
  %sub681 = add nsw i32 %conv534, -2
  %idxprom682 = sext i32 %sub681 to i64
  %pix_y683 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %199 = load i32* %pix_y683, align 4, !tbaa !3
  %shr684 = ashr i32 %199, 2
  %add685 = add nsw i32 %shr684, %shr1
  %idxprom686 = sext i32 %add685 to i64
  %pix_x687 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %200 = load i32* %pix_x687, align 4, !tbaa !3
  %shr688 = ashr i32 %200, 2
  %add689 = add nsw i32 %shr688, %shr
  %idxprom690 = sext i32 %add689 to i64
  %201 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx691 = getelementptr inbounds i32***** %201, i64 %idxprom690
  %202 = load i32***** %arrayidx691, align 8, !tbaa !0
  %arrayidx692 = getelementptr inbounds i32**** %202, i64 %idxprom686
  %203 = load i32**** %arrayidx692, align 8, !tbaa !0
  %arrayidx693 = getelementptr inbounds i32*** %203, i64 %idxprom682
  %204 = load i32*** %arrayidx693, align 8, !tbaa !0
  %arrayidx694 = getelementptr inbounds i32** %204, i64 %idxprom
  %205 = load i32** %arrayidx694, align 8, !tbaa !0
  %206 = load i32* %205, align 4, !tbaa !3
  %cond700 = select i1 %tobool529, i32 0, i32 %206
  store i32 %cond700, i32* @pred_SAD_ref, align 4, !tbaa !3
  %207 = load i32* %pix_y683, align 4, !tbaa !3
  %shr706 = ashr i32 %207, 2
  %add707 = add nsw i32 %shr706, %shr1
  %idxprom708 = sext i32 %add707 to i64
  %208 = load i32* %pix_x687, align 4, !tbaa !3
  %shr710 = ashr i32 %208, 2
  %add711 = add nsw i32 %shr710, %shr
  %idxprom712 = sext i32 %add711 to i64
  %arrayidx713 = getelementptr inbounds i32***** %201, i64 %idxprom712
  %209 = load i32***** %arrayidx713, align 8, !tbaa !0
  %arrayidx714 = getelementptr inbounds i32**** %209, i64 %idxprom708
  %210 = load i32**** %arrayidx714, align 8, !tbaa !0
  %arrayidx715 = getelementptr inbounds i32*** %210, i64 %idxprom682
  %211 = load i32*** %arrayidx715, align 8, !tbaa !0
  %arrayidx716 = getelementptr inbounds i32** %211, i64 %idxprom
  %212 = load i32** %arrayidx716, align 8, !tbaa !0
  %arrayidx717 = getelementptr inbounds i32* %212, i64 1
  %213 = load i32* %arrayidx717, align 4, !tbaa !3
  %shr719 = ashr i32 %conv534, 1
  %add720 = add nsw i32 %shr719, 1
  %mul721 = mul nsw i32 %213, %add720
  %conv722 = sitofp i32 %mul721 to float
  %conv725 = sitofp i32 %shr719 to float
  %div726 = fdiv float %conv722, %conv725
  %conv727 = fptosi float %div726 to i32
  store i32 %conv727, i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 0), align 4, !tbaa !3
  %214 = load i32* %pix_y683, align 4, !tbaa !3
  %shr733 = ashr i32 %214, 2
  %add734 = add nsw i32 %shr733, %shr1
  %idxprom735 = sext i32 %add734 to i64
  %215 = load i32* %pix_x687, align 4, !tbaa !3
  %shr737 = ashr i32 %215, 2
  %add738 = add nsw i32 %shr737, %shr
  %idxprom739 = sext i32 %add738 to i64
  %arrayidx740 = getelementptr inbounds i32***** %201, i64 %idxprom739
  %216 = load i32***** %arrayidx740, align 8, !tbaa !0
  %arrayidx741 = getelementptr inbounds i32**** %216, i64 %idxprom735
  %217 = load i32**** %arrayidx741, align 8, !tbaa !0
  %arrayidx742 = getelementptr inbounds i32*** %217, i64 %idxprom682
  %218 = load i32*** %arrayidx742, align 8, !tbaa !0
  %arrayidx743 = getelementptr inbounds i32** %218, i64 %idxprom
  %219 = load i32** %arrayidx743, align 8, !tbaa !0
  %arrayidx744 = getelementptr inbounds i32* %219, i64 2
  %220 = load i32* %arrayidx744, align 4, !tbaa !3
  %mul748 = mul nsw i32 %220, %add720
  %conv749 = sitofp i32 %mul748 to float
  %div753 = fdiv float %conv749, %conv725
  %conv754 = fptosi float %div753 to i32
  store i32 %conv754, i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 1), align 4, !tbaa !3
  %.pre2174 = load i32* %type, align 4, !tbaa !3
  br label %if.end755

if.end755:                                        ; preds = %if.then678, %if.then670
  %221 = phi i32 [ %.pre2174, %if.then678 ], [ %198, %if.then670 ]
  %cmp757 = icmp eq i32 %221, 1
  %cmp760 = icmp eq i32 %list, 0
  %or.cond2090 = and i1 %cmp757, %cmp760
  %switch = icmp ult i16 %ref, 2
  %or.cond2096 = and i1 %or.cond2090, %switch
  br i1 %or.cond2096, label %if.then769, label %if.end990

if.then769:                                       ; preds = %if.end755
  %pix_y771 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %222 = load i32* %pix_y771, align 4, !tbaa !3
  %shr772 = ashr i32 %222, 2
  %add773 = add nsw i32 %shr772, %shr1
  %idxprom774 = sext i32 %add773 to i64
  %pix_x775 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %223 = load i32* %pix_x775, align 4, !tbaa !3
  %shr776 = ashr i32 %223, 2
  %add777 = add nsw i32 %shr776, %shr
  %idxprom778 = sext i32 %add777 to i64
  %224 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx779 = getelementptr inbounds i32***** %224, i64 %idxprom778
  %225 = load i32***** %arrayidx779, align 8, !tbaa !0
  %arrayidx780 = getelementptr inbounds i32**** %225, i64 %idxprom774
  %226 = load i32**** %arrayidx780, align 8, !tbaa !0
  %227 = load i32*** %226, align 8, !tbaa !0
  %arrayidx782 = getelementptr inbounds i32** %227, i64 %idxprom
  %228 = load i32** %arrayidx782, align 8, !tbaa !0
  %229 = load i32* %228, align 4, !tbaa !3
  %cond788 = select i1 %tobool529, i32 0, i32 %229
  store i32 %cond788, i32* @pred_SAD_ref, align 4, !tbaa !3
  %230 = load i32* %pix_y771, align 4, !tbaa !3
  %shr792 = ashr i32 %230, 2
  %add793 = add nsw i32 %shr792, %shr1
  %idxprom794 = sext i32 %add793 to i64
  %231 = load i32* %pix_x775, align 4, !tbaa !3
  %shr796 = ashr i32 %231, 2
  %add797 = add nsw i32 %shr796, %shr
  %idxprom798 = sext i32 %add797 to i64
  %arrayidx799 = getelementptr inbounds i32***** %224, i64 %idxprom798
  %232 = load i32***** %arrayidx799, align 8, !tbaa !0
  %arrayidx800 = getelementptr inbounds i32**** %232, i64 %idxprom794
  %233 = load i32**** %arrayidx800, align 8, !tbaa !0
  %arrayidx801 = getelementptr inbounds i32*** %233, i64 %idxprom14
  %234 = load i32*** %arrayidx801, align 8, !tbaa !0
  %arrayidx802 = getelementptr inbounds i32** %234, i64 %idxprom
  %235 = load i32** %arrayidx802, align 8, !tbaa !0
  %arrayidx803 = getelementptr inbounds i32* %235, i64 1
  %236 = load i32* %arrayidx803, align 4, !tbaa !3
  %sub804 = sub nsw i32 0, %n_Bframe.0
  %mul805 = mul nsw i32 %236, %sub804
  %conv806 = sitofp i32 %mul805 to float
  %sub807 = sub nsw i32 %N_Bframe.0, %n_Bframe.0
  %conv808 = sitofp i32 %sub807 to float
  %add809 = fadd float %conv808, 1.000000e+00
  %div810 = fdiv float %conv806, %add809
  %conv811 = fptosi float %div810 to i32
  store i32 %conv811, i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 0), align 4, !tbaa !3
  %237 = load i32* %pix_y771, align 4, !tbaa !3
  %shr815 = ashr i32 %237, 2
  %add816 = add nsw i32 %shr815, %shr1
  %idxprom817 = sext i32 %add816 to i64
  %238 = load i32* %pix_x775, align 4, !tbaa !3
  %shr819 = ashr i32 %238, 2
  %add820 = add nsw i32 %shr819, %shr
  %idxprom821 = sext i32 %add820 to i64
  %arrayidx822 = getelementptr inbounds i32***** %224, i64 %idxprom821
  %239 = load i32***** %arrayidx822, align 8, !tbaa !0
  %arrayidx823 = getelementptr inbounds i32**** %239, i64 %idxprom817
  %240 = load i32**** %arrayidx823, align 8, !tbaa !0
  %arrayidx824 = getelementptr inbounds i32*** %240, i64 %idxprom14
  %241 = load i32*** %arrayidx824, align 8, !tbaa !0
  %arrayidx825 = getelementptr inbounds i32** %241, i64 %idxprom
  %242 = load i32** %arrayidx825, align 8, !tbaa !0
  %arrayidx826 = getelementptr inbounds i32* %242, i64 2
  %243 = load i32* %arrayidx826, align 4, !tbaa !3
  %mul828 = mul nsw i32 %243, %sub804
  %conv829 = sitofp i32 %mul828 to float
  %div833 = fdiv float %conv829, %add809
  %conv834 = fptosi float %div833 to i32
  store i32 %conv834, i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 1), align 4, !tbaa !3
  br label %if.end990

if.else836:                                       ; preds = %if.end667
  %cmp838 = icmp sgt i16 %ref, 0
  br i1 %cmp838, label %if.then840, label %if.end911

if.then840:                                       ; preds = %if.else836
  %sub843 = add nsw i32 %conv534, -1
  %idxprom844 = sext i32 %sub843 to i64
  %pix_y845 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %244 = load i32* %pix_y845, align 4, !tbaa !3
  %shr846 = ashr i32 %244, 2
  %add847 = add nsw i32 %shr846, %shr1
  %idxprom848 = sext i32 %add847 to i64
  %pix_x849 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %245 = load i32* %pix_x849, align 4, !tbaa !3
  %shr850 = ashr i32 %245, 2
  %add851 = add nsw i32 %shr850, %shr
  %idxprom852 = sext i32 %add851 to i64
  %246 = load i32****** @all_mincost, align 8, !tbaa !0
  %arrayidx853 = getelementptr inbounds i32***** %246, i64 %idxprom852
  %247 = load i32***** %arrayidx853, align 8, !tbaa !0
  %arrayidx854 = getelementptr inbounds i32**** %247, i64 %idxprom848
  %248 = load i32**** %arrayidx854, align 8, !tbaa !0
  %arrayidx855 = getelementptr inbounds i32*** %248, i64 %idxprom844
  %249 = load i32*** %arrayidx855, align 8, !tbaa !0
  %arrayidx856 = getelementptr inbounds i32** %249, i64 %idxprom
  %250 = load i32** %arrayidx856, align 8, !tbaa !0
  %251 = load i32* %250, align 4, !tbaa !3
  %cond862 = select i1 %tobool529, i32 0, i32 %251
  store i32 %cond862, i32* @pred_SAD_ref, align 4, !tbaa !3
  %252 = load i32* %pix_y845, align 4, !tbaa !3
  %shr868 = ashr i32 %252, 2
  %add869 = add nsw i32 %shr868, %shr1
  %idxprom870 = sext i32 %add869 to i64
  %253 = load i32* %pix_x849, align 4, !tbaa !3
  %shr872 = ashr i32 %253, 2
  %add873 = add nsw i32 %shr872, %shr
  %idxprom874 = sext i32 %add873 to i64
  %arrayidx875 = getelementptr inbounds i32***** %246, i64 %idxprom874
  %254 = load i32***** %arrayidx875, align 8, !tbaa !0
  %arrayidx876 = getelementptr inbounds i32**** %254, i64 %idxprom870
  %255 = load i32**** %arrayidx876, align 8, !tbaa !0
  %arrayidx877 = getelementptr inbounds i32*** %255, i64 %idxprom844
  %256 = load i32*** %arrayidx877, align 8, !tbaa !0
  %arrayidx878 = getelementptr inbounds i32** %256, i64 %idxprom
  %257 = load i32** %arrayidx878, align 8, !tbaa !0
  %arrayidx879 = getelementptr inbounds i32* %257, i64 1
  %258 = load i32* %arrayidx879, align 4, !tbaa !3
  %mul882 = mul nsw i32 %258, %add535
  %conv883 = sitofp i32 %mul882 to float
  %conv884 = sitofp i16 %ref to float
  %div885 = fdiv float %conv883, %conv884
  %conv886 = fptosi float %div885 to i32
  store i32 %conv886, i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 0), align 4, !tbaa !3
  %259 = load i32* %pix_y845, align 4, !tbaa !3
  %shr892 = ashr i32 %259, 2
  %add893 = add nsw i32 %shr892, %shr1
  %idxprom894 = sext i32 %add893 to i64
  %260 = load i32* %pix_x849, align 4, !tbaa !3
  %shr896 = ashr i32 %260, 2
  %add897 = add nsw i32 %shr896, %shr
  %idxprom898 = sext i32 %add897 to i64
  %arrayidx899 = getelementptr inbounds i32***** %246, i64 %idxprom898
  %261 = load i32***** %arrayidx899, align 8, !tbaa !0
  %arrayidx900 = getelementptr inbounds i32**** %261, i64 %idxprom894
  %262 = load i32**** %arrayidx900, align 8, !tbaa !0
  %arrayidx901 = getelementptr inbounds i32*** %262, i64 %idxprom844
  %263 = load i32*** %arrayidx901, align 8, !tbaa !0
  %arrayidx902 = getelementptr inbounds i32** %263, i64 %idxprom
  %264 = load i32** %arrayidx902, align 8, !tbaa !0
  %arrayidx903 = getelementptr inbounds i32* %264, i64 2
  %265 = load i32* %arrayidx903, align 4, !tbaa !3
  %mul906 = mul nsw i32 %265, %add535
  %conv907 = sitofp i32 %mul906 to float
  %div909 = fdiv float %conv907, %conv884
  %conv910 = fptosi float %div909 to i32
  store i32 %conv910, i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 1), align 4, !tbaa !3
  br label %if.end911

if.end911:                                        ; preds = %if.then840, %if.else836
  %266 = load i32* %type, align 4, !tbaa !3
  %cmp913 = icmp eq i32 %266, 1
  %cmp916 = icmp eq i32 %list, 0
  %or.cond2091 = and i1 %cmp913, %cmp916
  %cmp920 = icmp eq i16 %ref, 0
  %or.cond2092 = and i1 %or.cond2091, %cmp920
  br i1 %or.cond2092, label %if.then922, label %if.end990

if.then922:                                       ; preds = %if.end911
  %pix_y924 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 34
  %267 = load i32* %pix_y924, align 4, !tbaa !3
  %shr925 = ashr i32 %267, 2
  %add926 = add nsw i32 %shr925, %shr1
  %idxprom927 = sext i32 %add926 to i64
  %pix_x928 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 33
  %268 = load i32* %pix_x928, align 4, !tbaa !3
  %shr929 = ashr i32 %268, 2
  %add930 = add nsw i32 %shr929, %shr
  %idxprom931 = sext i32 %add930 to i64
  %269 = load i32****** @all_bwmincost, align 8, !tbaa !0
  %arrayidx932 = getelementptr inbounds i32***** %269, i64 %idxprom931
  %270 = load i32***** %arrayidx932, align 8, !tbaa !0
  %arrayidx933 = getelementptr inbounds i32**** %270, i64 %idxprom927
  %271 = load i32**** %arrayidx933, align 8, !tbaa !0
  %272 = load i32*** %271, align 8, !tbaa !0
  %arrayidx935 = getelementptr inbounds i32** %272, i64 %idxprom
  %273 = load i32** %arrayidx935, align 8, !tbaa !0
  %274 = load i32* %273, align 4, !tbaa !3
  %cond941 = select i1 %tobool529, i32 0, i32 %274
  store i32 %cond941, i32* @pred_SAD_ref, align 4, !tbaa !3
  %275 = load i32* %pix_y924, align 4, !tbaa !3
  %shr945 = ashr i32 %275, 2
  %add946 = add nsw i32 %shr945, %shr1
  %idxprom947 = sext i32 %add946 to i64
  %276 = load i32* %pix_x928, align 4, !tbaa !3
  %shr949 = ashr i32 %276, 2
  %add950 = add nsw i32 %shr949, %shr
  %idxprom951 = sext i32 %add950 to i64
  %arrayidx952 = getelementptr inbounds i32***** %269, i64 %idxprom951
  %277 = load i32***** %arrayidx952, align 8, !tbaa !0
  %arrayidx953 = getelementptr inbounds i32**** %277, i64 %idxprom947
  %278 = load i32**** %arrayidx953, align 8, !tbaa !0
  %arrayidx954 = getelementptr inbounds i32*** %278, i64 %idxprom14
  %279 = load i32*** %arrayidx954, align 8, !tbaa !0
  %arrayidx955 = getelementptr inbounds i32** %279, i64 %idxprom
  %280 = load i32** %arrayidx955, align 8, !tbaa !0
  %arrayidx956 = getelementptr inbounds i32* %280, i64 1
  %281 = load i32* %arrayidx956, align 4, !tbaa !3
  %sub957 = sub nsw i32 0, %n_Bframe.0
  %mul958 = mul nsw i32 %281, %sub957
  %conv959 = sitofp i32 %mul958 to float
  %sub960 = sub nsw i32 %N_Bframe.0, %n_Bframe.0
  %conv961 = sitofp i32 %sub960 to float
  %add962 = fadd float %conv961, 1.000000e+00
  %div963 = fdiv float %conv959, %add962
  %conv964 = fptosi float %div963 to i32
  store i32 %conv964, i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 0), align 4, !tbaa !3
  %282 = load i32* %pix_y924, align 4, !tbaa !3
  %shr968 = ashr i32 %282, 2
  %add969 = add nsw i32 %shr968, %shr1
  %idxprom970 = sext i32 %add969 to i64
  %283 = load i32* %pix_x928, align 4, !tbaa !3
  %shr972 = ashr i32 %283, 2
  %add973 = add nsw i32 %shr972, %shr
  %idxprom974 = sext i32 %add973 to i64
  %arrayidx975 = getelementptr inbounds i32***** %269, i64 %idxprom974
  %284 = load i32***** %arrayidx975, align 8, !tbaa !0
  %arrayidx976 = getelementptr inbounds i32**** %284, i64 %idxprom970
  %285 = load i32**** %arrayidx976, align 8, !tbaa !0
  %arrayidx977 = getelementptr inbounds i32*** %285, i64 %idxprom14
  %286 = load i32*** %arrayidx977, align 8, !tbaa !0
  %arrayidx978 = getelementptr inbounds i32** %286, i64 %idxprom
  %287 = load i32** %arrayidx978, align 8, !tbaa !0
  %arrayidx979 = getelementptr inbounds i32* %287, i64 2
  %288 = load i32* %arrayidx979, align 4, !tbaa !3
  %mul981 = mul nsw i32 %288, %sub957
  %conv982 = sitofp i32 %mul981 to float
  %div986 = fdiv float %conv982, %add962
  %conv987 = fptosi float %div986 to i32
  store i32 %conv987, i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 1), align 4, !tbaa !3
  br label %if.end990

if.end990:                                        ; preds = %if.end911, %if.end755, %for.end39, %if.then769, %if.then922
  %289 = load i32* %FMEnable, align 4, !tbaa !3
  %tobool992 = icmp eq i32 %289, 0
  br i1 %tobool992, label %if.end994, label %if.then993

if.then993:                                       ; preds = %if.end990
  store i32 %blocktype, i32* @FME_blocktype, align 4, !tbaa !3
  br label %if.end994

if.end994:                                        ; preds = %if.end990, %if.then993
  %ref_idx = getelementptr inbounds %struct.storable_picture* %6, i64 0, i32 32
  %290 = load i16**** %ref_idx, align 8, !tbaa !0
  call void @SetMotionVectorPredictor(i16* %18, i16*** %290, i16**** %7, i16 signext %ref, i32 %list, i32 %shr, i32 %shr1, i32 %1, i32 %2) #8
  %291 = load i16* %18, align 2, !tbaa !4
  %arrayidx997 = getelementptr inbounds i16* %18, i64 1
  %292 = load i16* %arrayidx997, align 2, !tbaa !4
  %293 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %FMEnable998 = getelementptr inbounds %struct.InputParameters* %293, i64 0, i32 134
  %294 = load i32* %FMEnable998, align 4, !tbaa !3
  %tobool999 = icmp eq i32 %294, 0
  br i1 %tobool999, label %if.else1115, label %if.then1000

if.then1000:                                      ; preds = %if.end994
  %conv1001 = sext i16 %291 to i32
  %div1002 = sdiv i32 %conv1001, 4
  %conv1003 = trunc i32 %div1002 to i16
  store i16 %conv1003, i16* %mv_x, align 2, !tbaa !4
  %conv1004 = sext i16 %292 to i32
  %div1005 = sdiv i32 %conv1004, 4
  %conv1006 = trunc i32 %div1005 to i16
  store i16 %conv1006, i16* %mv_y, align 2, !tbaa !4
  %rdopt = getelementptr inbounds %struct.InputParameters* %293, i64 0, i32 85
  %295 = load i32* %rdopt, align 4, !tbaa !3
  %tobool1007 = icmp eq i32 %295, 0
  br i1 %tobool1007, label %if.then1008, label %if.end1059

if.then1008:                                      ; preds = %if.then1000
  %sub1009 = sub nsw i32 0, %search_range
  %sext = shl i32 %div1002, 16
  %conv1010 = ashr exact i32 %sext, 16
  %cmp1011 = icmp sgt i32 %conv1010, %search_range
  %search_range.conv1010 = select i1 %cmp1011, i32 %search_range, i32 %conv1010
  %cmp1018 = icmp slt i32 %search_range.conv1010, %sub1009
  %sub1009.search_range.conv1010 = select i1 %cmp1018, i32 %sub1009, i32 %search_range.conv1010
  %conv1033 = trunc i32 %sub1009.search_range.conv1010 to i16
  store i16 %conv1033, i16* %mv_x, align 2, !tbaa !4
  %sext2181 = shl i32 %div1005, 16
  %conv1035 = ashr exact i32 %sext2181, 16
  %cmp1036 = icmp sgt i32 %conv1035, %search_range
  %search_range.conv1035 = select i1 %cmp1036, i32 %search_range, i32 %conv1035
  %cmp1043 = icmp slt i32 %search_range.conv1035, %sub1009
  %cond1057 = select i1 %cmp1043, i32 %sub1009, i32 %search_range.conv1035
  %conv1058 = trunc i32 %cond1057 to i16
  store i16 %conv1058, i16* %mv_y, align 2, !tbaa !4
  br label %if.end1059

if.end1059:                                       ; preds = %if.then1000, %if.then1008
  %call = call i32 @FastIntegerPelBlockMotionSearch(i16** getelementptr inbounds ([16 x i16*]* @BlockMotionSearch.orig_pic, i64 0, i64 0), i16 signext %ref, i32 %list, i32 %add, i32 %add7, i32 %blocktype, i16 signext %291, i16 signext %292, i16* %mv_x, i16* %mv_y, i32 %search_range, i32 2147483647, double %lambda) #7
  %shr1061 = ashr i32 %1, 2
  %cmp10622123 = icmp sgt i32 %shr1061, 0
  br i1 %cmp10622123, label %for.cond1065.preheader.lr.ph, label %if.end1117

for.cond1065.preheader.lr.ph:                     ; preds = %if.end1059
  %shr1066 = ashr i32 %2, 2
  %cmp10672121 = icmp sgt i32 %shr1066, 0
  %cmp1070 = icmp eq i32 %list, 0
  %296 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pix_y1075 = getelementptr inbounds %struct.ImageParameters* %296, i64 0, i32 34
  %pix_x1080 = getelementptr inbounds %struct.ImageParameters* %296, i64 0, i32 33
  %297 = load i32****** @all_mincost, align 8, !tbaa !0
  %298 = load i32****** @all_bwmincost, align 8, !tbaa !0
  br label %for.cond1065.preheader

for.cond1065.preheader:                           ; preds = %for.inc1112, %for.cond1065.preheader.lr.ph
  %i.12124 = phi i32 [ 0, %for.cond1065.preheader.lr.ph ], [ %inc1113, %for.inc1112 ]
  br i1 %cmp10672121, label %for.body1069.lr.ph, label %for.inc1112

for.body1069.lr.ph:                               ; preds = %for.cond1065.preheader
  %add1082 = add i32 %i.12124, %shr
  br label %for.body1069

for.body1069:                                     ; preds = %for.inc1109, %for.body1069.lr.ph
  %j.12122 = phi i32 [ 0, %for.body1069.lr.ph ], [ %inc1110, %for.inc1109 ]
  %299 = load i32* %pix_y1075, align 4, !tbaa !3
  %shr1076 = ashr i32 %299, 2
  %add1077 = add i32 %j.12122, %shr1
  %add1078 = add i32 %add1077, %shr1076
  %idxprom1079 = sext i32 %add1078 to i64
  %300 = load i32* %pix_x1080, align 4, !tbaa !3
  %shr1081 = ashr i32 %300, 2
  %add1083 = add i32 %add1082, %shr1081
  %idxprom1084 = sext i32 %add1083 to i64
  br i1 %cmp1070, label %if.then1072, label %if.else1090

if.then1072:                                      ; preds = %for.body1069
  %arrayidx1085 = getelementptr inbounds i32***** %297, i64 %idxprom1084
  %301 = load i32***** %arrayidx1085, align 8, !tbaa !0
  %arrayidx1086 = getelementptr inbounds i32**** %301, i64 %idxprom1079
  %302 = load i32**** %arrayidx1086, align 8, !tbaa !0
  %arrayidx1087 = getelementptr inbounds i32*** %302, i64 %idxprom14
  %303 = load i32*** %arrayidx1087, align 8, !tbaa !0
  %arrayidx1088 = getelementptr inbounds i32** %303, i64 %idxprom
  %304 = load i32** %arrayidx1088, align 8, !tbaa !0
  store i32 %call, i32* %304, align 4, !tbaa !3
  br label %for.inc1109

if.else1090:                                      ; preds = %for.body1069
  %arrayidx1103 = getelementptr inbounds i32***** %298, i64 %idxprom1084
  %305 = load i32***** %arrayidx1103, align 8, !tbaa !0
  %arrayidx1104 = getelementptr inbounds i32**** %305, i64 %idxprom1079
  %306 = load i32**** %arrayidx1104, align 8, !tbaa !0
  %arrayidx1105 = getelementptr inbounds i32*** %306, i64 %idxprom14
  %307 = load i32*** %arrayidx1105, align 8, !tbaa !0
  %arrayidx1106 = getelementptr inbounds i32** %307, i64 %idxprom
  %308 = load i32** %arrayidx1106, align 8, !tbaa !0
  store i32 %call, i32* %308, align 4, !tbaa !3
  br label %for.inc1109

for.inc1109:                                      ; preds = %if.then1072, %if.else1090
  %inc1110 = add nsw i32 %j.12122, 1
  %exitcond2160 = icmp eq i32 %inc1110, %shr1066
  br i1 %exitcond2160, label %for.inc1112, label %for.body1069

for.inc1112:                                      ; preds = %for.inc1109, %for.cond1065.preheader
  %inc1113 = add nsw i32 %i.12124, 1
  %exitcond2161 = icmp eq i32 %inc1113, %shr1061
  br i1 %exitcond2161, label %if.end1117, label %for.cond1065.preheader

if.else1115:                                      ; preds = %if.end994
  %call1116 = call i32 @FastFullPelBlockMotionSearch(i16** undef, i16 signext %ref, i32 %list, i32 %add, i32 %add7, i32 %blocktype, i16 signext %291, i16 signext %292, i16* %mv_x, i16* %mv_y, i32 %search_range, i32 2147483647, double %lambda) #8
  br label %if.end1117

if.end1117:                                       ; preds = %if.end1059, %for.inc1112, %if.else1115
  %min_mcost.0 = phi i32 [ %call1116, %if.else1115 ], [ %call, %for.inc1112 ], [ %call, %if.end1059 ]
  %309 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %hadamard = getelementptr inbounds %struct.InputParameters* %309, i64 0, i32 6
  %310 = load i32* %hadamard, align 4, !tbaa !3
  %tobool1118 = icmp eq i32 %310, 0
  br i1 %tobool1118, label %if.end1122, label %land.lhs.true1119

land.lhs.true1119:                                ; preds = %if.end1117
  %hadamardqpel = getelementptr inbounds %struct.InputParameters* %309, i64 0, i32 7
  %311 = load i32* %hadamardqpel, align 4, !tbaa !3
  %tobool1120 = icmp eq i32 %311, 0
  %.min_mcost.0 = select i1 %tobool1120, i32 2147483647, i32 %min_mcost.0
  br label %if.end1122

if.end1122:                                       ; preds = %land.lhs.true1119, %if.end1117
  %min_mcost.1 = phi i32 [ %min_mcost.0, %if.end1117 ], [ %.min_mcost.0, %land.lhs.true1119 ]
  %FMEnable1123 = getelementptr inbounds %struct.InputParameters* %309, i64 0, i32 134
  %312 = load i32* %FMEnable1123, align 4, !tbaa !3
  %tobool1124 = icmp eq i32 %312, 0
  br i1 %tobool1124, label %if.else1226, label %if.then1125

if.then1125:                                      ; preds = %if.end1122
  %cmp1126 = icmp sgt i32 %blocktype, 3
  br i1 %cmp1126, label %if.then1128, label %if.else1130

if.then1128:                                      ; preds = %if.then1125
  %call1129 = call i32 @FastSubPelBlockMotionSearch(i16** getelementptr inbounds ([16 x i16*]* @BlockMotionSearch.orig_pic, i64 0, i64 0), i16 signext %ref, i32 %list, i32 %add, i32 %add7, i32 %blocktype, i16 signext %291, i16 signext %292, i16* %mv_x, i16* %mv_y, i32 9, i32 9, i32 %min_mcost.1, double %lambda, i32 0) #7
  br label %if.end1132

if.else1130:                                      ; preds = %if.then1125
  %call1131 = call i32 @SubPelBlockMotionSearch(i16** getelementptr inbounds ([16 x i16*]* @BlockMotionSearch.orig_pic, i64 0, i64 0), i16 signext %ref, i32 %list, i32 %add, i32 %add7, i32 %blocktype, i16 signext %291, i16 signext %292, i16* %mv_x, i16* %mv_y, i32 9, i32 9, i32 %min_mcost.1, double %lambda) #8
  br label %if.end1132

if.end1132:                                       ; preds = %if.else1130, %if.then1128
  %min_mcost.2 = phi i32 [ %call1129, %if.then1128 ], [ %call1131, %if.else1130 ]
  %shr1134 = ashr i32 %1, 2
  %cmp11352119 = icmp sgt i32 %shr1134, 0
  br i1 %cmp11352119, label %for.cond1138.preheader.lr.ph, label %if.end1235

for.cond1138.preheader.lr.ph:                     ; preds = %if.end1132
  %shr1139 = ashr i32 %2, 2
  %cmp11402117 = icmp sgt i32 %shr1139, 0
  %cmp1143 = icmp eq i32 %list, 0
  %313 = load i16* %mv_x, align 2, !tbaa !4
  %conv1146 = sext i16 %313 to i32
  %314 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pix_y1149 = getelementptr inbounds %struct.ImageParameters* %314, i64 0, i32 34
  %pix_x1154 = getelementptr inbounds %struct.ImageParameters* %314, i64 0, i32 33
  %315 = load i32****** @all_mincost, align 8, !tbaa !0
  %316 = load i16* %mv_y, align 2, !tbaa !4
  %conv1164 = sext i16 %316 to i32
  %317 = load i32****** @all_bwmincost, align 8, !tbaa !0
  br label %for.cond1138.preheader

for.cond1138.preheader:                           ; preds = %for.inc1223, %for.cond1138.preheader.lr.ph
  %i.22120 = phi i32 [ 0, %for.cond1138.preheader.lr.ph ], [ %inc1224, %for.inc1223 ]
  br i1 %cmp11402117, label %for.body1142.lr.ph, label %for.inc1223

for.body1142.lr.ph:                               ; preds = %for.cond1138.preheader
  %add1156 = add i32 %i.22120, %shr
  br label %for.body1142

for.body1142:                                     ; preds = %for.inc1220, %for.body1142.lr.ph
  %j.22118 = phi i32 [ 0, %for.body1142.lr.ph ], [ %inc1221, %for.inc1220 ]
  %318 = load i32* %pix_y1149, align 4, !tbaa !3
  %shr1150 = ashr i32 %318, 2
  %add1151 = add i32 %j.22118, %shr1
  %add1152 = add i32 %add1151, %shr1150
  %idxprom1153 = sext i32 %add1152 to i64
  %319 = load i32* %pix_x1154, align 4, !tbaa !3
  %shr1155 = ashr i32 %319, 2
  %add1157 = add i32 %add1156, %shr1155
  %idxprom1158 = sext i32 %add1157 to i64
  br i1 %cmp1143, label %if.then1145, label %if.else1182

if.then1145:                                      ; preds = %for.body1142
  %arrayidx1159 = getelementptr inbounds i32***** %315, i64 %idxprom1158
  %320 = load i32***** %arrayidx1159, align 8, !tbaa !0
  %arrayidx1160 = getelementptr inbounds i32**** %320, i64 %idxprom1153
  %321 = load i32**** %arrayidx1160, align 8, !tbaa !0
  %arrayidx1161 = getelementptr inbounds i32*** %321, i64 %idxprom14
  %322 = load i32*** %arrayidx1161, align 8, !tbaa !0
  %arrayidx1162 = getelementptr inbounds i32** %322, i64 %idxprom
  %323 = load i32** %arrayidx1162, align 8, !tbaa !0
  %arrayidx1163 = getelementptr inbounds i32* %323, i64 1
  store i32 %conv1146, i32* %arrayidx1163, align 4, !tbaa !3
  %324 = load i32* %pix_y1149, align 4, !tbaa !3
  %shr1168 = ashr i32 %324, 2
  %add1170 = add i32 %add1151, %shr1168
  %idxprom1171 = sext i32 %add1170 to i64
  %325 = load i32* %pix_x1154, align 4, !tbaa !3
  %shr1173 = ashr i32 %325, 2
  %add1175 = add i32 %add1156, %shr1173
  %idxprom1176 = sext i32 %add1175 to i64
  %arrayidx1177 = getelementptr inbounds i32***** %315, i64 %idxprom1176
  %326 = load i32***** %arrayidx1177, align 8, !tbaa !0
  %arrayidx1178 = getelementptr inbounds i32**** %326, i64 %idxprom1171
  %327 = load i32**** %arrayidx1178, align 8, !tbaa !0
  %arrayidx1179 = getelementptr inbounds i32*** %327, i64 %idxprom14
  %328 = load i32*** %arrayidx1179, align 8, !tbaa !0
  %arrayidx1180 = getelementptr inbounds i32** %328, i64 %idxprom
  %329 = load i32** %arrayidx1180, align 8, !tbaa !0
  %arrayidx1181 = getelementptr inbounds i32* %329, i64 2
  store i32 %conv1164, i32* %arrayidx1181, align 4, !tbaa !3
  br label %for.inc1220

if.else1182:                                      ; preds = %for.body1142
  %arrayidx1196 = getelementptr inbounds i32***** %317, i64 %idxprom1158
  %330 = load i32***** %arrayidx1196, align 8, !tbaa !0
  %arrayidx1197 = getelementptr inbounds i32**** %330, i64 %idxprom1153
  %331 = load i32**** %arrayidx1197, align 8, !tbaa !0
  %arrayidx1198 = getelementptr inbounds i32*** %331, i64 %idxprom14
  %332 = load i32*** %arrayidx1198, align 8, !tbaa !0
  %arrayidx1199 = getelementptr inbounds i32** %332, i64 %idxprom
  %333 = load i32** %arrayidx1199, align 8, !tbaa !0
  %arrayidx1200 = getelementptr inbounds i32* %333, i64 1
  store i32 %conv1146, i32* %arrayidx1200, align 4, !tbaa !3
  %334 = load i32* %pix_y1149, align 4, !tbaa !3
  %shr1205 = ashr i32 %334, 2
  %add1207 = add i32 %add1151, %shr1205
  %idxprom1208 = sext i32 %add1207 to i64
  %335 = load i32* %pix_x1154, align 4, !tbaa !3
  %shr1210 = ashr i32 %335, 2
  %add1212 = add i32 %add1156, %shr1210
  %idxprom1213 = sext i32 %add1212 to i64
  %arrayidx1214 = getelementptr inbounds i32***** %317, i64 %idxprom1213
  %336 = load i32***** %arrayidx1214, align 8, !tbaa !0
  %arrayidx1215 = getelementptr inbounds i32**** %336, i64 %idxprom1208
  %337 = load i32**** %arrayidx1215, align 8, !tbaa !0
  %arrayidx1216 = getelementptr inbounds i32*** %337, i64 %idxprom14
  %338 = load i32*** %arrayidx1216, align 8, !tbaa !0
  %arrayidx1217 = getelementptr inbounds i32** %338, i64 %idxprom
  %339 = load i32** %arrayidx1217, align 8, !tbaa !0
  %arrayidx1218 = getelementptr inbounds i32* %339, i64 2
  store i32 %conv1164, i32* %arrayidx1218, align 4, !tbaa !3
  br label %for.inc1220

for.inc1220:                                      ; preds = %if.then1145, %if.else1182
  %inc1221 = add nsw i32 %j.22118, 1
  %exitcond2158 = icmp eq i32 %inc1221, %shr1139
  br i1 %exitcond2158, label %for.inc1223, label %for.body1142

for.inc1223:                                      ; preds = %for.inc1220, %for.cond1138.preheader
  %inc1224 = add nsw i32 %i.22120, 1
  %exitcond2159 = icmp eq i32 %inc1224, %shr1134
  br i1 %exitcond2159, label %if.end1235, label %for.cond1138.preheader

if.else1226:                                      ; preds = %if.end1122
  br i1 %tobool1118, label %if.end1233, label %land.lhs.true1229

land.lhs.true1229:                                ; preds = %if.else1226
  %hadamardqpel1230 = getelementptr inbounds %struct.InputParameters* %309, i64 0, i32 7
  %340 = load i32* %hadamardqpel1230, align 4, !tbaa !3
  %tobool1231 = icmp eq i32 %340, 0
  %.min_mcost.1 = select i1 %tobool1231, i32 2147483647, i32 %min_mcost.1
  br label %if.end1233

if.end1233:                                       ; preds = %land.lhs.true1229, %if.else1226
  %min_mcost.3 = phi i32 [ %min_mcost.1, %if.else1226 ], [ %.min_mcost.1, %land.lhs.true1229 ]
  %call1234 = call i32 @SubPelBlockMotionSearch(i16** getelementptr inbounds ([16 x i16*]* @BlockMotionSearch.orig_pic, i64 0, i64 0), i16 signext %ref, i32 %list, i32 %add, i32 %add7, i32 %blocktype, i16 signext %291, i16 signext %292, i16* %mv_x, i16* %mv_y, i32 9, i32 9, i32 %min_mcost.3, double %lambda) #8
  br label %if.end1235

if.end1235:                                       ; preds = %if.end1132, %for.inc1223, %if.end1233
  %min_mcost.4 = phi i32 [ %call1234, %if.end1233 ], [ %min_mcost.2, %for.inc1223 ], [ %min_mcost.2, %if.end1132 ]
  %341 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt1236 = getelementptr inbounds %struct.InputParameters* %341, i64 0, i32 85
  %342 = load i32* %rdopt1236, align 4, !tbaa !3
  %tobool1237 = icmp eq i32 %342, 0
  %cmp1239 = icmp eq i32 %blocktype, 1
  %or.cond2093 = and i1 %tobool1237, %cmp1239
  br i1 %or.cond2093, label %land.lhs.true1241, label %if.end1275

land.lhs.true1241:                                ; preds = %if.end1235
  %343 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type1242 = getelementptr inbounds %struct.ImageParameters* %343, i64 0, i32 6
  %344 = load i32* %type1242, align 4, !tbaa !3
  switch i32 %344, label %if.end1275 [
    i32 0, label %if.then1249
    i32 3, label %if.then1249
  ]

if.then1249:                                      ; preds = %land.lhs.true1241, %land.lhs.true1241
  call void @FindSkipModeMotionVector() #8
  %call1250 = call i32 @GetSkipCostMB(double undef) #8
  %mul1251 = fmul double %lambda, 8.000000e+00
  %add1252 = fadd double %mul1251, 4.999000e-01
  %call1253 = call double @floor(double %add1252) #9
  %conv1254 = fptosi double %call1253 to i32
  %sub1255 = sub nsw i32 %call1250, %conv1254
  %cmp1256 = icmp slt i32 %sub1255, %min_mcost.4
  br i1 %cmp1256, label %if.then1258, label %if.end1275

if.then1258:                                      ; preds = %if.then1249
  %345 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %all_mv1259 = getelementptr inbounds %struct.ImageParameters* %345, i64 0, i32 71
  %346 = load i16******* %all_mv1259, align 8, !tbaa !0
  %347 = load i16****** %346, align 8, !tbaa !0
  %348 = load i16***** %347, align 8, !tbaa !0
  %349 = load i16**** %348, align 8, !tbaa !0
  %350 = load i16*** %349, align 8, !tbaa !0
  %351 = load i16** %350, align 8, !tbaa !0
  %352 = load i16* %351, align 2, !tbaa !4
  store i16 %352, i16* %mv_x, align 2, !tbaa !4
  %arrayidx1272 = getelementptr inbounds i16* %351, i64 1
  %353 = load i16* %arrayidx1272, align 2, !tbaa !4
  store i16 %353, i16* %mv_y, align 2, !tbaa !4
  br label %if.end1275

if.end1275:                                       ; preds = %if.then1249, %land.lhs.true1241, %if.end1235, %if.then1258
  %min_mcost.5 = phi i32 [ %min_mcost.4, %if.end1235 ], [ %sub1255, %if.then1258 ], [ %min_mcost.4, %land.lhs.true1241 ], [ %min_mcost.4, %if.then1249 ]
  %354 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %FMEnable1276 = getelementptr inbounds %struct.InputParameters* %354, i64 0, i32 134
  %355 = load i32* %FMEnable1276, align 4, !tbaa !3
  %tobool1277 = icmp eq i32 %355, 0
  br i1 %tobool1277, label %for.cond1342.preheader, label %if.then1278

for.cond1342.preheader:                           ; preds = %if.end1275
  %shr1343 = ashr i32 %1, 2
  %cmp13442110 = icmp sgt i32 %shr1343, 0
  br i1 %cmp13442110, label %for.cond1347.preheader.lr.ph, label %if.end1384.loopexit

for.cond1347.preheader.lr.ph:                     ; preds = %for.cond1342.preheader
  %shr1348 = ashr i32 %2, 2
  %cmp13492108 = icmp sgt i32 %shr1348, 0
  br label %for.cond1347.preheader

if.then1278:                                      ; preds = %if.end1275
  %356 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %shr1286 = ashr i32 %1, 2
  %cmp12872115 = icmp sgt i32 %shr1286, 0
  br i1 %cmp12872115, label %for.cond1290.preheader.lr.ph, label %if.end1384

for.cond1290.preheader.lr.ph:                     ; preds = %if.then1278
  %pix_y1282 = getelementptr inbounds %struct.ImageParameters* %356, i64 0, i32 34
  %pix_x1279 = getelementptr inbounds %struct.ImageParameters* %356, i64 0, i32 33
  %357 = load i32* %pix_y1282, align 4, !tbaa !3
  %358 = load i32* %pix_x1279, align 4, !tbaa !3
  %shr1283 = ashr i32 %357, 2
  %shr1280 = ashr i32 %358, 2
  %add1284 = add nsw i32 %shr1283, %shr1
  %add1281 = add nsw i32 %shr1280, %shr
  %shr1291 = ashr i32 %2, 2
  %cmp12922112 = icmp sgt i32 %shr1291, 0
  %359 = sext i32 %add1284 to i64
  %360 = sext i32 %add1281 to i64
  br label %for.cond1290.preheader

for.cond1290.preheader:                           ; preds = %for.inc1338, %for.cond1290.preheader.lr.ph
  %indvars.iv2152 = phi i64 [ 0, %for.cond1290.preheader.lr.ph ], [ %indvars.iv.next2153, %for.inc1338 ]
  br i1 %cmp12922112, label %for.body1294.lr.ph, label %for.inc1338

for.body1294.lr.ph:                               ; preds = %for.cond1290.preheader
  %361 = add nsw i64 %indvars.iv2152, %idxprom17
  %arrayidx1302 = getelementptr inbounds i16****** %9, i64 %361
  %362 = load i16****** %arrayidx1302, align 8, !tbaa !0
  %363 = add nsw i64 %360, %indvars.iv2152
  %arrayidx1325 = getelementptr inbounds i16*** %8, i64 %363
  %364 = load i16*** %arrayidx1325, align 8, !tbaa !0
  br label %for.body1294

for.body1294:                                     ; preds = %for.body1294, %for.body1294.lr.ph
  %indvars.iv2146 = phi i64 [ 0, %for.body1294.lr.ph ], [ %indvars.iv.next2147, %for.body1294 ]
  %365 = load i16* %mv_x, align 2, !tbaa !4
  %366 = add nsw i64 %indvars.iv2146, %idxprom16
  %arrayidx1303 = getelementptr inbounds i16***** %362, i64 %366
  %367 = load i16***** %arrayidx1303, align 8, !tbaa !0
  %arrayidx1304 = getelementptr inbounds i16**** %367, i64 %idxprom8
  %368 = load i16**** %arrayidx1304, align 8, !tbaa !0
  %arrayidx1305 = getelementptr inbounds i16*** %368, i64 %idxprom14
  %369 = load i16*** %arrayidx1305, align 8, !tbaa !0
  %arrayidx1306 = getelementptr inbounds i16** %369, i64 %idxprom
  %370 = load i16** %arrayidx1306, align 8, !tbaa !0
  store i16 %365, i16* %370, align 2, !tbaa !4
  %371 = load i16* %mv_y, align 2, !tbaa !4
  %arrayidx1320 = getelementptr inbounds i16* %370, i64 1
  store i16 %371, i16* %arrayidx1320, align 2, !tbaa !4
  %372 = load i16* %mv_x, align 2, !tbaa !4
  %373 = add nsw i64 %359, %indvars.iv2146
  %arrayidx1326 = getelementptr inbounds i16** %364, i64 %373
  %374 = load i16** %arrayidx1326, align 8, !tbaa !0
  store i16 %372, i16* %374, align 2, !tbaa !4
  %375 = load i16* %mv_y, align 2, !tbaa !4
  %arrayidx1334 = getelementptr inbounds i16* %374, i64 1
  store i16 %375, i16* %arrayidx1334, align 2, !tbaa !4
  %indvars.iv.next2147 = add i64 %indvars.iv2146, 1
  %lftr.wideiv2150 = trunc i64 %indvars.iv.next2147 to i32
  %exitcond2151 = icmp eq i32 %lftr.wideiv2150, %shr1291
  br i1 %exitcond2151, label %for.inc1338, label %for.body1294

for.inc1338:                                      ; preds = %for.body1294, %for.cond1290.preheader
  %indvars.iv.next2153 = add i64 %indvars.iv2152, 1
  %lftr.wideiv2156 = trunc i64 %indvars.iv.next2153 to i32
  %exitcond2157 = icmp eq i32 %lftr.wideiv2156, %shr1286
  br i1 %exitcond2157, label %if.end1384, label %for.cond1290.preheader

for.cond1347.preheader:                           ; preds = %for.inc1381, %for.cond1347.preheader.lr.ph
  %indvars.iv2141 = phi i64 [ 0, %for.cond1347.preheader.lr.ph ], [ %indvars.iv.next2142, %for.inc1381 ]
  br i1 %cmp13492108, label %for.body1351.lr.ph, label %for.inc1381

for.body1351.lr.ph:                               ; preds = %for.cond1347.preheader
  %376 = add nsw i64 %indvars.iv2141, %idxprom17
  %arrayidx1359 = getelementptr inbounds i16****** %9, i64 %376
  %377 = load i16****** %arrayidx1359, align 8, !tbaa !0
  br label %for.body1351

for.body1351:                                     ; preds = %for.body1351, %for.body1351.lr.ph
  %indvars.iv2136 = phi i64 [ 0, %for.body1351.lr.ph ], [ %indvars.iv.next2137, %for.body1351 ]
  %378 = load i16* %mv_x, align 2, !tbaa !4
  %379 = add nsw i64 %indvars.iv2136, %idxprom16
  %arrayidx1360 = getelementptr inbounds i16***** %377, i64 %379
  %380 = load i16***** %arrayidx1360, align 8, !tbaa !0
  %arrayidx1361 = getelementptr inbounds i16**** %380, i64 %idxprom8
  %381 = load i16**** %arrayidx1361, align 8, !tbaa !0
  %arrayidx1362 = getelementptr inbounds i16*** %381, i64 %idxprom14
  %382 = load i16*** %arrayidx1362, align 8, !tbaa !0
  %arrayidx1363 = getelementptr inbounds i16** %382, i64 %idxprom
  %383 = load i16** %arrayidx1363, align 8, !tbaa !0
  store i16 %378, i16* %383, align 2, !tbaa !4
  %384 = load i16* %mv_y, align 2, !tbaa !4
  %arrayidx1377 = getelementptr inbounds i16* %383, i64 1
  store i16 %384, i16* %arrayidx1377, align 2, !tbaa !4
  %indvars.iv.next2137 = add i64 %indvars.iv2136, 1
  %lftr.wideiv2139 = trunc i64 %indvars.iv.next2137 to i32
  %exitcond2140 = icmp eq i32 %lftr.wideiv2139, %shr1348
  br i1 %exitcond2140, label %for.inc1381, label %for.body1351

for.inc1381:                                      ; preds = %for.body1351, %for.cond1347.preheader
  %indvars.iv.next2142 = add i64 %indvars.iv2141, 1
  %lftr.wideiv2144 = trunc i64 %indvars.iv.next2142 to i32
  %exitcond2145 = icmp eq i32 %lftr.wideiv2144, %shr1343
  br i1 %exitcond2145, label %if.end1384.loopexit, label %for.cond1347.preheader

if.end1384.loopexit:                              ; preds = %for.inc1381, %for.cond1342.preheader
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end1384

if.end1384:                                       ; preds = %if.then1278, %for.inc1338, %if.end1384.loopexit
  %385 = phi %struct.ImageParameters* [ %.pre, %if.end1384.loopexit ], [ %356, %for.inc1338 ], [ %356, %if.then1278 ]
  %type1385 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 6
  %386 = load i32* %type1385, align 4, !tbaa !3
  %cmp1386 = icmp eq i32 %386, 1
  br i1 %cmp1386, label %land.lhs.true1388, label %if.end1569

land.lhs.true1388:                                ; preds = %if.end1384
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters* %354, i64 0, i32 39
  %387 = load i32* %BiPredMotionEstimation, align 4, !tbaa !3
  %cmp1389 = icmp ne i32 %387, 0
  %or.cond2094 = and i1 %cmp1389, %cmp1239
  %cmp1396 = icmp eq i16 %ref, 0
  %or.cond2095 = and i1 %or.cond2094, %cmp1396
  br i1 %or.cond2095, label %if.then1398, label %if.end1569

if.then1398:                                      ; preds = %land.lhs.true1388
  %tobool1399 = icmp eq i32 %list, 0
  %bipred_mv1 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 72
  %bipred_mv2 = getelementptr inbounds %struct.ImageParameters* %385, i64 0, i32 73
  %cond1403.in = select i1 %tobool1399, i16******* %bipred_mv2, i16******* %bipred_mv1
  %cond1403 = load i16******* %cond1403.in, align 8
  %conv1404 = trunc i32 %list to i16
  %arraydecay = getelementptr inbounds [2 x i16]* %pred_mv_bi, i64 0, i64 0
  %388 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx1405 = getelementptr inbounds %struct.storable_picture* %388, i64 0, i32 32
  %389 = load i16**** %ref_idx1405, align 8, !tbaa !0
  %mv1406 = getelementptr inbounds %struct.storable_picture* %388, i64 0, i32 35
  %390 = load i16***** %mv1406, align 8, !tbaa !0
  %cond1409 = zext i1 %tobool1399 to i32
  call void @SetMotionVectorPredictor(i16* %arraydecay, i16*** %389, i16**** %390, i16 signext 0, i32 %cond1409, i32 %shr, i32 %shr1, i32 %1, i32 %2) #8
  %391 = load i16* %mv_x, align 2, !tbaa !4
  %conv1410 = sext i16 %391 to i32
  %add1411 = add nsw i32 %conv1410, 2
  %shr14122078 = lshr i32 %add1411, 2
  %conv1413 = trunc i32 %shr14122078 to i16
  store i16 %conv1413, i16* %mv_x, align 2, !tbaa !4
  %392 = load i16* %mv_y, align 2, !tbaa !4
  %conv1414 = sext i16 %392 to i32
  %add1415 = add nsw i32 %conv1414, 2
  %shr14162079 = lshr i32 %add1415, 2
  %conv1417 = trunc i32 %shr14162079 to i16
  store i16 %conv1417, i16* %mv_y, align 2, !tbaa !4
  %393 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %BiPredMERefinements2101 = getelementptr inbounds %struct.InputParameters* %393, i64 0, i32 40
  %394 = load i32* %BiPredMERefinements2101, align 4, !tbaa !3
  %cmp14192102 = icmp slt i32 %394, 0
  br i1 %cmp14192102, label %for.end1458, label %for.body1421.lr.ph

for.body1421.lr.ph:                               ; preds = %if.then1398
  %395 = load i16* %arraydecay, align 2, !tbaa !4
  %arrayidx1437 = getelementptr inbounds [2 x i16]* %pred_mv_bi, i64 0, i64 1
  %396 = load i16* %arrayidx1437, align 2, !tbaa !4
  %conv1442 = sext i16 %395 to i32
  %add1443 = add nsw i32 %conv1442, 2
  %shr14442081 = lshr i32 %add1443, 2
  %conv1445 = trunc i32 %shr14442081 to i16
  %conv1446 = sext i16 %396 to i32
  %add1447 = add nsw i32 %conv1446, 2
  %shr14482082 = lshr i32 %add1447, 2
  %conv1449 = trunc i32 %shr14482082 to i16
  %conv1432 = zext i1 %tobool1399 to i16
  br label %for.body1421

for.body1421:                                     ; preds = %if.end1452, %for.body1421.lr.ph
  %397 = phi %struct.InputParameters* [ %393, %for.body1421.lr.ph ], [ %409, %if.end1452 ]
  %398 = phi i16 [ %conv1417, %for.body1421.lr.ph ], [ %408, %if.end1452 ]
  %399 = phi i16 [ %conv1413, %for.body1421.lr.ph ], [ %407, %if.end1452 ]
  %min_mcostbi.02104 = phi i32 [ 2147483647, %for.body1421.lr.ph ], [ %call1455, %if.end1452 ]
  %i.52103 = phi i32 [ 0, %for.body1421.lr.ph ], [ %inc1457, %if.end1452 ]
  %rem14222080 = and i32 %i.52103, 1
  %tobool1423 = icmp eq i32 %rem14222080, 0
  %400 = load i16* %18, align 2, !tbaa !4
  %401 = load i16* %arrayidx997, align 2, !tbaa !4
  br i1 %tobool1423, label %if.else1433, label %if.then1424

if.then1424:                                      ; preds = %for.body1421
  %402 = load i16* %bimv_x, align 2, !tbaa !4
  store i16 %402, i16* %tempmv_x, align 2, !tbaa !4
  %403 = load i16* %bimv_y, align 2, !tbaa !4
  br label %if.end1452

if.else1433:                                      ; preds = %for.body1421
  %cmp1438 = icmp eq i32 %i.52103, 0
  br i1 %cmp1438, label %if.else1441, label %if.then1440

if.then1440:                                      ; preds = %if.else1433
  %404 = load i16* %bimv_x, align 2, !tbaa !4
  store i16 %404, i16* %tempmv_x, align 2, !tbaa !4
  %405 = load i16* %bimv_y, align 2, !tbaa !4
  br label %if.end1452

if.else1441:                                      ; preds = %if.else1433
  store i16 %399, i16* %tempmv_x, align 2, !tbaa !4
  br label %if.end1452

if.end1452:                                       ; preds = %if.then1440, %if.else1441, %if.then1424
  %storemerge2180 = phi i16 [ %403, %if.then1424 ], [ %398, %if.else1441 ], [ %405, %if.then1440 ]
  %storemerge2178 = phi i16 [ %399, %if.then1424 ], [ %conv1445, %if.else1441 ], [ %399, %if.then1440 ]
  %storemerge2129 = phi i16 [ %398, %if.then1424 ], [ %conv1449, %if.else1441 ], [ %398, %if.then1440 ]
  %pred_mv_x1.0 = phi i16 [ %395, %if.then1424 ], [ %400, %if.else1441 ], [ %400, %if.then1440 ]
  %pred_mv_y1.0 = phi i16 [ %396, %if.then1424 ], [ %401, %if.else1441 ], [ %401, %if.then1440 ]
  %pred_mv_x2.1 = phi i16 [ %400, %if.then1424 ], [ %395, %if.else1441 ], [ %395, %if.then1440 ]
  %pred_mv_y2.1 = phi i16 [ %401, %if.then1424 ], [ %396, %if.else1441 ], [ %396, %if.then1440 ]
  %iterlist.1 = phi i16 [ %conv1432, %if.then1424 ], [ %conv1404, %if.else1441 ], [ %conv1404, %if.then1440 ]
  store i16 %storemerge2180, i16* %tempmv_y, align 2, !tbaa !4
  store i16 %storemerge2178, i16* %bimv_x, align 2, !tbaa !4
  store i16 %storemerge2129, i16* %bimv_y, align 2, !tbaa !4
  %conv1453 = sext i16 %iterlist.1 to i32
  %BiPredMESearchRange = getelementptr inbounds %struct.InputParameters* %397, i64 0, i32 41
  %406 = load i32* %BiPredMESearchRange, align 4, !tbaa !3
  %shr1454 = ashr i32 %406, %i.52103
  %call1455 = call i32 @FullPelBlockMotionBiPred(i16** getelementptr inbounds ([16 x i16*]* @BlockMotionSearch.orig_pic, i64 0, i64 0), i16 signext 0, i32 %conv1453, i32 %add, i32 %add7, i32 1, i32 undef, i16 signext %pred_mv_x1.0, i16 signext %pred_mv_y1.0, i16 signext %pred_mv_x2.1, i16 signext %pred_mv_y2.1, i16* %bimv_x, i16* %bimv_y, i16* %tempmv_x, i16* %tempmv_y, i32 %shr1454, i32 %min_mcostbi.02104, double %lambda) #8
  %407 = load i16* %tempmv_x, align 2, !tbaa !4
  store i16 %407, i16* %mv_x, align 2, !tbaa !4
  %408 = load i16* %tempmv_y, align 2, !tbaa !4
  store i16 %408, i16* %mv_y, align 2, !tbaa !4
  %inc1457 = add nsw i32 %i.52103, 1
  %409 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %BiPredMERefinements = getelementptr inbounds %struct.InputParameters* %409, i64 0, i32 40
  %410 = load i32* %BiPredMERefinements, align 4, !tbaa !3
  %cmp1419 = icmp slt i32 %i.52103, %410
  br i1 %cmp1419, label %for.body1421, label %for.cond1418.for.end1458_crit_edge

for.cond1418.for.end1458_crit_edge:               ; preds = %if.end1452
  %phitmp = shl i16 %407, 2
  %phitmp2175 = shl i16 %408, 2
  br label %for.end1458

for.end1458:                                      ; preds = %for.cond1418.for.end1458_crit_edge, %if.then1398
  %411 = phi %struct.InputParameters* [ %409, %for.cond1418.for.end1458_crit_edge ], [ %393, %if.then1398 ]
  %412 = phi i16 [ %phitmp2175, %for.cond1418.for.end1458_crit_edge ], [ 0, %if.then1398 ]
  %413 = phi i16 [ %phitmp, %for.cond1418.for.end1458_crit_edge ], [ 0, %if.then1398 ]
  %iterlist.0.lcssa = phi i16 [ %iterlist.1, %for.cond1418.for.end1458_crit_edge ], [ %conv1404, %if.then1398 ]
  %pred_mv_y2.0.lcssa = phi i16 [ %pred_mv_y2.1, %for.cond1418.for.end1458_crit_edge ], [ 0, %if.then1398 ]
  %pred_mv_x2.0.lcssa = phi i16 [ %pred_mv_x2.1, %for.cond1418.for.end1458_crit_edge ], [ 0, %if.then1398 ]
  %min_mcostbi.0.lcssa = phi i32 [ %call1455, %for.cond1418.for.end1458_crit_edge ], [ 2147483647, %if.then1398 ]
  store i16 %413, i16* %tempmv_x, align 2, !tbaa !4
  store i16 %412, i16* %tempmv_y, align 2, !tbaa !4
  %BiPredMESubPel = getelementptr inbounds %struct.InputParameters* %411, i64 0, i32 42
  %414 = load i32* %BiPredMESubPel, align 4, !tbaa !3
  %tobool1464 = icmp eq i32 %414, 0
  br i1 %tobool1464, label %if.end1480.thread, label %if.end1480

if.end1480.thread:                                ; preds = %for.end1458
  %415 = load i16* %bimv_x, align 2, !tbaa !4
  %shl1475 = shl i16 %415, 2
  store i16 %shl1475, i16* %bimv_x, align 2, !tbaa !4
  %416 = load i16* %bimv_y, align 2, !tbaa !4
  %shl1478 = shl i16 %416, 2
  store i16 %shl1478, i16* %bimv_y, align 2, !tbaa !4
  br label %if.else1495

if.end1480:                                       ; preds = %for.end1458
  %hadamard1466 = getelementptr inbounds %struct.InputParameters* %411, i64 0, i32 6
  %417 = load i32* %hadamard1466, align 4, !tbaa !3
  %tobool1467 = icmp eq i32 %417, 0
  %min_mcostbi.0. = select i1 %tobool1467, i32 %min_mcostbi.0.lcssa, i32 2147483647
  %conv1470 = sext i16 %iterlist.0.lcssa to i32
  %mul1471 = fmul double %lambda, 5.000000e-01
  %call1472 = call i32 @SubPelBlockSearchBiPred(i16** getelementptr inbounds ([16 x i16*]* @BlockMotionSearch.orig_pic, i64 0, i64 0), i16 signext 0, i32 %conv1470, i32 %add, i32 %add7, i32 1, i16 signext %pred_mv_x2.0.lcssa, i16 signext %pred_mv_y2.0.lcssa, i16* %bimv_x, i16* %bimv_y, i16* %tempmv_x, i16* %tempmv_y, i32 9, i32 9, i32 %min_mcostbi.0., double %mul1471) #8
  %.pre2172 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %BiPredMESubPel1481.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre2172, i64 0, i32 42
  %.pre2173 = load i32* %BiPredMESubPel1481.phi.trans.insert, align 4, !tbaa !3
  %phitmp2176 = icmp eq i32 %.pre2173, 2
  br i1 %phitmp2176, label %if.then1484, label %if.else1495

if.then1484:                                      ; preds = %if.end1480
  %hadamard1485 = getelementptr inbounds %struct.InputParameters* %.pre2172, i64 0, i32 6
  %418 = load i32* %hadamard1485, align 4, !tbaa !3
  %tobool1486 = icmp eq i32 %418, 0
  %min_mcostbi.2. = select i1 %tobool1486, i32 %call1472, i32 2147483647
  %cmp1490 = icmp eq i16 %iterlist.0.lcssa, 0
  %cond1492 = zext i1 %cmp1490 to i32
  %mul1493 = fmul double %lambda, 5.000000e-01
  %call1494 = call i32 @SubPelBlockSearchBiPred(i16** getelementptr inbounds ([16 x i16*]* @BlockMotionSearch.orig_pic, i64 0, i64 0), i16 signext 0, i32 %cond1492, i32 %add, i32 %add7, i32 1, i16 signext %291, i16 signext %292, i16* %mv_x, i16* %mv_y, i16* %bimv_x, i16* %bimv_y, i32 9, i32 9, i32 %min_mcostbi.2., double %mul1493) #8
  br label %for.cond1497.preheader

if.else1495:                                      ; preds = %if.end1480.thread, %if.end1480
  %419 = load i16* %tempmv_x, align 2, !tbaa !4
  store i16 %419, i16* %mv_x, align 2, !tbaa !4
  %420 = load i16* %tempmv_y, align 2, !tbaa !4
  store i16 %420, i16* %mv_y, align 2, !tbaa !4
  br label %for.cond1497.preheader

for.cond1497.preheader:                           ; preds = %if.else1495, %if.then1484
  %shr1498 = ashr i32 %1, 2
  %cmp14992099 = icmp sgt i32 %shr1498, 0
  br i1 %cmp14992099, label %for.cond1502.preheader.lr.ph, label %if.end1569

for.cond1502.preheader.lr.ph:                     ; preds = %for.cond1497.preheader
  %shr1503 = ashr i32 %2, 2
  %cmp15042097 = icmp sgt i32 %shr1503, 0
  %idxprom1508 = sext i16 %iterlist.0.lcssa to i64
  %421 = load i16* %bimv_x, align 2, !tbaa !4
  %cmp1533 = icmp eq i16 %iterlist.0.lcssa, 0
  %idxprom1536 = zext i1 %cmp1533 to i64
  %422 = load i16* %bimv_y, align 2, !tbaa !4
  br label %for.cond1502.preheader

for.cond1502.preheader:                           ; preds = %for.inc1566, %for.cond1502.preheader.lr.ph
  %indvars.iv2131 = phi i64 [ 0, %for.cond1502.preheader.lr.ph ], [ %indvars.iv.next2132, %for.inc1566 ]
  br i1 %cmp15042097, label %for.body1506.lr.ph, label %for.inc1566

for.body1506.lr.ph:                               ; preds = %for.cond1502.preheader
  %423 = add nsw i64 %indvars.iv2131, %idxprom17
  %arrayidx1513 = getelementptr inbounds i16****** %cond1403, i64 %423
  %424 = load i16****** %arrayidx1513, align 8, !tbaa !0
  br label %for.body1506

for.body1506:                                     ; preds = %for.body1506, %for.body1506.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body1506.lr.ph ], [ %indvars.iv.next, %for.body1506 ]
  %425 = load i16* %mv_x, align 2, !tbaa !4
  %426 = add nsw i64 %indvars.iv, %idxprom16
  %arrayidx1514 = getelementptr inbounds i16***** %424, i64 %426
  %427 = load i16***** %arrayidx1514, align 8, !tbaa !0
  %arrayidx1515 = getelementptr inbounds i16**** %427, i64 %idxprom1508
  %428 = load i16**** %arrayidx1515, align 8, !tbaa !0
  %429 = load i16*** %428, align 8, !tbaa !0
  %arrayidx1517 = getelementptr inbounds i16** %429, i64 %idxprom
  %430 = load i16** %arrayidx1517, align 8, !tbaa !0
  store i16 %425, i16* %430, align 2, !tbaa !4
  %431 = load i16* %mv_y, align 2, !tbaa !4
  %arrayidx1530 = getelementptr inbounds i16* %430, i64 1
  store i16 %431, i16* %arrayidx1530, align 2, !tbaa !4
  %arrayidx1543 = getelementptr inbounds i16**** %427, i64 %idxprom1536
  %432 = load i16**** %arrayidx1543, align 8, !tbaa !0
  %433 = load i16*** %432, align 8, !tbaa !0
  %arrayidx1545 = getelementptr inbounds i16** %433, i64 %idxprom
  %434 = load i16** %arrayidx1545, align 8, !tbaa !0
  store i16 %421, i16* %434, align 2, !tbaa !4
  %arrayidx1562 = getelementptr inbounds i16* %434, i64 1
  store i16 %422, i16* %arrayidx1562, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %shr1503
  br i1 %exitcond, label %for.inc1566, label %for.body1506

for.inc1566:                                      ; preds = %for.body1506, %for.cond1502.preheader
  %indvars.iv.next2132 = add i64 %indvars.iv2131, 1
  %lftr.wideiv2134 = trunc i64 %indvars.iv.next2132 to i32
  %exitcond2135 = icmp eq i32 %lftr.wideiv2134, %shr1498
  br i1 %exitcond2135, label %if.end1569, label %for.cond1502.preheader

if.end1569:                                       ; preds = %for.cond1497.preheader, %for.inc1566, %land.lhs.true1388, %if.end1384
  ret i32 %min_mcost.5
}

; Function Attrs: optsize
declare i32 @FastIntegerPelBlockMotionSearch(i16**, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16*, i16*, i32, i32, double) #2

; Function Attrs: optsize
declare i32 @FastSubPelBlockMotionSearch(i16**, i16 signext, i32, i32, i32, i32, i16 signext, i16 signext, i16*, i16*, i32, i32, i32, double, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @GetSkipCostMB(double %lambda) #0 {
entry:
  %diff = alloca [16 x i32], align 16
  %curr_diff = alloca [8 x [8 x i32]], align 16
  %diff8x8 = alloca [64 x i32], align 16
  %0 = bitcast [16 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #3
  %1 = bitcast [8 x [8 x i32]]* %curr_diff to i8*
  call void @llvm.lifetime.start(i64 256, i8* %1) #3
  %2 = bitcast [64 x i32]* %diff8x8 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #3
  %arraydecay = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 0
  %arraydecay79 = getelementptr inbounds [64 x i32]* %diff8x8, i64 0, i64 0
  %.pre.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.inc84, %entry
  %.pre = phi %struct.ImageParameters* [ %.pre.pre, %entry ], [ %16, %for.inc84 ]
  %block.0136 = phi i32 [ 0, %entry ], [ %inc85, %for.inc84 ]
  %cost.0135 = phi i32 [ 0, %entry ], [ %cost.4, %for.inc84 ]
  %div = sdiv i32 %block.0136, 2
  %shl = shl i32 %div, 3
  %rem = srem i32 %block.0136, 2
  %shl1 = shl i32 %rem, 3
  %3 = shl i32 %rem, 3
  %4 = sext i32 %3 to i64
  %5 = shl i32 %div, 3
  %6 = sext i32 %5 to i64
  br label %for.body4

for.body4:                                        ; preds = %for.body, %for.inc48
  %7 = phi %struct.ImageParameters* [ %.pre, %for.body ], [ %16, %for.inc48 ]
  %indvars.iv153 = phi i64 [ %6, %for.body ], [ %indvars.iv.next154, %for.inc48 ]
  %cost.1129 = phi i32 [ %cost.0135, %for.body ], [ %cost.3, %for.inc48 ]
  %opix_y = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 38
  %8 = load i32* %opix_y, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv153 to i32
  %add5 = add nsw i32 %8, %9
  %sub31 = sub i32 %9, %shl
  %10 = sext i32 %sub31 to i64
  %11 = sext i32 %add5 to i64
  br label %for.body9

for.body9:                                        ; preds = %for.body4, %for.inc45
  %12 = phi %struct.ImageParameters* [ %7, %for.body4 ], [ %16, %for.inc45 ]
  %indvars.iv151 = phi i64 [ %4, %for.body4 ], [ %indvars.iv.next152, %for.inc45 ]
  %cost.2127 = phi i32 [ %cost.1129, %for.body4 ], [ %cost.3, %for.inc45 ]
  %opix_x = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 37
  %13 = load i32* %opix_x, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv151 to i32
  %add10 = add nsw i32 %13, %14
  call void @LumaPrediction4x4(i32 %14, i32 %9, i32 0, i32 0, i32 0, i16 signext 0, i16 signext 0) #7
  %15 = load i16*** @imgY_org, align 8, !tbaa !0
  %16 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %sub28 = sub i32 %14, %shl1
  %17 = sext i32 %sub28 to i64
  %18 = sext i32 %add10 to i64
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.inc39, %for.body9
  %indvars.iv144 = phi i64 [ 0, %for.body9 ], [ %indvars.iv.next145, %for.inc39 ]
  %indvars.iv142 = phi i64 [ 0, %for.body9 ], [ %indvars.iv.next143, %for.inc39 ]
  %19 = add nsw i64 %11, %indvars.iv144
  %arrayidx = getelementptr inbounds i16** %15, i64 %19
  %20 = load i16** %arrayidx, align 8, !tbaa !0
  %21 = add nsw i64 %indvars.iv144, %indvars.iv153
  %22 = add nsw i64 %10, %indvars.iv144
  br label %for.body16

for.body16:                                       ; preds = %for.body16, %for.cond14.preheader
  %indvars.iv140 = phi i64 [ %indvars.iv142, %for.cond14.preheader ], [ %indvars.iv.next141, %for.body16 ]
  %indvars.iv = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next, %for.body16 ]
  %23 = add nsw i64 %18, %indvars.iv
  %arrayidx20 = getelementptr inbounds i16* %20, i64 %23
  %24 = load i16* %arrayidx20, align 2, !tbaa !4
  %conv = zext i16 %24 to i32
  %25 = add nsw i64 %indvars.iv, %indvars.iv151
  %arrayidx26 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 45, i64 %25, i64 %21
  %26 = load i16* %arrayidx26, align 2, !tbaa !4
  %conv27 = zext i16 %26 to i32
  %sub = sub nsw i32 %conv, %conv27
  %27 = add nsw i64 %17, %indvars.iv
  %arrayidx35 = getelementptr inbounds [8 x [8 x i32]]* %curr_diff, i64 0, i64 %22, i64 %27
  store i32 %sub, i32* %arrayidx35, align 4, !tbaa !3
  %arrayidx37 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 %indvars.iv140
  store i32 %sub, i32* %arrayidx37, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next141 = add i64 %indvars.iv140, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc39, label %for.body16

for.inc39:                                        ; preds = %for.body16
  %indvars.iv.next143 = add i64 %indvars.iv142, 4
  %indvars.iv.next145 = add i64 %indvars.iv144, 1
  %lftr.wideiv149 = trunc i64 %indvars.iv.next145 to i32
  %exitcond150 = icmp eq i32 %lftr.wideiv149, 4
  br i1 %exitcond150, label %for.end41, label %for.cond14.preheader

for.end41:                                        ; preds = %for.inc39
  %28 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt = getelementptr inbounds %struct.InputParameters* %28, i64 0, i32 85
  %29 = load i32* %rdopt, align 4, !tbaa !3
  %cmp42 = icmp eq i32 %29, 0
  br i1 %cmp42, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %for.end41
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %28, i64 0, i32 123
  %30 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool = icmp eq i32 %30, 0
  br i1 %tobool, label %if.then, label %for.inc45

if.then:                                          ; preds = %land.lhs.true, %for.end41
  %hadamard = getelementptr inbounds %struct.InputParameters* %28, i64 0, i32 6
  %31 = load i32* %hadamard, align 4, !tbaa !3
  %call = call i32 @SATD(i32* %arraydecay, i32 %31) #8
  %add44 = add nsw i32 %call, %cost.2127
  br label %for.inc45

for.inc45:                                        ; preds = %land.lhs.true, %if.then
  %cost.3 = phi i32 [ %cost.2127, %land.lhs.true ], [ %add44, %if.then ]
  %indvars.iv.next152 = add i64 %indvars.iv151, 4
  %32 = or i32 %shl1, 4
  %cmp8 = icmp slt i32 %14, %32
  br i1 %cmp8, label %for.body9, label %for.inc48

for.inc48:                                        ; preds = %for.inc45
  %indvars.iv.next154 = add i64 %indvars.iv153, 4
  %33 = or i32 %shl, 4
  %cmp3 = icmp slt i32 %9, %33
  br i1 %cmp3, label %for.body4, label %for.end50

for.end50:                                        ; preds = %for.inc48
  br i1 %cmp42, label %land.lhs.true54, label %for.inc84

land.lhs.true54:                                  ; preds = %for.end50
  %AllowTransform8x855 = getelementptr inbounds %struct.InputParameters* %28, i64 0, i32 123
  %34 = load i32* %AllowTransform8x855, align 4, !tbaa !3
  %tobool56 = icmp eq i32 %34, 0
  br i1 %tobool56, label %for.inc84, label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %land.lhs.true54, %for.cond62.preheader
  %indvar = phi i64 [ %indvar.next, %for.cond62.preheader ], [ 0, %land.lhs.true54 ]
  %35 = shl i64 %indvar, 3
  %scevgep = getelementptr [64 x i32]* %diff8x8, i64 0, i64 %35
  %scevgep161 = bitcast i32* %scevgep to i8*
  %scevgep162 = getelementptr [8 x [8 x i32]]* %curr_diff, i64 0, i64 %indvar, i64 0
  %scevgep162163 = bitcast i32* %scevgep162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep161, i8* %scevgep162163, i64 32, i32 16, i1 false)
  %indvar.next = add i64 %indvar, 1
  %lftr.wideiv166 = trunc i64 %indvar.next to i32
  %exitcond167 = icmp eq i32 %lftr.wideiv166, 8
  br i1 %exitcond167, label %for.end78, label %for.cond62.preheader

for.end78:                                        ; preds = %for.cond62.preheader
  %hadamard80 = getelementptr inbounds %struct.InputParameters* %28, i64 0, i32 6
  %36 = load i32* %hadamard80, align 4, !tbaa !3
  %call81 = call i32 @SATD8X8(i32* %arraydecay79, i32 %36) #8
  %add82 = add nsw i32 %call81, %cost.3
  br label %for.inc84

for.inc84:                                        ; preds = %land.lhs.true54, %for.end50, %for.end78
  %cost.4 = phi i32 [ %add82, %for.end78 ], [ %cost.3, %land.lhs.true54 ], [ %cost.3, %for.end50 ]
  %inc85 = add nsw i32 %block.0136, 1
  %exitcond168 = icmp eq i32 %inc85, 4
  br i1 %exitcond168, label %for.end86, label %for.body

for.end86:                                        ; preds = %for.inc84
  call void @llvm.lifetime.end(i64 256, i8* %2) #3
  call void @llvm.lifetime.end(i64 256, i8* %1) #3
  call void @llvm.lifetime.end(i64 64, i8* %0) #3
  ret i32 %cost.4
}

; Function Attrs: nounwind optsize uwtable
define i32 @BIDPartitionCost(i32 %blocktype, i32 %block8x8, i16 signext %fw_ref, i16 signext %bw_ref, i32 %lambda_factor) #0 {
entry:
  %diff = alloca [64 x i32], align 16
  %curr_blk = alloca [16 x [16 x i32]], align 16
  %0 = bitcast [64 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #3
  %1 = bitcast [16 x [16 x i32]]* %curr_blk to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #3
  %idxprom = sext i32 %blocktype to i64
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 20, i64 %idxprom, i64 0
  %3 = load i32* %arrayidx1, align 4, !tbaa !3
  %cmp = icmp slt i32 %3, 8
  %. = select i1 %cmp, i32 %3, i32 8
  %arrayidx9 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 20, i64 %idxprom, i64 1
  %4 = load i32* %arrayidx9, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %4, 8
  %cond18 = select i1 %cmp10, i32 %4, i32 8
  %cmp19 = icmp slt i32 %blocktype, 4
  %idxprom24 = select i1 %cmp19, i64 %idxprom, i64 4
  %arrayidx26 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 21, i64 %idxprom24, i64 0
  %5 = load i32* %arrayidx26, align 4, !tbaa !3
  %arrayidx30 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 21, i64 %idxprom24, i64 1
  %6 = load i32* %arrayidx30, align 4, !tbaa !3
  %7 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %all_mv39 = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 71
  %8 = load i16******* %all_mv39, align 8, !tbaa !0
  %pred_mv = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 70
  %9 = load i16******* %pred_mv, align 8, !tbaa !0
  %idxprom40 = sext i32 %block8x8 to i64
  %arrayidx43 = getelementptr inbounds [5 x [4 x i32]]* @PartitionMotionSearch.by0, i64 0, i64 %idxprom24, i64 %idxprom40
  %10 = load i32* %arrayidx43, align 4, !tbaa !3
  %cmp48445 = icmp sgt i32 %6, 0
  br i1 %cmp48445, label %for.body.lr.ph, label %entry.for.end166_crit_edge

entry.for.end166_crit_edge:                       ; preds = %entry
  %add176432.pre = add nsw i32 %10, %6
  br label %for.end166

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx38 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 21, i64 %idxprom, i64 1
  %arrayidx34 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 21, i64 %idxprom, i64 0
  %11 = load i32* %arrayidx38, align 4, !tbaa !3
  %12 = load i32* %arrayidx34, align 4, !tbaa !3
  %arrayidx52 = getelementptr inbounds [5 x [4 x i32]]* @PartitionMotionSearch.bx0, i64 0, i64 %idxprom24, i64 %idxprom40
  %13 = load i32* %arrayidx52, align 4, !tbaa !3
  %cmp59440 = icmp sgt i32 %5, 0
  %add = add nsw i32 %10, %6
  %idxprom62 = sext i16 %fw_ref to i64
  %14 = load i32** @mvbits, align 8, !tbaa !0
  %idxprom112 = sext i16 %bw_ref to i64
  %15 = sext i32 %13 to i64
  %16 = sext i32 %12 to i64
  %17 = sext i32 %10 to i64
  %18 = sext i32 %11 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc164
  %indvars.iv488 = phi i64 [ %17, %for.body.lr.ph ], [ %indvars.iv.next489, %for.inc164 ]
  %mvd_bits.0446 = phi i32 [ 0, %for.body.lr.ph ], [ %mvd_bits.1.lcssa, %for.inc164 ]
  br i1 %cmp59440, label %for.body60.lr.ph, label %for.inc164

for.body60.lr.ph:                                 ; preds = %for.body
  %add58 = add nsw i32 %13, %5
  br label %for.body60

for.body60:                                       ; preds = %for.body60.lr.ph, %for.body60
  %indvars.iv486 = phi i64 [ %15, %for.body60.lr.ph ], [ %indvars.iv.next487, %for.body60 ]
  %mvd_bits.1441 = phi i32 [ %mvd_bits.0446, %for.body60.lr.ph ], [ %add162, %for.body60 ]
  %arrayidx65 = getelementptr inbounds i16****** %8, i64 %indvars.iv486
  %19 = load i16****** %arrayidx65, align 8, !tbaa !0
  %arrayidx66 = getelementptr inbounds i16***** %19, i64 %indvars.iv488
  %20 = load i16***** %arrayidx66, align 8, !tbaa !0
  %21 = load i16**** %20, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds i16*** %21, i64 %idxprom62
  %22 = load i16*** %arrayidx68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds i16** %22, i64 %idxprom
  %23 = load i16** %arrayidx69, align 8, !tbaa !0
  %24 = load i16* %23, align 2, !tbaa !4
  %conv = sext i16 %24 to i64
  %arrayidx75 = getelementptr inbounds i16****** %9, i64 %indvars.iv486
  %25 = load i16****** %arrayidx75, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i16***** %25, i64 %indvars.iv488
  %26 = load i16***** %arrayidx76, align 8, !tbaa !0
  %27 = load i16**** %26, align 8, !tbaa !0
  %arrayidx78 = getelementptr inbounds i16*** %27, i64 %idxprom62
  %28 = load i16*** %arrayidx78, align 8, !tbaa !0
  %arrayidx79 = getelementptr inbounds i16** %28, i64 %idxprom
  %29 = load i16** %arrayidx79, align 8, !tbaa !0
  %30 = load i16* %29, align 2, !tbaa !4
  %conv81 = sext i16 %30 to i64
  %sub = sub i64 %conv, %conv81
  %arrayidx83 = getelementptr inbounds i32* %14, i64 %sub
  %31 = load i32* %arrayidx83, align 4, !tbaa !3
  %add84 = add nsw i32 %31, %mvd_bits.1441
  %arrayidx94 = getelementptr inbounds i16* %23, i64 1
  %32 = load i16* %arrayidx94, align 2, !tbaa !4
  %conv95 = sext i16 %32 to i64
  %arrayidx105 = getelementptr inbounds i16* %29, i64 1
  %33 = load i16* %arrayidx105, align 2, !tbaa !4
  %conv106 = sext i16 %33 to i64
  %sub107 = sub i64 %conv95, %conv106
  %arrayidx109 = getelementptr inbounds i32* %14, i64 %sub107
  %34 = load i32* %arrayidx109, align 4, !tbaa !3
  %add110 = add nsw i32 %add84, %34
  %arrayidx117 = getelementptr inbounds i16**** %20, i64 1
  %35 = load i16**** %arrayidx117, align 8, !tbaa !0
  %arrayidx118 = getelementptr inbounds i16*** %35, i64 %idxprom112
  %36 = load i16*** %arrayidx118, align 8, !tbaa !0
  %arrayidx119 = getelementptr inbounds i16** %36, i64 %idxprom
  %37 = load i16** %arrayidx119, align 8, !tbaa !0
  %38 = load i16* %37, align 2, !tbaa !4
  %conv121 = sext i16 %38 to i64
  %arrayidx128 = getelementptr inbounds i16**** %26, i64 1
  %39 = load i16**** %arrayidx128, align 8, !tbaa !0
  %arrayidx129 = getelementptr inbounds i16*** %39, i64 %idxprom112
  %40 = load i16*** %arrayidx129, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i16** %40, i64 %idxprom
  %41 = load i16** %arrayidx130, align 8, !tbaa !0
  %42 = load i16* %41, align 2, !tbaa !4
  %conv132 = sext i16 %42 to i64
  %sub133 = sub i64 %conv121, %conv132
  %arrayidx135 = getelementptr inbounds i32* %14, i64 %sub133
  %43 = load i32* %arrayidx135, align 4, !tbaa !3
  %add136 = add nsw i32 %add110, %43
  %arrayidx146 = getelementptr inbounds i16* %37, i64 1
  %44 = load i16* %arrayidx146, align 2, !tbaa !4
  %conv147 = sext i16 %44 to i64
  %arrayidx157 = getelementptr inbounds i16* %41, i64 1
  %45 = load i16* %arrayidx157, align 2, !tbaa !4
  %conv158 = sext i16 %45 to i64
  %sub159 = sub i64 %conv147, %conv158
  %arrayidx161 = getelementptr inbounds i32* %14, i64 %sub159
  %46 = load i32* %arrayidx161, align 4, !tbaa !3
  %add162 = add nsw i32 %add136, %46
  %indvars.iv.next487 = add i64 %indvars.iv486, %16
  %47 = trunc i64 %indvars.iv.next487 to i32
  %cmp59 = icmp slt i32 %47, %add58
  br i1 %cmp59, label %for.body60, label %for.inc164

for.inc164:                                       ; preds = %for.body60, %for.body
  %mvd_bits.1.lcssa = phi i32 [ %mvd_bits.0446, %for.body ], [ %add162, %for.body60 ]
  %indvars.iv.next489 = add i64 %indvars.iv488, %18
  %48 = trunc i64 %indvars.iv.next489 to i32
  %cmp48 = icmp slt i32 %48, %add
  br i1 %cmp48, label %for.body, label %for.end166

for.end166:                                       ; preds = %for.inc164, %entry.for.end166_crit_edge
  %add176432.pre-phi = phi i32 [ %add176432.pre, %entry.for.end166_crit_edge ], [ %add, %for.inc164 ]
  %mvd_bits.0.lcssa = phi i32 [ 0, %entry.for.end166_crit_edge ], [ %mvd_bits.1.lcssa, %for.inc164 ]
  %mul = mul nsw i32 %mvd_bits.0.lcssa, %lambda_factor
  %shr = ashr i32 %mul, 16
  %cmp177433 = icmp slt i32 %10, %add176432.pre-phi
  br i1 %cmp177433, label %for.body179.lr.ph, label %for.end243

for.body179.lr.ph:                                ; preds = %for.end166
  %arrayidx184 = getelementptr inbounds [5 x [4 x i32]]* @PartitionMotionSearch.bx0, i64 0, i64 %idxprom24, i64 %idxprom40
  %49 = load i32* %arrayidx184, align 4, !tbaa !3
  %cmp191427 = icmp sgt i32 %5, 0
  %cmp233 = icmp sgt i32 %blocktype, 4
  %arraydecay = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 0
  %50 = sext i32 %49 to i64
  %51 = sext i32 %10 to i64
  br label %for.body179

for.body179:                                      ; preds = %for.body179.lr.ph, %for.inc240
  %52 = phi %struct.ImageParameters* [ %7, %for.body179.lr.ph ], [ %78, %for.inc240 ]
  %53 = phi %struct.InputParameters* [ %2, %for.body179.lr.ph ], [ %79, %for.inc240 ]
  %indvars.iv484 = phi i64 [ 0, %for.body179.lr.ph ], [ %indvars.iv.next485, %for.inc240 ]
  %indvars.iv482 = phi i64 [ %51, %for.body179.lr.ph ], [ %indvars.iv.next483, %for.inc240 ]
  %mcost.0436 = phi i32 [ %shr, %for.body179.lr.ph ], [ %mcost.1.lcssa, %for.inc240 ]
  %54 = trunc i64 %indvars.iv482 to i32
  %shl = shl i32 %54, 2
  br i1 %cmp191427, label %for.body193.lr.ph, label %for.inc240

for.body193.lr.ph:                                ; preds = %for.body179
  %opix_y = getelementptr inbounds %struct.ImageParameters* %52, i64 0, i32 38
  %55 = load i32* %opix_y, align 4, !tbaa !3
  %add180 = add nsw i32 %55, %shl
  %add190 = add nsw i32 %49, %5
  %56 = sext i32 %shl to i64
  %57 = sext i32 %add180 to i64
  br label %for.body193

for.body193:                                      ; preds = %for.body193.lr.ph, %for.inc236
  %58 = phi %struct.ImageParameters* [ %52, %for.body193.lr.ph ], [ %62, %for.inc236 ]
  %indvars.iv480 = phi i64 [ 0, %for.body193.lr.ph ], [ %indvars.iv.next481, %for.inc236 ]
  %indvars.iv478 = phi i64 [ %50, %for.body193.lr.ph ], [ %indvars.iv.next479, %for.inc236 ]
  %mcost.1429 = phi i32 [ %mcost.0436, %for.body193.lr.ph ], [ %mcost.2, %for.inc236 ]
  %opix_x = getelementptr inbounds %struct.ImageParameters* %58, i64 0, i32 37
  %59 = load i32* %opix_x, align 4, !tbaa !3
  %60 = trunc i64 %indvars.iv478 to i32
  %shl194 = shl i32 %60, 2
  %add195 = add nsw i32 %59, %shl194
  call void @LumaPrediction4x4(i32 %shl194, i32 %shl, i32 2, i32 %blocktype, i32 %blocktype, i16 signext %fw_ref, i16 signext %bw_ref) #7
  %61 = load i16*** @imgY_org, align 8, !tbaa !0
  %62 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %63 = sext i32 %shl194 to i64
  %64 = sext i32 %add195 to i64
  br label %for.cond200.preheader

for.cond200.preheader:                            ; preds = %for.inc230, %for.body193
  %indvars.iv474 = phi i64 [ 0, %for.body193 ], [ %indvars.iv.next475, %for.inc230 ]
  %indvars.iv469 = phi i64 [ 0, %for.body193 ], [ %indvars.iv.next470, %for.inc230 ]
  %65 = add nsw i64 %57, %indvars.iv469
  %arrayidx208 = getelementptr inbounds i16** %61, i64 %65
  %66 = load i16** %arrayidx208, align 8, !tbaa !0
  %67 = add nsw i64 %indvars.iv469, %56
  %68 = add nsw i64 %indvars.iv469, %indvars.iv484
  br label %for.body203

for.body203:                                      ; preds = %for.body203, %for.cond200.preheader
  %indvars.iv465 = phi i64 [ %indvars.iv474, %for.cond200.preheader ], [ %indvars.iv.next466, %for.body203 ]
  %indvars.iv = phi i64 [ 0, %for.cond200.preheader ], [ %indvars.iv.next, %for.body203 ]
  %69 = add nsw i64 %64, %indvars.iv
  %arrayidx209 = getelementptr inbounds i16* %66, i64 %69
  %70 = load i16* %arrayidx209, align 2, !tbaa !4
  %conv210 = zext i16 %70 to i32
  %71 = add nsw i64 %indvars.iv, %63
  %arrayidx216 = getelementptr inbounds %struct.ImageParameters* %62, i64 0, i32 45, i64 %71, i64 %67
  %72 = load i16* %arrayidx216, align 2, !tbaa !4
  %conv217 = zext i16 %72 to i32
  %sub218 = sub nsw i32 %conv210, %conv217
  %73 = add nsw i64 %indvars.iv, %indvars.iv480
  %arrayidx224 = getelementptr inbounds [16 x [16 x i32]]* %curr_blk, i64 0, i64 %68, i64 %73
  store i32 %sub218, i32* %arrayidx224, align 4, !tbaa !3
  %arrayidx226 = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 %indvars.iv465
  store i32 %sub218, i32* %arrayidx226, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next466 = add i64 %indvars.iv465, 1
  %lftr.wideiv467 = trunc i64 %indvars.iv.next to i32
  %exitcond468 = icmp eq i32 %lftr.wideiv467, 4
  br i1 %exitcond468, label %for.inc230, label %for.body203

for.inc230:                                       ; preds = %for.body203
  %indvars.iv.next475 = add i64 %indvars.iv474, 4
  %indvars.iv.next470 = add i64 %indvars.iv469, 1
  %lftr.wideiv476 = trunc i64 %indvars.iv.next470 to i32
  %exitcond477 = icmp eq i32 %lftr.wideiv476, 4
  br i1 %exitcond477, label %for.end232, label %for.cond200.preheader

for.end232:                                       ; preds = %for.inc230
  %74 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %74, i64 0, i32 123
  %75 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool = icmp eq i32 %75, 0
  %or.cond = or i1 %tobool, %cmp233
  br i1 %or.cond, label %if.then, label %for.inc236

if.then:                                          ; preds = %for.end232
  %hadamard = getelementptr inbounds %struct.InputParameters* %74, i64 0, i32 6
  %76 = load i32* %hadamard, align 4, !tbaa !3
  %call = call i32 @SATD(i32* %arraydecay, i32 %76) #8
  %add235 = add nsw i32 %call, %mcost.1429
  br label %for.inc236

for.inc236:                                       ; preds = %for.end232, %if.then
  %mcost.2 = phi i32 [ %add235, %if.then ], [ %mcost.1429, %for.end232 ]
  %indvars.iv.next481 = add i64 %indvars.iv480, 4
  %indvars.iv.next479 = add i64 %indvars.iv478, 1
  %77 = trunc i64 %indvars.iv.next479 to i32
  %cmp191 = icmp slt i32 %77, %add190
  br i1 %cmp191, label %for.body193, label %for.inc240

for.inc240:                                       ; preds = %for.inc236, %for.body179
  %78 = phi %struct.ImageParameters* [ %52, %for.body179 ], [ %62, %for.inc236 ]
  %79 = phi %struct.InputParameters* [ %53, %for.body179 ], [ %74, %for.inc236 ]
  %mcost.1.lcssa = phi i32 [ %mcost.0436, %for.body179 ], [ %mcost.2, %for.inc236 ]
  %indvars.iv.next485 = add i64 %indvars.iv484, 4
  %indvars.iv.next483 = add i64 %indvars.iv482, 1
  %80 = trunc i64 %indvars.iv.next483 to i32
  %cmp177 = icmp slt i32 %80, %add176432.pre-phi
  br i1 %cmp177, label %for.body179, label %for.end243

for.end243:                                       ; preds = %for.inc240, %for.end166
  %81 = phi %struct.InputParameters* [ %2, %for.end166 ], [ %79, %for.inc240 ]
  %mcost.0.lcssa = phi i32 [ %shr, %for.end166 ], [ %mcost.1.lcssa, %for.inc240 ]
  %AllowTransform8x8244 = getelementptr inbounds %struct.InputParameters* %81, i64 0, i32 123
  %82 = load i32* %AllowTransform8x8244, align 4, !tbaa !3
  %tobool245 = icmp ne i32 %82, 0
  %cmp246 = icmp slt i32 %blocktype, 5
  %or.cond408 = and i1 %tobool245, %cmp246
  br i1 %or.cond408, label %for.cond249.preheader, label %if.end298

for.cond249.preheader:                            ; preds = %for.end243
  %arrayidx253417 = getelementptr inbounds %struct.InputParameters* %81, i64 0, i32 20, i64 %idxprom24, i64 1
  %83 = load i32* %arrayidx253417, align 4, !tbaa !3
  %cmp254418 = icmp sgt i32 %83, 0
  br i1 %cmp254418, label %for.cond257.preheader.lr.ph, label %if.end298

for.cond257.preheader.lr.ph:                      ; preds = %for.cond249.preheader
  %arraydecay288 = getelementptr inbounds [64 x i32]* %diff, i64 0, i64 0
  %84 = icmp slt i32 %3, 8
  %85 = sext i32 %3 to i64
  %86 = select i1 %84, i64 %85, i64 8
  %87 = icmp slt i32 %4, 8
  %88 = sext i32 %4 to i64
  %89 = select i1 %87, i64 %88, i64 8
  %arrayidx261413.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %81, i64 0, i32 20, i64 %idxprom24, i64 0
  %.pre490 = load i32* %arrayidx261413.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond257.preheader

for.cond257.preheader:                            ; preds = %for.cond257.preheader.lr.ph, %for.inc295
  %90 = phi i32 [ %.pre490, %for.cond257.preheader.lr.ph ], [ %99, %for.inc295 ]
  %91 = phi i32 [ %83, %for.cond257.preheader.lr.ph ], [ %100, %for.inc295 ]
  %indvar457 = phi i64 [ 0, %for.cond257.preheader.lr.ph ], [ %indvar.next458, %for.inc295 ]
  %mcost.3420 = phi i32 [ %mcost.0.lcssa, %for.cond257.preheader.lr.ph ], [ %mcost.4.lcssa, %for.inc295 ]
  %byy.1419 = phi i32 [ 0, %for.cond257.preheader.lr.ph ], [ %add296, %for.inc295 ]
  %92 = mul i64 %89, %indvar457
  %cmp262414 = icmp sgt i32 %90, 0
  br i1 %cmp262414, label %for.cond265.preheader, label %for.inc295

for.cond265.preheader:                            ; preds = %for.cond257.preheader, %for.end287
  %indvar454 = phi i64 [ %indvar.next455, %for.end287 ], [ 0, %for.cond257.preheader ]
  %mcost.4416 = phi i32 [ %add291, %for.end287 ], [ %mcost.3420, %for.cond257.preheader ]
  %bxx.1415 = phi i32 [ %add293, %for.end287 ], [ 0, %for.cond257.preheader ]
  %93 = mul i64 %86, %indvar454
  br label %for.cond269.preheader

for.cond269.preheader:                            ; preds = %for.cond269.preheader, %for.cond265.preheader
  %indvar = phi i64 [ 0, %for.cond265.preheader ], [ %indvar.next, %for.cond269.preheader ]
  %94 = shl i64 %indvar, 3
  %scevgep = getelementptr [64 x i32]* %diff, i64 0, i64 %94
  %scevgep453 = bitcast i32* %scevgep to i8*
  %95 = add i64 %92, %indvar
  %sext = shl i64 %95, 32
  %96 = ashr exact i64 %sext, 28
  %scevgep456.sum = add i64 %93, %96
  %scevgep460 = getelementptr [16 x [16 x i32]]* %curr_blk, i64 0, i64 0, i64 %scevgep456.sum
  %scevgep460461 = bitcast i32* %scevgep460 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep453, i8* %scevgep460461, i64 32, i32 4, i1 false)
  %indvar.next = add i64 %indvar, 1
  %lftr.wideiv = trunc i64 %indvar.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.end287, label %for.cond269.preheader

for.end287:                                       ; preds = %for.cond269.preheader
  %hadamard289 = getelementptr inbounds %struct.InputParameters* %81, i64 0, i32 6
  %97 = load i32* %hadamard289, align 4, !tbaa !3
  %call290 = call i32 @SATD8X8(i32* %arraydecay288, i32 %97) #8
  %add291 = add nsw i32 %call290, %mcost.4416
  %add293 = add nsw i32 %bxx.1415, %.
  %98 = load i32* %arrayidx261413.phi.trans.insert, align 4, !tbaa !3
  %cmp262 = icmp slt i32 %add293, %98
  %indvar.next455 = add i64 %indvar454, 1
  br i1 %cmp262, label %for.cond265.preheader, label %for.cond257.for.inc295_crit_edge

for.cond257.for.inc295_crit_edge:                 ; preds = %for.end287
  %.pre = load i32* %arrayidx253417, align 4, !tbaa !3
  br label %for.inc295

for.inc295:                                       ; preds = %for.cond257.for.inc295_crit_edge, %for.cond257.preheader
  %99 = phi i32 [ %98, %for.cond257.for.inc295_crit_edge ], [ %90, %for.cond257.preheader ]
  %100 = phi i32 [ %.pre, %for.cond257.for.inc295_crit_edge ], [ %91, %for.cond257.preheader ]
  %mcost.4.lcssa = phi i32 [ %add291, %for.cond257.for.inc295_crit_edge ], [ %mcost.3420, %for.cond257.preheader ]
  %add296 = add nsw i32 %byy.1419, %cond18
  %cmp254 = icmp slt i32 %add296, %100
  %indvar.next458 = add i64 %indvar457, 1
  br i1 %cmp254, label %for.cond257.preheader, label %if.end298

if.end298:                                        ; preds = %for.cond249.preheader, %for.inc295, %for.end243
  %mcost.5 = phi i32 [ %mcost.0.lcssa, %for.end243 ], [ %mcost.0.lcssa, %for.cond249.preheader ], [ %mcost.4.lcssa, %for.inc295 ]
  call void @llvm.lifetime.end(i64 1024, i8* %1) #3
  call void @llvm.lifetime.end(i64 256, i8* %0) #3
  ret i32 %mcost.5
}

; Function Attrs: optsize
declare void @LumaPrediction4x4(i32, i32, i32, i32, i32, i16 signext, i16 signext) #2

; Function Attrs: nounwind optsize uwtable
define void @FindSkipModeMotionVector() #0 {
entry:
  %pmv = alloca [2 x i16], align 2
  %mb_a = alloca %struct.pix_pos, align 4
  %mb_b = alloca %struct.pix_pos, align 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %all_mv1 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %1 = load i16******* %all_mv1, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  call void @getLuma4x4Neighbour(i32 %2, i32 0, i32 0, i32 -1, i32 0, %struct.pix_pos* %mb_a) #7
  %4 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr3 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 3
  %5 = load i32* %current_mb_nr3, align 4, !tbaa !3
  call void @getLuma4x4Neighbour(i32 %5, i32 0, i32 0, i32 0, i32 -1, %struct.pix_pos* %mb_b) #7
  %available = getelementptr inbounds %struct.pix_pos* %mb_a, i64 0, i32 0
  %6 = load i32* %available, align 4, !tbaa !3
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.end37, label %if.then

if.then:                                          ; preds = %entry
  %pos_y = getelementptr inbounds %struct.pix_pos* %mb_a, i64 0, i32 5
  %7 = load i32* %pos_y, align 4, !tbaa !3
  %idxprom4 = sext i32 %7 to i64
  %pos_x = getelementptr inbounds %struct.pix_pos* %mb_a, i64 0, i32 4
  %8 = load i32* %pos_x, align 4, !tbaa !3
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 35
  %10 = load i16***** %mv, align 8, !tbaa !0
  %11 = load i16**** %10, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds i16*** %11, i64 %idxprom5
  %12 = load i16*** %arrayidx7, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i16** %12, i64 %idxprom4
  %13 = load i16** %arrayidx8, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i16* %13, i64 1
  %14 = load i16* %arrayidx9, align 2, !tbaa !4
  %conv = sext i16 %14 to i32
  %ref_idx = getelementptr inbounds %struct.storable_picture* %9, i64 0, i32 32
  %15 = load i16**** %ref_idx, align 8, !tbaa !0
  %16 = load i16*** %15, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i16** %16, i64 %idxprom5
  %17 = load i16** %arrayidx15, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i16* %17, i64 %idxprom4
  %18 = load i16* %arrayidx16, align 2, !tbaa !4
  %conv17 = sext i16 %18 to i32
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %19 = load i32* %mb_field, align 4, !tbaa !3
  %tobool18 = icmp eq i32 %19, 0
  %mb_addr28.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_a, i64 0, i32 1
  %.pre251 = load i32* %mb_addr28.phi.trans.insert, align 4, !tbaa !3
  br i1 %tobool18, label %land.lhs.true27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %idxprom19 = sext i32 %.pre251 to i64
  %20 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data20 = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 51
  %21 = load %struct.macroblock** %mb_data20, align 8, !tbaa !0
  %mb_field22 = getelementptr inbounds %struct.macroblock* %21, i64 %idxprom19, i32 22
  %22 = load i32* %mb_field22, align 4, !tbaa !3
  %tobool23 = icmp eq i32 %22, 0
  br i1 %tobool23, label %if.then24, label %if.end37

if.then24:                                        ; preds = %land.lhs.true
  %div = sdiv i32 %conv, 2
  %mul = shl nsw i32 %conv17, 1
  br label %if.end37

land.lhs.true27:                                  ; preds = %if.then
  %.pre252 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data30.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre252, i64 0, i32 51
  %.pre253 = load %struct.macroblock** %mb_data30.phi.trans.insert, align 8, !tbaa !0
  %idxprom29.phi.trans.insert = sext i32 %.pre251 to i64
  %mb_field32.phi.trans.insert = getelementptr inbounds %struct.macroblock* %.pre253, i64 %idxprom29.phi.trans.insert, i32 22
  %.pre254 = load i32* %mb_field32.phi.trans.insert, align 4, !tbaa !3
  %tobool33 = icmp eq i32 %.pre254, 0
  br i1 %tobool33, label %if.end37, label %if.then34

if.then34:                                        ; preds = %land.lhs.true27
  %mul35 = shl nsw i32 %conv, 1
  %shr = ashr i32 %conv17, 1
  br label %if.end37

if.end37:                                         ; preds = %if.then24, %land.lhs.true, %land.lhs.true27, %entry, %if.then34
  %a_mv_y.1 = phi i32 [ %mul35, %if.then34 ], [ %conv, %land.lhs.true27 ], [ 0, %entry ], [ %conv, %land.lhs.true ], [ %div, %if.then24 ]
  %a_ref_idx.1 = phi i32 [ %shr, %if.then34 ], [ %conv17, %land.lhs.true27 ], [ 0, %entry ], [ %conv17, %land.lhs.true ], [ %mul, %if.then24 ]
  %available38 = getelementptr inbounds %struct.pix_pos* %mb_b, i64 0, i32 0
  %23 = load i32* %available38, align 4, !tbaa !3
  %tobool39 = icmp eq i32 %23, 0
  br i1 %tobool39, label %if.end86, label %if.then40

if.then40:                                        ; preds = %if.end37
  %pos_y41 = getelementptr inbounds %struct.pix_pos* %mb_b, i64 0, i32 5
  %24 = load i32* %pos_y41, align 4, !tbaa !3
  %idxprom42 = sext i32 %24 to i64
  %pos_x43 = getelementptr inbounds %struct.pix_pos* %mb_b, i64 0, i32 4
  %25 = load i32* %pos_x43, align 4, !tbaa !3
  %idxprom44 = sext i32 %25 to i64
  %26 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv45 = getelementptr inbounds %struct.storable_picture* %26, i64 0, i32 35
  %27 = load i16***** %mv45, align 8, !tbaa !0
  %28 = load i16**** %27, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds i16*** %28, i64 %idxprom44
  %29 = load i16*** %arrayidx47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i16** %29, i64 %idxprom42
  %30 = load i16** %arrayidx48, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds i16* %30, i64 1
  %31 = load i16* %arrayidx49, align 2, !tbaa !4
  %conv50 = sext i16 %31 to i32
  %ref_idx55 = getelementptr inbounds %struct.storable_picture* %26, i64 0, i32 32
  %32 = load i16**** %ref_idx55, align 8, !tbaa !0
  %33 = load i16*** %32, align 8, !tbaa !0
  %arrayidx57 = getelementptr inbounds i16** %33, i64 %idxprom44
  %34 = load i16** %arrayidx57, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds i16* %34, i64 %idxprom42
  %35 = load i16* %arrayidx58, align 2, !tbaa !4
  %conv59 = sext i16 %35 to i32
  %mb_field60 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %36 = load i32* %mb_field60, align 4, !tbaa !3
  %tobool61 = icmp eq i32 %36, 0
  %mb_addr76.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_b, i64 0, i32 1
  %.pre247 = load i32* %mb_addr76.phi.trans.insert, align 4, !tbaa !3
  br i1 %tobool61, label %land.lhs.true75, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.then40
  %idxprom64 = sext i32 %.pre247 to i64
  %37 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data65 = getelementptr inbounds %struct.ImageParameters* %37, i64 0, i32 51
  %38 = load %struct.macroblock** %mb_data65, align 8, !tbaa !0
  %mb_field67 = getelementptr inbounds %struct.macroblock* %38, i64 %idxprom64, i32 22
  %39 = load i32* %mb_field67, align 4, !tbaa !3
  %tobool68 = icmp eq i32 %39, 0
  br i1 %tobool68, label %if.then69, label %if.end86

if.then69:                                        ; preds = %land.lhs.true62
  %div70 = sdiv i32 %conv50, 2
  %mul71 = shl nsw i32 %conv59, 1
  br label %if.end86

land.lhs.true75:                                  ; preds = %if.then40
  %.pre248 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %mb_data78.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre248, i64 0, i32 51
  %.pre249 = load %struct.macroblock** %mb_data78.phi.trans.insert, align 8, !tbaa !0
  %idxprom77.phi.trans.insert = sext i32 %.pre247 to i64
  %mb_field80.phi.trans.insert = getelementptr inbounds %struct.macroblock* %.pre249, i64 %idxprom77.phi.trans.insert, i32 22
  %.pre250 = load i32* %mb_field80.phi.trans.insert, align 4, !tbaa !3
  %tobool81 = icmp eq i32 %.pre250, 0
  br i1 %tobool81, label %if.end86, label %if.then82

if.then82:                                        ; preds = %land.lhs.true75
  %mul83 = shl nsw i32 %conv50, 1
  %shr84 = ashr i32 %conv59, 1
  br label %if.end86

if.end86:                                         ; preds = %if.then69, %land.lhs.true62, %land.lhs.true75, %if.end37, %if.then82
  %b_mv_y.1 = phi i32 [ %mul83, %if.then82 ], [ %conv50, %land.lhs.true75 ], [ 0, %if.end37 ], [ %conv50, %land.lhs.true62 ], [ %div70, %if.then69 ]
  %b_ref_idx.1 = phi i32 [ %shr84, %if.then82 ], [ %conv59, %land.lhs.true75 ], [ 0, %if.end37 ], [ %conv59, %land.lhs.true62 ], [ %mul71, %if.then69 ]
  br i1 %tobool, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end86
  %cmp = icmp eq i32 %a_ref_idx.1, 0
  br i1 %cmp, label %land.lhs.true90, label %land.end

land.lhs.true90:                                  ; preds = %cond.false
  %pos_y91 = getelementptr inbounds %struct.pix_pos* %mb_a, i64 0, i32 5
  %40 = load i32* %pos_y91, align 4, !tbaa !3
  %idxprom92 = sext i32 %40 to i64
  %pos_x93 = getelementptr inbounds %struct.pix_pos* %mb_a, i64 0, i32 4
  %41 = load i32* %pos_x93, align 4, !tbaa !3
  %idxprom94 = sext i32 %41 to i64
  %42 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv95 = getelementptr inbounds %struct.storable_picture* %42, i64 0, i32 35
  %43 = load i16***** %mv95, align 8, !tbaa !0
  %44 = load i16**** %43, align 8, !tbaa !0
  %arrayidx97 = getelementptr inbounds i16*** %44, i64 %idxprom94
  %45 = load i16*** %arrayidx97, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds i16** %45, i64 %idxprom92
  %46 = load i16** %arrayidx98, align 8, !tbaa !0
  %47 = load i16* %46, align 2, !tbaa !4
  %cmp101 = icmp eq i16 %47, 0
  %cmp103 = icmp eq i32 %a_mv_y.1, 0
  %cmp103. = and i1 %cmp101, %cmp103
  br label %land.end

land.end:                                         ; preds = %land.lhs.true90, %cond.false
  %48 = phi i1 [ false, %cond.false ], [ %cmp103., %land.lhs.true90 ]
  %cond = zext i1 %48 to i32
  br label %cond.end

cond.end:                                         ; preds = %if.end86, %land.end
  %cond105 = phi i32 [ %cond, %land.end ], [ 1, %if.end86 ]
  br i1 %tobool39, label %for.cond137.preheader, label %cond.false109

cond.false109:                                    ; preds = %cond.end
  %cmp110 = icmp eq i32 %b_ref_idx.1, 0
  br i1 %cmp110, label %land.lhs.true112, label %lor.lhs.false.critedge

land.lhs.true112:                                 ; preds = %cond.false109
  %pos_y113 = getelementptr inbounds %struct.pix_pos* %mb_b, i64 0, i32 5
  %49 = load i32* %pos_y113, align 4, !tbaa !3
  %idxprom114 = sext i32 %49 to i64
  %pos_x115 = getelementptr inbounds %struct.pix_pos* %mb_b, i64 0, i32 4
  %50 = load i32* %pos_x115, align 4, !tbaa !3
  %idxprom116 = sext i32 %50 to i64
  %51 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv117 = getelementptr inbounds %struct.storable_picture* %51, i64 0, i32 35
  %52 = load i16***** %mv117, align 8, !tbaa !0
  %53 = load i16**** %52, align 8, !tbaa !0
  %arrayidx119 = getelementptr inbounds i16*** %53, i64 %idxprom116
  %54 = load i16*** %arrayidx119, align 8, !tbaa !0
  %arrayidx120 = getelementptr inbounds i16** %54, i64 %idxprom114
  %55 = load i16** %arrayidx120, align 8, !tbaa !0
  %56 = load i16* %55, align 2, !tbaa !4
  %notlhs = icmp ne i16 %56, 0
  %notrhs = icmp ne i32 %b_mv_y.1, 0
  %cmp126..not = or i1 %notrhs, %notlhs
  %tobool133 = icmp eq i32 %cond105, 0
  %or.cond = and i1 %cmp126..not, %tobool133
  br i1 %or.cond, label %if.else, label %for.cond137.preheader

lor.lhs.false.critedge:                           ; preds = %cond.false109
  %tobool133.old = icmp eq i32 %cond105, 0
  br i1 %tobool133.old, label %lor.lhs.false.critedge.if.else_crit_edge, label %for.cond137.preheader

lor.lhs.false.critedge.if.else_crit_edge:         ; preds = %lor.lhs.false.critedge
  %.pre = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mv161.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre, i64 0, i32 35
  %.pre246 = load i16***** %mv161.phi.trans.insert, align 8, !tbaa !0
  br label %if.else

for.cond137.preheader:                            ; preds = %lor.lhs.false.critedge, %land.lhs.true112, %cond.end, %for.inc157
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %for.inc157 ], [ 0, %cond.end ], [ 0, %land.lhs.true112 ], [ 0, %lor.lhs.false.critedge ]
  br label %for.body140

for.body140:                                      ; preds = %for.body140, %for.cond137.preheader
  %indvars.iv = phi i64 [ 0, %for.cond137.preheader ], [ %indvars.iv.next, %for.body140 ]
  %arrayidx143 = getelementptr inbounds i16****** %1, i64 %indvars.iv
  %57 = load i16****** %arrayidx143, align 8, !tbaa !0
  %arrayidx144 = getelementptr inbounds i16***** %57, i64 %indvars.iv234
  %58 = load i16***** %arrayidx144, align 8, !tbaa !0
  %59 = load i16**** %58, align 8, !tbaa !0
  %60 = load i16*** %59, align 8, !tbaa !0
  %61 = load i16** %60, align 8, !tbaa !0
  store i16 0, i16* %61, align 2, !tbaa !4
  %arrayidx156 = getelementptr inbounds i16* %61, i64 1
  store i16 0, i16* %arrayidx156, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc157, label %for.body140

for.inc157:                                       ; preds = %for.body140
  %indvars.iv.next235 = add i64 %indvars.iv234, 1
  %lftr.wideiv236 = trunc i64 %indvars.iv.next235 to i32
  %exitcond237 = icmp eq i32 %lftr.wideiv236, 4
  br i1 %exitcond237, label %if.end194, label %for.cond137.preheader

if.else:                                          ; preds = %lor.lhs.false.critedge.if.else_crit_edge, %land.lhs.true112
  %62 = phi i16**** [ %.pre246, %lor.lhs.false.critedge.if.else_crit_edge ], [ %52, %land.lhs.true112 ]
  %63 = phi %struct.storable_picture* [ %.pre, %lor.lhs.false.critedge.if.else_crit_edge ], [ %51, %land.lhs.true112 ]
  %arraydecay = getelementptr inbounds [2 x i16]* %pmv, i64 0, i64 0
  %ref_idx160 = getelementptr inbounds %struct.storable_picture* %63, i64 0, i32 32
  %64 = load i16**** %ref_idx160, align 8, !tbaa !0
  call void @SetMotionVectorPredictor(i16* %arraydecay, i16*** %64, i16**** %62, i16 signext 0, i32 0, i32 0, i32 0, i32 16, i32 16) #8
  %65 = load i16* %arraydecay, align 2, !tbaa !4
  %arrayidx179 = getelementptr inbounds [2 x i16]* %pmv, i64 0, i64 1
  %66 = load i16* %arrayidx179, align 2, !tbaa !4
  br label %for.cond166.preheader

for.cond166.preheader:                            ; preds = %for.inc191, %if.else
  %indvars.iv242 = phi i64 [ 0, %if.else ], [ %indvars.iv.next243, %for.inc191 ]
  br label %for.body169

for.body169:                                      ; preds = %for.body169, %for.cond166.preheader
  %indvars.iv238 = phi i64 [ 0, %for.cond166.preheader ], [ %indvars.iv.next239, %for.body169 ]
  %arrayidx173 = getelementptr inbounds i16****** %1, i64 %indvars.iv238
  %67 = load i16****** %arrayidx173, align 8, !tbaa !0
  %arrayidx174 = getelementptr inbounds i16***** %67, i64 %indvars.iv242
  %68 = load i16***** %arrayidx174, align 8, !tbaa !0
  %69 = load i16**** %68, align 8, !tbaa !0
  %70 = load i16*** %69, align 8, !tbaa !0
  %71 = load i16** %70, align 8, !tbaa !0
  store i16 %65, i16* %71, align 2, !tbaa !4
  %arrayidx187 = getelementptr inbounds i16* %71, i64 1
  store i16 %66, i16* %arrayidx187, align 2, !tbaa !4
  %indvars.iv.next239 = add i64 %indvars.iv238, 1
  %lftr.wideiv240 = trunc i64 %indvars.iv.next239 to i32
  %exitcond241 = icmp eq i32 %lftr.wideiv240, 4
  br i1 %exitcond241, label %for.inc191, label %for.body169

for.inc191:                                       ; preds = %for.body169
  %indvars.iv.next243 = add i64 %indvars.iv242, 1
  %lftr.wideiv244 = trunc i64 %indvars.iv.next243 to i32
  %exitcond245 = icmp eq i32 %lftr.wideiv244, 4
  br i1 %exitcond245, label %if.end194, label %for.cond166.preheader

if.end194:                                        ; preds = %for.inc191, %for.inc157
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Get_Direct_Cost8x8(i32 %block, i32* nocapture %cost8x8) #0 {
entry:
  %curr_diff = alloca [8 x [8 x i32]], align 16
  %diff8x8 = alloca [64 x i32], align 16
  %diff = alloca [16 x i32], align 16
  %0 = bitcast [8 x [8 x i32]]* %curr_diff to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #3
  %1 = bitcast [64 x i32]* %diff8x8 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %1) #3
  %2 = bitcast [16 x i32]* %diff to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #3
  %div = sdiv i32 %block, 2
  %shl = shl i32 %div, 3
  %rem = srem i32 %block, 2
  %shl1 = shl i32 %rem, 3
  %arraydecay = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 0
  %3 = shl i32 %rem, 3
  %4 = sext i32 %3 to i64
  %5 = shl i32 %div, 3
  %6 = sext i32 %5 to i64
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc74
  %7 = phi %struct.ImageParameters* [ %.pre, %entry ], [ %26, %for.inc74 ]
  %indvars.iv187 = phi i64 [ %6, %entry ], [ %indvars.iv.next188, %for.inc74 ]
  %cost.0162 = phi i32 [ 0, %entry ], [ %add70, %for.inc74 ]
  %opix_y = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 38
  %8 = load i32* %opix_y, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv187 to i32
  %add2 = add nsw i32 %8, %9
  %shr = ashr i32 %add2, 2
  %idxprom = sext i32 %shr to i64
  %sub59 = sub i32 %9, %shl
  %10 = sext i32 %add2 to i64
  %11 = sext i32 %sub59 to i64
  br label %for.body6

for.body6:                                        ; preds = %for.body, %for.end69
  %12 = phi %struct.ImageParameters* [ %7, %for.body ], [ %26, %for.end69 ]
  %indvars.iv185 = phi i64 [ %4, %for.body ], [ %indvars.iv.next186, %for.end69 ]
  %cost.1160 = phi i32 [ %cost.0162, %for.body ], [ %add70, %for.end69 ]
  %opix_x = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 37
  %13 = load i32* %opix_x, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv185 to i32
  %add7 = add nsw i32 %13, %14
  %shr8 = ashr i32 %add7, 2
  %idxprom9 = sext i32 %shr8 to i64
  %15 = load i16*** @direct_pdir, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i16** %15, i64 %idxprom9
  %16 = load i16** %arrayidx, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds i16* %16, i64 %idxprom
  %17 = load i16* %arrayidx10, align 2, !tbaa !4
  %cmp11 = icmp slt i16 %17, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  store i32 2147483647, i32* %cost8x8, align 4, !tbaa !3
  br label %cleanup

if.end:                                           ; preds = %for.body6
  %conv = sext i16 %17 to i32
  %18 = load i16**** @direct_ref_idx, align 8, !tbaa !0
  %19 = load i16*** %18, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds i16** %19, i64 %idxprom9
  %20 = load i16** %arrayidx25, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i16* %20, i64 %idxprom
  %21 = load i16* %arrayidx26, align 2, !tbaa !4
  %arrayidx31 = getelementptr inbounds i16*** %18, i64 1
  %22 = load i16*** %arrayidx31, align 8, !tbaa !0
  %arrayidx32 = getelementptr inbounds i16** %22, i64 %idxprom9
  %23 = load i16** %arrayidx32, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i16* %23, i64 %idxprom
  %24 = load i16* %arrayidx33, align 2, !tbaa !4
  call void @LumaPrediction4x4(i32 %14, i32 %9, i32 %conv, i32 0, i32 0, i16 signext %21, i16 signext %24) #7
  %25 = load i16*** @imgY_org, align 8, !tbaa !0
  %26 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %sub56 = sub i32 %14, %shl1
  %27 = sext i32 %add7 to i64
  %28 = sext i32 %sub56 to i64
  br label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.inc67, %if.end
  %indvars.iv178 = phi i64 [ 0, %if.end ], [ %indvars.iv.next179, %for.inc67 ]
  %indvars.iv176 = phi i64 [ 0, %if.end ], [ %indvars.iv.next177, %for.inc67 ]
  %29 = add nsw i64 %indvars.iv178, %10
  %arrayidx46 = getelementptr inbounds i16** %25, i64 %29
  %30 = load i16** %arrayidx46, align 8, !tbaa !0
  %31 = add nsw i64 %indvars.iv178, %indvars.iv187
  %32 = add nsw i64 %11, %indvars.iv178
  br label %for.body41

for.body41:                                       ; preds = %for.body41, %for.cond38.preheader
  %indvars.iv169 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next170, %for.body41 ]
  %indvars.iv = phi i64 [ %indvars.iv176, %for.cond38.preheader ], [ %indvars.iv.next, %for.body41 ]
  %33 = add nsw i64 %indvars.iv169, %27
  %arrayidx47 = getelementptr inbounds i16* %30, i64 %33
  %34 = load i16* %arrayidx47, align 2, !tbaa !4
  %conv48 = zext i16 %34 to i32
  %35 = add nsw i64 %indvars.iv169, %indvars.iv185
  %arrayidx54 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 45, i64 %35, i64 %31
  %36 = load i16* %arrayidx54, align 2, !tbaa !4
  %conv55 = zext i16 %36 to i32
  %sub = sub nsw i32 %conv48, %conv55
  %37 = add nsw i64 %28, %indvars.iv169
  %arrayidx63 = getelementptr inbounds [8 x [8 x i32]]* %curr_diff, i64 0, i64 %32, i64 %37
  store i32 %sub, i32* %arrayidx63, align 4, !tbaa !3
  %arrayidx65 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 %indvars.iv
  store i32 %sub, i32* %arrayidx65, align 4, !tbaa !3
  %indvars.iv.next170 = add i64 %indvars.iv169, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv174 = trunc i64 %indvars.iv.next170 to i32
  %exitcond175 = icmp eq i32 %lftr.wideiv174, 4
  br i1 %exitcond175, label %for.inc67, label %for.body41

for.inc67:                                        ; preds = %for.body41
  %indvars.iv.next177 = add i64 %indvars.iv176, 4
  %indvars.iv.next179 = add i64 %indvars.iv178, 1
  %lftr.wideiv183 = trunc i64 %indvars.iv.next179 to i32
  %exitcond184 = icmp eq i32 %lftr.wideiv183, 4
  br i1 %exitcond184, label %for.end69, label %for.cond38.preheader

for.end69:                                        ; preds = %for.inc67
  %38 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %hadamard = getelementptr inbounds %struct.InputParameters* %38, i64 0, i32 6
  %39 = load i32* %hadamard, align 4, !tbaa !3
  %call = call i32 @SATD(i32* %arraydecay, i32 %39) #8
  %add70 = add nsw i32 %call, %cost.1160
  %indvars.iv.next186 = add i64 %indvars.iv185, 4
  %40 = or i32 %shl1, 4
  %cmp5 = icmp slt i32 %14, %40
  br i1 %cmp5, label %for.body6, label %for.inc74

for.inc74:                                        ; preds = %for.end69
  %indvars.iv.next188 = add i64 %indvars.iv187, 4
  %41 = or i32 %shl, 4
  %cmp = icmp slt i32 %9, %41
  br i1 %cmp, label %for.body, label %for.end76

for.end76:                                        ; preds = %for.inc74
  %rdopt = getelementptr inbounds %struct.InputParameters* %38, i64 0, i32 85
  %42 = load i32* %rdopt, align 4, !tbaa !3
  %cmp77 = icmp eq i32 %42, 0
  br i1 %cmp77, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %for.end76
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %38, i64 0, i32 123
  %43 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool = icmp eq i32 %43, 0
  br i1 %tobool, label %cleanup, label %for.cond84.preheader

for.cond84.preheader:                             ; preds = %land.lhs.true, %for.cond84.preheader
  %indvar = phi i64 [ %indvar.next, %for.cond84.preheader ], [ 0, %land.lhs.true ]
  %44 = shl i64 %indvar, 3
  %scevgep = getelementptr [64 x i32]* %diff8x8, i64 0, i64 %44
  %scevgep166 = bitcast i32* %scevgep to i8*
  %scevgep167 = getelementptr [8 x [8 x i32]]* %curr_diff, i64 0, i64 %indvar, i64 0
  %scevgep167168 = bitcast i32* %scevgep167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep166, i8* %scevgep167168, i64 32, i32 16, i1 false)
  %indvar.next = add i64 %indvar, 1
  %lftr.wideiv = trunc i64 %indvar.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %for.end100, label %for.cond84.preheader

for.end100:                                       ; preds = %for.cond84.preheader
  %arraydecay101 = getelementptr inbounds [64 x i32]* %diff8x8, i64 0, i64 0
  %call103 = call i32 @SATD8X8(i32* %arraydecay101, i32 %39) #8
  %45 = load i32* %cost8x8, align 4, !tbaa !3
  %add104 = add nsw i32 %45, %call103
  store i32 %add104, i32* %cost8x8, align 4, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %for.end76, %for.end100, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ 2147483647, %if.then ], [ %add70, %land.lhs.true ], [ %add70, %for.end100 ], [ %add70, %for.end76 ]
  call void @llvm.lifetime.end(i64 64, i8* %2) #3
  call void @llvm.lifetime.end(i64 256, i8* %1) #3
  call void @llvm.lifetime.end(i64 256, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Get_Direct_CostMB(double %lambda) #0 {
entry:
  %cost8x8 = alloca i32, align 4
  store i32 0, i32* %cost8x8, align 4, !tbaa !3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %cmp = icmp slt i32 %inc, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %cost.019 = phi i32 [ 0, %entry ], [ %add, %for.cond ]
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %call = call i32 @Get_Direct_Cost8x8(i32 %i.018, i32* %cost8x8) #8
  %add = add nsw i32 %call, %cost.019
  %cmp1 = icmp eq i32 %add, 2147483647
  %0 = load i32* %cost8x8, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %0, 2147483647
  %or.cond = or i1 %cmp1, %cmp2
  %inc = add nsw i32 %i.018, 1
  br i1 %or.cond, label %return, label %for.cond

for.end:                                          ; preds = %for.cond
  %1 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 123
  %2 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  switch i32 %2, label %return [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %for.end
  %cmp3 = icmp slt i32 %0, %add
  br i1 %cmp3, label %if.then8, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %sw.bb
  %InterSearch8x4 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 66
  %3 = load i32* %InterSearch8x4, align 4, !tbaa !3
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.then8, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %InterSearch4x8 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 67
  %4 = load i32* %InterSearch4x8, align 4, !tbaa !3
  %tobool5 = icmp eq i32 %4, 0
  br i1 %tobool5, label %if.then8, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %InterSearch4x4 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 68
  %5 = load i32* %InterSearch4x4, align 4, !tbaa !3
  %tobool7 = icmp eq i32 %5, 0
  br i1 %tobool7, label %if.then8, label %return

if.then8:                                         ; preds = %land.lhs.true6, %land.lhs.true, %lor.lhs.false4, %sw.bb
  br label %return

sw.bb10:                                          ; preds = %for.end
  br label %return

return:                                           ; preds = %for.body, %sw.bb10, %if.then8, %for.end, %land.lhs.true6
  %retval.0 = phi i32 [ %add, %for.end ], [ %0, %sw.bb10 ], [ %0, %if.then8 ], [ %add, %land.lhs.true6 ], [ %add, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @PartitionMotionSearch(i32 %blocktype, i32 %block8x8, double %lambda) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 1
  %cmp1 = icmp slt i32 %blocktype, 4
  %2 = sext i32 %blocktype to i64
  %idxprom = select i1 %cmp1, i64 %2, i64 4
  %3 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 21, i64 %idxprom, i64 0
  %4 = load i32* %arrayidx3, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 21, i64 %idxprom, i64 1
  %5 = load i32* %arrayidx7, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 21, i64 %2, i64 0
  %6 = load i32* %arrayidx11, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 21, i64 %2, i64 1
  %7 = load i32* %arrayidx15, align 4, !tbaa !3
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %8 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom16 = sext i32 %8 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %9 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %mb_field = getelementptr inbounds %struct.macroblock* %9, i64 %idxprom16, i32 22
  %10 = load i32* %mb_field, align 4, !tbaa !3
  %tobool = icmp eq i32 %10, 0
  br i1 %tobool, label %if.end22, label %if.then

if.then:                                          ; preds = %entry
  %rem254 = shl i32 %8, 1
  %11 = and i32 %rem254, 2
  %12 = add i32 %11, 2
  %phitmp282 = zext i32 %12 to i64
  br label %if.end22

if.end22:                                         ; preds = %entry, %if.then
  %list_offset.0 = phi i64 [ %phitmp282, %if.then ], [ 0, %entry ]
  %cond24 = select i1 %cmp, i32 2, i32 1
  %idxprom77 = sext i32 %block8x8 to i64
  %arrayidx88 = getelementptr inbounds [5 x [4 x i32]]* @PartitionMotionSearch.by0, i64 0, i64 %idxprom, i64 %idxprom77
  %arrayidx102 = getelementptr inbounds [5 x [4 x i32]]* @PartitionMotionSearch.bx0, i64 0, i64 %idxprom, i64 %idxprom77
  %cmp124257 = icmp sgt i32 %7, 0
  %cmp128255 = icmp sgt i32 %6, 0
  %cmp64 = icmp sgt i32 %blocktype, 2
  %cond69 = select i1 %cmp64, i32 2, i32 %blocktype
  %13 = sext i32 %6 to i64
  %14 = sext i32 %7 to i64
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %if.end22, %for.inc186
  %indvars.iv279 = phi i64 [ 0, %if.end22 ], [ %indvars.iv.next280, %for.inc186 ]
  %15 = add nsw i64 %indvars.iv279, %list_offset.0
  %arrayidx30 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %15
  %16 = load i32* %arrayidx30, align 4, !tbaa !3
  %cmp31265 = icmp sgt i32 %16, 0
  br i1 %cmp31265, label %for.body33.lr.ph, label %for.inc186

for.body33.lr.ph:                                 ; preds = %for.cond27.preheader
  %17 = load i32* %arrayidx88, align 4, !tbaa !3
  %cmp95263 = icmp sgt i32 %5, 0
  %18 = sext i32 %17 to i64
  br label %for.body33

for.body33:                                       ; preds = %for.inc183.for.body33_crit_edge, %for.body33.lr.ph
  %conv28267 = phi i32 [ 1, %for.body33.lr.ph ], [ %phitmp, %for.inc183.for.body33_crit_edge ]
  %ref.0266 = phi i16 [ 0, %for.body33.lr.ph ], [ %inc184, %for.inc183.for.body33_crit_edge ]
  %19 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %full_search = getelementptr inbounds %struct.InputParameters* %19, i64 0, i32 78
  %20 = load i32* %full_search, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %20, 2
  br i1 %cmp34, label %if.then36, label %if.else38

if.then36:                                        ; preds = %for.body33
  %search_range37 = getelementptr inbounds %struct.InputParameters* %19, i64 0, i32 8
  %21 = load i32* %search_range37, align 4, !tbaa !3
  br label %if.end72

if.else38:                                        ; preds = %for.body33
  %cmp40 = icmp eq i32 %20, 1
  %search_range43 = getelementptr inbounds %struct.InputParameters* %19, i64 0, i32 8
  %22 = load i32* %search_range43, align 4, !tbaa !3
  %cmp45 = icmp slt i16 %ref.0266, 1
  %phitmp253. = select i1 %cmp45, i32 %conv28267, i32 2
  br i1 %cmp40, label %if.then42, label %if.else53

if.then42:                                        ; preds = %if.else38
  %div = sdiv i32 %22, %phitmp253.
  br label %if.end72

if.else53:                                        ; preds = %if.else38
  %mul = mul nsw i32 %phitmp253., %cond69
  %div70 = sdiv i32 %22, %mul
  br label %if.end72

if.end72:                                         ; preds = %if.then42, %if.else53, %if.then36
  %search_range.0 = phi i32 [ %21, %if.then36 ], [ %div, %if.then42 ], [ %div70, %if.else53 ]
  %23 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx = getelementptr inbounds %struct.storable_picture* %23, i64 0, i32 32
  %24 = load i16**** %ref_idx, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds i16*** %24, i64 %indvars.iv279
  %25 = load i16*** %arrayidx74, align 8, !tbaa !0
  %mv = getelementptr inbounds %struct.storable_picture* %23, i64 0, i32 35
  %26 = load i16***** %mv, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i16**** %26, i64 %indvars.iv279
  %27 = load i16**** %arrayidx76, align 8, !tbaa !0
  %idxprom78 = sext i16 %ref.0266 to i64
  %28 = load i32***** @motion_cost, align 8, !tbaa !0
  %arrayidx81 = getelementptr inbounds i32**** %28, i64 %2
  %29 = load i32**** %arrayidx81, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds i32*** %29, i64 %indvars.iv279
  %30 = load i32*** %arrayidx82, align 8, !tbaa !0
  %arrayidx83 = getelementptr inbounds i32** %30, i64 %idxprom78
  %31 = load i32** %arrayidx83, align 8, !tbaa !0
  %arrayidx84 = getelementptr inbounds i32* %31, i64 %idxprom77
  store i32 0, i32* %arrayidx84, align 4, !tbaa !3
  br i1 %cmp95263, label %for.body97.lr.ph, label %for.inc183

for.body97.lr.ph:                                 ; preds = %if.end72
  %32 = load i32* %arrayidx102, align 4, !tbaa !3
  %cmp109260 = icmp sgt i32 %4, 0
  %add94 = add nsw i32 %17, %5
  %33 = sext i32 %32 to i64
  br label %for.body97

for.body97:                                       ; preds = %for.inc180, %for.body97.lr.ph
  %indvars.iv277 = phi i64 [ %18, %for.body97.lr.ph ], [ %indvars.iv.next278, %for.inc180 ]
  %34 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %35 = trunc i64 %indvars.iv277 to i32
  br i1 %cmp109260, label %for.body111.lr.ph, label %for.inc180

for.body111.lr.ph:                                ; preds = %for.body97
  %block_y = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 32
  %36 = load i32* %block_y, align 4, !tbaa !3
  %add98 = add nsw i32 %36, %35
  %shl113 = shl i32 %35, 2
  %add108 = add nsw i32 %32, %4
  %37 = sext i32 %add98 to i64
  br label %for.body111

for.body111:                                      ; preds = %for.inc177.for.body111_crit_edge, %for.body111.lr.ph
  %38 = phi %struct.ImageParameters* [ %34, %for.body111.lr.ph ], [ %.pre, %for.inc177.for.body111_crit_edge ]
  %indvars.iv275 = phi i64 [ %33, %for.body111.lr.ph ], [ %indvars.iv.next276, %for.inc177.for.body111_crit_edge ]
  %block_x = getelementptr inbounds %struct.ImageParameters* %38, i64 0, i32 31
  %39 = load i32* %block_x, align 4, !tbaa !3
  %40 = trunc i64 %indvars.iv275 to i32
  %shl = shl i32 %40, 2
  %41 = trunc i64 %indvars.iv279 to i32
  %call = tail call i32 @BlockMotionSearch(i16 signext %ref.0266, i32 %41, i32 %shl, i32 %shl113, i32 %blocktype, i32 %search_range.0, double %lambda) #8
  %42 = load i32***** @motion_cost, align 8, !tbaa !0
  %arrayidx118 = getelementptr inbounds i32**** %42, i64 %2
  %43 = load i32**** %arrayidx118, align 8, !tbaa !0
  %arrayidx119 = getelementptr inbounds i32*** %43, i64 %indvars.iv279
  %44 = load i32*** %arrayidx119, align 8, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32** %44, i64 %idxprom78
  %45 = load i32** %arrayidx120, align 8, !tbaa !0
  %arrayidx121 = getelementptr inbounds i32* %45, i64 %idxprom77
  %46 = load i32* %arrayidx121, align 4, !tbaa !3
  %add122 = add nsw i32 %46, %call
  store i32 %add122, i32* %arrayidx121, align 4, !tbaa !3
  br i1 %cmp124257, label %for.cond127.preheader.lr.ph, label %for.inc177

for.cond127.preheader.lr.ph:                      ; preds = %for.body111
  %add112 = add nsw i32 %39, %40
  %47 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %all_mv = getelementptr inbounds %struct.ImageParameters* %47, i64 0, i32 71
  %48 = sext i32 %add112 to i64
  br label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %for.inc174, %for.cond127.preheader.lr.ph
  %indvars.iv270 = phi i64 [ 0, %for.cond127.preheader.lr.ph ], [ %indvars.iv.next271, %for.inc174 ]
  br i1 %cmp128255, label %for.body130.lr.ph, label %for.inc174

for.body130.lr.ph:                                ; preds = %for.cond127.preheader
  %49 = load i16******* %all_mv, align 8, !tbaa !0
  %arrayidx136 = getelementptr inbounds i16****** %49, i64 %indvars.iv275
  %50 = load i16****** %arrayidx136, align 8, !tbaa !0
  %arrayidx137 = getelementptr inbounds i16***** %50, i64 %indvars.iv277
  %51 = load i16***** %arrayidx137, align 8, !tbaa !0
  %arrayidx138 = getelementptr inbounds i16**** %51, i64 %indvars.iv279
  %52 = load i16**** %arrayidx138, align 8, !tbaa !0
  %arrayidx139 = getelementptr inbounds i16*** %52, i64 %idxprom78
  %53 = load i16*** %arrayidx139, align 8, !tbaa !0
  %arrayidx140 = getelementptr inbounds i16** %53, i64 %2
  %54 = load i16** %arrayidx140, align 8, !tbaa !0
  %55 = add nsw i64 %37, %indvars.iv270
  %arrayidx160 = getelementptr inbounds i16* %54, i64 1
  br label %for.body130

for.body130:                                      ; preds = %for.body130, %for.body130.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body130.lr.ph ], [ %indvars.iv.next, %for.body130 ]
  %56 = load i16* %54, align 2, !tbaa !4
  %57 = add nsw i64 %48, %indvars.iv
  %arrayidx146 = getelementptr inbounds i16*** %27, i64 %57
  %58 = load i16*** %arrayidx146, align 8, !tbaa !0
  %arrayidx147 = getelementptr inbounds i16** %58, i64 %55
  %59 = load i16** %arrayidx147, align 8, !tbaa !0
  store i16 %56, i16* %59, align 2, !tbaa !4
  %60 = load i16* %arrayidx160, align 2, !tbaa !4
  %arrayidx167 = getelementptr inbounds i16* %59, i64 1
  store i16 %60, i16* %arrayidx167, align 2, !tbaa !4
  %arrayidx172 = getelementptr inbounds i16** %25, i64 %57
  %61 = load i16** %arrayidx172, align 8, !tbaa !0
  %arrayidx173 = getelementptr inbounds i16* %61, i64 %55
  store i16 %ref.0266, i16* %arrayidx173, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %for.inc174, label %for.body130

for.inc174:                                       ; preds = %for.body130, %for.cond127.preheader
  %indvars.iv.next271 = add i64 %indvars.iv270, 1
  %lftr.wideiv273 = trunc i64 %indvars.iv.next271 to i32
  %exitcond274 = icmp eq i32 %lftr.wideiv273, %7
  br i1 %exitcond274, label %for.inc177, label %for.cond127.preheader

for.inc177:                                       ; preds = %for.inc174, %for.body111
  %indvars.iv.next276 = add i64 %indvars.iv275, %13
  %62 = trunc i64 %indvars.iv.next276 to i32
  %cmp109 = icmp slt i32 %62, %add108
  br i1 %cmp109, label %for.inc177.for.body111_crit_edge, label %for.inc180

for.inc177.for.body111_crit_edge:                 ; preds = %for.inc177
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %for.body111

for.inc180:                                       ; preds = %for.inc177, %for.body97
  %indvars.iv.next278 = add i64 %indvars.iv277, %14
  %63 = trunc i64 %indvars.iv.next278 to i32
  %cmp95 = icmp slt i32 %63, %add94
  br i1 %cmp95, label %for.body97, label %for.inc183

for.inc183:                                       ; preds = %for.inc180, %if.end72
  %inc184 = add i16 %ref.0266, 1
  %conv28 = sext i16 %inc184 to i32
  %64 = load i32* %arrayidx30, align 4, !tbaa !3
  %cmp31 = icmp slt i32 %conv28, %64
  br i1 %cmp31, label %for.inc183.for.body33_crit_edge, label %for.inc186

for.inc183.for.body33_crit_edge:                  ; preds = %for.inc183
  %phitmp = add i32 %conv28, 1
  br label %for.body33

for.inc186:                                       ; preds = %for.inc183, %for.cond27.preheader
  %indvars.iv.next280 = add i64 %indvars.iv279, 1
  %65 = trunc i64 %indvars.iv.next280 to i32
  %cmp25 = icmp slt i32 %65, %cond24
  br i1 %cmp25, label %for.cond27.preheader, label %for.end188

for.end188:                                       ; preds = %for.inc186
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Get_Direct_Motion_Vectors() #0 {
entry:
  %pmvfw = alloca i32, align 4
  %pmvbw = alloca i32, align 4
  %mb_left = alloca %struct.pix_pos, align 4
  %mb_up = alloca %struct.pix_pos, align 4
  %mb_upleft = alloca %struct.pix_pos, align 4
  %mb_upright = alloca %struct.pix_pos, align 4
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %all_mv = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71
  %1 = load i16******* %all_mv, align 8, !tbaa !0
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3
  %2 = load i32* %current_mb_nr, align 4, !tbaa !3
  %idxprom = sext i32 %2 to i64
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51
  %3 = load %struct.macroblock** %mb_data, align 8, !tbaa !0
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90
  %4 = load i32* %MbaffFrameFlag, align 4, !tbaa !3
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.else5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %5 = load i32* %mb_field, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %5, 0
  br i1 %tobool1, label %if.else5, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %rem1858 = and i32 %2, 1
  %tobool3 = icmp eq i32 %rem1858, 0
  %6 = load %struct.colocated_params** @Co_located, align 8, !tbaa !0
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %bottom_moving_block = getelementptr inbounds %struct.colocated_params* %6, i64 0, i32 17
  %bottom_mv = getelementptr inbounds %struct.colocated_params* %6, i64 0, i32 16
  %bottom_ref_idx = getelementptr inbounds %struct.colocated_params* %6, i64 0, i32 14
  %bottom_ref_pic_id = getelementptr inbounds %struct.colocated_params* %6, i64 0, i32 15
  br label %if.end7

if.else:                                          ; preds = %if.then
  %top_moving_block = getelementptr inbounds %struct.colocated_params* %6, i64 0, i32 12
  %top_mv = getelementptr inbounds %struct.colocated_params* %6, i64 0, i32 11
  %top_ref_idx = getelementptr inbounds %struct.colocated_params* %6, i64 0, i32 9
  %top_ref_pic_id = getelementptr inbounds %struct.colocated_params* %6, i64 0, i32 10
  br label %if.end7

if.else5:                                         ; preds = %land.lhs.true, %entry
  %7 = load %struct.colocated_params** @Co_located, align 8, !tbaa !0
  %moving_block6 = getelementptr inbounds %struct.colocated_params* %7, i64 0, i32 7
  %mv = getelementptr inbounds %struct.colocated_params* %7, i64 0, i32 6
  %ref_idx = getelementptr inbounds %struct.colocated_params* %7, i64 0, i32 4
  %ref_pic_id = getelementptr inbounds %struct.colocated_params* %7, i64 0, i32 5
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.else, %if.else5
  %moving_block.0.in = phi i8*** [ %bottom_moving_block, %if.then4 ], [ %top_moving_block, %if.else ], [ %moving_block6, %if.else5 ]
  %co_located_mv.0.in = phi i16***** [ %bottom_mv, %if.then4 ], [ %top_mv, %if.else ], [ %mv, %if.else5 ]
  %co_located_ref_idx.0.in = phi i16**** [ %bottom_ref_idx, %if.then4 ], [ %top_ref_idx, %if.else ], [ %ref_idx, %if.else5 ]
  %co_located_ref_id.0.in = phi i64**** [ %bottom_ref_pic_id, %if.then4 ], [ %top_ref_pic_id, %if.else ], [ %ref_pic_id, %if.else5 ]
  %co_located_ref_id.0 = load i64**** %co_located_ref_id.0.in, align 8
  %co_located_ref_idx.0 = load i16**** %co_located_ref_idx.0.in, align 8
  %co_located_mv.0 = load i16***** %co_located_mv.0.in, align 8
  %moving_block.0 = load i8*** %moving_block.0.in, align 8
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 78
  %8 = load i32* %direct_spatial_mv_pred_flag, align 4, !tbaa !3
  %tobool8 = icmp eq i32 %8, 0
  br i1 %tobool8, label %for.cond1294.preheader, label %if.then9

for.cond1294.preheader:                           ; preds = %if.end7
  %pix_y1298 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34
  %9 = load i32* %pix_y1298, align 4, !tbaa !3
  %shr1299 = ashr i32 %9, 2
  %opix_y1301 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 38
  %10 = load i32* %opix_y1301, align 4, !tbaa !3
  %shr1302 = ashr i32 %10, 2
  %pix_x1322 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33
  %11 = load i32* %pix_x1322, align 4, !tbaa !3
  %shr1323 = ashr i32 %11, 2
  %opix_x1325 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 37
  %12 = load i32* %opix_x1325, align 4, !tbaa !3
  %shr1326 = ashr i32 %12, 2
  %13 = load i16*** %co_located_ref_idx.0, align 8, !tbaa !0
  %14 = load i16**** @direct_ref_idx, align 8, !tbaa !0
  %arrayidx1386 = getelementptr inbounds i16*** %14, i64 1
  %15 = load i16*** @direct_pdir, align 8, !tbaa !0
  %num_ref_idx_l0_active1868 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 79
  %16 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %mb_field1312 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %17 = sext i32 %shr1326 to i64
  %18 = sext i32 %shr1323 to i64
  %19 = sext i32 %shr1302 to i64
  %20 = sext i32 %shr1299 to i64
  br label %for.body1297

if.then9:                                         ; preds = %if.end7
  store i32 0, i32* %pmvfw, align 4
  store i32 0, i32* %pmvbw, align 4
  call void @getLuma4x4Neighbour(i32 %2, i32 0, i32 0, i32 -1, i32 0, %struct.pix_pos* %mb_left) #7
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr11 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 3
  %22 = load i32* %current_mb_nr11, align 4, !tbaa !3
  call void @getLuma4x4Neighbour(i32 %22, i32 0, i32 0, i32 0, i32 -1, %struct.pix_pos* %mb_up) #7
  %23 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr12 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 3
  %24 = load i32* %current_mb_nr12, align 4, !tbaa !3
  call void @getLuma4x4Neighbour(i32 %24, i32 0, i32 0, i32 16, i32 -1, %struct.pix_pos* %mb_upright) #7
  %25 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %current_mb_nr13 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 3
  %26 = load i32* %current_mb_nr13, align 4, !tbaa !3
  call void @getLuma4x4Neighbour(i32 %26, i32 0, i32 0, i32 -1, i32 -1, %struct.pix_pos* %mb_upleft) #7
  %27 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MbaffFrameFlag14 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 90
  %28 = load i32* %MbaffFrameFlag14, align 4, !tbaa !3
  %tobool15 = icmp eq i32 %28, 0
  br i1 %tobool15, label %if.then16, label %if.else139

if.then16:                                        ; preds = %if.then9
  %available = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 0
  %29 = load i32* %available, align 4, !tbaa !3
  %tobool17 = icmp eq i32 %29, 0
  br i1 %tobool17, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then16
  %pos_y = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 5
  %30 = load i32* %pos_y, align 4, !tbaa !3
  %idxprom18 = sext i32 %30 to i64
  %pos_x = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 4
  %31 = load i32* %pos_x, align 4, !tbaa !3
  %idxprom19 = sext i32 %31 to i64
  %32 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx20 = getelementptr inbounds %struct.storable_picture* %32, i64 0, i32 32
  %33 = load i16**** %ref_idx20, align 8, !tbaa !0
  %34 = load i16*** %33, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds i16** %34, i64 %idxprom19
  %35 = load i16** %arrayidx22, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i16* %35, i64 %idxprom18
  %36 = load i16* %arrayidx23, align 2, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %if.then16, %cond.true
  %cond = phi i16 [ %36, %cond.true ], [ -1, %if.then16 ]
  %available25 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 0
  %37 = load i32* %available25, align 4, !tbaa !3
  %tobool26 = icmp eq i32 %37, 0
  br i1 %tobool26, label %cond.end38, label %cond.true27

cond.true27:                                      ; preds = %cond.end
  %pos_y28 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 5
  %38 = load i32* %pos_y28, align 4, !tbaa !3
  %idxprom29 = sext i32 %38 to i64
  %pos_x30 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 4
  %39 = load i32* %pos_x30, align 4, !tbaa !3
  %idxprom31 = sext i32 %39 to i64
  %40 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx32 = getelementptr inbounds %struct.storable_picture* %40, i64 0, i32 32
  %41 = load i16**** %ref_idx32, align 8, !tbaa !0
  %42 = load i16*** %41, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i16** %42, i64 %idxprom31
  %43 = load i16** %arrayidx34, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i16* %43, i64 %idxprom29
  %44 = load i16* %arrayidx35, align 2, !tbaa !4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.end, %cond.true27
  %cond39 = phi i16 [ %44, %cond.true27 ], [ -1, %cond.end ]
  %available41 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 0
  %45 = load i32* %available41, align 4, !tbaa !3
  %tobool42 = icmp eq i32 %45, 0
  br i1 %tobool42, label %cond.end54, label %cond.true43

cond.true43:                                      ; preds = %cond.end38
  %pos_y44 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 5
  %46 = load i32* %pos_y44, align 4, !tbaa !3
  %idxprom45 = sext i32 %46 to i64
  %pos_x46 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 4
  %47 = load i32* %pos_x46, align 4, !tbaa !3
  %idxprom47 = sext i32 %47 to i64
  %48 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx48 = getelementptr inbounds %struct.storable_picture* %48, i64 0, i32 32
  %49 = load i16**** %ref_idx48, align 8, !tbaa !0
  %50 = load i16*** %49, align 8, !tbaa !0
  %arrayidx50 = getelementptr inbounds i16** %50, i64 %idxprom47
  %51 = load i16** %arrayidx50, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i16* %51, i64 %idxprom45
  %52 = load i16* %arrayidx51, align 2, !tbaa !4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.end38, %cond.true43
  %cond55 = phi i16 [ %52, %cond.true43 ], [ -1, %cond.end38 ]
  %available57 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 0
  %53 = load i32* %available57, align 4, !tbaa !3
  %tobool58 = icmp eq i32 %53, 0
  br i1 %tobool58, label %cond.end71, label %cond.true59

cond.true59:                                      ; preds = %cond.end54
  %pos_y60 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 5
  %54 = load i32* %pos_y60, align 4, !tbaa !3
  %idxprom61 = sext i32 %54 to i64
  %pos_x62 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 4
  %55 = load i32* %pos_x62, align 4, !tbaa !3
  %idxprom63 = sext i32 %55 to i64
  %56 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx64 = getelementptr inbounds %struct.storable_picture* %56, i64 0, i32 32
  %57 = load i16**** %ref_idx64, align 8, !tbaa !0
  %58 = load i16*** %57, align 8, !tbaa !0
  %arrayidx66 = getelementptr inbounds i16** %58, i64 %idxprom63
  %59 = load i16** %arrayidx66, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds i16* %59, i64 %idxprom61
  %60 = load i16* %arrayidx67, align 2, !tbaa !4
  br label %cond.end71

cond.end71:                                       ; preds = %cond.end54, %cond.true59
  %.sink = phi i16 [ %60, %cond.true59 ], [ %cond55, %cond.end54 ]
  br i1 %tobool17, label %cond.end87, label %cond.true76

cond.true76:                                      ; preds = %cond.end71
  %pos_y77 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 5
  %61 = load i32* %pos_y77, align 4, !tbaa !3
  %idxprom78 = sext i32 %61 to i64
  %pos_x79 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 4
  %62 = load i32* %pos_x79, align 4, !tbaa !3
  %idxprom80 = sext i32 %62 to i64
  %63 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx81 = getelementptr inbounds %struct.storable_picture* %63, i64 0, i32 32
  %64 = load i16**** %ref_idx81, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds i16*** %64, i64 1
  %65 = load i16*** %arrayidx82, align 8, !tbaa !0
  %arrayidx83 = getelementptr inbounds i16** %65, i64 %idxprom80
  %66 = load i16** %arrayidx83, align 8, !tbaa !0
  %arrayidx84 = getelementptr inbounds i16* %66, i64 %idxprom78
  %67 = load i16* %arrayidx84, align 2, !tbaa !4
  br label %cond.end87

cond.end87:                                       ; preds = %cond.end71, %cond.true76
  %cond88 = phi i16 [ %67, %cond.true76 ], [ -1, %cond.end71 ]
  br i1 %tobool26, label %cond.end103, label %cond.true92

cond.true92:                                      ; preds = %cond.end87
  %pos_y93 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 5
  %68 = load i32* %pos_y93, align 4, !tbaa !3
  %idxprom94 = sext i32 %68 to i64
  %pos_x95 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 4
  %69 = load i32* %pos_x95, align 4, !tbaa !3
  %idxprom96 = sext i32 %69 to i64
  %70 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx97 = getelementptr inbounds %struct.storable_picture* %70, i64 0, i32 32
  %71 = load i16**** %ref_idx97, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds i16*** %71, i64 1
  %72 = load i16*** %arrayidx98, align 8, !tbaa !0
  %arrayidx99 = getelementptr inbounds i16** %72, i64 %idxprom96
  %73 = load i16** %arrayidx99, align 8, !tbaa !0
  %arrayidx100 = getelementptr inbounds i16* %73, i64 %idxprom94
  %74 = load i16* %arrayidx100, align 2, !tbaa !4
  br label %cond.end103

cond.end103:                                      ; preds = %cond.end87, %cond.true92
  %cond104 = phi i16 [ %74, %cond.true92 ], [ -1, %cond.end87 ]
  br i1 %tobool42, label %cond.end119, label %cond.true108

cond.true108:                                     ; preds = %cond.end103
  %pos_y109 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 5
  %75 = load i32* %pos_y109, align 4, !tbaa !3
  %idxprom110 = sext i32 %75 to i64
  %pos_x111 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 4
  %76 = load i32* %pos_x111, align 4, !tbaa !3
  %idxprom112 = sext i32 %76 to i64
  %77 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx113 = getelementptr inbounds %struct.storable_picture* %77, i64 0, i32 32
  %78 = load i16**** %ref_idx113, align 8, !tbaa !0
  %arrayidx114 = getelementptr inbounds i16*** %78, i64 1
  %79 = load i16*** %arrayidx114, align 8, !tbaa !0
  %arrayidx115 = getelementptr inbounds i16** %79, i64 %idxprom112
  %80 = load i16** %arrayidx115, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i16* %80, i64 %idxprom110
  %81 = load i16* %arrayidx116, align 2, !tbaa !4
  br label %cond.end119

cond.end119:                                      ; preds = %cond.end103, %cond.true108
  %cond120 = phi i16 [ %81, %cond.true108 ], [ -1, %cond.end103 ]
  br i1 %tobool58, label %if.end912, label %cond.true124

cond.true124:                                     ; preds = %cond.end119
  %pos_y125 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 5
  %82 = load i32* %pos_y125, align 4, !tbaa !3
  %idxprom126 = sext i32 %82 to i64
  %pos_x127 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 4
  %83 = load i32* %pos_x127, align 4, !tbaa !3
  %idxprom128 = sext i32 %83 to i64
  %84 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx129 = getelementptr inbounds %struct.storable_picture* %84, i64 0, i32 32
  %85 = load i16**** %ref_idx129, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i16*** %85, i64 1
  %86 = load i16*** %arrayidx130, align 8, !tbaa !0
  %arrayidx131 = getelementptr inbounds i16** %86, i64 %idxprom128
  %87 = load i16** %arrayidx131, align 8, !tbaa !0
  %arrayidx132 = getelementptr inbounds i16* %87, i64 %idxprom126
  %88 = load i16* %arrayidx132, align 2, !tbaa !4
  br label %if.end912

if.else139:                                       ; preds = %if.then9
  %mb_field140 = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22
  %89 = load i32* %mb_field140, align 4, !tbaa !3
  %tobool141 = icmp eq i32 %89, 0
  %available143 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 0
  %90 = load i32* %available143, align 4, !tbaa !3
  %tobool144 = icmp ne i32 %90, 0
  br i1 %tobool141, label %if.else525, label %if.then142

if.then142:                                       ; preds = %if.else139
  br i1 %tobool144, label %cond.true145, label %cond.end184

cond.true145:                                     ; preds = %if.then142
  %mb_addr = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 1
  %91 = load i32* %mb_addr, align 4, !tbaa !3
  %idxprom146 = sext i32 %91 to i64
  %mb_data147 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %92 = load %struct.macroblock** %mb_data147, align 8, !tbaa !0
  %mb_field149 = getelementptr inbounds %struct.macroblock* %92, i64 %idxprom146, i32 22
  %93 = load i32* %mb_field149, align 4, !tbaa !3
  %tobool150 = icmp eq i32 %93, 0
  %pos_y151 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 5
  %94 = load i32* %pos_y151, align 4, !tbaa !3
  br i1 %tobool150, label %lor.lhs.false, label %cond.true145.cond.true161_crit_edge

cond.true145.cond.true161_crit_edge:              ; preds = %cond.true145
  %pos_x164.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 4
  %.pre1961 = load i32* %pos_x164.phi.trans.insert, align 4, !tbaa !3
  %.pre1962 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx166.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1962, i64 0, i32 32
  %.pre1963 = load i16**** %ref_idx166.phi.trans.insert, align 8, !tbaa !0
  %.pre1964 = load i16*** %.pre1963, align 8, !tbaa !0
  %idxprom165.phi.trans.insert = sext i32 %.pre1961 to i64
  %arrayidx168.phi.trans.insert = getelementptr inbounds i16** %.pre1964, i64 %idxprom165.phi.trans.insert
  %.pre1965 = load i16** %arrayidx168.phi.trans.insert, align 8, !tbaa !0
  %idxprom163.phi.trans.insert = sext i32 %94 to i64
  %arrayidx169.phi.trans.insert = getelementptr inbounds i16* %.pre1965, i64 %idxprom163.phi.trans.insert
  %.pre1966 = load i16* %arrayidx169.phi.trans.insert, align 2, !tbaa !4
  br label %cond.end184

lor.lhs.false:                                    ; preds = %cond.true145
  %idxprom152 = sext i32 %94 to i64
  %pos_x153 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 4
  %95 = load i32* %pos_x153, align 4, !tbaa !3
  %idxprom154 = sext i32 %95 to i64
  %96 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx155 = getelementptr inbounds %struct.storable_picture* %96, i64 0, i32 32
  %97 = load i16**** %ref_idx155, align 8, !tbaa !0
  %98 = load i16*** %97, align 8, !tbaa !0
  %arrayidx157 = getelementptr inbounds i16** %98, i64 %idxprom154
  %99 = load i16** %arrayidx157, align 8, !tbaa !0
  %arrayidx158 = getelementptr inbounds i16* %99, i64 %idxprom152
  %100 = load i16* %arrayidx158, align 2, !tbaa !4
  %.lobit2024 = lshr i16 %100, 15
  %.lobit2024.not = xor i16 %.lobit2024, 1
  %.mul = shl i16 %100, %.lobit2024.not
  br label %cond.end184

cond.end184:                                      ; preds = %lor.lhs.false, %cond.true145.cond.true161_crit_edge, %if.then142
  %cond185 = phi i16 [ -1, %if.then142 ], [ %.pre1966, %cond.true145.cond.true161_crit_edge ], [ %.mul, %lor.lhs.false ]
  %available187 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 0
  %101 = load i32* %available187, align 4, !tbaa !3
  %tobool188 = icmp eq i32 %101, 0
  br i1 %tobool188, label %cond.end232, label %cond.true189

cond.true189:                                     ; preds = %cond.end184
  %mb_addr190 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 1
  %102 = load i32* %mb_addr190, align 4, !tbaa !3
  %idxprom191 = sext i32 %102 to i64
  %mb_data192 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %103 = load %struct.macroblock** %mb_data192, align 8, !tbaa !0
  %mb_field194 = getelementptr inbounds %struct.macroblock* %103, i64 %idxprom191, i32 22
  %104 = load i32* %mb_field194, align 4, !tbaa !3
  %tobool195 = icmp eq i32 %104, 0
  %pos_y197 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 5
  %105 = load i32* %pos_y197, align 4, !tbaa !3
  br i1 %tobool195, label %lor.lhs.false196, label %cond.true189.cond.true208_crit_edge

cond.true189.cond.true208_crit_edge:              ; preds = %cond.true189
  %pos_x211.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 4
  %.pre2010 = load i32* %pos_x211.phi.trans.insert, align 4, !tbaa !3
  %.pre2011 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx213.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre2011, i64 0, i32 32
  %.pre2012 = load i16**** %ref_idx213.phi.trans.insert, align 8, !tbaa !0
  %.pre2013 = load i16*** %.pre2012, align 8, !tbaa !0
  %idxprom212.phi.trans.insert = sext i32 %.pre2010 to i64
  %arrayidx215.phi.trans.insert = getelementptr inbounds i16** %.pre2013, i64 %idxprom212.phi.trans.insert
  %.pre2014 = load i16** %arrayidx215.phi.trans.insert, align 8, !tbaa !0
  %idxprom210.phi.trans.insert = sext i32 %105 to i64
  %arrayidx216.phi.trans.insert = getelementptr inbounds i16* %.pre2014, i64 %idxprom210.phi.trans.insert
  %.pre2015 = load i16* %arrayidx216.phi.trans.insert, align 2, !tbaa !4
  br label %cond.end232

lor.lhs.false196:                                 ; preds = %cond.true189
  %idxprom198 = sext i32 %105 to i64
  %pos_x199 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 4
  %106 = load i32* %pos_x199, align 4, !tbaa !3
  %idxprom200 = sext i32 %106 to i64
  %107 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx201 = getelementptr inbounds %struct.storable_picture* %107, i64 0, i32 32
  %108 = load i16**** %ref_idx201, align 8, !tbaa !0
  %109 = load i16*** %108, align 8, !tbaa !0
  %arrayidx203 = getelementptr inbounds i16** %109, i64 %idxprom200
  %110 = load i16** %arrayidx203, align 8, !tbaa !0
  %arrayidx204 = getelementptr inbounds i16* %110, i64 %idxprom198
  %111 = load i16* %arrayidx204, align 2, !tbaa !4
  %.lobit2023 = lshr i16 %111, 15
  %.lobit2023.not = xor i16 %.lobit2023, 1
  %.mul228 = shl i16 %111, %.lobit2023.not
  br label %cond.end232

cond.end232:                                      ; preds = %lor.lhs.false196, %cond.true189.cond.true208_crit_edge, %cond.end184
  %cond233 = phi i16 [ -1, %cond.end184 ], [ %.pre2015, %cond.true189.cond.true208_crit_edge ], [ %.mul228, %lor.lhs.false196 ]
  %available235 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 0
  %112 = load i32* %available235, align 4, !tbaa !3
  %tobool236 = icmp eq i32 %112, 0
  br i1 %tobool236, label %cond.end280, label %cond.true237

cond.true237:                                     ; preds = %cond.end232
  %mb_addr238 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 1
  %113 = load i32* %mb_addr238, align 4, !tbaa !3
  %idxprom239 = sext i32 %113 to i64
  %mb_data240 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %114 = load %struct.macroblock** %mb_data240, align 8, !tbaa !0
  %mb_field242 = getelementptr inbounds %struct.macroblock* %114, i64 %idxprom239, i32 22
  %115 = load i32* %mb_field242, align 4, !tbaa !3
  %tobool243 = icmp eq i32 %115, 0
  %pos_y245 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 5
  %116 = load i32* %pos_y245, align 4, !tbaa !3
  br i1 %tobool243, label %lor.lhs.false244, label %cond.true237.cond.true256_crit_edge

cond.true237.cond.true256_crit_edge:              ; preds = %cond.true237
  %pos_x259.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 4
  %.pre2003 = load i32* %pos_x259.phi.trans.insert, align 4, !tbaa !3
  %.pre2004 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx261.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre2004, i64 0, i32 32
  %.pre2005 = load i16**** %ref_idx261.phi.trans.insert, align 8, !tbaa !0
  %.pre2006 = load i16*** %.pre2005, align 8, !tbaa !0
  %idxprom260.phi.trans.insert = sext i32 %.pre2003 to i64
  %arrayidx263.phi.trans.insert = getelementptr inbounds i16** %.pre2006, i64 %idxprom260.phi.trans.insert
  %.pre2007 = load i16** %arrayidx263.phi.trans.insert, align 8, !tbaa !0
  %idxprom258.phi.trans.insert = sext i32 %116 to i64
  %arrayidx264.phi.trans.insert = getelementptr inbounds i16* %.pre2007, i64 %idxprom258.phi.trans.insert
  %.pre2008 = load i16* %arrayidx264.phi.trans.insert, align 2, !tbaa !4
  br label %cond.end280

lor.lhs.false244:                                 ; preds = %cond.true237
  %idxprom246 = sext i32 %116 to i64
  %pos_x247 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 4
  %117 = load i32* %pos_x247, align 4, !tbaa !3
  %idxprom248 = sext i32 %117 to i64
  %118 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx249 = getelementptr inbounds %struct.storable_picture* %118, i64 0, i32 32
  %119 = load i16**** %ref_idx249, align 8, !tbaa !0
  %120 = load i16*** %119, align 8, !tbaa !0
  %arrayidx251 = getelementptr inbounds i16** %120, i64 %idxprom248
  %121 = load i16** %arrayidx251, align 8, !tbaa !0
  %arrayidx252 = getelementptr inbounds i16* %121, i64 %idxprom246
  %122 = load i16* %arrayidx252, align 2, !tbaa !4
  %.lobit2022 = lshr i16 %122, 15
  %.lobit2022.not = xor i16 %.lobit2022, 1
  %.mul276 = shl i16 %122, %.lobit2022.not
  br label %cond.end280

cond.end280:                                      ; preds = %lor.lhs.false244, %cond.true237.cond.true256_crit_edge, %cond.end232
  %cond281 = phi i16 [ -1, %cond.end232 ], [ %.pre2008, %cond.true237.cond.true256_crit_edge ], [ %.mul276, %lor.lhs.false244 ]
  %available283 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 0
  %123 = load i32* %available283, align 4, !tbaa !3
  %tobool284 = icmp eq i32 %123, 0
  br i1 %tobool284, label %cond.end329, label %cond.true285

cond.true285:                                     ; preds = %cond.end280
  %mb_addr286 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 1
  %124 = load i32* %mb_addr286, align 4, !tbaa !3
  %idxprom287 = sext i32 %124 to i64
  %mb_data288 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %125 = load %struct.macroblock** %mb_data288, align 8, !tbaa !0
  %mb_field290 = getelementptr inbounds %struct.macroblock* %125, i64 %idxprom287, i32 22
  %126 = load i32* %mb_field290, align 4, !tbaa !3
  %tobool291 = icmp eq i32 %126, 0
  %pos_y293 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 5
  %127 = load i32* %pos_y293, align 4, !tbaa !3
  br i1 %tobool291, label %lor.lhs.false292, label %cond.true285.cond.true304_crit_edge

cond.true285.cond.true304_crit_edge:              ; preds = %cond.true285
  %pos_x307.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 4
  %.pre1996 = load i32* %pos_x307.phi.trans.insert, align 4, !tbaa !3
  %.pre1997 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx309.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1997, i64 0, i32 32
  %.pre1998 = load i16**** %ref_idx309.phi.trans.insert, align 8, !tbaa !0
  %.pre1999 = load i16*** %.pre1998, align 8, !tbaa !0
  %idxprom308.phi.trans.insert = sext i32 %.pre1996 to i64
  %arrayidx311.phi.trans.insert = getelementptr inbounds i16** %.pre1999, i64 %idxprom308.phi.trans.insert
  %.pre2000 = load i16** %arrayidx311.phi.trans.insert, align 8, !tbaa !0
  %idxprom306.phi.trans.insert = sext i32 %127 to i64
  %arrayidx312.phi.trans.insert = getelementptr inbounds i16* %.pre2000, i64 %idxprom306.phi.trans.insert
  %.pre2001 = load i16* %arrayidx312.phi.trans.insert, align 2, !tbaa !4
  br label %cond.end329

lor.lhs.false292:                                 ; preds = %cond.true285
  %idxprom294 = sext i32 %127 to i64
  %pos_x295 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 4
  %128 = load i32* %pos_x295, align 4, !tbaa !3
  %idxprom296 = sext i32 %128 to i64
  %129 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx297 = getelementptr inbounds %struct.storable_picture* %129, i64 0, i32 32
  %130 = load i16**** %ref_idx297, align 8, !tbaa !0
  %131 = load i16*** %130, align 8, !tbaa !0
  %arrayidx299 = getelementptr inbounds i16** %131, i64 %idxprom296
  %132 = load i16** %arrayidx299, align 8, !tbaa !0
  %arrayidx300 = getelementptr inbounds i16* %132, i64 %idxprom294
  %133 = load i16* %arrayidx300, align 2, !tbaa !4
  %.lobit2021 = lshr i16 %133, 15
  %.lobit2021.not = xor i16 %.lobit2021, 1
  %.mul324 = shl i16 %133, %.lobit2021.not
  br label %cond.end329

cond.end329:                                      ; preds = %lor.lhs.false292, %cond.true285.cond.true304_crit_edge, %cond.end280
  %cond330 = phi i16 [ %cond281, %cond.end280 ], [ %.pre2001, %cond.true285.cond.true304_crit_edge ], [ %.mul324, %lor.lhs.false292 ]
  %tobool333 = icmp eq i32 %90, 0
  br i1 %tobool333, label %cond.end377, label %cond.true334

cond.true334:                                     ; preds = %cond.end329
  %mb_addr335 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 1
  %134 = load i32* %mb_addr335, align 4, !tbaa !3
  %idxprom336 = sext i32 %134 to i64
  %mb_data337 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %135 = load %struct.macroblock** %mb_data337, align 8, !tbaa !0
  %mb_field339 = getelementptr inbounds %struct.macroblock* %135, i64 %idxprom336, i32 22
  %136 = load i32* %mb_field339, align 4, !tbaa !3
  %tobool340 = icmp eq i32 %136, 0
  %pos_y342 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 5
  %137 = load i32* %pos_y342, align 4, !tbaa !3
  br i1 %tobool340, label %lor.lhs.false341, label %cond.true334.cond.true353_crit_edge

cond.true334.cond.true353_crit_edge:              ; preds = %cond.true334
  %pos_x356.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 4
  %.pre1989 = load i32* %pos_x356.phi.trans.insert, align 4, !tbaa !3
  %.pre1990 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx358.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1990, i64 0, i32 32
  %.pre1991 = load i16**** %ref_idx358.phi.trans.insert, align 8, !tbaa !0
  %arrayidx359.phi.trans.insert = getelementptr inbounds i16*** %.pre1991, i64 1
  %.pre1992 = load i16*** %arrayidx359.phi.trans.insert, align 8, !tbaa !0
  %idxprom357.phi.trans.insert = sext i32 %.pre1989 to i64
  %arrayidx360.phi.trans.insert = getelementptr inbounds i16** %.pre1992, i64 %idxprom357.phi.trans.insert
  %.pre1993 = load i16** %arrayidx360.phi.trans.insert, align 8, !tbaa !0
  %idxprom355.phi.trans.insert = sext i32 %137 to i64
  %arrayidx361.phi.trans.insert = getelementptr inbounds i16* %.pre1993, i64 %idxprom355.phi.trans.insert
  %.pre1994 = load i16* %arrayidx361.phi.trans.insert, align 2, !tbaa !4
  br label %cond.end377

lor.lhs.false341:                                 ; preds = %cond.true334
  %idxprom343 = sext i32 %137 to i64
  %pos_x344 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 4
  %138 = load i32* %pos_x344, align 4, !tbaa !3
  %idxprom345 = sext i32 %138 to i64
  %139 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx346 = getelementptr inbounds %struct.storable_picture* %139, i64 0, i32 32
  %140 = load i16**** %ref_idx346, align 8, !tbaa !0
  %arrayidx347 = getelementptr inbounds i16*** %140, i64 1
  %141 = load i16*** %arrayidx347, align 8, !tbaa !0
  %arrayidx348 = getelementptr inbounds i16** %141, i64 %idxprom345
  %142 = load i16** %arrayidx348, align 8, !tbaa !0
  %arrayidx349 = getelementptr inbounds i16* %142, i64 %idxprom343
  %143 = load i16* %arrayidx349, align 2, !tbaa !4
  %.lobit2020 = lshr i16 %143, 15
  %.lobit2020.not = xor i16 %.lobit2020, 1
  %.mul373 = shl i16 %143, %.lobit2020.not
  br label %cond.end377

cond.end377:                                      ; preds = %lor.lhs.false341, %cond.true334.cond.true353_crit_edge, %cond.end329
  %cond378 = phi i16 [ -1, %cond.end329 ], [ %.pre1994, %cond.true334.cond.true353_crit_edge ], [ %.mul373, %lor.lhs.false341 ]
  br i1 %tobool188, label %cond.end425, label %cond.true382

cond.true382:                                     ; preds = %cond.end377
  %mb_addr383 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 1
  %144 = load i32* %mb_addr383, align 4, !tbaa !3
  %idxprom384 = sext i32 %144 to i64
  %mb_data385 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %145 = load %struct.macroblock** %mb_data385, align 8, !tbaa !0
  %mb_field387 = getelementptr inbounds %struct.macroblock* %145, i64 %idxprom384, i32 22
  %146 = load i32* %mb_field387, align 4, !tbaa !3
  %tobool388 = icmp eq i32 %146, 0
  %pos_y390 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 5
  %147 = load i32* %pos_y390, align 4, !tbaa !3
  br i1 %tobool388, label %lor.lhs.false389, label %cond.true382.cond.true401_crit_edge

cond.true382.cond.true401_crit_edge:              ; preds = %cond.true382
  %pos_x404.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 4
  %.pre1982 = load i32* %pos_x404.phi.trans.insert, align 4, !tbaa !3
  %.pre1983 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx406.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1983, i64 0, i32 32
  %.pre1984 = load i16**** %ref_idx406.phi.trans.insert, align 8, !tbaa !0
  %arrayidx407.phi.trans.insert = getelementptr inbounds i16*** %.pre1984, i64 1
  %.pre1985 = load i16*** %arrayidx407.phi.trans.insert, align 8, !tbaa !0
  %idxprom405.phi.trans.insert = sext i32 %.pre1982 to i64
  %arrayidx408.phi.trans.insert = getelementptr inbounds i16** %.pre1985, i64 %idxprom405.phi.trans.insert
  %.pre1986 = load i16** %arrayidx408.phi.trans.insert, align 8, !tbaa !0
  %idxprom403.phi.trans.insert = sext i32 %147 to i64
  %arrayidx409.phi.trans.insert = getelementptr inbounds i16* %.pre1986, i64 %idxprom403.phi.trans.insert
  %.pre1987 = load i16* %arrayidx409.phi.trans.insert, align 2, !tbaa !4
  br label %cond.end425

lor.lhs.false389:                                 ; preds = %cond.true382
  %idxprom391 = sext i32 %147 to i64
  %pos_x392 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 4
  %148 = load i32* %pos_x392, align 4, !tbaa !3
  %idxprom393 = sext i32 %148 to i64
  %149 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx394 = getelementptr inbounds %struct.storable_picture* %149, i64 0, i32 32
  %150 = load i16**** %ref_idx394, align 8, !tbaa !0
  %arrayidx395 = getelementptr inbounds i16*** %150, i64 1
  %151 = load i16*** %arrayidx395, align 8, !tbaa !0
  %arrayidx396 = getelementptr inbounds i16** %151, i64 %idxprom393
  %152 = load i16** %arrayidx396, align 8, !tbaa !0
  %arrayidx397 = getelementptr inbounds i16* %152, i64 %idxprom391
  %153 = load i16* %arrayidx397, align 2, !tbaa !4
  %.lobit2019 = lshr i16 %153, 15
  %.lobit2019.not = xor i16 %.lobit2019, 1
  %.mul421 = shl i16 %153, %.lobit2019.not
  br label %cond.end425

cond.end425:                                      ; preds = %lor.lhs.false389, %cond.true382.cond.true401_crit_edge, %cond.end377
  %cond426 = phi i16 [ -1, %cond.end377 ], [ %.pre1987, %cond.true382.cond.true401_crit_edge ], [ %.mul421, %lor.lhs.false389 ]
  br i1 %tobool236, label %cond.end473, label %cond.true430

cond.true430:                                     ; preds = %cond.end425
  %mb_addr431 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 1
  %154 = load i32* %mb_addr431, align 4, !tbaa !3
  %idxprom432 = sext i32 %154 to i64
  %mb_data433 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %155 = load %struct.macroblock** %mb_data433, align 8, !tbaa !0
  %mb_field435 = getelementptr inbounds %struct.macroblock* %155, i64 %idxprom432, i32 22
  %156 = load i32* %mb_field435, align 4, !tbaa !3
  %tobool436 = icmp eq i32 %156, 0
  %pos_y438 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 5
  %157 = load i32* %pos_y438, align 4, !tbaa !3
  br i1 %tobool436, label %lor.lhs.false437, label %cond.true430.cond.true449_crit_edge

cond.true430.cond.true449_crit_edge:              ; preds = %cond.true430
  %pos_x452.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 4
  %.pre1975 = load i32* %pos_x452.phi.trans.insert, align 4, !tbaa !3
  %.pre1976 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx454.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1976, i64 0, i32 32
  %.pre1977 = load i16**** %ref_idx454.phi.trans.insert, align 8, !tbaa !0
  %arrayidx455.phi.trans.insert = getelementptr inbounds i16*** %.pre1977, i64 1
  %.pre1978 = load i16*** %arrayidx455.phi.trans.insert, align 8, !tbaa !0
  %idxprom453.phi.trans.insert = sext i32 %.pre1975 to i64
  %arrayidx456.phi.trans.insert = getelementptr inbounds i16** %.pre1978, i64 %idxprom453.phi.trans.insert
  %.pre1979 = load i16** %arrayidx456.phi.trans.insert, align 8, !tbaa !0
  %idxprom451.phi.trans.insert = sext i32 %157 to i64
  %arrayidx457.phi.trans.insert = getelementptr inbounds i16* %.pre1979, i64 %idxprom451.phi.trans.insert
  %.pre1980 = load i16* %arrayidx457.phi.trans.insert, align 2, !tbaa !4
  br label %cond.end473

lor.lhs.false437:                                 ; preds = %cond.true430
  %idxprom439 = sext i32 %157 to i64
  %pos_x440 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 4
  %158 = load i32* %pos_x440, align 4, !tbaa !3
  %idxprom441 = sext i32 %158 to i64
  %159 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx442 = getelementptr inbounds %struct.storable_picture* %159, i64 0, i32 32
  %160 = load i16**** %ref_idx442, align 8, !tbaa !0
  %arrayidx443 = getelementptr inbounds i16*** %160, i64 1
  %161 = load i16*** %arrayidx443, align 8, !tbaa !0
  %arrayidx444 = getelementptr inbounds i16** %161, i64 %idxprom441
  %162 = load i16** %arrayidx444, align 8, !tbaa !0
  %arrayidx445 = getelementptr inbounds i16* %162, i64 %idxprom439
  %163 = load i16* %arrayidx445, align 2, !tbaa !4
  %.lobit2018 = lshr i16 %163, 15
  %.lobit2018.not = xor i16 %.lobit2018, 1
  %.mul469 = shl i16 %163, %.lobit2018.not
  br label %cond.end473

cond.end473:                                      ; preds = %lor.lhs.false437, %cond.true430.cond.true449_crit_edge, %cond.end425
  %cond474 = phi i16 [ -1, %cond.end425 ], [ %.pre1980, %cond.true430.cond.true449_crit_edge ], [ %.mul469, %lor.lhs.false437 ]
  br i1 %tobool284, label %if.end912, label %cond.true478

cond.true478:                                     ; preds = %cond.end473
  %mb_addr479 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 1
  %164 = load i32* %mb_addr479, align 4, !tbaa !3
  %idxprom480 = sext i32 %164 to i64
  %mb_data481 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %165 = load %struct.macroblock** %mb_data481, align 8, !tbaa !0
  %mb_field483 = getelementptr inbounds %struct.macroblock* %165, i64 %idxprom480, i32 22
  %166 = load i32* %mb_field483, align 4, !tbaa !3
  %tobool484 = icmp eq i32 %166, 0
  %pos_y486 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 5
  %167 = load i32* %pos_y486, align 4, !tbaa !3
  br i1 %tobool484, label %lor.lhs.false485, label %cond.true478.cond.true497_crit_edge

cond.true478.cond.true497_crit_edge:              ; preds = %cond.true478
  %pos_x500.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 4
  %.pre1968 = load i32* %pos_x500.phi.trans.insert, align 4, !tbaa !3
  %.pre1969 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx502.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1969, i64 0, i32 32
  %.pre1970 = load i16**** %ref_idx502.phi.trans.insert, align 8, !tbaa !0
  %arrayidx503.phi.trans.insert = getelementptr inbounds i16*** %.pre1970, i64 1
  %.pre1971 = load i16*** %arrayidx503.phi.trans.insert, align 8, !tbaa !0
  %idxprom501.phi.trans.insert = sext i32 %.pre1968 to i64
  %arrayidx504.phi.trans.insert = getelementptr inbounds i16** %.pre1971, i64 %idxprom501.phi.trans.insert
  %.pre1972 = load i16** %arrayidx504.phi.trans.insert, align 8, !tbaa !0
  %idxprom499.phi.trans.insert = sext i32 %167 to i64
  %arrayidx505.phi.trans.insert = getelementptr inbounds i16* %.pre1972, i64 %idxprom499.phi.trans.insert
  %.pre1973 = load i16* %arrayidx505.phi.trans.insert, align 2, !tbaa !4
  br label %if.end912

lor.lhs.false485:                                 ; preds = %cond.true478
  %idxprom487 = sext i32 %167 to i64
  %pos_x488 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 4
  %168 = load i32* %pos_x488, align 4, !tbaa !3
  %idxprom489 = sext i32 %168 to i64
  %169 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx490 = getelementptr inbounds %struct.storable_picture* %169, i64 0, i32 32
  %170 = load i16**** %ref_idx490, align 8, !tbaa !0
  %arrayidx491 = getelementptr inbounds i16*** %170, i64 1
  %171 = load i16*** %arrayidx491, align 8, !tbaa !0
  %arrayidx492 = getelementptr inbounds i16** %171, i64 %idxprom489
  %172 = load i16** %arrayidx492, align 8, !tbaa !0
  %arrayidx493 = getelementptr inbounds i16* %172, i64 %idxprom487
  %173 = load i16* %arrayidx493, align 2, !tbaa !4
  %.lobit = lshr i16 %173, 15
  %.lobit.not = xor i16 %.lobit, 1
  %.mul517 = shl i16 %173, %.lobit.not
  br label %if.end912

if.else525:                                       ; preds = %if.else139
  br i1 %tobool144, label %cond.true528, label %cond.end570

cond.true528:                                     ; preds = %if.else525
  %mb_addr529 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 1
  %174 = load i32* %mb_addr529, align 4, !tbaa !3
  %idxprom530 = sext i32 %174 to i64
  %mb_data531 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %175 = load %struct.macroblock** %mb_data531, align 8, !tbaa !0
  %mb_field533 = getelementptr inbounds %struct.macroblock* %175, i64 %idxprom530, i32 22
  %176 = load i32* %mb_field533, align 4, !tbaa !3
  %tobool534 = icmp eq i32 %176, 0
  %pos_y536 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 5
  %177 = load i32* %pos_y536, align 4, !tbaa !3
  br i1 %tobool534, label %lor.lhs.false535, label %cond.true528.cond.true547_crit_edge

cond.true528.cond.true547_crit_edge:              ; preds = %cond.true528
  %pos_x550.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 4
  %.pre1905 = load i32* %pos_x550.phi.trans.insert, align 4, !tbaa !3
  %.pre1906 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx552.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1906, i64 0, i32 32
  %.pre1907 = load i16**** %ref_idx552.phi.trans.insert, align 8, !tbaa !0
  %.pre1908 = load i16*** %.pre1907, align 8, !tbaa !0
  %idxprom551.phi.trans.insert = sext i32 %.pre1905 to i64
  %arrayidx554.phi.trans.insert = getelementptr inbounds i16** %.pre1908, i64 %idxprom551.phi.trans.insert
  %.pre1909 = load i16** %arrayidx554.phi.trans.insert, align 8, !tbaa !0
  %idxprom549.phi.trans.insert = sext i32 %177 to i64
  %arrayidx555.phi.trans.insert = getelementptr inbounds i16* %.pre1909, i64 %idxprom549.phi.trans.insert
  %.pre1910 = load i16* %arrayidx555.phi.trans.insert, align 2, !tbaa !4
  br label %cond.true547

lor.lhs.false535:                                 ; preds = %cond.true528
  %idxprom537 = sext i32 %177 to i64
  %pos_x538 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 4
  %178 = load i32* %pos_x538, align 4, !tbaa !3
  %idxprom539 = sext i32 %178 to i64
  %179 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx540 = getelementptr inbounds %struct.storable_picture* %179, i64 0, i32 32
  %180 = load i16**** %ref_idx540, align 8, !tbaa !0
  %181 = load i16*** %180, align 8, !tbaa !0
  %arrayidx542 = getelementptr inbounds i16** %181, i64 %idxprom539
  %182 = load i16** %arrayidx542, align 8, !tbaa !0
  %arrayidx543 = getelementptr inbounds i16* %182, i64 %idxprom537
  %183 = load i16* %arrayidx543, align 2, !tbaa !4
  %cmp545 = icmp slt i16 %183, 0
  br i1 %cmp545, label %cond.true547, label %cond.false557

cond.true547:                                     ; preds = %cond.true528.cond.true547_crit_edge, %lor.lhs.false535
  %184 = phi i16 [ %.pre1910, %cond.true528.cond.true547_crit_edge ], [ %183, %lor.lhs.false535 ]
  %conv556 = sext i16 %184 to i32
  %shr = ashr i32 %conv556, 1
  br label %cond.end570

cond.false557:                                    ; preds = %lor.lhs.false535
  %conv544 = sext i16 %183 to i32
  br label %cond.end570

cond.end570:                                      ; preds = %if.else525, %cond.true547, %cond.false557
  %cond571 = phi i32 [ %shr, %cond.true547 ], [ %conv544, %cond.false557 ], [ -1, %if.else525 ]
  %conv572 = trunc i32 %cond571 to i16
  %available573 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 0
  %185 = load i32* %available573, align 4, !tbaa !3
  %tobool574 = icmp eq i32 %185, 0
  br i1 %tobool574, label %cond.end618, label %cond.true575

cond.true575:                                     ; preds = %cond.end570
  %mb_addr576 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 1
  %186 = load i32* %mb_addr576, align 4, !tbaa !3
  %idxprom577 = sext i32 %186 to i64
  %mb_data578 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %187 = load %struct.macroblock** %mb_data578, align 8, !tbaa !0
  %mb_field580 = getelementptr inbounds %struct.macroblock* %187, i64 %idxprom577, i32 22
  %188 = load i32* %mb_field580, align 4, !tbaa !3
  %tobool581 = icmp eq i32 %188, 0
  %pos_y583 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 5
  %189 = load i32* %pos_y583, align 4, !tbaa !3
  br i1 %tobool581, label %lor.lhs.false582, label %cond.true575.cond.true594_crit_edge

cond.true575.cond.true594_crit_edge:              ; preds = %cond.true575
  %pos_x597.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 4
  %.pre1954 = load i32* %pos_x597.phi.trans.insert, align 4, !tbaa !3
  %.pre1955 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx599.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1955, i64 0, i32 32
  %.pre1956 = load i16**** %ref_idx599.phi.trans.insert, align 8, !tbaa !0
  %.pre1957 = load i16*** %.pre1956, align 8, !tbaa !0
  %idxprom598.phi.trans.insert = sext i32 %.pre1954 to i64
  %arrayidx601.phi.trans.insert = getelementptr inbounds i16** %.pre1957, i64 %idxprom598.phi.trans.insert
  %.pre1958 = load i16** %arrayidx601.phi.trans.insert, align 8, !tbaa !0
  %idxprom596.phi.trans.insert = sext i32 %189 to i64
  %arrayidx602.phi.trans.insert = getelementptr inbounds i16* %.pre1958, i64 %idxprom596.phi.trans.insert
  %.pre1959 = load i16* %arrayidx602.phi.trans.insert, align 2, !tbaa !4
  br label %cond.true594

lor.lhs.false582:                                 ; preds = %cond.true575
  %idxprom584 = sext i32 %189 to i64
  %pos_x585 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 4
  %190 = load i32* %pos_x585, align 4, !tbaa !3
  %idxprom586 = sext i32 %190 to i64
  %191 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx587 = getelementptr inbounds %struct.storable_picture* %191, i64 0, i32 32
  %192 = load i16**** %ref_idx587, align 8, !tbaa !0
  %193 = load i16*** %192, align 8, !tbaa !0
  %arrayidx589 = getelementptr inbounds i16** %193, i64 %idxprom586
  %194 = load i16** %arrayidx589, align 8, !tbaa !0
  %arrayidx590 = getelementptr inbounds i16* %194, i64 %idxprom584
  %195 = load i16* %arrayidx590, align 2, !tbaa !4
  %cmp592 = icmp slt i16 %195, 0
  br i1 %cmp592, label %cond.true594, label %cond.false605

cond.true594:                                     ; preds = %cond.true575.cond.true594_crit_edge, %lor.lhs.false582
  %196 = phi i16 [ %.pre1959, %cond.true575.cond.true594_crit_edge ], [ %195, %lor.lhs.false582 ]
  %conv603 = sext i16 %196 to i32
  %shr604 = ashr i32 %conv603, 1
  br label %cond.end618

cond.false605:                                    ; preds = %lor.lhs.false582
  %conv591 = sext i16 %195 to i32
  br label %cond.end618

cond.end618:                                      ; preds = %cond.end570, %cond.true594, %cond.false605
  %cond619 = phi i32 [ %shr604, %cond.true594 ], [ %conv591, %cond.false605 ], [ -1, %cond.end570 ]
  %conv620 = trunc i32 %cond619 to i16
  %available621 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 0
  %197 = load i32* %available621, align 4, !tbaa !3
  %tobool622 = icmp eq i32 %197, 0
  br i1 %tobool622, label %cond.end666, label %cond.true623

cond.true623:                                     ; preds = %cond.end618
  %mb_addr624 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 1
  %198 = load i32* %mb_addr624, align 4, !tbaa !3
  %idxprom625 = sext i32 %198 to i64
  %mb_data626 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %199 = load %struct.macroblock** %mb_data626, align 8, !tbaa !0
  %mb_field628 = getelementptr inbounds %struct.macroblock* %199, i64 %idxprom625, i32 22
  %200 = load i32* %mb_field628, align 4, !tbaa !3
  %tobool629 = icmp eq i32 %200, 0
  %pos_y631 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 5
  %201 = load i32* %pos_y631, align 4, !tbaa !3
  br i1 %tobool629, label %lor.lhs.false630, label %cond.true623.cond.true642_crit_edge

cond.true623.cond.true642_crit_edge:              ; preds = %cond.true623
  %pos_x645.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 4
  %.pre1947 = load i32* %pos_x645.phi.trans.insert, align 4, !tbaa !3
  %.pre1948 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx647.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1948, i64 0, i32 32
  %.pre1949 = load i16**** %ref_idx647.phi.trans.insert, align 8, !tbaa !0
  %.pre1950 = load i16*** %.pre1949, align 8, !tbaa !0
  %idxprom646.phi.trans.insert = sext i32 %.pre1947 to i64
  %arrayidx649.phi.trans.insert = getelementptr inbounds i16** %.pre1950, i64 %idxprom646.phi.trans.insert
  %.pre1951 = load i16** %arrayidx649.phi.trans.insert, align 8, !tbaa !0
  %idxprom644.phi.trans.insert = sext i32 %201 to i64
  %arrayidx650.phi.trans.insert = getelementptr inbounds i16* %.pre1951, i64 %idxprom644.phi.trans.insert
  %.pre1952 = load i16* %arrayidx650.phi.trans.insert, align 2, !tbaa !4
  br label %cond.true642

lor.lhs.false630:                                 ; preds = %cond.true623
  %idxprom632 = sext i32 %201 to i64
  %pos_x633 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 4
  %202 = load i32* %pos_x633, align 4, !tbaa !3
  %idxprom634 = sext i32 %202 to i64
  %203 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx635 = getelementptr inbounds %struct.storable_picture* %203, i64 0, i32 32
  %204 = load i16**** %ref_idx635, align 8, !tbaa !0
  %205 = load i16*** %204, align 8, !tbaa !0
  %arrayidx637 = getelementptr inbounds i16** %205, i64 %idxprom634
  %206 = load i16** %arrayidx637, align 8, !tbaa !0
  %arrayidx638 = getelementptr inbounds i16* %206, i64 %idxprom632
  %207 = load i16* %arrayidx638, align 2, !tbaa !4
  %cmp640 = icmp slt i16 %207, 0
  br i1 %cmp640, label %cond.true642, label %cond.false653

cond.true642:                                     ; preds = %cond.true623.cond.true642_crit_edge, %lor.lhs.false630
  %208 = phi i16 [ %.pre1952, %cond.true623.cond.true642_crit_edge ], [ %207, %lor.lhs.false630 ]
  %conv651 = sext i16 %208 to i32
  %shr652 = ashr i32 %conv651, 1
  br label %cond.end666

cond.false653:                                    ; preds = %lor.lhs.false630
  %conv639 = sext i16 %207 to i32
  br label %cond.end666

cond.end666:                                      ; preds = %cond.end618, %cond.true642, %cond.false653
  %cond667 = phi i32 [ %shr652, %cond.true642 ], [ %conv639, %cond.false653 ], [ -1, %cond.end618 ]
  %available669 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 0
  %209 = load i32* %available669, align 4, !tbaa !3
  %tobool670 = icmp eq i32 %209, 0
  br i1 %tobool670, label %cond.end715, label %cond.true671

cond.true671:                                     ; preds = %cond.end666
  %mb_addr672 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 1
  %210 = load i32* %mb_addr672, align 4, !tbaa !3
  %idxprom673 = sext i32 %210 to i64
  %mb_data674 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %211 = load %struct.macroblock** %mb_data674, align 8, !tbaa !0
  %mb_field676 = getelementptr inbounds %struct.macroblock* %211, i64 %idxprom673, i32 22
  %212 = load i32* %mb_field676, align 4, !tbaa !3
  %tobool677 = icmp eq i32 %212, 0
  %pos_y679 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 5
  %213 = load i32* %pos_y679, align 4, !tbaa !3
  br i1 %tobool677, label %lor.lhs.false678, label %cond.true671.cond.true690_crit_edge

cond.true671.cond.true690_crit_edge:              ; preds = %cond.true671
  %pos_x693.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 4
  %.pre1940 = load i32* %pos_x693.phi.trans.insert, align 4, !tbaa !3
  %.pre1941 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx695.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1941, i64 0, i32 32
  %.pre1942 = load i16**** %ref_idx695.phi.trans.insert, align 8, !tbaa !0
  %.pre1943 = load i16*** %.pre1942, align 8, !tbaa !0
  %idxprom694.phi.trans.insert = sext i32 %.pre1940 to i64
  %arrayidx697.phi.trans.insert = getelementptr inbounds i16** %.pre1943, i64 %idxprom694.phi.trans.insert
  %.pre1944 = load i16** %arrayidx697.phi.trans.insert, align 8, !tbaa !0
  %idxprom692.phi.trans.insert = sext i32 %213 to i64
  %arrayidx698.phi.trans.insert = getelementptr inbounds i16* %.pre1944, i64 %idxprom692.phi.trans.insert
  %.pre1945 = load i16* %arrayidx698.phi.trans.insert, align 2, !tbaa !4
  br label %cond.true690

lor.lhs.false678:                                 ; preds = %cond.true671
  %idxprom680 = sext i32 %213 to i64
  %pos_x681 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 4
  %214 = load i32* %pos_x681, align 4, !tbaa !3
  %idxprom682 = sext i32 %214 to i64
  %215 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx683 = getelementptr inbounds %struct.storable_picture* %215, i64 0, i32 32
  %216 = load i16**** %ref_idx683, align 8, !tbaa !0
  %217 = load i16*** %216, align 8, !tbaa !0
  %arrayidx685 = getelementptr inbounds i16** %217, i64 %idxprom682
  %218 = load i16** %arrayidx685, align 8, !tbaa !0
  %arrayidx686 = getelementptr inbounds i16* %218, i64 %idxprom680
  %219 = load i16* %arrayidx686, align 2, !tbaa !4
  %cmp688 = icmp slt i16 %219, 0
  br i1 %cmp688, label %cond.true690, label %cond.false701

cond.true690:                                     ; preds = %cond.true671.cond.true690_crit_edge, %lor.lhs.false678
  %220 = phi i16 [ %.pre1945, %cond.true671.cond.true690_crit_edge ], [ %219, %lor.lhs.false678 ]
  %conv699 = sext i16 %220 to i32
  %shr700 = ashr i32 %conv699, 1
  br label %cond.end715

cond.false701:                                    ; preds = %lor.lhs.false678
  %conv687 = sext i16 %219 to i32
  br label %cond.end715

cond.end715:                                      ; preds = %cond.end666, %cond.true690, %cond.false701
  %cond716 = phi i32 [ %shr700, %cond.true690 ], [ %conv687, %cond.false701 ], [ %cond667, %cond.end666 ]
  %conv717 = trunc i32 %cond716 to i16
  %tobool719 = icmp eq i32 %90, 0
  br i1 %tobool719, label %cond.end763, label %cond.true720

cond.true720:                                     ; preds = %cond.end715
  %mb_addr721 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 1
  %221 = load i32* %mb_addr721, align 4, !tbaa !3
  %idxprom722 = sext i32 %221 to i64
  %mb_data723 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %222 = load %struct.macroblock** %mb_data723, align 8, !tbaa !0
  %mb_field725 = getelementptr inbounds %struct.macroblock* %222, i64 %idxprom722, i32 22
  %223 = load i32* %mb_field725, align 4, !tbaa !3
  %tobool726 = icmp eq i32 %223, 0
  %pos_y728 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 5
  %224 = load i32* %pos_y728, align 4, !tbaa !3
  br i1 %tobool726, label %lor.lhs.false727, label %cond.true720.cond.true739_crit_edge

cond.true720.cond.true739_crit_edge:              ; preds = %cond.true720
  %pos_x742.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 4
  %.pre1933 = load i32* %pos_x742.phi.trans.insert, align 4, !tbaa !3
  %.pre1934 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx744.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1934, i64 0, i32 32
  %.pre1935 = load i16**** %ref_idx744.phi.trans.insert, align 8, !tbaa !0
  %arrayidx745.phi.trans.insert = getelementptr inbounds i16*** %.pre1935, i64 1
  %.pre1936 = load i16*** %arrayidx745.phi.trans.insert, align 8, !tbaa !0
  %idxprom743.phi.trans.insert = sext i32 %.pre1933 to i64
  %arrayidx746.phi.trans.insert = getelementptr inbounds i16** %.pre1936, i64 %idxprom743.phi.trans.insert
  %.pre1937 = load i16** %arrayidx746.phi.trans.insert, align 8, !tbaa !0
  %idxprom741.phi.trans.insert = sext i32 %224 to i64
  %arrayidx747.phi.trans.insert = getelementptr inbounds i16* %.pre1937, i64 %idxprom741.phi.trans.insert
  %.pre1938 = load i16* %arrayidx747.phi.trans.insert, align 2, !tbaa !4
  br label %cond.true739

lor.lhs.false727:                                 ; preds = %cond.true720
  %idxprom729 = sext i32 %224 to i64
  %pos_x730 = getelementptr inbounds %struct.pix_pos* %mb_left, i64 0, i32 4
  %225 = load i32* %pos_x730, align 4, !tbaa !3
  %idxprom731 = sext i32 %225 to i64
  %226 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx732 = getelementptr inbounds %struct.storable_picture* %226, i64 0, i32 32
  %227 = load i16**** %ref_idx732, align 8, !tbaa !0
  %arrayidx733 = getelementptr inbounds i16*** %227, i64 1
  %228 = load i16*** %arrayidx733, align 8, !tbaa !0
  %arrayidx734 = getelementptr inbounds i16** %228, i64 %idxprom731
  %229 = load i16** %arrayidx734, align 8, !tbaa !0
  %arrayidx735 = getelementptr inbounds i16* %229, i64 %idxprom729
  %230 = load i16* %arrayidx735, align 2, !tbaa !4
  %cmp737 = icmp slt i16 %230, 0
  br i1 %cmp737, label %cond.true739, label %cond.false750

cond.true739:                                     ; preds = %cond.true720.cond.true739_crit_edge, %lor.lhs.false727
  %231 = phi i16 [ %.pre1938, %cond.true720.cond.true739_crit_edge ], [ %230, %lor.lhs.false727 ]
  %conv748 = sext i16 %231 to i32
  %shr749 = ashr i32 %conv748, 1
  br label %cond.end763

cond.false750:                                    ; preds = %lor.lhs.false727
  %conv736 = sext i16 %230 to i32
  br label %cond.end763

cond.end763:                                      ; preds = %cond.end715, %cond.true739, %cond.false750
  %cond764 = phi i32 [ %shr749, %cond.true739 ], [ %conv736, %cond.false750 ], [ -1, %cond.end715 ]
  %conv765 = trunc i32 %cond764 to i16
  br i1 %tobool574, label %cond.end811, label %cond.true768

cond.true768:                                     ; preds = %cond.end763
  %mb_addr769 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 1
  %232 = load i32* %mb_addr769, align 4, !tbaa !3
  %idxprom770 = sext i32 %232 to i64
  %mb_data771 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %233 = load %struct.macroblock** %mb_data771, align 8, !tbaa !0
  %mb_field773 = getelementptr inbounds %struct.macroblock* %233, i64 %idxprom770, i32 22
  %234 = load i32* %mb_field773, align 4, !tbaa !3
  %tobool774 = icmp eq i32 %234, 0
  %pos_y776 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 5
  %235 = load i32* %pos_y776, align 4, !tbaa !3
  br i1 %tobool774, label %lor.lhs.false775, label %cond.true768.cond.true787_crit_edge

cond.true768.cond.true787_crit_edge:              ; preds = %cond.true768
  %pos_x790.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 4
  %.pre1926 = load i32* %pos_x790.phi.trans.insert, align 4, !tbaa !3
  %.pre1927 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx792.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1927, i64 0, i32 32
  %.pre1928 = load i16**** %ref_idx792.phi.trans.insert, align 8, !tbaa !0
  %arrayidx793.phi.trans.insert = getelementptr inbounds i16*** %.pre1928, i64 1
  %.pre1929 = load i16*** %arrayidx793.phi.trans.insert, align 8, !tbaa !0
  %idxprom791.phi.trans.insert = sext i32 %.pre1926 to i64
  %arrayidx794.phi.trans.insert = getelementptr inbounds i16** %.pre1929, i64 %idxprom791.phi.trans.insert
  %.pre1930 = load i16** %arrayidx794.phi.trans.insert, align 8, !tbaa !0
  %idxprom789.phi.trans.insert = sext i32 %235 to i64
  %arrayidx795.phi.trans.insert = getelementptr inbounds i16* %.pre1930, i64 %idxprom789.phi.trans.insert
  %.pre1931 = load i16* %arrayidx795.phi.trans.insert, align 2, !tbaa !4
  br label %cond.true787

lor.lhs.false775:                                 ; preds = %cond.true768
  %idxprom777 = sext i32 %235 to i64
  %pos_x778 = getelementptr inbounds %struct.pix_pos* %mb_up, i64 0, i32 4
  %236 = load i32* %pos_x778, align 4, !tbaa !3
  %idxprom779 = sext i32 %236 to i64
  %237 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx780 = getelementptr inbounds %struct.storable_picture* %237, i64 0, i32 32
  %238 = load i16**** %ref_idx780, align 8, !tbaa !0
  %arrayidx781 = getelementptr inbounds i16*** %238, i64 1
  %239 = load i16*** %arrayidx781, align 8, !tbaa !0
  %arrayidx782 = getelementptr inbounds i16** %239, i64 %idxprom779
  %240 = load i16** %arrayidx782, align 8, !tbaa !0
  %arrayidx783 = getelementptr inbounds i16* %240, i64 %idxprom777
  %241 = load i16* %arrayidx783, align 2, !tbaa !4
  %cmp785 = icmp slt i16 %241, 0
  br i1 %cmp785, label %cond.true787, label %cond.false798

cond.true787:                                     ; preds = %cond.true768.cond.true787_crit_edge, %lor.lhs.false775
  %242 = phi i16 [ %.pre1931, %cond.true768.cond.true787_crit_edge ], [ %241, %lor.lhs.false775 ]
  %conv796 = sext i16 %242 to i32
  %shr797 = ashr i32 %conv796, 1
  br label %cond.end811

cond.false798:                                    ; preds = %lor.lhs.false775
  %conv784 = sext i16 %241 to i32
  br label %cond.end811

cond.end811:                                      ; preds = %cond.end763, %cond.true787, %cond.false798
  %cond812 = phi i32 [ %shr797, %cond.true787 ], [ %conv784, %cond.false798 ], [ -1, %cond.end763 ]
  %conv813 = trunc i32 %cond812 to i16
  br i1 %tobool622, label %cond.end859, label %cond.true816

cond.true816:                                     ; preds = %cond.end811
  %mb_addr817 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 1
  %243 = load i32* %mb_addr817, align 4, !tbaa !3
  %idxprom818 = sext i32 %243 to i64
  %mb_data819 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %244 = load %struct.macroblock** %mb_data819, align 8, !tbaa !0
  %mb_field821 = getelementptr inbounds %struct.macroblock* %244, i64 %idxprom818, i32 22
  %245 = load i32* %mb_field821, align 4, !tbaa !3
  %tobool822 = icmp eq i32 %245, 0
  %pos_y824 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 5
  %246 = load i32* %pos_y824, align 4, !tbaa !3
  br i1 %tobool822, label %lor.lhs.false823, label %cond.true816.cond.true835_crit_edge

cond.true816.cond.true835_crit_edge:              ; preds = %cond.true816
  %pos_x838.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 4
  %.pre1919 = load i32* %pos_x838.phi.trans.insert, align 4, !tbaa !3
  %.pre1920 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx840.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1920, i64 0, i32 32
  %.pre1921 = load i16**** %ref_idx840.phi.trans.insert, align 8, !tbaa !0
  %arrayidx841.phi.trans.insert = getelementptr inbounds i16*** %.pre1921, i64 1
  %.pre1922 = load i16*** %arrayidx841.phi.trans.insert, align 8, !tbaa !0
  %idxprom839.phi.trans.insert = sext i32 %.pre1919 to i64
  %arrayidx842.phi.trans.insert = getelementptr inbounds i16** %.pre1922, i64 %idxprom839.phi.trans.insert
  %.pre1923 = load i16** %arrayidx842.phi.trans.insert, align 8, !tbaa !0
  %idxprom837.phi.trans.insert = sext i32 %246 to i64
  %arrayidx843.phi.trans.insert = getelementptr inbounds i16* %.pre1923, i64 %idxprom837.phi.trans.insert
  %.pre1924 = load i16* %arrayidx843.phi.trans.insert, align 2, !tbaa !4
  br label %cond.true835

lor.lhs.false823:                                 ; preds = %cond.true816
  %idxprom825 = sext i32 %246 to i64
  %pos_x826 = getelementptr inbounds %struct.pix_pos* %mb_upleft, i64 0, i32 4
  %247 = load i32* %pos_x826, align 4, !tbaa !3
  %idxprom827 = sext i32 %247 to i64
  %248 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx828 = getelementptr inbounds %struct.storable_picture* %248, i64 0, i32 32
  %249 = load i16**** %ref_idx828, align 8, !tbaa !0
  %arrayidx829 = getelementptr inbounds i16*** %249, i64 1
  %250 = load i16*** %arrayidx829, align 8, !tbaa !0
  %arrayidx830 = getelementptr inbounds i16** %250, i64 %idxprom827
  %251 = load i16** %arrayidx830, align 8, !tbaa !0
  %arrayidx831 = getelementptr inbounds i16* %251, i64 %idxprom825
  %252 = load i16* %arrayidx831, align 2, !tbaa !4
  %cmp833 = icmp slt i16 %252, 0
  br i1 %cmp833, label %cond.true835, label %cond.false846

cond.true835:                                     ; preds = %cond.true816.cond.true835_crit_edge, %lor.lhs.false823
  %253 = phi i16 [ %.pre1924, %cond.true816.cond.true835_crit_edge ], [ %252, %lor.lhs.false823 ]
  %conv844 = sext i16 %253 to i32
  %shr845 = ashr i32 %conv844, 1
  br label %cond.end859

cond.false846:                                    ; preds = %lor.lhs.false823
  %conv832 = sext i16 %252 to i32
  br label %cond.end859

cond.end859:                                      ; preds = %cond.end811, %cond.true835, %cond.false846
  %cond860 = phi i32 [ %shr845, %cond.true835 ], [ %conv832, %cond.false846 ], [ -1, %cond.end811 ]
  br i1 %tobool670, label %cond.end908, label %cond.true864

cond.true864:                                     ; preds = %cond.end859
  %mb_addr865 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 1
  %254 = load i32* %mb_addr865, align 4, !tbaa !3
  %idxprom866 = sext i32 %254 to i64
  %mb_data867 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 51
  %255 = load %struct.macroblock** %mb_data867, align 8, !tbaa !0
  %mb_field869 = getelementptr inbounds %struct.macroblock* %255, i64 %idxprom866, i32 22
  %256 = load i32* %mb_field869, align 4, !tbaa !3
  %tobool870 = icmp eq i32 %256, 0
  %pos_y872 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 5
  %257 = load i32* %pos_y872, align 4, !tbaa !3
  br i1 %tobool870, label %lor.lhs.false871, label %cond.true864.cond.true883_crit_edge

cond.true864.cond.true883_crit_edge:              ; preds = %cond.true864
  %pos_x886.phi.trans.insert = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 4
  %.pre1912 = load i32* %pos_x886.phi.trans.insert, align 4, !tbaa !3
  %.pre1913 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx888.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre1913, i64 0, i32 32
  %.pre1914 = load i16**** %ref_idx888.phi.trans.insert, align 8, !tbaa !0
  %arrayidx889.phi.trans.insert = getelementptr inbounds i16*** %.pre1914, i64 1
  %.pre1915 = load i16*** %arrayidx889.phi.trans.insert, align 8, !tbaa !0
  %idxprom887.phi.trans.insert = sext i32 %.pre1912 to i64
  %arrayidx890.phi.trans.insert = getelementptr inbounds i16** %.pre1915, i64 %idxprom887.phi.trans.insert
  %.pre1916 = load i16** %arrayidx890.phi.trans.insert, align 8, !tbaa !0
  %idxprom885.phi.trans.insert = sext i32 %257 to i64
  %arrayidx891.phi.trans.insert = getelementptr inbounds i16* %.pre1916, i64 %idxprom885.phi.trans.insert
  %.pre1917 = load i16* %arrayidx891.phi.trans.insert, align 2, !tbaa !4
  br label %cond.true883

lor.lhs.false871:                                 ; preds = %cond.true864
  %idxprom873 = sext i32 %257 to i64
  %pos_x874 = getelementptr inbounds %struct.pix_pos* %mb_upright, i64 0, i32 4
  %258 = load i32* %pos_x874, align 4, !tbaa !3
  %idxprom875 = sext i32 %258 to i64
  %259 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx876 = getelementptr inbounds %struct.storable_picture* %259, i64 0, i32 32
  %260 = load i16**** %ref_idx876, align 8, !tbaa !0
  %arrayidx877 = getelementptr inbounds i16*** %260, i64 1
  %261 = load i16*** %arrayidx877, align 8, !tbaa !0
  %arrayidx878 = getelementptr inbounds i16** %261, i64 %idxprom875
  %262 = load i16** %arrayidx878, align 8, !tbaa !0
  %arrayidx879 = getelementptr inbounds i16* %262, i64 %idxprom873
  %263 = load i16* %arrayidx879, align 2, !tbaa !4
  %cmp881 = icmp slt i16 %263, 0
  br i1 %cmp881, label %cond.true883, label %cond.false894

cond.true883:                                     ; preds = %cond.true864.cond.true883_crit_edge, %lor.lhs.false871
  %264 = phi i16 [ %.pre1917, %cond.true864.cond.true883_crit_edge ], [ %263, %lor.lhs.false871 ]
  %conv892 = sext i16 %264 to i32
  %shr893 = ashr i32 %conv892, 1
  br label %cond.end908

cond.false894:                                    ; preds = %lor.lhs.false871
  %conv880 = sext i16 %263 to i32
  br label %cond.end908

cond.end908:                                      ; preds = %cond.end859, %cond.true883, %cond.false894
  %cond909 = phi i32 [ %shr893, %cond.true883 ], [ %conv880, %cond.false894 ], [ %cond860, %cond.end859 ]
  %conv910 = trunc i32 %cond909 to i16
  br label %if.end912

if.end912:                                        ; preds = %lor.lhs.false485, %cond.true478.cond.true497_crit_edge, %cond.end473, %cond.true124, %cond.end119, %cond.end908
  %fw_rFrameL.0 = phi i16 [ %conv572, %cond.end908 ], [ %cond, %cond.end119 ], [ %cond, %cond.true124 ], [ %cond185, %cond.end473 ], [ %cond185, %cond.true478.cond.true497_crit_edge ], [ %cond185, %lor.lhs.false485 ]
  %fw_rFrameU.0 = phi i16 [ %conv620, %cond.end908 ], [ %cond39, %cond.end119 ], [ %cond39, %cond.true124 ], [ %cond233, %cond.end473 ], [ %cond233, %cond.true478.cond.true497_crit_edge ], [ %cond233, %lor.lhs.false485 ]
  %fw_rFrameUR.0 = phi i16 [ %conv717, %cond.end908 ], [ %.sink, %cond.end119 ], [ %.sink, %cond.true124 ], [ %cond330, %cond.end473 ], [ %cond330, %cond.true478.cond.true497_crit_edge ], [ %cond330, %lor.lhs.false485 ]
  %bw_rFrameL.0 = phi i16 [ %conv765, %cond.end908 ], [ %cond88, %cond.end119 ], [ %cond88, %cond.true124 ], [ %cond378, %cond.end473 ], [ %cond378, %cond.true478.cond.true497_crit_edge ], [ %cond378, %lor.lhs.false485 ]
  %bw_rFrameU.0 = phi i16 [ %conv813, %cond.end908 ], [ %cond104, %cond.end119 ], [ %cond104, %cond.true124 ], [ %cond426, %cond.end473 ], [ %cond426, %cond.true478.cond.true497_crit_edge ], [ %cond426, %lor.lhs.false485 ]
  %bw_rFrameUR.0 = phi i16 [ %conv910, %cond.end908 ], [ %cond120, %cond.end119 ], [ %88, %cond.true124 ], [ %cond474, %cond.end473 ], [ %.pre1973, %cond.true478.cond.true497_crit_edge ], [ %.mul517, %lor.lhs.false485 ]
  %265 = or i16 %fw_rFrameU.0, %fw_rFrameL.0
  %266 = icmp sgt i16 %265, -1
  %cmp923 = icmp slt i16 %fw_rFrameL.0, %fw_rFrameU.0
  %cmp934 = icmp sgt i16 %fw_rFrameL.0, %fw_rFrameU.0
  %cmp923.sink = select i1 %266, i1 %cmp923, i1 %cmp934
  %.sink1612 = select i1 %cmp923.sink, i16 %fw_rFrameL.0, i16 %fw_rFrameU.0
  %267 = or i16 %.sink1612, %fw_rFrameUR.0
  %268 = icmp sgt i16 %267, -1
  %cmp955 = icmp slt i16 %.sink1612, %fw_rFrameUR.0
  %cmp966 = icmp sgt i16 %.sink1612, %fw_rFrameUR.0
  %cmp955.sink = select i1 %268, i1 %cmp955, i1 %cmp966
  %.sink1614 = select i1 %cmp955.sink, i16 %.sink1612, i16 %fw_rFrameUR.0
  %269 = or i16 %bw_rFrameU.0, %bw_rFrameL.0
  %270 = icmp sgt i16 %269, -1
  %cmp987 = icmp slt i16 %bw_rFrameL.0, %bw_rFrameU.0
  %cmp998 = icmp sgt i16 %bw_rFrameL.0, %bw_rFrameU.0
  %cmp987.sink = select i1 %270, i1 %cmp987, i1 %cmp998
  %.sink1616 = select i1 %cmp987.sink, i16 %bw_rFrameL.0, i16 %bw_rFrameU.0
  %271 = or i16 %.sink1616, %bw_rFrameUR.0
  %272 = icmp sgt i16 %271, -1
  %cmp1019 = icmp slt i16 %.sink1616, %bw_rFrameUR.0
  %cmp1030 = icmp sgt i16 %.sink1616, %bw_rFrameUR.0
  %cmp1019.sink = select i1 %272, i1 %cmp1019, i1 %cmp1030
  %.sink1618 = select i1 %cmp1019.sink, i16 %.sink1616, i16 %bw_rFrameUR.0
  %cmp1042 = icmp sgt i16 %.sink1614, -1
  br i1 %cmp1042, label %if.then1044, label %if.end1047

if.then1044:                                      ; preds = %if.end912
  %arraydecay = bitcast i32* %pmvfw to i16*
  %273 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx1045 = getelementptr inbounds %struct.storable_picture* %273, i64 0, i32 32
  %274 = load i16**** %ref_idx1045, align 8, !tbaa !0
  %mv1046 = getelementptr inbounds %struct.storable_picture* %273, i64 0, i32 35
  %275 = load i16***** %mv1046, align 8, !tbaa !0
  call void @SetMotionVectorPredictor(i16* %arraydecay, i16*** %274, i16**** %275, i16 signext %.sink1614, i32 0, i32 0, i32 0, i32 16, i32 16) #8
  br label %if.end1047

if.end1047:                                       ; preds = %if.then1044, %if.end912
  %cmp1049 = icmp sgt i16 %.sink1618, -1
  br i1 %cmp1049, label %if.then1051, label %for.cond.preheader

if.then1051:                                      ; preds = %if.end1047
  %arraydecay1052 = bitcast i32* %pmvbw to i16*
  %276 = load %struct.storable_picture** @enc_picture, align 8, !tbaa !0
  %ref_idx1053 = getelementptr inbounds %struct.storable_picture* %276, i64 0, i32 32
  %277 = load i16**** %ref_idx1053, align 8, !tbaa !0
  %mv1054 = getelementptr inbounds %struct.storable_picture* %276, i64 0, i32 35
  %278 = load i16***** %mv1054, align 8, !tbaa !0
  call void @SetMotionVectorPredictor(i16* %arraydecay1052, i16*** %277, i16**** %278, i16 signext %.sink1618, i32 1, i32 0, i32 0, i32 16, i32 16) #8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end1047, %if.then1051
  %tobool1073 = icmp eq i16 %.sink1614, 0
  %idxprom1104 = sext i16 %.sink1614 to i64
  %cmp1157 = icmp eq i16 %.sink1618, 0
  %idxprom1189 = sext i16 %.sink1618 to i64
  %279 = and i16 %.sink1618, %.sink1614
  %280 = icmp slt i16 %279, 0
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pix_x.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 33
  %.pre1900.pre = load i32* %pix_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %opix_x.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 37
  %.pre1901.pre = load i32* %opix_x.phi.trans.insert.phi.trans.insert, align 4, !tbaa !3
  %pix_y.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 34
  %.pre2016 = load i32* %pix_y.phi.trans.insert, align 4, !tbaa !3
  %opix_y.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 38
  %.pre2017 = load i32* %opix_y.phi.trans.insert, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.inc1290, %for.cond.preheader
  %indvars.iv1896 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next1897, %for.inc1290 ]
  %shr1058 = ashr i32 %.pre2016, 2
  %281 = trunc i64 %indvars.iv1896 to i32
  %add = add nsw i32 %shr1058, %281
  %shr1059 = ashr i32 %.pre2017, 2
  %add1060 = add nsw i32 %shr1059, %281
  %idxprom1075 = sext i32 %add1060 to i64
  %idxprom1097 = sext i32 %add to i64
  br label %for.body1064

for.body1064:                                     ; preds = %for.inc, %for.body
  %indvars.iv1892 = phi i64 [ 0, %for.body ], [ %indvars.iv.next1893, %for.inc ]
  %shr1065 = ashr i32 %.pre1900.pre, 2
  %282 = trunc i64 %indvars.iv1892 to i32
  %add1066 = add nsw i32 %shr1065, %282
  %shr1067 = ashr i32 %.pre1901.pre, 2
  %add1068 = add nsw i32 %shr1067, %282
  br i1 %cmp1042, label %if.then1072, label %if.else1129

if.then1072:                                      ; preds = %for.body1064
  br i1 %tobool1073, label %land.lhs.true1074, label %if.else1102

land.lhs.true1074:                                ; preds = %if.then1072
  %idxprom1076 = sext i32 %add1068 to i64
  %arrayidx1077 = getelementptr inbounds i8** %moving_block.0, i64 %idxprom1076
  %283 = load i8** %arrayidx1077, align 8, !tbaa !0
  %arrayidx1078 = getelementptr inbounds i8* %283, i64 %idxprom1075
  %284 = load i8* %arrayidx1078, align 1, !tbaa !1
  %tobool1079 = icmp eq i8 %284, 0
  br i1 %tobool1079, label %if.then1080, label %if.else1102

if.then1080:                                      ; preds = %land.lhs.true1074
  %arrayidx1083 = getelementptr inbounds i16****** %1, i64 %indvars.iv1892
  %285 = load i16****** %arrayidx1083, align 8, !tbaa !0
  %arrayidx1084 = getelementptr inbounds i16***** %285, i64 %indvars.iv1896
  %286 = load i16***** %arrayidx1084, align 8, !tbaa !0
  %287 = load i16**** %286, align 8, !tbaa !0
  %288 = load i16*** %287, align 8, !tbaa !0
  %289 = load i16** %288, align 8, !tbaa !0
  store i16 0, i16* %289, align 2, !tbaa !4
  %arrayidx1096 = getelementptr inbounds i16* %289, i64 1
  store i16 0, i16* %arrayidx1096, align 2, !tbaa !4
  %idxprom1098 = sext i32 %add1066 to i64
  %290 = load i16**** @direct_ref_idx, align 8, !tbaa !0
  %291 = load i16*** %290, align 8, !tbaa !0
  %arrayidx1100 = getelementptr inbounds i16** %291, i64 %idxprom1098
  %292 = load i16** %arrayidx1100, align 8, !tbaa !0
  %arrayidx1101 = getelementptr inbounds i16* %292, i64 %idxprom1097
  store i16 0, i16* %arrayidx1101, align 2, !tbaa !4
  br label %if.end1151

if.else1102:                                      ; preds = %land.lhs.true1074, %if.then1072
  %293 = load i32* %pmvfw, align 4
  %294 = trunc i32 %293 to i16
  %arrayidx1107 = getelementptr inbounds i16****** %1, i64 %indvars.iv1892
  %295 = load i16****** %arrayidx1107, align 8, !tbaa !0
  %arrayidx1108 = getelementptr inbounds i16***** %295, i64 %indvars.iv1896
  %296 = load i16***** %arrayidx1108, align 8, !tbaa !0
  %297 = load i16**** %296, align 8, !tbaa !0
  %arrayidx1110 = getelementptr inbounds i16*** %297, i64 %idxprom1104
  %298 = load i16*** %arrayidx1110, align 8, !tbaa !0
  %299 = load i16** %298, align 8, !tbaa !0
  store i16 %294, i16* %299, align 2, !tbaa !4
  %300 = lshr i32 %293, 16
  %301 = trunc i32 %300 to i16
  %arrayidx1122 = getelementptr inbounds i16* %299, i64 1
  store i16 %301, i16* %arrayidx1122, align 2, !tbaa !4
  %idxprom1124 = sext i32 %add1066 to i64
  %302 = load i16**** @direct_ref_idx, align 8, !tbaa !0
  %303 = load i16*** %302, align 8, !tbaa !0
  %arrayidx1126 = getelementptr inbounds i16** %303, i64 %idxprom1124
  %304 = load i16** %arrayidx1126, align 8, !tbaa !0
  %arrayidx1127 = getelementptr inbounds i16* %304, i64 %idxprom1097
  store i16 %.sink1614, i16* %arrayidx1127, align 2, !tbaa !4
  br label %if.end1151

if.else1129:                                      ; preds = %for.body1064
  %arrayidx1132 = getelementptr inbounds i16****** %1, i64 %indvars.iv1892
  %305 = load i16****** %arrayidx1132, align 8, !tbaa !0
  %arrayidx1133 = getelementptr inbounds i16***** %305, i64 %indvars.iv1896
  %306 = load i16***** %arrayidx1133, align 8, !tbaa !0
  %307 = load i16**** %306, align 8, !tbaa !0
  %308 = load i16*** %307, align 8, !tbaa !0
  %309 = load i16** %308, align 8, !tbaa !0
  store i16 0, i16* %309, align 2, !tbaa !4
  %arrayidx1145 = getelementptr inbounds i16* %309, i64 1
  store i16 0, i16* %arrayidx1145, align 2, !tbaa !4
  %idxprom1147 = sext i32 %add1066 to i64
  %310 = load i16**** @direct_ref_idx, align 8, !tbaa !0
  %311 = load i16*** %310, align 8, !tbaa !0
  %arrayidx1149 = getelementptr inbounds i16** %311, i64 %idxprom1147
  %312 = load i16** %arrayidx1149, align 8, !tbaa !0
  %arrayidx1150 = getelementptr inbounds i16* %312, i64 %idxprom1097
  store i16 -1, i16* %arrayidx1150, align 2, !tbaa !4
  br label %if.end1151

if.end1151:                                       ; preds = %if.then1080, %if.else1102, %if.else1129
  %313 = phi i16** [ %291, %if.then1080 ], [ %303, %if.else1102 ], [ %311, %if.else1129 ]
  %314 = phi i16*** [ %290, %if.then1080 ], [ %302, %if.else1102 ], [ %310, %if.else1129 ]
  %315 = phi i16**** [ %286, %if.then1080 ], [ %296, %if.else1102 ], [ %306, %if.else1129 ]
  br i1 %cmp1049, label %if.then1155, label %if.else1214

if.then1155:                                      ; preds = %if.end1151
  br i1 %cmp1157, label %land.lhs.true1159, label %if.else1187

land.lhs.true1159:                                ; preds = %if.then1155
  %idxprom1161 = sext i32 %add1068 to i64
  %arrayidx1162 = getelementptr inbounds i8** %moving_block.0, i64 %idxprom1161
  %316 = load i8** %arrayidx1162, align 8, !tbaa !0
  %arrayidx1163 = getelementptr inbounds i8* %316, i64 %idxprom1075
  %317 = load i8* %arrayidx1163, align 1, !tbaa !1
  %tobool1164 = icmp eq i8 %317, 0
  br i1 %tobool1164, label %if.end1236.thread, label %if.else1187

if.end1236.thread:                                ; preds = %land.lhs.true1159
  %arrayidx1170 = getelementptr inbounds i16**** %315, i64 1
  %318 = load i16**** %arrayidx1170, align 8, !tbaa !0
  %319 = load i16*** %318, align 8, !tbaa !0
  %320 = load i16** %319, align 8, !tbaa !0
  store i16 0, i16* %320, align 2, !tbaa !4
  %arrayidx1181 = getelementptr inbounds i16* %320, i64 1
  store i16 0, i16* %arrayidx1181, align 2, !tbaa !4
  %idxprom1183 = sext i32 %add1066 to i64
  %arrayidx1184 = getelementptr inbounds i16*** %314, i64 1
  %321 = load i16*** %arrayidx1184, align 8, !tbaa !0
  %arrayidx1185 = getelementptr inbounds i16** %321, i64 %idxprom1183
  %322 = load i16** %arrayidx1185, align 8, !tbaa !0
  %arrayidx1186 = getelementptr inbounds i16* %322, i64 %idxprom1097
  store i16 0, i16* %arrayidx1186, align 2, !tbaa !4
  br label %if.end1255

if.else1187:                                      ; preds = %land.lhs.true1159, %if.then1155
  %323 = load i32* %pmvbw, align 4
  %324 = trunc i32 %323 to i16
  %arrayidx1194 = getelementptr inbounds i16**** %315, i64 1
  %325 = load i16**** %arrayidx1194, align 8, !tbaa !0
  %arrayidx1195 = getelementptr inbounds i16*** %325, i64 %idxprom1189
  %326 = load i16*** %arrayidx1195, align 8, !tbaa !0
  %327 = load i16** %326, align 8, !tbaa !0
  store i16 %324, i16* %327, align 2, !tbaa !4
  %328 = lshr i32 %323, 16
  %329 = trunc i32 %328 to i16
  %arrayidx1207 = getelementptr inbounds i16* %327, i64 1
  store i16 %329, i16* %arrayidx1207, align 2, !tbaa !4
  %idxprom1209 = sext i32 %add1066 to i64
  %arrayidx1210 = getelementptr inbounds i16*** %314, i64 1
  %330 = load i16*** %arrayidx1210, align 8, !tbaa !0
  %arrayidx1211 = getelementptr inbounds i16** %330, i64 %idxprom1209
  %331 = load i16** %arrayidx1211, align 8, !tbaa !0
  %arrayidx1212 = getelementptr inbounds i16* %331, i64 %idxprom1097
  store i16 %.sink1618, i16* %arrayidx1212, align 2, !tbaa !4
  br label %if.end1236

if.else1214:                                      ; preds = %if.end1151
  %idxprom1216 = sext i32 %add1066 to i64
  %arrayidx1217 = getelementptr inbounds i16*** %314, i64 1
  %332 = load i16*** %arrayidx1217, align 8, !tbaa !0
  %arrayidx1218 = getelementptr inbounds i16** %332, i64 %idxprom1216
  %333 = load i16** %arrayidx1218, align 8, !tbaa !0
  %arrayidx1219 = getelementptr inbounds i16* %333, i64 %idxprom1097
  store i16 -1, i16* %arrayidx1219, align 2, !tbaa !4
  %arrayidx1224 = getelementptr inbounds i16**** %315, i64 1
  %334 = load i16**** %arrayidx1224, align 8, !tbaa !0
  %335 = load i16*** %334, align 8, !tbaa !0
  %336 = load i16** %335, align 8, !tbaa !0
  store i16 0, i16* %336, align 2, !tbaa !4
  %arrayidx1235 = getelementptr inbounds i16* %336, i64 1
  store i16 0, i16* %arrayidx1235, align 2, !tbaa !4
  br label %if.end1236

if.end1236:                                       ; preds = %if.else1187, %if.else1214
  %337 = phi i16** [ %330, %if.else1187 ], [ %332, %if.else1214 ]
  %idxprom1246 = sext i32 %add1066 to i64
  br i1 %280, label %if.then1244, label %if.end1255

if.then1244:                                      ; preds = %if.end1236
  %arrayidx1248 = getelementptr inbounds i16** %337, i64 %idxprom1246
  %338 = load i16** %arrayidx1248, align 8, !tbaa !0
  %arrayidx1249 = getelementptr inbounds i16* %338, i64 %idxprom1097
  store i16 0, i16* %arrayidx1249, align 2, !tbaa !4
  %arrayidx1253 = getelementptr inbounds i16** %313, i64 %idxprom1246
  %339 = load i16** %arrayidx1253, align 8, !tbaa !0
  %arrayidx1254 = getelementptr inbounds i16* %339, i64 %idxprom1097
  store i16 0, i16* %arrayidx1254, align 2, !tbaa !4
  br label %if.end1255

if.end1255:                                       ; preds = %if.end1236, %if.end1236.thread, %if.then1244
  %idxprom1257.pre-phi = phi i64 [ %idxprom1183, %if.end1236.thread ], [ %idxprom1246, %if.then1244 ], [ %idxprom1246, %if.end1236 ]
  %340 = phi i16** [ %321, %if.end1236.thread ], [ %337, %if.then1244 ], [ %337, %if.end1236 ]
  %arrayidx1259 = getelementptr inbounds i16** %340, i64 %idxprom1257.pre-phi
  %341 = load i16** %arrayidx1259, align 8, !tbaa !0
  %arrayidx1260 = getelementptr inbounds i16* %341, i64 %idxprom1097
  %342 = load i16* %arrayidx1260, align 2, !tbaa !4
  %cmp1262 = icmp eq i16 %342, -1
  br i1 %cmp1262, label %if.then1264, label %if.else1269

if.then1264:                                      ; preds = %if.end1255
  %343 = load i16*** @direct_pdir, align 8, !tbaa !0
  %arrayidx1267 = getelementptr inbounds i16** %343, i64 %idxprom1257.pre-phi
  %344 = load i16** %arrayidx1267, align 8, !tbaa !0
  %arrayidx1268 = getelementptr inbounds i16* %344, i64 %idxprom1097
  store i16 0, i16* %arrayidx1268, align 2, !tbaa !4
  br label %for.inc

if.else1269:                                      ; preds = %if.end1255
  %arrayidx1273 = getelementptr inbounds i16** %313, i64 %idxprom1257.pre-phi
  %345 = load i16** %arrayidx1273, align 8, !tbaa !0
  %arrayidx1274 = getelementptr inbounds i16* %345, i64 %idxprom1097
  %346 = load i16* %arrayidx1274, align 2, !tbaa !4
  %cmp1276 = icmp eq i16 %346, -1
  %347 = load i16*** @direct_pdir, align 8, !tbaa !0
  %arrayidx1281 = getelementptr inbounds i16** %347, i64 %idxprom1257.pre-phi
  %348 = load i16** %arrayidx1281, align 8, !tbaa !0
  %arrayidx1282 = getelementptr inbounds i16* %348, i64 %idxprom1097
  br i1 %cmp1276, label %if.then1278, label %if.else1283

if.then1278:                                      ; preds = %if.else1269
  store i16 1, i16* %arrayidx1282, align 2, !tbaa !4
  br label %for.inc

if.else1283:                                      ; preds = %if.else1269
  store i16 2, i16* %arrayidx1282, align 2, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.then1264, %if.else1283, %if.then1278
  %indvars.iv.next1893 = add i64 %indvars.iv1892, 1
  %lftr.wideiv1894 = trunc i64 %indvars.iv.next1893 to i32
  %exitcond1895 = icmp eq i32 %lftr.wideiv1894, 4
  br i1 %exitcond1895, label %for.inc1290, label %for.body1064

for.inc1290:                                      ; preds = %for.inc
  %indvars.iv.next1897 = add i64 %indvars.iv1896, 1
  %lftr.wideiv1898 = trunc i64 %indvars.iv.next1897 to i32
  %exitcond1899 = icmp eq i32 %lftr.wideiv1898, 4
  br i1 %exitcond1899, label %if.end1610, label %for.body

for.body1297:                                     ; preds = %for.inc1607, %for.cond1294.preheader
  %indvars.iv1886 = phi i64 [ 0, %for.cond1294.preheader ], [ %indvars.iv.next1887, %for.inc1607 ]
  %349 = add nsw i64 %20, %indvars.iv1886
  %350 = add nsw i64 %19, %indvars.iv1886
  br label %for.body1307

for.body1307:                                     ; preds = %for.inc1604, %for.body1297
  %indvars.iv1882 = phi i64 [ 0, %for.body1297 ], [ %indvars.iv.next1883, %for.inc1604 ]
  br i1 %tobool, label %cond.end1320, label %land.lhs.true1311

land.lhs.true1311:                                ; preds = %for.body1307
  %351 = load i32* %mb_field1312, align 4, !tbaa !3
  %tobool1313 = icmp eq i32 %351, 0
  br i1 %tobool1313, label %cond.end1320, label %cond.true1314

cond.true1314:                                    ; preds = %land.lhs.true1311
  %rem13161850 = and i32 %2, 1
  %tobool1317 = icmp ne i32 %rem13161850, 0
  %phitmp = select i1 %tobool1317, i64 4, i64 2
  br label %cond.end1320

cond.end1320:                                     ; preds = %land.lhs.true1311, %for.body1307, %cond.true1314
  %cond1321 = phi i64 [ %phitmp, %cond.true1314 ], [ 0, %land.lhs.true1311 ], [ 0, %for.body1307 ]
  %352 = add nsw i64 %18, %indvars.iv1882
  %353 = add nsw i64 %17, %indvars.iv1882
  %arrayidx1331 = getelementptr inbounds i16** %13, i64 %353
  %354 = load i16** %arrayidx1331, align 8, !tbaa !0
  %arrayidx1332 = getelementptr inbounds i16* %354, i64 %350
  %355 = load i16* %arrayidx1332, align 2, !tbaa !4
  %cmp1334 = icmp eq i16 %355, -1
  %idxprom1339 = zext i1 %cmp1334 to i64
  %arrayidx1340 = getelementptr inbounds i16*** %co_located_ref_idx.0, i64 %idxprom1339
  %356 = load i16*** %arrayidx1340, align 8, !tbaa !0
  %arrayidx1341 = getelementptr inbounds i16** %356, i64 %353
  %357 = load i16** %arrayidx1341, align 8, !tbaa !0
  %arrayidx1342 = getelementptr inbounds i16* %357, i64 %350
  %358 = load i16* %arrayidx1342, align 2, !tbaa !4
  %cmp1344 = icmp eq i16 %358, -1
  br i1 %cmp1344, label %if.then1346, label %for.cond1394.preheader

for.cond1394.preheader:                           ; preds = %cond.end1320
  %359 = load i32* %num_ref_idx_l0_active1868, align 4, !tbaa !3
  %arrayidx1397 = getelementptr inbounds [6 x i32]* @listXsize, i64 0, i64 %cond1321
  %360 = load i32* %arrayidx1397, align 4, !tbaa !3
  %cmp13981869 = icmp slt i32 %359, %360
  %.1870 = select i1 %cmp13981869, i32 %359, i32 %360
  %cmp14081871 = icmp sgt i32 %.1870, 0
  br i1 %cmp14081871, label %for.body1410.lr.ph, label %if.else1587

for.body1410.lr.ph:                               ; preds = %for.cond1394.preheader
  %arrayidx1419 = getelementptr inbounds i64*** %co_located_ref_id.0, i64 %idxprom1339
  %361 = load i64*** %arrayidx1419, align 8, !tbaa !0
  %arrayidx1420 = getelementptr inbounds i64** %361, i64 %353
  %362 = load i64** %arrayidx1420, align 8, !tbaa !0
  %arrayidx1421 = getelementptr inbounds i64* %362, i64 %350
  %363 = load i64* %arrayidx1421, align 8, !tbaa !6
  br label %for.body1410

if.then1346:                                      ; preds = %cond.end1320
  %arrayidx1349 = getelementptr inbounds i16****** %1, i64 %indvars.iv1882
  %364 = load i16****** %arrayidx1349, align 8, !tbaa !0
  %arrayidx1350 = getelementptr inbounds i16***** %364, i64 %indvars.iv1886
  %365 = load i16***** %arrayidx1350, align 8, !tbaa !0
  %366 = load i16**** %365, align 8, !tbaa !0
  %367 = load i16*** %366, align 8, !tbaa !0
  %368 = load i16** %367, align 8, !tbaa !0
  store i16 0, i16* %368, align 2, !tbaa !4
  %arrayidx1362 = getelementptr inbounds i16* %368, i64 1
  store i16 0, i16* %arrayidx1362, align 2, !tbaa !4
  %arrayidx1367 = getelementptr inbounds i16**** %365, i64 1
  %369 = load i16**** %arrayidx1367, align 8, !tbaa !0
  %370 = load i16*** %369, align 8, !tbaa !0
  %371 = load i16** %370, align 8, !tbaa !0
  store i16 0, i16* %371, align 2, !tbaa !4
  %arrayidx1378 = getelementptr inbounds i16* %371, i64 1
  store i16 0, i16* %arrayidx1378, align 2, !tbaa !4
  %372 = load i16*** %14, align 8, !tbaa !0
  %arrayidx1382 = getelementptr inbounds i16** %372, i64 %352
  %373 = load i16** %arrayidx1382, align 8, !tbaa !0
  %arrayidx1383 = getelementptr inbounds i16* %373, i64 %349
  store i16 0, i16* %arrayidx1383, align 2, !tbaa !4
  %374 = load i16*** %arrayidx1386, align 8, !tbaa !0
  %arrayidx1387 = getelementptr inbounds i16** %374, i64 %352
  %375 = load i16** %arrayidx1387, align 8, !tbaa !0
  %arrayidx1388 = getelementptr inbounds i16* %375, i64 %349
  store i16 0, i16* %arrayidx1388, align 2, !tbaa !4
  %arrayidx1391 = getelementptr inbounds i16** %15, i64 %352
  %376 = load i16** %arrayidx1391, align 8, !tbaa !0
  %arrayidx1392 = getelementptr inbounds i16* %376, i64 %349
  store i16 2, i16* %arrayidx1392, align 2, !tbaa !4
  br label %for.inc1604

for.cond1394:                                     ; preds = %for.body1410
  %inc1428 = add nsw i32 %iref.01872, 1
  %377 = trunc i64 %indvars.iv.next to i32
  %cmp1408 = icmp slt i32 %377, %.1870
  br i1 %cmp1408, label %for.body1410, label %if.else1587

for.body1410:                                     ; preds = %for.body1410.lr.ph, %for.cond1394
  %indvars.iv = phi i64 [ 0, %for.body1410.lr.ph ], [ %indvars.iv.next, %for.cond1394 ]
  %iref.01872 = phi i32 [ 0, %for.body1410.lr.ph ], [ %inc1428, %for.cond1394 ]
  %arrayidx1415 = getelementptr inbounds %struct.storable_picture* %16, i64 0, i32 6, i64 %cond1321, i64 %indvars.iv
  %378 = load i64* %arrayidx1415, align 8, !tbaa !6
  %cmp1422 = icmp eq i64 %378, %363
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp1422, label %for.end1429, label %for.cond1394

for.end1429:                                      ; preds = %for.body1410
  %cmp1430 = icmp eq i32 %iref.01872, -135792468
  br i1 %cmp1430, label %if.else1587, label %if.then1432

if.then1432:                                      ; preds = %for.end1429
  %idxprom1433 = sext i32 %iref.01872 to i64
  %arrayidx1437 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 83, i64 %cond1321, i64 %idxprom1433
  %379 = load i32* %arrayidx1437, align 4, !tbaa !3
  %cmp1438 = icmp eq i32 %379, 9999
  %arrayidx1444 = getelementptr inbounds i16**** %co_located_mv.0, i64 %idxprom1339
  %380 = load i16**** %arrayidx1444, align 8, !tbaa !0
  %arrayidx1445 = getelementptr inbounds i16*** %380, i64 %353
  %381 = load i16*** %arrayidx1445, align 8, !tbaa !0
  %arrayidx1446 = getelementptr inbounds i16** %381, i64 %350
  %382 = load i16** %arrayidx1446, align 8, !tbaa !0
  %383 = load i16* %382, align 2, !tbaa !4
  br i1 %cmp1438, label %if.then1440, label %if.else1487

if.then1440:                                      ; preds = %if.then1432
  %arrayidx1450 = getelementptr inbounds i16****** %1, i64 %indvars.iv1882
  %384 = load i16****** %arrayidx1450, align 8, !tbaa !0
  %arrayidx1451 = getelementptr inbounds i16***** %384, i64 %indvars.iv1886
  %385 = load i16***** %arrayidx1451, align 8, !tbaa !0
  %386 = load i16**** %385, align 8, !tbaa !0
  %387 = load i16*** %386, align 8, !tbaa !0
  %388 = load i16** %387, align 8, !tbaa !0
  store i16 %383, i16* %388, align 2, !tbaa !4
  %arrayidx1462 = getelementptr inbounds i16* %382, i64 1
  %389 = load i16* %arrayidx1462, align 2, !tbaa !4
  %arrayidx1470 = getelementptr inbounds i16* %388, i64 1
  store i16 %389, i16* %arrayidx1470, align 2, !tbaa !4
  %arrayidx1475 = getelementptr inbounds i16**** %385, i64 1
  %390 = load i16**** %arrayidx1475, align 8, !tbaa !0
  %391 = load i16*** %390, align 8, !tbaa !0
  %392 = load i16** %391, align 8, !tbaa !0
  store i16 0, i16* %392, align 2, !tbaa !4
  %arrayidx1486 = getelementptr inbounds i16* %392, i64 1
  store i16 0, i16* %arrayidx1486, align 2, !tbaa !4
  br label %if.end1571

if.else1487:                                      ; preds = %if.then1432
  %conv1495 = sext i16 %383 to i32
  %mul1496 = mul nsw i32 %conv1495, %379
  %add1497 = add nsw i32 %mul1496, 128
  %shr14981846 = lshr i32 %add1497, 8
  %conv1499 = trunc i32 %shr14981846 to i16
  %arrayidx1503 = getelementptr inbounds i16****** %1, i64 %indvars.iv1882
  %393 = load i16****** %arrayidx1503, align 8, !tbaa !0
  %arrayidx1504 = getelementptr inbounds i16***** %393, i64 %indvars.iv1886
  %394 = load i16***** %arrayidx1504, align 8, !tbaa !0
  %395 = load i16**** %394, align 8, !tbaa !0
  %arrayidx1506 = getelementptr inbounds i16*** %395, i64 %idxprom1433
  %396 = load i16*** %arrayidx1506, align 8, !tbaa !0
  %397 = load i16** %396, align 8, !tbaa !0
  store i16 %conv1499, i16* %397, align 2, !tbaa !4
  %arrayidx1515 = getelementptr inbounds i16* %382, i64 1
  %398 = load i16* %arrayidx1515, align 2, !tbaa !4
  %conv1516 = sext i16 %398 to i32
  %mul1517 = mul nsw i32 %conv1516, %379
  %add1518 = add nsw i32 %mul1517, 128
  %shr15191847 = lshr i32 %add1518, 8
  %conv1520 = trunc i32 %shr15191847 to i16
  %arrayidx1529 = getelementptr inbounds i16* %397, i64 1
  store i16 %conv1520, i16* %arrayidx1529, align 2, !tbaa !4
  %sub = add nsw i32 %379, -256
  %399 = load i16* %382, align 2, !tbaa !4
  %conv1537 = sext i16 %399 to i32
  %mul1538 = mul nsw i32 %conv1537, %sub
  %add1539 = add nsw i32 %mul1538, 128
  %shr15401848 = lshr i32 %add1539, 8
  %conv1541 = trunc i32 %shr15401848 to i16
  %arrayidx1546 = getelementptr inbounds i16**** %394, i64 1
  %400 = load i16**** %arrayidx1546, align 8, !tbaa !0
  %401 = load i16*** %400, align 8, !tbaa !0
  %402 = load i16** %401, align 8, !tbaa !0
  store i16 %conv1541, i16* %402, align 2, !tbaa !4
  %403 = load i16* %arrayidx1515, align 2, !tbaa !4
  %conv1558 = sext i16 %403 to i32
  %mul1559 = mul nsw i32 %conv1558, %sub
  %add1560 = add nsw i32 %mul1559, 128
  %shr15611849 = lshr i32 %add1560, 8
  %conv1562 = trunc i32 %shr15611849 to i16
  %arrayidx1570 = getelementptr inbounds i16* %402, i64 1
  store i16 %conv1562, i16* %arrayidx1570, align 2, !tbaa !4
  br label %if.end1571

if.end1571:                                       ; preds = %if.else1487, %if.then1440
  %conv1572 = trunc i32 %iref.01872 to i16
  %404 = load i16*** %14, align 8, !tbaa !0
  %arrayidx1576 = getelementptr inbounds i16** %404, i64 %352
  %405 = load i16** %arrayidx1576, align 8, !tbaa !0
  %arrayidx1577 = getelementptr inbounds i16* %405, i64 %349
  store i16 %conv1572, i16* %arrayidx1577, align 2, !tbaa !4
  %406 = load i16*** %arrayidx1386, align 8, !tbaa !0
  %arrayidx1581 = getelementptr inbounds i16** %406, i64 %352
  %407 = load i16** %arrayidx1581, align 8, !tbaa !0
  %arrayidx1582 = getelementptr inbounds i16* %407, i64 %349
  store i16 0, i16* %arrayidx1582, align 2, !tbaa !4
  %arrayidx1585 = getelementptr inbounds i16** %15, i64 %352
  %408 = load i16** %arrayidx1585, align 8, !tbaa !0
  %arrayidx1586 = getelementptr inbounds i16* %408, i64 %349
  store i16 2, i16* %arrayidx1586, align 2, !tbaa !4
  br label %for.inc1604

if.else1587:                                      ; preds = %for.cond1394.preheader, %for.cond1394, %for.end1429
  %409 = load i16*** %14, align 8, !tbaa !0
  %arrayidx1591 = getelementptr inbounds i16** %409, i64 %352
  %410 = load i16** %arrayidx1591, align 8, !tbaa !0
  %arrayidx1592 = getelementptr inbounds i16* %410, i64 %349
  store i16 -1, i16* %arrayidx1592, align 2, !tbaa !4
  %411 = load i16*** %arrayidx1386, align 8, !tbaa !0
  %arrayidx1596 = getelementptr inbounds i16** %411, i64 %352
  %412 = load i16** %arrayidx1596, align 8, !tbaa !0
  %arrayidx1597 = getelementptr inbounds i16* %412, i64 %349
  store i16 -1, i16* %arrayidx1597, align 2, !tbaa !4
  %arrayidx1600 = getelementptr inbounds i16** %15, i64 %352
  %413 = load i16** %arrayidx1600, align 8, !tbaa !0
  %arrayidx1601 = getelementptr inbounds i16* %413, i64 %349
  store i16 -1, i16* %arrayidx1601, align 2, !tbaa !4
  br label %for.inc1604

for.inc1604:                                      ; preds = %if.then1346, %if.else1587, %if.end1571
  %indvars.iv.next1883 = add i64 %indvars.iv1882, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1883 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.inc1607, label %for.body1307

for.inc1607:                                      ; preds = %for.inc1604
  %indvars.iv.next1887 = add i64 %indvars.iv1886, 1
  %lftr.wideiv1890 = trunc i64 %indvars.iv.next1887 to i32
  %exitcond1891 = icmp eq i32 %lftr.wideiv1890, 4
  br i1 %exitcond1891, label %if.end1610, label %for.body1297

if.end1610:                                       ; preds = %for.inc1290, %for.inc1607
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @sign(i32 %a, i32 %b) #6 {
entry:
  %cmp = icmp slt i32 %a, 0
  %sub = sub nsw i32 0, %a
  %cond = select i1 %cmp, i32 %sub, i32 %a
  %cmp1 = icmp sgt i32 %b, -1
  %sub2 = sub nsw i32 0, %cond
  %retval.0 = select i1 %cmp1, i32 %cond, i32 %sub2
  ret i32 %retval.0
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{i64 0, i64 4, metadata !3, i64 4, i64 4, metadata !3, i64 8, i64 4, metadata !3, i64 12, i64 4, metadata !3, i64 16, i64 4, metadata !3, i64 20, i64 4, metadata !3}
!6 = metadata !{metadata !"long", metadata !1}
