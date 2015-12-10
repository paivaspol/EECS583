; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c'
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
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@assignSE2partition_NoDP = global [21 x i32] zeroinitializer, align 16
@assignSE2partition_DP = global [21 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@input = external global %struct.InputParameters*
@assignSE2partition = common global [2 x i32*] zeroinitializer, align 16
@img = external global %struct.ImageParameters*
@.str = private unnamed_addr constant [22 x i8] c"SH: first_mb_in_slice\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"SH: slice_type\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"SH: pic_parameter_set_id\00", align 1
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@.str3 = private unnamed_addr constant [14 x i8] c"SH: frame_num\00", align 1
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@.str4 = private unnamed_addr constant [32 x i8] c"field_pic_flag == img->fld_flag\00", align 1
@.str5 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c\00", align 1
@__PRETTY_FUNCTION__.SliceHeader = private unnamed_addr constant [18 x i8] c"int SliceHeader()\00", align 1
@.str6 = private unnamed_addr constant [19 x i8] c"SH: field_pic_flag\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"SH: bottom_field_flag\00", align 1
@.str8 = private unnamed_addr constant [15 x i8] c"SH: idr_pic_id\00", align 1
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@.str9 = private unnamed_addr constant [22 x i8] c"SH: pic_order_cnt_lsb\00", align 1
@.str10 = private unnamed_addr constant [31 x i8] c"SH: delta_pic_order_cnt_bottom\00", align 1
@.str11 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[0]\00", align 1
@.str12 = private unnamed_addr constant [27 x i8] c"SH: delta_pic_order_cnt[1]\00", align 1
@.str13 = private unnamed_addr constant [22 x i8] c"SH: redundant_pic_cnt\00", align 1
@.str14 = private unnamed_addr constant [32 x i8] c"SH: direct_spatial_mv_pred_flag\00", align 1
@.str15 = private unnamed_addr constant [37 x i8] c"SH: num_ref_idx_active_override_flag\00", align 1
@.str16 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l0_active_minus1\00", align 1
@.str17 = private unnamed_addr constant [33 x i8] c"SH: num_ref_idx_l1_active_minus1\00", align 1
@.str18 = private unnamed_addr constant [19 x i8] c"SH: cabac_init_idc\00", align 1
@.str19 = private unnamed_addr constant [19 x i8] c"SH: slice_qp_delta\00", align 1
@.str20 = private unnamed_addr constant [23 x i8] c"SH: sp_for_switch_flag\00", align 1
@.str21 = private unnamed_addr constant [19 x i8] c"SH: slice_qs_delta\00", align 1
@.str22 = private unnamed_addr constant [34 x i8] c"SH: disable_deblocking_filter_idc\00", align 1
@.str23 = private unnamed_addr constant [31 x i8] c"SH: slice_alpha_c0_offset_div2\00", align 1
@.str24 = private unnamed_addr constant [27 x i8] c"SH: slice_beta_offset_div2\00", align 1
@.str25 = private unnamed_addr constant [29 x i8] c"SH: slice_group_change_cycle\00", align 1
@.str26 = private unnamed_addr constant [14 x i8] c"DPA: slice_id\00", align 1
@.str27 = private unnamed_addr constant [28 x i8] c"Picture Type not supported!\00", align 1
@.str28 = private unnamed_addr constant [29 x i8] c"input->of_mode == PAR_OF_RTP\00", align 1
@__PRETTY_FUNCTION__.Partition_BC_Header = private unnamed_addr constant [29 x i8] c"int Partition_BC_Header(int)\00", align 1
@.str29 = private unnamed_addr constant [54 x i8] c"PartNo > 0 && PartNo < img->currentSlice->max_part_nr\00", align 1
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@img4Y_tmp = common global i32** null, align 8
@me_tot_time = common global i32 0, align 4
@me_time = common global i32 0, align 4
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
@errortext = common global [300 x i8] zeroinitializer, align 16
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
@gop_structure = common global %struct.GOP_DATA* null, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common global %struct._IO_FILE* null, align 8
@p_log = common global %struct._IO_FILE* null, align 8
@p_trace = common global %struct._IO_FILE* null, align 8
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
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@.str30 = private unnamed_addr constant [26 x i8] c"SH: luma_log_weight_denom\00", align 1
@.str31 = private unnamed_addr constant [28 x i8] c"SH: chroma_log_weight_denom\00", align 1
@.str32 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1
@.str33 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1
@.str34 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1
@.str35 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l0\00", align 1
@.str36 = private unnamed_addr constant [17 x i8] c"chroma_weight_l0\00", align 1
@.str37 = private unnamed_addr constant [17 x i8] c"chroma_offset_l0\00", align 1
@.str38 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1
@.str39 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1
@.str40 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1
@.str41 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l1\00", align 1
@.str42 = private unnamed_addr constant [17 x i8] c"chroma_weight_l1\00", align 1
@.str43 = private unnamed_addr constant [17 x i8] c"chroma_offset_l1\00", align 1
@.str44 = private unnamed_addr constant [33 x i8] c"SH: no_output_of_prior_pics_flag\00", align 1
@.str45 = private unnamed_addr constant [29 x i8] c"SH: long_term_reference_flag\00", align 1
@.str46 = private unnamed_addr constant [36 x i8] c"SH: adaptive_ref_pic_buffering_flag\00", align 1
@.str47 = private unnamed_addr constant [29 x i8] c"Error encoding MMCO commands\00", align 1
@.str48 = private unnamed_addr constant [40 x i8] c"SH: memory_management_control_operation\00", align 1
@.str49 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1
@.str50 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1
@.str51 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1
@.str52 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1
@.str53 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l0\00", align 1
@.str54 = private unnamed_addr constant [29 x i8] c"SH: remapping_of_pic_num_idc\00", align 1
@.str55 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l0\00", align 1
@.str56 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l0\00", align 1
@.str57 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l1\00", align 1
@.str58 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l1\00", align 1
@.str59 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l1\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @SliceHeader() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !675, !tbaa !676
  %partition_mode = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 61, !dbg !675
  %1 = load i32* %partition_mode, align 4, !dbg !675, !tbaa !679
  %idxprom = sext i32 %1 to i64, !dbg !675
  %arrayidx = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom, !dbg !675
  %2 = load i32** %arrayidx, align 8, !dbg !675, !tbaa !676
  %3 = load i32* %2, align 4, !dbg !675, !tbaa !679
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !61), !dbg !675
  %idxprom2 = sext i32 %3 to i64, !dbg !680
  %4 = load %struct.ImageParameters** @img, align 8, !dbg !680, !tbaa !676
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 50, !dbg !680
  %5 = load %struct.Slice** %currentSlice, align 8, !dbg !680, !tbaa !676
  %partArr = getelementptr inbounds %struct.Slice* %5, i64 0, i32 6, !dbg !680
  %6 = load %struct.datapartition** %partArr, align 8, !dbg !680, !tbaa !676
  %arrayidx3 = getelementptr inbounds %struct.datapartition* %6, i64 %idxprom2, !dbg !680
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %arrayidx3}, i64 0, metadata !62), !dbg !680
  tail call void @llvm.dbg.value(metadata !{%struct.Slice* %5}, i64 0, metadata !140), !dbg !681
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !243), !dbg !682
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !244), !dbg !683
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !245), !dbg !683
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 90, !dbg !684
  %7 = load i32* %MbaffFrameFlag, align 4, !dbg !684, !tbaa !679
  %tobool = icmp eq i32 %7, 0, !dbg !684
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 3, !dbg !685
  %8 = load i32* %current_mb_nr, align 4, !dbg !685, !tbaa !679
  br i1 %tobool, label %if.else, label %if.then, !dbg !684

if.then:                                          ; preds = %entry
  %shr = ashr i32 %8, 1, !dbg !685
  %call = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0), i32 %shr, %struct.datapartition* %arrayidx3) #7, !dbg !685
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !243), !dbg !685
  br label %if.end, !dbg !685

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0), i32 %8, %struct.datapartition* %arrayidx3) #7, !dbg !686
  tail call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !243), !dbg !686
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.0 = phi i32 [ %call, %if.then ], [ %call6, %if.else ]
  %call7 = tail call i32 @get_picture_type() #8, !dbg !687
  %call8 = tail call i32 @ue_v(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0), i32 %call7, %struct.datapartition* %arrayidx3) #7, !dbg !687
  %add = add nsw i32 %call8, %len.0, !dbg !687
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !243), !dbg !687
  %9 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !688, !tbaa !676
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %9, i64 0, i32 1, !dbg !688
  %10 = load i32* %pic_parameter_set_id, align 4, !dbg !688, !tbaa !679
  %call9 = tail call i32 @ue_v(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0), i32 %10, %struct.datapartition* %arrayidx3) #7, !dbg !688
  %add10 = add nsw i32 %add, %call9, !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32 %add10}, i64 0, metadata !243), !dbg !688
  %11 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !689, !tbaa !679
  %add11 = add i32 %11, 4, !dbg !689
  %12 = load %struct.ImageParameters** @img, align 8, !dbg !689, !tbaa !676
  %frame_num = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 105, !dbg !689
  %13 = load i32* %frame_num, align 4, !dbg !689, !tbaa !679
  %call12 = tail call i32 @u_v(i32 %add11, i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i32 %13, %struct.datapartition* %arrayidx3) #7, !dbg !689
  %add13 = add nsw i32 %add10, %call12, !dbg !689
  tail call void @llvm.dbg.value(metadata !{i32 %add13}, i64 0, metadata !243), !dbg !689
  %14 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !690, !tbaa !676
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %14, i64 0, i32 25, !dbg !690
  %15 = load i32* %frame_mbs_only_flag, align 4, !dbg !690, !tbaa !677
  %tobool14 = icmp eq i32 %15, 0, !dbg !690
  br i1 %tobool14, label %if.then15, label %if.end29, !dbg !690

if.then15:                                        ; preds = %if.end
  %16 = load %struct.ImageParameters** @img, align 8, !dbg !691, !tbaa !676
  %structure = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 7, !dbg !691
  %17 = load i32* %structure, align 4, !dbg !691, !tbaa !679
  %.off348 = add i32 %17, -1, !dbg !691
  %18 = icmp ult i32 %.off348, 2, !dbg !691
  %cond = zext i1 %18 to i32, !dbg !691
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !244), !dbg !691
  %fld_flag = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 57, !dbg !693
  %19 = load i32* %fld_flag, align 4, !dbg !693, !tbaa !679
  %cmp18 = icmp eq i32 %cond, %19, !dbg !693
  br i1 %cmp18, label %cond.end, label %cond.false, !dbg !693

cond.false:                                       ; preds = %if.then15
  tail call void @__assert_fail(i8* getelementptr inbounds ([32 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str5, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([18 x i8]* @__PRETTY_FUNCTION__.SliceHeader, i64 0, i64 0)) #9, !dbg !693
  unreachable, !dbg !693

cond.end:                                         ; preds = %if.then15
  %call19 = tail call i32 @u_1(i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0), i32 %cond, %struct.datapartition* %arrayidx3) #7, !dbg !694
  %add20 = add nsw i32 %call19, %add13, !dbg !694
  tail call void @llvm.dbg.value(metadata !{i32 %add20}, i64 0, metadata !243), !dbg !694
  br i1 %18, label %if.then22, label %if.end29, !dbg !695

if.then22:                                        ; preds = %cond.end
  %20 = load %struct.ImageParameters** @img, align 8, !dbg !696, !tbaa !676
  %structure23 = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 7, !dbg !696
  %21 = load i32* %structure23, align 4, !dbg !696, !tbaa !679
  %cmp24 = icmp eq i32 %21, 2, !dbg !696
  %cond25 = zext i1 %cmp24 to i32, !dbg !696
  tail call void @llvm.dbg.value(metadata !{i32 %cond25}, i64 0, metadata !245), !dbg !696
  %call26 = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i32 %cond25, %struct.datapartition* %arrayidx3) #7, !dbg !698
  %add27 = add nsw i32 %call26, %add20, !dbg !698
  tail call void @llvm.dbg.value(metadata !{i32 %add27}, i64 0, metadata !243), !dbg !698
  br label %if.end29, !dbg !699

if.end29:                                         ; preds = %if.end, %cond.end, %if.then22
  %field_pic_flag.0 = phi i32 [ 0, %if.end ], [ %cond, %if.then22 ], [ %cond, %cond.end ]
  %len.1 = phi i32 [ %add13, %if.end ], [ %add27, %if.then22 ], [ %add20, %cond.end ]
  %22 = load %struct.ImageParameters** @img, align 8, !dbg !700, !tbaa !676
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 49, !dbg !700
  %23 = load %struct.Picture** %currentPicture, align 8, !dbg !700, !tbaa !676
  %idr_flag = getelementptr inbounds %struct.Picture* %23, i64 0, i32 1, !dbg !700
  %24 = load i32* %idr_flag, align 4, !dbg !700, !tbaa !679
  %tobool30 = icmp eq i32 %24, 0, !dbg !700
  br i1 %tobool30, label %if.end34, label %if.then31, !dbg !700

if.then31:                                        ; preds = %if.end29
  %number = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 0, !dbg !701
  %25 = load i32* %number, align 4, !dbg !701, !tbaa !679
  %rem = srem i32 %25, 2, !dbg !701
  %call32 = tail call i32 @ue_v(i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i32 %rem, %struct.datapartition* %arrayidx3) #7, !dbg !701
  %add33 = add nsw i32 %call32, %len.1, !dbg !701
  tail call void @llvm.dbg.value(metadata !{i32 %add33}, i64 0, metadata !243), !dbg !701
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !703, !tbaa !676
  br label %if.end34, !dbg !704

if.end34:                                         ; preds = %if.end29, %if.then31
  %26 = phi %struct.ImageParameters* [ %.pre, %if.then31 ], [ %22, %if.end29 ]
  %len.2 = phi i32 [ %add33, %if.then31 ], [ %len.1, %if.end29 ]
  %pic_order_cnt_type = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 91, !dbg !703
  %27 = load i32* %pic_order_cnt_type, align 4, !dbg !703, !tbaa !679
  %cmp35 = icmp eq i32 %27, 0, !dbg !703
  br i1 %cmp35, label %if.then36, label %if.end74, !dbg !703

if.then36:                                        ; preds = %if.end34
  %28 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !705, !tbaa !676
  %frame_mbs_only_flag37 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %28, i64 0, i32 25, !dbg !705
  %29 = load i32* %frame_mbs_only_flag37, align 4, !dbg !705, !tbaa !677
  %tobool38 = icmp eq i32 %29, 0, !dbg !705
  br i1 %tobool38, label %if.else41, label %if.then39, !dbg !705

if.then39:                                        ; preds = %if.then36
  %toppoc = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 101, !dbg !707
  %30 = load i32* %toppoc, align 4, !dbg !707, !tbaa !679
  %31 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !707, !tbaa !679
  %add40 = add i32 %31, 4, !dbg !707
  %shl = shl i32 -1, %add40, !dbg !707
  %neg = xor i32 %shl, -1, !dbg !707
  %and = and i32 %30, %neg, !dbg !707
  %pic_order_cnt_lsb = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 97, !dbg !707
  store i32 %and, i32* %pic_order_cnt_lsb, align 4, !dbg !707, !tbaa !679
  br label %if.end63, !dbg !709

if.else41:                                        ; preds = %if.then36
  %tobool42 = icmp eq i32 %field_pic_flag.0, 0, !dbg !710
  br i1 %tobool42, label %if.then45, label %lor.lhs.false, !dbg !710

lor.lhs.false:                                    ; preds = %if.else41
  %structure43 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 7, !dbg !710
  %32 = load i32* %structure43, align 4, !dbg !710, !tbaa !679
  switch i32 %32, label %lor.lhs.false.if.end63_crit_edge [
    i32 1, label %if.then45
    i32 2, label %if.then55
  ], !dbg !710

lor.lhs.false.if.end63_crit_edge:                 ; preds = %lor.lhs.false
  %pic_order_cnt_lsb65.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 97
  %.pre354 = load i32* %pic_order_cnt_lsb65.phi.trans.insert, align 4, !dbg !712, !tbaa !679
  br label %if.end63, !dbg !710

if.then45:                                        ; preds = %lor.lhs.false, %if.else41
  %toppoc46 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 101, !dbg !713
  %33 = load i32* %toppoc46, align 4, !dbg !713, !tbaa !679
  %34 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !713, !tbaa !679
  %add47 = add i32 %34, 4, !dbg !713
  %shl48 = shl i32 -1, %add47, !dbg !713
  %neg49 = xor i32 %shl48, -1, !dbg !713
  %and50 = and i32 %33, %neg49, !dbg !713
  %pic_order_cnt_lsb51 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 97, !dbg !713
  store i32 %and50, i32* %pic_order_cnt_lsb51, align 4, !dbg !713, !tbaa !679
  br label %if.end63, !dbg !713

if.then55:                                        ; preds = %lor.lhs.false
  %bottompoc = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 102, !dbg !714
  %35 = load i32* %bottompoc, align 4, !dbg !714, !tbaa !679
  %36 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !714, !tbaa !679
  %add56 = add i32 %36, 4, !dbg !714
  %shl57 = shl i32 -1, %add56, !dbg !714
  %neg58 = xor i32 %shl57, -1, !dbg !714
  %and59 = and i32 %35, %neg58, !dbg !714
  %pic_order_cnt_lsb60 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 97, !dbg !714
  store i32 %and59, i32* %pic_order_cnt_lsb60, align 4, !dbg !714, !tbaa !679
  br label %if.end63, !dbg !714

if.end63:                                         ; preds = %lor.lhs.false.if.end63_crit_edge, %if.then45, %if.then55, %if.then39
  %37 = phi i32 [ %.pre354, %lor.lhs.false.if.end63_crit_edge ], [ %and50, %if.then45 ], [ %and59, %if.then55 ], [ %and, %if.then39 ]
  %38 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !712, !tbaa !679
  %add64 = add i32 %38, 4, !dbg !712
  %call66 = tail call i32 @u_v(i32 %add64, i8* getelementptr inbounds ([22 x i8]* @.str9, i64 0, i64 0), i32 %37, %struct.datapartition* %arrayidx3) #7, !dbg !712
  %add67 = add nsw i32 %call66, %len.2, !dbg !712
  tail call void @llvm.dbg.value(metadata !{i32 %add67}, i64 0, metadata !243), !dbg !712
  %39 = load %struct.ImageParameters** @img, align 8, !dbg !715, !tbaa !676
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 112, !dbg !715
  %40 = load i32* %pic_order_present_flag, align 4, !dbg !715, !tbaa !679
  %tobool68 = icmp ne i32 %40, 0, !dbg !715
  %tobool69 = icmp eq i32 %field_pic_flag.0, 0, !dbg !715
  %or.cond = and i1 %tobool68, %tobool69, !dbg !715
  br i1 %or.cond, label %if.then70, label %if.end74, !dbg !715

if.then70:                                        ; preds = %if.end63
  %delta_pic_order_cnt_bottom = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 98, !dbg !716
  %41 = load i32* %delta_pic_order_cnt_bottom, align 4, !dbg !716, !tbaa !679
  %call71 = tail call i32 @se_v(i8* getelementptr inbounds ([31 x i8]* @.str10, i64 0, i64 0), i32 %41, %struct.datapartition* %arrayidx3) #7, !dbg !716
  %add72 = add nsw i32 %call71, %add67, !dbg !716
  tail call void @llvm.dbg.value(metadata !{i32 %add72}, i64 0, metadata !243), !dbg !716
  %.pre351 = load %struct.ImageParameters** @img, align 8, !dbg !718, !tbaa !676
  br label %if.end74, !dbg !719

if.end74:                                         ; preds = %if.end63, %if.then70, %if.end34
  %42 = phi %struct.ImageParameters* [ %.pre351, %if.then70 ], [ %26, %if.end34 ], [ %39, %if.end63 ]
  %len.3 = phi i32 [ %add72, %if.then70 ], [ %len.2, %if.end34 ], [ %add67, %if.end63 ]
  %pic_order_cnt_type75 = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 91, !dbg !718
  %43 = load i32* %pic_order_cnt_type75, align 4, !dbg !718, !tbaa !679
  %cmp76 = icmp eq i32 %43, 1, !dbg !718
  br i1 %cmp76, label %land.lhs.true77, label %if.end93, !dbg !718

land.lhs.true77:                                  ; preds = %if.end74
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 92, !dbg !718
  %44 = load i32* %delta_pic_order_always_zero_flag, align 4, !dbg !718, !tbaa !679
  %tobool78 = icmp eq i32 %44, 0, !dbg !718
  br i1 %tobool78, label %if.then79, label %if.end93, !dbg !718

