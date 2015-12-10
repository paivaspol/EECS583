; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/explicit_gop.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
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
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@input = external global %struct.InputParameters*
@gop_structure = common global %struct.GOP_DATA* null, align 8
@.str1 = private unnamed_addr constant [31 x i8] c"create_pyramid:curGOPLeveldist\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"init_gop_structure: gop_structure\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [84 x i8] c"Slice Type invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str5 = private unnamed_addr constant [71 x i8] c"Invalid Frame Order value. Frame position needs to be in [0,%d] range.\00", align 1
@.str6 = private unnamed_addr constant [72 x i8] c"Frame Order value %d in frame %d already used for enhancement frame %d.\00", align 1
@.str7 = private unnamed_addr constant [83 x i8] c"Slice Type needs to be followed by Display Order. Please check configuration file.\00", align 1
@.str8 = private unnamed_addr constant [87 x i8] c"Reference_IDC invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@.str9 = private unnamed_addr constant [51 x i8] c"Invalid QP value. Please check configuration file.\00", align 1
@.str10 = private unnamed_addr constant [75 x i8] c"Reference_IDC needs to be followed by QP. Please check configuration file.\00", align 1
@.str11 = private unnamed_addr constant [92 x i8] c"Total number of frames in Enhancement GOP need to be fewer or equal to FrameSkip parameter.\00", align 1
@.str12 = private unnamed_addr constant [65 x i8] c"ExplicitPyramidFormat is empty. Please check configuration file.\00", align 1
@img = external global %struct.ImageParameters*
@start_frame_no_in_this_IGOP = external global i32
@log2_max_frame_num_minus4 = common global i32 0, align 4
@start_tr_in_this_IGOP = external global i32
@dpb = external global %struct.decoded_picture_buffer
@.str13 = private unnamed_addr constant [35 x i8] c"poc_based_ref_management: tmp_drpm\00", align 1
@.str14 = private unnamed_addr constant [36 x i8] c"poc_based_ref_management: tmp_drpm2\00", align 1
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@img4Y_tmp = common global i32** null, align 8
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i32 0, align 4
@me_time = common global i32 0, align 4
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@wbp_weight = common global i32**** null, align 8
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@imgY_org_top = common global i16** null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@imgUV_org_bot = common global i16*** null, align 8
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@direct_ref_idx = common global i16*** null, align 8
@direct_pdir = common global i16** null, align 8
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
@intras = common global i32 0, align 4
@Iframe_ctr = common global i32 0, align 4
@Pframe_ctr = common global i32 0, align 4
@Bframe_ctr = common global i32 0, align 4
@frame_no = common global i32 0, align 4
@nextP_tr_fld = common global i32 0, align 4
@nextP_tr_frm = common global i32 0, align 4
@tot_time = common global i32 0, align 4
@resTrans_R = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_G = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_B = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resR = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resG = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resB = common global [16 x [16 x i32]] zeroinitializer, align 16
@mprRGB = common global [3 x [16 x [16 x i32]]] zeroinitializer, align 16
@dc_level = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@dc_level_temp = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block_temp = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@b8_ipredmode8x8 = common global [4 x [4 x i32]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common global [16 x i32] zeroinitializer, align 16
@rdopt = common global %struct.RD_DATA* null, align 8
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common global %struct.__sFILE* null, align 8
@p_log = common global %struct.__sFILE* null, align 8
@p_trace = common global %struct.__sFILE* null, align 8
@p_in = common global i32 0, align 4
@p_dec = common global i32 0, align 4
@glob_remapping_of_pic_nums_idc_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_remapping_of_pic_nums_idc_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l1 = common global [20 x i32] zeroinitializer, align 16
@Bytes_After_Header = common global i32 0, align 4
@rpc_bytes_to_go = common global i32 0, align 4
@rpc_bits_to_go = common global i32 0, align 4

; Function Attrs: nounwind optsize ssp uwtable
define void @create_pyramid() #0 {
  %1 = load %struct.InputParameters** @input, align 8, !dbg !654, !tbaa !655
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 34, !dbg !659
  %3 = load i32* %2, align 4, !dbg !659, !tbaa !660
  %4 = sdiv i32 %3, 2, !dbg !664
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !44, metadata !665), !dbg !666
  %5 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 55, !dbg !667
  %6 = load i32* %5, align 4, !dbg !667, !tbaa !668
  %7 = icmp eq i32 %6, 1, !dbg !669
  br i1 %7, label %.preheader, label %.preheader6, !dbg !670

.preheader6:                                      ; preds = %0
  %8 = icmp sgt i32 %3, 2, !dbg !671
  br i1 %8, label %.lr.ph23, label %.loopexit42, !dbg !672

.preheader:                                       ; preds = %0
  %9 = icmp sgt i32 %3, 0, !dbg !673
  br i1 %9, label %.lr.ph, label %.loopexit, !dbg !677

.lr.ph:                                           ; preds = %.preheader
  %10 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !678, !tbaa !655
  %11 = sext i32 %3 to i64, !dbg !677
  %12 = sext i32 %4 to i64, !dbg !677
  br label %13, !dbg !677

; <label>:13                                      ; preds = %.lr.ph, %24
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ]
  %14 = icmp slt i64 %indvars.iv, %12, !dbg !682
  %15 = getelementptr inbounds %struct.GOP_DATA* %10, i64 %indvars.iv, i32 0, !dbg !683
  store i32 1, i32* %15, align 4, !dbg !684, !tbaa !685
  br i1 %14, label %16, label %20, !dbg !687

; <label>:16                                      ; preds = %13
  %17 = trunc i64 %indvars.iv to i32, !dbg !688
  %18 = shl nsw i32 %17, 1, !dbg !688
  %19 = or i32 %18, 1, !dbg !689
  br label %24, !dbg !690

; <label>:20                                      ; preds = %13
  %21 = sub nsw i64 %indvars.iv, %12, !dbg !691
  %22 = trunc i64 %21 to i32, !dbg !693
  %23 = shl nsw i32 %22, 1, !dbg !693
  br label %24

; <label>:24                                      ; preds = %16, %20
  %.sink36 = phi i32 [ %19, %16 ], [ %23, %20 ]
  %.sink35 = phi i32 [ 0, %16 ], [ 1, %20 ]
  %.sink = phi i32 [ 2, %16 ], [ 0, %20 ]
  %25 = getelementptr inbounds %struct.GOP_DATA* %10, i64 %indvars.iv, i32 1, !dbg !694
  store i32 %.sink36, i32* %25, align 4
  %26 = getelementptr inbounds %struct.GOP_DATA* %10, i64 %indvars.iv, i32 4, !dbg !695
  store i32 %.sink35, i32* %26, align 4
  %27 = getelementptr inbounds %struct.GOP_DATA* %10, i64 %indvars.iv, i32 2, !dbg !696
  store i32 %.sink, i32* %27, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !677
  %28 = icmp slt i64 %indvars.iv.next, %11, !dbg !673
  br i1 %28, label %13, label %.loopexit, !dbg !677

.lr.ph23:                                         ; preds = %.preheader6, %.lr.ph23
  %GOPlevels.022 = phi i32 [ %30, %.lr.ph23 ], [ 0, %.preheader6 ]
  %Bframes.021 = phi i32 [ %29, %.lr.ph23 ], [ %3, %.preheader6 ]
  %29 = sdiv i32 %Bframes.021, 2, !dbg !697
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !48, metadata !665), !dbg !699
  %30 = add nuw nsw i32 %GOPlevels.022, 1, !dbg !700
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !45, metadata !665), !dbg !701
  %31 = icmp sgt i32 %Bframes.021, 5, !dbg !671
  br i1 %31, label %.lr.ph23, label %.loopexit42, !dbg !672

.loopexit42:                                      ; preds = %.lr.ph23, %.preheader6
  %GOPlevels.0.lcssa = phi i32 [ 0, %.preheader6 ], [ %30, %.lr.ph23 ]
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !51, metadata !665), !dbg !702
  %32 = add nsw i32 %GOPlevels.0.lcssa, 1, !dbg !703
  %33 = sext i32 %32 to i64, !dbg !705
  %34 = shl nsw i64 %33, 2, !dbg !706
  tail call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !49, metadata !665), !dbg !707
  %35 = tail call i8* @malloc(i64 %34) #5, !dbg !708
  %36 = bitcast i8* %35 to i32*, !dbg !710
  tail call void @llvm.dbg.value(metadata i32* %36, i64 0, metadata !50, metadata !665), !dbg !711
  %37 = icmp eq i8* %35, null, !dbg !712
  br i1 %37, label %38, label %.preheader5, !dbg !713

; <label>:38                                      ; preds = %.loopexit42
  tail call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !714
  br label %.preheader5, !dbg !714

.preheader5:                                      ; preds = %38, %.loopexit42
  %39 = load %struct.InputParameters** @input, align 8, !dbg !715, !tbaa !655
  %40 = getelementptr inbounds %struct.InputParameters* %39, i64 0, i32 34, !dbg !718
  %41 = load i32* %40, align 4, !dbg !718, !tbaa !660
  %42 = icmp sgt i32 %41, 0, !dbg !719
  br i1 %42, label %.lr.ph20, label %.preheader4, !dbg !720

.lr.ph20:                                         ; preds = %.preheader5
  %43 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !721, !tbaa !655
  %44 = sext i32 %41 to i64, !dbg !720
  br label %46, !dbg !720

.preheader4:                                      ; preds = %46, %.preheader5
  %45 = sext i32 %GOPlevels.0.lcssa to i64
  br i1 %8, label %.lr.ph17, label %._crit_edge18, !dbg !723

; <label>:46                                      ; preds = %.lr.ph20, %46
  %indvars.iv33 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next34, %46 ]
  %47 = getelementptr inbounds %struct.GOP_DATA* %43, i64 %indvars.iv33, i32 1, !dbg !724
  store i32 0, i32* %47, align 4, !dbg !725, !tbaa !726
  %48 = getelementptr inbounds %struct.GOP_DATA* %43, i64 %indvars.iv33, i32 0, !dbg !727
  store i32 1, i32* %48, align 4, !dbg !728, !tbaa !685
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !dbg !720
  %49 = icmp slt i64 %indvars.iv.next34, %44, !dbg !719
  br i1 %49, label %46, label %.preheader4, !dbg !720

.lr.ph17:                                         ; preds = %.preheader4, %.lr.ph17
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %.lr.ph17 ], [ %45, %.preheader4 ]
  %prvlevelrefs.016 = phi i32 [ %50, %.lr.ph17 ], [ %3, %.preheader4 ]
  %50 = sdiv i32 %prvlevelrefs.016, 2, !dbg !729
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !53, metadata !665), !dbg !731
  %51 = srem i32 %50, 2, !dbg !732
  %52 = add nsw i32 %51, %50, !dbg !733
  %53 = sub nsw i64 %45, %indvars.iv31, !dbg !734
  %54 = getelementptr inbounds i32* %36, i64 %53, !dbg !735
  store i32 %52, i32* %54, align 4, !dbg !736, !tbaa !737
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !52, metadata !665), !dbg !738
  %indvars.iv.next32 = add i64 %indvars.iv31, -1, !dbg !723
  %55 = icmp sgt i32 %prvlevelrefs.016, 5, !dbg !739
  br i1 %55, label %.lr.ph17, label %._crit_edge18, !dbg !723

._crit_edge18:                                    ; preds = %.lr.ph17, %.preheader4
  %56 = phi i32 [ %3, %.preheader4 ], [ %50, %.lr.ph17 ]
  %57 = srem i32 %56, 2, !dbg !740
  %58 = add nsw i32 %57, %56, !dbg !741
  %59 = getelementptr inbounds i32* %36, i64 %45, !dbg !742
  store i32 %58, i32* %59, align 4, !dbg !743, !tbaa !737
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !43, metadata !665), !dbg !744
  %60 = icmp sgt i32 %56, 0, !dbg !745
  br i1 %60, label %.lr.ph13, label %69, !dbg !748

.lr.ph13:                                         ; preds = %._crit_edge18
  %61 = load i32* %36, align 4, !dbg !749, !tbaa !737
  %62 = add nsw i32 %61, -1, !dbg !751
  br label %63, !dbg !748

; <label>:63                                      ; preds = %.lr.ph13, %63
  %j.011 = phi i32 [ 0, %.lr.ph13 ], [ %64, %63 ]
  %64 = add nuw nsw i32 %j.011, 1, !dbg !752
  %65 = mul nsw i32 %61, %64, !dbg !753
  %66 = add nsw i32 %65, -1, !dbg !754
  %67 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !755, !tbaa !655
  tail call void @gop_pyramid(i32 %GOPlevels.0.lcssa, i32 %66, i32 %62, %struct.GOP_DATA* %67) #6, !dbg !756
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !43, metadata !665), !dbg !744
  %68 = icmp slt i32 %64, %56, !dbg !745
  br i1 %68, label %63, label %._crit_edge14, !dbg !748

._crit_edge14:                                    ; preds = %63
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !757, !tbaa !655
  %.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 34
  %.pre37 = load i32* %.phi.trans.insert, align 4, !dbg !758, !tbaa !660
  br label %69, !dbg !748

; <label>:69                                      ; preds = %._crit_edge14, %._crit_edge18
  %70 = phi i32 [ %.pre37, %._crit_edge14 ], [ %41, %._crit_edge18 ]
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !43, metadata !665), !dbg !744
  %71 = icmp sgt i32 %70, 0, !dbg !759
  br i1 %71, label %.preheader2.lr.ph, label %.loopexit, !dbg !760

.preheader2.lr.ph:                                ; preds = %69
  %72 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !761, !tbaa !655
  br label %.preheader2, !dbg !760

.preheader2:                                      ; preds = %.preheader2.lr.ph, %._crit_edge
  %indvars.iv29.in = phi i32 [ %70, %.preheader2.lr.ph ], [ %indvars.iv29, %._crit_edge ]
  %j.110 = phi i32 [ %70, %.preheader2.lr.ph ], [ %97, %._crit_edge ]
  %indvars.iv29 = add i32 %indvars.iv29.in, -1, !dbg !760
  %73 = icmp sgt i32 %j.110, 1, !dbg !763
  br i1 %73, label %.lr.ph9, label %.loopexit, !dbg !764

.lr.ph9:                                          ; preds = %.preheader2
  %.phi.trans.insert38 = getelementptr inbounds %struct.GOP_DATA* %72, i64 0, i32 4
  %.pre39 = load i32* %.phi.trans.insert38, align 4, !dbg !765, !tbaa !766
  br label %74, !dbg !764

; <label>:74                                      ; preds = %95, %.lr.ph9
  %75 = phi i32 [ %.pre39, %.lr.ph9 ], [ %96, %95 ], !dbg !767
  %indvars.iv27 = phi i64 [ 1, %.lr.ph9 ], [ %indvars.iv.next28, %95 ]
  %76 = getelementptr inbounds %struct.GOP_DATA* %72, i64 %indvars.iv27, i32 4, !dbg !767
  %77 = load i32* %76, align 4, !dbg !767, !tbaa !766
  %78 = add nsw i64 %indvars.iv27, -1, !dbg !768
  %79 = getelementptr inbounds %struct.GOP_DATA* %72, i64 %78, i32 4, !dbg !765
  %80 = icmp sgt i32 %77, %75, !dbg !769
  br i1 %80, label %81, label %95, !dbg !770

; <label>:81                                      ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !55, metadata !665), !dbg !771
  %82 = getelementptr inbounds %struct.GOP_DATA* %72, i64 %indvars.iv27, i32 0, !dbg !772
  %83 = bitcast i32* %82 to <4 x i32>*, !dbg !772
  %84 = load <4 x i32>* %83, align 4, !dbg !772, !tbaa !737
  %85 = load i32* %79, align 4, !dbg !774, !tbaa !766
  tail call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !55, metadata !665), !dbg !771
  store i32 %77, i32* %79, align 4, !dbg !775, !tbaa !766
  store i32 %85, i32* %76, align 4, !dbg !776, !tbaa !766
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !55, metadata !665), !dbg !771
  %86 = getelementptr inbounds %struct.GOP_DATA* %72, i64 %78, i32 0, !dbg !777
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !55, metadata !665), !dbg !771
  %87 = bitcast i32* %86 to <4 x i32>*, !dbg !777
  %88 = load <4 x i32>* %87, align 4, !dbg !777, !tbaa !737
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !55, metadata !665), !dbg !771
  %89 = bitcast i32* %86 to <4 x i32>*, !dbg !778
  store <4 x i32> %84, <4 x i32>* %89, align 4, !dbg !778, !tbaa !737
  %90 = bitcast i32* %82 to <4 x i32>*, !dbg !779
  store <4 x i32> %88, <4 x i32>* %90, align 4, !dbg !779, !tbaa !737
  %91 = getelementptr inbounds %struct.GOP_DATA* %72, i64 %78, i32 5, !dbg !780
  %92 = load i32* %91, align 4, !dbg !780, !tbaa !781
  tail call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !55, metadata !665), !dbg !771
  %93 = getelementptr inbounds %struct.GOP_DATA* %72, i64 %indvars.iv27, i32 5, !dbg !782
  %94 = load i32* %93, align 4, !dbg !782, !tbaa !781
  store i32 %94, i32* %91, align 4, !dbg !783, !tbaa !781
  store i32 %92, i32* %93, align 4, !dbg !784, !tbaa !781
  br label %95, !dbg !785

; <label>:95                                      ; preds = %74, %81
  %96 = phi i32 [ %77, %74 ], [ %85, %81 ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !dbg !764
  %lftr.wideiv = trunc i64 %indvars.iv27 to i32, !dbg !764
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv29, !dbg !764
  br i1 %exitcond, label %._crit_edge, label %74, !dbg !764

._crit_edge:                                      ; preds = %95
  %97 = add nsw i32 %j.110, -1, !dbg !786
  tail call void @llvm.dbg.value(metadata i32 %97, i64 0, metadata !43, metadata !665), !dbg !744
  br i1 %73, label %.preheader2, label %.loopexit, !dbg !760

.loopexit:                                        ; preds = %.preheader2, %._crit_edge, %24, %69, %.preheader
  ret void, !dbg !787
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @gop_pyramid(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure) #0 {
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !76, metadata !665), !dbg !788
  tail call void @llvm.dbg.value(metadata i32 %frm_no, i64 0, metadata !77, metadata !665), !dbg !789
  tail call void @llvm.dbg.value(metadata i32 %frames, i64 0, metadata !78, metadata !665), !dbg !790
  tail call void @llvm.dbg.value(metadata %struct.GOP_DATA* %pyramid_structure, i64 0, metadata !79, metadata !665), !dbg !791
  %1 = icmp eq i32 %level, 0, !dbg !792
  %2 = icmp sgt i32 %frm_no, -1, !dbg !794
  br i1 %1, label %tailrecurse._crit_edge, label %.lr.ph, !dbg !797

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %0
  %.lcssa = phi i1 [ %2, %0 ], [ %35, %tailrecurse ]
  %frm_no.tr.lcssa = phi i32 [ %frm_no, %0 ], [ %33, %tailrecurse ]
  br i1 %.lcssa, label %3, label %36, !dbg !798

; <label>:3                                       ; preds = %tailrecurse._crit_edge
  %4 = load %struct.InputParameters** @input, align 8, !dbg !799, !tbaa !655
  %5 = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 34, !dbg !800
  %6 = load i32* %5, align 4, !dbg !800, !tbaa !660
  %7 = icmp sgt i32 %6, %frm_no.tr.lcssa, !dbg !801
  br i1 %7, label %8, label %36, !dbg !802

; <label>:8                                       ; preds = %3
  %9 = sext i32 %frm_no.tr.lcssa to i64, !dbg !803
  %10 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %9, i32 1, !dbg !804
  %11 = load i32* %10, align 4, !dbg !804, !tbaa !726
  %12 = icmp eq i32 %11, 0, !dbg !805
  br i1 %12, label %13, label %36, !dbg !806

; <label>:13                                      ; preds = %8
  %14 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %9, i32 0, !dbg !807
  store i32 1, i32* %14, align 4, !dbg !809, !tbaa !685
  store i32 %frm_no.tr.lcssa, i32* %10, align 4, !dbg !810, !tbaa !726
  %15 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %9, i32 4, !dbg !811
  store i32 0, i32* %15, align 4, !dbg !812, !tbaa !766
  %16 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %9, i32 2, !dbg !813
  store i32 0, i32* %16, align 4, !dbg !814, !tbaa !815
  br label %36, !dbg !816

.lr.ph:                                           ; preds = %0, %tailrecurse
  %17 = phi i1 [ %35, %tailrecurse ], [ %2, %0 ]
  %frames.tr3 = phi i32 [ %31, %tailrecurse ], [ %frames, %0 ]
  %frm_no.tr2 = phi i32 [ %33, %tailrecurse ], [ %frm_no, %0 ]
  %level.tr1 = phi i32 [ %29, %tailrecurse ], [ %level, %0 ]
  br i1 %17, label %18, label %tailrecurse, !dbg !817

; <label>:18                                      ; preds = %.lr.ph
  %19 = load %struct.InputParameters** @input, align 8, !dbg !820, !tbaa !655
  %20 = getelementptr inbounds %struct.InputParameters* %19, i64 0, i32 34, !dbg !821
  %21 = load i32* %20, align 4, !dbg !821, !tbaa !660
  %22 = icmp sgt i32 %21, %frm_no.tr2, !dbg !822
  br i1 %22, label %23, label %tailrecurse, !dbg !823