if.then79:                                        ; preds = %land.lhs.true77
  %arrayidx80 = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 99, i64 0, !dbg !720
  %45 = load i32* %arrayidx80, align 4, !dbg !720, !tbaa !679
  %call81 = tail call i32 @se_v(i8* getelementptr inbounds ([27 x i8]* @.str11, i64 0, i64 0), i32 %45, %struct.datapartition* %arrayidx3) #7, !dbg !720
  %add82 = add nsw i32 %call81, %len.3, !dbg !720
  tail call void @llvm.dbg.value(metadata !{i32 %add82}, i64 0, metadata !243), !dbg !720
  %46 = load %struct.ImageParameters** @img, align 8, !dbg !722, !tbaa !676
  %pic_order_present_flag83 = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 112, !dbg !722
  %47 = load i32* %pic_order_present_flag83, align 4, !dbg !722, !tbaa !679
  %tobool84 = icmp ne i32 %47, 0, !dbg !722
  %tobool86 = icmp eq i32 %field_pic_flag.0, 0, !dbg !722
  %or.cond300 = and i1 %tobool84, %tobool86, !dbg !722
  br i1 %or.cond300, label %if.then87, label %if.end93, !dbg !722

if.then87:                                        ; preds = %if.then79
  %arrayidx89 = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 99, i64 1, !dbg !723
  %48 = load i32* %arrayidx89, align 4, !dbg !723, !tbaa !679
  %call90 = tail call i32 @se_v(i8* getelementptr inbounds ([27 x i8]* @.str12, i64 0, i64 0), i32 %48, %struct.datapartition* %arrayidx3) #7, !dbg !723
  %add91 = add nsw i32 %call90, %add82, !dbg !723
  tail call void @llvm.dbg.value(metadata !{i32 %add91}, i64 0, metadata !243), !dbg !723
  br label %if.end93, !dbg !725

if.end93:                                         ; preds = %if.then79, %land.lhs.true77, %if.then87, %if.end74
  %len.4 = phi i32 [ %len.3, %land.lhs.true77 ], [ %add91, %if.then87 ], [ %add82, %if.then79 ], [ %len.3, %if.end74 ]
  %49 = load %struct.InputParameters** @input, align 8, !dbg !726, !tbaa !676
  %redundant_slice_flag = getelementptr inbounds %struct.InputParameters* %49, i64 0, i32 119, !dbg !726
  %50 = load i32* %redundant_slice_flag, align 4, !dbg !726, !tbaa !679
  %tobool94 = icmp eq i32 %50, 0, !dbg !726
  br i1 %tobool94, label %if.end98, label %if.then95, !dbg !726

if.then95:                                        ; preds = %if.end93
  %51 = load %struct.ImageParameters** @img, align 8, !dbg !727, !tbaa !676
  %redundant_pic_cnt = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 89, !dbg !727
  %52 = load i32* %redundant_pic_cnt, align 4, !dbg !727, !tbaa !679
  %call96 = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str13, i64 0, i64 0), i32 %52, %struct.datapartition* %arrayidx3) #7, !dbg !727
  %add97 = add nsw i32 %call96, %len.4, !dbg !727
  tail call void @llvm.dbg.value(metadata !{i32 %add97}, i64 0, metadata !243), !dbg !727
  br label %if.end98, !dbg !729

if.end98:                                         ; preds = %if.end93, %if.then95
  %len.5 = phi i32 [ %add97, %if.then95 ], [ %len.4, %if.end93 ]
  %53 = load %struct.ImageParameters** @img, align 8, !dbg !730, !tbaa !676
  %type = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 6, !dbg !730
  %54 = load i32* %type, align 4, !dbg !730, !tbaa !679
  %cmp99 = icmp eq i32 %54, 1, !dbg !730
  br i1 %cmp99, label %if.then100, label %if.end103, !dbg !730

if.then100:                                       ; preds = %if.end98
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 78, !dbg !731
  %55 = load i32* %direct_spatial_mv_pred_flag, align 4, !dbg !731, !tbaa !679
  %call101 = tail call i32 @u_1(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0), i32 %55, %struct.datapartition* %arrayidx3) #7, !dbg !731
  %add102 = add nsw i32 %call101, %len.5, !dbg !731
  tail call void @llvm.dbg.value(metadata !{i32 %add102}, i64 0, metadata !243), !dbg !731
  %.pre352 = load %struct.ImageParameters** @img, align 8, !dbg !733, !tbaa !676
  %type104.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre352, i64 0, i32 6
  %.pre353 = load i32* %type104.phi.trans.insert, align 4, !dbg !733, !tbaa !679
  br label %if.end103, !dbg !734

if.end103:                                        ; preds = %if.then100, %if.end98
  %56 = phi i32 [ %.pre353, %if.then100 ], [ %54, %if.end98 ]
  %57 = phi %struct.ImageParameters* [ %.pre352, %if.then100 ], [ %53, %if.end98 ]
  %len.6 = phi i32 [ %add102, %if.then100 ], [ %len.5, %if.end98 ]
  switch i32 %56, label %if.end149 [
    i32 0, label %if.then118
    i32 3, label %if.then118
    i32 1, label %if.else122
  ], !dbg !733

if.then118:                                       ; preds = %if.end103, %if.end103
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters* %57, i64 0, i32 79, !dbg !735
  %58 = load i32* %num_ref_idx_l0_active, align 4, !dbg !735, !tbaa !679
  %59 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !735, !tbaa !676
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %59, i64 0, i32 17, !dbg !735
  %60 = load i32* %num_ref_idx_l0_active_minus1, align 4, !dbg !735, !tbaa !679
  %add119 = add nsw i32 %60, 1, !dbg !735
  %cmp120 = icmp ne i32 %58, %add119, !dbg !735
  tail call void @llvm.dbg.value(metadata !{i32 %cond121}, i64 0, metadata !249), !dbg !735
  %cond121359 = zext i1 %cmp120 to i32, !dbg !735
  %call133360 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str15, i64 0, i64 0), i32 %cond121359, %struct.datapartition* %arrayidx3) #7, !dbg !737
  %add134361 = add nsw i32 %call133360, %len.6, !dbg !737
  tail call void @llvm.dbg.value(metadata !{i32 %add134358}, i64 0, metadata !243), !dbg !737
  br i1 %cmp120, label %if.then136, label %if.end149, !dbg !738

if.else122:                                       ; preds = %if.end103
  %num_ref_idx_l0_active123 = getelementptr inbounds %struct.ImageParameters* %57, i64 0, i32 79, !dbg !739
  %61 = load i32* %num_ref_idx_l0_active123, align 4, !dbg !739, !tbaa !679
  %62 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !739, !tbaa !676
  %num_ref_idx_l0_active_minus1124 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %62, i64 0, i32 17, !dbg !739
  %63 = load i32* %num_ref_idx_l0_active_minus1124, align 4, !dbg !739, !tbaa !679
  %add125 = add nsw i32 %63, 1, !dbg !739
  %cmp126 = icmp eq i32 %61, %add125, !dbg !739
  br i1 %cmp126, label %if.end132, label %if.end132.thread, !dbg !739

if.end132.thread:                                 ; preds = %if.else122
  %call133356 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str15, i64 0, i64 0), i32 1, %struct.datapartition* %arrayidx3) #7, !dbg !737
  %add134357 = add nsw i32 %call133356, %len.6, !dbg !737
  tail call void @llvm.dbg.value(metadata !{i32 %add134358}, i64 0, metadata !243), !dbg !737
  br label %if.then136, !dbg !738

if.end132:                                        ; preds = %if.else122
  %num_ref_idx_l1_active = getelementptr inbounds %struct.ImageParameters* %57, i64 0, i32 80, !dbg !739
  %64 = load i32* %num_ref_idx_l1_active, align 4, !dbg !739, !tbaa !679
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %62, i64 0, i32 18, !dbg !739
  %65 = load i32* %num_ref_idx_l1_active_minus1, align 4, !dbg !739, !tbaa !679
  %add128 = add nsw i32 %65, 1, !dbg !739
  %cmp129 = icmp ne i32 %64, %add128, !dbg !739
  %cond121 = zext i1 %cmp129 to i32, !dbg !735
  %call133 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str15, i64 0, i64 0), i32 %cond121, %struct.datapartition* %arrayidx3) #7, !dbg !737
  %add134 = add nsw i32 %call133, %len.6, !dbg !737
  tail call void @llvm.dbg.value(metadata !{i32 %add134358}, i64 0, metadata !243), !dbg !737
  br i1 %cmp129, label %if.then136, label %if.end149, !dbg !738

if.then136:                                       ; preds = %if.then118, %if.end132.thread, %if.end132
  %add134358 = phi i32 [ %add134357, %if.end132.thread ], [ %add134, %if.end132 ], [ %add134361, %if.then118 ]
  %66 = load %struct.ImageParameters** @img, align 8, !dbg !741, !tbaa !676
  %num_ref_idx_l0_active137 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 79, !dbg !741
  %67 = load i32* %num_ref_idx_l0_active137, align 4, !dbg !741, !tbaa !679
  %sub = add nsw i32 %67, -1, !dbg !741
  %call138 = tail call i32 @ue_v(i8* getelementptr inbounds ([33 x i8]* @.str16, i64 0, i64 0), i32 %sub, %struct.datapartition* %arrayidx3) #7, !dbg !741
  %add139 = add nsw i32 %call138, %add134358, !dbg !741
  tail call void @llvm.dbg.value(metadata !{i32 %add139}, i64 0, metadata !243), !dbg !741
  %68 = load %struct.ImageParameters** @img, align 8, !dbg !743, !tbaa !676
  %type140 = getelementptr inbounds %struct.ImageParameters* %68, i64 0, i32 6, !dbg !743
  %69 = load i32* %type140, align 4, !dbg !743, !tbaa !679
  %cmp141 = icmp eq i32 %69, 1, !dbg !743
  br i1 %cmp141, label %if.then142, label %if.end149, !dbg !743

if.then142:                                       ; preds = %if.then136
  %num_ref_idx_l1_active143 = getelementptr inbounds %struct.ImageParameters* %68, i64 0, i32 80, !dbg !744
  %70 = load i32* %num_ref_idx_l1_active143, align 4, !dbg !744, !tbaa !679
  %sub144 = add nsw i32 %70, -1, !dbg !744
  %call145 = tail call i32 @ue_v(i8* getelementptr inbounds ([33 x i8]* @.str17, i64 0, i64 0), i32 %sub144, %struct.datapartition* %arrayidx3) #7, !dbg !744
  %add146 = add nsw i32 %call145, %add139, !dbg !744
  tail call void @llvm.dbg.value(metadata !{i32 %add146}, i64 0, metadata !243), !dbg !744
  br label %if.end149, !dbg !746

if.end149:                                        ; preds = %if.end103, %if.then136, %if.end132, %if.then118, %if.then142
  %len.7 = phi i32 [ %add146, %if.then142 ], [ %len.6, %if.end103 ], [ %add134361, %if.then118 ], [ %add134, %if.end132 ], [ %add139, %if.then136 ]
  %71 = load %struct.InputParameters** @input, align 8, !dbg !747, !tbaa !676
  %partition_mode.i = getelementptr inbounds %struct.InputParameters* %71, i64 0, i32 61, !dbg !747
  %72 = load i32* %partition_mode.i, align 4, !dbg !747, !tbaa !679
  %idxprom.i = sext i32 %72 to i64, !dbg !747
  %arrayidx.i = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom.i, !dbg !747
  %73 = load i32** %arrayidx.i, align 8, !dbg !747, !tbaa !676
  %74 = load i32* %73, align 4, !dbg !747, !tbaa !679
  tail call void @llvm.dbg.value(metadata !{i32 %74}, i64 0, metadata !749) #6, !dbg !747
  %idxprom2.i = sext i32 %74 to i64, !dbg !750
  %75 = load %struct.ImageParameters** @img, align 8, !dbg !750, !tbaa !676
  %currentSlice.i = getelementptr inbounds %struct.ImageParameters* %75, i64 0, i32 50, !dbg !750
  %76 = load %struct.Slice** %currentSlice.i, align 8, !dbg !750, !tbaa !676
  %partArr.i = getelementptr inbounds %struct.Slice* %76, i64 0, i32 6, !dbg !750
  %77 = load %struct.datapartition** %partArr.i, align 8, !dbg !750, !tbaa !676
  %arrayidx3.i = getelementptr inbounds %struct.datapartition* %77, i64 %idxprom2.i, !dbg !750
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %arrayidx3.i}, i64 0, metadata !751) #6, !dbg !750
  tail call void @llvm.dbg.value(metadata !{%struct.Slice* %76}, i64 0, metadata !752) #6, !dbg !753
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !754) #6, !dbg !755
  %type.i = getelementptr inbounds %struct.ImageParameters* %75, i64 0, i32 6, !dbg !756
  %78 = load i32* %type.i, align 4, !dbg !756, !tbaa !679
  %cmp.i = icmp eq i32 %78, 2, !dbg !756
  br i1 %cmp.i, label %if.end39.i, label %if.then.i, !dbg !756

if.then.i:                                        ; preds = %if.end149
  %ref_pic_list_reordering_flag_l0.i = getelementptr inbounds %struct.Slice* %76, i64 0, i32 10, !dbg !757
  %79 = load i32* %ref_pic_list_reordering_flag_l0.i, align 4, !dbg !757, !tbaa !679
  %call.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str53, i64 0, i64 0), i32 %79, %struct.datapartition* %arrayidx3.i) #7, !dbg !757
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !754) #6, !dbg !757
  %80 = load i32* %ref_pic_list_reordering_flag_l0.i, align 4, !dbg !759, !tbaa !679
  %tobool.i = icmp eq i32 %80, 0, !dbg !759
  br i1 %tobool.i, label %if.end39.i, label %do.body.preheader.i, !dbg !759

do.body.preheader.i:                              ; preds = %if.then.i
  %remapping_of_pic_nums_idc_l0.i = getelementptr inbounds %struct.Slice* %76, i64 0, i32 11, !dbg !760
  %abs_diff_pic_num_minus1_l0.i = getelementptr inbounds %struct.Slice* %76, i64 0, i32 12, !dbg !763
  %long_term_pic_idx_l0.i = getelementptr inbounds %struct.Slice* %76, i64 0, i32 13, !dbg !765
  %.pre137.i = load i32** %remapping_of_pic_nums_idc_l0.i, align 8, !dbg !760, !tbaa !676
  br label %do.body.i, !dbg !768

do.body.i:                                        ; preds = %do.cond.i, %do.body.preheader.i
  %81 = phi i32* [ %.pre137.i, %do.body.preheader.i ], [ %89, %do.cond.i ]
  %indvars.iv135.i = phi i64 [ -1, %do.body.preheader.i ], [ %indvars.iv.next136.i, %do.cond.i ]
  %len.0.i = phi i32 [ %call.i, %do.body.preheader.i ], [ %len.1.i, %do.cond.i ]
  %indvars.iv.next136.i = add i64 %indvars.iv135.i, 1, !dbg !769
  %arrayidx8.i = getelementptr inbounds i32* %81, i64 %indvars.iv.next136.i, !dbg !760
  %82 = load i32* %arrayidx8.i, align 4, !dbg !760, !tbaa !679
  %call9.i = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str54, i64 0, i64 0), i32 %82, %struct.datapartition* %arrayidx3.i) #7, !dbg !760
  %add10.i = add nsw i32 %call9.i, %len.0.i, !dbg !760
  tail call void @llvm.dbg.value(metadata !{i32 %add10.i}, i64 0, metadata !754) #6, !dbg !760
  %83 = load i32** %remapping_of_pic_nums_idc_l0.i, align 8, !dbg !770, !tbaa !676
  %arrayidx13.i = getelementptr inbounds i32* %83, i64 %indvars.iv.next136.i, !dbg !770
  %84 = load i32* %arrayidx13.i, align 4, !dbg !770, !tbaa !679
  switch i32 %84, label %do.cond.i [
    i32 0, label %if.then19.i
    i32 1, label %if.then19.i
    i32 2, label %if.then28.i
  ], !dbg !770

if.then19.i:                                      ; preds = %do.body.i, %do.body.i
  %85 = load i32** %abs_diff_pic_num_minus1_l0.i, align 8, !dbg !763, !tbaa !676
  %arrayidx21.i = getelementptr inbounds i32* %85, i64 %indvars.iv.next136.i, !dbg !763
  %86 = load i32* %arrayidx21.i, align 4, !dbg !763, !tbaa !679
  %call22.i = tail call i32 @ue_v(i8* getelementptr inbounds ([31 x i8]* @.str55, i64 0, i64 0), i32 %86, %struct.datapartition* %arrayidx3.i) #7, !dbg !763
  %add23.i = add nsw i32 %call22.i, %add10.i, !dbg !763
  tail call void @llvm.dbg.value(metadata !{i32 %add23.i}, i64 0, metadata !754) #6, !dbg !763
  br label %do.cond.i, !dbg !771

if.then28.i:                                      ; preds = %do.body.i
  %87 = load i32** %long_term_pic_idx_l0.i, align 8, !dbg !765, !tbaa !676
  %arrayidx30.i = getelementptr inbounds i32* %87, i64 %indvars.iv.next136.i, !dbg !765
  %88 = load i32* %arrayidx30.i, align 4, !dbg !765, !tbaa !679
  %call31.i = tail call i32 @ue_v(i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0), i32 %88, %struct.datapartition* %arrayidx3.i) #7, !dbg !765
  %add32.i = add nsw i32 %call31.i, %add10.i, !dbg !765
  tail call void @llvm.dbg.value(metadata !{i32 %add32.i}, i64 0, metadata !754) #6, !dbg !765
  br label %do.cond.i, !dbg !772

do.cond.i:                                        ; preds = %if.then28.i, %if.then19.i, %do.body.i
  %len.1.i = phi i32 [ %add23.i, %if.then19.i ], [ %add32.i, %if.then28.i ], [ %add10.i, %do.body.i ]
  %89 = load i32** %remapping_of_pic_nums_idc_l0.i, align 8, !dbg !769, !tbaa !676
  %arrayidx36.i = getelementptr inbounds i32* %89, i64 %indvars.iv.next136.i, !dbg !769
  %90 = load i32* %arrayidx36.i, align 4, !dbg !769, !tbaa !679
  %cmp37.i = icmp eq i32 %90, 3, !dbg !769
  br i1 %cmp37.i, label %if.end39.i, label %do.body.i, !dbg !769

if.end39.i:                                       ; preds = %do.cond.i, %if.then.i, %if.end149
  %len.2.i = phi i32 [ 0, %if.end149 ], [ %call.i, %if.then.i ], [ %len.1.i, %do.cond.i ]
  %91 = load %struct.ImageParameters** @img, align 8, !dbg !773, !tbaa !676
  %type40.i = getelementptr inbounds %struct.ImageParameters* %91, i64 0, i32 6, !dbg !773
  %92 = load i32* %type40.i, align 4, !dbg !773, !tbaa !679
  %cmp41.i = icmp eq i32 %92, 1, !dbg !773
  br i1 %cmp41.i, label %if.then42.i, label %ref_pic_list_reordering.exit, !dbg !773

if.then42.i:                                      ; preds = %if.end39.i
  %ref_pic_list_reordering_flag_l1.i = getelementptr inbounds %struct.Slice* %76, i64 0, i32 14, !dbg !774
  %93 = load i32* %ref_pic_list_reordering_flag_l1.i, align 4, !dbg !774, !tbaa !679
  %call43.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str57, i64 0, i64 0), i32 %93, %struct.datapartition* %arrayidx3.i) #7, !dbg !774
  %add44.i = add nsw i32 %call43.i, %len.2.i, !dbg !774
  tail call void @llvm.dbg.value(metadata !{i32 %add44.i}, i64 0, metadata !754) #6, !dbg !774
  %94 = load i32* %ref_pic_list_reordering_flag_l1.i, align 4, !dbg !776, !tbaa !679
  %tobool46.i = icmp eq i32 %94, 0, !dbg !776
  br i1 %tobool46.i, label %ref_pic_list_reordering.exit, label %do.body48.preheader.i, !dbg !776

do.body48.preheader.i:                            ; preds = %if.then42.i
  %remapping_of_pic_nums_idc_l1.i = getelementptr inbounds %struct.Slice* %76, i64 0, i32 15, !dbg !777
  %abs_diff_pic_num_minus1_l1.i = getelementptr inbounds %struct.Slice* %76, i64 0, i32 16, !dbg !780
  %long_term_pic_idx_l1.i = getelementptr inbounds %struct.Slice* %76, i64 0, i32 17, !dbg !782
  %.pre.i = load i32** %remapping_of_pic_nums_idc_l1.i, align 8, !dbg !777, !tbaa !676
  br label %do.body48.i, !dbg !785

do.body48.i:                                      ; preds = %do.cond80.i, %do.body48.preheader.i
  %95 = phi i32* [ %.pre.i, %do.body48.preheader.i ], [ %103, %do.cond80.i ]
  %indvars.iv.i = phi i64 [ -1, %do.body48.preheader.i ], [ %indvars.iv.next.i, %do.cond80.i ]
  %len.3.i = phi i32 [ %add44.i, %do.body48.preheader.i ], [ %len.4.i, %do.cond80.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !786
  %arrayidx51.i = getelementptr inbounds i32* %95, i64 %indvars.iv.next.i, !dbg !777
  %96 = load i32* %arrayidx51.i, align 4, !dbg !777, !tbaa !679
  %call52.i = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str54, i64 0, i64 0), i32 %96, %struct.datapartition* %arrayidx3.i) #7, !dbg !777
  %add53.i = add nsw i32 %call52.i, %len.3.i, !dbg !777
  tail call void @llvm.dbg.value(metadata !{i32 %add53.i}, i64 0, metadata !754) #6, !dbg !777
  %97 = load i32** %remapping_of_pic_nums_idc_l1.i, align 8, !dbg !787, !tbaa !676
  %arrayidx56.i = getelementptr inbounds i32* %97, i64 %indvars.iv.next.i, !dbg !787
  %98 = load i32* %arrayidx56.i, align 4, !dbg !787, !tbaa !679
  switch i32 %98, label %do.cond80.i [
    i32 0, label %if.then63.i
    i32 1, label %if.then63.i
    i32 2, label %if.then73.i
  ], !dbg !787

if.then63.i:                                      ; preds = %do.body48.i, %do.body48.i
  %99 = load i32** %abs_diff_pic_num_minus1_l1.i, align 8, !dbg !780, !tbaa !676
  %arrayidx65.i = getelementptr inbounds i32* %99, i64 %indvars.iv.next.i, !dbg !780
  %100 = load i32* %arrayidx65.i, align 4, !dbg !780, !tbaa !679
  %call66.i = tail call i32 @ue_v(i8* getelementptr inbounds ([31 x i8]* @.str58, i64 0, i64 0), i32 %100, %struct.datapartition* %arrayidx3.i) #7, !dbg !780
  %add67.i = add nsw i32 %call66.i, %add53.i, !dbg !780
  tail call void @llvm.dbg.value(metadata !{i32 %add67.i}, i64 0, metadata !754) #6, !dbg !780
  br label %do.cond80.i, !dbg !788

if.then73.i:                                      ; preds = %do.body48.i
  %101 = load i32** %long_term_pic_idx_l1.i, align 8, !dbg !782, !tbaa !676
  %arrayidx75.i = getelementptr inbounds i32* %101, i64 %indvars.iv.next.i, !dbg !782
  %102 = load i32* %arrayidx75.i, align 4, !dbg !782, !tbaa !679
  %call76.i = tail call i32 @ue_v(i8* getelementptr inbounds ([25 x i8]* @.str59, i64 0, i64 0), i32 %102, %struct.datapartition* %arrayidx3.i) #7, !dbg !782
  %add77.i = add nsw i32 %call76.i, %add53.i, !dbg !782
  tail call void @llvm.dbg.value(metadata !{i32 %add77.i}, i64 0, metadata !754) #6, !dbg !782
  br label %do.cond80.i, !dbg !789

do.cond80.i:                                      ; preds = %if.then73.i, %if.then63.i, %do.body48.i
  %len.4.i = phi i32 [ %add67.i, %if.then63.i ], [ %add77.i, %if.then73.i ], [ %add53.i, %do.body48.i ]
  %103 = load i32** %remapping_of_pic_nums_idc_l1.i, align 8, !dbg !786, !tbaa !676
  %arrayidx83.i = getelementptr inbounds i32* %103, i64 %indvars.iv.next.i, !dbg !786
  %104 = load i32* %arrayidx83.i, align 4, !dbg !786, !tbaa !679
  %cmp84.i = icmp eq i32 %104, 3, !dbg !786
  br i1 %cmp84.i, label %ref_pic_list_reordering.exit, label %do.body48.i, !dbg !786

ref_pic_list_reordering.exit:                     ; preds = %do.cond80.i, %if.then42.i, %if.end39.i
  %len.5.i = phi i32 [ %len.2.i, %if.end39.i ], [ %add44.i, %if.then42.i ], [ %len.4.i, %do.cond80.i ]
  %add151 = add nsw i32 %len.5.i, %len.7, !dbg !748
  tail call void @llvm.dbg.value(metadata !{i32 %add151}, i64 0, metadata !243), !dbg !748
  %105 = load %struct.ImageParameters** @img, align 8, !dbg !790, !tbaa !676
  %type152 = getelementptr inbounds %struct.ImageParameters* %105, i64 0, i32 6, !dbg !790
  %106 = load i32* %type152, align 4, !dbg !790, !tbaa !679
  switch i32 %106, label %if.end167 [
    i32 0, label %land.lhs.true157
    i32 3, label %land.lhs.true157
    i32 1, label %land.lhs.true162
  ], !dbg !790

land.lhs.true157:                                 ; preds = %ref_pic_list_reordering.exit, %ref_pic_list_reordering.exit
  %107 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !790, !tbaa !676
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %107, i64 0, i32 19, !dbg !790
  %108 = load i32* %weighted_pred_flag, align 4, !dbg !790, !tbaa !677
  %tobool158 = icmp eq i32 %108, 0, !dbg !790
  br i1 %tobool158, label %lor.lhs.false159, label %if.then164, !dbg !790

lor.lhs.false159:                                 ; preds = %land.lhs.true157
  %cmp161 = icmp eq i32 %106, 1, !dbg !790
  br i1 %cmp161, label %land.lhs.true162, label %if.end167, !dbg !790

land.lhs.true162:                                 ; preds = %ref_pic_list_reordering.exit, %lor.lhs.false159
  %109 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !790, !tbaa !676
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %109, i64 0, i32 20, !dbg !790
  %110 = load i32* %weighted_bipred_idc, align 4, !dbg !790, !tbaa !679
  %cmp163 = icmp eq i32 %110, 1, !dbg !790
  br i1 %cmp163, label %if.then164, label %if.end167, !dbg !790

if.then164:                                       ; preds = %land.lhs.true162, %land.lhs.true157
  %111 = load %struct.InputParameters** @input, align 8, !dbg !791, !tbaa !676
  %partition_mode.i302 = getelementptr inbounds %struct.InputParameters* %111, i64 0, i32 61, !dbg !791
  %112 = load i32* %partition_mode.i302, align 4, !dbg !791, !tbaa !679
  %idxprom.i303 = sext i32 %112 to i64, !dbg !791
  %arrayidx.i304 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom.i303, !dbg !791
  %113 = load i32** %arrayidx.i304, align 8, !dbg !791, !tbaa !676
  %114 = load i32* %113, align 4, !dbg !791, !tbaa !679
  tail call void @llvm.dbg.value(metadata !{i32 %114}, i64 0, metadata !794) #6, !dbg !791
  %idxprom2.i305 = sext i32 %114 to i64, !dbg !795
  %currentSlice.i306 = getelementptr inbounds %struct.ImageParameters* %105, i64 0, i32 50, !dbg !795
  %115 = load %struct.Slice** %currentSlice.i306, align 8, !dbg !795, !tbaa !676
  %partArr.i307 = getelementptr inbounds %struct.Slice* %115, i64 0, i32 6, !dbg !795
  %116 = load %struct.datapartition** %partArr.i307, align 8, !dbg !795, !tbaa !676
  %arrayidx3.i308 = getelementptr inbounds %struct.datapartition* %116, i64 %idxprom2.i305, !dbg !795
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %arrayidx3.i308}, i64 0, metadata !796) #6, !dbg !795
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !797) #6, !dbg !798
  %117 = load i32* @luma_log_weight_denom, align 4, !dbg !799, !tbaa !679
  %call.i309 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str30, i64 0, i64 0), i32 %117, %struct.datapartition* %arrayidx3.i308) #7, !dbg !799
  tail call void @llvm.dbg.value(metadata !{i32 %call.i309}, i64 0, metadata !797) #6, !dbg !799
  %118 = load i32* @chroma_log_weight_denom, align 4, !dbg !800, !tbaa !679
  %call4.i = tail call i32 @ue_v(i8* getelementptr inbounds ([28 x i8]* @.str31, i64 0, i64 0), i32 %118, %struct.datapartition* %arrayidx3.i308) #7, !dbg !800
  %add5.i = add nsw i32 %call4.i, %call.i309, !dbg !800
  tail call void @llvm.dbg.value(metadata !{i32 %add5.i}, i64 0, metadata !797) #6, !dbg !800
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !801) #6, !dbg !802
  %119 = load %struct.ImageParameters** @img, align 8, !dbg !802, !tbaa !676
  %num_ref_idx_l0_active249.i = getelementptr inbounds %struct.ImageParameters* %119, i64 0, i32 79, !dbg !802
  %120 = load i32* %num_ref_idx_l0_active249.i, align 4, !dbg !802, !tbaa !679
  %cmp250.i = icmp sgt i32 %120, 0, !dbg !802
  br i1 %cmp250.i, label %for.body.i, label %for.end83.i, !dbg !802

for.body.i:                                       ; preds = %if.then164, %for.inc81.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i, %for.inc81.i ], [ 0, %if.then164 ]
  %len.0251.i = phi i32 [ %len.3.i317, %for.inc81.i ], [ %add5.i, %if.then164 ]
  %121 = load i32**** @wp_weight, align 8, !dbg !804, !tbaa !676
  %122 = load i32*** %121, align 8, !dbg !804, !tbaa !676
  %arrayidx8.i310 = getelementptr inbounds i32** %122, i64 %indvars.iv262.i, !dbg !804
  %123 = load i32** %arrayidx8.i310, align 8, !dbg !804, !tbaa !676
  %124 = load i32* %123, align 4, !dbg !804, !tbaa !679
  %125 = load i32* @luma_log_weight_denom, align 4, !dbg !804, !tbaa !679
  %shl.i = shl i32 1, %125, !dbg !804
  %cmp10.i = icmp eq i32 %124, %shl.i, !dbg !804
  br i1 %cmp10.i, label %lor.lhs.false.i, label %if.then.i314, !dbg !804

lor.lhs.false.i:                                  ; preds = %for.body.i
  %126 = load i32**** @wp_offset, align 8, !dbg !804, !tbaa !676
  %127 = load i32*** %126, align 8, !dbg !804, !tbaa !676
  %arrayidx13.i311 = getelementptr inbounds i32** %127, i64 %indvars.iv262.i, !dbg !804
  %128 = load i32** %arrayidx13.i311, align 8, !dbg !804, !tbaa !676
  %129 = load i32* %128, align 4, !dbg !804, !tbaa !679
  %cmp15.i = icmp eq i32 %129, 0, !dbg !804
  br i1 %cmp15.i, label %if.else.i, label %if.then.i314, !dbg !804

if.then.i314:                                     ; preds = %lor.lhs.false.i, %for.body.i
  %call16.i = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i32 1, %struct.datapartition* %arrayidx3.i308) #7, !dbg !806
  %add17.i = add nsw i32 %call16.i, %len.0251.i, !dbg !806
  tail call void @llvm.dbg.value(metadata !{i32 %add17.i}, i64 0, metadata !797) #6, !dbg !806
  %130 = load i32**** @wp_weight, align 8, !dbg !808, !tbaa !676
  %131 = load i32*** %130, align 8, !dbg !808, !tbaa !676
  %arrayidx20.i = getelementptr inbounds i32** %131, i64 %indvars.iv262.i, !dbg !808
  %132 = load i32** %arrayidx20.i, align 8, !dbg !808, !tbaa !676
  %133 = load i32* %132, align 4, !dbg !808, !tbaa !679
  %call22.i312 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0), i32 %133, %struct.datapartition* %arrayidx3.i308) #7, !dbg !808
  %add23.i313 = add nsw i32 %add17.i, %call22.i312, !dbg !808
  tail call void @llvm.dbg.value(metadata !{i32 %add23.i313}, i64 0, metadata !797) #6, !dbg !808
  %134 = load i32**** @wp_offset, align 8, !dbg !809, !tbaa !676
  %135 = load i32*** %134, align 8, !dbg !809, !tbaa !676
  %arrayidx26.i = getelementptr inbounds i32** %135, i64 %indvars.iv262.i, !dbg !809
  %136 = load i32** %arrayidx26.i, align 8, !dbg !809, !tbaa !676
  %137 = load i32* %136, align 4, !dbg !809, !tbaa !679
  %call28.i = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str34, i64 0, i64 0), i32 %137, %struct.datapartition* %arrayidx3.i308) #7, !dbg !809
  %add29.i = add nsw i32 %add23.i313, %call28.i, !dbg !809
  tail call void @llvm.dbg.value(metadata !{i32 %add29.i}, i64 0, metadata !797) #6, !dbg !809
  br label %if.end.i, !dbg !810

if.else.i:                                        ; preds = %lor.lhs.false.i
  %call30.i = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i32 0, %struct.datapartition* %arrayidx3.i308) #7, !dbg !811
  %add31.i = add nsw i32 %call30.i, %len.0251.i, !dbg !811
  tail call void @llvm.dbg.value(metadata !{i32 %add31.i}, i64 0, metadata !797) #6, !dbg !811
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i314
  %len.1.i315 = phi i32 [ %add29.i, %if.then.i314 ], [ %add31.i, %if.else.i ]
  %138 = load i32**** @wp_weight, align 8, !dbg !813, !tbaa !676
  %139 = load i32*** %138, align 8, !dbg !813, !tbaa !676
  %arrayidx34.i = getelementptr inbounds i32** %139, i64 %indvars.iv262.i, !dbg !813
  %140 = load i32** %arrayidx34.i, align 8, !dbg !813, !tbaa !676
  %arrayidx35.i = getelementptr inbounds i32* %140, i64 1, !dbg !813
  %141 = load i32* %arrayidx35.i, align 4, !dbg !813, !tbaa !679
  %142 = load i32* @chroma_log_weight_denom, align 4, !dbg !813, !tbaa !679
  %shl36.i = shl i32 1, %142, !dbg !813
  %cmp37.i316 = icmp eq i32 %141, %shl36.i, !dbg !813
  br i1 %cmp37.i316, label %lor.lhs.false38.i, label %if.then57.i, !dbg !813

lor.lhs.false38.i:                                ; preds = %if.end.i
  %143 = load i32**** @wp_offset, align 8, !dbg !813, !tbaa !676
  %144 = load i32*** %143, align 8, !dbg !813, !tbaa !676
  %arrayidx41.i = getelementptr inbounds i32** %144, i64 %indvars.iv262.i, !dbg !813
  %145 = load i32** %arrayidx41.i, align 8, !dbg !813, !tbaa !676
  %arrayidx42.i = getelementptr inbounds i32* %145, i64 1, !dbg !813
  %146 = load i32* %arrayidx42.i, align 4, !dbg !813, !tbaa !679
  %cmp43.i = icmp eq i32 %146, 0, !dbg !813
  br i1 %cmp43.i, label %lor.lhs.false44.i, label %if.then57.i, !dbg !813

lor.lhs.false44.i:                                ; preds = %lor.lhs.false38.i
  %arrayidx48.i = getelementptr inbounds i32* %140, i64 2, !dbg !813
  %147 = load i32* %arrayidx48.i, align 4, !dbg !813, !tbaa !679
  %cmp50.i = icmp eq i32 %147, %141, !dbg !813
  br i1 %cmp50.i, label %lor.lhs.false51.i, label %if.then57.i, !dbg !813

lor.lhs.false51.i:                                ; preds = %lor.lhs.false44.i
  %arrayidx55.i = getelementptr inbounds i32* %145, i64 2, !dbg !813
  %148 = load i32* %arrayidx55.i, align 4, !dbg !813, !tbaa !679
  %cmp56.i = icmp eq i32 %148, 0, !dbg !813
  br i1 %cmp56.i, label %if.else77.i, label %if.then57.i, !dbg !813

if.then57.i:                                      ; preds = %lor.lhs.false51.i, %lor.lhs.false44.i, %lor.lhs.false38.i, %if.end.i
  %call58.i = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str35, i64 0, i64 0), i32 1, %struct.datapartition* %arrayidx3.i308) #7, !dbg !814
  %add59.i = add nsw i32 %call58.i, %len.1.i315, !dbg !814
  tail call void @llvm.dbg.value(metadata !{i32 %add59.i}, i64 0, metadata !797) #6, !dbg !814
  tail call void @llvm.dbg.value(metadata !816, i64 0, metadata !817) #6, !dbg !818
  br label %for.body62.i, !dbg !818

for.body62.i:                                     ; preds = %for.body62.i, %if.then57.i
  %indvars.iv257.i = phi i64 [ 1, %if.then57.i ], [ %indvars.iv.next258.i, %for.body62.i ]
  %len.2247.i = phi i32 [ %add59.i, %if.then57.i ], [ %add76.i, %for.body62.i ]
  %149 = load i32**** @wp_weight, align 8, !dbg !820, !tbaa !676
  %150 = load i32*** %149, align 8, !dbg !820, !tbaa !676
  %arrayidx66.i = getelementptr inbounds i32** %150, i64 %indvars.iv262.i, !dbg !820
  %151 = load i32** %arrayidx66.i, align 8, !dbg !820, !tbaa !676
  %arrayidx67.i = getelementptr inbounds i32* %151, i64 %indvars.iv257.i, !dbg !820
  %152 = load i32* %arrayidx67.i, align 4, !dbg !820, !tbaa !679
  %call68.i = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str36, i64 0, i64 0), i32 %152, %struct.datapartition* %arrayidx3.i308) #7, !dbg !820
  %add69.i = add nsw i32 %call68.i, %len.2247.i, !dbg !820
  tail call void @llvm.dbg.value(metadata !{i32 %add69.i}, i64 0, metadata !797) #6, !dbg !820
  %153 = load i32**** @wp_offset, align 8, !dbg !822, !tbaa !676
  %154 = load i32*** %153, align 8, !dbg !822, !tbaa !676
  %arrayidx73.i = getelementptr inbounds i32** %154, i64 %indvars.iv262.i, !dbg !822
  %155 = load i32** %arrayidx73.i, align 8, !dbg !822, !tbaa !676
  %arrayidx74.i = getelementptr inbounds i32* %155, i64 %indvars.iv257.i, !dbg !822
  %156 = load i32* %arrayidx74.i, align 4, !dbg !822, !tbaa !679
  %call75.i = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str37, i64 0, i64 0), i32 %156, %struct.datapartition* %arrayidx3.i308) #7, !dbg !822
  %add76.i = add nsw i32 %add69.i, %call75.i, !dbg !822
  tail call void @llvm.dbg.value(metadata !{i32 %add76.i}, i64 0, metadata !797) #6, !dbg !822
  %indvars.iv.next258.i = add i64 %indvars.iv257.i, 1, !dbg !818
  %lftr.wideiv349 = trunc i64 %indvars.iv.next258.i to i32, !dbg !818
  %exitcond350 = icmp eq i32 %lftr.wideiv349, 3, !dbg !818
  br i1 %exitcond350, label %for.inc81.i, label %for.body62.i, !dbg !818

if.else77.i:                                      ; preds = %lor.lhs.false51.i
  %call78.i = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str35, i64 0, i64 0), i32 0, %struct.datapartition* %arrayidx3.i308) #7, !dbg !823
  %add79.i = add nsw i32 %call78.i, %len.1.i315, !dbg !823
  tail call void @llvm.dbg.value(metadata !{i32 %add79.i}, i64 0, metadata !797) #6, !dbg !823
  br label %for.inc81.i

for.inc81.i:                                      ; preds = %for.body62.i, %if.else77.i
  %len.3.i317 = phi i32 [ %add79.i, %if.else77.i ], [ %add76.i, %for.body62.i ]
  %indvars.iv.next263.i = add i64 %indvars.iv262.i, 1, !dbg !802
  %157 = load %struct.ImageParameters** @img, align 8, !dbg !802, !tbaa !676
  %num_ref_idx_l0_active.i = getelementptr inbounds %struct.ImageParameters* %157, i64 0, i32 79, !dbg !802
  %158 = load i32* %num_ref_idx_l0_active.i, align 4, !dbg !802, !tbaa !679
  %159 = trunc i64 %indvars.iv.next263.i to i32, !dbg !802
  %cmp.i318 = icmp slt i32 %159, %158, !dbg !802
  br i1 %cmp.i318, label %for.body.i, label %for.end83.i, !dbg !802

for.end83.i:                                      ; preds = %for.inc81.i, %if.then164
  %160 = phi %struct.ImageParameters* [ %119, %if.then164 ], [ %157, %for.inc81.i ]
  %len.0.lcssa.i = phi i32 [ %add5.i, %if.then164 ], [ %len.3.i317, %for.inc81.i ]
  %type.i319 = getelementptr inbounds %struct.ImageParameters* %160, i64 0, i32 6, !dbg !825
  %161 = load i32* %type.i319, align 4, !dbg !825, !tbaa !679
  %cmp84.i320 = icmp eq i32 %161, 1, !dbg !825
  br i1 %cmp84.i320, label %for.cond86.preheader.i, label %pred_weight_table.exit, !dbg !825