; <label>:23                                      ; preds = %18
  %24 = sext i32 %frm_no.tr2 to i64, !dbg !824
  %25 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %24, i32 0, !dbg !826
  store i32 1, i32* %25, align 4, !dbg !827, !tbaa !685
  %26 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %24, i32 1, !dbg !828
  store i32 %frm_no.tr2, i32* %26, align 4, !dbg !829, !tbaa !726
  %27 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %24, i32 4, !dbg !830
  store i32 %level.tr1, i32* %27, align 4, !dbg !831, !tbaa !766
  %28 = getelementptr inbounds %struct.GOP_DATA* %pyramid_structure, i64 %24, i32 2, !dbg !832
  store i32 2, i32* %28, align 4, !dbg !833, !tbaa !815
  br label %tailrecurse, !dbg !834

tailrecurse:                                      ; preds = %23, %18, %.lr.ph
  %29 = add nsw i32 %level.tr1, -1, !dbg !835
  %30 = add nsw i32 %frames.tr3, 1, !dbg !836
  %31 = sdiv i32 %30, 2, !dbg !837
  %32 = sub nsw i32 %frm_no.tr2, %31, !dbg !838
  tail call void @gop_pyramid(i32 %29, i32 %32, i32 %31, %struct.GOP_DATA* %pyramid_structure) #6, !dbg !839
  %33 = add nsw i32 %31, %frm_no.tr2, !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !76, metadata !665), !dbg !788
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !77, metadata !665), !dbg !789
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !78, metadata !665), !dbg !790
  tail call void @llvm.dbg.value(metadata %struct.GOP_DATA* %pyramid_structure, i64 0, metadata !79, metadata !665), !dbg !791
  %34 = icmp eq i32 %29, 0, !dbg !792
  %35 = icmp sgt i32 %33, -1, !dbg !794
  br i1 %34, label %tailrecurse._crit_edge, label %.lr.ph, !dbg !797

; <label>:36                                      ; preds = %tailrecurse._crit_edge, %3, %8, %13
  ret void, !dbg !841
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_gop_structure() #0 {
  %1 = load %struct.InputParameters** @input, align 8, !dbg !842, !tbaa !655
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 55, !dbg !843
  %3 = load i32* %2, align 4, !dbg !843, !tbaa !668
  %4 = icmp eq i32 %3, 3, !dbg !844
  %5 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 34, !dbg !845
  %6 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 5, !dbg !846
  %.in = select i1 %4, i32* %6, i32* %5, !dbg !842
  %7 = load i32* %.in, align 4, !dbg !842
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !82, metadata !665), !dbg !847
  %8 = icmp slt i32 %7, 10, !dbg !848
  %9 = sext i32 %7 to i64, !dbg !848
  %10 = select i1 %8, i64 10, i64 %9, !dbg !848
  %11 = tail call i8* @calloc(i64 %10, i64 24) #5, !dbg !849
  store i8* %11, i8** bitcast (%struct.GOP_DATA** @gop_structure to i8**), align 8, !dbg !850, !tbaa !655
  %12 = icmp eq i8* %11, null, !dbg !851
  br i1 %12, label %13, label %14, !dbg !853

; <label>:13                                      ; preds = %0
  tail call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !854
  br label %14, !dbg !854

; <label>:14                                      ; preds = %13, %0
  ret void, !dbg !855
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_gop_structure() #0 {
  %1 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !856, !tbaa !655
  %2 = icmp eq %struct.GOP_DATA* %1, null, !dbg !856
  br i1 %2, label %5, label %3, !dbg !858

; <label>:3                                       ; preds = %0
  %4 = bitcast %struct.GOP_DATA* %1 to i8*, !dbg !859
  tail call void @free(i8* %4) #6, !dbg !860
  br label %5, !dbg !860

; <label>:5                                       ; preds = %0, %3
  ret void, !dbg !861
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @interpret_gop_structure() #0 {
  %qp = alloca i32, align 4
  %display_no = alloca i32, align 4
  %1 = load %struct.InputParameters** @input, align 8, !dbg !862, !tbaa !655
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 56, i64 0, !dbg !862
  %3 = tail call i64 @strlen(i8* %2) #5, !dbg !863
  %4 = trunc i64 %3 to i32, !dbg !863
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !87, metadata !665), !dbg !864
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !665), !dbg !865
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !92, metadata !665), !dbg !866
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !665), !dbg !867
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !94, metadata !665), !dbg !868
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !95, metadata !665), !dbg !869
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !96, metadata !665), !dbg !870
  %5 = icmp sgt i32 %4, 0, !dbg !871
  br i1 %5, label %.lr.ph24, label %118, !dbg !873

.lr.ph24:                                         ; preds = %0
  %6 = add nsw i32 %4, -2
  br label %7, !dbg !874

; <label>:7                                       ; preds = %.lr.ph24, %.loopexit
  %coded_frame.023 = phi i32 [ 0, %.lr.ph24 ], [ %coded_frame.1, %.loopexit ]
  %qp_read.022 = phi i32 [ 0, %.lr.ph24 ], [ %qp_read.1, %.loopexit ]
  %stored_read.021 = phi i32 [ 0, %.lr.ph24 ], [ %stored_read.1, %.loopexit ]
  %order_read.020 = phi i32 [ 0, %.lr.ph24 ], [ %order_read.1, %.loopexit ]
  %slice_read.019 = phi i32 [ 0, %.lr.ph24 ], [ %slice_read.1, %.loopexit ]
  %i.018 = phi i32 [ 0, %.lr.ph24 ], [ %116, %.loopexit ]
  %8 = icmp eq i32 %slice_read.019, 0, !dbg !877
  br i1 %8, label %9, label %29, !dbg !881

; <label>:9                                       ; preds = %7
  %10 = sext i32 %i.018 to i64, !dbg !882
  %11 = load %struct.InputParameters** @input, align 8, !dbg !882, !tbaa !655
  %12 = getelementptr inbounds %struct.InputParameters* %11, i64 0, i32 56, i64 %10, !dbg !882
  %13 = load i8* %12, align 1, !dbg !882, !tbaa !884
  %14 = sext i8 %13 to i32, !dbg !882
  switch i32 %14, label %27 [
    i32 80, label %15
    i32 112, label %15
    i32 66, label %19
    i32 98, label %19
    i32 73, label %23
    i32 105, label %23
  ], !dbg !885

; <label>:15                                      ; preds = %9, %9
  %16 = sext i32 %coded_frame.023 to i64, !dbg !886
  %17 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !886, !tbaa !655
  %18 = getelementptr inbounds %struct.GOP_DATA* %17, i64 %16, i32 0, !dbg !888
  store i32 0, i32* %18, align 4, !dbg !889, !tbaa !685
  br label %.loopexit, !dbg !890

; <label>:19                                      ; preds = %9, %9
  %20 = sext i32 %coded_frame.023 to i64, !dbg !891
  %21 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !891, !tbaa !655
  %22 = getelementptr inbounds %struct.GOP_DATA* %21, i64 %20, i32 0, !dbg !892
  store i32 1, i32* %22, align 4, !dbg !893, !tbaa !685
  br label %.loopexit, !dbg !894

; <label>:23                                      ; preds = %9, %9
  %24 = sext i32 %coded_frame.023 to i64, !dbg !895
  %25 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !895, !tbaa !655
  %26 = getelementptr inbounds %struct.GOP_DATA* %25, i64 %24, i32 0, !dbg !896
  store i32 2, i32* %26, align 4, !dbg !897, !tbaa !685
  br label %.loopexit, !dbg !898

; <label>:27                                      ; preds = %9
  %28 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([84 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !899
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5, !dbg !900
  br label %.loopexit, !dbg !901

; <label>:29                                      ; preds = %7
  switch i32 %order_read.020, label %.loopexit [
    i32 0, label %30
    i32 1, label %60
  ], !dbg !902

; <label>:30                                      ; preds = %29
  %31 = load %struct.InputParameters** @input, align 8, !dbg !904, !tbaa !655
  %32 = sext i32 %i.018 to i64, !dbg !908
  %33 = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 56, i64 %32, !dbg !908
  %34 = load i8* %33, align 1, !dbg !909, !tbaa !884
  %35 = sext i8 %34 to i32, !dbg !910
  %isdigittmp10 = add nsw i32 %35, -48, !dbg !911
  %isdigit11 = icmp ult i32 %isdigittmp10, 10, !dbg !911
  br i1 %isdigit11, label %36, label %58, !dbg !912

; <label>:36                                      ; preds = %30
  call void @llvm.dbg.value(metadata i32* %display_no, i64 0, metadata !91, metadata !665), !dbg !913
  %37 = call i32 (i8*, i8*, ...)* @sscanf(i8* %33, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* %display_no) #5, !dbg !914
  call void @llvm.dbg.value(metadata i32* %display_no, i64 0, metadata !91, metadata !665), !dbg !913
  %38 = load i32* %display_no, align 4, !dbg !916, !tbaa !737
  %39 = sext i32 %coded_frame.023 to i64, !dbg !917
  %40 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !917, !tbaa !655
  %41 = getelementptr inbounds %struct.GOP_DATA* %40, i64 %39, i32 1, !dbg !918
  store i32 %38, i32* %41, align 4, !dbg !919, !tbaa !726
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !93, metadata !665), !dbg !867
  call void @llvm.dbg.value(metadata i32* %display_no, i64 0, metadata !91, metadata !665), !dbg !913
  %42 = load i32* %display_no, align 4, !dbg !920, !tbaa !737
  %43 = icmp sgt i32 %42, -1, !dbg !922
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !923, !tbaa !655
  %.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 5
  %.pre25 = load i32* %.phi.trans.insert, align 4, !dbg !923, !tbaa !925
  %44 = icmp slt i32 %42, %.pre25, !dbg !926
  %or.cond29 = and i1 %43, %44, !dbg !927
  br i1 %or.cond29, label %.preheader, label %._crit_edge, !dbg !927

._crit_edge:                                      ; preds = %36
  %45 = add nsw i32 %.pre25, -1, !dbg !923
  %46 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([71 x i8]* @.str5, i64 0, i64 0), i32 %45) #5, !dbg !923
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5, !dbg !928
  br label %.preheader, !dbg !929

.preheader:                                       ; preds = %36, %._crit_edge
  %47 = icmp sgt i32 %coded_frame.023, 0, !dbg !930
  br i1 %47, label %.lr.ph, label %.loopexit, !dbg !933

.lr.ph:                                           ; preds = %.preheader
  %48 = add i32 %coded_frame.023, -1, !dbg !933
  br label %49, !dbg !933

; <label>:49                                      ; preds = %._crit_edge26, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge26 ]
  %50 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !934, !tbaa !655
  %51 = getelementptr inbounds %struct.GOP_DATA* %50, i64 %indvars.iv, i32 1, !dbg !937
  %52 = load i32* %51, align 4, !dbg !937, !tbaa !726
  call void @llvm.dbg.value(metadata i32* %display_no, i64 0, metadata !91, metadata !665), !dbg !913
  %53 = load i32* %display_no, align 4, !dbg !938, !tbaa !737
  %54 = icmp eq i32 %52, %53, !dbg !939
  %55 = trunc i64 %indvars.iv to i32, !dbg !940
  br i1 %54, label %56, label %._crit_edge26, !dbg !942

; <label>:56                                      ; preds = %49
  %57 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([72 x i8]* @.str6, i64 0, i64 0), i32 %52, i32 %coded_frame.023, i32 %55) #5, !dbg !940
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5, !dbg !943
  br label %._crit_edge26, !dbg !944

._crit_edge26:                                    ; preds = %49, %56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !933
  %exitcond = icmp eq i32 %55, %48, !dbg !933
  br i1 %exitcond, label %.loopexit, label %49, !dbg !933

; <label>:58                                      ; preds = %30
  %59 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([83 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !945
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5, !dbg !947
  br label %.loopexit

; <label>:60                                      ; preds = %29
  %61 = icmp eq i32 %stored_read.021, 0, !dbg !948
  br i1 %61, label %62, label %79, !dbg !952

; <label>:62                                      ; preds = %60
  %63 = load %struct.InputParameters** @input, align 8, !dbg !953, !tbaa !655
  %64 = sext i32 %i.018 to i64, !dbg !954
  %65 = getelementptr inbounds %struct.InputParameters* %63, i64 0, i32 56, i64 %64, !dbg !954
  %66 = load i8* %65, align 1, !dbg !955, !tbaa !884
  %67 = sext i8 %66 to i32, !dbg !956
  %isdigittmp8 = add nsw i32 %67, -48, !dbg !957
  %isdigit9 = icmp ult i32 %isdigittmp8, 10, !dbg !957
  br i1 %isdigit9, label %.loopexit, label %68, !dbg !958

; <label>:68                                      ; preds = %62
  switch i32 %67, label %77 [
    i32 69, label %69
    i32 101, label %69
    i32 82, label %73
    i32 114, label %73
  ], !dbg !959

; <label>:69                                      ; preds = %68, %68
  %70 = sext i32 %coded_frame.023 to i64, !dbg !961
  %71 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !961, !tbaa !655
  %72 = getelementptr inbounds %struct.GOP_DATA* %71, i64 %70, i32 2, !dbg !963
  store i32 0, i32* %72, align 4, !dbg !964, !tbaa !815
  br label %.loopexit, !dbg !965

; <label>:73                                      ; preds = %68, %68
  %74 = sext i32 %coded_frame.023 to i64, !dbg !966
  %75 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !966, !tbaa !655
  %76 = getelementptr inbounds %struct.GOP_DATA* %75, i64 %74, i32 2, !dbg !967
  store i32 2, i32* %76, align 4, !dbg !968, !tbaa !815
  br label %.loopexit, !dbg !969

; <label>:77                                      ; preds = %68
  %78 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([87 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !970
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5, !dbg !971
  br label %.loopexit, !dbg !972

; <label>:79                                      ; preds = %60
  %80 = icmp eq i32 %stored_read.021, 1, !dbg !973
  %81 = icmp eq i32 %qp_read.022, 0, !dbg !975
  %or.cond = and i1 %80, %81, !dbg !976
  br i1 %or.cond, label %82, label %.thread, !dbg !976

; <label>:82                                      ; preds = %79
  %83 = load %struct.InputParameters** @input, align 8, !dbg !977, !tbaa !655
  %84 = sext i32 %i.018 to i64, !dbg !980
  %85 = getelementptr inbounds %struct.InputParameters* %83, i64 0, i32 56, i64 %84, !dbg !980
  %86 = load i8* %85, align 1, !dbg !981, !tbaa !884
  %87 = sext i8 %86 to i32, !dbg !982
  %isdigittmp6 = add nsw i32 %87, -48, !dbg !983
  %isdigit7 = icmp ult i32 %isdigittmp6, 10, !dbg !983
  br i1 %isdigit7, label %88, label %98, !dbg !984

; <label>:88                                      ; preds = %82
  call void @llvm.dbg.value(metadata i32* %qp, i64 0, metadata !90, metadata !665), !dbg !985
  %89 = call i32 (i8*, i8*, ...)* @sscanf(i8* %85, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* %qp) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32* %qp, i64 0, metadata !90, metadata !665), !dbg !985
  %90 = load i32* %qp, align 4, !dbg !988, !tbaa !737
  %91 = sext i32 %coded_frame.023 to i64, !dbg !989
  %92 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !989, !tbaa !655
  %93 = getelementptr inbounds %struct.GOP_DATA* %92, i64 %91, i32 3, !dbg !990
  store i32 %90, i32* %93, align 4, !dbg !991, !tbaa !992
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !95, metadata !665), !dbg !869
  call void @llvm.dbg.value(metadata i32* %qp, i64 0, metadata !90, metadata !665), !dbg !985
  %94 = load i32* %qp, align 4, !dbg !993, !tbaa !737
  %95 = icmp ugt i32 %94, 51, !dbg !995
  br i1 %95, label %96, label %.loopexit, !dbg !995

; <label>:96                                      ; preds = %88
  %97 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([51 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !996
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5, !dbg !998
  br label %.loopexit, !dbg !999

; <label>:98                                      ; preds = %82
  %99 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([75 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !1000
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5, !dbg !1002
  br label %.loopexit

.thread:                                          ; preds = %79
  %100 = icmp eq i32 %qp_read.022, 1, !dbg !1003
  %or.cond5 = and i1 %100, %80, !dbg !1005
  br i1 %or.cond5, label %101, label %.loopexit, !dbg !1005

; <label>:101                                     ; preds = %.thread
  %102 = load %struct.InputParameters** @input, align 8, !dbg !1006, !tbaa !655
  %103 = sext i32 %i.018 to i64, !dbg !1007
  %104 = getelementptr inbounds %struct.InputParameters* %102, i64 0, i32 56, i64 %103, !dbg !1007
  %105 = load i8* %104, align 1, !dbg !1008, !tbaa !884
  %106 = sext i8 %105 to i32, !dbg !1009
  %isdigittmp = add nsw i32 %106, -48, !dbg !1010
  %isdigit = icmp ugt i32 %isdigittmp, 9, !dbg !1010
  %107 = icmp slt i32 %i.018, %6, !dbg !1011
  %or.cond13 = and i1 %107, %isdigit, !dbg !1012
  br i1 %or.cond13, label %108, label %.loopexit, !dbg !1012

; <label>:108                                     ; preds = %101
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !94, metadata !665), !dbg !868
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !95, metadata !665), !dbg !869
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !665), !dbg !867
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !92, metadata !665), !dbg !866
  %109 = add nsw i32 %i.018, -1, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %109, i64 0, metadata !88, metadata !665), !dbg !865
  %110 = add nsw i32 %coded_frame.023, 1, !dbg !1015
  call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !96, metadata !665), !dbg !870
  %111 = getelementptr inbounds %struct.InputParameters* %102, i64 0, i32 5, !dbg !1016
  %112 = load i32* %111, align 4, !dbg !1016, !tbaa !925
  %113 = icmp slt i32 %110, %112, !dbg !1018
  br i1 %113, label %.loopexit, label %114, !dbg !1019