for.cond86.preheader.i:                           ; preds = %for.end83.i
  %num_ref_idx_l1_active243.i = getelementptr inbounds %struct.ImageParameters* %160, i64 0, i32 80, !dbg !826
  %162 = load i32* %num_ref_idx_l1_active243.i, align 4, !dbg !826, !tbaa !679
  %cmp87244.i = icmp sgt i32 %162, 0, !dbg !826
  br i1 %cmp87244.i, label %for.body88.i, label %pred_weight_table.exit, !dbg !826

for.body88.i:                                     ; preds = %for.cond86.preheader.i, %for.inc172.i
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i, %for.inc172.i ], [ 0, %for.cond86.preheader.i ]
  %len.4245.i = phi i32 [ %len.7.i, %for.inc172.i ], [ %len.0.lcssa.i, %for.cond86.preheader.i ]
  %163 = load i32**** @wp_weight, align 8, !dbg !829, !tbaa !676
  %arrayidx90.i = getelementptr inbounds i32*** %163, i64 1, !dbg !829
  %164 = load i32*** %arrayidx90.i, align 8, !dbg !829, !tbaa !676
  %arrayidx91.i = getelementptr inbounds i32** %164, i64 %indvars.iv255.i, !dbg !829
  %165 = load i32** %arrayidx91.i, align 8, !dbg !829, !tbaa !676
  %166 = load i32* %165, align 4, !dbg !829, !tbaa !679
  %167 = load i32* @luma_log_weight_denom, align 4, !dbg !829, !tbaa !679
  %shl93.i = shl i32 1, %167, !dbg !829
  %cmp94.i = icmp eq i32 %166, %shl93.i, !dbg !829
  br i1 %cmp94.i, label %lor.lhs.false95.i, label %if.then101.i, !dbg !829

lor.lhs.false95.i:                                ; preds = %for.body88.i
  %168 = load i32**** @wp_offset, align 8, !dbg !829, !tbaa !676
  %arrayidx97.i = getelementptr inbounds i32*** %168, i64 1, !dbg !829
  %169 = load i32*** %arrayidx97.i, align 8, !dbg !829, !tbaa !676
  %arrayidx98.i = getelementptr inbounds i32** %169, i64 %indvars.iv255.i, !dbg !829
  %170 = load i32** %arrayidx98.i, align 8, !dbg !829, !tbaa !676
  %171 = load i32* %170, align 4, !dbg !829, !tbaa !679
  %cmp100.i = icmp eq i32 %171, 0, !dbg !829
  br i1 %cmp100.i, label %if.else116.i, label %if.then101.i, !dbg !829

if.then101.i:                                     ; preds = %lor.lhs.false95.i, %for.body88.i
  %call102.i = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str38, i64 0, i64 0), i32 1, %struct.datapartition* %arrayidx3.i308) #7, !dbg !831
  %add103.i = add nsw i32 %call102.i, %len.4245.i, !dbg !831
  tail call void @llvm.dbg.value(metadata !{i32 %add103.i}, i64 0, metadata !797) #6, !dbg !831
  %172 = load i32**** @wp_weight, align 8, !dbg !833, !tbaa !676
  %arrayidx105.i = getelementptr inbounds i32*** %172, i64 1, !dbg !833
  %173 = load i32*** %arrayidx105.i, align 8, !dbg !833, !tbaa !676
  %arrayidx106.i = getelementptr inbounds i32** %173, i64 %indvars.iv255.i, !dbg !833
  %174 = load i32** %arrayidx106.i, align 8, !dbg !833, !tbaa !676
  %175 = load i32* %174, align 4, !dbg !833, !tbaa !679
  %call108.i = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i32 %175, %struct.datapartition* %arrayidx3.i308) #7, !dbg !833
  %add109.i = add nsw i32 %add103.i, %call108.i, !dbg !833
  tail call void @llvm.dbg.value(metadata !{i32 %add109.i}, i64 0, metadata !797) #6, !dbg !833
  %176 = load i32**** @wp_offset, align 8, !dbg !834, !tbaa !676
  %arrayidx111.i = getelementptr inbounds i32*** %176, i64 1, !dbg !834
  %177 = load i32*** %arrayidx111.i, align 8, !dbg !834, !tbaa !676
  %arrayidx112.i = getelementptr inbounds i32** %177, i64 %indvars.iv255.i, !dbg !834
  %178 = load i32** %arrayidx112.i, align 8, !dbg !834, !tbaa !676
  %179 = load i32* %178, align 4, !dbg !834, !tbaa !679
  %call114.i = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str40, i64 0, i64 0), i32 %179, %struct.datapartition* %arrayidx3.i308) #7, !dbg !834
  %add115.i = add nsw i32 %add109.i, %call114.i, !dbg !834
  tail call void @llvm.dbg.value(metadata !{i32 %add115.i}, i64 0, metadata !797) #6, !dbg !834
  br label %if.end119.i, !dbg !835

if.else116.i:                                     ; preds = %lor.lhs.false95.i
  %call117.i = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str38, i64 0, i64 0), i32 0, %struct.datapartition* %arrayidx3.i308) #7, !dbg !836
  %add118.i = add nsw i32 %call117.i, %len.4245.i, !dbg !836
  tail call void @llvm.dbg.value(metadata !{i32 %add118.i}, i64 0, metadata !797) #6, !dbg !836
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.else116.i, %if.then101.i
  %len.5.i321 = phi i32 [ %add115.i, %if.then101.i ], [ %add118.i, %if.else116.i ]
  %180 = load i32**** @wp_weight, align 8, !dbg !838, !tbaa !676
  %arrayidx121.i = getelementptr inbounds i32*** %180, i64 1, !dbg !838
  %181 = load i32*** %arrayidx121.i, align 8, !dbg !838, !tbaa !676
  %arrayidx122.i = getelementptr inbounds i32** %181, i64 %indvars.iv255.i, !dbg !838
  %182 = load i32** %arrayidx122.i, align 8, !dbg !838, !tbaa !676
  %arrayidx123.i = getelementptr inbounds i32* %182, i64 1, !dbg !838
  %183 = load i32* %arrayidx123.i, align 4, !dbg !838, !tbaa !679
  %184 = load i32* @chroma_log_weight_denom, align 4, !dbg !838, !tbaa !679
  %shl124.i = shl i32 1, %184, !dbg !838
  %cmp125.i = icmp eq i32 %183, %shl124.i, !dbg !838
  br i1 %cmp125.i, label %lor.lhs.false126.i, label %if.then145.i, !dbg !838

lor.lhs.false126.i:                               ; preds = %if.end119.i
  %185 = load i32**** @wp_offset, align 8, !dbg !838, !tbaa !676
  %arrayidx128.i = getelementptr inbounds i32*** %185, i64 1, !dbg !838
  %186 = load i32*** %arrayidx128.i, align 8, !dbg !838, !tbaa !676
  %arrayidx129.i = getelementptr inbounds i32** %186, i64 %indvars.iv255.i, !dbg !838
  %187 = load i32** %arrayidx129.i, align 8, !dbg !838, !tbaa !676
  %arrayidx130.i = getelementptr inbounds i32* %187, i64 1, !dbg !838
  %188 = load i32* %arrayidx130.i, align 4, !dbg !838, !tbaa !679
  %cmp131.i = icmp eq i32 %188, 0, !dbg !838
  br i1 %cmp131.i, label %lor.lhs.false132.i, label %if.then145.i, !dbg !838

lor.lhs.false132.i:                               ; preds = %lor.lhs.false126.i
  %arrayidx136.i = getelementptr inbounds i32* %182, i64 2, !dbg !838
  %189 = load i32* %arrayidx136.i, align 4, !dbg !838, !tbaa !679
  %cmp138.i = icmp eq i32 %189, %183, !dbg !838
  br i1 %cmp138.i, label %lor.lhs.false139.i, label %if.then145.i, !dbg !838

lor.lhs.false139.i:                               ; preds = %lor.lhs.false132.i
  %arrayidx143.i = getelementptr inbounds i32* %187, i64 2, !dbg !838
  %190 = load i32* %arrayidx143.i, align 4, !dbg !838, !tbaa !679
  %cmp144.i = icmp eq i32 %190, 0, !dbg !838
  br i1 %cmp144.i, label %if.else168.i, label %if.then145.i, !dbg !838

if.then145.i:                                     ; preds = %lor.lhs.false139.i, %lor.lhs.false132.i, %lor.lhs.false126.i, %if.end119.i
  %call146.i = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str41, i64 0, i64 0), i32 1, %struct.datapartition* %arrayidx3.i308) #7, !dbg !839
  %add147.i = add nsw i32 %call146.i, %len.5.i321, !dbg !839
  tail call void @llvm.dbg.value(metadata !{i32 %add147.i}, i64 0, metadata !797) #6, !dbg !839
  tail call void @llvm.dbg.value(metadata !816, i64 0, metadata !817) #6, !dbg !841
  br label %for.body150.i, !dbg !841

for.body150.i:                                    ; preds = %for.body150.i, %if.then145.i
  %indvars.iv.i322 = phi i64 [ 1, %if.then145.i ], [ %indvars.iv.next.i323, %for.body150.i ]
  %len.6241.i = phi i32 [ %add147.i, %if.then145.i ], [ %add164.i, %for.body150.i ]
  %191 = load i32**** @wp_weight, align 8, !dbg !843, !tbaa !676
  %arrayidx153.i = getelementptr inbounds i32*** %191, i64 1, !dbg !843
  %192 = load i32*** %arrayidx153.i, align 8, !dbg !843, !tbaa !676
  %arrayidx154.i = getelementptr inbounds i32** %192, i64 %indvars.iv255.i, !dbg !843
  %193 = load i32** %arrayidx154.i, align 8, !dbg !843, !tbaa !676
  %arrayidx155.i = getelementptr inbounds i32* %193, i64 %indvars.iv.i322, !dbg !843
  %194 = load i32* %arrayidx155.i, align 4, !dbg !843, !tbaa !679
  %call156.i = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str42, i64 0, i64 0), i32 %194, %struct.datapartition* %arrayidx3.i308) #7, !dbg !843
  %add157.i = add nsw i32 %call156.i, %len.6241.i, !dbg !843
  tail call void @llvm.dbg.value(metadata !{i32 %add157.i}, i64 0, metadata !797) #6, !dbg !843
  %195 = load i32**** @wp_offset, align 8, !dbg !845, !tbaa !676
  %arrayidx160.i = getelementptr inbounds i32*** %195, i64 1, !dbg !845
  %196 = load i32*** %arrayidx160.i, align 8, !dbg !845, !tbaa !676
  %arrayidx161.i = getelementptr inbounds i32** %196, i64 %indvars.iv255.i, !dbg !845
  %197 = load i32** %arrayidx161.i, align 8, !dbg !845, !tbaa !676
  %arrayidx162.i = getelementptr inbounds i32* %197, i64 %indvars.iv.i322, !dbg !845
  %198 = load i32* %arrayidx162.i, align 4, !dbg !845, !tbaa !679
  %call163.i = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str43, i64 0, i64 0), i32 %198, %struct.datapartition* %arrayidx3.i308) #7, !dbg !845
  %add164.i = add nsw i32 %add157.i, %call163.i, !dbg !845
  tail call void @llvm.dbg.value(metadata !{i32 %add164.i}, i64 0, metadata !797) #6, !dbg !845
  %indvars.iv.next.i323 = add i64 %indvars.iv.i322, 1, !dbg !841
  %lftr.wideiv = trunc i64 %indvars.iv.next.i323 to i32, !dbg !841
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !841
  br i1 %exitcond, label %for.inc172.i, label %for.body150.i, !dbg !841

if.else168.i:                                     ; preds = %lor.lhs.false139.i
  %call169.i = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str41, i64 0, i64 0), i32 0, %struct.datapartition* %arrayidx3.i308) #7, !dbg !846
  %add170.i = add nsw i32 %call169.i, %len.5.i321, !dbg !846
  tail call void @llvm.dbg.value(metadata !{i32 %add170.i}, i64 0, metadata !797) #6, !dbg !846
  br label %for.inc172.i

for.inc172.i:                                     ; preds = %for.body150.i, %if.else168.i
  %len.7.i = phi i32 [ %add170.i, %if.else168.i ], [ %add164.i, %for.body150.i ]
  %indvars.iv.next256.i = add i64 %indvars.iv255.i, 1, !dbg !826
  %199 = load %struct.ImageParameters** @img, align 8, !dbg !826, !tbaa !676
  %num_ref_idx_l1_active.i = getelementptr inbounds %struct.ImageParameters* %199, i64 0, i32 80, !dbg !826
  %200 = load i32* %num_ref_idx_l1_active.i, align 4, !dbg !826, !tbaa !679
  %201 = trunc i64 %indvars.iv.next256.i to i32, !dbg !826
  %cmp87.i = icmp slt i32 %201, %200, !dbg !826
  br i1 %cmp87.i, label %for.body88.i, label %pred_weight_table.exit, !dbg !826

pred_weight_table.exit:                           ; preds = %for.inc172.i, %for.end83.i, %for.cond86.preheader.i
  %202 = phi %struct.ImageParameters* [ %160, %for.end83.i ], [ %160, %for.cond86.preheader.i ], [ %199, %for.inc172.i ]
  %len.8.i = phi i32 [ %len.0.lcssa.i, %for.end83.i ], [ %len.0.lcssa.i, %for.cond86.preheader.i ], [ %len.7.i, %for.inc172.i ]
  %add166 = add nsw i32 %len.8.i, %add151, !dbg !792
  tail call void @llvm.dbg.value(metadata !{i32 %add166}, i64 0, metadata !243), !dbg !792
  br label %if.end167, !dbg !848

if.end167:                                        ; preds = %ref_pic_list_reordering.exit, %pred_weight_table.exit, %land.lhs.true162, %lor.lhs.false159
  %203 = phi %struct.ImageParameters* [ %202, %pred_weight_table.exit ], [ %105, %land.lhs.true162 ], [ %105, %lor.lhs.false159 ], [ %105, %ref_pic_list_reordering.exit ]
  %len.8 = phi i32 [ %add166, %pred_weight_table.exit ], [ %add151, %land.lhs.true162 ], [ %add151, %lor.lhs.false159 ], [ %add151, %ref_pic_list_reordering.exit ]
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %203, i64 0, i32 113, !dbg !849
  %204 = load i32* %nal_reference_idc, align 4, !dbg !849, !tbaa !679
  %tobool168 = icmp eq i32 %204, 0, !dbg !849
  br i1 %tobool168, label %if.end172, label %if.then169, !dbg !849

if.then169:                                       ; preds = %if.end167
  %205 = load %struct.InputParameters** @input, align 8, !dbg !850, !tbaa !676
  %partition_mode.i324 = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 61, !dbg !850
  %206 = load i32* %partition_mode.i324, align 4, !dbg !850, !tbaa !679
  %idxprom.i325 = sext i32 %206 to i64, !dbg !850
  %arrayidx.i326 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %idxprom.i325, !dbg !850
  %207 = load i32** %arrayidx.i326, align 8, !dbg !850, !tbaa !676
  %208 = load i32* %207, align 4, !dbg !850, !tbaa !679
  tail call void @llvm.dbg.value(metadata !{i32 %208}, i64 0, metadata !852) #6, !dbg !850
  %idxprom2.i327 = sext i32 %208 to i64, !dbg !853
  %currentSlice.i328 = getelementptr inbounds %struct.ImageParameters* %203, i64 0, i32 50, !dbg !853
  %209 = load %struct.Slice** %currentSlice.i328, align 8, !dbg !853, !tbaa !676
  %partArr.i329 = getelementptr inbounds %struct.Slice* %209, i64 0, i32 6, !dbg !853
  %210 = load %struct.datapartition** %partArr.i329, align 8, !dbg !853, !tbaa !676
  %arrayidx3.i330 = getelementptr inbounds %struct.datapartition* %210, i64 %idxprom2.i327, !dbg !853
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %arrayidx3.i330}, i64 0, metadata !854) #6, !dbg !853
  tail call void @llvm.dbg.value(metadata !53, i64 0, metadata !855) #6, !dbg !856
  %currentPicture.i = getelementptr inbounds %struct.ImageParameters* %203, i64 0, i32 49, !dbg !857
  %211 = load %struct.Picture** %currentPicture.i, align 8, !dbg !857, !tbaa !676
  %idr_flag.i = getelementptr inbounds %struct.Picture* %211, i64 0, i32 1, !dbg !857
  %212 = load i32* %idr_flag.i, align 4, !dbg !857, !tbaa !679
  %tobool.i331 = icmp eq i32 %212, 0, !dbg !857
  br i1 %tobool.i331, label %if.else.i337, label %if.then.i335, !dbg !857

if.then.i335:                                     ; preds = %if.then169
  %no_output_of_prior_pics_flag.i = getelementptr inbounds %struct.ImageParameters* %203, i64 0, i32 115, !dbg !858
  %213 = load i32* %no_output_of_prior_pics_flag.i, align 4, !dbg !858, !tbaa !679
  %call.i332 = tail call i32 @u_1(i8* getelementptr inbounds ([33 x i8]* @.str44, i64 0, i64 0), i32 %213, %struct.datapartition* %arrayidx3.i330) #7, !dbg !858
  tail call void @llvm.dbg.value(metadata !{i32 %call.i332}, i64 0, metadata !855) #6, !dbg !858
  %214 = load %struct.ImageParameters** @img, align 8, !dbg !860, !tbaa !676
  %long_term_reference_flag.i = getelementptr inbounds %struct.ImageParameters* %214, i64 0, i32 116, !dbg !860
  %215 = load i32* %long_term_reference_flag.i, align 4, !dbg !860, !tbaa !679
  %call4.i333 = tail call i32 @u_1(i8* getelementptr inbounds ([29 x i8]* @.str45, i64 0, i64 0), i32 %215, %struct.datapartition* %arrayidx3.i330) #7, !dbg !860
  %add5.i334 = add nsw i32 %call4.i333, %call.i332, !dbg !860
  tail call void @llvm.dbg.value(metadata !{i32 %add5.i334}, i64 0, metadata !855) #6, !dbg !860
  br label %dec_ref_pic_marking.exit, !dbg !861

if.else.i337:                                     ; preds = %if.then169
  %dec_ref_pic_marking_buffer.i = getelementptr inbounds %struct.ImageParameters* %203, i64 0, i32 117, !dbg !862
  %216 = load %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer.i, align 8, !dbg !862, !tbaa !676
  %cmp.i336 = icmp ne %struct.DecRefPicMarking_s* %216, null, !dbg !862
  %conv.i = zext i1 %cmp.i336 to i32, !dbg !862
  %adaptive_ref_pic_buffering_flag.i = getelementptr inbounds %struct.ImageParameters* %203, i64 0, i32 114, !dbg !862
  store i32 %conv.i, i32* %adaptive_ref_pic_buffering_flag.i, align 4, !dbg !862, !tbaa !679
  %call7.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str46, i64 0, i64 0), i32 %conv.i, %struct.datapartition* %arrayidx3.i330) #7, !dbg !864
  tail call void @llvm.dbg.value(metadata !{i32 %call7.i}, i64 0, metadata !855) #6, !dbg !864
  %217 = load %struct.ImageParameters** @img, align 8, !dbg !865, !tbaa !676
  %adaptive_ref_pic_buffering_flag9.i = getelementptr inbounds %struct.ImageParameters* %217, i64 0, i32 114, !dbg !865
  %218 = load i32* %adaptive_ref_pic_buffering_flag9.i, align 4, !dbg !865, !tbaa !679
  %tobool10.i = icmp eq i32 %218, 0, !dbg !865
  br i1 %tobool10.i, label %dec_ref_pic_marking.exit, label %if.then11.i, !dbg !865

if.then11.i:                                      ; preds = %if.else.i337
  %dec_ref_pic_marking_buffer12.i = getelementptr inbounds %struct.ImageParameters* %217, i64 0, i32 117, !dbg !866
  br label %do.body.i339, !dbg !868

do.body.i339:                                     ; preds = %do.body.backedge.i, %if.then11.i
  %tmp_drpm.0.in.i = phi %struct.DecRefPicMarking_s** [ %dec_ref_pic_marking_buffer12.i, %if.then11.i ], [ %tmp_drpm.0.in.be.i, %do.body.backedge.i ]
  %len.0.i338 = phi i32 [ %call7.i, %if.then11.i ], [ %len.0.be.i, %do.body.backedge.i ]
  %tmp_drpm.0.i = load %struct.DecRefPicMarking_s** %tmp_drpm.0.in.i, align 8, !dbg !866
  %cmp13.i = icmp eq %struct.DecRefPicMarking_s* %tmp_drpm.0.i, null, !dbg !869
  br i1 %cmp13.i, label %if.then15.i, label %if.end.i342, !dbg !869