; <label>:114                                     ; preds = %108
  %115 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([92 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !1020
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5, !dbg !1022
  br label %.loopexit, !dbg !1023

.loopexit:                                        ; preds = %._crit_edge26, %62, %.preheader, %101, %69, %73, %77, %29, %15, %19, %23, %27, %108, %96, %88, %98, %114, %.thread, %58
  %i.1 = phi i32 [ %i.018, %58 ], [ %i.018, %96 ], [ %i.018, %88 ], [ %i.018, %98 ], [ %i.018, %101 ], [ %109, %114 ], [ %109, %108 ], [ %i.018, %.thread ], [ %i.018, %27 ], [ %i.018, %23 ], [ %i.018, %19 ], [ %i.018, %15 ], [ %i.018, %29 ], [ %i.018, %77 ], [ %i.018, %73 ], [ %i.018, %69 ], [ %i.018, %.preheader ], [ %i.018, %62 ], [ %i.018, %._crit_edge26 ]
  %slice_read.1 = phi i32 [ %slice_read.019, %58 ], [ %slice_read.019, %96 ], [ %slice_read.019, %88 ], [ %slice_read.019, %98 ], [ %slice_read.019, %101 ], [ 0, %114 ], [ 0, %108 ], [ %slice_read.019, %.thread ], [ 1, %27 ], [ 1, %23 ], [ 1, %19 ], [ 1, %15 ], [ %slice_read.019, %29 ], [ %slice_read.019, %77 ], [ %slice_read.019, %73 ], [ %slice_read.019, %69 ], [ %slice_read.019, %.preheader ], [ %slice_read.019, %62 ], [ %slice_read.019, %._crit_edge26 ]
  %order_read.1 = phi i32 [ 0, %58 ], [ 1, %96 ], [ 1, %88 ], [ 1, %98 ], [ 1, %101 ], [ 0, %114 ], [ 0, %108 ], [ 1, %.thread ], [ %order_read.020, %27 ], [ %order_read.020, %23 ], [ %order_read.020, %19 ], [ %order_read.020, %15 ], [ %order_read.020, %29 ], [ 1, %77 ], [ 1, %73 ], [ 1, %69 ], [ 1, %.preheader ], [ 1, %62 ], [ 1, %._crit_edge26 ]
  %stored_read.1 = phi i32 [ %stored_read.021, %58 ], [ 1, %96 ], [ 1, %88 ], [ 1, %98 ], [ %stored_read.021, %101 ], [ 0, %114 ], [ 0, %108 ], [ %stored_read.021, %.thread ], [ %stored_read.021, %27 ], [ %stored_read.021, %23 ], [ %stored_read.021, %19 ], [ %stored_read.021, %15 ], [ %stored_read.021, %29 ], [ 1, %77 ], [ 1, %73 ], [ 1, %69 ], [ %stored_read.021, %.preheader ], [ 0, %62 ], [ %stored_read.021, %._crit_edge26 ]
  %qp_read.1 = phi i32 [ %qp_read.022, %58 ], [ 1, %96 ], [ 1, %88 ], [ 0, %98 ], [ 1, %101 ], [ 0, %114 ], [ 0, %108 ], [ %qp_read.022, %.thread ], [ %qp_read.022, %27 ], [ %qp_read.022, %23 ], [ %qp_read.022, %19 ], [ %qp_read.022, %15 ], [ %qp_read.022, %29 ], [ %qp_read.022, %77 ], [ %qp_read.022, %73 ], [ %qp_read.022, %69 ], [ %qp_read.022, %.preheader ], [ %qp_read.022, %62 ], [ %qp_read.022, %._crit_edge26 ]
  %coded_frame.1 = phi i32 [ %coded_frame.023, %58 ], [ %coded_frame.023, %96 ], [ %coded_frame.023, %88 ], [ %coded_frame.023, %98 ], [ %coded_frame.023, %101 ], [ %110, %114 ], [ %110, %108 ], [ %coded_frame.023, %.thread ], [ %coded_frame.023, %27 ], [ %coded_frame.023, %23 ], [ %coded_frame.023, %19 ], [ %coded_frame.023, %15 ], [ %coded_frame.023, %29 ], [ %coded_frame.023, %77 ], [ %coded_frame.023, %73 ], [ %coded_frame.023, %69 ], [ %coded_frame.023, %.preheader ], [ %coded_frame.023, %62 ], [ %coded_frame.023, %._crit_edge26 ]
  %116 = add nsw i32 %i.1, 1, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !88, metadata !665), !dbg !865
  %117 = icmp slt i32 %116, %4, !dbg !1025
  br i1 %117, label %7, label %.loopexit16, !dbg !874

; <label>:118                                     ; preds = %0
  %119 = tail call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i32 0, i64 300, i8* getelementptr inbounds ([65 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !1026
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #5, !dbg !1028
  br label %.loopexit16

.loopexit16:                                      ; preds = %.loopexit, %118
  %coded_frame.2 = phi i32 [ 0, %118 ], [ %coded_frame.1, %.loopexit ]
  %120 = add nsw i32 %coded_frame.2, 1, !dbg !1029
  %121 = load %struct.InputParameters** @input, align 8, !dbg !1030, !tbaa !655
  %122 = getelementptr inbounds %struct.InputParameters* %121, i64 0, i32 34, !dbg !1031
  store i32 %120, i32* %122, align 4, !dbg !1032, !tbaa !660
  ret void, !dbg !1033
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @encode_enhancement_layer() #0 {
  %1 = load %struct.InputParameters** @input, align 8, !dbg !1034, !tbaa !655
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 34, !dbg !1036
  %3 = load i32* %2, align 4, !dbg !1036, !tbaa !660
  %4 = icmp eq i32 %3, 0, !dbg !1037
  %.pre15 = load %struct.ImageParameters** @img, align 8, !dbg !1038, !tbaa !655
  br i1 %4, label %.loopexit, label %5, !dbg !1039

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.ImageParameters* %.pre15, i64 0, i32 0, !dbg !1040
  %7 = load i32* %6, align 4, !dbg !1040, !tbaa !1041
  %8 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1040, !tbaa !737
  %9 = icmp sgt i32 %7, %8, !dbg !1044
  br i1 %9, label %10, label %.loopexit, !dbg !1045

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.ImageParameters* %.pre15, i64 0, i32 6, !dbg !1046
  store i32 1, i32* %11, align 4, !dbg !1048, !tbaa !1049
  %12 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 99, !dbg !1050
  %13 = load i32* %12, align 4, !dbg !1050, !tbaa !1052
  %14 = getelementptr inbounds %struct.ImageParameters* %.pre15, i64 0, i32 86, !dbg !1053
  %not. = icmp ne i32 %13, 0, !dbg !1054
  %. = zext i1 %not. to i32, !dbg !1054
  store i32 %., i32* %14, align 4, !dbg !1055, !tbaa !1056
  %15 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 54, !dbg !1057
  %16 = load i32* %15, align 4, !dbg !1057, !tbaa !1059
  %17 = icmp eq i32 %16, 0, !dbg !1060
  %18 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 55, !dbg !1061
  %19 = load i32* %18, align 4, !dbg !1061, !tbaa !668
  br i1 %17, label %20, label %34, !dbg !1062

; <label>:20                                      ; preds = %10
  %21 = icmp eq i32 %19, 0, !dbg !1063
  br i1 %21, label %.thread, label %.thread20, !dbg !1064

.thread20:                                        ; preds = %20
  %22 = getelementptr inbounds %struct.ImageParameters* %.pre15, i64 0, i32 113, !dbg !1065
  store i32 0, i32* %22, align 4, !dbg !1066, !tbaa !1067
  %23 = getelementptr inbounds %struct.ImageParameters* %.pre15, i64 0, i32 67, !dbg !1068
  store i32 1, i32* %23, align 4, !dbg !1072, !tbaa !1073
  br label %.preheader4, !dbg !1074

.thread:                                          ; preds = %20
  %24 = getelementptr inbounds %struct.ImageParameters* %.pre15, i64 0, i32 105, !dbg !1075
  %25 = load i32* %24, align 4, !dbg !1077, !tbaa !1078
  %26 = add i32 %25, 1, !dbg !1077
  store i32 %26, i32* %24, align 4, !dbg !1077, !tbaa !1078
  %27 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !1079, !tbaa !737
  %28 = add i32 %27, 4, !dbg !1080
  %29 = shl nuw i32 1, %28, !dbg !1081
  %30 = add i32 %29, -1, !dbg !1082
  %31 = and i32 %30, %26, !dbg !1082
  store i32 %31, i32* %24, align 4, !dbg !1082, !tbaa !1078
  %32 = getelementptr inbounds %struct.ImageParameters* %.pre15, i64 0, i32 113, !dbg !1065
  store i32 0, i32* %32, align 4, !dbg !1066, !tbaa !1067
  %33 = getelementptr inbounds %struct.ImageParameters* %.pre15, i64 0, i32 67, !dbg !1068
  store i32 1, i32* %33, align 4, !dbg !1072, !tbaa !1073
  br label %.preheader, !dbg !1074

; <label>:34                                      ; preds = %10
  %35 = getelementptr inbounds %struct.ImageParameters* %.pre15, i64 0, i32 113, !dbg !1065
  store i32 0, i32* %35, align 4, !dbg !1066, !tbaa !1067
  %36 = icmp eq i32 %19, 0, !dbg !1083
  %37 = getelementptr inbounds %struct.ImageParameters* %.pre15, i64 0, i32 67, !dbg !1068
  store i32 1, i32* %37, align 4, !dbg !1072, !tbaa !1073
  br i1 %36, label %.preheader, label %.preheader4, !dbg !1074

.preheader4:                                      ; preds = %.thread20, %34
  %38 = phi i32* [ %23, %.thread20 ], [ %37, %34 ]
  %39 = icmp slt i32 %3, 1, !dbg !1084
  br i1 %39, label %._crit_edge, label %.lr.ph5, !dbg !1086

.preheader:                                       ; preds = %.thread, %34
  %40 = icmp slt i32 %3, 1, !dbg !1087
  br i1 %40, label %.loopexit, label %.lr.ph, !dbg !1091

.lr.ph5:                                          ; preds = %.preheader4, %174
  %41 = phi i32 [ %181, %174 ], [ %3, %.preheader4 ]
  %42 = phi %struct.InputParameters* [ %175, %174 ], [ %1, %.preheader4 ]
  %43 = phi i32 [ %179, %174 ], [ 1, %.preheader4 ]
  %44 = phi %struct.ImageParameters* [ %176, %174 ], [ %.pre15, %.preheader4 ]
  %45 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 113, !dbg !1092
  store i32 0, i32* %45, align 4, !dbg !1094, !tbaa !1067
  %46 = add nsw i32 %43, -1, !dbg !1095
  %47 = sext i32 %46 to i64, !dbg !1096
  %48 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !1096, !tbaa !655
  %49 = getelementptr inbounds %struct.GOP_DATA* %48, i64 %47, i32 0, !dbg !1097
  %50 = load i32* %49, align 4, !dbg !1097, !tbaa !685
  %51 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 6, !dbg !1098
  store i32 %50, i32* %51, align 4, !dbg !1099, !tbaa !1049
  %52 = getelementptr inbounds %struct.GOP_DATA* %48, i64 %47, i32 2, !dbg !1100
  %53 = load i32* %52, align 4, !dbg !1100, !tbaa !815
  %54 = icmp eq i32 %53, 2, !dbg !1102
  br i1 %54, label %55, label %64, !dbg !1103

; <label>:55                                      ; preds = %.lr.ph5
  store i32 1, i32* %45, align 4, !dbg !1104, !tbaa !1067
  %56 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 105, !dbg !1106
  %57 = load i32* %56, align 4, !dbg !1107, !tbaa !1078
  %58 = add i32 %57, 1, !dbg !1107
  store i32 %58, i32* %56, align 4, !dbg !1107, !tbaa !1078
  %59 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !1108, !tbaa !737
  %60 = add i32 %59, 4, !dbg !1109
  %61 = shl nuw i32 1, %60, !dbg !1110
  %62 = add i32 %61, -1, !dbg !1111
  %63 = and i32 %62, %58, !dbg !1111
  store i32 %63, i32* %56, align 4, !dbg !1111, !tbaa !1078
  br label %64, !dbg !1112

; <label>:64                                      ; preds = %55, %.lr.ph5
  %65 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 5, !dbg !1113
  %66 = load i32* %65, align 4, !dbg !1113, !tbaa !925
  %67 = add nsw i32 %66, 1, !dbg !1114
  %68 = sitofp i32 %67 to double, !dbg !1115
  %69 = sitofp i32 %41 to double, !dbg !1116
  %70 = fadd double %69, 1.000000e+00, !dbg !1117
  %71 = fdiv double %68, %70, !dbg !1118
  %72 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 65, !dbg !1119
  store double %71, double* %72, align 8, !dbg !1120, !tbaa !1121
  %73 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 55, !dbg !1122
  %74 = load i32* %73, align 4, !dbg !1122, !tbaa !668
  %75 = icmp eq i32 %74, 3, !dbg !1124
  %.21 = select i1 %75, double 1.000000e+00, double %71, !dbg !1125
  store double %.21, double* %72, align 8, !dbg !1126, !tbaa !1121
  %.22 = select i1 %75, double 1.000000e+00, double %71, !dbg !1125
  %76 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 31, !dbg !1127
  %77 = load i32* %76, align 4, !dbg !1127, !tbaa !1129
  %78 = icmp eq i32 %77, 0, !dbg !1130
  br i1 %78, label %100, label %79, !dbg !1131

; <label>:79                                      ; preds = %64
  %80 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 32, !dbg !1132
  %81 = load i32* %80, align 4, !dbg !1132, !tbaa !1133
  %82 = icmp eq i32 %81, 0, !dbg !1134
  br i1 %82, label %100, label %83, !dbg !1135

; <label>:83                                      ; preds = %79
  %84 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 0, !dbg !1136
  %85 = load i32* %84, align 4, !dbg !1136, !tbaa !1041
  %86 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1136, !tbaa !737
  %87 = sub nsw i32 %85, %86, !dbg !1136
  %88 = srem i32 %87, %77, !dbg !1137
  %89 = add nsw i32 %88, -1, !dbg !1138
  %90 = mul nsw i32 %67, %89, !dbg !1139
  %91 = getelementptr inbounds %struct.GOP_DATA* %48, i64 %47, i32 1, !dbg !1140
  %92 = load i32* %91, align 4, !dbg !1140, !tbaa !726
  %93 = add nsw i32 %92, 1, !dbg !1141
  %94 = sitofp i32 %93 to double, !dbg !1142
  %95 = fmul double %.22, %94, !dbg !1143
  %96 = fptosi double %95 to i32, !dbg !1144
  %97 = add nsw i32 %96, %90, !dbg !1145
  %98 = shl nsw i32 %97, 1, !dbg !1146
  %99 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 101, !dbg !1147
  store i32 %98, i32* %99, align 4, !dbg !1148, !tbaa !1149
  br label %116, !dbg !1150

; <label>:100                                     ; preds = %79, %64
  %101 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 0, !dbg !1151
  %102 = load i32* %101, align 4, !dbg !1151, !tbaa !1041
  %103 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1151, !tbaa !737
  %104 = add i32 %102, -1, !dbg !1151
  %105 = sub i32 %104, %103, !dbg !1152
  %106 = mul nsw i32 %67, %105, !dbg !1153
  %107 = getelementptr inbounds %struct.GOP_DATA* %48, i64 %47, i32 1, !dbg !1154
  %108 = load i32* %107, align 4, !dbg !1154, !tbaa !726
  %109 = add nsw i32 %108, 1, !dbg !1155
  %110 = sitofp i32 %109 to double, !dbg !1156
  %111 = fmul double %.22, %110, !dbg !1157
  %112 = fptosi double %111 to i32, !dbg !1158
  %113 = add nsw i32 %112, %106, !dbg !1159
  %114 = shl nsw i32 %113, 1, !dbg !1160
  %115 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 101, !dbg !1161
  store i32 %114, i32* %115, align 4, !dbg !1162, !tbaa !1149
  br label %116

; <label>:116                                     ; preds = %100, %83
  %117 = phi i32 [ %102, %100 ], [ %85, %83 ]
  %118 = phi i32 [ %114, %100 ], [ %98, %83 ]
  %119 = icmp eq i32 %43, 1, !dbg !1163
  %120 = load i32* @start_tr_in_this_IGOP, align 4, !dbg !1165, !tbaa !737
  %121 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1166, !tbaa !737
  %122 = sub nsw i32 %117, %121, !dbg !1166
  br i1 %119, label %123, label %126, !dbg !1167

; <label>:123                                     ; preds = %116
  %124 = mul nsw i32 %67, %122, !dbg !1168
  %125 = add nsw i32 %124, %120, !dbg !1169
  br label %140, !dbg !1170

; <label>:126                                     ; preds = %116
  %127 = add nsw i32 %122, -1, !dbg !1171
  %128 = mul nsw i32 %67, %127, !dbg !1172
  %129 = add nsw i32 %128, %120, !dbg !1173
  %130 = fmul double %.22, 2.000000e+00, !dbg !1174
  %131 = add nsw i32 %43, -2, !dbg !1175
  %132 = sext i32 %131 to i64, !dbg !1176
  %133 = getelementptr inbounds %struct.GOP_DATA* %48, i64 %132, i32 1, !dbg !1177
  %134 = load i32* %133, align 4, !dbg !1177, !tbaa !726
  %135 = add nsw i32 %134, 1, !dbg !1178
  %136 = sitofp i32 %135 to double, !dbg !1179
  %137 = fmul double %130, %136, !dbg !1180
  %138 = fptosi double %137 to i32, !dbg !1181
  %139 = add nsw i32 %129, %138, !dbg !1182
  br label %140

; <label>:140                                     ; preds = %126, %123
  %.pn.in = phi i32 [ %139, %126 ], [ %125, %123 ]
  %.pn = shl nsw i32 %.pn.in, 1, !dbg !1183
  %.sink = sub nsw i32 %118, %.pn, !dbg !1184
  %141 = getelementptr inbounds %struct.ImageParameters* %44, i64 0, i32 99, i64 0, !dbg !1185
  store i32 %.sink, i32* %141, align 4
  %142 = load %struct.InputParameters** @input, align 8, !dbg !1186, !tbaa !655
  %143 = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 91, !dbg !1188
  %144 = load i32* %143, align 4, !dbg !1188, !tbaa !1189
  %145 = icmp eq i32 %144, 0, !dbg !1190
  br i1 %145, label %146, label %155, !dbg !1191

; <label>:146                                     ; preds = %140
  %147 = getelementptr inbounds %struct.InputParameters* %142, i64 0, i32 92, !dbg !1192
  %148 = load i32* %147, align 4, !dbg !1192, !tbaa !1193
  %149 = icmp eq i32 %148, 0, !dbg !1194
  br i1 %149, label %150, label %155, !dbg !1195

; <label>:150                                     ; preds = %146
  %151 = load %struct.ImageParameters** @img, align 8, !dbg !1196, !tbaa !655
  %152 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 101, !dbg !1197
  %153 = load i32* %152, align 4, !dbg !1197, !tbaa !1149
  %154 = getelementptr inbounds %struct.ImageParameters* %151, i64 0, i32 102, !dbg !1198
  store i32 %153, i32* %154, align 4, !dbg !1199, !tbaa !1200
  br label %161, !dbg !1201

; <label>:155                                     ; preds = %146, %140
  %156 = load %struct.ImageParameters** @img, align 8, !dbg !1202, !tbaa !655
  %157 = getelementptr inbounds %struct.ImageParameters* %156, i64 0, i32 101, !dbg !1203
  %158 = load i32* %157, align 4, !dbg !1203, !tbaa !1149
  %159 = add nsw i32 %158, 1, !dbg !1204
  %160 = getelementptr inbounds %struct.ImageParameters* %156, i64 0, i32 102, !dbg !1205
  store i32 %159, i32* %160, align 4, !dbg !1206, !tbaa !1200
  br label %161

; <label>:161                                     ; preds = %155, %150
  %162 = phi i32 [ %159, %155 ], [ %153, %150 ]
  %163 = phi i32 [ %158, %155 ], [ %153, %150 ]
  %164 = phi %struct.ImageParameters* [ %156, %155 ], [ %151, %150 ]
  %165 = icmp slt i32 %163, %162, !dbg !1207
  %.1 = select i1 %165, i32 %163, i32 %162, !dbg !1207
  %166 = getelementptr inbounds %struct.ImageParameters* %164, i64 0, i32 103, !dbg !1208
  store i32 %.1, i32* %166, align 4, !dbg !1209, !tbaa !1210
  %167 = getelementptr inbounds %struct.ImageParameters* %164, i64 0, i32 99, i64 1, !dbg !1211
  store i32 0, i32* %167, align 4, !dbg !1212, !tbaa !737
  %168 = tail call i32 (...)* @encode_one_frame() #5, !dbg !1213
  %169 = load %struct.InputParameters** @input, align 8, !dbg !1214, !tbaa !655
  %170 = getelementptr inbounds %struct.InputParameters* %169, i64 0, i32 125, !dbg !1216
  %171 = load i32* %170, align 4, !dbg !1216, !tbaa !1217
  %172 = icmp eq i32 %171, 0, !dbg !1214
  br i1 %172, label %174, label %173, !dbg !1218

; <label>:173                                     ; preds = %161
  tail call void (...)* @report_frame_statistic() #5, !dbg !1219
  %.pre9 = load %struct.InputParameters** @input, align 8, !dbg !1220, !tbaa !655
  br label %174, !dbg !1219

; <label>:174                                     ; preds = %161, %173
  %175 = phi %struct.InputParameters* [ %169, %161 ], [ %.pre9, %173 ]
  %176 = load %struct.ImageParameters** @img, align 8, !dbg !1221, !tbaa !655
  %177 = getelementptr inbounds %struct.ImageParameters* %176, i64 0, i32 67, !dbg !1222
  %178 = load i32* %177, align 4, !dbg !1223, !tbaa !1073
  %179 = add nsw i32 %178, 1, !dbg !1223
  store i32 %179, i32* %177, align 4, !dbg !1223, !tbaa !1073
  %180 = getelementptr inbounds %struct.InputParameters* %175, i64 0, i32 34, !dbg !1224
  %181 = load i32* %180, align 4, !dbg !1224, !tbaa !660
  %182 = icmp slt i32 %178, %181, !dbg !1084
  br i1 %182, label %.lr.ph5, label %._crit_edge, !dbg !1086

._crit_edge:                                      ; preds = %174, %.preheader4
  %183 = phi %struct.ImageParameters* [ %.pre15, %.preheader4 ], [ %176, %174 ]
  %.lcssa = phi i32* [ %38, %.preheader4 ], [ %177, %174 ]
  store i32 0, i32* %.lcssa, align 4, !dbg !1225, !tbaa !1073
  br label %.loopexit, !dbg !1226

.lr.ph:                                           ; preds = %.preheader, %._crit_edge10
  %184 = phi i32 [ %283, %._crit_edge10 ], [ 1, %.preheader ]
  %185 = phi i32 [ %285, %._crit_edge10 ], [ %3, %.preheader ]
  %186 = phi i32 [ %.pre12, %._crit_edge10 ], [ %16, %.preheader ]
  %187 = phi %struct.InputParameters* [ %279, %._crit_edge10 ], [ %1, %.preheader ]
  %188 = phi %struct.ImageParameters* [ %280, %._crit_edge10 ], [ %.pre15, %.preheader ]
  %189 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 113, !dbg !1227
  store i32 0, i32* %189, align 4, !dbg !1229, !tbaa !1067
  %190 = icmp eq i32 %186, 1, !dbg !1230
  br i1 %190, label %191, label %200, !dbg !1232

; <label>:191                                     ; preds = %.lr.ph
  store i32 1, i32* %189, align 4, !dbg !1233, !tbaa !1067
  %192 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 105, !dbg !1235
  %193 = load i32* %192, align 4, !dbg !1236, !tbaa !1078
  %194 = add i32 %193, 1, !dbg !1236
  store i32 %194, i32* %192, align 4, !dbg !1236, !tbaa !1078
  %195 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !1237, !tbaa !737
  %196 = add i32 %195, 4, !dbg !1238
  %197 = shl nuw i32 1, %196, !dbg !1239
  %198 = add i32 %197, -1, !dbg !1240
  %199 = and i32 %198, %194, !dbg !1240
  store i32 %199, i32* %192, align 4, !dbg !1240, !tbaa !1078
  br label %200, !dbg !1241

; <label>:200                                     ; preds = %191, %.lr.ph
  %201 = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 5, !dbg !1242
  %202 = load i32* %201, align 4, !dbg !1242, !tbaa !925
  %203 = add nsw i32 %202, 1, !dbg !1243
  %204 = sitofp i32 %203 to double, !dbg !1244
  %205 = sitofp i32 %185 to double, !dbg !1245
  %206 = fadd double %205, 1.000000e+00, !dbg !1246
  %207 = fdiv double %204, %206, !dbg !1247
  %208 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 65, !dbg !1248
  store double %207, double* %208, align 8, !dbg !1249, !tbaa !1121
  %209 = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 55, !dbg !1250
  %210 = load i32* %209, align 4, !dbg !1250, !tbaa !668
  %211 = icmp eq i32 %210, 3, !dbg !1252
  %.23 = select i1 %211, double 1.000000e+00, double %207, !dbg !1253
  store double %.23, double* %208, align 8, !dbg !1254, !tbaa !1121
  %.24 = select i1 %211, double 1.000000e+00, double %207, !dbg !1253
  %212 = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 31, !dbg !1255
  %213 = load i32* %212, align 4, !dbg !1255, !tbaa !1129
  %214 = icmp eq i32 %213, 0, !dbg !1257
  br i1 %214, label %233, label %215, !dbg !1258

; <label>:215                                     ; preds = %200
  %216 = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 32, !dbg !1259
  %217 = load i32* %216, align 4, !dbg !1259, !tbaa !1133
  %218 = icmp eq i32 %217, 0, !dbg !1260
  br i1 %218, label %233, label %219, !dbg !1261

; <label>:219                                     ; preds = %215
  %220 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 0, !dbg !1262
  %221 = load i32* %220, align 4, !dbg !1262, !tbaa !1041
  %222 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1262, !tbaa !737
  %223 = sub nsw i32 %221, %222, !dbg !1262
  %224 = srem i32 %223, %213, !dbg !1263
  %225 = add nsw i32 %224, -1, !dbg !1264
  %226 = mul nsw i32 %203, %225, !dbg !1265
  %227 = sitofp i32 %184 to double, !dbg !1266
  %228 = fmul double %.24, %227, !dbg !1267
  %229 = fptosi double %228 to i32, !dbg !1268
  %230 = add nsw i32 %229, %226, !dbg !1269
  %231 = shl nsw i32 %230, 1, !dbg !1270
  %232 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 101, !dbg !1271
  store i32 %231, i32* %232, align 4, !dbg !1272, !tbaa !1149
  br label %246, !dbg !1273

; <label>:233                                     ; preds = %215, %200
  %234 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 0, !dbg !1274
  %235 = load i32* %234, align 4, !dbg !1274, !tbaa !1041
  %236 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1274, !tbaa !737
  %237 = add i32 %235, -1, !dbg !1274
  %238 = sub i32 %237, %236, !dbg !1275
  %239 = mul nsw i32 %203, %238, !dbg !1276
  %240 = sitofp i32 %184 to double, !dbg !1277
  %241 = fmul double %.24, %240, !dbg !1278
  %242 = fptosi double %241 to i32, !dbg !1279
  %243 = add nsw i32 %242, %239, !dbg !1280
  %244 = shl nsw i32 %243, 1, !dbg !1281
  %245 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 101, !dbg !1282
  store i32 %244, i32* %245, align 4, !dbg !1283, !tbaa !1149
  br label %246

; <label>:246                                     ; preds = %233, %219
  %247 = phi i32 [ %244, %233 ], [ %231, %219 ]
  %248 = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 91, !dbg !1284
  %249 = load i32* %248, align 4, !dbg !1284, !tbaa !1189
  %250 = icmp eq i32 %249, 0, !dbg !1286
  br i1 %250, label %251, label %257, !dbg !1287

; <label>:251                                     ; preds = %246
  %252 = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 92, !dbg !1288
  %253 = load i32* %252, align 4, !dbg !1288, !tbaa !1193
  %254 = icmp eq i32 %253, 0, !dbg !1289
  br i1 %254, label %255, label %257, !dbg !1290

; <label>:255                                     ; preds = %251
  %256 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 102, !dbg !1291
  store i32 %247, i32* %256, align 4, !dbg !1292, !tbaa !1200
  br label %260, !dbg !1293

; <label>:257                                     ; preds = %251, %246
  %258 = or i32 %247, 1, !dbg !1294
  %259 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 102, !dbg !1295
  store i32 %258, i32* %259, align 4, !dbg !1296, !tbaa !1200
  br label %260

; <label>:260                                     ; preds = %257, %255
  %261 = phi i32 [ %258, %257 ], [ %247, %255 ]
  %262 = icmp slt i32 %247, %261, !dbg !1297
  %.2 = select i1 %262, i32 %247, i32 %261, !dbg !1297
  %263 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 103, !dbg !1298
  store i32 %.2, i32* %263, align 4, !dbg !1299, !tbaa !1210
  %264 = icmp eq i32 %186, 0, !dbg !1300
  br i1 %264, label %265, label %268, !dbg !1302

; <label>:265                                     ; preds = %260
  %266 = shl i32 %184, 1, !dbg !1303
  %267 = add i32 %266, -2, !dbg !1303
  br label %268, !dbg !1305

; <label>:268                                     ; preds = %260, %265
  %.sink7 = phi i32 [ %267, %265 ], [ -2, %260 ]
  %269 = getelementptr inbounds %struct.ImageParameters* %188, i64 0, i32 99, i64 0, !dbg !1306
  store i32 %.sink7, i32* %269, align 4
  %270 = load %struct.ImageParameters** @img, align 8, !dbg !1308, !tbaa !655
  %271 = getelementptr inbounds %struct.ImageParameters* %270, i64 0, i32 99, i64 1, !dbg !1308
  store i32 0, i32* %271, align 4, !dbg !1309, !tbaa !737
  %272 = tail call i32 (...)* @encode_one_frame() #5, !dbg !1310
  %273 = load %struct.InputParameters** @input, align 8, !dbg !1311, !tbaa !655
  %274 = getelementptr inbounds %struct.InputParameters* %273, i64 0, i32 125, !dbg !1313
  %275 = load i32* %274, align 4, !dbg !1313, !tbaa !1217
  %276 = icmp eq i32 %275, 0, !dbg !1311
  br i1 %276, label %278, label %277, !dbg !1314

; <label>:277                                     ; preds = %268
  tail call void (...)* @report_frame_statistic() #5, !dbg !1315
  %.pre13 = load %struct.InputParameters** @input, align 8, !dbg !1316, !tbaa !655
  br label %278, !dbg !1315

; <label>:278                                     ; preds = %268, %277
  %279 = phi %struct.InputParameters* [ %273, %268 ], [ %.pre13, %277 ]
  %280 = load %struct.ImageParameters** @img, align 8, !dbg !1317, !tbaa !655
  %281 = getelementptr inbounds %struct.ImageParameters* %280, i64 0, i32 67, !dbg !1318
  %282 = load i32* %281, align 4, !dbg !1319, !tbaa !1073
  %283 = add nsw i32 %282, 1, !dbg !1319
  store i32 %283, i32* %281, align 4, !dbg !1319, !tbaa !1073
  %284 = getelementptr inbounds %struct.InputParameters* %279, i64 0, i32 34, !dbg !1320
  %285 = load i32* %284, align 4, !dbg !1320, !tbaa !660
  %286 = icmp slt i32 %282, %285, !dbg !1087
  br i1 %286, label %._crit_edge10, label %.loopexit, !dbg !1091

._crit_edge10:                                    ; preds = %278
  %.phi.trans.insert11 = getelementptr inbounds %struct.InputParameters* %279, i64 0, i32 54
  %.pre12 = load i32* %.phi.trans.insert11, align 4, !dbg !1321, !tbaa !1059
  br label %.lr.ph, !dbg !1091

.loopexit:                                        ; preds = %278, %0, %.preheader, %._crit_edge, %5
  %287 = phi %struct.ImageParameters* [ %183, %._crit_edge ], [ %.pre15, %5 ], [ %.pre15, %.preheader ], [ %.pre15, %0 ], [ %280, %278 ]
  %288 = getelementptr inbounds %struct.ImageParameters* %287, i64 0, i32 67, !dbg !1322
  store i32 0, i32* %288, align 4, !dbg !1323, !tbaa !1073
  ret void, !dbg !1324
}

; Function Attrs: optsize
declare i32 @encode_one_frame(...) #2

; Function Attrs: optsize
declare void @report_frame_statistic(...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @poc_based_ref_management(i32 %current_pic_num) #0 {
  tail call void @llvm.dbg.value(metadata i32 %current_pic_num, i64 0, metadata !102, metadata !665), !dbg !1325
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !105, metadata !665), !dbg !1326
  tail call void @llvm.dbg.value(metadata i32 2147483647, i64 0, metadata !106, metadata !665), !dbg !1327
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1328, !tbaa !655
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 117, !dbg !1330
  %3 = load %struct.DecRefPicMarking_s** %2, align 8, !dbg !1330, !tbaa !1331
  %4 = icmp eq %struct.DecRefPicMarking_s* %3, null, !dbg !1332
  br i1 %4, label %5, label %60, !dbg !1333

; <label>:5                                       ; preds = %0
  %6 = load i64* bitcast (i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 5) to i64*), align 8, !dbg !1334
  %7 = trunc i64 %6 to i32, !dbg !1334
  %8 = lshr i64 %6, 32
  %9 = trunc i64 %8 to i32
  %10 = sub i32 0, %9, !dbg !1336
  %11 = icmp eq i32 %7, %10, !dbg !1336
  br i1 %11, label %60, label %.preheader, !dbg !1337

.preheader:                                       ; preds = %5
  %12 = load i32* getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 4), align 4, !dbg !1338, !tbaa !1341
  %13 = icmp eq i32 %12, 0, !dbg !1343
  br i1 %13, label %._crit_edge, label %.lr.ph, !dbg !1344