if.then15.i:                                      ; preds = %do.body.i339
  tail call void @error(i8* getelementptr inbounds ([29 x i8]* @.str47, i64 0, i64 0), i32 500) #7, !dbg !869
  br label %if.end.i342, !dbg !869

if.end.i342:                                      ; preds = %if.then15.i, %do.body.i339
  %memory_management_control_operation.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 0, !dbg !871
  %219 = load i32* %memory_management_control_operation.i, align 4, !dbg !871, !tbaa !679
  tail call void @llvm.dbg.value(metadata !{i32 %219}, i64 0, metadata !872) #6, !dbg !871
  %call16.i340 = tail call i32 @ue_v(i8* getelementptr inbounds ([40 x i8]* @.str48, i64 0, i64 0), i32 %219, %struct.datapartition* %arrayidx3.i330) #7, !dbg !873
  %add17.i341 = add nsw i32 %call16.i340, %len.0.i338, !dbg !873
  tail call void @llvm.dbg.value(metadata !{i32 %add17.i341}, i64 0, metadata !855) #6, !dbg !873
  %220 = and i32 %219, -3, !dbg !874
  %221 = icmp eq i32 %220, 1, !dbg !874
  br i1 %221, label %if.then22.i, label %if.end26.i, !dbg !874

if.then22.i:                                      ; preds = %if.end.i342
  %difference_of_pic_nums_minus1.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 1, !dbg !875
  %222 = load i32* %difference_of_pic_nums_minus1.i, align 4, !dbg !875, !tbaa !679
  %call23.i = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str49, i64 0, i64 0), i32 %222, %struct.datapartition* %arrayidx3.i330) #7, !dbg !875
  %add24.i = add i32 %add17.i341, 1, !dbg !875
  %add25.i = add i32 %add24.i, %call23.i, !dbg !875
  tail call void @llvm.dbg.value(metadata !{i32 %add25.i}, i64 0, metadata !855) #6, !dbg !875
  br label %if.end26.i, !dbg !877

if.end26.i:                                       ; preds = %if.then22.i, %if.end.i342
  %len.1.i343 = phi i32 [ %add25.i, %if.then22.i ], [ %add17.i341, %if.end.i342 ]
  switch i32 %219, label %if.end41.i [
    i32 2, label %if.end41.thread.i
    i32 6, label %if.then38.i
    i32 3, label %if.then38.i
  ], !dbg !878

if.end41.thread.i:                                ; preds = %if.end26.i
  %long_term_pic_num.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 2, !dbg !879
  %223 = load i32* %long_term_pic_num.i, align 4, !dbg !879, !tbaa !679
  %call30.i344 = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str50, i64 0, i64 0), i32 %223, %struct.datapartition* %arrayidx3.i330) #7, !dbg !879
  %add31.i345 = add nsw i32 %call30.i344, %len.1.i343, !dbg !879
  tail call void @llvm.dbg.value(metadata !{i32 %add31.i345}, i64 0, metadata !855) #6, !dbg !879
  br label %do.body.backedge.i, !dbg !881

if.then38.i:                                      ; preds = %if.end26.i, %if.end26.i
  %long_term_frame_idx.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 3, !dbg !882
  %224 = load i32* %long_term_frame_idx.i, align 4, !dbg !882, !tbaa !679
  %call39.i = tail call i32 @ue_v(i8* getelementptr inbounds ([24 x i8]* @.str51, i64 0, i64 0), i32 %224, %struct.datapartition* %arrayidx3.i330) #7, !dbg !882
  %add40.i = add nsw i32 %call39.i, %len.1.i343, !dbg !882
  tail call void @llvm.dbg.value(metadata !{i32 %add40.i}, i64 0, metadata !855) #6, !dbg !882
  br label %if.end41.i, !dbg !884

if.end41.i:                                       ; preds = %if.then38.i, %if.end26.i
  %len.3.i346 = phi i32 [ %add40.i, %if.then38.i ], [ %len.1.i343, %if.end26.i ]
  switch i32 %219, label %do.body.backedge.i [
    i32 4, label %if.then44.i
    i32 0, label %dec_ref_pic_marking.exit
  ], !dbg !881

if.then44.i:                                      ; preds = %if.end41.i
  %max_long_term_frame_idx_plus1.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 4, !dbg !885
  %225 = load i32* %max_long_term_frame_idx_plus1.i, align 4, !dbg !885, !tbaa !679
  %call45.i = tail call i32 @ue_v(i8* getelementptr inbounds ([32 x i8]* @.str52, i64 0, i64 0), i32 %225, %struct.datapartition* %arrayidx3.i330) #7, !dbg !885
  %add46.i = add nsw i32 %call45.i, %len.3.i346, !dbg !885
  tail call void @llvm.dbg.value(metadata !{i32 %add46.i}, i64 0, metadata !855) #6, !dbg !885
  br label %do.body.backedge.i, !dbg !887

do.body.backedge.i:                               ; preds = %if.then44.i, %if.end41.i, %if.end41.thread.i
  %len.0.be.i = phi i32 [ %add31.i345, %if.end41.thread.i ], [ %add46.i, %if.then44.i ], [ %len.3.i346, %if.end41.i ]
  %tmp_drpm.0.in.be.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 5, !dbg !888
  br label %do.body.i339

dec_ref_pic_marking.exit:                         ; preds = %if.end41.i, %if.then.i335, %if.else.i337
  %len.5.i347 = phi i32 [ %add5.i334, %if.then.i335 ], [ %call7.i, %if.else.i337 ], [ %len.3.i346, %if.end41.i ]
  %add171 = add nsw i32 %len.5.i347, %len.8, !dbg !851
  tail call void @llvm.dbg.value(metadata !{i32 %add171}, i64 0, metadata !243), !dbg !851
  br label %if.end172, !dbg !851

if.end172:                                        ; preds = %if.end167, %dec_ref_pic_marking.exit
  %len.9 = phi i32 [ %add171, %dec_ref_pic_marking.exit ], [ %len.8, %if.end167 ]
  %226 = load %struct.InputParameters** @input, align 8, !dbg !889, !tbaa !676
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %226, i64 0, i32 59, !dbg !889
  %227 = load i32* %symbol_mode, align 4, !dbg !889, !tbaa !679
  %cmp173 = icmp eq i32 %227, 1, !dbg !889
  br i1 %cmp173, label %land.lhs.true174, label %if.end180, !dbg !889

land.lhs.true174:                                 ; preds = %if.end172
  %228 = load %struct.ImageParameters** @img, align 8, !dbg !889, !tbaa !676
  %type175 = getelementptr inbounds %struct.ImageParameters* %228, i64 0, i32 6, !dbg !889
  %229 = load i32* %type175, align 4, !dbg !889, !tbaa !679
  %cmp176 = icmp eq i32 %229, 2, !dbg !889
  br i1 %cmp176, label %if.end180, label %if.then177, !dbg !889

if.then177:                                       ; preds = %land.lhs.true174
  %model_number = getelementptr inbounds %struct.ImageParameters* %228, i64 0, i32 118, !dbg !890
  %230 = load i32* %model_number, align 4, !dbg !890, !tbaa !679
  %call178 = tail call i32 @ue_v(i8* getelementptr inbounds ([19 x i8]* @.str18, i64 0, i64 0), i32 %230, %struct.datapartition* %arrayidx3) #7, !dbg !890
  %add179 = add nsw i32 %call178, %len.9, !dbg !890
  tail call void @llvm.dbg.value(metadata !{i32 %add179}, i64 0, metadata !243), !dbg !890
  br label %if.end180, !dbg !892

if.end180:                                        ; preds = %land.lhs.true174, %if.end172, %if.then177
  %len.10 = phi i32 [ %add179, %if.then177 ], [ %len.9, %if.end172 ], [ %len.9, %land.lhs.true174 ]
  %qp = getelementptr inbounds %struct.Slice* %5, i64 0, i32 1, !dbg !893
  %231 = load i32* %qp, align 4, !dbg !893, !tbaa !679
  %sub181 = add nsw i32 %231, -26, !dbg !893
  %232 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !893, !tbaa !676
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %232, i64 0, i32 21, !dbg !893
  %233 = load i32* %pic_init_qp_minus26, align 4, !dbg !893, !tbaa !679
  %sub182 = sub i32 %sub181, %233, !dbg !893
  %call183 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0), i32 %sub182, %struct.datapartition* %arrayidx3) #7, !dbg !893
  %add184 = add nsw i32 %call183, %len.10, !dbg !893
  tail call void @llvm.dbg.value(metadata !{i32 %add184}, i64 0, metadata !243), !dbg !893
  %234 = load %struct.ImageParameters** @img, align 8, !dbg !894, !tbaa !676
  %type185 = getelementptr inbounds %struct.ImageParameters* %234, i64 0, i32 6, !dbg !894
  %235 = load i32* %type185, align 4, !dbg !894, !tbaa !679
  %cmp186 = icmp eq i32 %235, 3, !dbg !894
  br i1 %cmp186, label %if.then190, label %if.end197, !dbg !894

if.then190:                                       ; preds = %if.end180
  %call191 = tail call i32 @u_1(i8* getelementptr inbounds ([23 x i8]* @.str20, i64 0, i64 0), i32 0, %struct.datapartition* %arrayidx3) #7, !dbg !895
  %add192 = add nsw i32 %call191, %add184, !dbg !895
  tail call void @llvm.dbg.value(metadata !{i32 %add192}, i64 0, metadata !243), !dbg !895
  %236 = load %struct.ImageParameters** @img, align 8, !dbg !898, !tbaa !676
  %qpsp = getelementptr inbounds %struct.ImageParameters* %236, i64 0, i32 11, !dbg !898
  %237 = load i32* %qpsp, align 4, !dbg !898, !tbaa !679
  %sub194 = add nsw i32 %237, -26, !dbg !898
  %call195 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str21, i64 0, i64 0), i32 %sub194, %struct.datapartition* %arrayidx3) #7, !dbg !898
  %add196 = add nsw i32 %add192, %call195, !dbg !898
  tail call void @llvm.dbg.value(metadata !{i32 %add196}, i64 0, metadata !243), !dbg !898
  br label %if.end197, !dbg !899

if.end197:                                        ; preds = %if.then190, %if.end180
  %len.12 = phi i32 [ %add196, %if.then190 ], [ %add184, %if.end180 ]
  %238 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !900, !tbaa !676
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %238, i64 0, i32 26, !dbg !900
  %239 = load i32* %deblocking_filter_control_present_flag, align 4, !dbg !900, !tbaa !677
  %tobool198 = icmp eq i32 %239, 0, !dbg !900
  br i1 %tobool198, label %if.end211, label %if.then199, !dbg !900

if.then199:                                       ; preds = %if.end197
  %240 = load %struct.ImageParameters** @img, align 8, !dbg !901, !tbaa !676
  %LFDisableIdc = getelementptr inbounds %struct.ImageParameters* %240, i64 0, i32 75, !dbg !901
  %241 = load i32* %LFDisableIdc, align 4, !dbg !901, !tbaa !679
  %call200 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str22, i64 0, i64 0), i32 %241, %struct.datapartition* %arrayidx3) #7, !dbg !901
  %add201 = add nsw i32 %call200, %len.12, !dbg !901
  tail call void @llvm.dbg.value(metadata !{i32 %add201}, i64 0, metadata !243), !dbg !901
  %242 = load %struct.ImageParameters** @img, align 8, !dbg !903, !tbaa !676
  %LFDisableIdc202 = getelementptr inbounds %struct.ImageParameters* %242, i64 0, i32 75, !dbg !903
  %243 = load i32* %LFDisableIdc202, align 4, !dbg !903, !tbaa !679
  %cmp203 = icmp eq i32 %243, 1, !dbg !903
  br i1 %cmp203, label %if.end211, label %if.then204, !dbg !903

if.then204:                                       ; preds = %if.then199
  %LFAlphaC0Offset = getelementptr inbounds %struct.ImageParameters* %242, i64 0, i32 76, !dbg !904
  %244 = load i32* %LFAlphaC0Offset, align 4, !dbg !904, !tbaa !679
  %div = sdiv i32 %244, 2, !dbg !904
  %call205 = tail call i32 @se_v(i8* getelementptr inbounds ([31 x i8]* @.str23, i64 0, i64 0), i32 %div, %struct.datapartition* %arrayidx3) #7, !dbg !904
  %add206 = add nsw i32 %call205, %add201, !dbg !904
  tail call void @llvm.dbg.value(metadata !{i32 %add206}, i64 0, metadata !243), !dbg !904
  %245 = load %struct.ImageParameters** @img, align 8, !dbg !906, !tbaa !676
  %LFBetaOffset = getelementptr inbounds %struct.ImageParameters* %245, i64 0, i32 77, !dbg !906
  %246 = load i32* %LFBetaOffset, align 4, !dbg !906, !tbaa !679
  %div207 = sdiv i32 %246, 2, !dbg !906
  %call208 = tail call i32 @se_v(i8* getelementptr inbounds ([27 x i8]* @.str24, i64 0, i64 0), i32 %div207, %struct.datapartition* %arrayidx3) #7, !dbg !906
  %add209 = add nsw i32 %add206, %call208, !dbg !906
  tail call void @llvm.dbg.value(metadata !{i32 %add209}, i64 0, metadata !243), !dbg !906
  br label %if.end211, !dbg !907

if.end211:                                        ; preds = %if.then199, %if.end197, %if.then204
  %len.13 = phi i32 [ %add209, %if.then204 ], [ %len.12, %if.end197 ], [ %add201, %if.then199 ]
  %247 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !908, !tbaa !676
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %247, i64 0, i32 8, !dbg !908
  %248 = load i32* %num_slice_groups_minus1, align 4, !dbg !908, !tbaa !679
  %cmp212 = icmp eq i32 %248, 0, !dbg !908
  br i1 %cmp212, label %if.end231, label %land.lhs.true213, !dbg !908

land.lhs.true213:                                 ; preds = %if.end211
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %247, i64 0, i32 9, !dbg !908
  %249 = load i32* %slice_group_map_type, align 4, !dbg !908, !tbaa !679
  %.off = add i32 %249, -3, !dbg !908
  %250 = icmp ult i32 %.off, 3, !dbg !908
  br i1 %250, label %if.then218, label %if.end231, !dbg !908

if.then218:                                       ; preds = %land.lhs.true213
  %251 = load %struct.ImageParameters** @img, align 8, !dbg !909, !tbaa !676
  %PicHeightInMapUnits = getelementptr inbounds %struct.ImageParameters* %251, i64 0, i32 107, !dbg !909
  %252 = load i32* %PicHeightInMapUnits, align 4, !dbg !909, !tbaa !679
  %PicWidthInMbs = getelementptr inbounds %struct.ImageParameters* %251, i64 0, i32 106, !dbg !909
  %253 = load i32* %PicWidthInMbs, align 4, !dbg !909, !tbaa !679
  %mul = mul i32 %253, %252, !dbg !909
  %conv = uitofp i32 %mul to float, !dbg !909
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %247, i64 0, i32 14, !dbg !909
  %254 = load i32* %slice_group_change_rate_minus1, align 4, !dbg !909, !tbaa !679
  %add219 = add i32 %254, 1, !dbg !909
  %conv220 = uitofp i32 %add219 to float, !dbg !909
  %div221 = fdiv float %conv, %conv220, !dbg !909
  %add222 = fadd float %div221, 1.000000e+00, !dbg !909
  tail call void @llvm.dbg.value(metadata !{float %add222}, i64 0, metadata !247), !dbg !909
  %conv223 = fpext float %add222 to double, !dbg !911
  %call224 = tail call double @log(double %conv223) #7, !dbg !911
  %div226 = fdiv double %call224, 0x3FE62E42FEFA39EF, !dbg !911
  %call227 = tail call double @ceil(double %div226) #10, !dbg !911
  %conv228 = fptosi double %call227 to i32, !dbg !911
  tail call void @llvm.dbg.value(metadata !{i32 %conv228}, i64 0, metadata !246), !dbg !911
  %255 = load %struct.ImageParameters** @img, align 8, !dbg !912, !tbaa !676
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters* %255, i64 0, i32 147, !dbg !912
  %256 = load i32* %slice_group_change_cycle, align 4, !dbg !912, !tbaa !679
  %call229 = tail call i32 @u_v(i32 %conv228, i8* getelementptr inbounds ([29 x i8]* @.str25, i64 0, i64 0), i32 %256, %struct.datapartition* %arrayidx3) #7, !dbg !912
  %add230 = add nsw i32 %call229, %len.13, !dbg !912
  tail call void @llvm.dbg.value(metadata !{i32 %add230}, i64 0, metadata !243), !dbg !912
  br label %if.end231, !dbg !913

if.end231:                                        ; preds = %if.end211, %if.then218, %land.lhs.true213
  %len.14 = phi i32 [ %add230, %if.then218 ], [ %len.13, %land.lhs.true213 ], [ %len.13, %if.end211 ]
  %257 = load %struct.InputParameters** @input, align 8, !dbg !914, !tbaa !676
  %partition_mode232 = getelementptr inbounds %struct.InputParameters* %257, i64 0, i32 61, !dbg !914
  %258 = load i32* %partition_mode232, align 4, !dbg !914, !tbaa !679
  %tobool233 = icmp eq i32 %258, 0, !dbg !914
  br i1 %tobool233, label %if.end241, label %land.lhs.true234, !dbg !914

land.lhs.true234:                                 ; preds = %if.end231
  %259 = load %struct.ImageParameters** @img, align 8, !dbg !914, !tbaa !676
  %currentPicture235 = getelementptr inbounds %struct.ImageParameters* %259, i64 0, i32 49, !dbg !914
  %260 = load %struct.Picture** %currentPicture235, align 8, !dbg !914, !tbaa !676
  %idr_flag236 = getelementptr inbounds %struct.Picture* %260, i64 0, i32 1, !dbg !914
  %261 = load i32* %idr_flag236, align 4, !dbg !914, !tbaa !679
  %tobool237 = icmp eq i32 %261, 0, !dbg !914
  br i1 %tobool237, label %if.then238, label %if.end241, !dbg !914

if.then238:                                       ; preds = %land.lhs.true234
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters* %259, i64 0, i32 5, !dbg !915
  %262 = load i32* %current_slice_nr, align 4, !dbg !915, !tbaa !679
  %call239 = tail call i32 @ue_v(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0), i32 %262, %struct.datapartition* %arrayidx3) #7, !dbg !915
  %add240 = add nsw i32 %call239, %len.14, !dbg !915
  tail call void @llvm.dbg.value(metadata !{i32 %add240}, i64 0, metadata !243), !dbg !915
  br label %if.end241, !dbg !917

if.end241:                                        ; preds = %land.lhs.true234, %if.end231, %if.then238
  %len.15 = phi i32 [ %len.14, %land.lhs.true234 ], [ %add240, %if.then238 ], [ %len.14, %if.end231 ]
  ret i32 %len.15, !dbg !918
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i32 @ue_v(i8*, i32, %struct.datapartition*) #2

; Function Attrs: optsize
declare i32 @u_v(i32, i8*, i32, %struct.datapartition*) #2

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: optsize
declare i32 @u_1(i8*, i32, %struct.datapartition*) #2

; Function Attrs: optsize
declare i32 @se_v(i8*, i32, %struct.datapartition*) #2

; Function Attrs: nounwind optsize readnone
declare double @ceil(double) #4

; Function Attrs: nounwind optsize
declare double @log(double) #5

; Function Attrs: nounwind optsize uwtable
define i32 @get_picture_type() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !919, i64 0, metadata !253), !dbg !920
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !921, !tbaa !676
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !921
  %1 = load i32* %type, align 4, !dbg !921, !tbaa !679
  switch i32 %1, label %sw.default [
    i32 2, label %return
    i32 0, label %sw.bb1
    i32 1, label %sw.bb3
    i32 3, label %sw.bb5
  ], !dbg !921

sw.bb1:                                           ; preds = %entry
  br label %return, !dbg !922

sw.bb3:                                           ; preds = %entry
  br label %return, !dbg !924

sw.bb5:                                           ; preds = %entry
  br label %return, !dbg !925

sw.default:                                       ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([28 x i8]* @.str27, i64 0, i64 0), i32 1) #7, !dbg !926
  br label %return, !dbg !927

return:                                           ; preds = %entry, %sw.default, %sw.bb5, %sw.bb3, %sw.bb1
  %retval.0 = phi i32 [ 0, %sw.default ], [ 8, %sw.bb5 ], [ 6, %sw.bb3 ], [ 5, %sw.bb1 ], [ 7, %entry ]
  ret i32 %retval.0, !dbg !928
}

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Partition_BC_Header(i32 %PartNo) #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  call void @llvm.dbg.value(metadata !{i32 %PartNo}, i64 0, metadata !258), !dbg !929
  %idxprom = sext i32 %PartNo to i64, !dbg !930
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !930, !tbaa !676
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !930
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !930, !tbaa !676
  %partArr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 6, !dbg !930
  %2 = load %struct.datapartition** %partArr, align 8, !dbg !930, !tbaa !676
  %arrayidx = getelementptr inbounds %struct.datapartition* %2, i64 %idxprom, !dbg !930
  call void @llvm.dbg.value(metadata !{%struct.datapartition* %arrayidx}, i64 0, metadata !259), !dbg !930
  %3 = bitcast %struct.syntaxelement* %symbol to i8*, !dbg !931
  call void @llvm.lifetime.start(i64 48, i8* %3) #6, !dbg !931
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %symbol}, metadata !260), !dbg !931
  call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %symbol}, i64 0, metadata !261), !dbg !931
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !262), !dbg !932
  %4 = load %struct.InputParameters** @input, align 8, !dbg !933, !tbaa !676
  %of_mode = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 60, !dbg !933
  %5 = load i32* %of_mode, align 4, !dbg !933, !tbaa !679
  %cmp = icmp eq i32 %5, 1, !dbg !933
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !933

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str5, i64 0, i64 0), i32 536, i8* getelementptr inbounds ([29 x i8]* @__PRETTY_FUNCTION__.Partition_BC_Header, i64 0, i64 0)) #9, !dbg !933
  unreachable, !dbg !933

cond.end:                                         ; preds = %entry
  %cmp1 = icmp sgt i32 %PartNo, 0, !dbg !934
  br i1 %cmp1, label %land.lhs.true, label %cond.false5, !dbg !934

land.lhs.true:                                    ; preds = %cond.end
  %max_part_nr = getelementptr inbounds %struct.Slice* %1, i64 0, i32 4, !dbg !934
  %6 = load i32* %max_part_nr, align 4, !dbg !934, !tbaa !679
  %cmp3 = icmp sgt i32 %6, %PartNo, !dbg !934
  br i1 %cmp3, label %cond.end6, label %cond.false5, !dbg !934

cond.false5:                                      ; preds = %land.lhs.true, %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str5, i64 0, i64 0), i32 537, i8* getelementptr inbounds ([29 x i8]* @__PRETTY_FUNCTION__.Partition_BC_Header, i64 0, i64 0)) #9, !dbg !934
  unreachable, !dbg !934

cond.end6:                                        ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0, !dbg !935
  store i32 0, i32* %type, align 8, !dbg !935, !tbaa !679
  %mapping = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 8, !dbg !936
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !936, !tbaa !676
  %value2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2, !dbg !937
  store i32 0, i32* %value2, align 8, !dbg !937, !tbaa !679
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 5, !dbg !938
  %7 = load i32* %current_slice_nr, align 4, !dbg !938, !tbaa !679
  %value1 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1, !dbg !938
  store i32 %7, i32* %value1, align 4, !dbg !938, !tbaa !679
  %call = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %arrayidx) #7, !dbg !939
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !262), !dbg !939
  %8 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !940, !tbaa !676
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %8, i64 0, i32 28, !dbg !940
  %9 = load i32* %redundant_pic_cnt_present_flag, align 4, !dbg !940, !tbaa !677
  %tobool = icmp eq i32 %9, 0, !dbg !940
  br i1 %tobool, label %if.end, label %if.then, !dbg !940

if.then:                                          ; preds = %cond.end6
  %10 = load %struct.ImageParameters** @img, align 8, !dbg !941, !tbaa !676
  %currentSlice7 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 50, !dbg !941
  %11 = load %struct.Slice** %currentSlice7, align 8, !dbg !941, !tbaa !676
  %picture_id = getelementptr inbounds %struct.Slice* %11, i64 0, i32 0, !dbg !941
  %12 = load i32* %picture_id, align 4, !dbg !941, !tbaa !679
  store i32 %12, i32* %value1, align 4, !dbg !941, !tbaa !679
  %call9 = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %arrayidx) #7, !dbg !943
  %add10 = add nsw i32 %call9, %call, !dbg !943
  call void @llvm.dbg.value(metadata !{i32 %add10}, i64 0, metadata !262), !dbg !943
  br label %if.end, !dbg !944

if.end:                                           ; preds = %cond.end6, %if.then
  %len.0 = phi i32 [ %add10, %if.then ], [ %call, %cond.end6 ]
  call void @llvm.lifetime.end(i64 48, i8* %3) #6, !dbg !945
  ret i32 %len.0, !dbg !945
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @ue_linfo(i32, i32, i32*, i32*) #2