.lr.ph:                                           ; preds = %.preheader
  %14 = load %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer* @dpb, i64 0, i32 0), align 8, !dbg !1345, !tbaa !1348
  %15 = zext i32 %12 to i64, !dbg !1344
  br label %16, !dbg !1344

; <label>:16                                      ; preds = %.lr.ph, %37
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %37 ]
  %pic_num.02 = phi i32 [ 0, %.lr.ph ], [ %pic_num.1, %37 ]
  %min_poc.01 = phi i32 [ 2147483647, %.lr.ph ], [ %min_poc.1, %37 ]
  %17 = getelementptr inbounds %struct.frame_store** %14, i64 %indvars.iv, !dbg !1349
  %18 = load %struct.frame_store** %17, align 8, !dbg !1349, !tbaa !655
  %19 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 1, !dbg !1350
  %20 = load i32* %19, align 4, !dbg !1350, !tbaa !1351
  %21 = icmp eq i32 %20, 0, !dbg !1349
  br i1 %21, label %37, label %22, !dbg !1353

; <label>:22                                      ; preds = %16
  %23 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 2, !dbg !1354
  %24 = load i32* %23, align 4, !dbg !1354, !tbaa !1355
  %25 = icmp eq i32 %24, 0, !dbg !1356
  br i1 %25, label %26, label %37, !dbg !1357

; <label>:26                                      ; preds = %22
  %27 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 9, !dbg !1358
  %28 = load i32* %27, align 4, !dbg !1358, !tbaa !1359
  %29 = icmp slt i32 %28, %min_poc.01, !dbg !1360
  br i1 %29, label %30, label %37, !dbg !1361

; <label>:30                                      ; preds = %26
  %31 = getelementptr inbounds %struct.frame_store* %18, i64 0, i32 10, !dbg !1362
  %32 = load %struct.storable_picture** %31, align 8, !dbg !1362, !tbaa !1364
  %33 = getelementptr inbounds %struct.storable_picture* %32, i64 0, i32 1, !dbg !1365
  %34 = load i32* %33, align 4, !dbg !1365, !tbaa !1366
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !106, metadata !665), !dbg !1327
  %35 = getelementptr inbounds %struct.storable_picture* %32, i64 0, i32 11, !dbg !1368
  %36 = load i32* %35, align 4, !dbg !1368, !tbaa !1369
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !105, metadata !665), !dbg !1326
  br label %37, !dbg !1370

; <label>:37                                      ; preds = %22, %16, %26, %30
  %min_poc.1 = phi i32 [ %min_poc.01, %22 ], [ %34, %30 ], [ %min_poc.01, %26 ], [ %min_poc.01, %16 ]
  %pic_num.1 = phi i32 [ %pic_num.02, %22 ], [ %36, %30 ], [ %pic_num.02, %26 ], [ %pic_num.02, %16 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1344
  %38 = icmp ult i64 %indvars.iv.next, %15, !dbg !1343
  br i1 %38, label %16, label %._crit_edge, !dbg !1344

._crit_edge:                                      ; preds = %37, %.preheader
  %pic_num.0.lcssa = phi i32 [ 0, %.preheader ], [ %pic_num.1, %37 ]
  %39 = tail call i8* @calloc(i64 1, i64 32) #5, !dbg !1371
  %40 = icmp eq i8* %39, null, !dbg !1373
  br i1 %40, label %41, label %42, !dbg !1374

; <label>:41                                      ; preds = %._crit_edge
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !1375
  br label %42, !dbg !1375

; <label>:42                                      ; preds = %41, %._crit_edge
  %43 = getelementptr inbounds i8* %39, i64 24, !dbg !1376
  %44 = bitcast i8* %43 to %struct.DecRefPicMarking_s**, !dbg !1376
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %44, align 8, !dbg !1377, !tbaa !1378
  %45 = bitcast i8* %39 to i32*, !dbg !1380
  store i32 0, i32* %45, align 4, !dbg !1381, !tbaa !1382
  %46 = tail call i8* @calloc(i64 1, i64 32) #5, !dbg !1383
  %47 = icmp eq i8* %46, null, !dbg !1385
  br i1 %47, label %48, label %49, !dbg !1386

; <label>:48                                      ; preds = %42
  tail call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !1387
  br label %49, !dbg !1387

; <label>:49                                      ; preds = %48, %42
  %50 = getelementptr inbounds i8* %46, i64 24, !dbg !1388
  %51 = bitcast i8* %50 to i8**, !dbg !1389
  store i8* %39, i8** %51, align 8, !dbg !1389, !tbaa !1378
  %52 = bitcast i8* %46 to i32*, !dbg !1390
  store i32 1, i32* %52, align 4, !dbg !1391, !tbaa !1382
  %53 = add i32 %current_pic_num, -1, !dbg !1392
  %54 = sub i32 %53, %pic_num.0.lcssa, !dbg !1393
  %55 = getelementptr inbounds i8* %46, i64 4, !dbg !1394
  %56 = bitcast i8* %55 to i32*, !dbg !1394
  store i32 %54, i32* %56, align 4, !dbg !1395, !tbaa !1396
  %57 = load %struct.ImageParameters** @img, align 8, !dbg !1397, !tbaa !655
  %58 = getelementptr inbounds %struct.ImageParameters* %57, i64 0, i32 117, !dbg !1398
  %59 = bitcast %struct.DecRefPicMarking_s** %58 to i8**, !dbg !1399
  store i8* %46, i8** %59, align 8, !dbg !1399, !tbaa !1331
  br label %60, !dbg !1400

; <label>:60                                      ; preds = %0, %5, %49
  ret void, !dbg !1400
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!650, !651, !652}
!llvm.ident = !{!653}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !21, subprograms: !37, globals: !124, imports: !84)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/explicit_gop.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !11, !16}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 192, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "P_SLICE", value: 0)
!7 = !DIEnumerator(name: "B_SLICE", value: 1)
!8 = !DIEnumerator(name: "I_SLICE", value: 2)
!9 = !DIEnumerator(name: "SP_SLICE", value: 3)
!10 = !DIEnumerator(name: "SI_SLICE", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 111, size: 32, align: 32, elements: !12)
!12 = !{!13, !14, !15}
!13 = !DIEnumerator(name: "FRAME_CODING", value: 0)
!14 = !DIEnumerator(name: "FIELD_CODING", value: 1)
!15 = !DIEnumerator(name: "ADAPTIVE_CODING", value: 2)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 42, size: 32, align: 32, elements: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "FALSE", value: 0)
!20 = !DIEnumerator(name: "TRUE", value: 1)
!21 = !{!22, !23, !24, !25, !26}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !4, line: 324, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !4, line: 316, size: 256, align: 64, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !28, file: !4, line: 318, baseType: !24, size: 32, align: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !28, file: !4, line: 319, baseType: !24, size: 32, align: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !28, file: !4, line: 320, baseType: !24, size: 32, align: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !28, file: !4, line: 321, baseType: !24, size: 32, align: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !28, file: !4, line: 322, baseType: !24, size: 32, align: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !28, file: !4, line: 323, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!37 = !{!38, !62, !80, !83, !85, !97, !98, !109, !115}
!38 = !DISubprogram(name: "create_pyramid", scope: !1, file: !1, line: 32, type: !39, isLocal: false, isDefinition: true, scopeLine: 33, isOptimized: true, function: void ()* @create_pyramid, variables: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{null}
!41 = !{!42, !43, !44, !45, !48, !49, !50, !51, !52, !53, !54, !55}
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !38, file: !1, line: 34, type: !24)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !38, file: !1, line: 34, type: !24)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "centerB", scope: !38, file: !1, line: 35, type: !24)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "GOPlevels", scope: !46, file: !1, line: 61, type: !24)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 60, column: 3)
!47 = distinct !DILexicalBlock(scope: !38, file: !1, line: 37, column: 7)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Bframes", scope: !46, file: !1, line: 62, type: !24)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curGOPLevelfrm", scope: !46, file: !1, line: 63, type: !23)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curGOPLeveldist", scope: !46, file: !1, line: 63, type: !23)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curlevel", scope: !46, file: !1, line: 64, type: !24)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prvlevelrefs", scope: !46, file: !1, line: 65, type: !24)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "levelrefs", scope: !46, file: !1, line: 66, type: !24)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !46, file: !1, line: 67, type: !24)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tempnum", scope: !56, file: !1, line: 110, type: !24)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 109, column: 7)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 108, column: 7)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 108, column: 7)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 107, column: 5)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 106, column: 5)
!61 = distinct !DILexicalBlock(scope: !46, file: !1, line: 106, column: 5)
!62 = !DISubprogram(name: "gop_pyramid", scope: !1, file: !1, line: 153, type: !63, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, %struct.GOP_DATA*)* @gop_pyramid, variables: !75)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !24, !24, !24, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !4, line: 1190, baseType: !67)
!67 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1182, size: 192, align: 32, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !67, file: !4, line: 1184, baseType: !24, size: 32, align: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !67, file: !4, line: 1185, baseType: !24, size: 32, align: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !67, file: !4, line: 1186, baseType: !24, size: 32, align: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !67, file: !4, line: 1187, baseType: !24, size: 32, align: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !67, file: !4, line: 1188, baseType: !24, size: 32, align: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !67, file: !4, line: 1189, baseType: !24, size: 32, align: 32, offset: 160)
!75 = !{!76, !77, !78, !79}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 1, scope: !62, file: !1, line: 153, type: !24)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "frm_no", arg: 2, scope: !62, file: !1, line: 153, type: !24)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "frames", arg: 3, scope: !62, file: !1, line: 153, type: !24)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pyramid_structure", arg: 4, scope: !62, file: !1, line: 153, type: !65)
!80 = !DISubprogram(name: "init_gop_structure", scope: !1, file: !1, line: 190, type: !39, isLocal: false, isDefinition: true, scopeLine: 191, isOptimized: true, function: void ()* @init_gop_structure, variables: !81)
!81 = !{!82}
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max_gopsize", scope: !80, file: !1, line: 192, type: !24)
!83 = !DISubprogram(name: "clear_gop_structure", scope: !1, file: !1, line: 206, type: !39, isLocal: false, isDefinition: true, scopeLine: 207, isOptimized: true, function: void ()* @clear_gop_structure, variables: !84)
!84 = !{}
!85 = !DISubprogram(name: "interpret_gop_structure", scope: !1, file: !1, line: 219, type: !39, isLocal: false, isDefinition: true, scopeLine: 220, isOptimized: true, function: void ()* @interpret_gop_structure, variables: !86)
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nLength", scope: !85, file: !1, line: 222, type: !24)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !85, file: !1, line: 223, type: !24)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !85, file: !1, line: 223, type: !24)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "qp", scope: !85, file: !1, line: 223, type: !24)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "display_no", scope: !85, file: !1, line: 223, type: !24)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slice_read", scope: !85, file: !1, line: 224, type: !24)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order_read", scope: !85, file: !1, line: 224, type: !24)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stored_read", scope: !85, file: !1, line: 224, type: !24)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "qp_read", scope: !85, file: !1, line: 224, type: !24)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coded_frame", scope: !85, file: !1, line: 225, type: !24)
!97 = !DISubprogram(name: "encode_enhancement_layer", scope: !1, file: !1, line: 363, type: !39, isLocal: false, isDefinition: true, scopeLine: 364, isOptimized: true, function: void ()* @encode_enhancement_layer, variables: !84)
!98 = !DISubprogram(name: "poc_based_ref_management", scope: !1, file: !1, line: 482, type: !99, isLocal: false, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @poc_based_ref_management, variables: !101)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !24}
!101 = !{!102, !103, !105, !106, !107, !108}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "current_pic_num", arg: 1, scope: !98, file: !1, line: 482, type: !24)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !98, file: !1, line: 484, type: !104)
!104 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pic_num", scope: !98, file: !1, line: 484, type: !104)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min_poc", scope: !98, file: !1, line: 486, type: !24)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_drpm", scope: !98, file: !1, line: 487, type: !26)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_drpm2", scope: !98, file: !1, line: 487, type: !26)
!109 = !DISubprogram(name: "isdigit", scope: !110, file: !110, line: 237, type: !111, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, variables: !113)
!110 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!111 = !DISubroutineType(types: !112)
!112 = !{!24, !24}
!113 = !{!114}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !109, file: !110, line: 237, type: !24)
!115 = !DISubprogram(name: "__isctype", scope: !110, file: !110, line: 164, type: !116, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, variables: !121)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !118, !120}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !119, line: 70, baseType: !24)
!119 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!120 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!121 = !{!122, !123}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !115, file: !110, line: 164, type: !118)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !115, file: !110, line: 164, type: !120)
!124 = !{!125, !318, !319, !320, !321, !322, !325, !327, !329, !330, !331, !332, !333, !372, !467, !468, !469, !471, !472, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !491, !492, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !508, !512, !513, !514, !515, !516, !517, !520, !523, !524, !525, !526, !529, !532, !533, !574, !575, !576, !577, !578, !634, !635, !636, !637, !638, !642, !643, !644, !645, !646, !647, !648, !649}
!125 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !4, line: 558, type: !126, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !4, line: 484, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 475, size: 6592, align: 64, elements: !129)
!129 = !{!130, !131, !132, !313, !314, !316, !317}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !128, file: !4, line: 477, baseType: !24, size: 32, align: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !128, file: !4, line: 478, baseType: !24, size: 32, align: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !128, file: !4, line: 479, baseType: !133, size: 6400, align: 64, offset: 64)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 6400, align: 64, elements: !311)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !4, line: 471, baseType: !136)
!136 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 443, size: 1216, align: 64, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !221, !259, !286, !295, !296, !297, !298, !299, !300, !301, !302, !303, !308}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !136, file: !4, line: 445, baseType: !24, size: 32, align: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !136, file: !4, line: 446, baseType: !24, size: 32, align: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !136, file: !4, line: 447, baseType: !24, size: 32, align: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !136, file: !4, line: 448, baseType: !24, size: 32, align: 32, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !136, file: !4, line: 449, baseType: !24, size: 32, align: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !136, file: !4, line: 450, baseType: !24, size: 32, align: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !136, file: !4, line: 451, baseType: !145, size: 64, align: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !4, line: 440, baseType: !147)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !4, line: 430, size: 960, align: 64, elements: !148)
!148 = !{!149, !169, !193}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !147, file: !4, line: 433, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !4, line: 427, baseType: !152)
!152 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 411, size: 384, align: 64, elements: !153)
!153 = !{!154, !155, !156, !160, !161, !162, !163, !164, !165, !166, !168}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !152, file: !4, line: 413, baseType: !24, size: 32, align: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !152, file: !4, line: 414, baseType: !24, size: 32, align: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !152, file: !4, line: 415, baseType: !157, size: 8, align: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !158, line: 30, baseType: !159)
!158 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!159 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !152, file: !4, line: 416, baseType: !24, size: 32, align: 32, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !152, file: !4, line: 417, baseType: !24, size: 32, align: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !152, file: !4, line: 418, baseType: !157, size: 8, align: 8, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !152, file: !4, line: 420, baseType: !157, size: 8, align: 8, offset: 168)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !152, file: !4, line: 421, baseType: !24, size: 32, align: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !152, file: !4, line: 422, baseType: !24, size: 32, align: 32, offset: 224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !152, file: !4, line: 424, baseType: !167, size: 64, align: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !152, file: !4, line: 425, baseType: !24, size: 32, align: 32, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !147, file: !4, line: 434, baseType: !170, size: 832, align: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !4, line: 226, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 207, size: 832, align: 64, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !171, file: !4, line: 209, baseType: !104, size: 32, align: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !171, file: !4, line: 209, baseType: !104, size: 32, align: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !171, file: !4, line: 210, baseType: !104, size: 32, align: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !171, file: !4, line: 211, baseType: !104, size: 32, align: 32, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !171, file: !4, line: 212, baseType: !104, size: 32, align: 32, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !171, file: !4, line: 213, baseType: !167, size: 64, align: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !171, file: !4, line: 214, baseType: !23, size: 64, align: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !171, file: !4, line: 217, baseType: !104, size: 32, align: 32, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !171, file: !4, line: 217, baseType: !104, size: 32, align: 32, offset: 352)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !171, file: !4, line: 218, baseType: !104, size: 32, align: 32, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !171, file: !4, line: 219, baseType: !104, size: 32, align: 32, offset: 416)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !171, file: !4, line: 220, baseType: !104, size: 32, align: 32, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !171, file: !4, line: 221, baseType: !167, size: 64, align: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !171, file: !4, line: 222, baseType: !23, size: 64, align: 64, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !171, file: !4, line: 223, baseType: !24, size: 32, align: 32, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !171, file: !4, line: 223, baseType: !24, size: 32, align: 32, offset: 672)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !171, file: !4, line: 224, baseType: !24, size: 32, align: 32, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !171, file: !4, line: 224, baseType: !24, size: 32, align: 32, offset: 736)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !171, file: !4, line: 225, baseType: !24, size: 32, align: 32, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !171, file: !4, line: 225, baseType: !24, size: 32, align: 32, offset: 800)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !147, file: !4, line: 436, baseType: !194, size: 64, align: 64, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!24, !197, !220}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !4, line: 348, baseType: !199)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !4, line: 327, size: 384, align: 64, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !213}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !199, file: !4, line: 329, baseType: !24, size: 32, align: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !199, file: !4, line: 330, baseType: !24, size: 32, align: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !199, file: !4, line: 331, baseType: !24, size: 32, align: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !199, file: !4, line: 332, baseType: !24, size: 32, align: 32, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !199, file: !4, line: 333, baseType: !24, size: 32, align: 32, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !199, file: !4, line: 334, baseType: !104, size: 32, align: 32, offset: 160)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !199, file: !4, line: 335, baseType: !24, size: 32, align: 32, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !199, file: !4, line: 336, baseType: !24, size: 32, align: 32, offset: 224)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !199, file: !4, line: 344, baseType: !210, size: 64, align: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !24, !24, !23, !23}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !199, file: !4, line: 346, baseType: !214, size: 64, align: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !217, !218}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !4, line: 228, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !136, file: !4, line: 452, baseType: !222, size: 64, align: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !4, line: 268, baseType: !224)
!224 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 258, size: 12032, align: 64, elements: !225)
!225 = !{!226, !238, !243, !247, !251, !255, !256}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !224, file: !4, line: 260, baseType: !227, size: 4224, align: 64)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 4224, align: 64, elements: !235)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !4, line: 238, baseType: !229)
!229 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 231, size: 128, align: 64, elements: !230)
!230 = !{!231, !233, !234}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !229, file: !4, line: 233, baseType: !232, size: 16, align: 16)
!232 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !229, file: !4, line: 234, baseType: !159, size: 8, align: 8, offset: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !229, file: !4, line: 236, baseType: !120, size: 64, align: 64, offset: 64)
!235 = !{!236, !237}
!236 = !DISubrange(count: 3)
!237 = !DISubrange(count: 11)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !224, file: !4, line: 261, baseType: !239, size: 2304, align: 64, offset: 4224)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 2304, align: 64, elements: !240)
!240 = !{!241, !242}
!241 = !DISubrange(count: 2)
!242 = !DISubrange(count: 9)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !224, file: !4, line: 262, baseType: !244, size: 2560, align: 64, offset: 6528)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 2560, align: 64, elements: !245)
!245 = !{!241, !246}
!246 = !DISubrange(count: 10)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !224, file: !4, line: 263, baseType: !248, size: 1536, align: 64, offset: 9088)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 1536, align: 64, elements: !249)
!249 = !{!241, !250}
!250 = !DISubrange(count: 6)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !224, file: !4, line: 264, baseType: !252, size: 512, align: 64, offset: 10624)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 512, align: 64, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 4)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !224, file: !4, line: 265, baseType: !252, size: 512, align: 64, offset: 11136)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !224, file: !4, line: 266, baseType: !257, size: 384, align: 64, offset: 11648)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 384, align: 64, elements: !258)
!258 = !{!236}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !136, file: !4, line: 453, baseType: !260, size: 64, align: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !4, line: 293, baseType: !262)
!262 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 281, size: 97024, align: 64, elements: !263)
!263 = !{!264, !267, !268, !271, !274, !278, !279, !283, !284, !285}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !262, file: !4, line: 283, baseType: !265, size: 256, align: 64)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 256, align: 64, elements: !266)
!266 = !{!241}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !262, file: !4, line: 284, baseType: !252, size: 512, align: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !262, file: !4, line: 285, baseType: !269, size: 1536, align: 64, offset: 768)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 1536, align: 64, elements: !270)
!270 = !{!236, !254}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !262, file: !4, line: 286, baseType: !272, size: 5120, align: 64, offset: 2304)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 5120, align: 64, elements: !273)
!273 = !{!246, !254}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !262, file: !4, line: 287, baseType: !275, size: 19200, align: 64, offset: 7424)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 19200, align: 64, elements: !276)
!276 = !{!246, !277}
!277 = !DISubrange(count: 15)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !262, file: !4, line: 288, baseType: !275, size: 19200, align: 64, offset: 26624)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !262, file: !4, line: 289, baseType: !280, size: 6400, align: 64, offset: 45824)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 6400, align: 64, elements: !281)
!281 = !{!246, !282}
!282 = !DISubrange(count: 5)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !262, file: !4, line: 290, baseType: !280, size: 6400, align: 64, offset: 52224)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !262, file: !4, line: 291, baseType: !275, size: 19200, align: 64, offset: 58624)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !262, file: !4, line: 292, baseType: !275, size: 19200, align: 64, offset: 77824)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !136, file: !4, line: 456, baseType: !287, size: 64, align: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !4, line: 313, baseType: !289)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !4, line: 308, size: 128, align: 64, elements: !290)
!290 = !{!291, !292, !293}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !289, file: !4, line: 310, baseType: !24, size: 32, align: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !289, file: !4, line: 311, baseType: !24, size: 32, align: 32, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !289, file: !4, line: 312, baseType: !294, size: 64, align: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !136, file: !4, line: 458, baseType: !24, size: 32, align: 32, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !136, file: !4, line: 459, baseType: !23, size: 64, align: 64, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !136, file: !4, line: 460, baseType: !23, size: 64, align: 64, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !136, file: !4, line: 461, baseType: !23, size: 64, align: 64, offset: 640)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !136, file: !4, line: 462, baseType: !24, size: 32, align: 32, offset: 704)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !136, file: !4, line: 463, baseType: !23, size: 64, align: 64, offset: 768)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !136, file: !4, line: 464, baseType: !23, size: 64, align: 64, offset: 832)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !136, file: !4, line: 465, baseType: !23, size: 64, align: 64, offset: 896)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !136, file: !4, line: 467, baseType: !304, size: 64, align: 64, offset: 960)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !24}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !17, line: 45, baseType: !16)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !136, file: !4, line: 469, baseType: !309, size: 192, align: 32, offset: 1024)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, align: 32, elements: !310)
!310 = !{!236, !241}
!311 = !{!312}
!312 = !DISubrange(count: 100)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !128, file: !4, line: 480, baseType: !24, size: 32, align: 32, offset: 6464)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !128, file: !4, line: 481, baseType: !315, size: 32, align: 32, offset: 6496)
!315 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !128, file: !4, line: 482, baseType: !315, size: 32, align: 32, offset: 6528)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !128, file: !4, line: 483, baseType: !315, size: 32, align: 32, offset: 6560)
!318 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !4, line: 559, type: !126, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!319 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !4, line: 560, type: !126, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!320 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !4, line: 561, type: !126, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!321 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !4, line: 562, type: !126, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!322 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !4, line: 565, type: !323, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!325 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !4, line: 566, type: !326, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!327 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !4, line: 567, type: !328, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!329 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !4, line: 569, type: !104, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!330 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !4, line: 570, type: !104, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!331 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !4, line: 572, type: !24, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!332 = !DIGlobalVariable(name: "me_time", scope: !0, file: !4, line: 572, type: !24, isLocal: false, isDefinition: true, variable: i32* @me_time)
!333 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !4, line: 573, type: !334, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !17, line: 145, baseType: !336)
!336 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 103, size: 1920, align: 64, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !348, !349, !350, !351, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !336, file: !17, line: 105, baseType: !307, size: 32, align: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !336, file: !17, line: 106, baseType: !104, size: 32, align: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !336, file: !17, line: 107, baseType: !104, size: 32, align: 32, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !336, file: !17, line: 108, baseType: !307, size: 32, align: 32, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !336, file: !17, line: 110, baseType: !307, size: 32, align: 32, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !336, file: !17, line: 111, baseType: !307, size: 32, align: 32, offset: 160)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !336, file: !17, line: 112, baseType: !345, size: 256, align: 32, offset: 192)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, align: 32, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 8)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !336, file: !17, line: 115, baseType: !307, size: 32, align: 32, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !336, file: !17, line: 116, baseType: !104, size: 32, align: 32, offset: 480)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !336, file: !17, line: 117, baseType: !104, size: 32, align: 32, offset: 512)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !336, file: !17, line: 119, baseType: !352, size: 256, align: 32, offset: 544)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, align: 32, elements: !346)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !336, file: !17, line: 121, baseType: !352, size: 256, align: 32, offset: 800)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !336, file: !17, line: 122, baseType: !352, size: 256, align: 32, offset: 1056)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !336, file: !17, line: 124, baseType: !307, size: 32, align: 32, offset: 1312)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !336, file: !17, line: 125, baseType: !104, size: 32, align: 32, offset: 1344)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !336, file: !17, line: 127, baseType: !104, size: 32, align: 32, offset: 1376)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !336, file: !17, line: 128, baseType: !167, size: 64, align: 64, offset: 1408)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !336, file: !17, line: 130, baseType: !24, size: 32, align: 32, offset: 1472)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !336, file: !17, line: 131, baseType: !24, size: 32, align: 32, offset: 1504)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !336, file: !17, line: 132, baseType: !307, size: 32, align: 32, offset: 1536)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !336, file: !17, line: 133, baseType: !104, size: 32, align: 32, offset: 1568)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !336, file: !17, line: 134, baseType: !24, size: 32, align: 32, offset: 1600)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !336, file: !17, line: 135, baseType: !24, size: 32, align: 32, offset: 1632)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !336, file: !17, line: 136, baseType: !24, size: 32, align: 32, offset: 1664)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !336, file: !17, line: 138, baseType: !24, size: 32, align: 32, offset: 1696)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !336, file: !17, line: 139, baseType: !24, size: 32, align: 32, offset: 1728)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !336, file: !17, line: 141, baseType: !307, size: 32, align: 32, offset: 1760)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !336, file: !17, line: 142, baseType: !307, size: 32, align: 32, offset: 1792)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !336, file: !17, line: 143, baseType: !307, size: 32, align: 32, offset: 1824)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !336, file: !17, line: 144, baseType: !307, size: 32, align: 32, offset: 1856)
!372 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !4, line: 574, type: !373, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !17, line: 193, baseType: !375)
!375 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 149, size: 17056, align: 32, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !375, file: !17, line: 151, baseType: !307, size: 32, align: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !375, file: !17, line: 153, baseType: !104, size: 32, align: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !375, file: !17, line: 154, baseType: !307, size: 32, align: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !375, file: !17, line: 155, baseType: !307, size: 32, align: 32, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !375, file: !17, line: 156, baseType: !307, size: 32, align: 32, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !375, file: !17, line: 157, baseType: !307, size: 32, align: 32, offset: 160)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !375, file: !17, line: 158, baseType: !104, size: 32, align: 32, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !375, file: !17, line: 159, baseType: !104, size: 32, align: 32, offset: 224)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !375, file: !17, line: 160, baseType: !104, size: 32, align: 32, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !375, file: !17, line: 162, baseType: !307, size: 32, align: 32, offset: 288)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !375, file: !17, line: 163, baseType: !345, size: 256, align: 32, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !375, file: !17, line: 165, baseType: !104, size: 32, align: 32, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !375, file: !17, line: 166, baseType: !104, size: 32, align: 32, offset: 608)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !375, file: !17, line: 167, baseType: !104, size: 32, align: 32, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !375, file: !17, line: 168, baseType: !104, size: 32, align: 32, offset: 672)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !375, file: !17, line: 170, baseType: !104, size: 32, align: 32, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !375, file: !17, line: 172, baseType: !307, size: 32, align: 32, offset: 736)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !375, file: !17, line: 173, baseType: !24, size: 32, align: 32, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !375, file: !17, line: 174, baseType: !24, size: 32, align: 32, offset: 800)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !375, file: !17, line: 175, baseType: !104, size: 32, align: 32, offset: 832)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !375, file: !17, line: 177, baseType: !398, size: 8192, align: 32, offset: 864)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8192, align: 32, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !375, file: !17, line: 178, baseType: !104, size: 32, align: 32, offset: 9056)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !375, file: !17, line: 179, baseType: !307, size: 32, align: 32, offset: 9088)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !375, file: !17, line: 180, baseType: !104, size: 32, align: 32, offset: 9120)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !375, file: !17, line: 181, baseType: !104, size: 32, align: 32, offset: 9152)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !375, file: !17, line: 182, baseType: !307, size: 32, align: 32, offset: 9184)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !375, file: !17, line: 184, baseType: !307, size: 32, align: 32, offset: 9216)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !375, file: !17, line: 185, baseType: !307, size: 32, align: 32, offset: 9248)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !375, file: !17, line: 186, baseType: !307, size: 32, align: 32, offset: 9280)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !375, file: !17, line: 187, baseType: !104, size: 32, align: 32, offset: 9312)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !375, file: !17, line: 188, baseType: !104, size: 32, align: 32, offset: 9344)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !375, file: !17, line: 189, baseType: !104, size: 32, align: 32, offset: 9376)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !375, file: !17, line: 190, baseType: !104, size: 32, align: 32, offset: 9408)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !375, file: !17, line: 191, baseType: !307, size: 32, align: 32, offset: 9440)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !375, file: !17, line: 192, baseType: !415, size: 7584, align: 32, offset: 9472)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !17, line: 99, baseType: !416)
!416 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 63, size: 7584, align: 32, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !416, file: !17, line: 65, baseType: !307, size: 32, align: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !416, file: !17, line: 66, baseType: !104, size: 32, align: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !416, file: !17, line: 67, baseType: !104, size: 32, align: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !416, file: !17, line: 68, baseType: !104, size: 32, align: 32, offset: 96)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !416, file: !17, line: 69, baseType: !307, size: 32, align: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !416, file: !17, line: 70, baseType: !307, size: 32, align: 32, offset: 160)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !416, file: !17, line: 71, baseType: !307, size: 32, align: 32, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !416, file: !17, line: 72, baseType: !104, size: 32, align: 32, offset: 224)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !416, file: !17, line: 73, baseType: !307, size: 32, align: 32, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !416, file: !17, line: 74, baseType: !307, size: 32, align: 32, offset: 288)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !416, file: !17, line: 75, baseType: !104, size: 32, align: 32, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !416, file: !17, line: 76, baseType: !104, size: 32, align: 32, offset: 352)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !416, file: !17, line: 77, baseType: !104, size: 32, align: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !416, file: !17, line: 78, baseType: !307, size: 32, align: 32, offset: 416)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !416, file: !17, line: 79, baseType: !104, size: 32, align: 32, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !416, file: !17, line: 80, baseType: !104, size: 32, align: 32, offset: 480)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !416, file: !17, line: 81, baseType: !307, size: 32, align: 32, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !416, file: !17, line: 82, baseType: !104, size: 32, align: 32, offset: 544)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !416, file: !17, line: 83, baseType: !104, size: 32, align: 32, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !416, file: !17, line: 84, baseType: !307, size: 32, align: 32, offset: 608)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !416, file: !17, line: 85, baseType: !307, size: 32, align: 32, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !416, file: !17, line: 86, baseType: !440, size: 3296, align: 32, offset: 672)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !17, line: 60, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 48, size: 3296, align: 32, elements: !442)
!442 = !{!443, !444, !445, !446, !450, !451, !452, !453, !454, !455}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !441, file: !17, line: 50, baseType: !104, size: 32, align: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !441, file: !17, line: 51, baseType: !104, size: 32, align: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !441, file: !17, line: 52, baseType: !104, size: 32, align: 32, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !441, file: !17, line: 53, baseType: !447, size: 1024, align: 32, offset: 96)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1024, align: 32, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !441, file: !17, line: 54, baseType: !447, size: 1024, align: 32, offset: 1120)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !441, file: !17, line: 55, baseType: !447, size: 1024, align: 32, offset: 2144)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !441, file: !17, line: 56, baseType: !104, size: 32, align: 32, offset: 3168)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !441, file: !17, line: 57, baseType: !104, size: 32, align: 32, offset: 3200)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !441, file: !17, line: 58, baseType: !104, size: 32, align: 32, offset: 3232)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !441, file: !17, line: 59, baseType: !104, size: 32, align: 32, offset: 3264)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !416, file: !17, line: 87, baseType: !307, size: 32, align: 32, offset: 3968)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !416, file: !17, line: 88, baseType: !440, size: 3296, align: 32, offset: 4000)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !416, file: !17, line: 90, baseType: !307, size: 32, align: 32, offset: 7296)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !416, file: !17, line: 91, baseType: !307, size: 32, align: 32, offset: 7328)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !416, file: !17, line: 92, baseType: !307, size: 32, align: 32, offset: 7360)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !416, file: !17, line: 93, baseType: !104, size: 32, align: 32, offset: 7392)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !416, file: !17, line: 94, baseType: !104, size: 32, align: 32, offset: 7424)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !416, file: !17, line: 95, baseType: !104, size: 32, align: 32, offset: 7456)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !416, file: !17, line: 96, baseType: !104, size: 32, align: 32, offset: 7488)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !416, file: !17, line: 97, baseType: !104, size: 32, align: 32, offset: 7520)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !416, file: !17, line: 98, baseType: !104, size: 32, align: 32, offset: 7552)
!467 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !4, line: 578, type: !24, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!468 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !4, line: 579, type: !24, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!469 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !4, line: 583, type: !470, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!471 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !4, line: 584, type: !470, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!472 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !4, line: 585, type: !473, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!474 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !4, line: 586, type: !24, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!475 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !4, line: 587, type: !24, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!476 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !4, line: 588, type: !24, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!477 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !4, line: 589, type: !24, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!478 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !4, line: 592, type: !323, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!479 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !4, line: 593, type: !323, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!480 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !4, line: 595, type: !326, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!481 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !4, line: 596, type: !326, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!482 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !4, line: 598, type: !323, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!483 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !4, line: 599, type: !326, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!484 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !4, line: 601, type: !323, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!485 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !4, line: 602, type: !326, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!486 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !4, line: 604, type: !487, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!491 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !4, line: 605, type: !488, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!492 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !4, line: 608, type: !493, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!494 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !4, line: 609, type: !493, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!495 = !DIGlobalVariable(name: "intras", scope: !0, file: !4, line: 610, type: !24, isLocal: false, isDefinition: true, variable: i32* @intras)
!496 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !4, line: 612, type: !24, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!497 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !4, line: 612, type: !24, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!498 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !4, line: 612, type: !24, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!499 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !4, line: 613, type: !24, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!500 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !4, line: 613, type: !24, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!501 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !4, line: 613, type: !24, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!502 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !4, line: 614, type: !24, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!503 = !DIGlobalVariable(name: "errortext", scope: !0, file: !4, line: 617, type: !504, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 2400, align: 8, elements: !506)
!505 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!506 = !{!507}
!507 = !DISubrange(count: 300)
!508 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !4, line: 620, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8192, align: 32, elements: !510)
!510 = !{!511, !511}
!511 = !DISubrange(count: 16)
!512 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !4, line: 620, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!513 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !4, line: 620, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!514 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !4, line: 621, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!515 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !4, line: 621, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!516 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !4, line: 621, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!517 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !4, line: 622, type: !518, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 24576, align: 32, elements: !519)
!519 = !{!236, !511, !511}
!520 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !4, line: 623, type: !521, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1024, align: 32, elements: !522)
!522 = !{!241, !254, !254}
!523 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !4, line: 623, type: !521, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!524 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !4, line: 624, type: !521, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!525 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !4, line: 624, type: !521, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!526 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !4, line: 625, type: !527, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, align: 32, elements: !528)
!528 = !{!254, !254}
!529 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !4, line: 625, type: !530, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, align: 32, elements: !531)
!531 = !{!511}
!532 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !4, line: 1201, type: !65, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!533 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !4, line: 1202, type: !534, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !4, line: 1177, baseType: !536)
!536 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1145, size: 26880, align: 64, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !544, !545, !546, !548, !549, !550, !551, !552, !557, !558, !562, !563, !564, !565, !567, !568, !569, !570, !571, !572, !573}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !536, file: !4, line: 1147, baseType: !25, size: 64, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !536, file: !4, line: 1149, baseType: !509, size: 8192, align: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !536, file: !4, line: 1150, baseType: !509, size: 8192, align: 32, offset: 8256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !536, file: !4, line: 1150, baseType: !509, size: 8192, align: 32, offset: 16448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !536, file: !4, line: 1151, baseType: !473, size: 64, align: 64, offset: 24640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !536, file: !4, line: 1152, baseType: !470, size: 64, align: 64, offset: 24704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !536, file: !4, line: 1153, baseType: !24, size: 32, align: 32, offset: 24768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !536, file: !4, line: 1155, baseType: !24, size: 32, align: 32, offset: 24800)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !536, file: !4, line: 1157, baseType: !547, size: 128, align: 32, offset: 24832)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, align: 32, elements: !253)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !536, file: !4, line: 1157, baseType: !547, size: 128, align: 32, offset: 24960)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !536, file: !4, line: 1158, baseType: !328, size: 64, align: 64, offset: 25088)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !536, file: !4, line: 1159, baseType: !530, size: 512, align: 32, offset: 25152)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !536, file: !4, line: 1160, baseType: !24, size: 32, align: 32, offset: 25664)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !536, file: !4, line: 1161, baseType: !553, size: 64, align: 64, offset: 25728)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !4, line: 62, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !555, line: 30, baseType: !556)
!555 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!556 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !536, file: !4, line: 1162, baseType: !24, size: 32, align: 32, offset: 25792)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !536, file: !4, line: 1163, baseType: !559, size: 64, align: 64, offset: 25856)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !536, file: !4, line: 1164, baseType: !559, size: 64, align: 64, offset: 25920)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !536, file: !4, line: 1165, baseType: !559, size: 64, align: 64, offset: 25984)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !536, file: !4, line: 1166, baseType: !559, size: 64, align: 64, offset: 26048)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !536, file: !4, line: 1167, baseType: !566, size: 512, align: 16, offset: 26112)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 512, align: 16, elements: !522)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !536, file: !4, line: 1168, baseType: !24, size: 32, align: 32, offset: 26624)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !536, file: !4, line: 1169, baseType: !24, size: 32, align: 32, offset: 26656)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !536, file: !4, line: 1171, baseType: !24, size: 32, align: 32, offset: 26688)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !536, file: !4, line: 1172, baseType: !24, size: 32, align: 32, offset: 26720)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !536, file: !4, line: 1174, baseType: !24, size: 32, align: 32, offset: 26752)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !536, file: !4, line: 1175, baseType: !24, size: 32, align: 32, offset: 26784)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !536, file: !4, line: 1176, baseType: !24, size: 32, align: 32, offset: 26816)
!574 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !4, line: 1203, type: !535, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!575 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !4, line: 1203, type: !535, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!576 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !4, line: 1204, type: !535, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!577 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !4, line: 1204, type: !535, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!578 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !4, line: 1230, type: !579, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !581, line: 153, baseType: !582)
!581 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!582 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !581, line: 122, size: 1216, align: 64, elements: !583)
!583 = !{!584, !586, !587, !588, !589, !590, !595, !596, !597, !601, !606, !614, !620, !621, !624, !625, !627, !631, !632, !633}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !582, file: !581, line: 123, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !582, file: !581, line: 124, baseType: !24, size: 32, align: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !582, file: !581, line: 125, baseType: !24, size: 32, align: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !582, file: !581, line: 126, baseType: !490, size: 16, align: 16, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !582, file: !581, line: 127, baseType: !490, size: 16, align: 16, offset: 144)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !582, file: !581, line: 128, baseType: !591, size: 128, align: 64, offset: 192)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !581, line: 88, size: 128, align: 64, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !591, file: !581, line: 89, baseType: !585, size: 64, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !591, file: !581, line: 90, baseType: !24, size: 32, align: 32, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !582, file: !581, line: 129, baseType: !24, size: 32, align: 32, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !582, file: !581, line: 132, baseType: !22, size: 64, align: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !582, file: !581, line: 133, baseType: !598, size: 64, align: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!24, !22}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !582, file: !581, line: 134, baseType: !602, size: 64, align: 64, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64, align: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!24, !22, !605, !24}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !582, file: !581, line: 135, baseType: !607, size: 64, align: 64, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64, align: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!610, !22, !610, !24}
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !581, line: 77, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !612, line: 71, baseType: !613)
!612 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !119, line: 46, baseType: !556)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !582, file: !581, line: 136, baseType: !615, size: 64, align: 64, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64, align: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!24, !22, !618, !24}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64, align: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !582, file: !581, line: 139, baseType: !591, size: 128, align: 64, offset: 704)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !582, file: !581, line: 140, baseType: !622, size: 64, align: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !581, line: 94, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !582, file: !581, line: 141, baseType: !24, size: 32, align: 32, offset: 896)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !582, file: !581, line: 144, baseType: !626, size: 24, align: 8, offset: 928)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 24, align: 8, elements: !258)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !582, file: !581, line: 145, baseType: !628, size: 8, align: 8, offset: 952)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 8, align: 8, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 1)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !582, file: !581, line: 148, baseType: !591, size: 128, align: 64, offset: 960)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !582, file: !581, line: 151, baseType: !24, size: 32, align: 32, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !582, file: !581, line: 152, baseType: !610, size: 64, align: 64, offset: 1152)
!634 = !DIGlobalVariable(name: "p_log", scope: !0, file: !4, line: 1231, type: !579, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!635 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !4, line: 1232, type: !579, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!636 = !DIGlobalVariable(name: "p_in", scope: !0, file: !4, line: 1233, type: !24, isLocal: false, isDefinition: true, variable: i32* @p_in)
!637 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !4, line: 1234, type: !24, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!638 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !4, line: 1237, type: !639, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 640, align: 32, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 20)
!642 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !4, line: 1238, type: !639, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!643 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !4, line: 1239, type: !639, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!644 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !4, line: 1240, type: !639, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!645 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !4, line: 1241, type: !639, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!646 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !4, line: 1242, type: !639, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!647 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !4, line: 1456, type: !24, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!648 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !4, line: 1465, type: !24, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!649 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !4, line: 1466, type: !24, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!650 = !{i32 2, !"Dwarf Version", i32 2}
!651 = !{i32 2, !"Debug Info Version", i32 700000003}
!652 = !{i32 1, !"PIC Level", i32 2}
!653 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!654 = !DILocation(line: 35, column: 15, scope: !38)
!655 = !{!656, !656, i64 0}
!656 = !{!"any pointer", !657, i64 0}
!657 = !{!"omnipotent char", !658, i64 0}
!658 = !{!"Simple C/C++ TBAA"}
!659 = !DILocation(line: 35, column: 22, scope: !38)
!660 = !{!661, !662, i64 1236}
!661 = !{!"", !662, i64 0, !662, i64 4, !662, i64 8, !662, i64 12, !662, i64 16, !662, i64 20, !662, i64 24, !662, i64 28, !662, i64 32, !662, i64 36, !662, i64 40, !662, i64 44, !662, i64 48, !662, i64 52, !662, i64 56, !662, i64 60, !662, i64 64, !662, i64 68, !662, i64 72, !662, i64 76, !657, i64 80, !657, i64 144, !662, i64 208, !662, i64 212, !662, i64 216, !662, i64 220, !657, i64 224, !657, i64 424, !657, i64 624, !657, i64 824, !657, i64 1024, !662, i64 1224, !662, i64 1228, !662, i64 1232, !662, i64 1236, !662, i64 1240, !662, i64 1244, !662, i64 1248, !662, i64 1252, !662, i64 1256, !662, i64 1260, !662, i64 1264, !662, i64 1268, !662, i64 1272, !662, i64 1276, !662, i64 1280, !662, i64 1284, !662, i64 1288, !662, i64 1292, !662, i64 1296, !662, i64 1300, !662, i64 1304, !662, i64 1308, !662, i64 1312, !662, i64 1316, !662, i64 1320, !657, i64 1324, !662, i64 2348, !662, i64 2352, !662, i64 2356, !662, i64 2360, !662, i64 2364, !662, i64 2368, !662, i64 2372, !662, i64 2376, !662, i64 2380, !662, i64 2384, !662, i64 2388, !662, i64 2392, !662, i64 2396, !662, i64 2400, !662, i64 2404, !662, i64 2408, !662, i64 2412, !662, i64 2416, !662, i64 2420, !663, i64 2424, !662, i64 2432, !662, i64 2436, !662, i64 2440, !662, i64 2444, !662, i64 2448, !662, i64 2452, !662, i64 2456, !662, i64 2460, !662, i64 2464, !662, i64 2468, !662, i64 2472, !662, i64 2476, !657, i64 2480, !657, i64 2680, !662, i64 2880, !662, i64 2884, !662, i64 2888, !662, i64 2892, !662, i64 2896, !662, i64 2900, !662, i64 2904, !662, i64 2908, !662, i64 2912, !662, i64 2916, !662, i64 2920, !662, i64 2924, !662, i64 2928, !662, i64 2932, !662, i64 2936, !662, i64 2940, !662, i64 2944, !662, i64 2948, !657, i64 2952, !662, i64 3152, !662, i64 3156, !656, i64 3160, !656, i64 3168, !656, i64 3176, !656, i64 3184, !662, i64 3192, !662, i64 3196, !662, i64 3200, !662, i64 3204, !662, i64 3208, !662, i64 3212, !662, i64 3216, !662, i64 3220, !662, i64 3224, !662, i64 3228, !662, i64 3232, !662, i64 3236, !662, i64 3240, !662, i64 3244, !662, i64 3248, !662, i64 3252, !662, i64 3256, !657, i64 3260, !662, i64 3292, !662, i64 3296, !662, i64 3300, !662, i64 3304, !662, i64 3308, !662, i64 3312, !662, i64 3316, !662, i64 3320, !662, i64 3324, !662, i64 3328, !662, i64 3332, !657, i64 3336, !657, i64 3384, !662, i64 3584}
!662 = !{!"int", !657, i64 0}
!663 = !{!"double", !657, i64 0}
!664 = !DILocation(line: 35, column: 39, scope: !38)
!665 = !DIExpression()
!666 = !DILocation(line: 35, column: 7, scope: !38)
!667 = !DILocation(line: 37, column: 14, scope: !47)
!668 = !{!661, !662, i64 1320}
!669 = !DILocation(line: 37, column: 28, scope: !47)
!670 = !DILocation(line: 37, column: 7, scope: !38)
!671 = !DILocation(line: 69, column: 20, scope: !46)
!672 = !DILocation(line: 69, column: 5, scope: !46)
!673 = !DILocation(line: 39, column: 15, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !1, line: 39, column: 5)
!675 = distinct !DILexicalBlock(scope: !676, file: !1, line: 39, column: 5)
!676 = distinct !DILexicalBlock(scope: !47, file: !1, line: 38, column: 3)
!677 = !DILocation(line: 39, column: 5, scope: !675)
!678 = !DILocation(line: 43, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !1, line: 42, column: 7)
!680 = distinct !DILexicalBlock(scope: !681, file: !1, line: 41, column: 11)
!681 = distinct !DILexicalBlock(scope: !674, file: !1, line: 40, column: 5)
!682 = !DILocation(line: 41, column: 13, scope: !680)
!683 = !DILocation(line: 43, column: 26, scope: !679)
!684 = !DILocation(line: 43, column: 37, scope: !679)
!685 = !{!686, !662, i64 0}
!686 = !{!"", !662, i64 0, !662, i64 4, !662, i64 8, !662, i64 12, !662, i64 16, !662, i64 20}
!687 = !DILocation(line: 41, column: 11, scope: !681)
!688 = !DILocation(line: 44, column: 41, scope: !679)
!689 = !DILocation(line: 44, column: 45, scope: !679)
!690 = !DILocation(line: 47, column: 7, scope: !679)
!691 = !DILocation(line: 51, column: 42, scope: !692)
!692 = distinct !DILexicalBlock(scope: !680, file: !1, line: 49, column: 7)
!693 = !DILocation(line: 51, column: 53, scope: !692)
!694 = !DILocation(line: 44, column: 26, scope: !679)
!695 = !DILocation(line: 45, column: 26, scope: !679)
!696 = !DILocation(line: 46, column: 26, scope: !679)
!697 = !DILocation(line: 71, column: 16, scope: !698)
!698 = distinct !DILexicalBlock(scope: !46, file: !1, line: 70, column: 5)
!699 = !DILocation(line: 62, column: 9, scope: !46)
!700 = !DILocation(line: 72, column: 17, scope: !698)
!701 = !DILocation(line: 61, column: 9, scope: !46)
!702 = !DILocation(line: 64, column: 9, scope: !46)
!703 = !DILocation(line: 76, column: 59, scope: !704)
!704 = distinct !DILexicalBlock(scope: !46, file: !1, line: 76, column: 9)
!705 = !DILocation(line: 76, column: 48, scope: !704)
!706 = !DILocation(line: 76, column: 63, scope: !704)
!707 = !DILocation(line: 63, column: 10, scope: !46)
!708 = !DILocation(line: 77, column: 41, scope: !709)
!709 = distinct !DILexicalBlock(scope: !46, file: !1, line: 77, column: 9)
!710 = !DILocation(line: 77, column: 35, scope: !709)
!711 = !DILocation(line: 63, column: 26, scope: !46)
!712 = !DILocation(line: 77, column: 14, scope: !709)
!713 = !DILocation(line: 77, column: 9, scope: !46)
!714 = !DILocation(line: 77, column: 79, scope: !709)
!715 = !DILocation(line: 79, column: 18, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !1, line: 79, column: 5)
!717 = distinct !DILexicalBlock(scope: !46, file: !1, line: 79, column: 5)
!718 = !DILocation(line: 79, column: 25, scope: !716)
!719 = !DILocation(line: 79, column: 17, scope: !716)
!720 = !DILocation(line: 79, column: 5, scope: !717)
!721 = !DILocation(line: 81, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !716, file: !1, line: 80, column: 5)
!723 = !DILocation(line: 85, column: 5, scope: !46)
!724 = !DILocation(line: 81, column: 24, scope: !722)
!725 = !DILocation(line: 81, column: 35, scope: !722)
!726 = !{!686, !662, i64 4}
!727 = !DILocation(line: 82, column: 24, scope: !722)
!728 = !DILocation(line: 82, column: 35, scope: !722)
!729 = !DILocation(line: 87, column: 17, scope: !730)
!730 = distinct !DILexicalBlock(scope: !46, file: !1, line: 86, column: 5)
!731 = !DILocation(line: 66, column: 9, scope: !46)
!732 = !DILocation(line: 89, column: 72, scope: !730)
!733 = !DILocation(line: 89, column: 58, scope: !730)
!734 = !DILocation(line: 89, column: 34, scope: !730)
!735 = !DILocation(line: 89, column: 7, scope: !730)
!736 = !DILocation(line: 89, column: 47, scope: !730)
!737 = !{!662, !662, i64 0}
!738 = !DILocation(line: 65, column: 9, scope: !46)
!739 = !DILocation(line: 85, column: 22, scope: !46)
!740 = !DILocation(line: 96, column: 59, scope: !46)
!741 = !DILocation(line: 96, column: 45, scope: !46)
!742 = !DILocation(line: 96, column: 5, scope: !46)
!743 = !DILocation(line: 96, column: 33, scope: !46)
!744 = !DILocation(line: 34, column: 10, scope: !38)
!745 = !DILocation(line: 99, column: 16, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !1, line: 99, column: 5)
!747 = distinct !DILexicalBlock(scope: !46, file: !1, line: 99, column: 5)
!748 = !DILocation(line: 99, column: 5, scope: !747)
!749 = !DILocation(line: 101, column: 39, scope: !750)
!750 = distinct !DILexicalBlock(scope: !746, file: !1, line: 100, column: 5)
!751 = !DILocation(line: 101, column: 83, scope: !750)
!752 = !DILocation(line: 101, column: 32, scope: !750)
!753 = !DILocation(line: 101, column: 37, scope: !750)
!754 = !DILocation(line: 101, column: 59, scope: !750)
!755 = !DILocation(line: 101, column: 87, scope: !750)
!756 = !DILocation(line: 101, column: 7, scope: !750)
!757 = !DILocation(line: 106, column: 12, scope: !61)
!758 = !DILocation(line: 106, column: 19, scope: !61)
!759 = !DILocation(line: 106, column: 39, scope: !60)
!760 = !DILocation(line: 106, column: 5, scope: !61)
!761 = !DILocation(line: 112, column: 13, scope: !762)
!762 = distinct !DILexicalBlock(scope: !56, file: !1, line: 112, column: 13)
!763 = !DILocation(line: 108, column: 18, scope: !57)
!764 = !DILocation(line: 108, column: 7, scope: !58)
!765 = !DILocation(line: 112, column: 63, scope: !762)
!766 = !{!686, !662, i64 16}
!767 = !DILocation(line: 112, column: 30, scope: !762)
!768 = !DILocation(line: 112, column: 59, scope: !762)
!769 = !DILocation(line: 112, column: 43, scope: !762)
!770 = !DILocation(line: 112, column: 13, scope: !56)
!771 = !DILocation(line: 110, column: 13, scope: !56)
!772 = !DILocation(line: 127, column: 60, scope: !773)
!773 = distinct !DILexicalBlock(scope: !762, file: !1, line: 113, column: 9)
!774 = !DILocation(line: 118, column: 38, scope: !773)
!775 = !DILocation(line: 119, column: 44, scope: !773)
!776 = !DILocation(line: 120, column: 42, scope: !773)
!777 = !DILocation(line: 126, column: 39, scope: !773)
!778 = !DILocation(line: 127, column: 41, scope: !773)
!779 = !DILocation(line: 128, column: 39, scope: !773)
!780 = !DILocation(line: 134, column: 39, scope: !773)
!781 = !{!686, !662, i64 20}
!782 = !DILocation(line: 135, column: 65, scope: !773)
!783 = !DILocation(line: 135, column: 46, scope: !773)
!784 = !DILocation(line: 136, column: 44, scope: !773)
!785 = !DILocation(line: 138, column: 9, scope: !773)
!786 = !DILocation(line: 106, column: 44, scope: !60)
!787 = !DILocation(line: 144, column: 1, scope: !38)
!788 = !DILocation(line: 153, column: 22, scope: !62)
!789 = !DILocation(line: 153, column: 33, scope: !62)
!790 = !DILocation(line: 153, column: 45, scope: !62)
!791 = !DILocation(line: 153, column: 63, scope: !62)
!792 = !DILocation(line: 156, column: 13, scope: !793)
!793 = distinct !DILexicalBlock(scope: !62, file: !1, line: 156, column: 7)
!794 = !DILocation(line: 158, column: 15, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !1, line: 158, column: 9)
!796 = distinct !DILexicalBlock(scope: !793, file: !1, line: 157, column: 3)
!797 = !DILocation(line: 156, column: 7, scope: !62)
!798 = !DILocation(line: 158, column: 19, scope: !795)
!799 = !DILocation(line: 158, column: 29, scope: !795)
!800 = !DILocation(line: 158, column: 36, scope: !795)
!801 = !DILocation(line: 158, column: 28, scope: !795)
!802 = !DILocation(line: 158, column: 54, scope: !795)
!803 = !DILocation(line: 158, column: 57, scope: !795)
!804 = !DILocation(line: 158, column: 83, scope: !795)
!805 = !DILocation(line: 158, column: 94, scope: !795)
!806 = !DILocation(line: 158, column: 9, scope: !796)
!807 = !DILocation(line: 160, column: 35, scope: !808)
!808 = distinct !DILexicalBlock(scope: !795, file: !1, line: 159, column: 5)
!809 = !DILocation(line: 160, column: 46, scope: !808)
!810 = !DILocation(line: 161, column: 46, scope: !808)
!811 = !DILocation(line: 162, column: 35, scope: !808)
!812 = !DILocation(line: 162, column: 49, scope: !808)
!813 = !DILocation(line: 163, column: 35, scope: !808)
!814 = !DILocation(line: 163, column: 49, scope: !808)
!815 = !{!686, !662, i64 8}
!816 = !DILocation(line: 164, column: 5, scope: !808)
!817 = !DILocation(line: 168, column: 19, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !1, line: 168, column: 9)
!819 = distinct !DILexicalBlock(scope: !793, file: !1, line: 167, column: 3)
!820 = !DILocation(line: 168, column: 29, scope: !818)
!821 = !DILocation(line: 168, column: 36, scope: !818)
!822 = !DILocation(line: 168, column: 28, scope: !818)
!823 = !DILocation(line: 168, column: 9, scope: !819)
!824 = !DILocation(line: 170, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !818, file: !1, line: 169, column: 5)
!826 = !DILocation(line: 170, column: 33, scope: !825)
!827 = !DILocation(line: 170, column: 44, scope: !825)
!828 = !DILocation(line: 171, column: 33, scope: !825)
!829 = !DILocation(line: 171, column: 44, scope: !825)
!830 = !DILocation(line: 172, column: 33, scope: !825)
!831 = !DILocation(line: 172, column: 47, scope: !825)
!832 = !DILocation(line: 173, column: 33, scope: !825)
!833 = !DILocation(line: 173, column: 47, scope: !825)
!834 = !DILocation(line: 174, column: 5, scope: !825)
!835 = !DILocation(line: 177, column: 23, scope: !819)
!836 = !DILocation(line: 177, column: 44, scope: !819)
!837 = !DILocation(line: 177, column: 47, scope: !819)
!838 = !DILocation(line: 177, column: 35, scope: !819)
!839 = !DILocation(line: 177, column: 5, scope: !819)
!840 = !DILocation(line: 178, column: 35, scope: !819)
!841 = !DILocation(line: 180, column: 1, scope: !62)
!842 = !DILocation(line: 192, column: 21, scope: !80)
!843 = !DILocation(line: 192, column: 28, scope: !80)
!844 = !DILocation(line: 192, column: 42, scope: !80)
!845 = !DILocation(line: 192, column: 56, scope: !80)
!846 = !DILocation(line: 192, column: 84, scope: !80)
!847 = !DILocation(line: 192, column: 7, scope: !80)
!848 = !DILocation(line: 194, column: 26, scope: !80)
!849 = !DILocation(line: 194, column: 19, scope: !80)
!850 = !DILocation(line: 194, column: 17, scope: !80)
!851 = !DILocation(line: 195, column: 11, scope: !852)
!852 = distinct !DILexicalBlock(scope: !80, file: !1, line: 195, column: 7)
!853 = !DILocation(line: 195, column: 7, scope: !80)
!854 = !DILocation(line: 196, column: 5, scope: !852)
!855 = !DILocation(line: 197, column: 1, scope: !80)
!856 = !DILocation(line: 208, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !83, file: !1, line: 208, column: 7)
!858 = !DILocation(line: 208, column: 7, scope: !83)
!859 = !DILocation(line: 209, column: 10, scope: !857)
!860 = !DILocation(line: 209, column: 5, scope: !857)
!861 = !DILocation(line: 210, column: 1, scope: !83)
!862 = !DILocation(line: 222, column: 24, scope: !85)
!863 = !DILocation(line: 222, column: 17, scope: !85)
!864 = !DILocation(line: 222, column: 7, scope: !85)
!865 = !DILocation(line: 223, column: 7, scope: !85)
!866 = !DILocation(line: 224, column: 7, scope: !85)
!867 = !DILocation(line: 224, column: 22, scope: !85)
!868 = !DILocation(line: 224, column: 38, scope: !85)
!869 = !DILocation(line: 224, column: 55, scope: !85)
!870 = !DILocation(line: 225, column: 7, scope: !85)
!871 = !DILocation(line: 228, column: 15, scope: !872)
!872 = distinct !DILexicalBlock(scope: !85, file: !1, line: 228, column: 7)
!873 = !DILocation(line: 228, column: 7, scope: !85)
!874 = !DILocation(line: 231, column: 5, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !1, line: 231, column: 5)
!876 = distinct !DILexicalBlock(scope: !872, file: !1, line: 229, column: 3)
!877 = !DILocation(line: 234, column: 22, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !1, line: 234, column: 11)
!879 = distinct !DILexicalBlock(scope: !880, file: !1, line: 232, column: 5)
!880 = distinct !DILexicalBlock(scope: !875, file: !1, line: 231, column: 5)
!881 = !DILocation(line: 234, column: 11, scope: !879)
!882 = !DILocation(line: 236, column: 17, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !1, line: 235, column: 7)
!884 = !{!657, !657, i64 0}
!885 = !DILocation(line: 236, column: 9, scope: !883)
!886 = !DILocation(line: 240, column: 11, scope: !887)
!887 = distinct !DILexicalBlock(scope: !883, file: !1, line: 237, column: 9)
!888 = !DILocation(line: 240, column: 38, scope: !887)
!889 = !DILocation(line: 240, column: 48, scope: !887)
!890 = !DILocation(line: 241, column: 11, scope: !887)
!891 = !DILocation(line: 244, column: 11, scope: !887)
!892 = !DILocation(line: 244, column: 38, scope: !887)
!893 = !DILocation(line: 244, column: 48, scope: !887)
!894 = !DILocation(line: 245, column: 11, scope: !887)
!895 = !DILocation(line: 248, column: 11, scope: !887)
!896 = !DILocation(line: 248, column: 38, scope: !887)
!897 = !DILocation(line: 248, column: 48, scope: !887)
!898 = !DILocation(line: 249, column: 11, scope: !887)
!899 = !DILocation(line: 251, column: 11, scope: !887)
!900 = !DILocation(line: 252, column: 11, scope: !887)
!901 = !DILocation(line: 253, column: 11, scope: !887)
!902 = !DILocation(line: 260, column: 13, scope: !903)
!903 = distinct !DILexicalBlock(scope: !878, file: !1, line: 258, column: 7)
!904 = !DILocation(line: 262, column: 31, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !1, line: 262, column: 15)
!906 = distinct !DILexicalBlock(scope: !907, file: !1, line: 261, column: 9)
!907 = distinct !DILexicalBlock(scope: !903, file: !1, line: 260, column: 13)
!908 = !DILocation(line: 262, column: 59, scope: !905)
!909 = !DILocation(line: 262, column: 29, scope: !905)
!910 = !DILocation(line: 262, column: 23, scope: !905)
!911 = !DILocation(line: 262, column: 15, scope: !905)
!912 = !DILocation(line: 262, column: 15, scope: !906)
!913 = !DILocation(line: 223, column: 20, scope: !85)
!914 = !DILocation(line: 264, column: 13, scope: !915)
!915 = distinct !DILexicalBlock(scope: !905, file: !1, line: 263, column: 11)
!916 = !DILocation(line: 265, column: 53, scope: !915)
!917 = !DILocation(line: 265, column: 13, scope: !915)
!918 = !DILocation(line: 265, column: 40, scope: !915)
!919 = !DILocation(line: 265, column: 51, scope: !915)
!920 = !DILocation(line: 267, column: 17, scope: !921)
!921 = distinct !DILexicalBlock(scope: !915, file: !1, line: 267, column: 17)
!922 = !DILocation(line: 267, column: 27, scope: !921)
!923 = !DILocation(line: 269, column: 15, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !1, line: 268, column: 13)
!925 = !{!661, !662, i64 20}
!926 = !DILocation(line: 267, column: 43, scope: !921)
!927 = !DILocation(line: 267, column: 30, scope: !921)
!928 = !DILocation(line: 270, column: 15, scope: !924)
!929 = !DILocation(line: 271, column: 13, scope: !924)
!930 = !DILocation(line: 272, column: 23, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !1, line: 272, column: 13)
!932 = distinct !DILexicalBlock(scope: !915, file: !1, line: 272, column: 13)
!933 = !DILocation(line: 272, column: 13, scope: !932)
!934 = !DILocation(line: 274, column: 19, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !1, line: 274, column: 19)
!936 = distinct !DILexicalBlock(scope: !931, file: !1, line: 273, column: 13)
!937 = !DILocation(line: 274, column: 36, scope: !935)
!938 = !DILocation(line: 274, column: 50, scope: !935)
!939 = !DILocation(line: 274, column: 47, scope: !935)
!940 = !DILocation(line: 276, column: 17, scope: !941)
!941 = distinct !DILexicalBlock(scope: !935, file: !1, line: 275, column: 15)
!942 = !DILocation(line: 274, column: 19, scope: !936)
!943 = !DILocation(line: 277, column: 17, scope: !941)
!944 = !DILocation(line: 278, column: 15, scope: !941)
!945 = !DILocation(line: 283, column: 13, scope: !946)
!946 = distinct !DILexicalBlock(scope: !905, file: !1, line: 282, column: 11)
!947 = !DILocation(line: 284, column: 13, scope: !946)
!948 = !DILocation(line: 289, column: 27, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !1, line: 289, column: 15)
!950 = distinct !DILexicalBlock(scope: !951, file: !1, line: 288, column: 9)
!951 = distinct !DILexicalBlock(scope: !907, file: !1, line: 287, column: 18)
!952 = !DILocation(line: 289, column: 32, scope: !949)
!953 = !DILocation(line: 289, column: 53, scope: !949)
!954 = !DILocation(line: 289, column: 81, scope: !949)
!955 = !DILocation(line: 289, column: 51, scope: !949)
!956 = !DILocation(line: 289, column: 45, scope: !949)
!957 = !DILocation(line: 289, column: 37, scope: !949)
!958 = !DILocation(line: 289, column: 15, scope: !950)
!959 = !DILocation(line: 291, column: 13, scope: !960)
!960 = distinct !DILexicalBlock(scope: !949, file: !1, line: 290, column: 11)
!961 = !DILocation(line: 295, column: 15, scope: !962)
!962 = distinct !DILexicalBlock(scope: !960, file: !1, line: 292, column: 13)
!963 = !DILocation(line: 295, column: 42, scope: !962)
!964 = !DILocation(line: 295, column: 56, scope: !962)
!965 = !DILocation(line: 296, column: 15, scope: !962)
!966 = !DILocation(line: 299, column: 15, scope: !962)
!967 = !DILocation(line: 299, column: 42, scope: !962)
!968 = !DILocation(line: 299, column: 55, scope: !962)
!969 = !DILocation(line: 300, column: 15, scope: !962)
!970 = !DILocation(line: 302, column: 15, scope: !962)
!971 = !DILocation(line: 303, column: 15, scope: !962)
!972 = !DILocation(line: 304, column: 15, scope: !962)
!973 = !DILocation(line: 308, column: 32, scope: !974)
!974 = distinct !DILexicalBlock(scope: !949, file: !1, line: 308, column: 20)
!975 = !DILocation(line: 308, column: 48, scope: !974)
!976 = !DILocation(line: 308, column: 37, scope: !974)
!977 = !DILocation(line: 310, column: 33, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !1, line: 310, column: 17)
!979 = distinct !DILexicalBlock(scope: !974, file: !1, line: 309, column: 11)
!980 = !DILocation(line: 310, column: 61, scope: !978)
!981 = !DILocation(line: 310, column: 31, scope: !978)
!982 = !DILocation(line: 310, column: 25, scope: !978)
!983 = !DILocation(line: 310, column: 17, scope: !978)
!984 = !DILocation(line: 310, column: 17, scope: !979)
!985 = !DILocation(line: 223, column: 16, scope: !85)
!986 = !DILocation(line: 312, column: 15, scope: !987)
!987 = distinct !DILexicalBlock(scope: !978, file: !1, line: 311, column: 13)
!988 = !DILocation(line: 313, column: 52, scope: !987)
!989 = !DILocation(line: 313, column: 15, scope: !987)
!990 = !DILocation(line: 313, column: 42, scope: !987)
!991 = !DILocation(line: 313, column: 50, scope: !987)
!992 = !{!686, !662, i64 12}
!993 = !DILocation(line: 315, column: 21, scope: !994)
!994 = distinct !DILexicalBlock(scope: !987, file: !1, line: 315, column: 21)
!995 = !DILocation(line: 315, column: 26, scope: !994)
!996 = !DILocation(line: 317, column: 19, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !1, line: 316, column: 17)
!998 = !DILocation(line: 318, column: 19, scope: !997)
!999 = !DILocation(line: 319, column: 17, scope: !997)
!1000 = !DILocation(line: 323, column: 15, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !978, file: !1, line: 322, column: 13)
!1002 = !DILocation(line: 324, column: 15, scope: !1001)
!1003 = !DILocation(line: 327, column: 48, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !974, file: !1, line: 327, column: 20)
!1005 = !DILocation(line: 327, column: 37, scope: !1004)
!1006 = !DILocation(line: 327, column: 74, scope: !1004)
!1007 = !DILocation(line: 327, column: 102, scope: !1004)
!1008 = !DILocation(line: 327, column: 72, scope: !1004)
!1009 = !DILocation(line: 327, column: 66, scope: !1004)
!1010 = !DILocation(line: 327, column: 58, scope: !1004)
!1011 = !DILocation(line: 327, column: 115, scope: !1004)
!1012 = !DILocation(line: 327, column: 109, scope: !1004)
!1013 = !DILocation(line: 333, column: 14, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 328, column: 11)
!1015 = !DILocation(line: 334, column: 25, scope: !1014)
!1016 = !DILocation(line: 335, column: 39, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 335, column: 17)
!1018 = !DILocation(line: 335, column: 29, scope: !1017)
!1019 = !DILocation(line: 335, column: 17, scope: !1014)
!1020 = !DILocation(line: 337, column: 15, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 336, column: 13)
!1022 = !DILocation(line: 338, column: 15, scope: !1021)
!1023 = !DILocation(line: 339, column: 13, scope: !1021)
!1024 = !DILocation(line: 231, column: 32, scope: !880)
!1025 = !DILocation(line: 231, column: 19, scope: !880)
!1026 = !DILocation(line: 349, column: 5, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !872, file: !1, line: 348, column: 3)
!1028 = !DILocation(line: 350, column: 5, scope: !1027)
!1029 = !DILocation(line: 353, column: 42, scope: !85)
!1030 = !DILocation(line: 353, column: 3, scope: !85)
!1031 = !DILocation(line: 353, column: 10, scope: !85)
!1032 = !DILocation(line: 353, column: 28, scope: !85)
!1033 = !DILocation(line: 354, column: 1, scope: !85)
!1034 = !DILocation(line: 365, column: 10, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !97, file: !1, line: 365, column: 9)
!1036 = !DILocation(line: 365, column: 17, scope: !1035)
!1037 = !DILocation(line: 365, column: 35, scope: !1035)
!1038 = !DILocation(line: 478, column: 5, scope: !97)
!1039 = !DILocation(line: 365, column: 41, scope: !1035)
!1040 = !DILocation(line: 365, column: 45, scope: !1035)
!1041 = !{!1042, !662, i64 0}
!1042 = !{!"", !662, i64 0, !662, i64 4, !662, i64 8, !662, i64 12, !662, i64 16, !662, i64 20, !662, i64 24, !662, i64 28, !662, i64 32, !662, i64 36, !662, i64 40, !662, i64 44, !1043, i64 48, !662, i64 52, !662, i64 56, !662, i64 60, !662, i64 64, !662, i64 68, !662, i64 72, !662, i64 76, !662, i64 80, !662, i64 84, !662, i64 88, !662, i64 92, !662, i64 96, !656, i64 104, !656, i64 112, !662, i64 120, !656, i64 128, !662, i64 136, !662, i64 140, !662, i64 144, !662, i64 148, !662, i64 152, !662, i64 156, !662, i64 160, !662, i64 164, !662, i64 168, !662, i64 172, !662, i64 176, !662, i64 180, !657, i64 184, !657, i64 4792, !657, i64 7352, !657, i64 8504, !657, i64 12600, !657, i64 13112, !656, i64 14136, !656, i64 14144, !656, i64 14152, !656, i64 14160, !656, i64 14168, !657, i64 14176, !656, i64 71776, !656, i64 71784, !662, i64 71792, !662, i64 71796, !662, i64 71800, !662, i64 71804, !657, i64 71808, !662, i64 71872, !662, i64 71876, !662, i64 71880, !662, i64 71884, !662, i64 71888, !663, i64 71896, !662, i64 71904, !662, i64 71908, !662, i64 71912, !662, i64 71916, !656, i64 71920, !656, i64 71928, !656, i64 71936, !656, i64 71944, !657, i64 71952, !662, i64 71984, !662, i64 71988, !662, i64 71992, !662, i64 71996, !662, i64 72000, !662, i64 72004, !662, i64 72008, !662, i64 72012, !657, i64 72016, !662, i64 72376, !662, i64 72380, !662, i64 72384, !662, i64 72388, !662, i64 72392, !662, i64 72396, !662, i64 72400, !662, i64 72404, !662, i64 72408, !662, i64 72412, !662, i64 72416, !662, i64 72420, !657, i64 72424, !662, i64 72428, !662, i64 72432, !657, i64 72436, !662, i64 72444, !662, i64 72448, !662, i64 72452, !662, i64 72456, !662, i64 72460, !662, i64 72464, !662, i64 72468, !662, i64 72472, !662, i64 72476, !662, i64 72480, !662, i64 72484, !662, i64 72488, !662, i64 72492, !662, i64 72496, !662, i64 72500, !662, i64 72504, !662, i64 72508, !656, i64 72512, !662, i64 72520, !662, i64 72524, !662, i64 72528, !662, i64 72532, !662, i64 72536, !663, i64 72544, !662, i64 72552, !662, i64 72556, !662, i64 72560, !662, i64 72564, !662, i64 72568, !662, i64 72572, !662, i64 72576, !656, i64 72584, !662, i64 72592, !662, i64 72596, !662, i64 72600, !662, i64 72604, !662, i64 72608, !662, i64 72612, !662, i64 72616, !662, i64 72620, !662, i64 72624, !662, i64 72628, !662, i64 72632, !662, i64 72636, !662, i64 72640, !662, i64 72644, !662, i64 72648, !662, i64 72652, !662, i64 72656, !662, i64 72660, !662, i64 72664, !662, i64 72668, !662, i64 72672, !662, i64 72676, !662, i64 72680, !662, i64 72684, !662, i64 72688, !662, i64 72692, !662, i64 72696, !662, i64 72700, !662, i64 72704, !662, i64 72708, !662, i64 72712, !657, i64 72716, !662, i64 72724, !662, i64 72728, !662, i64 72732}
!1043 = !{!"float", !657, i64 0}
!1044 = !DILocation(line: 365, column: 56, scope: !1035)
!1045 = !DILocation(line: 365, column: 9, scope: !97)
!1046 = !DILocation(line: 367, column: 12, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 366, column: 5)
!1048 = !DILocation(line: 367, column: 17, scope: !1047)
!1049 = !{!1042, !662, i64 24}
!1050 = !DILocation(line: 369, column: 18, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 369, column: 11)
!1052 = !{!661, !662, i64 2912}
!1053 = !DILocation(line: 370, column: 14, scope: !1051)
!1054 = !DILocation(line: 370, column: 9, scope: !1051)
!1055 = !DILocation(line: 370, column: 20, scope: !1051)
!1056 = !{!1042, !662, i64 72384}
!1057 = !DILocation(line: 374, column: 18, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 374, column: 11)
!1059 = !{!661, !662, i64 1316}
!1060 = !DILocation(line: 374, column: 31, scope: !1058)
!1061 = !DILocation(line: 374, column: 46, scope: !1058)
!1062 = !DILocation(line: 374, column: 36, scope: !1058)
!1063 = !DILocation(line: 374, column: 59, scope: !1058)
!1064 = !DILocation(line: 374, column: 11, scope: !1047)
!1065 = !DILocation(line: 379, column: 12, scope: !1047)
!1066 = !DILocation(line: 379, column: 30, scope: !1047)
!1067 = !{!1042, !662, i64 72496}
!1068 = !DILocation(line: 384, column: 18, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 384, column: 9)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 383, column: 7)
!1071 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 382, column: 11)
!1072 = !DILocation(line: 384, column: 33, scope: !1069)
!1073 = !{!1042, !662, i64 71908}
!1074 = !DILocation(line: 382, column: 11, scope: !1047)
!1075 = !DILocation(line: 376, column: 14, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 375, column: 7)
!1077 = !DILocation(line: 376, column: 23, scope: !1076)
!1078 = !{!1042, !662, i64 72464}
!1079 = !DILocation(line: 377, column: 34, scope: !1076)
!1080 = !DILocation(line: 377, column: 60, scope: !1076)
!1081 = !DILocation(line: 377, column: 30, scope: !1076)
!1082 = !DILocation(line: 377, column: 24, scope: !1076)
!1083 = !DILocation(line: 382, column: 11, scope: !1071)
!1084 = !DILocation(line: 384, column: 57, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 384, column: 9)
!1086 = !DILocation(line: 384, column: 9, scope: !1069)
!1087 = !DILocation(line: 431, column: 57, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 431, column: 9)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 431, column: 9)
!1090 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 430, column: 7)
!1091 = !DILocation(line: 431, column: 9, scope: !1089)
!1092 = !DILocation(line: 387, column: 16, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 385, column: 9)
!1094 = !DILocation(line: 387, column: 34, scope: !1093)
!1095 = !DILocation(line: 389, column: 58, scope: !1093)
!1096 = !DILocation(line: 389, column: 23, scope: !1093)
!1097 = !DILocation(line: 389, column: 63, scope: !1093)
!1098 = !DILocation(line: 389, column: 16, scope: !1093)
!1099 = !DILocation(line: 389, column: 21, scope: !1093)
!1100 = !DILocation(line: 391, column: 55, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 391, column: 15)
!1102 = !DILocation(line: 391, column: 68, scope: !1101)
!1103 = !DILocation(line: 391, column: 15, scope: !1093)
!1104 = !DILocation(line: 393, column: 36, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 392, column: 11)
!1106 = !DILocation(line: 394, column: 18, scope: !1105)
!1107 = !DILocation(line: 394, column: 27, scope: !1105)
!1108 = !DILocation(line: 395, column: 38, scope: !1105)
!1109 = !DILocation(line: 395, column: 64, scope: !1105)
!1110 = !DILocation(line: 395, column: 34, scope: !1105)
!1111 = !DILocation(line: 395, column: 28, scope: !1105)
!1112 = !DILocation(line: 396, column: 11, scope: !1105)
!1113 = !DILocation(line: 399, column: 31, scope: !1093)
!1114 = !DILocation(line: 399, column: 37, scope: !1093)
!1115 = !DILocation(line: 399, column: 14, scope: !1093)
!1116 = !DILocation(line: 399, column: 45, scope: !1093)
!1117 = !DILocation(line: 399, column: 70, scope: !1093)
!1118 = !DILocation(line: 399, column: 42, scope: !1093)
!1119 = !DILocation(line: 398, column: 16, scope: !1093)
!1120 = !DILocation(line: 398, column: 27, scope: !1093)
!1121 = !{!1042, !663, i64 71896}
!1122 = !DILocation(line: 401, column: 22, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 401, column: 15)
!1124 = !DILocation(line: 401, column: 36, scope: !1123)
!1125 = !DILocation(line: 401, column: 15, scope: !1093)
!1126 = !DILocation(line: 402, column: 29, scope: !1123)
!1127 = !DILocation(line: 404, column: 21, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 404, column: 14)
!1129 = !{!661, !662, i64 1224}
!1130 = !DILocation(line: 404, column: 14, scope: !1128)
!1131 = !DILocation(line: 404, column: 34, scope: !1128)
!1132 = !DILocation(line: 404, column: 44, scope: !1128)
!1133 = !{!661, !662, i64 1228}
!1134 = !DILocation(line: 404, column: 37, scope: !1128)
!1135 = !DILocation(line: 404, column: 14, scope: !1093)
!1136 = !DILocation(line: 405, column: 32, scope: !1128)
!1137 = !DILocation(line: 405, column: 42, scope: !1128)
!1138 = !DILocation(line: 405, column: 63, scope: !1128)
!1139 = !DILocation(line: 405, column: 66, scope: !1128)
!1140 = !DILocation(line: 405, column: 163, scope: !1128)
!1141 = !DILocation(line: 405, column: 121, scope: !1128)
!1142 = !DILocation(line: 405, column: 110, scope: !1128)
!1143 = !DILocation(line: 405, column: 108, scope: !1128)
!1144 = !DILocation(line: 405, column: 86, scope: !1128)
!1145 = !DILocation(line: 405, column: 84, scope: !1128)
!1146 = !DILocation(line: 405, column: 28, scope: !1128)
!1147 = !DILocation(line: 405, column: 18, scope: !1128)
!1148 = !DILocation(line: 405, column: 25, scope: !1128)
!1149 = !{!1042, !662, i64 72448}
!1150 = !DILocation(line: 405, column: 13, scope: !1128)
!1151 = !DILocation(line: 407, column: 31, scope: !1128)
!1152 = !DILocation(line: 407, column: 41, scope: !1128)
!1153 = !DILocation(line: 407, column: 44, scope: !1128)
!1154 = !DILocation(line: 407, column: 142, scope: !1128)
!1155 = !DILocation(line: 407, column: 101, scope: !1128)
!1156 = !DILocation(line: 407, column: 90, scope: !1128)
!1157 = !DILocation(line: 407, column: 88, scope: !1128)
!1158 = !DILocation(line: 407, column: 66, scope: !1128)
!1159 = !DILocation(line: 407, column: 64, scope: !1128)
!1160 = !DILocation(line: 407, column: 28, scope: !1128)
!1161 = !DILocation(line: 407, column: 18, scope: !1128)
!1162 = !DILocation(line: 407, column: 25, scope: !1128)
!1163 = !DILocation(line: 409, column: 36, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 409, column: 15)
!1165 = !DILocation(line: 410, column: 60, scope: !1164)
!1166 = !DILocation(line: 410, column: 86, scope: !1164)
!1167 = !DILocation(line: 409, column: 15, scope: !1093)
!1168 = !DILocation(line: 410, column: 97, scope: !1164)
!1169 = !DILocation(line: 410, column: 83, scope: !1164)
!1170 = !DILocation(line: 410, column: 13, scope: !1164)
!1171 = !DILocation(line: 412, column: 96, scope: !1164)
!1172 = !DILocation(line: 412, column: 99, scope: !1164)
!1173 = !DILocation(line: 412, column: 83, scope: !1164)
!1174 = !DILocation(line: 412, column: 132, scope: !1164)
!1175 = !DILocation(line: 412, column: 199, scope: !1164)
!1176 = !DILocation(line: 412, column: 164, scope: !1164)
!1177 = !DILocation(line: 412, column: 204, scope: !1164)
!1178 = !DILocation(line: 412, column: 162, scope: !1164)
!1179 = !DILocation(line: 412, column: 151, scope: !1164)
!1180 = !DILocation(line: 412, column: 149, scope: !1164)
!1181 = !DILocation(line: 412, column: 121, scope: !1164)
!1182 = !DILocation(line: 412, column: 119, scope: !1164)
!1183 = !DILocation(line: 412, column: 58, scope: !1164)
!1184 = !DILocation(line: 412, column: 55, scope: !1164)
!1185 = !DILocation(line: 412, column: 13, scope: !1164)
!1186 = !DILocation(line: 414, column: 16, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 414, column: 15)
!1188 = !DILocation(line: 414, column: 23, scope: !1187)
!1189 = !{!661, !662, i64 2880}
!1190 = !DILocation(line: 414, column: 35, scope: !1187)
!1191 = !DILocation(line: 414, column: 50, scope: !1187)
!1192 = !DILocation(line: 414, column: 60, scope: !1187)
!1193 = !{!661, !662, i64 2884}
!1194 = !DILocation(line: 414, column: 71, scope: !1187)
!1195 = !DILocation(line: 414, column: 15, scope: !1093)
!1196 = !DILocation(line: 415, column: 30, scope: !1187)
!1197 = !DILocation(line: 415, column: 35, scope: !1187)
!1198 = !DILocation(line: 415, column: 18, scope: !1187)
!1199 = !DILocation(line: 415, column: 28, scope: !1187)
!1200 = !{!1042, !662, i64 72452}
!1201 = !DILocation(line: 415, column: 13, scope: !1187)
!1202 = !DILocation(line: 417, column: 30, scope: !1187)
!1203 = !DILocation(line: 417, column: 35, scope: !1187)
!1204 = !DILocation(line: 417, column: 41, scope: !1187)
!1205 = !DILocation(line: 417, column: 18, scope: !1187)
!1206 = !DILocation(line: 417, column: 28, scope: !1187)
!1207 = !DILocation(line: 419, column: 27, scope: !1093)
!1208 = !DILocation(line: 419, column: 16, scope: !1093)
!1209 = !DILocation(line: 419, column: 25, scope: !1093)
!1210 = !{!1042, !662, i64 72456}
!1211 = !DILocation(line: 421, column: 11, scope: !1093)
!1212 = !DILocation(line: 421, column: 38, scope: !1093)
!1213 = !DILocation(line: 423, column: 11, scope: !1093)
!1214 = !DILocation(line: 424, column: 15, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 424, column: 15)
!1216 = !DILocation(line: 424, column: 22, scope: !1215)
!1217 = !{!661, !662, i64 3228}
!1218 = !DILocation(line: 424, column: 15, scope: !1093)
!1219 = !DILocation(line: 425, column: 13, scope: !1215)
!1220 = !DILocation(line: 384, column: 59, scope: !1085)
!1221 = !DILocation(line: 384, column: 85, scope: !1085)
!1222 = !DILocation(line: 384, column: 90, scope: !1085)
!1223 = !DILocation(line: 384, column: 105, scope: !1085)
!1224 = !DILocation(line: 384, column: 66, scope: !1085)
!1225 = !DILocation(line: 427, column: 30, scope: !1070)
!1226 = !DILocation(line: 428, column: 7, scope: !1070)
!1227 = !DILocation(line: 434, column: 16, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 432, column: 9)
!1229 = !DILocation(line: 434, column: 34, scope: !1228)
!1230 = !DILocation(line: 435, column: 35, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 435, column: 15)
!1232 = !DILocation(line: 435, column: 15, scope: !1228)
!1233 = !DILocation(line: 437, column: 36, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !1, line: 436, column: 11)
!1235 = !DILocation(line: 438, column: 18, scope: !1234)
!1236 = !DILocation(line: 438, column: 27, scope: !1234)
!1237 = !DILocation(line: 439, column: 38, scope: !1234)
!1238 = !DILocation(line: 439, column: 64, scope: !1234)
!1239 = !DILocation(line: 439, column: 34, scope: !1234)
!1240 = !DILocation(line: 439, column: 28, scope: !1234)
!1241 = !DILocation(line: 440, column: 11, scope: !1234)
!1242 = !DILocation(line: 443, column: 31, scope: !1228)
!1243 = !DILocation(line: 443, column: 37, scope: !1228)
!1244 = !DILocation(line: 443, column: 14, scope: !1228)
!1245 = !DILocation(line: 443, column: 45, scope: !1228)
!1246 = !DILocation(line: 443, column: 70, scope: !1228)
!1247 = !DILocation(line: 443, column: 42, scope: !1228)
!1248 = !DILocation(line: 442, column: 16, scope: !1228)
!1249 = !DILocation(line: 442, column: 27, scope: !1228)
!1250 = !DILocation(line: 445, column: 22, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 445, column: 15)
!1252 = !DILocation(line: 445, column: 36, scope: !1251)
!1253 = !DILocation(line: 445, column: 15, scope: !1228)
!1254 = !DILocation(line: 446, column: 29, scope: !1251)
!1255 = !DILocation(line: 448, column: 21, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 448, column: 14)
!1257 = !DILocation(line: 448, column: 14, scope: !1256)
!1258 = !DILocation(line: 448, column: 34, scope: !1256)
!1259 = !DILocation(line: 448, column: 44, scope: !1256)
!1260 = !DILocation(line: 448, column: 37, scope: !1256)
!1261 = !DILocation(line: 448, column: 14, scope: !1228)
!1262 = !DILocation(line: 449, column: 32, scope: !1256)
!1263 = !DILocation(line: 449, column: 42, scope: !1256)
!1264 = !DILocation(line: 449, column: 64, scope: !1256)
!1265 = !DILocation(line: 449, column: 67, scope: !1256)
!1266 = !DILocation(line: 449, column: 112, scope: !1256)
!1267 = !DILocation(line: 449, column: 110, scope: !1256)
!1268 = !DILocation(line: 449, column: 87, scope: !1256)
!1269 = !DILocation(line: 449, column: 85, scope: !1256)
!1270 = !DILocation(line: 449, column: 28, scope: !1256)
!1271 = !DILocation(line: 449, column: 18, scope: !1256)
!1272 = !DILocation(line: 449, column: 25, scope: !1256)
!1273 = !DILocation(line: 449, column: 13, scope: !1256)
!1274 = !DILocation(line: 451, column: 31, scope: !1256)
!1275 = !DILocation(line: 451, column: 41, scope: !1256)
!1276 = !DILocation(line: 451, column: 44, scope: !1256)
!1277 = !DILocation(line: 451, column: 89, scope: !1256)
!1278 = !DILocation(line: 451, column: 87, scope: !1256)
!1279 = !DILocation(line: 451, column: 64, scope: !1256)
!1280 = !DILocation(line: 451, column: 62, scope: !1256)
!1281 = !DILocation(line: 451, column: 28, scope: !1256)
!1282 = !DILocation(line: 451, column: 18, scope: !1256)
!1283 = !DILocation(line: 451, column: 25, scope: !1256)
!1284 = !DILocation(line: 453, column: 23, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 453, column: 15)
!1286 = !DILocation(line: 453, column: 35, scope: !1285)
!1287 = !DILocation(line: 453, column: 50, scope: !1285)
!1288 = !DILocation(line: 453, column: 60, scope: !1285)
!1289 = !DILocation(line: 453, column: 71, scope: !1285)
!1290 = !DILocation(line: 453, column: 15, scope: !1228)
!1291 = !DILocation(line: 454, column: 18, scope: !1285)
!1292 = !DILocation(line: 454, column: 28, scope: !1285)
!1293 = !DILocation(line: 454, column: 13, scope: !1285)
!1294 = !DILocation(line: 456, column: 41, scope: !1285)
!1295 = !DILocation(line: 456, column: 18, scope: !1285)
!1296 = !DILocation(line: 456, column: 28, scope: !1285)
!1297 = !DILocation(line: 458, column: 27, scope: !1228)
!1298 = !DILocation(line: 458, column: 16, scope: !1228)
!1299 = !DILocation(line: 458, column: 25, scope: !1228)
!1300 = !DILocation(line: 461, column: 16, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 461, column: 15)
!1302 = !DILocation(line: 461, column: 15, scope: !1228)
!1303 = !DILocation(line: 463, column: 43, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 462, column: 11)
!1305 = !DILocation(line: 464, column: 11, scope: !1304)
!1306 = !DILocation(line: 467, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 466, column: 11)
!1308 = !DILocation(line: 470, column: 11, scope: !1228)
!1309 = !DILocation(line: 470, column: 38, scope: !1228)
!1310 = !DILocation(line: 472, column: 11, scope: !1228)
!1311 = !DILocation(line: 473, column: 15, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 473, column: 15)
!1313 = !DILocation(line: 473, column: 22, scope: !1312)
!1314 = !DILocation(line: 473, column: 15, scope: !1228)
!1315 = !DILocation(line: 474, column: 13, scope: !1312)
!1316 = !DILocation(line: 431, column: 59, scope: !1088)
!1317 = !DILocation(line: 431, column: 85, scope: !1088)
!1318 = !DILocation(line: 431, column: 90, scope: !1088)
!1319 = !DILocation(line: 431, column: 105, scope: !1088)
!1320 = !DILocation(line: 431, column: 66, scope: !1088)
!1321 = !DILocation(line: 435, column: 22, scope: !1231)
!1322 = !DILocation(line: 478, column: 10, scope: !97)
!1323 = !DILocation(line: 478, column: 26, scope: !97)
!1324 = !DILocation(line: 479, column: 1, scope: !97)
!1325 = !DILocation(line: 482, column: 35, scope: !98)
!1326 = !DILocation(line: 484, column: 15, scope: !98)
!1327 = !DILocation(line: 486, column: 7, scope: !98)
!1328 = !DILocation(line: 489, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !98, file: !1, line: 489, column: 7)
!1330 = !DILocation(line: 489, column: 12, scope: !1329)
!1331 = !{!1042, !656, i64 72512}
!1332 = !DILocation(line: 489, column: 38, scope: !1329)
!1333 = !DILocation(line: 489, column: 7, scope: !98)
!1334 = !DILocation(line: 492, column: 12, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !98, file: !1, line: 492, column: 7)
!1336 = !DILocation(line: 492, column: 60, scope: !1335)
!1337 = !DILocation(line: 492, column: 7, scope: !98)
!1338 = !DILocation(line: 495, column: 19, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 495, column: 3)
!1340 = distinct !DILexicalBlock(scope: !98, file: !1, line: 495, column: 3)
!1341 = !{!1342, !662, i64 28}
!1342 = !{!"decoded_picture_buffer", !656, i64 0, !656, i64 8, !656, i64 16, !662, i64 24, !662, i64 28, !662, i64 32, !662, i64 36, !662, i64 40, !662, i64 44, !662, i64 48, !656, i64 56}
!1343 = !DILocation(line: 495, column: 14, scope: !1339)
!1344 = !DILocation(line: 495, column: 3, scope: !1340)
!1345 = !DILocation(line: 497, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !1, line: 497, column: 9)
!1347 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 496, column: 3)
!1348 = !{!1342, !656, i64 0}
!1349 = !DILocation(line: 497, column: 9, scope: !1346)
!1350 = !DILocation(line: 497, column: 20, scope: !1346)
!1351 = !{!1352, !662, i64 4}
!1352 = !{!"frame_store", !662, i64 0, !662, i64 4, !662, i64 8, !662, i64 12, !662, i64 16, !662, i64 20, !662, i64 24, !662, i64 28, !662, i64 32, !662, i64 36, !656, i64 40, !656, i64 48, !656, i64 56}
!1353 = !DILocation(line: 497, column: 34, scope: !1346)
!1354 = !DILocation(line: 497, column: 51, scope: !1346)
!1355 = !{!1352, !662, i64 8}
!1356 = !DILocation(line: 497, column: 39, scope: !1346)
!1357 = !DILocation(line: 497, column: 66, scope: !1346)
!1358 = !DILocation(line: 497, column: 80, scope: !1346)
!1359 = !{!1352, !662, i64 36}
!1360 = !DILocation(line: 497, column: 84, scope: !1346)
!1361 = !DILocation(line: 497, column: 9, scope: !1347)
!1362 = !DILocation(line: 499, column: 28, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1346, file: !1, line: 498, column: 5)
!1364 = !{!1352, !656, i64 40}
!1365 = !DILocation(line: 499, column: 35, scope: !1363)
!1366 = !{!1367, !662, i64 4}
!1367 = !{!"storable_picture", !657, i64 0, !662, i64 4, !662, i64 8, !662, i64 12, !662, i64 16, !662, i64 20, !657, i64 24, !657, i64 1608, !657, i64 3192, !657, i64 4776, !662, i64 6360, !662, i64 6364, !662, i64 6368, !662, i64 6372, !662, i64 6376, !662, i64 6380, !662, i64 6384, !662, i64 6388, !662, i64 6392, !662, i64 6396, !662, i64 6400, !662, i64 6404, !662, i64 6408, !662, i64 6412, !662, i64 6416, !656, i64 6424, !656, i64 6432, !656, i64 6440, !656, i64 6448, !656, i64 6456, !656, i64 6464, !656, i64 6472, !656, i64 6480, !656, i64 6488, !656, i64 6496, !656, i64 6504, !656, i64 6512, !656, i64 6520, !656, i64 6528, !656, i64 6536, !656, i64 6544, !662, i64 6552, !662, i64 6556, !662, i64 6560, !662, i64 6564, !662, i64 6568, !662, i64 6572, !662, i64 6576}
!1368 = !DILocation(line: 500, column: 36, scope: !1363)
!1369 = !{!1367, !662, i64 6364}
!1370 = !DILocation(line: 501, column: 5, scope: !1363)
!1371 = !DILocation(line: 504, column: 44, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !98, file: !1, line: 504, column: 7)
!1373 = !DILocation(line: 504, column: 11, scope: !1372)
!1374 = !DILocation(line: 504, column: 7, scope: !98)
!1375 = !DILocation(line: 504, column: 85, scope: !1372)
!1376 = !DILocation(line: 505, column: 13, scope: !98)
!1377 = !DILocation(line: 505, column: 17, scope: !98)
!1378 = !{!1379, !656, i64 24}
!1379 = !{!"DecRefPicMarking_s", !662, i64 0, !662, i64 4, !662, i64 8, !662, i64 12, !662, i64 16, !656, i64 24}
!1380 = !DILocation(line: 507, column: 13, scope: !98)
!1381 = !DILocation(line: 507, column: 49, scope: !98)
!1382 = !{!1379, !662, i64 0}
!1383 = !DILocation(line: 509, column: 45, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !98, file: !1, line: 509, column: 7)
!1385 = !DILocation(line: 509, column: 11, scope: !1384)
!1386 = !DILocation(line: 509, column: 7, scope: !98)
!1387 = !DILocation(line: 509, column: 86, scope: !1384)
!1388 = !DILocation(line: 510, column: 14, scope: !98)
!1389 = !DILocation(line: 510, column: 18, scope: !98)
!1390 = !DILocation(line: 512, column: 14, scope: !98)
!1391 = !DILocation(line: 512, column: 50, scope: !98)
!1392 = !DILocation(line: 513, column: 62, scope: !98)
!1393 = !DILocation(line: 513, column: 72, scope: !98)
!1394 = !DILocation(line: 513, column: 14, scope: !98)
!1395 = !DILocation(line: 513, column: 44, scope: !98)
!1396 = !{!1379, !662, i64 4}
!1397 = !DILocation(line: 514, column: 3, scope: !98)
!1398 = !DILocation(line: 514, column: 8, scope: !98)
!1399 = !DILocation(line: 514, column: 35, scope: !98)
!1400 = !DILocation(line: 516, column: 1, scope: !98)