; Function Attrs: optsize
declare i32 @writeSyntaxElement_UVLC(%struct.syntaxelement*, %struct.datapartition*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !53, metadata !54, metadata !295, metadata !53, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !28, metadata !33, metadata !38, metadata !45, metadata !49}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 119, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 119, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27}
!6 = metadata !{i32 786472, metadata !"SE_HEADER", i64 0} ; [ DW_TAG_enumerator ] [SE_HEADER :: 0]
!7 = metadata !{i32 786472, metadata !"SE_PTYPE", i64 1} ; [ DW_TAG_enumerator ] [SE_PTYPE :: 1]
!8 = metadata !{i32 786472, metadata !"SE_MBTYPE", i64 2} ; [ DW_TAG_enumerator ] [SE_MBTYPE :: 2]
!9 = metadata !{i32 786472, metadata !"SE_REFFRAME", i64 3} ; [ DW_TAG_enumerator ] [SE_REFFRAME :: 3]
!10 = metadata !{i32 786472, metadata !"SE_INTRAPREDMODE", i64 4} ; [ DW_TAG_enumerator ] [SE_INTRAPREDMODE :: 4]
!11 = metadata !{i32 786472, metadata !"SE_MVD", i64 5} ; [ DW_TAG_enumerator ] [SE_MVD :: 5]
!12 = metadata !{i32 786472, metadata !"SE_CBP_INTRA", i64 6} ; [ DW_TAG_enumerator ] [SE_CBP_INTRA :: 6]
!13 = metadata !{i32 786472, metadata !"SE_LUM_DC_INTRA", i64 7} ; [ DW_TAG_enumerator ] [SE_LUM_DC_INTRA :: 7]
!14 = metadata !{i32 786472, metadata !"SE_CHR_DC_INTRA", i64 8} ; [ DW_TAG_enumerator ] [SE_CHR_DC_INTRA :: 8]
!15 = metadata !{i32 786472, metadata !"SE_LUM_AC_INTRA", i64 9} ; [ DW_TAG_enumerator ] [SE_LUM_AC_INTRA :: 9]
!16 = metadata !{i32 786472, metadata !"SE_CHR_AC_INTRA", i64 10} ; [ DW_TAG_enumerator ] [SE_CHR_AC_INTRA :: 10]
!17 = metadata !{i32 786472, metadata !"SE_CBP_INTER", i64 11} ; [ DW_TAG_enumerator ] [SE_CBP_INTER :: 11]
!18 = metadata !{i32 786472, metadata !"SE_LUM_DC_INTER", i64 12} ; [ DW_TAG_enumerator ] [SE_LUM_DC_INTER :: 12]
!19 = metadata !{i32 786472, metadata !"SE_CHR_DC_INTER", i64 13} ; [ DW_TAG_enumerator ] [SE_CHR_DC_INTER :: 13]
!20 = metadata !{i32 786472, metadata !"SE_LUM_AC_INTER", i64 14} ; [ DW_TAG_enumerator ] [SE_LUM_AC_INTER :: 14]
!21 = metadata !{i32 786472, metadata !"SE_CHR_AC_INTER", i64 15} ; [ DW_TAG_enumerator ] [SE_CHR_AC_INTER :: 15]
!22 = metadata !{i32 786472, metadata !"SE_DELTA_QUANT_INTER", i64 16} ; [ DW_TAG_enumerator ] [SE_DELTA_QUANT_INTER :: 16]
!23 = metadata !{i32 786472, metadata !"SE_DELTA_QUANT_INTRA", i64 17} ; [ DW_TAG_enumerator ] [SE_DELTA_QUANT_INTRA :: 17]
!24 = metadata !{i32 786472, metadata !"SE_BFRAME", i64 18} ; [ DW_TAG_enumerator ] [SE_BFRAME :: 18]
!25 = metadata !{i32 786472, metadata !"SE_EOS", i64 19} ; [ DW_TAG_enumerator ] [SE_EOS :: 19]
!26 = metadata !{i32 786472, metadata !"SE_TRANSFORM_SIZE_FLAG", i64 20} ; [ DW_TAG_enumerator ] [SE_TRANSFORM_SIZE_FLAG :: 20]
!27 = metadata !{i32 786472, metadata !"SE_MAX_ELEMENTS", i64 21} ; [ DW_TAG_enumerator ] [SE_MAX_ELEMENTS :: 21]
!28 = metadata !{i32 786436, metadata !29, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32}
!31 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!32 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!33 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 185, size 32, align 32, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !36, metadata !37}
!35 = metadata !{i32 786472, metadata !"FRAME", i64 0} ; [ DW_TAG_enumerator ] [FRAME :: 0]
!36 = metadata !{i32 786472, metadata !"TOP_FIELD", i64 1} ; [ DW_TAG_enumerator ] [TOP_FIELD :: 1]
!37 = metadata !{i32 786472, metadata !"BOTTOM_FIELD", i64 2} ; [ DW_TAG_enumerator ] [BOTTOM_FIELD :: 2]
!38 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 192, i64 32, i64 32, i32 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 192, size 32, align 32, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!40 = metadata !{i32 786472, metadata !"P_SLICE", i64 0} ; [ DW_TAG_enumerator ] [P_SLICE :: 0]
!41 = metadata !{i32 786472, metadata !"B_SLICE", i64 1} ; [ DW_TAG_enumerator ] [B_SLICE :: 1]
!42 = metadata !{i32 786472, metadata !"I_SLICE", i64 2} ; [ DW_TAG_enumerator ] [I_SLICE :: 2]
!43 = metadata !{i32 786472, metadata !"SP_SLICE", i64 3} ; [ DW_TAG_enumerator ] [SP_SLICE :: 3]
!44 = metadata !{i32 786472, metadata !"SI_SLICE", i64 4} ; [ DW_TAG_enumerator ] [SI_SLICE :: 4]
!45 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 178, i64 32, i64 32, i32 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 178, size 32, align 32, offset 0] [from ]
!46 = metadata !{metadata !47, metadata !48}
!47 = metadata !{i32 786472, metadata !"UVLC", i64 0} ; [ DW_TAG_enumerator ] [UVLC :: 0]
!48 = metadata !{i32 786472, metadata !"CABAC", i64 1} ; [ DW_TAG_enumerator ] [CABAC :: 1]
!49 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 104, i64 32, i64 32, i32 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 104, size 32, align 32, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786472, metadata !"PAR_OF_ANNEXB", i64 0} ; [ DW_TAG_enumerator ] [PAR_OF_ANNEXB :: 0]
!52 = metadata !{i32 786472, metadata !"PAR_OF_RTP", i64 1} ; [ DW_TAG_enumerator ] [PAR_OF_RTP :: 1]
!53 = metadata !{i32 0}
!54 = metadata !{metadata !55, metadata !251, metadata !254, metadata !263, metadata !270, metadata !288}
!55 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"SliceHeader", metadata !"SliceHeader", metadata !"", i32 57, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @SliceHeader, null, null, metadata !60, i32 58} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 58] [SliceHeader]
!56 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!60 = metadata !{metadata !61, metadata !62, metadata !140, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !249}
!61 = metadata !{i32 786688, metadata !55, metadata !"dP_nr", metadata !56, i32 59, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dP_nr] [line 59]
!62 = metadata !{i32 786688, metadata !55, metadata !"partition", metadata !56, i32 60, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 60]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!64 = metadata !{i32 786454, metadata !1, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!65 = metadata !{i32 786451, metadata !4, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !66, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !86, metadata !112}
!67 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!69 = metadata !{i32 786454, metadata !4, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!70 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !71, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !85}
!72 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!73 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!74 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!75 = metadata !{i32 786454, metadata !4, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!76 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!77 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!78 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!79 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !75} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!80 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !75} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!81 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!82 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !59} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!83 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !84} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!85 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !59} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!86 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!87 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!88 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !89, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!89 = metadata !{metadata !90, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!90 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!91 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!92 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !91} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!93 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!94 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !91} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!95 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !91} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!96 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !84} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!97 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !98} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!99 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !91} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!100 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !91} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!101 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !91} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!102 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !91} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!103 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !91} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!104 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !84} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!105 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !98} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!106 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !59} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!107 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !59} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!108 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !59} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!109 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !59} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!110 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !59} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!111 = metadata !{i32 786445, metadata !4, metadata !88, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !59} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!112 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !113} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!114 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!115 = metadata !{metadata !59, metadata !116, metadata !139}
!116 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!117 = metadata !{i32 786454, metadata !4, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!118 = metadata !{i32 786451, metadata !4, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !119, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !132}
!120 = metadata !{i32 786445, metadata !4, metadata !118, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!121 = metadata !{i32 786445, metadata !4, metadata !118, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!122 = metadata !{i32 786445, metadata !4, metadata !118, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!123 = metadata !{i32 786445, metadata !4, metadata !118, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!124 = metadata !{i32 786445, metadata !4, metadata !118, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!125 = metadata !{i32 786445, metadata !4, metadata !118, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !91} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!126 = metadata !{i32 786445, metadata !4, metadata !118, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!127 = metadata !{i32 786445, metadata !4, metadata !118, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !59} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!128 = metadata !{i32 786445, metadata !4, metadata !118, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !129} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{null, metadata !59, metadata !59, metadata !98, metadata !98}
!132 = metadata !{i32 786445, metadata !4, metadata !118, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !133} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!133 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !134} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!134 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{null, metadata !136, metadata !137}
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!137 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!140 = metadata !{i32 786688, metadata !55, metadata !"currSlice", metadata !56, i32 61, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currSlice] [line 61]
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!142 = metadata !{i32 786454, metadata !4, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!143 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !144, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!144 = metadata !{metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !191, metadata !218, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !240}
!145 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!146 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!147 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!148 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!149 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!150 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!151 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !63} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!152 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !153} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!153 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !154} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!154 = metadata !{i32 786454, metadata !4, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !155} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!155 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !156, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!156 = metadata !{metadata !157, metadata !170, metadata !175, metadata !179, metadata !183, metadata !187, metadata !188}
!157 = metadata !{i32 786445, metadata !4, metadata !155, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!158 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !159, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!159 = metadata !{i32 786454, metadata !4, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!160 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !161, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!161 = metadata !{metadata !162, metadata !164, metadata !165}
!162 = metadata !{i32 786445, metadata !4, metadata !160, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !163} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!163 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!164 = metadata !{i32 786445, metadata !4, metadata !160, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !76} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!165 = metadata !{i32 786445, metadata !4, metadata !160, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !166} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!166 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!167 = metadata !{metadata !168, metadata !169}
!168 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!169 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!170 = metadata !{i32 786445, metadata !4, metadata !155, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !171} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!171 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !159, metadata !172, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!172 = metadata !{metadata !173, metadata !174}
!173 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!174 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!175 = metadata !{i32 786445, metadata !4, metadata !155, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !176} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!176 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !159, metadata !177, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!177 = metadata !{metadata !173, metadata !178}
!178 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!179 = metadata !{i32 786445, metadata !4, metadata !155, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !180} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!180 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !159, metadata !181, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!181 = metadata !{metadata !173, metadata !182}
!182 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!183 = metadata !{i32 786445, metadata !4, metadata !155, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !184} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!184 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !159, metadata !185, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!185 = metadata !{metadata !186}
!186 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!187 = metadata !{i32 786445, metadata !4, metadata !155, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !184} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!188 = metadata !{i32 786445, metadata !4, metadata !155, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !189} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!189 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !159, metadata !190, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!190 = metadata !{metadata !168}
!191 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !192} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!192 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !193} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!193 = metadata !{i32 786454, metadata !4, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!194 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !195, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!195 = metadata !{metadata !196, metadata !199, metadata !200, metadata !203, metadata !206, metadata !210, metadata !211, metadata !215, metadata !216, metadata !217}
!196 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !197} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!197 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !159, metadata !198, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!198 = metadata !{metadata !173}
!199 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !184} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!200 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !201} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!201 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !159, metadata !202, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!202 = metadata !{metadata !168, metadata !186}
!203 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !204} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!204 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !159, metadata !205, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!205 = metadata !{metadata !178, metadata !186}
!206 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !207} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!207 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !159, metadata !208, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!208 = metadata !{metadata !178, metadata !209}
!209 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!210 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !207} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!211 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !212} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!212 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !159, metadata !213, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!213 = metadata !{metadata !178, metadata !214}
!214 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!215 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !212} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!216 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !207} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!217 = metadata !{i32 786445, metadata !4, metadata !194, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !207} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!218 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !219} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !220} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!220 = metadata !{i32 786454, metadata !4, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !221} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!221 = metadata !{i32 786451, metadata !4, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !222, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!222 = metadata !{metadata !223, metadata !224, metadata !225}
!223 = metadata !{i32 786445, metadata !4, metadata !221, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!224 = metadata !{i32 786445, metadata !4, metadata !221, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!225 = metadata !{i32 786445, metadata !4, metadata !221, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !226} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!226 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !221} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!227 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !59} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!228 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !98} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!229 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !98} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!230 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !98} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!231 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !59} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!232 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !98} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!233 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !98} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!234 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !98} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!235 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !236} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!236 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!237 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!238 = metadata !{metadata !239, metadata !59}
!239 = metadata !{i32 786454, metadata !4, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!240 = metadata !{i32 786445, metadata !4, metadata !143, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !241} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!241 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !59, metadata !242, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!242 = metadata !{metadata !168, metadata !173}
!243 = metadata !{i32 786688, metadata !55, metadata !"len", metadata !56, i32 62, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 62]
!244 = metadata !{i32 786688, metadata !55, metadata !"field_pic_flag", metadata !56, i32 63, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [field_pic_flag] [line 63]
!245 = metadata !{i32 786688, metadata !55, metadata !"bottom_field_flag", metadata !56, i32 63, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bottom_field_flag] [line 63]
!246 = metadata !{i32 786688, metadata !55, metadata !"num_bits_slice_group_change_cycle", metadata !56, i32 65, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_bits_slice_group_change_cycle] [line 65]
!247 = metadata !{i32 786688, metadata !55, metadata !"numtmp", metadata !56, i32 66, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numtmp] [line 66]
!248 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!249 = metadata !{i32 786688, metadata !250, metadata !"override_flag", metadata !56, i32 146, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [override_flag] [line 146]
!250 = metadata !{i32 786443, metadata !1, metadata !55, i32 145, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!251 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"get_picture_type", metadata !"get_picture_type", metadata !"", i32 472, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @get_picture_type, null, null, metadata !252, i32 473} ; [ DW_TAG_subprogram ] [line 472] [def] [scope 473] [get_picture_type]
!252 = metadata !{metadata !253}
!253 = metadata !{i32 786688, metadata !251, metadata !"same_slicetype_for_whole_frame", metadata !56, i32 476, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [same_slicetype_for_whole_frame] [line 476]
!254 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"Partition_BC_Header", metadata !"Partition_BC_Header", metadata !"", i32 529, metadata !255, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @Partition_BC_Header, null, null, metadata !257, i32 530} ; [ DW_TAG_subprogram ] [line 529] [def] [scope 530] [Partition_BC_Header]
!255 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!256 = metadata !{metadata !59, metadata !59}
!257 = metadata !{metadata !258, metadata !259, metadata !260, metadata !261, metadata !262}
!258 = metadata !{i32 786689, metadata !254, metadata !"PartNo", metadata !56, i32 16777745, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PartNo] [line 529]
!259 = metadata !{i32 786688, metadata !254, metadata !"partition", metadata !56, i32 531, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 531]
!260 = metadata !{i32 786688, metadata !254, metadata !"symbol", metadata !56, i32 532, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbol] [line 532]
!261 = metadata !{i32 786688, metadata !254, metadata !"sym", metadata !56, i32 532, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 532]
!262 = metadata !{i32 786688, metadata !254, metadata !"len", metadata !56, i32 534, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 534]
!263 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"pred_weight_table", metadata !"pred_weight_table", metadata !"", i32 381, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !264, i32 382} ; [ DW_TAG_subprogram ] [line 381] [local] [def] [scope 382] [pred_weight_table]
!264 = metadata !{metadata !265, metadata !266, metadata !267, metadata !268, metadata !269}
!265 = metadata !{i32 786688, metadata !263, metadata !"dP_nr", metadata !56, i32 383, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dP_nr] [line 383]
!266 = metadata !{i32 786688, metadata !263, metadata !"partition", metadata !56, i32 384, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 384]
!267 = metadata !{i32 786688, metadata !263, metadata !"len", metadata !56, i32 386, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 386]
!268 = metadata !{i32 786688, metadata !263, metadata !"i", metadata !56, i32 387, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 387]
!269 = metadata !{i32 786688, metadata !263, metadata !"j", metadata !56, i32 387, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 387]
!270 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"dec_ref_pic_marking", metadata !"dec_ref_pic_marking", metadata !"", i32 314, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !271, i32 315} ; [ DW_TAG_subprogram ] [line 314] [local] [def] [scope 315] [dec_ref_pic_marking]
!271 = metadata !{metadata !272, metadata !273, metadata !274, metadata !286, metadata !287}
!272 = metadata !{i32 786688, metadata !270, metadata !"dP_nr", metadata !56, i32 316, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dP_nr] [line 316]
!273 = metadata !{i32 786688, metadata !270, metadata !"partition", metadata !56, i32 317, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 317]
!274 = metadata !{i32 786688, metadata !270, metadata !"tmp_drpm", metadata !56, i32 319, metadata !275, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_drpm] [line 319]
!275 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !276} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DecRefPicMarking_t]
!276 = metadata !{i32 786454, metadata !4, null, metadata !"DecRefPicMarking_t", i32 324, i64 0, i64 0, i64 0, i32 0, metadata !277} ; [ DW_TAG_typedef ] [DecRefPicMarking_t] [line 324, size 0, align 0, offset 0] [from DecRefPicMarking_s]
!277 = metadata !{i32 786451, metadata !4, null, metadata !"DecRefPicMarking_s", i32 316, i64 256, i64 64, i32 0, i32 0, null, metadata !278, i32 0, null, null} ; [ DW_TAG_structure_type ] [DecRefPicMarking_s] [line 316, size 256, align 64, offset 0] [from ]
!278 = metadata !{metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284}
!279 = metadata !{i32 786445, metadata !4, metadata !277, metadata !"memory_management_control_operation", i32 318, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [memory_management_control_operation] [line 318, size 32, align 32, offset 0] [from int]
!280 = metadata !{i32 786445, metadata !4, metadata !277, metadata !"difference_of_pic_nums_minus1", i32 319, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [difference_of_pic_nums_minus1] [line 319, size 32, align 32, offset 32] [from int]
!281 = metadata !{i32 786445, metadata !4, metadata !277, metadata !"long_term_pic_num", i32 320, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [long_term_pic_num] [line 320, size 32, align 32, offset 64] [from int]
!282 = metadata !{i32 786445, metadata !4, metadata !277, metadata !"long_term_frame_idx", i32 321, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [long_term_frame_idx] [line 321, size 32, align 32, offset 96] [from int]
!283 = metadata !{i32 786445, metadata !4, metadata !277, metadata !"max_long_term_frame_idx_plus1", i32 322, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [max_long_term_frame_idx_plus1] [line 322, size 32, align 32, offset 128] [from int]
!284 = metadata !{i32 786445, metadata !4, metadata !277, metadata !"Next", i32 323, i64 64, i64 64, i64 192, i32 0, metadata !285} ; [ DW_TAG_member ] [Next] [line 323, size 64, align 64, offset 192] [from ]
!285 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !277} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DecRefPicMarking_s]
!286 = metadata !{i32 786688, metadata !270, metadata !"val", metadata !56, i32 321, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 321]
!287 = metadata !{i32 786688, metadata !270, metadata !"len", metadata !56, i32 321, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 321]
!288 = metadata !{i32 786478, metadata !1, metadata !56, metadata !"ref_pic_list_reordering", metadata !"ref_pic_list_reordering", metadata !"", i32 240, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !289, i32 241} ; [ DW_TAG_subprogram ] [line 240] [local] [def] [scope 241] [ref_pic_list_reordering]
!289 = metadata !{metadata !290, metadata !291, metadata !292, metadata !293, metadata !294}
!290 = metadata !{i32 786688, metadata !288, metadata !"dP_nr", metadata !56, i32 242, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dP_nr] [line 242]
!291 = metadata !{i32 786688, metadata !288, metadata !"partition", metadata !56, i32 243, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 243]
!292 = metadata !{i32 786688, metadata !288, metadata !"currSlice", metadata !56, i32 244, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currSlice] [line 244]
!293 = metadata !{i32 786688, metadata !288, metadata !"i", metadata !56, i32 246, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 246]
!294 = metadata !{i32 786688, metadata !288, metadata !"len", metadata !56, i32 246, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 246]
!295 = metadata !{metadata !296, metadata !300, metadata !301, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !324, metadata !326, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !371, metadata !466, metadata !467, metadata !468, metadata !470, metadata !471, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !490, metadata !491, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !507, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !519, metadata !522, metadata !523, metadata !524, metadata !525, metadata !528, metadata !531, metadata !542, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !641, metadata !642, metadata !643, metadata !644, metadata !645, metadata !647, metadata !648, metadata !649, metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !673}
!296 = metadata !{i32 786484, i32 0, null, metadata !"assignSE2partition_NoDP", metadata !"assignSE2partition_NoDP", metadata !"", metadata !56, i32 39, metadata !297, i32 0, i32 1, [21 x i32]* @assignSE2partition_NoDP, null} ; [ DW_TAG_variable ] [assignSE2partition_NoDP] [line 39] [def]
!297 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 672, i64 32, i32 0, i32 0, metadata !59, metadata !298, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 672, align 32, offset 0] [from int]
!298 = metadata !{metadata !299}
!299 = metadata !{i32 786465, i64 0, i64 21}      ; [ DW_TAG_subrange_type ] [0, 20]
!300 = metadata !{i32 786484, i32 0, null, metadata !"assignSE2partition_DP", metadata !"assignSE2partition_DP", metadata !"", metadata !56, i32 41, metadata !297, i32 0, i32 1, [21 x i32]* @assignSE2partition_DP, null} ; [ DW_TAG_variable ] [assignSE2partition_DP] [line 41] [def]
!301 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !302, i32 558, metadata !303, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!302 = metadata !{i32 786473, metadata !4}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!303 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !304} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!304 = metadata !{i32 786454, metadata !4, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !305} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!305 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !306, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!306 = metadata !{metadata !307, metadata !308, metadata !309, metadata !313, metadata !314, metadata !315, metadata !316}
!307 = metadata !{i32 786445, metadata !4, metadata !305, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!308 = metadata !{i32 786445, metadata !4, metadata !305, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!309 = metadata !{i32 786445, metadata !4, metadata !305, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !310} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!310 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !141, metadata !311, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!311 = metadata !{metadata !312}
!312 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!313 = metadata !{i32 786445, metadata !4, metadata !305, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !59} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!314 = metadata !{i32 786445, metadata !4, metadata !305, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !248} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!315 = metadata !{i32 786445, metadata !4, metadata !305, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !248} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!316 = metadata !{i32 786445, metadata !4, metadata !305, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !248} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!317 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !302, i32 559, metadata !303, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!318 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !302, i32 560, metadata !303, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!319 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !302, i32 561, metadata !303, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!320 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !302, i32 562, metadata !303, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!321 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !302, i32 565, metadata !322, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!322 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !323} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!323 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!324 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !302, i32 566, metadata !325, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!325 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !322} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!326 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !302, i32 567, metadata !327, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!327 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!328 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !302, i32 569, metadata !91, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!329 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !302, i32 570, metadata !91, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!330 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !302, i32 572, metadata !59, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!331 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !302, i32 572, metadata !59, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!332 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !302, i32 573, metadata !333, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!333 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !334} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!334 = metadata !{i32 786454, metadata !29, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !335} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!335 = metadata !{i32 786451, metadata !29, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !336, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!336 = metadata !{metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !347, metadata !348, metadata !349, metadata !350, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370}
!337 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !239} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!338 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !91} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!339 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!340 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !239} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!341 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !239} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!342 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !239} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!343 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !344} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!344 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !59, metadata !345, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!345 = metadata !{metadata !346}
!346 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!347 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !239} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!348 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !91} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!349 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !91} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!350 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !351} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!351 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !91, metadata !345, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!352 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !351} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!353 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !351} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!354 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !239} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!355 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !91} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!356 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !91} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!357 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !84} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!358 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !59} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!359 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !59} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!360 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !239} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!361 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !91} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!362 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!363 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!364 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !59} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!365 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !59} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!366 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !59} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!367 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !239} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!368 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !239} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!369 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !239} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!370 = metadata !{i32 786445, metadata !29, metadata !335, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !239} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!371 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !302, i32 574, metadata !372, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!372 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !373} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!373 = metadata !{i32 786454, metadata !29, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !374} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!374 = metadata !{i32 786451, metadata !29, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !375, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!375 = metadata !{metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413}
!376 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !239} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!377 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !91} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!378 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !239} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!379 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !239} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!380 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !239} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!381 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !239} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!382 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !91} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!383 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !91} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!384 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !91} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!385 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !239} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!386 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !344} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!387 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !91} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!388 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !91} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!389 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !91} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!390 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !91} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!391 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !91} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!392 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !239} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!393 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !59} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!394 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !59} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!395 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !91} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!396 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !397} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!397 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !59, metadata !398, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!398 = metadata !{metadata !399}
!399 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!400 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !91} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!401 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !239} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!402 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !91} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!403 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !91} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!404 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !239} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!405 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !239} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!406 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !239} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!407 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !239} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!408 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !91} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!409 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !91} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!410 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !91} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!411 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !91} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!412 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !239} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!413 = metadata !{i32 786445, metadata !29, metadata !374, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !414} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!414 = metadata !{i32 786454, metadata !29, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !415} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!415 = metadata !{i32 786451, metadata !29, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !416, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!416 = metadata !{metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465}
!417 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !239} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!418 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !91} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!419 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!420 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !91} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!421 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !239} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!422 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !239} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!423 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !239} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!424 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !91} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!425 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !239} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!426 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !239} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!427 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !91} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!428 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !91} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!429 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !91} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!430 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !239} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!431 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !91} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!432 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !91} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!433 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !239} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!434 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !91} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!435 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !91} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!436 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !239} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!437 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !239} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!438 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !439} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!439 = metadata !{i32 786454, metadata !29, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !440} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!440 = metadata !{i32 786451, metadata !29, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !441, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!441 = metadata !{metadata !442, metadata !443, metadata !444, metadata !445, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454}
!442 = metadata !{i32 786445, metadata !29, metadata !440, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!443 = metadata !{i32 786445, metadata !29, metadata !440, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !91} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!444 = metadata !{i32 786445, metadata !29, metadata !440, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!445 = metadata !{i32 786445, metadata !29, metadata !440, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !446} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!446 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !91, metadata !447, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!447 = metadata !{metadata !448}
!448 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!449 = metadata !{i32 786445, metadata !29, metadata !440, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !446} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!450 = metadata !{i32 786445, metadata !29, metadata !440, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !446} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!451 = metadata !{i32 786445, metadata !29, metadata !440, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !91} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!452 = metadata !{i32 786445, metadata !29, metadata !440, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !91} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!453 = metadata !{i32 786445, metadata !29, metadata !440, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !91} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!454 = metadata !{i32 786445, metadata !29, metadata !440, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !91} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!455 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !239} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!456 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !439} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!457 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !239} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!458 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !239} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!459 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !239} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!460 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !91} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!461 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !91} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!462 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !91} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!463 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !91} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!464 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !91} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!465 = metadata !{i32 786445, metadata !29, metadata !415, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !91} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!466 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !302, i32 578, metadata !59, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!467 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !302, i32 579, metadata !59, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!468 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !302, i32 583, metadata !469, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!469 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !327} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!470 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !302, i32 584, metadata !469, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!471 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !302, i32 585, metadata !472, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!472 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !469} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!473 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !302, i32 586, metadata !59, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!474 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !302, i32 587, metadata !59, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!475 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !302, i32 588, metadata !59, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!476 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !302, i32 589, metadata !59, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!477 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !302, i32 592, metadata !322, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!478 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !302, i32 593, metadata !322, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!479 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !302, i32 595, metadata !325, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!480 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !302, i32 596, metadata !325, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!481 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !302, i32 598, metadata !322, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!482 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !302, i32 599, metadata !325, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!483 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !302, i32 601, metadata !322, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!484 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !302, i32 602, metadata !325, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!485 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !302, i32 604, metadata !486, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!486 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !487} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!487 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !488} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!488 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !489} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!489 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!490 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !302, i32 605, metadata !487, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!491 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !302, i32 608, metadata !492, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!492 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!493 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !302, i32 609, metadata !492, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!494 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !302, i32 610, metadata !59, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!495 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !302, i32 612, metadata !59, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!496 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !302, i32 612, metadata !59, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!497 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !302, i32 612, metadata !59, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!498 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !302, i32 613, metadata !59, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!499 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !302, i32 613, metadata !59, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!500 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !302, i32 613, metadata !59, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!501 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !302, i32 614, metadata !59, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!502 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !302, i32 617, metadata !503, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!503 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !504, metadata !505, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!504 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!505 = metadata !{metadata !506}
!506 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!507 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !302, i32 620, metadata !508, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!508 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !59, metadata !509, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!509 = metadata !{metadata !510, metadata !510}
!510 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!511 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !302, i32 620, metadata !508, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!512 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !302, i32 620, metadata !508, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!513 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !302, i32 621, metadata !508, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!514 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !302, i32 621, metadata !508, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!515 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !302, i32 621, metadata !508, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!516 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !302, i32 622, metadata !517, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!517 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !59, metadata !518, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!518 = metadata !{metadata !168, metadata !510, metadata !510}
!519 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !302, i32 623, metadata !520, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!520 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !59, metadata !521, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!521 = metadata !{metadata !173, metadata !186, metadata !186}
!522 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !302, i32 623, metadata !520, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!523 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !302, i32 624, metadata !520, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!524 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !302, i32 624, metadata !520, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!525 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !302, i32 625, metadata !526, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!526 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !59, metadata !527, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!527 = metadata !{metadata !186, metadata !186}
!528 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !302, i32 625, metadata !529, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!529 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !59, metadata !530, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!530 = metadata !{metadata !510}
!531 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !302, i32 1201, metadata !532, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!532 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !533} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!533 = metadata !{i32 786454, metadata !4, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !534} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!534 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !535, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!535 = metadata !{metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541}
!536 = metadata !{i32 786445, metadata !4, metadata !534, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!537 = metadata !{i32 786445, metadata !4, metadata !534, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!538 = metadata !{i32 786445, metadata !4, metadata !534, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!539 = metadata !{i32 786445, metadata !4, metadata !534, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!540 = metadata !{i32 786445, metadata !4, metadata !534, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!541 = metadata !{i32 786445, metadata !4, metadata !534, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!542 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !302, i32 1202, metadata !543, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!543 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !544} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!544 = metadata !{i32 786454, metadata !4, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !545} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!545 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !546, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!546 = metadata !{metadata !547, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !566, metadata !567, metadata !571, metadata !572, metadata !573, metadata !574, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582}
!547 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !548} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!548 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!549 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !508} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!550 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !508} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!551 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !508} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!552 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !472} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!553 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !469} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!554 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !59} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!555 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !59} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!556 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !557} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!557 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !59, metadata !185, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!558 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !557} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!559 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !327} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!560 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !529} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!561 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !59} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!562 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !563} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!563 = metadata !{i32 786454, metadata !4, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !564} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!564 = metadata !{i32 786454, metadata !4, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !565} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!565 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!566 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !59} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!567 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !568} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!568 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !569} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!569 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !570} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!570 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !486} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!571 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !568} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!572 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !568} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!573 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !568} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!574 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !575} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!575 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !489, metadata !521, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!576 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !59} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!577 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !59} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!578 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !59} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!579 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !59} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!580 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !59} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!581 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !59} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!582 = metadata !{i32 786445, metadata !4, metadata !545, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !59} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!583 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !302, i32 1203, metadata !544, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!584 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !302, i32 1203, metadata !544, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!585 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !302, i32 1204, metadata !544, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!586 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !302, i32 1204, metadata !544, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!587 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !302, i32 1230, metadata !588, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!588 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !589} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!589 = metadata !{i32 786454, metadata !4, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !590} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!590 = metadata !{i32 786451, metadata !591, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !592, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!591 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!592 = metadata !{metadata !593, metadata !594, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !614, metadata !615, metadata !616, metadata !617, metadata !619, metadata !620, metadata !622, metadata !626, metadata !628, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !636, metadata !637}
!593 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!594 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !595} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!595 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !504} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!596 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !595} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!597 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !595} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!598 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !595} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!599 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !595} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!600 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !595} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!601 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !595} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!602 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !595} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!603 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !595} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!604 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !595} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!605 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !595} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!606 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !607} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!607 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !608} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!608 = metadata !{i32 786451, metadata !591, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !609, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!609 = metadata !{metadata !610, metadata !611, metadata !613}
!610 = metadata !{i32 786445, metadata !591, metadata !608, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !607} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!611 = metadata !{i32 786445, metadata !591, metadata !608, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !612} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!612 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !590} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!613 = metadata !{i32 786445, metadata !591, metadata !608, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!614 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !612} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!615 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !59} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!616 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !59} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!617 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !618} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!618 = metadata !{i32 786454, metadata !591, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !565} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!619 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !163} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!620 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !621} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!621 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!622 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !623} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!623 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !504, metadata !624, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!624 = metadata !{metadata !625}
!625 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!626 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !627} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!627 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!628 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !629} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!629 = metadata !{i32 786454, metadata !591, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !565} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!630 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !627} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!631 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !627} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!632 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !627} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!633 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !627} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!634 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !635} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!635 = metadata !{i32 786454, metadata !591, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!636 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !59} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!637 = metadata !{i32 786445, metadata !591, metadata !590, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !638} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!638 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !504, metadata !639, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!639 = metadata !{metadata !640}
!640 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!641 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !302, i32 1231, metadata !588, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!642 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !302, i32 1232, metadata !588, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!643 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !302, i32 1233, metadata !59, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!644 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !302, i32 1234, metadata !59, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!645 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !302, i32 1237, metadata !646, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!646 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !59, metadata !639, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!647 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !302, i32 1238, metadata !646, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!648 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !302, i32 1239, metadata !646, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!649 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !302, i32 1240, metadata !646, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!650 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !302, i32 1241, metadata !646, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!651 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !302, i32 1242, metadata !646, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!652 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !302, i32 1456, metadata !59, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!653 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !302, i32 1465, metadata !59, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!654 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !302, i32 1466, metadata !59, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!655 = metadata !{i32 786484, i32 0, null, metadata !"WriteNALU", metadata !"WriteNALU", metadata !"", metadata !656, i32 28, metadata !658, i32 0, i32 1, i32 (%struct.NALU_t*)** @WriteNALU, null} ; [ DW_TAG_variable ] [WriteNALU] [line 28] [def]
!656 = metadata !{i32 786473, metadata !657}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h]
!657 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!658 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !659} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!659 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !660, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!660 = metadata !{metadata !59, metadata !661}
!661 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !662} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from NALU_t]
!662 = metadata !{i32 786454, metadata !657, null, metadata !"NALU_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !663} ; [ DW_TAG_typedef ] [NALU_t] [line 49, size 0, align 0, offset 0] [from ]
!663 = metadata !{i32 786451, metadata !664, null, metadata !"", i32 40, i64 256, i64 64, i32 0, i32 0, null, metadata !665, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 256, align 64, offset 0] [from ]
!664 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalucommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!665 = metadata !{metadata !666, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672}
!666 = metadata !{i32 786445, metadata !664, metadata !663, metadata !"startcodeprefix_len", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [startcodeprefix_len] [line 42, size 32, align 32, offset 0] [from int]
!667 = metadata !{i32 786445, metadata !664, metadata !663, metadata !"len", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !91} ; [ DW_TAG_member ] [len] [line 43, size 32, align 32, offset 32] [from unsigned int]
!668 = metadata !{i32 786445, metadata !664, metadata !663, metadata !"max_size", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [max_size] [line 44, size 32, align 32, offset 64] [from unsigned int]
!669 = metadata !{i32 786445, metadata !664, metadata !663, metadata !"nal_unit_type", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [nal_unit_type] [line 45, size 32, align 32, offset 96] [from int]
!670 = metadata !{i32 786445, metadata !664, metadata !663, metadata !"nal_reference_idc", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [nal_reference_idc] [line 46, size 32, align 32, offset 128] [from int]
!671 = metadata !{i32 786445, metadata !664, metadata !663, metadata !"forbidden_bit", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [forbidden_bit] [line 47, size 32, align 32, offset 160] [from int]
!672 = metadata !{i32 786445, metadata !664, metadata !663, metadata !"buf", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !84} ; [ DW_TAG_member ] [buf] [line 48, size 64, align 64, offset 192] [from ]
!673 = metadata !{i32 786484, i32 0, null, metadata !"assignSE2partition", metadata !"assignSE2partition", metadata !"", metadata !56, i32 38, metadata !674, i32 0, i32 1, [2 x i32*]* @assignSE2partition, null} ; [ DW_TAG_variable ] [assignSE2partition] [line 38] [def]
!674 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !98, metadata !198, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from ]
!675 = metadata !{i32 59, i32 0, metadata !55, null}
!676 = metadata !{metadata !"any pointer", metadata !677}
!677 = metadata !{metadata !"omnipotent char", metadata !678}
!678 = metadata !{metadata !"Simple C/C++ TBAA"}
!679 = metadata !{metadata !"int", metadata !677}
!680 = metadata !{i32 60, i32 0, metadata !55, null}
!681 = metadata !{i32 61, i32 0, metadata !55, null}
!682 = metadata !{i32 62, i32 0, metadata !55, null}
!683 = metadata !{i32 63, i32 0, metadata !55, null}
!684 = metadata !{i32 68, i32 0, metadata !55, null}
!685 = metadata !{i32 69, i32 0, metadata !55, null}
!686 = metadata !{i32 71, i32 0, metadata !55, null}
!687 = metadata !{i32 73, i32 0, metadata !55, null}
!688 = metadata !{i32 75, i32 0, metadata !55, null}
!689 = metadata !{i32 78, i32 0, metadata !55, null}
!690 = metadata !{i32 80, i32 0, metadata !55, null}
!691 = metadata !{i32 83, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !1, metadata !55, i32 81, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!693 = metadata !{i32 84, i32 0, metadata !692, null}
!694 = metadata !{i32 85, i32 0, metadata !692, null}
!695 = metadata !{i32 87, i32 0, metadata !692, null}
!696 = metadata !{i32 90, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !692, i32 88, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!698 = metadata !{i32 91, i32 0, metadata !697, null}
!699 = metadata !{i32 92, i32 0, metadata !697, null}
!700 = metadata !{i32 95, i32 0, metadata !55, null}
!701 = metadata !{i32 98, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !55, i32 96, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!703 = metadata !{i32 101, i32 0, metadata !55, null}
!704 = metadata !{i32 99, i32 0, metadata !702, null}
!705 = metadata !{i32 103, i32 0, metadata !706, null}
!706 = metadata !{i32 786443, metadata !1, metadata !55, i32 102, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!707 = metadata !{i32 105, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !706, i32 104, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!709 = metadata !{i32 106, i32 0, metadata !708, null}
!710 = metadata !{i32 109, i32 0, metadata !711, null}
!711 = metadata !{i32 786443, metadata !1, metadata !706, i32 108, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!712 = metadata !{i32 115, i32 0, metadata !706, null}
!713 = metadata !{i32 110, i32 0, metadata !711, null}
!714 = metadata !{i32 112, i32 0, metadata !711, null}
!715 = metadata !{i32 117, i32 0, metadata !706, null}
!716 = metadata !{i32 119, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !706, i32 118, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!718 = metadata !{i32 122, i32 0, metadata !55, null}
!719 = metadata !{i32 120, i32 0, metadata !717, null}
!720 = metadata !{i32 124, i32 0, metadata !721, null}
!721 = metadata !{i32 786443, metadata !1, metadata !55, i32 123, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!722 = metadata !{i32 126, i32 0, metadata !721, null}
!723 = metadata !{i32 128, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !721, i32 127, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!725 = metadata !{i32 129, i32 0, metadata !724, null}
!726 = metadata !{i32 133, i32 0, metadata !55, null}
!727 = metadata !{i32 135, i32 0, metadata !728, null}
!728 = metadata !{i32 786443, metadata !1, metadata !55, i32 134, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!729 = metadata !{i32 136, i32 0, metadata !728, null}
!730 = metadata !{i32 139, i32 0, metadata !55, null}
!731 = metadata !{i32 141, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !55, i32 140, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!733 = metadata !{i32 144, i32 0, metadata !55, null}
!734 = metadata !{i32 142, i32 0, metadata !732, null}
!735 = metadata !{i32 149, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !250, i32 148, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!737 = metadata !{i32 157, i32 0, metadata !250, null}
!738 = metadata !{i32 159, i32 0, metadata !250, null}
!739 = metadata !{i32 153, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !250, i32 152, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!741 = metadata !{i32 161, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !250, i32 160, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!743 = metadata !{i32 162, i32 0, metadata !742, null}
!744 = metadata !{i32 164, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !742, i32 163, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!746 = metadata !{i32 165, i32 0, metadata !745, null}
!747 = metadata !{i32 242, i32 0, metadata !288, metadata !748}
!748 = metadata !{i32 169, i32 0, metadata !55, null}
!749 = metadata !{i32 786688, metadata !288, metadata !"dP_nr", metadata !56, i32 242, metadata !59, i32 0, metadata !748} ; [ DW_TAG_auto_variable ] [dP_nr] [line 242]
!750 = metadata !{i32 243, i32 0, metadata !288, metadata !748}
!751 = metadata !{i32 786688, metadata !288, metadata !"partition", metadata !56, i32 243, metadata !63, i32 0, metadata !748} ; [ DW_TAG_auto_variable ] [partition] [line 243]
!752 = metadata !{i32 786688, metadata !288, metadata !"currSlice", metadata !56, i32 244, metadata !141, i32 0, metadata !748} ; [ DW_TAG_auto_variable ] [currSlice] [line 244]
!753 = metadata !{i32 244, i32 0, metadata !288, metadata !748}
!754 = metadata !{i32 786688, metadata !288, metadata !"len", metadata !56, i32 246, metadata !59, i32 0, metadata !748} ; [ DW_TAG_auto_variable ] [len] [line 246]
!755 = metadata !{i32 246, i32 0, metadata !288, metadata !748}
!756 = metadata !{i32 248, i32 0, metadata !288, metadata !748}
!757 = metadata !{i32 250, i32 0, metadata !758, metadata !748}
!758 = metadata !{i32 786443, metadata !1, metadata !288, i32 249, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!759 = metadata !{i32 251, i32 0, metadata !758, metadata !748}
!760 = metadata !{i32 257, i32 0, metadata !761, metadata !748}
!761 = metadata !{i32 786443, metadata !1, metadata !762, i32 255, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!762 = metadata !{i32 786443, metadata !1, metadata !758, i32 252, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!763 = metadata !{i32 261, i32 0, metadata !764, metadata !748}
!764 = metadata !{i32 786443, metadata !1, metadata !761, i32 260, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!765 = metadata !{i32 267, i32 0, metadata !766, metadata !748}
!766 = metadata !{i32 786443, metadata !1, metadata !767, i32 266, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!767 = metadata !{i32 786443, metadata !1, metadata !761, i32 264, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!768 = metadata !{i32 256, i32 0, metadata !761, metadata !748}
!769 = metadata !{i32 271, i32 0, metadata !761, metadata !748}
!770 = metadata !{i32 258, i32 0, metadata !761, metadata !748}
!771 = metadata !{i32 262, i32 0, metadata !764, metadata !748}
!772 = metadata !{i32 268, i32 0, metadata !766, metadata !748}
!773 = metadata !{i32 275, i32 0, metadata !288, metadata !748}
!774 = metadata !{i32 277, i32 0, metadata !775, metadata !748}
!775 = metadata !{i32 786443, metadata !1, metadata !288, i32 276, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!776 = metadata !{i32 278, i32 0, metadata !775, metadata !748}
!777 = metadata !{i32 284, i32 0, metadata !778, metadata !748}
!778 = metadata !{i32 786443, metadata !1, metadata !779, i32 282, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!779 = metadata !{i32 786443, metadata !1, metadata !775, i32 279, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!780 = metadata !{i32 288, i32 0, metadata !781, metadata !748}
!781 = metadata !{i32 786443, metadata !1, metadata !778, i32 287, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!782 = metadata !{i32 294, i32 0, metadata !783, metadata !748}
!783 = metadata !{i32 786443, metadata !1, metadata !784, i32 293, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!784 = metadata !{i32 786443, metadata !1, metadata !778, i32 291, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!785 = metadata !{i32 283, i32 0, metadata !778, metadata !748}
!786 = metadata !{i32 297, i32 0, metadata !778, metadata !748}
!787 = metadata !{i32 285, i32 0, metadata !778, metadata !748}
!788 = metadata !{i32 289, i32 0, metadata !781, metadata !748}
!789 = metadata !{i32 295, i32 0, metadata !783, metadata !748}
!790 = metadata !{i32 171, i32 0, metadata !55, null}
!791 = metadata !{i32 383, i32 0, metadata !263, metadata !792}
!792 = metadata !{i32 174, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !1, metadata !55, i32 173, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!794 = metadata !{i32 786688, metadata !263, metadata !"dP_nr", metadata !56, i32 383, metadata !59, i32 0, metadata !792} ; [ DW_TAG_auto_variable ] [dP_nr] [line 383]
!795 = metadata !{i32 384, i32 0, metadata !263, metadata !792}
!796 = metadata !{i32 786688, metadata !263, metadata !"partition", metadata !56, i32 384, metadata !63, i32 0, metadata !792} ; [ DW_TAG_auto_variable ] [partition] [line 384]
!797 = metadata !{i32 786688, metadata !263, metadata !"len", metadata !56, i32 386, metadata !59, i32 0, metadata !792} ; [ DW_TAG_auto_variable ] [len] [line 386]
!798 = metadata !{i32 386, i32 0, metadata !263, metadata !792}
!799 = metadata !{i32 389, i32 0, metadata !263, metadata !792}
!800 = metadata !{i32 391, i32 0, metadata !263, metadata !792}
!801 = metadata !{i32 786688, metadata !263, metadata !"i", metadata !56, i32 387, metadata !59, i32 0, metadata !792} ; [ DW_TAG_auto_variable ] [i] [line 387]
!802 = metadata !{i32 393, i32 0, metadata !803, metadata !792}
!803 = metadata !{i32 786443, metadata !1, metadata !263, i32 393, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!804 = metadata !{i32 395, i32 0, metadata !805, metadata !792}
!805 = metadata !{i32 786443, metadata !1, metadata !803, i32 394, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!806 = metadata !{i32 397, i32 0, metadata !807, metadata !792}
!807 = metadata !{i32 786443, metadata !1, metadata !805, i32 396, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!808 = metadata !{i32 399, i32 0, metadata !807, metadata !792}
!809 = metadata !{i32 401, i32 0, metadata !807, metadata !792}
!810 = metadata !{i32 402, i32 0, metadata !807, metadata !792}
!811 = metadata !{i32 405, i32 0, metadata !812, metadata !792}
!812 = metadata !{i32 786443, metadata !1, metadata !805, i32 404, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!813 = metadata !{i32 408, i32 0, metadata !805, metadata !792}
!814 = metadata !{i32 411, i32 0, metadata !815, metadata !792}
!815 = metadata !{i32 786443, metadata !1, metadata !805, i32 410, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!816 = metadata !{i32 1}
!817 = metadata !{i32 786688, metadata !263, metadata !"j", metadata !56, i32 387, metadata !59, i32 0, metadata !792} ; [ DW_TAG_auto_variable ] [j] [line 387]
!818 = metadata !{i32 412, i32 0, metadata !819, metadata !792}
!819 = metadata !{i32 786443, metadata !1, metadata !815, i32 412, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!820 = metadata !{i32 414, i32 0, metadata !821, metadata !792}
!821 = metadata !{i32 786443, metadata !1, metadata !819, i32 413, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!822 = metadata !{i32 416, i32 0, metadata !821, metadata !792}
!823 = metadata !{i32 421, i32 0, metadata !824, metadata !792}
!824 = metadata !{i32 786443, metadata !1, metadata !805, i32 420, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!825 = metadata !{i32 425, i32 0, metadata !263, metadata !792}
!826 = metadata !{i32 427, i32 0, metadata !827, metadata !792}
!827 = metadata !{i32 786443, metadata !1, metadata !828, i32 427, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!828 = metadata !{i32 786443, metadata !1, metadata !263, i32 426, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!829 = metadata !{i32 429, i32 0, metadata !830, metadata !792}
!830 = metadata !{i32 786443, metadata !1, metadata !827, i32 428, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!831 = metadata !{i32 431, i32 0, metadata !832, metadata !792}
!832 = metadata !{i32 786443, metadata !1, metadata !830, i32 430, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!833 = metadata !{i32 433, i32 0, metadata !832, metadata !792}
!834 = metadata !{i32 435, i32 0, metadata !832, metadata !792}
!835 = metadata !{i32 436, i32 0, metadata !832, metadata !792}
!836 = metadata !{i32 439, i32 0, metadata !837, metadata !792}
!837 = metadata !{i32 786443, metadata !1, metadata !830, i32 438, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!838 = metadata !{i32 442, i32 0, metadata !830, metadata !792}
!839 = metadata !{i32 445, i32 0, metadata !840, metadata !792}
!840 = metadata !{i32 786443, metadata !1, metadata !830, i32 444, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!841 = metadata !{i32 446, i32 0, metadata !842, metadata !792}
!842 = metadata !{i32 786443, metadata !1, metadata !840, i32 446, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!843 = metadata !{i32 448, i32 0, metadata !844, metadata !792}
!844 = metadata !{i32 786443, metadata !1, metadata !842, i32 447, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!845 = metadata !{i32 450, i32 0, metadata !844, metadata !792}
!846 = metadata !{i32 455, i32 0, metadata !847, metadata !792}
!847 = metadata !{i32 786443, metadata !1, metadata !830, i32 454, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!848 = metadata !{i32 175, i32 0, metadata !793, null}
!849 = metadata !{i32 177, i32 0, metadata !55, null}
!850 = metadata !{i32 316, i32 0, metadata !270, metadata !851}
!851 = metadata !{i32 178, i32 0, metadata !55, null}
!852 = metadata !{i32 786688, metadata !270, metadata !"dP_nr", metadata !56, i32 316, metadata !59, i32 0, metadata !851} ; [ DW_TAG_auto_variable ] [dP_nr] [line 316]
!853 = metadata !{i32 317, i32 0, metadata !270, metadata !851}
!854 = metadata !{i32 786688, metadata !270, metadata !"partition", metadata !56, i32 317, metadata !63, i32 0, metadata !851} ; [ DW_TAG_auto_variable ] [partition] [line 317]
!855 = metadata !{i32 786688, metadata !270, metadata !"len", metadata !56, i32 321, metadata !59, i32 0, metadata !851} ; [ DW_TAG_auto_variable ] [len] [line 321]
!856 = metadata !{i32 321, i32 0, metadata !270, metadata !851}
!857 = metadata !{i32 323, i32 0, metadata !270, metadata !851}
!858 = metadata !{i32 325, i32 0, metadata !859, metadata !851}
!859 = metadata !{i32 786443, metadata !1, metadata !270, i32 324, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!860 = metadata !{i32 326, i32 0, metadata !859, metadata !851}
!861 = metadata !{i32 327, i32 0, metadata !859, metadata !851}
!862 = metadata !{i32 330, i32 0, metadata !863, metadata !851}
!863 = metadata !{i32 786443, metadata !1, metadata !270, i32 329, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!864 = metadata !{i32 332, i32 0, metadata !863, metadata !851}
!865 = metadata !{i32 334, i32 0, metadata !863, metadata !851}
!866 = metadata !{i32 336, i32 0, metadata !867, metadata !851}
!867 = metadata !{i32 786443, metadata !1, metadata !863, i32 335, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!868 = metadata !{i32 338, i32 0, metadata !867, metadata !851}
!869 = metadata !{i32 340, i32 0, metadata !870, metadata !851}
!870 = metadata !{i32 786443, metadata !1, metadata !867, i32 339, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!871 = metadata !{i32 342, i32 0, metadata !870, metadata !851}
!872 = metadata !{i32 786688, metadata !270, metadata !"val", metadata !56, i32 321, metadata !59, i32 0, metadata !851} ; [ DW_TAG_auto_variable ] [val] [line 321]
!873 = metadata !{i32 343, i32 0, metadata !870, metadata !851}
!874 = metadata !{i32 345, i32 0, metadata !870, metadata !851}
!875 = metadata !{i32 347, i32 0, metadata !876, metadata !851}
!876 = metadata !{i32 786443, metadata !1, metadata !870, i32 346, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!877 = metadata !{i32 348, i32 0, metadata !876, metadata !851}
!878 = metadata !{i32 349, i32 0, metadata !870, metadata !851}
!879 = metadata !{i32 351, i32 0, metadata !880, metadata !851}
!880 = metadata !{i32 786443, metadata !1, metadata !870, i32 350, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!881 = metadata !{i32 357, i32 0, metadata !870, metadata !851}
!882 = metadata !{i32 355, i32 0, metadata !883, metadata !851}
!883 = metadata !{i32 786443, metadata !1, metadata !870, i32 354, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!884 = metadata !{i32 356, i32 0, metadata !883, metadata !851}
!885 = metadata !{i32 359, i32 0, metadata !886, metadata !851}
!886 = metadata !{i32 786443, metadata !1, metadata !870, i32 358, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!887 = metadata !{i32 360, i32 0, metadata !886, metadata !851}
!888 = metadata !{i32 362, i32 0, metadata !870, metadata !851}
!889 = metadata !{i32 180, i32 0, metadata !55, null}
!890 = metadata !{i32 182, i32 0, metadata !891, null}
!891 = metadata !{i32 786443, metadata !1, metadata !55, i32 181, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!892 = metadata !{i32 183, i32 0, metadata !891, null}
!893 = metadata !{i32 185, i32 0, metadata !55, null}
!894 = metadata !{i32 187, i32 0, metadata !55, null}
!895 = metadata !{i32 191, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !897, i32 190, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!897 = metadata !{i32 786443, metadata !1, metadata !55, i32 188, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!898 = metadata !{i32 193, i32 0, metadata !897, null}
!899 = metadata !{i32 194, i32 0, metadata !897, null}
!900 = metadata !{i32 196, i32 0, metadata !55, null}
!901 = metadata !{i32 198, i32 0, metadata !902, null}
!902 = metadata !{i32 786443, metadata !1, metadata !55, i32 197, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!903 = metadata !{i32 200, i32 0, metadata !902, null}
!904 = metadata !{i32 202, i32 0, metadata !905, null}
!905 = metadata !{i32 786443, metadata !1, metadata !902, i32 201, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!906 = metadata !{i32 204, i32 0, metadata !905, null}
!907 = metadata !{i32 205, i32 0, metadata !905, null}
!908 = metadata !{i32 209, i32 0, metadata !55, null}
!909 = metadata !{i32 212, i32 0, metadata !910, null}
!910 = metadata !{i32 786443, metadata !1, metadata !55, i32 211, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!911 = metadata !{i32 213, i32 0, metadata !910, null}
!912 = metadata !{i32 216, i32 0, metadata !910, null}
!913 = metadata !{i32 217, i32 0, metadata !910, null}
!914 = metadata !{i32 222, i32 0, metadata !55, null}
!915 = metadata !{i32 224, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !55, i32 223, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!917 = metadata !{i32 225, i32 0, metadata !916, null}
!918 = metadata !{i32 227, i32 0, metadata !55, null}
!919 = metadata !{i32 5}
!920 = metadata !{i32 476, i32 0, metadata !251, null}
!921 = metadata !{i32 478, i32 0, metadata !251, null}
!922 = metadata !{i32 484, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !251, i32 479, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!924 = metadata !{i32 487, i32 0, metadata !923, null}
!925 = metadata !{i32 490, i32 0, metadata !923, null}
!926 = metadata !{i32 493, i32 0, metadata !923, null}
!927 = metadata !{i32 497, i32 0, metadata !251, null}
!928 = metadata !{i32 498, i32 0, metadata !251, null}
!929 = metadata !{i32 529, i32 0, metadata !254, null}
!930 = metadata !{i32 531, i32 0, metadata !254, null}
!931 = metadata !{i32 532, i32 0, metadata !254, null}
!932 = metadata !{i32 534, i32 0, metadata !254, null}
!933 = metadata !{i32 536, i32 0, metadata !254, null}
!934 = metadata !{i32 537, i32 0, metadata !254, null}
!935 = metadata !{i32 539, i32 0, metadata !254, null}
!936 = metadata !{i32 540, i32 0, metadata !254, null}
!937 = metadata !{i32 541, i32 0, metadata !254, null}
!938 = metadata !{i32 546, i32 0, metadata !254, null}
!939 = metadata !{i32 547, i32 0, metadata !254, null}
!940 = metadata !{i32 549, i32 0, metadata !254, null}
!941 = metadata !{i32 552, i32 0, metadata !942, null}
!942 = metadata !{i32 786443, metadata !1, metadata !254, i32 550, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/header.c]
!943 = metadata !{i32 553, i32 0, metadata !942, null}
!944 = metadata !{i32 554, i32 0, metadata !942, null}
!945 = metadata !{i32 558, i32 0, metadata !254, null}
