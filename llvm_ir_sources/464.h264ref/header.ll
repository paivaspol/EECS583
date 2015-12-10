; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/header.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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
@__func__.SliceHeader = private unnamed_addr constant [12 x i8] c"SliceHeader\00", align 1
@.str4 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/header.c\00", align 1
@.str5 = private unnamed_addr constant [32 x i8] c"field_pic_flag == img->fld_flag\00", align 1
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
@__func__.Partition_BC_Header = private unnamed_addr constant [20 x i8] c"Partition_BC_Header\00", align 1
@.str28 = private unnamed_addr constant [29 x i8] c"input->of_mode == PAR_OF_RTP\00", align 1
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
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@.str30 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l0\00", align 1
@.str31 = private unnamed_addr constant [29 x i8] c"SH: remapping_of_pic_num_idc\00", align 1
@.str32 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l0\00", align 1
@.str33 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l0\00", align 1
@.str34 = private unnamed_addr constant [36 x i8] c"SH: ref_pic_list_reordering_flag_l1\00", align 1
@.str35 = private unnamed_addr constant [31 x i8] c"SH: abs_diff_pic_num_minus1_l1\00", align 1
@.str36 = private unnamed_addr constant [25 x i8] c"SH: long_term_pic_idx_l1\00", align 1
@.str37 = private unnamed_addr constant [33 x i8] c"SH: no_output_of_prior_pics_flag\00", align 1
@.str38 = private unnamed_addr constant [29 x i8] c"SH: long_term_reference_flag\00", align 1
@.str39 = private unnamed_addr constant [36 x i8] c"SH: adaptive_ref_pic_buffering_flag\00", align 1
@.str40 = private unnamed_addr constant [29 x i8] c"Error encoding MMCO commands\00", align 1
@.str41 = private unnamed_addr constant [40 x i8] c"SH: memory_management_control_operation\00", align 1
@.str42 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1
@.str43 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1
@.str44 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1
@.str45 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1
@.str46 = private unnamed_addr constant [26 x i8] c"SH: luma_log_weight_denom\00", align 1
@.str47 = private unnamed_addr constant [28 x i8] c"SH: chroma_log_weight_denom\00", align 1
@.str48 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1
@.str49 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1
@.str50 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1
@.str51 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l0\00", align 1
@.str52 = private unnamed_addr constant [17 x i8] c"chroma_weight_l0\00", align 1
@.str53 = private unnamed_addr constant [17 x i8] c"chroma_offset_l0\00", align 1
@.str54 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1
@.str55 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1
@.str56 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1
@.str57 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l1\00", align 1
@.str58 = private unnamed_addr constant [17 x i8] c"chroma_weight_l1\00", align 1
@.str59 = private unnamed_addr constant [17 x i8] c"chroma_offset_l1\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SliceHeader() #0 {
  %1 = load %struct.InputParameters** @input, align 8, !dbg !686, !tbaa !687
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 61, !dbg !691
  %3 = load i32* %2, align 4, !dbg !691, !tbaa !692
  %4 = sext i32 %3 to i64, !dbg !696
  %5 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %4, !dbg !696
  %6 = load i32** %5, align 8, !dbg !696, !tbaa !687
  %7 = load i32* %6, align 4, !dbg !696, !tbaa !697
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !63, metadata !698), !dbg !699
  %8 = sext i32 %7 to i64, !dbg !700
  %9 = load %struct.ImageParameters** @img, align 8, !dbg !701, !tbaa !687
  %10 = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 50, !dbg !702
  %11 = load %struct.Slice** %10, align 8, !dbg !702, !tbaa !703
  %12 = getelementptr inbounds %struct.Slice* %11, i64 0, i32 6, !dbg !706
  %13 = load %struct.datapartition** %12, align 8, !dbg !706, !tbaa !707
  %14 = getelementptr inbounds %struct.datapartition* %13, i64 %8, !dbg !700
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %14, i64 0, metadata !64, metadata !698), !dbg !709
  tail call void @llvm.dbg.value(metadata %struct.Slice* %11, i64 0, metadata !142, metadata !698), !dbg !710
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !245, metadata !698), !dbg !711
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !246, metadata !698), !dbg !712
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !247, metadata !698), !dbg !713
  %15 = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 90, !dbg !714
  %16 = load i32* %15, align 4, !dbg !714, !tbaa !716
  %17 = icmp eq i32 %16, 0, !dbg !717
  %18 = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 3, !dbg !718
  %19 = load i32* %18, align 4, !dbg !718, !tbaa !719
  br i1 %17, label %23, label %20, !dbg !720

; <label>:20                                      ; preds = %0
  %21 = ashr i32 %19, 1, !dbg !721
  %22 = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.datapartition* %14) #6, !dbg !722
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !245, metadata !698), !dbg !711
  br label %25, !dbg !723

; <label>:23                                      ; preds = %0
  %24 = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.datapartition* %14) #6, !dbg !724
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !245, metadata !698), !dbg !711
  br label %25

; <label>:25                                      ; preds = %23, %20
  %len.0 = phi i32 [ %22, %20 ], [ %24, %23 ]
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !255, metadata !698) #4, !dbg !725
  %26 = load %struct.ImageParameters** @img, align 8, !dbg !727, !tbaa !687
  %27 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 6, !dbg !728
  %28 = load i32* %27, align 4, !dbg !728, !tbaa !729
  %29 = icmp ult i32 %28, 4, !dbg !730
  br i1 %29, label %switch.lookup.i, label %30, !dbg !730

; <label>:30                                      ; preds = %25
  tail call void @error(i8* getelementptr inbounds ([28 x i8]* @.str27, i64 0, i64 0), i32 1) #6, !dbg !731
  br label %get_picture_type.exit, !dbg !733

switch.lookup.i:                                  ; preds = %25
  %switch.offset.i = add i32 %28, 5, !dbg !730
  br label %get_picture_type.exit, !dbg !730

get_picture_type.exit:                            ; preds = %switch.lookup.i, %30
  %31 = phi i32 [ 0, %30 ], [ %switch.offset.i, %switch.lookup.i ]
  %32 = tail call i32 @ue_v(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0), i32 %31, %struct.datapartition* %14) #6, !dbg !734
  %33 = add nsw i32 %32, %len.0, !dbg !735
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !245, metadata !698), !dbg !711
  %34 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !736, !tbaa !687
  %35 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %34, i64 0, i32 1, !dbg !737
  %36 = load i32* %35, align 4, !dbg !737, !tbaa !738
  %37 = tail call i32 @ue_v(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0), i32 %36, %struct.datapartition* %14) #6, !dbg !740
  %38 = add nsw i32 %33, %37, !dbg !741
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !245, metadata !698), !dbg !711
  %39 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !742, !tbaa !697
  %40 = add i32 %39, 4, !dbg !743
  %41 = load %struct.ImageParameters** @img, align 8, !dbg !744, !tbaa !687
  %42 = getelementptr inbounds %struct.ImageParameters* %41, i64 0, i32 105, !dbg !745
  %43 = load i32* %42, align 4, !dbg !745, !tbaa !746
  %44 = tail call i32 @u_v(i32 %40, i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i32 %43, %struct.datapartition* %14) #6, !dbg !747
  %45 = add nsw i32 %38, %44, !dbg !748
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !245, metadata !698), !dbg !711
  %46 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !749, !tbaa !687
  %47 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %46, i64 0, i32 25, !dbg !751
  %48 = load i32* %47, align 4, !dbg !751, !tbaa !752
  %49 = icmp eq i32 %48, 0, !dbg !749
  br i1 %49, label %50, label %71, !dbg !756

; <label>:50                                      ; preds = %get_picture_type.exit
  %51 = load %struct.ImageParameters** @img, align 8, !dbg !757, !tbaa !687
  %52 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 7, !dbg !759
  %53 = load i32* %52, align 4, !dbg !759, !tbaa !760
  %.off17 = add i32 %53, -1, !dbg !761
  %54 = icmp ult i32 %.off17, 2, !dbg !761
  %55 = zext i1 %54 to i32, !dbg !762
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !246, metadata !698), !dbg !712
  %56 = getelementptr inbounds %struct.ImageParameters* %51, i64 0, i32 57, !dbg !763
  %57 = load i32* %56, align 4, !dbg !763, !tbaa !764
  %58 = icmp eq i32 %55, %57, !dbg !763
  br i1 %58, label %60, label %59, !dbg !763, !prof !765

; <label>:59                                      ; preds = %50
  tail call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.SliceHeader, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([32 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !763
  unreachable, !dbg !763

; <label>:60                                      ; preds = %50
  %61 = tail call i32 @u_1(i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0), i32 %55, %struct.datapartition* %14) #6, !dbg !766
  %62 = add nsw i32 %61, %45, !dbg !767
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !245, metadata !698), !dbg !711
  br i1 %54, label %63, label %71, !dbg !768

; <label>:63                                      ; preds = %60
  %64 = load %struct.ImageParameters** @img, align 8, !dbg !769, !tbaa !687
  %65 = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 7, !dbg !772
  %66 = load i32* %65, align 4, !dbg !772, !tbaa !760
  %67 = icmp eq i32 %66, 2, !dbg !773
  %68 = zext i1 %67 to i32, !dbg !774
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !247, metadata !698), !dbg !713
  %69 = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i32 %68, %struct.datapartition* %14) #6, !dbg !775
  %70 = add nsw i32 %69, %62, !dbg !776
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !245, metadata !698), !dbg !711
  br label %71, !dbg !777

; <label>:71                                      ; preds = %get_picture_type.exit, %60, %63
  %field_pic_flag.0 = phi i32 [ 0, %get_picture_type.exit ], [ %55, %63 ], [ %55, %60 ]
  %len.1 = phi i32 [ %45, %get_picture_type.exit ], [ %70, %63 ], [ %62, %60 ]
  %72 = load %struct.ImageParameters** @img, align 8, !dbg !778, !tbaa !687
  %73 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 49, !dbg !780
  %74 = load %struct.Picture** %73, align 8, !dbg !780, !tbaa !781
  %75 = getelementptr inbounds %struct.Picture* %74, i64 0, i32 1, !dbg !782
  %76 = load i32* %75, align 4, !dbg !782, !tbaa !783
  %77 = icmp eq i32 %76, 0, !dbg !778
  br i1 %77, label %84, label %78, !dbg !785

; <label>:78                                      ; preds = %71
  %79 = getelementptr inbounds %struct.ImageParameters* %72, i64 0, i32 0, !dbg !786
  %80 = load i32* %79, align 4, !dbg !786, !tbaa !788
  %81 = srem i32 %80, 2, !dbg !789
  %82 = tail call i32 @ue_v(i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i32 %81, %struct.datapartition* %14) #6, !dbg !790
  %83 = add nsw i32 %82, %len.1, !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !245, metadata !698), !dbg !711
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !792, !tbaa !687
  br label %84, !dbg !794

; <label>:84                                      ; preds = %71, %78
  %85 = phi %struct.ImageParameters* [ %.pre, %78 ], [ %72, %71 ]
  %len.2 = phi i32 [ %83, %78 ], [ %len.1, %71 ]
  %86 = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 91, !dbg !795
  %87 = load i32* %86, align 4, !dbg !795, !tbaa !796
  %88 = icmp eq i32 %87, 0, !dbg !797
  br i1 %88, label %89, label %142, !dbg !798

; <label>:89                                      ; preds = %84
  %90 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !799, !tbaa !687
  %91 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %90, i64 0, i32 25, !dbg !802
  %92 = load i32* %91, align 4, !dbg !802, !tbaa !752
  %93 = icmp eq i32 %92, 0, !dbg !799
  br i1 %93, label %103, label %94, !dbg !803

; <label>:94                                      ; preds = %89
  %95 = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 101, !dbg !804
  %96 = load i32* %95, align 4, !dbg !804, !tbaa !806
  %97 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !807, !tbaa !697
  %98 = add i32 %97, 4, !dbg !808
  %99 = shl i32 -1, %98, !dbg !809
  %100 = xor i32 %99, -1, !dbg !810
  %101 = and i32 %96, %100, !dbg !811
  %102 = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 97, !dbg !812
  store i32 %101, i32* %102, align 4, !dbg !813, !tbaa !814
  br label %126, !dbg !815

; <label>:103                                     ; preds = %89
  %104 = icmp eq i32 %field_pic_flag.0, 0, !dbg !816
  br i1 %104, label %108, label %105, !dbg !819

; <label>:105                                     ; preds = %103
  %106 = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 7, !dbg !820
  %107 = load i32* %106, align 4, !dbg !820, !tbaa !760
  switch i32 %107, label %._crit_edge [
    i32 1, label %108
    i32 2, label %117
  ], !dbg !821

._crit_edge:                                      ; preds = %105
  %.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 97
  %.pre22 = load i32* %.phi.trans.insert, align 4, !dbg !822, !tbaa !814
  br label %126, !dbg !821

; <label>:108                                     ; preds = %105, %103
  %109 = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 101, !dbg !823
  %110 = load i32* %109, align 4, !dbg !823, !tbaa !806
  %111 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !824, !tbaa !697
  %112 = add i32 %111, 4, !dbg !825
  %113 = shl i32 -1, %112, !dbg !826
  %114 = xor i32 %113, -1, !dbg !827
  %115 = and i32 %110, %114, !dbg !828
  %116 = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 97, !dbg !829
  store i32 %115, i32* %116, align 4, !dbg !830, !tbaa !814
  br label %126, !dbg !831

; <label>:117                                     ; preds = %105
  %118 = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 102, !dbg !832
  %119 = load i32* %118, align 4, !dbg !832, !tbaa !834
  %120 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !835, !tbaa !697
  %121 = add i32 %120, 4, !dbg !836
  %122 = shl i32 -1, %121, !dbg !837
  %123 = xor i32 %122, -1, !dbg !838
  %124 = and i32 %119, %123, !dbg !839
  %125 = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 97, !dbg !840
  store i32 %124, i32* %125, align 4, !dbg !841, !tbaa !814
  br label %126, !dbg !842

; <label>:126                                     ; preds = %._crit_edge, %108, %117, %94
  %127 = phi i32 [ %.pre22, %._crit_edge ], [ %115, %108 ], [ %124, %117 ], [ %101, %94 ]
  %128 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !843, !tbaa !697
  %129 = add i32 %128, 4, !dbg !844
  %130 = tail call i32 @u_v(i32 %129, i8* getelementptr inbounds ([22 x i8]* @.str9, i64 0, i64 0), i32 %127, %struct.datapartition* %14) #6, !dbg !845
  %131 = add nsw i32 %130, %len.2, !dbg !846
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !245, metadata !698), !dbg !711
  %132 = load %struct.ImageParameters** @img, align 8, !dbg !847, !tbaa !687
  %133 = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 112, !dbg !849
  %134 = load i32* %133, align 4, !dbg !849, !tbaa !850
  %135 = icmp eq i32 %134, 0, !dbg !847
  %136 = icmp ne i32 %field_pic_flag.0, 0, !dbg !851
  %or.cond = or i1 %136, %135, !dbg !852
  br i1 %or.cond, label %142, label %137, !dbg !852

; <label>:137                                     ; preds = %126
  %138 = getelementptr inbounds %struct.ImageParameters* %132, i64 0, i32 98, !dbg !853
  %139 = load i32* %138, align 4, !dbg !853, !tbaa !855
  %140 = tail call i32 @se_v(i8* getelementptr inbounds ([31 x i8]* @.str10, i64 0, i64 0), i32 %139, %struct.datapartition* %14) #6, !dbg !856
  %141 = add nsw i32 %140, %131, !dbg !857
  tail call void @llvm.dbg.value(metadata i32 %141, i64 0, metadata !245, metadata !698), !dbg !711
  %.pre23 = load %struct.ImageParameters** @img, align 8, !dbg !858, !tbaa !687
  br label %142, !dbg !860

; <label>:142                                     ; preds = %137, %126, %84
  %143 = phi %struct.ImageParameters* [ %132, %126 ], [ %.pre23, %137 ], [ %85, %84 ]
  %len.3 = phi i32 [ %131, %126 ], [ %141, %137 ], [ %len.2, %84 ]
  %144 = getelementptr inbounds %struct.ImageParameters* %143, i64 0, i32 91, !dbg !861
  %145 = load i32* %144, align 4, !dbg !861, !tbaa !796
  %146 = icmp eq i32 %145, 1, !dbg !862
  br i1 %146, label %147, label %166, !dbg !863

; <label>:147                                     ; preds = %142
  %148 = getelementptr inbounds %struct.ImageParameters* %143, i64 0, i32 92, !dbg !864
  %149 = load i32* %148, align 4, !dbg !864, !tbaa !865
  %150 = icmp eq i32 %149, 0, !dbg !866
  br i1 %150, label %151, label %166, !dbg !867

; <label>:151                                     ; preds = %147
  %152 = getelementptr inbounds %struct.ImageParameters* %143, i64 0, i32 99, i64 0, !dbg !868
  %153 = load i32* %152, align 4, !dbg !868, !tbaa !697
  %154 = tail call i32 @se_v(i8* getelementptr inbounds ([27 x i8]* @.str11, i64 0, i64 0), i32 %153, %struct.datapartition* %14) #6, !dbg !870
  %155 = add nsw i32 %154, %len.3, !dbg !871
  tail call void @llvm.dbg.value(metadata i32 %155, i64 0, metadata !245, metadata !698), !dbg !711
  %156 = load %struct.ImageParameters** @img, align 8, !dbg !872, !tbaa !687
  %157 = getelementptr inbounds %struct.ImageParameters* %156, i64 0, i32 112, !dbg !874
  %158 = load i32* %157, align 4, !dbg !874, !tbaa !850
  %159 = icmp eq i32 %158, 0, !dbg !872
  %160 = icmp ne i32 %field_pic_flag.0, 0, !dbg !875
  %or.cond3 = or i1 %160, %159, !dbg !876
  br i1 %or.cond3, label %166, label %161, !dbg !876

; <label>:161                                     ; preds = %151
  %162 = getelementptr inbounds %struct.ImageParameters* %156, i64 0, i32 99, i64 1, !dbg !877
  %163 = load i32* %162, align 4, !dbg !877, !tbaa !697
  %164 = tail call i32 @se_v(i8* getelementptr inbounds ([27 x i8]* @.str12, i64 0, i64 0), i32 %163, %struct.datapartition* %14) #6, !dbg !879
  %165 = add nsw i32 %164, %155, !dbg !880
  tail call void @llvm.dbg.value(metadata i32 %165, i64 0, metadata !245, metadata !698), !dbg !711
  br label %166, !dbg !881

; <label>:166                                     ; preds = %147, %161, %151, %142
  %len.4 = phi i32 [ %len.3, %147 ], [ %155, %151 ], [ %165, %161 ], [ %len.3, %142 ]
  %167 = load %struct.InputParameters** @input, align 8, !dbg !882, !tbaa !687
  %168 = getelementptr inbounds %struct.InputParameters* %167, i64 0, i32 119, !dbg !884
  %169 = load i32* %168, align 4, !dbg !884, !tbaa !885
  %170 = icmp eq i32 %169, 0, !dbg !882
  br i1 %170, label %177, label %171, !dbg !886

; <label>:171                                     ; preds = %166
  %172 = load %struct.ImageParameters** @img, align 8, !dbg !887, !tbaa !687
  %173 = getelementptr inbounds %struct.ImageParameters* %172, i64 0, i32 89, !dbg !889
  %174 = load i32* %173, align 4, !dbg !889, !tbaa !890
  %175 = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str13, i64 0, i64 0), i32 %174, %struct.datapartition* %14) #6, !dbg !891
  %176 = add nsw i32 %175, %len.4, !dbg !892
  tail call void @llvm.dbg.value(metadata i32 %176, i64 0, metadata !245, metadata !698), !dbg !711
  br label %177, !dbg !893

; <label>:177                                     ; preds = %166, %171
  %len.5 = phi i32 [ %176, %171 ], [ %len.4, %166 ]
  %178 = load %struct.ImageParameters** @img, align 8, !dbg !894, !tbaa !687
  %179 = getelementptr inbounds %struct.ImageParameters* %178, i64 0, i32 6, !dbg !896
  %180 = load i32* %179, align 4, !dbg !896, !tbaa !729
  %181 = icmp eq i32 %180, 1, !dbg !897
  br i1 %181, label %182, label %187, !dbg !898

; <label>:182                                     ; preds = %177
  %183 = getelementptr inbounds %struct.ImageParameters* %178, i64 0, i32 78, !dbg !899
  %184 = load i32* %183, align 4, !dbg !899, !tbaa !901
  %185 = tail call i32 @u_1(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0), i32 %184, %struct.datapartition* %14) #6, !dbg !902
  %186 = add nsw i32 %185, %len.5, !dbg !903
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !245, metadata !698), !dbg !711
  %.pre24 = load %struct.ImageParameters** @img, align 8, !dbg !904, !tbaa !687
  %.phi.trans.insert25 = getelementptr inbounds %struct.ImageParameters* %.pre24, i64 0, i32 6
  %.pre26 = load i32* %.phi.trans.insert25, align 4, !dbg !905, !tbaa !729
  br label %187, !dbg !906

; <label>:187                                     ; preds = %182, %177
  %188 = phi i32 [ %.pre26, %182 ], [ %180, %177 ]
  %189 = phi %struct.ImageParameters* [ %.pre24, %182 ], [ %178, %177 ]
  %len.6 = phi i32 [ %186, %182 ], [ %len.5, %177 ]
  switch i32 %188, label %239 [
    i32 0, label %190
    i32 3, label %190
    i32 1, label %201
  ], !dbg !907

; <label>:190                                     ; preds = %187, %187
  %191 = getelementptr inbounds %struct.ImageParameters* %189, i64 0, i32 79, !dbg !908
  %192 = load i32* %191, align 4, !dbg !908, !tbaa !911
  %193 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !912, !tbaa !687
  %194 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %193, i64 0, i32 17, !dbg !913
  %195 = load i32* %194, align 4, !dbg !913, !tbaa !914
  %196 = add nsw i32 %195, 1, !dbg !915
  %197 = icmp ne i32 %192, %196, !dbg !916
  tail call void @llvm.dbg.value(metadata i32 %218, i64 0, metadata !250, metadata !698), !dbg !917
  %198 = zext i1 %197 to i32, !dbg !918
  %199 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str15, i64 0, i64 0), i32 %198, %struct.datapartition* %14) #6, !dbg !919
  %200 = add nsw i32 %199, %len.6, !dbg !920
  tail call void @llvm.dbg.value(metadata i32 %220, i64 0, metadata !245, metadata !698), !dbg !711
  br i1 %197, label %221, label %239, !dbg !921

; <label>:201                                     ; preds = %187
  %202 = getelementptr inbounds %struct.ImageParameters* %189, i64 0, i32 79, !dbg !922
  %203 = load i32* %202, align 4, !dbg !922, !tbaa !911
  %204 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !924, !tbaa !687
  %205 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %204, i64 0, i32 17, !dbg !925
  %206 = load i32* %205, align 4, !dbg !925, !tbaa !914
  %207 = add nsw i32 %206, 1, !dbg !926
  %208 = icmp eq i32 %203, %207, !dbg !927
  br i1 %208, label %211, label %.thread, !dbg !928

.thread:                                          ; preds = %201
  %209 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str15, i64 0, i64 0), i32 1, %struct.datapartition* %14) #6, !dbg !919
  %210 = add nsw i32 %209, %len.6, !dbg !920
  tail call void @llvm.dbg.value(metadata i32 %220, i64 0, metadata !245, metadata !698), !dbg !711
  br label %221, !dbg !921

; <label>:211                                     ; preds = %201
  %212 = getelementptr inbounds %struct.ImageParameters* %189, i64 0, i32 80, !dbg !929
  %213 = load i32* %212, align 4, !dbg !929, !tbaa !930
  %214 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %204, i64 0, i32 18, !dbg !931
  %215 = load i32* %214, align 4, !dbg !931, !tbaa !932
  %216 = add nsw i32 %215, 1, !dbg !933
  %217 = icmp ne i32 %213, %216, !dbg !934
  %218 = zext i1 %217 to i32, !dbg !918
  %219 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str15, i64 0, i64 0), i32 %218, %struct.datapartition* %14) #6, !dbg !919
  %220 = add nsw i32 %219, %len.6, !dbg !920
  tail call void @llvm.dbg.value(metadata i32 %220, i64 0, metadata !245, metadata !698), !dbg !711
  br i1 %217, label %221, label %239, !dbg !921

; <label>:221                                     ; preds = %190, %.thread, %211
  %222 = phi i32 [ %210, %.thread ], [ %220, %211 ], [ %200, %190 ]
  %223 = load %struct.ImageParameters** @img, align 8, !dbg !935, !tbaa !687
  %224 = getelementptr inbounds %struct.ImageParameters* %223, i64 0, i32 79, !dbg !938
  %225 = load i32* %224, align 4, !dbg !938, !tbaa !911
  %226 = add nsw i32 %225, -1, !dbg !939
  %227 = tail call i32 @ue_v(i8* getelementptr inbounds ([33 x i8]* @.str16, i64 0, i64 0), i32 %226, %struct.datapartition* %14) #6, !dbg !940
  %228 = add nsw i32 %227, %222, !dbg !941
  tail call void @llvm.dbg.value(metadata i32 %228, i64 0, metadata !245, metadata !698), !dbg !711
  %229 = load %struct.ImageParameters** @img, align 8, !dbg !942, !tbaa !687
  %230 = getelementptr inbounds %struct.ImageParameters* %229, i64 0, i32 6, !dbg !944
  %231 = load i32* %230, align 4, !dbg !944, !tbaa !729
  %232 = icmp eq i32 %231, 1, !dbg !945
  br i1 %232, label %233, label %239, !dbg !946

; <label>:233                                     ; preds = %221
  %234 = getelementptr inbounds %struct.ImageParameters* %229, i64 0, i32 80, !dbg !947
  %235 = load i32* %234, align 4, !dbg !947, !tbaa !930
  %236 = add nsw i32 %235, -1, !dbg !949
  %237 = tail call i32 @ue_v(i8* getelementptr inbounds ([33 x i8]* @.str17, i64 0, i64 0), i32 %236, %struct.datapartition* %14) #6, !dbg !950
  %238 = add nsw i32 %237, %228, !dbg !951
  tail call void @llvm.dbg.value(metadata i32 %238, i64 0, metadata !245, metadata !698), !dbg !711
  br label %239, !dbg !952

; <label>:239                                     ; preds = %187, %190, %211, %233, %221
  %len.7 = phi i32 [ %238, %233 ], [ %228, %221 ], [ %220, %211 ], [ %len.6, %187 ], [ %200, %190 ]
  %240 = load %struct.InputParameters** @input, align 8, !dbg !953, !tbaa !687
  %241 = getelementptr inbounds %struct.InputParameters* %240, i64 0, i32 61, !dbg !955
  %242 = load i32* %241, align 4, !dbg !955, !tbaa !692
  %243 = sext i32 %242 to i64, !dbg !956
  %244 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %243, !dbg !956
  %245 = load i32** %244, align 8, !dbg !956, !tbaa !687
  %246 = load i32* %245, align 4, !dbg !956, !tbaa !697
  tail call void @llvm.dbg.value(metadata i32 %246, i64 0, metadata !267, metadata !698) #4, !dbg !957
  %247 = sext i32 %246 to i64, !dbg !958
  %248 = load %struct.ImageParameters** @img, align 8, !dbg !959, !tbaa !687
  %249 = getelementptr inbounds %struct.ImageParameters* %248, i64 0, i32 50, !dbg !960
  %250 = load %struct.Slice** %249, align 8, !dbg !960, !tbaa !703
  %251 = getelementptr inbounds %struct.Slice* %250, i64 0, i32 6, !dbg !961
  %252 = load %struct.datapartition** %251, align 8, !dbg !961, !tbaa !707
  %253 = getelementptr inbounds %struct.datapartition* %252, i64 %247, !dbg !958
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %253, i64 0, metadata !268, metadata !698) #4, !dbg !962
  tail call void @llvm.dbg.value(metadata %struct.Slice* %250, i64 0, metadata !269, metadata !698) #4, !dbg !963
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !271, metadata !698) #4, !dbg !964
  %254 = getelementptr inbounds %struct.ImageParameters* %248, i64 0, i32 6, !dbg !965
  %255 = load i32* %254, align 4, !dbg !965, !tbaa !729
  %256 = icmp eq i32 %255, 2, !dbg !967
  br i1 %256, label %.loopexit2.i, label %257, !dbg !968

; <label>:257                                     ; preds = %239
  %258 = getelementptr inbounds %struct.Slice* %250, i64 0, i32 10, !dbg !969
  %259 = load i32* %258, align 4, !dbg !969, !tbaa !971
  %260 = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str30, i64 0, i64 0), i32 %259, %struct.datapartition* %253) #6, !dbg !972
  tail call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !271, metadata !698) #4, !dbg !964
  %261 = load i32* %258, align 4, !dbg !973, !tbaa !971
  %262 = icmp eq i32 %261, 0, !dbg !975
  br i1 %262, label %.loopexit2.i, label %.preheader1.i, !dbg !976

.preheader1.i:                                    ; preds = %257
  %263 = getelementptr inbounds %struct.Slice* %250, i64 0, i32 11, !dbg !977
  %264 = getelementptr inbounds %struct.Slice* %250, i64 0, i32 12, !dbg !980
  %265 = getelementptr inbounds %struct.Slice* %250, i64 0, i32 13, !dbg !983
  %.pre.i = load i32** %263, align 8, !dbg !977, !tbaa !987
  br label %266, !dbg !988

; <label>:266                                     ; preds = %287, %.preheader1.i
  %267 = phi i32* [ %.pre.i, %.preheader1.i ], [ %288, %287 ], !dbg !989
  %indvars.iv3.i = phi i64 [ -1, %.preheader1.i ], [ %indvars.iv.next4.i, %287 ], !dbg !989
  %len.0.i = phi i32 [ %260, %.preheader1.i ], [ %len.1.i, %287 ], !dbg !989
  %indvars.iv.next4.i = add nsw i64 %indvars.iv3.i, 1, !dbg !990
  %268 = getelementptr inbounds i32* %267, i64 %indvars.iv.next4.i, !dbg !991
  %269 = load i32* %268, align 4, !dbg !991, !tbaa !697
  %270 = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str31, i64 0, i64 0), i32 %269, %struct.datapartition* %253) #6, !dbg !992
  %271 = add nsw i32 %270, %len.0.i, !dbg !993
  tail call void @llvm.dbg.value(metadata i32 %271, i64 0, metadata !271, metadata !698) #4, !dbg !964
  %272 = load i32** %263, align 8, !dbg !994, !tbaa !987
  %273 = getelementptr inbounds i32* %272, i64 %indvars.iv.next4.i, !dbg !995
  %274 = load i32* %273, align 4, !dbg !995, !tbaa !697
  switch i32 %274, label %287 [
    i32 0, label %275
    i32 1, label %275
    i32 2, label %281
  ], !dbg !996

; <label>:275                                     ; preds = %266, %266
  %276 = load i32** %264, align 8, !dbg !980, !tbaa !997
  %277 = getelementptr inbounds i32* %276, i64 %indvars.iv.next4.i, !dbg !998
  %278 = load i32* %277, align 4, !dbg !998, !tbaa !697
  %279 = tail call i32 @ue_v(i8* getelementptr inbounds ([31 x i8]* @.str32, i64 0, i64 0), i32 %278, %struct.datapartition* %253) #6, !dbg !999
  %280 = add nsw i32 %279, %271, !dbg !1000
  tail call void @llvm.dbg.value(metadata i32 %280, i64 0, metadata !271, metadata !698) #4, !dbg !964
  br label %287, !dbg !1001

; <label>:281                                     ; preds = %266
  %282 = load i32** %265, align 8, !dbg !983, !tbaa !1002
  %283 = getelementptr inbounds i32* %282, i64 %indvars.iv.next4.i, !dbg !1003
  %284 = load i32* %283, align 4, !dbg !1003, !tbaa !697
  %285 = tail call i32 @ue_v(i8* getelementptr inbounds ([25 x i8]* @.str33, i64 0, i64 0), i32 %284, %struct.datapartition* %253) #6, !dbg !1004
  %286 = add nsw i32 %285, %271, !dbg !1005
  tail call void @llvm.dbg.value(metadata i32 %286, i64 0, metadata !271, metadata !698) #4, !dbg !964
  br label %287, !dbg !1006

; <label>:287                                     ; preds = %281, %275, %266
  %len.1.i = phi i32 [ %280, %275 ], [ %286, %281 ], [ %271, %266 ], !dbg !989
  %288 = load i32** %263, align 8, !dbg !1007, !tbaa !987
  %289 = getelementptr inbounds i32* %288, i64 %indvars.iv.next4.i, !dbg !1008
  %290 = load i32* %289, align 4, !dbg !1008, !tbaa !697
  %291 = icmp eq i32 %290, 3, !dbg !1009
  br i1 %291, label %.loopexit2.i, label %266, !dbg !990

.loopexit2.i:                                     ; preds = %287, %257, %239
  %len.2.i = phi i32 [ %260, %257 ], [ 0, %239 ], [ %len.1.i, %287 ], !dbg !989
  %292 = load %struct.ImageParameters** @img, align 8, !dbg !1010, !tbaa !687
  %293 = getelementptr inbounds %struct.ImageParameters* %292, i64 0, i32 6, !dbg !1012
  %294 = load i32* %293, align 4, !dbg !1012, !tbaa !729
  %295 = icmp eq i32 %294, 1, !dbg !1013
  br i1 %295, label %296, label %ref_pic_list_reordering.exit, !dbg !1014

; <label>:296                                     ; preds = %.loopexit2.i
  %297 = getelementptr inbounds %struct.Slice* %250, i64 0, i32 14, !dbg !1015
  %298 = load i32* %297, align 4, !dbg !1015, !tbaa !1017
  %299 = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str34, i64 0, i64 0), i32 %298, %struct.datapartition* %253) #6, !dbg !1018
  %300 = add nsw i32 %299, %len.2.i, !dbg !1019
  tail call void @llvm.dbg.value(metadata i32 %300, i64 0, metadata !271, metadata !698) #4, !dbg !964
  %301 = load i32* %297, align 4, !dbg !1020, !tbaa !1017
  %302 = icmp eq i32 %301, 0, !dbg !1022
  br i1 %302, label %ref_pic_list_reordering.exit, label %.preheader.i, !dbg !1023

.preheader.i:                                     ; preds = %296
  %303 = getelementptr inbounds %struct.Slice* %250, i64 0, i32 15, !dbg !1024
  %304 = getelementptr inbounds %struct.Slice* %250, i64 0, i32 16, !dbg !1027
  %305 = getelementptr inbounds %struct.Slice* %250, i64 0, i32 17, !dbg !1030
  %.pre5.i = load i32** %303, align 8, !dbg !1024, !tbaa !1034
  br label %306, !dbg !1035

; <label>:306                                     ; preds = %327, %.preheader.i
  %307 = phi i32* [ %.pre5.i, %.preheader.i ], [ %328, %327 ], !dbg !989
  %indvars.iv.i = phi i64 [ -1, %.preheader.i ], [ %indvars.iv.next.i, %327 ], !dbg !989
  %len.3.i = phi i32 [ %300, %.preheader.i ], [ %len.4.i, %327 ], !dbg !989
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1, !dbg !1036
  %308 = getelementptr inbounds i32* %307, i64 %indvars.iv.next.i, !dbg !1037
  %309 = load i32* %308, align 4, !dbg !1037, !tbaa !697
  %310 = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str31, i64 0, i64 0), i32 %309, %struct.datapartition* %253) #6, !dbg !1038
  %311 = add nsw i32 %310, %len.3.i, !dbg !1039
  tail call void @llvm.dbg.value(metadata i32 %311, i64 0, metadata !271, metadata !698) #4, !dbg !964
  %312 = load i32** %303, align 8, !dbg !1040, !tbaa !1034
  %313 = getelementptr inbounds i32* %312, i64 %indvars.iv.next.i, !dbg !1041
  %314 = load i32* %313, align 4, !dbg !1041, !tbaa !697
  switch i32 %314, label %327 [
    i32 0, label %315
    i32 1, label %315
    i32 2, label %321
  ], !dbg !1042

; <label>:315                                     ; preds = %306, %306
  %316 = load i32** %304, align 8, !dbg !1027, !tbaa !1043
  %317 = getelementptr inbounds i32* %316, i64 %indvars.iv.next.i, !dbg !1044
  %318 = load i32* %317, align 4, !dbg !1044, !tbaa !697
  %319 = tail call i32 @ue_v(i8* getelementptr inbounds ([31 x i8]* @.str35, i64 0, i64 0), i32 %318, %struct.datapartition* %253) #6, !dbg !1045
  %320 = add nsw i32 %319, %311, !dbg !1046
  tail call void @llvm.dbg.value(metadata i32 %320, i64 0, metadata !271, metadata !698) #4, !dbg !964
  br label %327, !dbg !1047

; <label>:321                                     ; preds = %306
  %322 = load i32** %305, align 8, !dbg !1030, !tbaa !1048
  %323 = getelementptr inbounds i32* %322, i64 %indvars.iv.next.i, !dbg !1049
  %324 = load i32* %323, align 4, !dbg !1049, !tbaa !697
  %325 = tail call i32 @ue_v(i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0), i32 %324, %struct.datapartition* %253) #6, !dbg !1050
  %326 = add nsw i32 %325, %311, !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 %326, i64 0, metadata !271, metadata !698) #4, !dbg !964
  br label %327, !dbg !1052

; <label>:327                                     ; preds = %321, %315, %306
  %len.4.i = phi i32 [ %320, %315 ], [ %326, %321 ], [ %311, %306 ], !dbg !989
  %328 = load i32** %303, align 8, !dbg !1053, !tbaa !1034
  %329 = getelementptr inbounds i32* %328, i64 %indvars.iv.next.i, !dbg !1054
  %330 = load i32* %329, align 4, !dbg !1054, !tbaa !697
  %331 = icmp eq i32 %330, 3, !dbg !1055
  br i1 %331, label %ref_pic_list_reordering.exit, label %306, !dbg !1036

ref_pic_list_reordering.exit:                     ; preds = %327, %.loopexit2.i, %296
  %len.5.i = phi i32 [ %300, %296 ], [ %len.2.i, %.loopexit2.i ], [ %len.4.i, %327 ], !dbg !989
  %332 = add nsw i32 %len.5.i, %len.7, !dbg !1056
  tail call void @llvm.dbg.value(metadata i32 %332, i64 0, metadata !245, metadata !698), !dbg !711
  %333 = load %struct.ImageParameters** @img, align 8, !dbg !1057, !tbaa !687
  %334 = getelementptr inbounds %struct.ImageParameters* %333, i64 0, i32 6, !dbg !1059
  %335 = load i32* %334, align 4, !dbg !1059, !tbaa !729
  switch i32 %335, label %566 [
    i32 0, label %336
    i32 3, label %336
    i32 1, label %343
  ], !dbg !1060

; <label>:336                                     ; preds = %ref_pic_list_reordering.exit, %ref_pic_list_reordering.exit
  %337 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1061, !tbaa !687
  %338 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %337, i64 0, i32 19, !dbg !1062
  %339 = load i32* %338, align 4, !dbg !1062, !tbaa !1063
  %340 = icmp eq i32 %339, 0, !dbg !1061
  br i1 %340, label %341, label %348, !dbg !1064

; <label>:341                                     ; preds = %336
  %342 = icmp eq i32 %335, 1, !dbg !1065
  br i1 %342, label %343, label %566, !dbg !1066

; <label>:343                                     ; preds = %ref_pic_list_reordering.exit, %341
  %344 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1067, !tbaa !687
  %345 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %344, i64 0, i32 20, !dbg !1068
  %346 = load i32* %345, align 4, !dbg !1068, !tbaa !1069
  %347 = icmp eq i32 %346, 1, !dbg !1070
  br i1 %347, label %348, label %566, !dbg !1071

; <label>:348                                     ; preds = %336, %343
  %349 = load %struct.InputParameters** @input, align 8, !dbg !1072, !tbaa !687
  %350 = getelementptr inbounds %struct.InputParameters* %349, i64 0, i32 61, !dbg !1075
  %351 = load i32* %350, align 4, !dbg !1075, !tbaa !692
  %352 = sext i32 %351 to i64, !dbg !1076
  %353 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %352, !dbg !1076
  %354 = load i32** %353, align 8, !dbg !1076, !tbaa !687
  %355 = load i32* %354, align 4, !dbg !1076, !tbaa !697
  tail call void @llvm.dbg.value(metadata i32 %355, i64 0, metadata !292, metadata !698) #4, !dbg !1077
  %356 = sext i32 %355 to i64, !dbg !1078
  %357 = getelementptr inbounds %struct.ImageParameters* %333, i64 0, i32 50, !dbg !1079
  %358 = load %struct.Slice** %357, align 8, !dbg !1079, !tbaa !703
  %359 = getelementptr inbounds %struct.Slice* %358, i64 0, i32 6, !dbg !1080
  %360 = load %struct.datapartition** %359, align 8, !dbg !1080, !tbaa !707
  %361 = getelementptr inbounds %struct.datapartition* %360, i64 %356, !dbg !1078
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %361, i64 0, metadata !293, metadata !698) #4, !dbg !1081
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  %362 = load i32* @luma_log_weight_denom, align 4, !dbg !1083, !tbaa !697
  %363 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str46, i64 0, i64 0), i32 %362, %struct.datapartition* %361) #6, !dbg !1084
  tail call void @llvm.dbg.value(metadata i32 %363, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  %364 = load i32* @chroma_log_weight_denom, align 4, !dbg !1085, !tbaa !697
  %365 = tail call i32 @ue_v(i8* getelementptr inbounds ([28 x i8]* @.str47, i64 0, i64 0), i32 %364, %struct.datapartition* %361) #6, !dbg !1086
  %366 = add nsw i32 %365, %363, !dbg !1087
  tail call void @llvm.dbg.value(metadata i32 %366, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !295, metadata !698) #4, !dbg !1088
  %367 = load %struct.ImageParameters** @img, align 8, !dbg !1089, !tbaa !687
  %368 = getelementptr inbounds %struct.ImageParameters* %367, i64 0, i32 79, !dbg !1092
  %369 = load i32* %368, align 4, !dbg !1092, !tbaa !911
  %370 = icmp sgt i32 %369, 0, !dbg !1093
  br i1 %370, label %.lr.ph11.i, label %._crit_edge.i, !dbg !1094

.lr.ph11.i:                                       ; preds = %348, %.loopexit2.i7
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %.loopexit2.i7 ], [ 0, %348 ], !dbg !1095
  %len.09.i = phi i32 [ %len.3.i6, %.loopexit2.i7 ], [ %366, %348 ], !dbg !1095
  %371 = load i32**** @wp_weight, align 8, !dbg !1096, !tbaa !687
  %372 = load i32*** %371, align 8, !dbg !1096, !tbaa !687
  %373 = getelementptr inbounds i32** %372, i64 %indvars.iv22.i, !dbg !1096
  %374 = load i32** %373, align 8, !dbg !1096, !tbaa !687
  %375 = load i32* %374, align 4, !dbg !1096, !tbaa !697
  %376 = load i32* @luma_log_weight_denom, align 4, !dbg !1099, !tbaa !697
  %377 = shl i32 1, %376, !dbg !1100
  %378 = icmp eq i32 %375, %377, !dbg !1101
  br i1 %378, label %379, label %386, !dbg !1102

; <label>:379                                     ; preds = %.lr.ph11.i
  %380 = load i32**** @wp_offset, align 8, !dbg !1103, !tbaa !687
  %381 = load i32*** %380, align 8, !dbg !1103, !tbaa !687
  %382 = getelementptr inbounds i32** %381, i64 %indvars.iv22.i, !dbg !1103
  %383 = load i32** %382, align 8, !dbg !1103, !tbaa !687
  %384 = load i32* %383, align 4, !dbg !1103, !tbaa !697
  %385 = icmp eq i32 %384, 0, !dbg !1104
  br i1 %385, label %403, label %386, !dbg !1105

; <label>:386                                     ; preds = %379, %.lr.ph11.i
  %387 = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str48, i64 0, i64 0), i32 1, %struct.datapartition* %361) #6, !dbg !1106
  %388 = add nsw i32 %387, %len.09.i, !dbg !1108
  tail call void @llvm.dbg.value(metadata i32 %388, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  %389 = load i32**** @wp_weight, align 8, !dbg !1109, !tbaa !687
  %390 = load i32*** %389, align 8, !dbg !1109, !tbaa !687
  %391 = getelementptr inbounds i32** %390, i64 %indvars.iv22.i, !dbg !1109
  %392 = load i32** %391, align 8, !dbg !1109, !tbaa !687
  %393 = load i32* %392, align 4, !dbg !1109, !tbaa !697
  %394 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str49, i64 0, i64 0), i32 %393, %struct.datapartition* %361) #6, !dbg !1110
  %395 = add nsw i32 %388, %394, !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 %395, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  %396 = load i32**** @wp_offset, align 8, !dbg !1112, !tbaa !687
  %397 = load i32*** %396, align 8, !dbg !1112, !tbaa !687
  %398 = getelementptr inbounds i32** %397, i64 %indvars.iv22.i, !dbg !1112
  %399 = load i32** %398, align 8, !dbg !1112, !tbaa !687
  %400 = load i32* %399, align 4, !dbg !1112, !tbaa !697
  %401 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str50, i64 0, i64 0), i32 %400, %struct.datapartition* %361) #6, !dbg !1113
  %402 = add nsw i32 %395, %401, !dbg !1114
  tail call void @llvm.dbg.value(metadata i32 %402, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  br label %406, !dbg !1115

; <label>:403                                     ; preds = %379
  %404 = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str48, i64 0, i64 0), i32 0, %struct.datapartition* %361) #6, !dbg !1116
  %405 = add nsw i32 %404, %len.09.i, !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %405, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  br label %406, !dbg !1095

; <label>:406                                     ; preds = %403, %386
  %len.1.i5 = phi i32 [ %402, %386 ], [ %405, %403 ], !dbg !1095
  %407 = load i32**** @wp_weight, align 8, !dbg !1119, !tbaa !687
  %408 = load i32*** %407, align 8, !dbg !1119, !tbaa !687
  %409 = getelementptr inbounds i32** %408, i64 %indvars.iv22.i, !dbg !1119
  %410 = load i32** %409, align 8, !dbg !1119, !tbaa !687
  %411 = getelementptr inbounds i32* %410, i64 1, !dbg !1119
  %412 = load i32* %411, align 4, !dbg !1119, !tbaa !697
  %413 = load i32* @chroma_log_weight_denom, align 4, !dbg !1121, !tbaa !697
  %414 = shl i32 1, %413, !dbg !1122
  %415 = icmp eq i32 %412, %414, !dbg !1123
  br i1 %415, label %416, label %432, !dbg !1124

; <label>:416                                     ; preds = %406
  %417 = load i32**** @wp_offset, align 8, !dbg !1125, !tbaa !687
  %418 = load i32*** %417, align 8, !dbg !1125, !tbaa !687
  %419 = getelementptr inbounds i32** %418, i64 %indvars.iv22.i, !dbg !1125
  %420 = load i32** %419, align 8, !dbg !1125, !tbaa !687
  %421 = getelementptr inbounds i32* %420, i64 1, !dbg !1125
  %422 = load i32* %421, align 4, !dbg !1125, !tbaa !697
  %423 = icmp eq i32 %422, 0, !dbg !1126
  br i1 %423, label %424, label %432, !dbg !1127

; <label>:424                                     ; preds = %416
  %425 = getelementptr inbounds i32* %410, i64 2, !dbg !1128
  %426 = load i32* %425, align 4, !dbg !1128, !tbaa !697
  %427 = icmp eq i32 %426, %412, !dbg !1129
  br i1 %427, label %428, label %432, !dbg !1130

; <label>:428                                     ; preds = %424
  %429 = getelementptr inbounds i32* %420, i64 2, !dbg !1131
  %430 = load i32* %429, align 4, !dbg !1131, !tbaa !697
  %431 = icmp eq i32 %430, 0, !dbg !1132
  br i1 %431, label %452, label %432, !dbg !1133

; <label>:432                                     ; preds = %428, %424, %416, %406
  %433 = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str51, i64 0, i64 0), i32 1, %struct.datapartition* %361) #6, !dbg !1134
  %434 = add nsw i32 %433, %len.1.i5, !dbg !1136
  tail call void @llvm.dbg.value(metadata i32 %434, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !296, metadata !698) #4, !dbg !1137
  br label %435, !dbg !1138

; <label>:435                                     ; preds = %435, %432
  %indvars.iv19.i = phi i64 [ 1, %432 ], [ %indvars.iv.next20.i, %435 ], !dbg !1095
  %len.27.i = phi i32 [ %434, %432 ], [ %451, %435 ], !dbg !1095
  %436 = load i32**** @wp_weight, align 8, !dbg !1140, !tbaa !687
  %437 = load i32*** %436, align 8, !dbg !1140, !tbaa !687
  %438 = getelementptr inbounds i32** %437, i64 %indvars.iv22.i, !dbg !1140
  %439 = load i32** %438, align 8, !dbg !1140, !tbaa !687
  %440 = getelementptr inbounds i32* %439, i64 %indvars.iv19.i, !dbg !1140
  %441 = load i32* %440, align 4, !dbg !1140, !tbaa !697
  %442 = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0), i32 %441, %struct.datapartition* %361) #6, !dbg !1143
  %443 = add nsw i32 %442, %len.27.i, !dbg !1144
  tail call void @llvm.dbg.value(metadata i32 %443, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  %444 = load i32**** @wp_offset, align 8, !dbg !1145, !tbaa !687
  %445 = load i32*** %444, align 8, !dbg !1145, !tbaa !687
  %446 = getelementptr inbounds i32** %445, i64 %indvars.iv22.i, !dbg !1145
  %447 = load i32** %446, align 8, !dbg !1145, !tbaa !687
  %448 = getelementptr inbounds i32* %447, i64 %indvars.iv19.i, !dbg !1145
  %449 = load i32* %448, align 4, !dbg !1145, !tbaa !697
  %450 = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str53, i64 0, i64 0), i32 %449, %struct.datapartition* %361) #6, !dbg !1146
  %451 = add nsw i32 %443, %450, !dbg !1147
  tail call void @llvm.dbg.value(metadata i32 %451, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1, !dbg !1138
  %exitcond21.i = icmp eq i64 %indvars.iv.next20.i, 3, !dbg !1138
  br i1 %exitcond21.i, label %.loopexit2.i7, label %435, !dbg !1138

; <label>:452                                     ; preds = %428
  %453 = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str51, i64 0, i64 0), i32 0, %struct.datapartition* %361) #6, !dbg !1148
  %454 = add nsw i32 %453, %len.1.i5, !dbg !1150
  tail call void @llvm.dbg.value(metadata i32 %454, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  br label %.loopexit2.i7, !dbg !1095

.loopexit2.i7:                                    ; preds = %435, %452
  %len.3.i6 = phi i32 [ %454, %452 ], [ %451, %435 ], !dbg !1095
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1, !dbg !1094
  %455 = load %struct.ImageParameters** @img, align 8, !dbg !1089, !tbaa !687
  %456 = getelementptr inbounds %struct.ImageParameters* %455, i64 0, i32 79, !dbg !1092
  %457 = load i32* %456, align 4, !dbg !1092, !tbaa !911
  %458 = sext i32 %457 to i64, !dbg !1093
  %459 = icmp slt i64 %indvars.iv.next23.i, %458, !dbg !1093
  br i1 %459, label %.lr.ph11.i, label %._crit_edge.i, !dbg !1094

._crit_edge.i:                                    ; preds = %.loopexit2.i7, %348
  %460 = phi %struct.ImageParameters* [ %367, %348 ], [ %455, %.loopexit2.i7 ], !dbg !1095
  %len.0.lcssa.i = phi i32 [ %366, %348 ], [ %len.3.i6, %.loopexit2.i7 ], !dbg !1095
  %461 = getelementptr inbounds %struct.ImageParameters* %460, i64 0, i32 6, !dbg !1151
  %462 = load i32* %461, align 4, !dbg !1151, !tbaa !729
  %463 = icmp eq i32 %462, 1, !dbg !1153
  br i1 %463, label %.preheader.i8, label %pred_weight_table.exit, !dbg !1154

.preheader.i8:                                    ; preds = %._crit_edge.i
  %464 = getelementptr inbounds %struct.ImageParameters* %460, i64 0, i32 80, !dbg !1155
  %465 = load i32* %464, align 4, !dbg !1155, !tbaa !930
  %466 = icmp sgt i32 %465, 0, !dbg !1159
  br i1 %466, label %.lr.ph.i, label %pred_weight_table.exit, !dbg !1160

.lr.ph.i:                                         ; preds = %.preheader.i8, %.loopexit.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.loopexit.i ], [ 0, %.preheader.i8 ], !dbg !1095
  %len.45.i = phi i32 [ %len.7.i, %.loopexit.i ], [ %len.0.lcssa.i, %.preheader.i8 ], !dbg !1095
  %467 = load i32**** @wp_weight, align 8, !dbg !1161, !tbaa !687
  %468 = getelementptr inbounds i32*** %467, i64 1, !dbg !1161
  %469 = load i32*** %468, align 8, !dbg !1161, !tbaa !687
  %470 = getelementptr inbounds i32** %469, i64 %indvars.iv17.i, !dbg !1161
  %471 = load i32** %470, align 8, !dbg !1161, !tbaa !687
  %472 = load i32* %471, align 4, !dbg !1161, !tbaa !697
  %473 = load i32* @luma_log_weight_denom, align 4, !dbg !1164, !tbaa !697
  %474 = shl i32 1, %473, !dbg !1165
  %475 = icmp eq i32 %472, %474, !dbg !1166
  br i1 %475, label %476, label %484, !dbg !1167

; <label>:476                                     ; preds = %.lr.ph.i
  %477 = load i32**** @wp_offset, align 8, !dbg !1168, !tbaa !687
  %478 = getelementptr inbounds i32*** %477, i64 1, !dbg !1168
  %479 = load i32*** %478, align 8, !dbg !1168, !tbaa !687
  %480 = getelementptr inbounds i32** %479, i64 %indvars.iv17.i, !dbg !1168
  %481 = load i32** %480, align 8, !dbg !1168, !tbaa !687
  %482 = load i32* %481, align 4, !dbg !1168, !tbaa !697
  %483 = icmp eq i32 %482, 0, !dbg !1169
  br i1 %483, label %503, label %484, !dbg !1170

; <label>:484                                     ; preds = %476, %.lr.ph.i
  %485 = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str54, i64 0, i64 0), i32 1, %struct.datapartition* %361) #6, !dbg !1171
  %486 = add nsw i32 %485, %len.45.i, !dbg !1173
  tail call void @llvm.dbg.value(metadata i32 %486, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  %487 = load i32**** @wp_weight, align 8, !dbg !1174, !tbaa !687
  %488 = getelementptr inbounds i32*** %487, i64 1, !dbg !1174
  %489 = load i32*** %488, align 8, !dbg !1174, !tbaa !687
  %490 = getelementptr inbounds i32** %489, i64 %indvars.iv17.i, !dbg !1174
  %491 = load i32** %490, align 8, !dbg !1174, !tbaa !687
  %492 = load i32* %491, align 4, !dbg !1174, !tbaa !697
  %493 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str55, i64 0, i64 0), i32 %492, %struct.datapartition* %361) #6, !dbg !1175
  %494 = add nsw i32 %486, %493, !dbg !1176
  tail call void @llvm.dbg.value(metadata i32 %494, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  %495 = load i32**** @wp_offset, align 8, !dbg !1177, !tbaa !687
  %496 = getelementptr inbounds i32*** %495, i64 1, !dbg !1177
  %497 = load i32*** %496, align 8, !dbg !1177, !tbaa !687
  %498 = getelementptr inbounds i32** %497, i64 %indvars.iv17.i, !dbg !1177
  %499 = load i32** %498, align 8, !dbg !1177, !tbaa !687
  %500 = load i32* %499, align 4, !dbg !1177, !tbaa !697
  %501 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str56, i64 0, i64 0), i32 %500, %struct.datapartition* %361) #6, !dbg !1178
  %502 = add nsw i32 %494, %501, !dbg !1179
  tail call void @llvm.dbg.value(metadata i32 %502, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  br label %506, !dbg !1180

; <label>:503                                     ; preds = %476
  %504 = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str54, i64 0, i64 0), i32 0, %struct.datapartition* %361) #6, !dbg !1181
  %505 = add nsw i32 %504, %len.45.i, !dbg !1183
  tail call void @llvm.dbg.value(metadata i32 %505, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  br label %506, !dbg !1095

; <label>:506                                     ; preds = %503, %484
  %len.5.i9 = phi i32 [ %502, %484 ], [ %505, %503 ], !dbg !1095
  %507 = load i32**** @wp_weight, align 8, !dbg !1184, !tbaa !687
  %508 = getelementptr inbounds i32*** %507, i64 1, !dbg !1184
  %509 = load i32*** %508, align 8, !dbg !1184, !tbaa !687
  %510 = getelementptr inbounds i32** %509, i64 %indvars.iv17.i, !dbg !1184
  %511 = load i32** %510, align 8, !dbg !1184, !tbaa !687
  %512 = getelementptr inbounds i32* %511, i64 1, !dbg !1184
  %513 = load i32* %512, align 4, !dbg !1184, !tbaa !697
  %514 = load i32* @chroma_log_weight_denom, align 4, !dbg !1186, !tbaa !697
  %515 = shl i32 1, %514, !dbg !1187
  %516 = icmp eq i32 %513, %515, !dbg !1188
  br i1 %516, label %517, label %534, !dbg !1189

; <label>:517                                     ; preds = %506
  %518 = load i32**** @wp_offset, align 8, !dbg !1190, !tbaa !687
  %519 = getelementptr inbounds i32*** %518, i64 1, !dbg !1190
  %520 = load i32*** %519, align 8, !dbg !1190, !tbaa !687
  %521 = getelementptr inbounds i32** %520, i64 %indvars.iv17.i, !dbg !1190
  %522 = load i32** %521, align 8, !dbg !1190, !tbaa !687
  %523 = getelementptr inbounds i32* %522, i64 1, !dbg !1190
  %524 = load i32* %523, align 4, !dbg !1190, !tbaa !697
  %525 = icmp eq i32 %524, 0, !dbg !1191
  br i1 %525, label %526, label %534, !dbg !1192

; <label>:526                                     ; preds = %517
  %527 = getelementptr inbounds i32* %511, i64 2, !dbg !1193
  %528 = load i32* %527, align 4, !dbg !1193, !tbaa !697
  %529 = icmp eq i32 %528, %513, !dbg !1194
  br i1 %529, label %530, label %534, !dbg !1195

; <label>:530                                     ; preds = %526
  %531 = getelementptr inbounds i32* %522, i64 2, !dbg !1196
  %532 = load i32* %531, align 4, !dbg !1196, !tbaa !697
  %533 = icmp eq i32 %532, 0, !dbg !1197
  br i1 %533, label %556, label %534, !dbg !1198

; <label>:534                                     ; preds = %530, %526, %517, %506
  %535 = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str57, i64 0, i64 0), i32 1, %struct.datapartition* %361) #6, !dbg !1199
  %536 = add nsw i32 %535, %len.5.i9, !dbg !1201
  tail call void @llvm.dbg.value(metadata i32 %536, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !296, metadata !698) #4, !dbg !1137
  br label %537, !dbg !1202

; <label>:537                                     ; preds = %537, %534
  %indvars.iv.i10 = phi i64 [ 1, %534 ], [ %indvars.iv.next.i11, %537 ], !dbg !1095
  %len.63.i = phi i32 [ %536, %534 ], [ %555, %537 ], !dbg !1095
  %538 = load i32**** @wp_weight, align 8, !dbg !1204, !tbaa !687
  %539 = getelementptr inbounds i32*** %538, i64 1, !dbg !1204
  %540 = load i32*** %539, align 8, !dbg !1204, !tbaa !687
  %541 = getelementptr inbounds i32** %540, i64 %indvars.iv17.i, !dbg !1204
  %542 = load i32** %541, align 8, !dbg !1204, !tbaa !687
  %543 = getelementptr inbounds i32* %542, i64 %indvars.iv.i10, !dbg !1204
  %544 = load i32* %543, align 4, !dbg !1204, !tbaa !697
  %545 = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str58, i64 0, i64 0), i32 %544, %struct.datapartition* %361) #6, !dbg !1207
  %546 = add nsw i32 %545, %len.63.i, !dbg !1208
  tail call void @llvm.dbg.value(metadata i32 %546, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  %547 = load i32**** @wp_offset, align 8, !dbg !1209, !tbaa !687
  %548 = getelementptr inbounds i32*** %547, i64 1, !dbg !1209
  %549 = load i32*** %548, align 8, !dbg !1209, !tbaa !687
  %550 = getelementptr inbounds i32** %549, i64 %indvars.iv17.i, !dbg !1209
  %551 = load i32** %550, align 8, !dbg !1209, !tbaa !687
  %552 = getelementptr inbounds i32* %551, i64 %indvars.iv.i10, !dbg !1209
  %553 = load i32* %552, align 4, !dbg !1209, !tbaa !697
  %554 = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str59, i64 0, i64 0), i32 %553, %struct.datapartition* %361) #6, !dbg !1210
  %555 = add nsw i32 %546, %554, !dbg !1211
  tail call void @llvm.dbg.value(metadata i32 %555, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 1, !dbg !1202
  %exitcond.i = icmp eq i64 %indvars.iv.next.i11, 3, !dbg !1202
  br i1 %exitcond.i, label %.loopexit.i, label %537, !dbg !1202

; <label>:556                                     ; preds = %530
  %557 = tail call i32 @u_1(i8* getelementptr inbounds ([22 x i8]* @.str57, i64 0, i64 0), i32 0, %struct.datapartition* %361) #6, !dbg !1212
  %558 = add nsw i32 %557, %len.5.i9, !dbg !1214
  tail call void @llvm.dbg.value(metadata i32 %558, i64 0, metadata !294, metadata !698) #4, !dbg !1082
  br label %.loopexit.i, !dbg !1095

.loopexit.i:                                      ; preds = %537, %556
  %len.7.i = phi i32 [ %558, %556 ], [ %555, %537 ], !dbg !1095
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1, !dbg !1160
  %559 = load %struct.ImageParameters** @img, align 8, !dbg !1215, !tbaa !687
  %560 = getelementptr inbounds %struct.ImageParameters* %559, i64 0, i32 80, !dbg !1155
  %561 = load i32* %560, align 4, !dbg !1155, !tbaa !930
  %562 = sext i32 %561 to i64, !dbg !1159
  %563 = icmp slt i64 %indvars.iv.next18.i, %562, !dbg !1159
  br i1 %563, label %.lr.ph.i, label %pred_weight_table.exit, !dbg !1160

pred_weight_table.exit:                           ; preds = %.loopexit.i, %._crit_edge.i, %.preheader.i8
  %564 = phi %struct.ImageParameters* [ %460, %._crit_edge.i ], [ %460, %.preheader.i8 ], [ %559, %.loopexit.i ]
  %len.8.i = phi i32 [ %len.0.lcssa.i, %._crit_edge.i ], [ %len.0.lcssa.i, %.preheader.i8 ], [ %len.7.i, %.loopexit.i ], !dbg !1095
  %565 = add nsw i32 %len.8.i, %332, !dbg !1216
  tail call void @llvm.dbg.value(metadata i32 %565, i64 0, metadata !245, metadata !698), !dbg !711
  br label %566, !dbg !1217

; <label>:566                                     ; preds = %ref_pic_list_reordering.exit, %pred_weight_table.exit, %343, %341
  %567 = phi %struct.ImageParameters* [ %564, %pred_weight_table.exit ], [ %333, %343 ], [ %333, %341 ], [ %333, %ref_pic_list_reordering.exit ]
  %len.8 = phi i32 [ %565, %pred_weight_table.exit ], [ %332, %343 ], [ %332, %341 ], [ %332, %ref_pic_list_reordering.exit ]
  %568 = getelementptr inbounds %struct.ImageParameters* %567, i64 0, i32 113, !dbg !1218
  %569 = load i32* %568, align 4, !dbg !1218, !tbaa !1220
  %570 = icmp eq i32 %569, 0, !dbg !1221
  br i1 %570, label %645, label %571, !dbg !1222

; <label>:571                                     ; preds = %566
  %572 = load %struct.InputParameters** @input, align 8, !dbg !1223, !tbaa !687
  %573 = getelementptr inbounds %struct.InputParameters* %572, i64 0, i32 61, !dbg !1225
  %574 = load i32* %573, align 4, !dbg !1225, !tbaa !692
  %575 = sext i32 %574 to i64, !dbg !1226
  %576 = getelementptr inbounds [2 x i32*]* @assignSE2partition, i64 0, i64 %575, !dbg !1226
  %577 = load i32** %576, align 8, !dbg !1226, !tbaa !687
  %578 = load i32* %577, align 4, !dbg !1226, !tbaa !697
  tail call void @llvm.dbg.value(metadata i32 %578, i64 0, metadata !274, metadata !698) #4, !dbg !1227
  %579 = sext i32 %578 to i64, !dbg !1228
  %580 = getelementptr inbounds %struct.ImageParameters* %567, i64 0, i32 50, !dbg !1229
  %581 = load %struct.Slice** %580, align 8, !dbg !1229, !tbaa !703
  %582 = getelementptr inbounds %struct.Slice* %581, i64 0, i32 6, !dbg !1230
  %583 = load %struct.datapartition** %582, align 8, !dbg !1230, !tbaa !707
  %584 = getelementptr inbounds %struct.datapartition* %583, i64 %579, !dbg !1228
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %584, i64 0, metadata !275, metadata !698) #4, !dbg !1231
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !289, metadata !698) #4, !dbg !1232
  %585 = getelementptr inbounds %struct.ImageParameters* %567, i64 0, i32 49, !dbg !1233
  %586 = load %struct.Picture** %585, align 8, !dbg !1233, !tbaa !781
  %587 = getelementptr inbounds %struct.Picture* %586, i64 0, i32 1, !dbg !1235
  %588 = load i32* %587, align 4, !dbg !1235, !tbaa !783
  %589 = icmp eq i32 %588, 0, !dbg !1236
  br i1 %589, label %599, label %590, !dbg !1237

; <label>:590                                     ; preds = %571
  %591 = getelementptr inbounds %struct.ImageParameters* %567, i64 0, i32 115, !dbg !1238
  %592 = load i32* %591, align 4, !dbg !1238, !tbaa !1240
  %593 = tail call i32 @u_1(i8* getelementptr inbounds ([33 x i8]* @.str37, i64 0, i64 0), i32 %592, %struct.datapartition* %584) #6, !dbg !1241
  tail call void @llvm.dbg.value(metadata i32 %593, i64 0, metadata !289, metadata !698) #4, !dbg !1232
  %594 = load %struct.ImageParameters** @img, align 8, !dbg !1242, !tbaa !687
  %595 = getelementptr inbounds %struct.ImageParameters* %594, i64 0, i32 116, !dbg !1243
  %596 = load i32* %595, align 4, !dbg !1243, !tbaa !1244
  %597 = tail call i32 @u_1(i8* getelementptr inbounds ([29 x i8]* @.str38, i64 0, i64 0), i32 %596, %struct.datapartition* %584) #6, !dbg !1245
  %598 = add nsw i32 %597, %593, !dbg !1246
  tail call void @llvm.dbg.value(metadata i32 %598, i64 0, metadata !289, metadata !698) #4, !dbg !1232
  br label %dec_ref_pic_marking.exit, !dbg !1247

; <label>:599                                     ; preds = %571
  %600 = getelementptr inbounds %struct.ImageParameters* %567, i64 0, i32 117, !dbg !1248
  %601 = load %struct.DecRefPicMarking_s** %600, align 8, !dbg !1248, !tbaa !1250
  %602 = icmp ne %struct.DecRefPicMarking_s* %601, null, !dbg !1251
  %603 = zext i1 %602 to i32, !dbg !1251
  %604 = getelementptr inbounds %struct.ImageParameters* %567, i64 0, i32 114, !dbg !1252
  store i32 %603, i32* %604, align 4, !dbg !1253, !tbaa !1254
  %605 = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str39, i64 0, i64 0), i32 %603, %struct.datapartition* %584) #6, !dbg !1255
  tail call void @llvm.dbg.value(metadata i32 %605, i64 0, metadata !289, metadata !698) #4, !dbg !1232
  %606 = load %struct.ImageParameters** @img, align 8, !dbg !1256, !tbaa !687
  %607 = getelementptr inbounds %struct.ImageParameters* %606, i64 0, i32 114, !dbg !1258
  %608 = load i32* %607, align 4, !dbg !1258, !tbaa !1254
  %609 = icmp eq i32 %608, 0, !dbg !1256
  br i1 %609, label %dec_ref_pic_marking.exit, label %610, !dbg !1259

; <label>:610                                     ; preds = %599
  %611 = getelementptr inbounds %struct.ImageParameters* %606, i64 0, i32 117, !dbg !1260
  br label %612, !dbg !1262

; <label>:612                                     ; preds = %.backedge.i, %610
  %tmp_drpm.0.in.i = phi %struct.DecRefPicMarking_s** [ %611, %610 ], [ %tmp_drpm.0.in.be.i, %.backedge.i ], !dbg !1263
  %len.0.i12 = phi i32 [ %605, %610 ], [ %len.0.be.i, %.backedge.i ], !dbg !1263
  %tmp_drpm.0.i = load %struct.DecRefPicMarking_s** %tmp_drpm.0.in.i, align 8, !dbg !1260
  %613 = icmp eq %struct.DecRefPicMarking_s* %tmp_drpm.0.i, null, !dbg !1264
  br i1 %613, label %614, label %615, !dbg !1267

; <label>:614                                     ; preds = %612
  tail call void @error(i8* getelementptr inbounds ([29 x i8]* @.str40, i64 0, i64 0), i32 500) #6, !dbg !1268
  br label %615, !dbg !1268

; <label>:615                                     ; preds = %614, %612
  %616 = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 0, !dbg !1269
  %617 = load i32* %616, align 4, !dbg !1269, !tbaa !1270
  tail call void @llvm.dbg.value(metadata i32 %617, i64 0, metadata !288, metadata !698) #4, !dbg !1272
  %618 = tail call i32 @ue_v(i8* getelementptr inbounds ([40 x i8]* @.str41, i64 0, i64 0), i32 %617, %struct.datapartition* %584) #6, !dbg !1273
  %619 = add nsw i32 %618, %len.0.i12, !dbg !1274
  tail call void @llvm.dbg.value(metadata i32 %619, i64 0, metadata !289, metadata !698) #4, !dbg !1232
  %620 = and i32 %617, -3, !dbg !1275
  %621 = icmp eq i32 %620, 1, !dbg !1275
  br i1 %621, label %622, label %628, !dbg !1275

; <label>:622                                     ; preds = %615
  %623 = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 1, !dbg !1277
  %624 = load i32* %623, align 4, !dbg !1277, !tbaa !1279
  %625 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str42, i64 0, i64 0), i32 %624, %struct.datapartition* %584) #6, !dbg !1280
  %626 = add i32 %619, 1, !dbg !1281
  %627 = add i32 %626, %625, !dbg !1282
  tail call void @llvm.dbg.value(metadata i32 %627, i64 0, metadata !289, metadata !698) #4, !dbg !1232
  br label %628, !dbg !1283

; <label>:628                                     ; preds = %622, %615
  %len.1.i13 = phi i32 [ %627, %622 ], [ %619, %615 ], !dbg !1263
  switch i32 %617, label %638 [
    i32 2, label %.thread4.i
    i32 6, label %633
    i32 3, label %633
  ], !dbg !1284

.thread4.i:                                       ; preds = %628
  %629 = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 2, !dbg !1285
  %630 = load i32* %629, align 4, !dbg !1285, !tbaa !1288
  %631 = tail call i32 @ue_v(i8* getelementptr inbounds ([22 x i8]* @.str43, i64 0, i64 0), i32 %630, %struct.datapartition* %584) #6, !dbg !1289
  %632 = add nsw i32 %631, %len.1.i13, !dbg !1290
  tail call void @llvm.dbg.value(metadata i32 %632, i64 0, metadata !289, metadata !698) #4, !dbg !1232
  br label %.backedge.i, !dbg !1291

; <label>:633                                     ; preds = %628, %628
  %634 = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 3, !dbg !1292
  %635 = load i32* %634, align 4, !dbg !1292, !tbaa !1295
  %636 = tail call i32 @ue_v(i8* getelementptr inbounds ([24 x i8]* @.str44, i64 0, i64 0), i32 %635, %struct.datapartition* %584) #6, !dbg !1296
  %637 = add nsw i32 %636, %len.1.i13, !dbg !1297
  tail call void @llvm.dbg.value(metadata i32 %637, i64 0, metadata !289, metadata !698) #4, !dbg !1232
  br label %638, !dbg !1298

; <label>:638                                     ; preds = %633, %628
  %len.3.i14 = phi i32 [ %637, %633 ], [ %len.1.i13, %628 ], !dbg !1263
  switch i32 %617, label %.backedge.i [
    i32 4, label %639
    i32 0, label %dec_ref_pic_marking.exit
  ], !dbg !1291

; <label>:639                                     ; preds = %638
  %640 = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 4, !dbg !1299
  %641 = load i32* %640, align 4, !dbg !1299, !tbaa !1302
  %642 = tail call i32 @ue_v(i8* getelementptr inbounds ([32 x i8]* @.str45, i64 0, i64 0), i32 %641, %struct.datapartition* %584) #6, !dbg !1303
  %643 = add nsw i32 %642, %len.3.i14, !dbg !1304
  tail call void @llvm.dbg.value(metadata i32 %643, i64 0, metadata !289, metadata !698) #4, !dbg !1232
  br label %.backedge.i, !dbg !1305

.backedge.i:                                      ; preds = %639, %638, %.thread4.i
  %len.0.be.i = phi i32 [ %632, %.thread4.i ], [ %643, %639 ], [ %len.3.i14, %638 ], !dbg !1263
  %tmp_drpm.0.in.be.i = getelementptr inbounds %struct.DecRefPicMarking_s* %tmp_drpm.0.i, i64 0, i32 5, !dbg !1306
  br label %612, !dbg !1263

dec_ref_pic_marking.exit:                         ; preds = %638, %590, %599
  %len.5.i15 = phi i32 [ %598, %590 ], [ %605, %599 ], [ %len.3.i14, %638 ], !dbg !1263
  %644 = add nsw i32 %len.5.i15, %len.8, !dbg !1307
  tail call void @llvm.dbg.value(metadata i32 %644, i64 0, metadata !245, metadata !698), !dbg !711
  br label %645, !dbg !1308

; <label>:645                                     ; preds = %566, %dec_ref_pic_marking.exit
  %len.9 = phi i32 [ %644, %dec_ref_pic_marking.exit ], [ %len.8, %566 ]
  %646 = load %struct.InputParameters** @input, align 8, !dbg !1309, !tbaa !687
  %647 = getelementptr inbounds %struct.InputParameters* %646, i64 0, i32 59, !dbg !1311
  %648 = load i32* %647, align 4, !dbg !1311, !tbaa !1312
  %649 = icmp eq i32 %648, 1, !dbg !1313
  br i1 %649, label %650, label %660, !dbg !1314

; <label>:650                                     ; preds = %645
  %651 = load %struct.ImageParameters** @img, align 8, !dbg !1315, !tbaa !687
  %652 = getelementptr inbounds %struct.ImageParameters* %651, i64 0, i32 6, !dbg !1316
  %653 = load i32* %652, align 4, !dbg !1316, !tbaa !729
  %654 = icmp eq i32 %653, 2, !dbg !1317
  br i1 %654, label %660, label %655, !dbg !1318

; <label>:655                                     ; preds = %650
  %656 = getelementptr inbounds %struct.ImageParameters* %651, i64 0, i32 118, !dbg !1319
  %657 = load i32* %656, align 4, !dbg !1319, !tbaa !1321
  %658 = tail call i32 @ue_v(i8* getelementptr inbounds ([19 x i8]* @.str18, i64 0, i64 0), i32 %657, %struct.datapartition* %14) #6, !dbg !1322
  %659 = add nsw i32 %658, %len.9, !dbg !1323
  tail call void @llvm.dbg.value(metadata i32 %659, i64 0, metadata !245, metadata !698), !dbg !711
  br label %660, !dbg !1324

; <label>:660                                     ; preds = %650, %655, %645
  %len.10 = phi i32 [ %659, %655 ], [ %len.9, %650 ], [ %len.9, %645 ]
  %661 = getelementptr inbounds %struct.Slice* %11, i64 0, i32 1, !dbg !1325
  %662 = load i32* %661, align 4, !dbg !1325, !tbaa !1326
  %663 = add nsw i32 %662, -26, !dbg !1327
  %664 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1328, !tbaa !687
  %665 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %664, i64 0, i32 21, !dbg !1329
  %666 = load i32* %665, align 4, !dbg !1329, !tbaa !1330
  %667 = sub i32 %663, %666, !dbg !1331
  %668 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0), i32 %667, %struct.datapartition* %14) #6, !dbg !1332
  %669 = add nsw i32 %668, %len.10, !dbg !1333
  tail call void @llvm.dbg.value(metadata i32 %669, i64 0, metadata !245, metadata !698), !dbg !711
  %670 = load %struct.ImageParameters** @img, align 8, !dbg !1334, !tbaa !687
  %671 = getelementptr inbounds %struct.ImageParameters* %670, i64 0, i32 6, !dbg !1336
  %672 = load i32* %671, align 4, !dbg !1336, !tbaa !729
  %673 = icmp eq i32 %672, 3, !dbg !1337
  br i1 %673, label %674, label %683, !dbg !1338

; <label>:674                                     ; preds = %660
  %675 = tail call i32 @u_1(i8* getelementptr inbounds ([23 x i8]* @.str20, i64 0, i64 0), i32 0, %struct.datapartition* %14) #6, !dbg !1339
  %676 = add nsw i32 %675, %669, !dbg !1343
  tail call void @llvm.dbg.value(metadata i32 %676, i64 0, metadata !245, metadata !698), !dbg !711
  %677 = load %struct.ImageParameters** @img, align 8, !dbg !1344, !tbaa !687
  %678 = getelementptr inbounds %struct.ImageParameters* %677, i64 0, i32 11, !dbg !1345
  %679 = load i32* %678, align 4, !dbg !1345, !tbaa !1346
  %680 = add nsw i32 %679, -26, !dbg !1347
  %681 = tail call i32 @se_v(i8* getelementptr inbounds ([19 x i8]* @.str21, i64 0, i64 0), i32 %680, %struct.datapartition* %14) #6, !dbg !1348
  %682 = add nsw i32 %676, %681, !dbg !1349
  tail call void @llvm.dbg.value(metadata i32 %682, i64 0, metadata !245, metadata !698), !dbg !711
  br label %683, !dbg !1350

; <label>:683                                     ; preds = %674, %660
  %len.12 = phi i32 [ %682, %674 ], [ %669, %660 ]
  %684 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1351, !tbaa !687
  %685 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %684, i64 0, i32 26, !dbg !1353
  %686 = load i32* %685, align 4, !dbg !1353, !tbaa !1354
  %687 = icmp eq i32 %686, 0, !dbg !1351
  br i1 %687, label %710, label %688, !dbg !1355

; <label>:688                                     ; preds = %683
  %689 = load %struct.ImageParameters** @img, align 8, !dbg !1356, !tbaa !687
  %690 = getelementptr inbounds %struct.ImageParameters* %689, i64 0, i32 75, !dbg !1358
  %691 = load i32* %690, align 4, !dbg !1358, !tbaa !1359
  %692 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str22, i64 0, i64 0), i32 %691, %struct.datapartition* %14) #6, !dbg !1360
  %693 = add nsw i32 %692, %len.12, !dbg !1361
  tail call void @llvm.dbg.value(metadata i32 %693, i64 0, metadata !245, metadata !698), !dbg !711
  %694 = load %struct.ImageParameters** @img, align 8, !dbg !1362, !tbaa !687
  %695 = getelementptr inbounds %struct.ImageParameters* %694, i64 0, i32 75, !dbg !1364
  %696 = load i32* %695, align 4, !dbg !1364, !tbaa !1359
  %697 = icmp eq i32 %696, 1, !dbg !1365
  br i1 %697, label %710, label %698, !dbg !1366

; <label>:698                                     ; preds = %688
  %699 = getelementptr inbounds %struct.ImageParameters* %694, i64 0, i32 76, !dbg !1367
  %700 = load i32* %699, align 4, !dbg !1367, !tbaa !1369
  %701 = sdiv i32 %700, 2, !dbg !1370
  %702 = tail call i32 @se_v(i8* getelementptr inbounds ([31 x i8]* @.str23, i64 0, i64 0), i32 %701, %struct.datapartition* %14) #6, !dbg !1371
  %703 = add nsw i32 %702, %693, !dbg !1372
  tail call void @llvm.dbg.value(metadata i32 %703, i64 0, metadata !245, metadata !698), !dbg !711
  %704 = load %struct.ImageParameters** @img, align 8, !dbg !1373, !tbaa !687
  %705 = getelementptr inbounds %struct.ImageParameters* %704, i64 0, i32 77, !dbg !1374
  %706 = load i32* %705, align 4, !dbg !1374, !tbaa !1375
  %707 = sdiv i32 %706, 2, !dbg !1376
  %708 = tail call i32 @se_v(i8* getelementptr inbounds ([27 x i8]* @.str24, i64 0, i64 0), i32 %707, %struct.datapartition* %14) #6, !dbg !1377
  %709 = add nsw i32 %703, %708, !dbg !1378
  tail call void @llvm.dbg.value(metadata i32 %709, i64 0, metadata !245, metadata !698), !dbg !711
  br label %710, !dbg !1379

; <label>:710                                     ; preds = %688, %683, %698
  %len.13 = phi i32 [ %709, %698 ], [ %693, %688 ], [ %len.12, %683 ]
  %711 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1380, !tbaa !687
  %712 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %711, i64 0, i32 8, !dbg !1382
  %713 = load i32* %712, align 4, !dbg !1382, !tbaa !1383
  %714 = icmp eq i32 %713, 0, !dbg !1384
  br i1 %714, label %742, label %715, !dbg !1385

; <label>:715                                     ; preds = %710
  %716 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %711, i64 0, i32 9, !dbg !1386
  %717 = load i32* %716, align 4, !dbg !1386, !tbaa !1387
  %.off = add i32 %717, -3, !dbg !1388
  %718 = icmp ult i32 %.off, 3, !dbg !1388
  br i1 %718, label %719, label %742, !dbg !1388

; <label>:719                                     ; preds = %715
  %720 = load %struct.ImageParameters** @img, align 8, !dbg !1389, !tbaa !687
  %721 = getelementptr inbounds %struct.ImageParameters* %720, i64 0, i32 107, !dbg !1391
  %722 = load i32* %721, align 4, !dbg !1391, !tbaa !1392
  %723 = getelementptr inbounds %struct.ImageParameters* %720, i64 0, i32 106, !dbg !1393
  %724 = load i32* %723, align 4, !dbg !1393, !tbaa !1394
  %725 = mul i32 %724, %722, !dbg !1395
  %726 = uitofp i32 %725 to float, !dbg !1389
  %727 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %711, i64 0, i32 14, !dbg !1396
  %728 = load i32* %727, align 4, !dbg !1396, !tbaa !1397
  %729 = add i32 %728, 1, !dbg !1398
  %730 = uitofp i32 %729 to float, !dbg !1399
  %731 = fdiv float %726, %730, !dbg !1400
  %732 = fadd float %731, 1.000000e+00, !dbg !1401
  tail call void @llvm.dbg.value(metadata float %732, i64 0, metadata !249, metadata !698), !dbg !1402
  %733 = fpext float %732 to double, !dbg !1403
  %734 = tail call double @log(double %733) #8, !dbg !1404
  %735 = fdiv double %734, 0x3FE62E42FEFA39EF, !dbg !1405
  %736 = tail call double @ceil(double %735) #8, !dbg !1406
  %737 = fptosi double %736 to i32, !dbg !1407
  tail call void @llvm.dbg.value(metadata i32 %737, i64 0, metadata !248, metadata !698), !dbg !1408
  %738 = getelementptr inbounds %struct.ImageParameters* %720, i64 0, i32 147, !dbg !1409
  %739 = load i32* %738, align 4, !dbg !1409, !tbaa !1410
  %740 = tail call i32 @u_v(i32 %737, i8* getelementptr inbounds ([29 x i8]* @.str25, i64 0, i64 0), i32 %739, %struct.datapartition* %14) #6, !dbg !1411
  %741 = add nsw i32 %740, %len.13, !dbg !1412
  tail call void @llvm.dbg.value(metadata i32 %741, i64 0, metadata !245, metadata !698), !dbg !711
  br label %742, !dbg !1413

; <label>:742                                     ; preds = %710, %719, %715
  %len.14 = phi i32 [ %741, %719 ], [ %len.13, %715 ], [ %len.13, %710 ]
  %743 = load %struct.InputParameters** @input, align 8, !dbg !1414, !tbaa !687
  %744 = getelementptr inbounds %struct.InputParameters* %743, i64 0, i32 61, !dbg !1416
  %745 = load i32* %744, align 4, !dbg !1416, !tbaa !692
  %746 = icmp eq i32 %745, 0, !dbg !1414
  br i1 %746, label %759, label %747, !dbg !1417

; <label>:747                                     ; preds = %742
  %748 = load %struct.ImageParameters** @img, align 8, !dbg !1418, !tbaa !687
  %749 = getelementptr inbounds %struct.ImageParameters* %748, i64 0, i32 49, !dbg !1419
  %750 = load %struct.Picture** %749, align 8, !dbg !1419, !tbaa !781
  %751 = getelementptr inbounds %struct.Picture* %750, i64 0, i32 1, !dbg !1420
  %752 = load i32* %751, align 4, !dbg !1420, !tbaa !783
  %753 = icmp eq i32 %752, 0, !dbg !1418
  br i1 %753, label %754, label %759, !dbg !1421

; <label>:754                                     ; preds = %747
  %755 = getelementptr inbounds %struct.ImageParameters* %748, i64 0, i32 5, !dbg !1422
  %756 = load i32* %755, align 4, !dbg !1422, !tbaa !1424
  %757 = tail call i32 @ue_v(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0), i32 %756, %struct.datapartition* %14) #6, !dbg !1425
  %758 = add nsw i32 %757, %len.14, !dbg !1426
  tail call void @llvm.dbg.value(metadata i32 %758, i64 0, metadata !245, metadata !698), !dbg !711
  br label %759, !dbg !1427

; <label>:759                                     ; preds = %747, %742, %754
  %len.15 = phi i32 [ %len.14, %747 ], [ %758, %754 ], [ %len.14, %742 ]
  ret i32 %len.15, !dbg !1428
}

; Function Attrs: optsize
declare i32 @ue_v(i8*, i32, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @u_v(i32, i8*, i32, %struct.datapartition*) #1

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare i32 @u_1(i8*, i32, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @se_v(i8*, i32, %struct.datapartition*) #1

; Function Attrs: nounwind optsize readnone
declare double @ceil(double) #3

; Function Attrs: nounwind optsize readnone
declare double @log(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_picture_type() #0 {
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !255, metadata !698), !dbg !1429
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1430, !tbaa !687
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6, !dbg !1431
  %3 = load i32* %2, align 4, !dbg !1431, !tbaa !729
  %4 = icmp ult i32 %3, 4, !dbg !1432
  br i1 %4, label %switch.lookup, label %5, !dbg !1432

; <label>:5                                       ; preds = %0
  tail call void @error(i8* getelementptr inbounds ([28 x i8]* @.str27, i64 0, i64 0), i32 1) #6, !dbg !1433
  ret i32 0, !dbg !1434

switch.lookup:                                    ; preds = %0
  %switch.offset = add i32 %3, 5, !dbg !1432
  ret i32 %switch.offset, !dbg !1432
}

; Function Attrs: optsize
declare void @error(i8*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Partition_BC_Header(i32 %PartNo) #0 {
  %symbol = alloca %struct.syntaxelement, align 8
  tail call void @llvm.dbg.value(metadata i32 %PartNo, i64 0, metadata !260, metadata !698), !dbg !1435
  %1 = sext i32 %PartNo to i64, !dbg !1436
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !1437, !tbaa !687
  %3 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 50, !dbg !1438
  %4 = load %struct.Slice** %3, align 8, !dbg !1438, !tbaa !703
  %5 = getelementptr inbounds %struct.Slice* %4, i64 0, i32 6, !dbg !1439
  %6 = load %struct.datapartition** %5, align 8, !dbg !1439, !tbaa !707
  %7 = getelementptr inbounds %struct.datapartition* %6, i64 %1, !dbg !1436
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %7, i64 0, metadata !261, metadata !698), !dbg !1440
  %8 = bitcast %struct.syntaxelement* %symbol to i8*, !dbg !1441
  call void @llvm.lifetime.start(i64 48, i8* %8) #4, !dbg !1441
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !263, metadata !698), !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !264, metadata !698), !dbg !1443
  %9 = load %struct.InputParameters** @input, align 8, !dbg !1444, !tbaa !687
  %10 = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 60, !dbg !1444
  %11 = load i32* %10, align 4, !dbg !1444, !tbaa !1445
  %12 = icmp eq i32 %11, 1, !dbg !1444
  br i1 %12, label %14, label %13, !dbg !1444, !prof !765

; <label>:13                                      ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.Partition_BC_Header, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 536, i8* getelementptr inbounds ([29 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !1444
  unreachable, !dbg !1444

; <label>:14                                      ; preds = %0
  %15 = icmp sgt i32 %PartNo, 0, !dbg !1446
  br i1 %15, label %16, label %.critedge, !dbg !1446

; <label>:16                                      ; preds = %14
  %17 = getelementptr inbounds %struct.Slice* %4, i64 0, i32 4, !dbg !1446
  %18 = load i32* %17, align 4, !dbg !1446, !tbaa !1447
  %phitmp = icmp sgt i32 %18, %PartNo
  br i1 %phitmp, label %19, label %.critedge, !dbg !1446, !prof !765

.critedge:                                        ; preds = %16, %14
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.Partition_BC_Header, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 537, i8* getelementptr inbounds ([54 x i8]* @.str29, i64 0, i64 0)) #7, !dbg !1446
  unreachable, !dbg !1446

; <label>:19                                      ; preds = %16
  %20 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0, !dbg !1448
  store i32 0, i32* %20, align 8, !dbg !1449, !tbaa !1450
  %21 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 8, !dbg !1452
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %21, align 8, !dbg !1453, !tbaa !1454
  %22 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2, !dbg !1455
  store i32 0, i32* %22, align 8, !dbg !1456, !tbaa !1457
  %23 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 5, !dbg !1458
  %24 = load i32* %23, align 4, !dbg !1458, !tbaa !1424
  %25 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1, !dbg !1459
  store i32 %24, i32* %25, align 4, !dbg !1460, !tbaa !1461
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !262, metadata !698), !dbg !1462
  %26 = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %7) #6, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !264, metadata !698), !dbg !1443
  %27 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1464, !tbaa !687
  %28 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %27, i64 0, i32 28, !dbg !1466
  %29 = load i32* %28, align 4, !dbg !1466, !tbaa !1467
  %30 = icmp eq i32 %29, 0, !dbg !1464
  br i1 %30, label %39, label %31, !dbg !1468

; <label>:31                                      ; preds = %19
  %32 = load %struct.ImageParameters** @img, align 8, !dbg !1469, !tbaa !687
  %33 = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 50, !dbg !1471
  %34 = load %struct.Slice** %33, align 8, !dbg !1471, !tbaa !703
  %35 = getelementptr inbounds %struct.Slice* %34, i64 0, i32 0, !dbg !1472
  %36 = load i32* %35, align 4, !dbg !1472, !tbaa !1473
  store i32 %36, i32* %25, align 4, !dbg !1474, !tbaa !1461
  call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !262, metadata !698), !dbg !1462
  %37 = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %7) #6, !dbg !1475
  %38 = add nsw i32 %37, %26, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !264, metadata !698), !dbg !1443
  br label %39, !dbg !1477

; <label>:39                                      ; preds = %19, %31
  %len.0 = phi i32 [ %38, %31 ], [ %26, %19 ]
  call void @llvm.lifetime.end(i64 48, i8* %8) #4, !dbg !1478
  ret i32 %len.0, !dbg !1478
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @ue_linfo(i32, i32, i32*, i32*) #1

; Function Attrs: optsize
declare i32 @writeSyntaxElement_UVLC(%struct.syntaxelement*, %struct.datapartition*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!682, !683, !684}
!llvm.ident = !{!685}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !53, subprograms: !58, globals: !297, imports: !681)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/header.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !28, !33, !38, !45, !49}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 119, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!6 = !DIEnumerator(name: "SE_HEADER", value: 0)
!7 = !DIEnumerator(name: "SE_PTYPE", value: 1)
!8 = !DIEnumerator(name: "SE_MBTYPE", value: 2)
!9 = !DIEnumerator(name: "SE_REFFRAME", value: 3)
!10 = !DIEnumerator(name: "SE_INTRAPREDMODE", value: 4)
!11 = !DIEnumerator(name: "SE_MVD", value: 5)
!12 = !DIEnumerator(name: "SE_CBP_INTRA", value: 6)
!13 = !DIEnumerator(name: "SE_LUM_DC_INTRA", value: 7)
!14 = !DIEnumerator(name: "SE_CHR_DC_INTRA", value: 8)
!15 = !DIEnumerator(name: "SE_LUM_AC_INTRA", value: 9)
!16 = !DIEnumerator(name: "SE_CHR_AC_INTRA", value: 10)
!17 = !DIEnumerator(name: "SE_CBP_INTER", value: 11)
!18 = !DIEnumerator(name: "SE_LUM_DC_INTER", value: 12)
!19 = !DIEnumerator(name: "SE_CHR_DC_INTER", value: 13)
!20 = !DIEnumerator(name: "SE_LUM_AC_INTER", value: 14)
!21 = !DIEnumerator(name: "SE_CHR_AC_INTER", value: 15)
!22 = !DIEnumerator(name: "SE_DELTA_QUANT_INTER", value: 16)
!23 = !DIEnumerator(name: "SE_DELTA_QUANT_INTRA", value: 17)
!24 = !DIEnumerator(name: "SE_BFRAME", value: 18)
!25 = !DIEnumerator(name: "SE_EOS", value: 19)
!26 = !DIEnumerator(name: "SE_TRANSFORM_SIZE_FLAG", value: 20)
!27 = !DIEnumerator(name: "SE_MAX_ELEMENTS", value: 21)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 42, size: 32, align: 32, elements: !30)
!29 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "FALSE", value: 0)
!32 = !DIEnumerator(name: "TRUE", value: 1)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 185, size: 32, align: 32, elements: !34)
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "FRAME", value: 0)
!36 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!37 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 192, size: 32, align: 32, elements: !39)
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "P_SLICE", value: 0)
!41 = !DIEnumerator(name: "B_SLICE", value: 1)
!42 = !DIEnumerator(name: "I_SLICE", value: 2)
!43 = !DIEnumerator(name: "SP_SLICE", value: 3)
!44 = !DIEnumerator(name: "SI_SLICE", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 178, size: 32, align: 32, elements: !46)
!46 = !{!47, !48}
!47 = !DIEnumerator(name: "UVLC", value: 0)
!48 = !DIEnumerator(name: "CABAC", value: 1)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 104, size: 32, align: 32, elements: !50)
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "PAR_OF_ANNEXB", value: 0)
!52 = !DIEnumerator(name: "PAR_OF_RTP", value: 1)
!53 = !{!54, !55, !56, !57}
!54 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!55 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!56 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!58 = !{!59, !253, !256, !265, !272, !290}
!59 = !DISubprogram(name: "SliceHeader", scope: !1, file: !1, line: 57, type: !60, isLocal: false, isDefinition: true, scopeLine: 58, isOptimized: true, function: i32 ()* @SliceHeader, variables: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{!56}
!62 = !{!63, !64, !142, !245, !246, !247, !248, !249, !250}
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dP_nr", scope: !59, file: !1, line: 59, type: !56)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !59, file: !1, line: 60, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !4, line: 440, baseType: !67)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !4, line: 430, size: 960, align: 64, elements: !68)
!68 = !{!69, !89, !114}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !67, file: !4, line: 433, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !4, line: 427, baseType: !72)
!72 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 411, size: 384, align: 64, elements: !73)
!73 = !{!74, !75, !76, !80, !81, !82, !83, !84, !85, !86, !88}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !72, file: !4, line: 413, baseType: !56, size: 32, align: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !72, file: !4, line: 414, baseType: !56, size: 32, align: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !72, file: !4, line: 415, baseType: !77, size: 8, align: 8, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !78, line: 30, baseType: !79)
!78 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!79 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !72, file: !4, line: 416, baseType: !56, size: 32, align: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !72, file: !4, line: 417, baseType: !56, size: 32, align: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !72, file: !4, line: 418, baseType: !77, size: 8, align: 8, offset: 160)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !72, file: !4, line: 420, baseType: !77, size: 8, align: 8, offset: 168)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !72, file: !4, line: 421, baseType: !56, size: 32, align: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !72, file: !4, line: 422, baseType: !56, size: 32, align: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !72, file: !4, line: 424, baseType: !87, size: 64, align: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !72, file: !4, line: 425, baseType: !56, size: 32, align: 32, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !67, file: !4, line: 434, baseType: !90, size: 832, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !4, line: 226, baseType: !91)
!91 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 207, size: 832, align: 64, elements: !92)
!92 = !{!93, !94, !95, !96, !97, !98, !99, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !91, file: !4, line: 209, baseType: !54, size: 32, align: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !91, file: !4, line: 209, baseType: !54, size: 32, align: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !91, file: !4, line: 210, baseType: !54, size: 32, align: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !91, file: !4, line: 211, baseType: !54, size: 32, align: 32, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !91, file: !4, line: 212, baseType: !54, size: 32, align: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !91, file: !4, line: 213, baseType: !87, size: 64, align: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !91, file: !4, line: 214, baseType: !100, size: 64, align: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !91, file: !4, line: 217, baseType: !54, size: 32, align: 32, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !91, file: !4, line: 217, baseType: !54, size: 32, align: 32, offset: 352)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !91, file: !4, line: 218, baseType: !54, size: 32, align: 32, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !91, file: !4, line: 219, baseType: !54, size: 32, align: 32, offset: 416)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !91, file: !4, line: 220, baseType: !54, size: 32, align: 32, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !91, file: !4, line: 221, baseType: !87, size: 64, align: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !91, file: !4, line: 222, baseType: !100, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !91, file: !4, line: 223, baseType: !56, size: 32, align: 32, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !91, file: !4, line: 223, baseType: !56, size: 32, align: 32, offset: 672)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !91, file: !4, line: 224, baseType: !56, size: 32, align: 32, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !91, file: !4, line: 224, baseType: !56, size: 32, align: 32, offset: 736)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !91, file: !4, line: 225, baseType: !56, size: 32, align: 32, offset: 768)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !91, file: !4, line: 225, baseType: !56, size: 32, align: 32, offset: 800)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !67, file: !4, line: 436, baseType: !115, size: 64, align: 64, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!56, !118, !141}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !4, line: 348, baseType: !120)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !4, line: 327, size: 384, align: 64, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !134}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !4, line: 329, baseType: !56, size: 32, align: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !120, file: !4, line: 330, baseType: !56, size: 32, align: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !120, file: !4, line: 331, baseType: !56, size: 32, align: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !120, file: !4, line: 332, baseType: !56, size: 32, align: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !120, file: !4, line: 333, baseType: !56, size: 32, align: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !120, file: !4, line: 334, baseType: !54, size: 32, align: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !120, file: !4, line: 335, baseType: !56, size: 32, align: 32, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !120, file: !4, line: 336, baseType: !56, size: 32, align: 32, offset: 224)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !120, file: !4, line: 344, baseType: !131, size: 64, align: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !56, !56, !100, !100}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !120, file: !4, line: 346, baseType: !135, size: 64, align: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !138, !139}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !4, line: 228, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currSlice", scope: !59, file: !1, line: 61, type: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !4, line: 471, baseType: !145)
!145 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 443, size: 1216, align: 64, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !193, !220, !229, !230, !231, !232, !233, !234, !235, !236, !237, !242}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !145, file: !4, line: 445, baseType: !56, size: 32, align: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !145, file: !4, line: 446, baseType: !56, size: 32, align: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !145, file: !4, line: 447, baseType: !56, size: 32, align: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !145, file: !4, line: 448, baseType: !56, size: 32, align: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !145, file: !4, line: 449, baseType: !56, size: 32, align: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !145, file: !4, line: 450, baseType: !56, size: 32, align: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !145, file: !4, line: 451, baseType: !65, size: 64, align: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !145, file: !4, line: 452, baseType: !155, size: 64, align: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !4, line: 268, baseType: !157)
!157 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 258, size: 12032, align: 64, elements: !158)
!158 = !{!159, !172, !177, !181, !185, !189, !190}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !157, file: !4, line: 260, baseType: !160, size: 4224, align: 64)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 4224, align: 64, elements: !169)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !4, line: 238, baseType: !162)
!162 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 231, size: 128, align: 64, elements: !163)
!163 = !{!164, !166, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !162, file: !4, line: 233, baseType: !165, size: 16, align: 16)
!165 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !162, file: !4, line: 234, baseType: !79, size: 8, align: 8, offset: 16)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !162, file: !4, line: 236, baseType: !168, size: 64, align: 64, offset: 64)
!168 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!169 = !{!170, !171}
!170 = !DISubrange(count: 3)
!171 = !DISubrange(count: 11)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !157, file: !4, line: 261, baseType: !173, size: 2304, align: 64, offset: 4224)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 2304, align: 64, elements: !174)
!174 = !{!175, !176}
!175 = !DISubrange(count: 2)
!176 = !DISubrange(count: 9)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !157, file: !4, line: 262, baseType: !178, size: 2560, align: 64, offset: 6528)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 2560, align: 64, elements: !179)
!179 = !{!175, !180}
!180 = !DISubrange(count: 10)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !157, file: !4, line: 263, baseType: !182, size: 1536, align: 64, offset: 9088)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1536, align: 64, elements: !183)
!183 = !{!175, !184}
!184 = !DISubrange(count: 6)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !157, file: !4, line: 264, baseType: !186, size: 512, align: 64, offset: 10624)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 512, align: 64, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 4)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !157, file: !4, line: 265, baseType: !186, size: 512, align: 64, offset: 11136)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !157, file: !4, line: 266, baseType: !191, size: 384, align: 64, offset: 11648)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 384, align: 64, elements: !192)
!192 = !{!170}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !145, file: !4, line: 453, baseType: !194, size: 64, align: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !4, line: 293, baseType: !196)
!196 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 281, size: 97024, align: 64, elements: !197)
!197 = !{!198, !201, !202, !205, !208, !212, !213, !217, !218, !219}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !196, file: !4, line: 283, baseType: !199, size: 256, align: 64)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, align: 64, elements: !200)
!200 = !{!175}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !196, file: !4, line: 284, baseType: !186, size: 512, align: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !196, file: !4, line: 285, baseType: !203, size: 1536, align: 64, offset: 768)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1536, align: 64, elements: !204)
!204 = !{!170, !188}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !196, file: !4, line: 286, baseType: !206, size: 5120, align: 64, offset: 2304)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 5120, align: 64, elements: !207)
!207 = !{!180, !188}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !196, file: !4, line: 287, baseType: !209, size: 19200, align: 64, offset: 7424)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 19200, align: 64, elements: !210)
!210 = !{!180, !211}
!211 = !DISubrange(count: 15)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !196, file: !4, line: 288, baseType: !209, size: 19200, align: 64, offset: 26624)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !196, file: !4, line: 289, baseType: !214, size: 6400, align: 64, offset: 45824)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 6400, align: 64, elements: !215)
!215 = !{!180, !216}
!216 = !DISubrange(count: 5)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !196, file: !4, line: 290, baseType: !214, size: 6400, align: 64, offset: 52224)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !196, file: !4, line: 291, baseType: !209, size: 19200, align: 64, offset: 58624)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !196, file: !4, line: 292, baseType: !209, size: 19200, align: 64, offset: 77824)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !145, file: !4, line: 456, baseType: !221, size: 64, align: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !4, line: 313, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !4, line: 308, size: 128, align: 64, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !223, file: !4, line: 310, baseType: !56, size: 32, align: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !223, file: !4, line: 311, baseType: !56, size: 32, align: 32, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !223, file: !4, line: 312, baseType: !228, size: 64, align: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !145, file: !4, line: 458, baseType: !56, size: 32, align: 32, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !145, file: !4, line: 459, baseType: !100, size: 64, align: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !145, file: !4, line: 460, baseType: !100, size: 64, align: 64, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !145, file: !4, line: 461, baseType: !100, size: 64, align: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !145, file: !4, line: 462, baseType: !56, size: 32, align: 32, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !145, file: !4, line: 463, baseType: !100, size: 64, align: 64, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !145, file: !4, line: 464, baseType: !100, size: 64, align: 64, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !145, file: !4, line: 465, baseType: !100, size: 64, align: 64, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !145, file: !4, line: 467, baseType: !238, size: 64, align: 64, offset: 960)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!241, !56}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !29, line: 45, baseType: !28)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !145, file: !4, line: 469, baseType: !243, size: 192, align: 32, offset: 1024)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 192, align: 32, elements: !244)
!244 = !{!170, !175}
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !59, file: !1, line: 62, type: !56)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "field_pic_flag", scope: !59, file: !1, line: 63, type: !54)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bottom_field_flag", scope: !59, file: !1, line: 63, type: !54)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_bits_slice_group_change_cycle", scope: !59, file: !1, line: 65, type: !56)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numtmp", scope: !59, file: !1, line: 66, type: !55)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "override_flag", scope: !251, file: !1, line: 146, type: !56)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 145, column: 3)
!252 = distinct !DILexicalBlock(scope: !59, file: !1, line: 144, column: 7)
!253 = !DISubprogram(name: "get_picture_type", scope: !1, file: !1, line: 472, type: !60, isLocal: false, isDefinition: true, scopeLine: 473, isOptimized: true, function: i32 ()* @get_picture_type, variables: !254)
!254 = !{!255}
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "same_slicetype_for_whole_frame", scope: !253, file: !1, line: 476, type: !56)
!256 = !DISubprogram(name: "Partition_BC_Header", scope: !1, file: !1, line: 529, type: !257, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @Partition_BC_Header, variables: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{!56, !56}
!259 = !{!260, !261, !262, !263, !264}
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PartNo", arg: 1, scope: !256, file: !1, line: 529, type: !56)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !256, file: !1, line: 531, type: !65)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symbol", scope: !256, file: !1, line: 532, type: !119)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sym", scope: !256, file: !1, line: 532, type: !118)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !256, file: !1, line: 534, type: !56)
!265 = !DISubprogram(name: "ref_pic_list_reordering", scope: !1, file: !1, line: 240, type: !60, isLocal: true, isDefinition: true, scopeLine: 241, isOptimized: true, variables: !266)
!266 = !{!267, !268, !269, !270, !271}
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dP_nr", scope: !265, file: !1, line: 242, type: !56)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !265, file: !1, line: 243, type: !65)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currSlice", scope: !265, file: !1, line: 244, type: !143)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !265, file: !1, line: 246, type: !56)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !265, file: !1, line: 246, type: !56)
!272 = !DISubprogram(name: "dec_ref_pic_marking", scope: !1, file: !1, line: 314, type: !60, isLocal: true, isDefinition: true, scopeLine: 315, isOptimized: true, variables: !273)
!273 = !{!274, !275, !276, !288, !289}
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dP_nr", scope: !272, file: !1, line: 316, type: !56)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !272, file: !1, line: 317, type: !65)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_drpm", scope: !272, file: !1, line: 319, type: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecRefPicMarking_t", file: !4, line: 324, baseType: !279)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "DecRefPicMarking_s", file: !4, line: 316, size: 256, align: 64, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "memory_management_control_operation", scope: !279, file: !4, line: 318, baseType: !56, size: 32, align: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "difference_of_pic_nums_minus1", scope: !279, file: !4, line: 319, baseType: !56, size: 32, align: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_num", scope: !279, file: !4, line: 320, baseType: !56, size: 32, align: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_frame_idx", scope: !279, file: !4, line: 321, baseType: !56, size: 32, align: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "max_long_term_frame_idx_plus1", scope: !279, file: !4, line: 322, baseType: !56, size: 32, align: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !279, file: !4, line: 323, baseType: !287, size: 64, align: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !272, file: !1, line: 321, type: !56)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !272, file: !1, line: 321, type: !56)
!290 = !DISubprogram(name: "pred_weight_table", scope: !1, file: !1, line: 381, type: !60, isLocal: true, isDefinition: true, scopeLine: 382, isOptimized: true, variables: !291)
!291 = !{!292, !293, !294, !295, !296}
!292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dP_nr", scope: !290, file: !1, line: 383, type: !56)
!293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !290, file: !1, line: 384, type: !65)
!294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !290, file: !1, line: 386, type: !56)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !290, file: !1, line: 387, type: !56)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !290, file: !1, line: 387, type: !56)
!297 = !{!298, !302, !303, !318, !319, !320, !321, !322, !325, !327, !329, !330, !331, !332, !333, !372, !467, !468, !469, !471, !472, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !491, !492, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !508, !512, !513, !514, !515, !516, !517, !520, !523, !524, !525, !526, !529, !532, !543, !585, !586, !587, !588, !589, !646, !647, !648, !649, !650, !654, !655, !656, !657, !658, !659, !660, !661, !662, !679}
!298 = !DIGlobalVariable(name: "assignSE2partition_NoDP", scope: !0, file: !1, line: 39, type: !299, isLocal: false, isDefinition: true, variable: [21 x i32]* @assignSE2partition_NoDP)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 672, align: 32, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 21)
!302 = !DIGlobalVariable(name: "assignSE2partition_DP", scope: !0, file: !1, line: 41, type: !299, isLocal: false, isDefinition: true, variable: [21 x i32]* @assignSE2partition_DP)
!303 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !4, line: 558, type: !304, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !4, line: 484, baseType: !306)
!306 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 475, size: 6592, align: 64, elements: !307)
!307 = !{!308, !309, !310, !314, !315, !316, !317}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !306, file: !4, line: 477, baseType: !56, size: 32, align: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !306, file: !4, line: 478, baseType: !56, size: 32, align: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !306, file: !4, line: 479, baseType: !311, size: 6400, align: 64, offset: 64)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 6400, align: 64, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 100)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !306, file: !4, line: 480, baseType: !56, size: 32, align: 32, offset: 6464)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !306, file: !4, line: 481, baseType: !55, size: 32, align: 32, offset: 6496)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !306, file: !4, line: 482, baseType: !55, size: 32, align: 32, offset: 6528)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !306, file: !4, line: 483, baseType: !55, size: 32, align: 32, offset: 6560)
!318 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !4, line: 559, type: !304, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!319 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !4, line: 560, type: !304, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!320 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !4, line: 561, type: !304, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!321 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !4, line: 562, type: !304, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!322 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !4, line: 565, type: !323, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!325 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !4, line: 566, type: !326, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!327 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !4, line: 567, type: !328, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!329 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !4, line: 569, type: !54, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!330 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !4, line: 570, type: !54, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!331 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !4, line: 572, type: !56, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!332 = !DIGlobalVariable(name: "me_time", scope: !0, file: !4, line: 572, type: !56, isLocal: false, isDefinition: true, variable: i32* @me_time)
!333 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !4, line: 573, type: !334, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !29, line: 145, baseType: !336)
!336 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 103, size: 1920, align: 64, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !348, !349, !350, !351, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !336, file: !29, line: 105, baseType: !241, size: 32, align: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !336, file: !29, line: 106, baseType: !54, size: 32, align: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !336, file: !29, line: 107, baseType: !54, size: 32, align: 32, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !336, file: !29, line: 108, baseType: !241, size: 32, align: 32, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !336, file: !29, line: 110, baseType: !241, size: 32, align: 32, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !336, file: !29, line: 111, baseType: !241, size: 32, align: 32, offset: 160)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !336, file: !29, line: 112, baseType: !345, size: 256, align: 32, offset: 192)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 256, align: 32, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 8)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !336, file: !29, line: 115, baseType: !241, size: 32, align: 32, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !336, file: !29, line: 116, baseType: !54, size: 32, align: 32, offset: 480)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !336, file: !29, line: 117, baseType: !54, size: 32, align: 32, offset: 512)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !336, file: !29, line: 119, baseType: !352, size: 256, align: 32, offset: 544)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, align: 32, elements: !346)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !336, file: !29, line: 121, baseType: !352, size: 256, align: 32, offset: 800)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !336, file: !29, line: 122, baseType: !352, size: 256, align: 32, offset: 1056)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !336, file: !29, line: 124, baseType: !241, size: 32, align: 32, offset: 1312)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !336, file: !29, line: 125, baseType: !54, size: 32, align: 32, offset: 1344)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !336, file: !29, line: 127, baseType: !54, size: 32, align: 32, offset: 1376)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !336, file: !29, line: 128, baseType: !87, size: 64, align: 64, offset: 1408)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !336, file: !29, line: 130, baseType: !56, size: 32, align: 32, offset: 1472)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !336, file: !29, line: 131, baseType: !56, size: 32, align: 32, offset: 1504)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !336, file: !29, line: 132, baseType: !241, size: 32, align: 32, offset: 1536)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !336, file: !29, line: 133, baseType: !54, size: 32, align: 32, offset: 1568)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !336, file: !29, line: 134, baseType: !56, size: 32, align: 32, offset: 1600)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !336, file: !29, line: 135, baseType: !56, size: 32, align: 32, offset: 1632)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !336, file: !29, line: 136, baseType: !56, size: 32, align: 32, offset: 1664)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !336, file: !29, line: 138, baseType: !56, size: 32, align: 32, offset: 1696)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !336, file: !29, line: 139, baseType: !56, size: 32, align: 32, offset: 1728)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !336, file: !29, line: 141, baseType: !241, size: 32, align: 32, offset: 1760)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !336, file: !29, line: 142, baseType: !241, size: 32, align: 32, offset: 1792)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !336, file: !29, line: 143, baseType: !241, size: 32, align: 32, offset: 1824)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !336, file: !29, line: 144, baseType: !241, size: 32, align: 32, offset: 1856)
!372 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !4, line: 574, type: !373, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !29, line: 193, baseType: !375)
!375 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 149, size: 17056, align: 32, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !375, file: !29, line: 151, baseType: !241, size: 32, align: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !375, file: !29, line: 153, baseType: !54, size: 32, align: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !375, file: !29, line: 154, baseType: !241, size: 32, align: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !375, file: !29, line: 155, baseType: !241, size: 32, align: 32, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !375, file: !29, line: 156, baseType: !241, size: 32, align: 32, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !375, file: !29, line: 157, baseType: !241, size: 32, align: 32, offset: 160)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !375, file: !29, line: 158, baseType: !54, size: 32, align: 32, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !375, file: !29, line: 159, baseType: !54, size: 32, align: 32, offset: 224)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !375, file: !29, line: 160, baseType: !54, size: 32, align: 32, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !375, file: !29, line: 162, baseType: !241, size: 32, align: 32, offset: 288)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !375, file: !29, line: 163, baseType: !345, size: 256, align: 32, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !375, file: !29, line: 165, baseType: !54, size: 32, align: 32, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !375, file: !29, line: 166, baseType: !54, size: 32, align: 32, offset: 608)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !375, file: !29, line: 167, baseType: !54, size: 32, align: 32, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !375, file: !29, line: 168, baseType: !54, size: 32, align: 32, offset: 672)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !375, file: !29, line: 170, baseType: !54, size: 32, align: 32, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !375, file: !29, line: 172, baseType: !241, size: 32, align: 32, offset: 736)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !375, file: !29, line: 173, baseType: !56, size: 32, align: 32, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !375, file: !29, line: 174, baseType: !56, size: 32, align: 32, offset: 800)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !375, file: !29, line: 175, baseType: !54, size: 32, align: 32, offset: 832)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !375, file: !29, line: 177, baseType: !398, size: 8192, align: 32, offset: 864)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8192, align: 32, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !375, file: !29, line: 178, baseType: !54, size: 32, align: 32, offset: 9056)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !375, file: !29, line: 179, baseType: !241, size: 32, align: 32, offset: 9088)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !375, file: !29, line: 180, baseType: !54, size: 32, align: 32, offset: 9120)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !375, file: !29, line: 181, baseType: !54, size: 32, align: 32, offset: 9152)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !375, file: !29, line: 182, baseType: !241, size: 32, align: 32, offset: 9184)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !375, file: !29, line: 184, baseType: !241, size: 32, align: 32, offset: 9216)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !375, file: !29, line: 185, baseType: !241, size: 32, align: 32, offset: 9248)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !375, file: !29, line: 186, baseType: !241, size: 32, align: 32, offset: 9280)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !375, file: !29, line: 187, baseType: !54, size: 32, align: 32, offset: 9312)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !375, file: !29, line: 188, baseType: !54, size: 32, align: 32, offset: 9344)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !375, file: !29, line: 189, baseType: !54, size: 32, align: 32, offset: 9376)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !375, file: !29, line: 190, baseType: !54, size: 32, align: 32, offset: 9408)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !375, file: !29, line: 191, baseType: !241, size: 32, align: 32, offset: 9440)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !375, file: !29, line: 192, baseType: !415, size: 7584, align: 32, offset: 9472)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !29, line: 99, baseType: !416)
!416 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 63, size: 7584, align: 32, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !416, file: !29, line: 65, baseType: !241, size: 32, align: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !416, file: !29, line: 66, baseType: !54, size: 32, align: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !416, file: !29, line: 67, baseType: !54, size: 32, align: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !416, file: !29, line: 68, baseType: !54, size: 32, align: 32, offset: 96)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !416, file: !29, line: 69, baseType: !241, size: 32, align: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !416, file: !29, line: 70, baseType: !241, size: 32, align: 32, offset: 160)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !416, file: !29, line: 71, baseType: !241, size: 32, align: 32, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !416, file: !29, line: 72, baseType: !54, size: 32, align: 32, offset: 224)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !416, file: !29, line: 73, baseType: !241, size: 32, align: 32, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !416, file: !29, line: 74, baseType: !241, size: 32, align: 32, offset: 288)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !416, file: !29, line: 75, baseType: !54, size: 32, align: 32, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !416, file: !29, line: 76, baseType: !54, size: 32, align: 32, offset: 352)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !416, file: !29, line: 77, baseType: !54, size: 32, align: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !416, file: !29, line: 78, baseType: !241, size: 32, align: 32, offset: 416)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !416, file: !29, line: 79, baseType: !54, size: 32, align: 32, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !416, file: !29, line: 80, baseType: !54, size: 32, align: 32, offset: 480)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !416, file: !29, line: 81, baseType: !241, size: 32, align: 32, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !416, file: !29, line: 82, baseType: !54, size: 32, align: 32, offset: 544)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !416, file: !29, line: 83, baseType: !54, size: 32, align: 32, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !416, file: !29, line: 84, baseType: !241, size: 32, align: 32, offset: 608)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !416, file: !29, line: 85, baseType: !241, size: 32, align: 32, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !416, file: !29, line: 86, baseType: !440, size: 3296, align: 32, offset: 672)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !29, line: 60, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 48, size: 3296, align: 32, elements: !442)
!442 = !{!443, !444, !445, !446, !450, !451, !452, !453, !454, !455}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !441, file: !29, line: 50, baseType: !54, size: 32, align: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !441, file: !29, line: 51, baseType: !54, size: 32, align: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !441, file: !29, line: 52, baseType: !54, size: 32, align: 32, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !441, file: !29, line: 53, baseType: !447, size: 1024, align: 32, offset: 96)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1024, align: 32, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !441, file: !29, line: 54, baseType: !447, size: 1024, align: 32, offset: 1120)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !441, file: !29, line: 55, baseType: !447, size: 1024, align: 32, offset: 2144)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !441, file: !29, line: 56, baseType: !54, size: 32, align: 32, offset: 3168)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !441, file: !29, line: 57, baseType: !54, size: 32, align: 32, offset: 3200)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !441, file: !29, line: 58, baseType: !54, size: 32, align: 32, offset: 3232)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !441, file: !29, line: 59, baseType: !54, size: 32, align: 32, offset: 3264)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !416, file: !29, line: 87, baseType: !241, size: 32, align: 32, offset: 3968)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !416, file: !29, line: 88, baseType: !440, size: 3296, align: 32, offset: 4000)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !416, file: !29, line: 90, baseType: !241, size: 32, align: 32, offset: 7296)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !416, file: !29, line: 91, baseType: !241, size: 32, align: 32, offset: 7328)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !416, file: !29, line: 92, baseType: !241, size: 32, align: 32, offset: 7360)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !416, file: !29, line: 93, baseType: !54, size: 32, align: 32, offset: 7392)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !416, file: !29, line: 94, baseType: !54, size: 32, align: 32, offset: 7424)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !416, file: !29, line: 95, baseType: !54, size: 32, align: 32, offset: 7456)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !416, file: !29, line: 96, baseType: !54, size: 32, align: 32, offset: 7488)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !416, file: !29, line: 97, baseType: !54, size: 32, align: 32, offset: 7520)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !416, file: !29, line: 98, baseType: !54, size: 32, align: 32, offset: 7552)
!467 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !4, line: 578, type: !56, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!468 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !4, line: 579, type: !56, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!469 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !4, line: 583, type: !470, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!471 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !4, line: 584, type: !470, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!472 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !4, line: 585, type: !473, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!474 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !4, line: 586, type: !56, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!475 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !4, line: 587, type: !56, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!476 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !4, line: 588, type: !56, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!477 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !4, line: 589, type: !56, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
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
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!494 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !4, line: 609, type: !493, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!495 = !DIGlobalVariable(name: "intras", scope: !0, file: !4, line: 610, type: !56, isLocal: false, isDefinition: true, variable: i32* @intras)
!496 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !4, line: 612, type: !56, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!497 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !4, line: 612, type: !56, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!498 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !4, line: 612, type: !56, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!499 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !4, line: 613, type: !56, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!500 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !4, line: 613, type: !56, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!501 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !4, line: 613, type: !56, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!502 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !4, line: 614, type: !56, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!503 = !DIGlobalVariable(name: "errortext", scope: !0, file: !4, line: 617, type: !504, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 2400, align: 8, elements: !506)
!505 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!506 = !{!507}
!507 = !DISubrange(count: 300)
!508 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !4, line: 620, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8192, align: 32, elements: !510)
!510 = !{!511, !511}
!511 = !DISubrange(count: 16)
!512 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !4, line: 620, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!513 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !4, line: 620, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!514 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !4, line: 621, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!515 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !4, line: 621, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!516 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !4, line: 621, type: !509, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!517 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !4, line: 622, type: !518, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 24576, align: 32, elements: !519)
!519 = !{!170, !511, !511}
!520 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !4, line: 623, type: !521, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1024, align: 32, elements: !522)
!522 = !{!175, !188, !188}
!523 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !4, line: 623, type: !521, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!524 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !4, line: 624, type: !521, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!525 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !4, line: 624, type: !521, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!526 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !4, line: 625, type: !527, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 512, align: 32, elements: !528)
!528 = !{!188, !188}
!529 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !4, line: 625, type: !530, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 512, align: 32, elements: !531)
!531 = !{!511}
!532 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !4, line: 1201, type: !533, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !4, line: 1190, baseType: !535)
!535 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1182, size: 192, align: 32, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !535, file: !4, line: 1184, baseType: !56, size: 32, align: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !535, file: !4, line: 1185, baseType: !56, size: 32, align: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !535, file: !4, line: 1186, baseType: !56, size: 32, align: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !535, file: !4, line: 1187, baseType: !56, size: 32, align: 32, offset: 96)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !535, file: !4, line: 1188, baseType: !56, size: 32, align: 32, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !535, file: !4, line: 1189, baseType: !56, size: 32, align: 32, offset: 160)
!543 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !4, line: 1202, type: !544, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !4, line: 1177, baseType: !546)
!546 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1145, size: 26880, align: 64, elements: !547)
!547 = !{!548, !550, !551, !552, !553, !554, !555, !556, !557, !559, !560, !561, !562, !563, !568, !569, !573, !574, !575, !576, !578, !579, !580, !581, !582, !583, !584}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !546, file: !4, line: 1147, baseType: !549, size: 64, align: 64)
!549 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !546, file: !4, line: 1149, baseType: !509, size: 8192, align: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !546, file: !4, line: 1150, baseType: !509, size: 8192, align: 32, offset: 8256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !546, file: !4, line: 1150, baseType: !509, size: 8192, align: 32, offset: 16448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !546, file: !4, line: 1151, baseType: !473, size: 64, align: 64, offset: 24640)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !546, file: !4, line: 1152, baseType: !470, size: 64, align: 64, offset: 24704)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !546, file: !4, line: 1153, baseType: !56, size: 32, align: 32, offset: 24768)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !546, file: !4, line: 1155, baseType: !56, size: 32, align: 32, offset: 24800)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !546, file: !4, line: 1157, baseType: !558, size: 128, align: 32, offset: 24832)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 128, align: 32, elements: !187)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !546, file: !4, line: 1157, baseType: !558, size: 128, align: 32, offset: 24960)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !546, file: !4, line: 1158, baseType: !328, size: 64, align: 64, offset: 25088)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !546, file: !4, line: 1159, baseType: !530, size: 512, align: 32, offset: 25152)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !546, file: !4, line: 1160, baseType: !56, size: 32, align: 32, offset: 25664)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !546, file: !4, line: 1161, baseType: !564, size: 64, align: 64, offset: 25728)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !4, line: 62, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !566, line: 30, baseType: !567)
!566 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!567 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !546, file: !4, line: 1162, baseType: !56, size: 32, align: 32, offset: 25792)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !546, file: !4, line: 1163, baseType: !570, size: 64, align: 64, offset: 25856)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !546, file: !4, line: 1164, baseType: !570, size: 64, align: 64, offset: 25920)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !546, file: !4, line: 1165, baseType: !570, size: 64, align: 64, offset: 25984)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !546, file: !4, line: 1166, baseType: !570, size: 64, align: 64, offset: 26048)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !546, file: !4, line: 1167, baseType: !577, size: 512, align: 16, offset: 26112)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 512, align: 16, elements: !522)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !546, file: !4, line: 1168, baseType: !56, size: 32, align: 32, offset: 26624)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !546, file: !4, line: 1169, baseType: !56, size: 32, align: 32, offset: 26656)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !546, file: !4, line: 1171, baseType: !56, size: 32, align: 32, offset: 26688)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !546, file: !4, line: 1172, baseType: !56, size: 32, align: 32, offset: 26720)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !546, file: !4, line: 1174, baseType: !56, size: 32, align: 32, offset: 26752)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !546, file: !4, line: 1175, baseType: !56, size: 32, align: 32, offset: 26784)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !546, file: !4, line: 1176, baseType: !56, size: 32, align: 32, offset: 26816)
!585 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !4, line: 1203, type: !545, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!586 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !4, line: 1203, type: !545, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!587 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !4, line: 1204, type: !545, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!588 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !4, line: 1204, type: !545, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!589 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !4, line: 1230, type: !590, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !592, line: 153, baseType: !593)
!592 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !592, line: 122, size: 1216, align: 64, elements: !594)
!594 = !{!595, !597, !598, !599, !600, !601, !606, !607, !608, !612, !617, !626, !632, !633, !636, !637, !639, !643, !644, !645}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !593, file: !592, line: 123, baseType: !596, size: 64, align: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !593, file: !592, line: 124, baseType: !56, size: 32, align: 32, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !593, file: !592, line: 125, baseType: !56, size: 32, align: 32, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !593, file: !592, line: 126, baseType: !490, size: 16, align: 16, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !593, file: !592, line: 127, baseType: !490, size: 16, align: 16, offset: 144)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !593, file: !592, line: 128, baseType: !602, size: 128, align: 64, offset: 192)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !592, line: 88, size: 128, align: 64, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !602, file: !592, line: 89, baseType: !596, size: 64, align: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !602, file: !592, line: 90, baseType: !56, size: 32, align: 32, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !593, file: !592, line: 129, baseType: !56, size: 32, align: 32, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !593, file: !592, line: 132, baseType: !57, size: 64, align: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !593, file: !592, line: 133, baseType: !609, size: 64, align: 64, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64, align: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!56, !57}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !593, file: !592, line: 134, baseType: !613, size: 64, align: 64, offset: 512)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64, align: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!56, !57, !616, !56}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !593, file: !592, line: 135, baseType: !618, size: 64, align: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64, align: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!621, !57, !621, !56}
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !592, line: 77, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !623, line: 71, baseType: !624)
!623 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !625, line: 46, baseType: !567)
!625 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !593, file: !592, line: 136, baseType: !627, size: 64, align: 64, offset: 640)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, align: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!56, !57, !630, !56}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !593, file: !592, line: 139, baseType: !602, size: 128, align: 64, offset: 704)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !593, file: !592, line: 140, baseType: !634, size: 64, align: 64, offset: 832)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, align: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !592, line: 94, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !593, file: !592, line: 141, baseType: !56, size: 32, align: 32, offset: 896)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !593, file: !592, line: 144, baseType: !638, size: 24, align: 8, offset: 928)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 24, align: 8, elements: !192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !593, file: !592, line: 145, baseType: !640, size: 8, align: 8, offset: 952)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 8, align: 8, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 1)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !593, file: !592, line: 148, baseType: !602, size: 128, align: 64, offset: 960)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !593, file: !592, line: 151, baseType: !56, size: 32, align: 32, offset: 1088)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !593, file: !592, line: 152, baseType: !621, size: 64, align: 64, offset: 1152)
!646 = !DIGlobalVariable(name: "p_log", scope: !0, file: !4, line: 1231, type: !590, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!647 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !4, line: 1232, type: !590, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!648 = !DIGlobalVariable(name: "p_in", scope: !0, file: !4, line: 1233, type: !56, isLocal: false, isDefinition: true, variable: i32* @p_in)
!649 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !4, line: 1234, type: !56, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!650 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !4, line: 1237, type: !651, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 640, align: 32, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 20)
!654 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !4, line: 1238, type: !651, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!655 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !4, line: 1239, type: !651, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!656 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !4, line: 1240, type: !651, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!657 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !4, line: 1241, type: !651, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!658 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !4, line: 1242, type: !651, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!659 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !4, line: 1456, type: !56, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!660 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !4, line: 1465, type: !56, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!661 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !4, line: 1466, type: !56, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!662 = !DIGlobalVariable(name: "WriteNALU", scope: !0, file: !663, line: 28, type: !664, isLocal: false, isDefinition: true, variable: i32 (%struct.NALU_t*)** @WriteNALU)
!663 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nalu.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!56, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALU_t", file: !669, line: 49, baseType: !670)
!669 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nalucommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!670 = !DICompositeType(tag: DW_TAG_structure_type, file: !669, line: 40, size: 256, align: 64, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !670, file: !669, line: 42, baseType: !56, size: 32, align: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !670, file: !669, line: 43, baseType: !54, size: 32, align: 32, offset: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !670, file: !669, line: 44, baseType: !54, size: 32, align: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !670, file: !669, line: 45, baseType: !56, size: 32, align: 32, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !670, file: !669, line: 46, baseType: !56, size: 32, align: 32, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !670, file: !669, line: 47, baseType: !56, size: 32, align: 32, offset: 160)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !670, file: !669, line: 48, baseType: !87, size: 64, align: 64, offset: 192)
!679 = !DIGlobalVariable(name: "assignSE2partition", scope: !0, file: !1, line: 38, type: !680, isLocal: false, isDefinition: true, variable: [2 x i32*]* @assignSE2partition)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, align: 64, elements: !200)
!681 = !{}
!682 = !{i32 2, !"Dwarf Version", i32 2}
!683 = !{i32 2, !"Debug Info Version", i32 700000003}
!684 = !{i32 1, !"PIC Level", i32 2}
!685 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!686 = !DILocation(line: 59, column: 34, scope: !59)
!687 = !{!688, !688, i64 0}
!688 = !{!"any pointer", !689, i64 0}
!689 = !{!"omnipotent char", !690, i64 0}
!690 = !{!"Simple C/C++ TBAA"}
!691 = !DILocation(line: 59, column: 41, scope: !59)
!692 = !{!693, !694, i64 2364}
!693 = !{!"", !694, i64 0, !694, i64 4, !694, i64 8, !694, i64 12, !694, i64 16, !694, i64 20, !694, i64 24, !694, i64 28, !694, i64 32, !694, i64 36, !694, i64 40, !694, i64 44, !694, i64 48, !694, i64 52, !694, i64 56, !694, i64 60, !694, i64 64, !694, i64 68, !694, i64 72, !694, i64 76, !689, i64 80, !689, i64 144, !694, i64 208, !694, i64 212, !694, i64 216, !694, i64 220, !689, i64 224, !689, i64 424, !689, i64 624, !689, i64 824, !689, i64 1024, !694, i64 1224, !694, i64 1228, !694, i64 1232, !694, i64 1236, !694, i64 1240, !694, i64 1244, !694, i64 1248, !694, i64 1252, !694, i64 1256, !694, i64 1260, !694, i64 1264, !694, i64 1268, !694, i64 1272, !694, i64 1276, !694, i64 1280, !694, i64 1284, !694, i64 1288, !694, i64 1292, !694, i64 1296, !694, i64 1300, !694, i64 1304, !694, i64 1308, !694, i64 1312, !694, i64 1316, !694, i64 1320, !689, i64 1324, !694, i64 2348, !694, i64 2352, !694, i64 2356, !694, i64 2360, !694, i64 2364, !694, i64 2368, !694, i64 2372, !694, i64 2376, !694, i64 2380, !694, i64 2384, !694, i64 2388, !694, i64 2392, !694, i64 2396, !694, i64 2400, !694, i64 2404, !694, i64 2408, !694, i64 2412, !694, i64 2416, !694, i64 2420, !695, i64 2424, !694, i64 2432, !694, i64 2436, !694, i64 2440, !694, i64 2444, !694, i64 2448, !694, i64 2452, !694, i64 2456, !694, i64 2460, !694, i64 2464, !694, i64 2468, !694, i64 2472, !694, i64 2476, !689, i64 2480, !689, i64 2680, !694, i64 2880, !694, i64 2884, !694, i64 2888, !694, i64 2892, !694, i64 2896, !694, i64 2900, !694, i64 2904, !694, i64 2908, !694, i64 2912, !694, i64 2916, !694, i64 2920, !694, i64 2924, !694, i64 2928, !694, i64 2932, !694, i64 2936, !694, i64 2940, !694, i64 2944, !694, i64 2948, !689, i64 2952, !694, i64 3152, !694, i64 3156, !688, i64 3160, !688, i64 3168, !688, i64 3176, !688, i64 3184, !694, i64 3192, !694, i64 3196, !694, i64 3200, !694, i64 3204, !694, i64 3208, !694, i64 3212, !694, i64 3216, !694, i64 3220, !694, i64 3224, !694, i64 3228, !694, i64 3232, !694, i64 3236, !694, i64 3240, !694, i64 3244, !694, i64 3248, !694, i64 3252, !694, i64 3256, !689, i64 3260, !694, i64 3292, !694, i64 3296, !694, i64 3300, !694, i64 3304, !694, i64 3308, !694, i64 3312, !694, i64 3316, !694, i64 3320, !694, i64 3324, !694, i64 3328, !694, i64 3332, !689, i64 3336, !689, i64 3384, !694, i64 3584}
!694 = !{!"int", !689, i64 0}
!695 = !{!"double", !689, i64 0}
!696 = !DILocation(line: 59, column: 15, scope: !59)
!697 = !{!694, !694, i64 0}
!698 = !DIExpression()
!699 = !DILocation(line: 59, column: 7, scope: !59)
!700 = !DILocation(line: 60, column: 32, scope: !59)
!701 = !DILocation(line: 60, column: 33, scope: !59)
!702 = !DILocation(line: 60, column: 38, scope: !59)
!703 = !{!704, !688, i64 14160}
!704 = !{!"", !694, i64 0, !694, i64 4, !694, i64 8, !694, i64 12, !694, i64 16, !694, i64 20, !694, i64 24, !694, i64 28, !694, i64 32, !694, i64 36, !694, i64 40, !694, i64 44, !705, i64 48, !694, i64 52, !694, i64 56, !694, i64 60, !694, i64 64, !694, i64 68, !694, i64 72, !694, i64 76, !694, i64 80, !694, i64 84, !694, i64 88, !694, i64 92, !694, i64 96, !688, i64 104, !688, i64 112, !694, i64 120, !688, i64 128, !694, i64 136, !694, i64 140, !694, i64 144, !694, i64 148, !694, i64 152, !694, i64 156, !694, i64 160, !694, i64 164, !694, i64 168, !694, i64 172, !694, i64 176, !694, i64 180, !689, i64 184, !689, i64 4792, !689, i64 7352, !689, i64 8504, !689, i64 12600, !689, i64 13112, !688, i64 14136, !688, i64 14144, !688, i64 14152, !688, i64 14160, !688, i64 14168, !689, i64 14176, !688, i64 71776, !688, i64 71784, !694, i64 71792, !694, i64 71796, !694, i64 71800, !694, i64 71804, !689, i64 71808, !694, i64 71872, !694, i64 71876, !694, i64 71880, !694, i64 71884, !694, i64 71888, !695, i64 71896, !694, i64 71904, !694, i64 71908, !694, i64 71912, !694, i64 71916, !688, i64 71920, !688, i64 71928, !688, i64 71936, !688, i64 71944, !689, i64 71952, !694, i64 71984, !694, i64 71988, !694, i64 71992, !694, i64 71996, !694, i64 72000, !694, i64 72004, !694, i64 72008, !694, i64 72012, !689, i64 72016, !694, i64 72376, !694, i64 72380, !694, i64 72384, !694, i64 72388, !694, i64 72392, !694, i64 72396, !694, i64 72400, !694, i64 72404, !694, i64 72408, !694, i64 72412, !694, i64 72416, !694, i64 72420, !689, i64 72424, !694, i64 72428, !694, i64 72432, !689, i64 72436, !694, i64 72444, !694, i64 72448, !694, i64 72452, !694, i64 72456, !694, i64 72460, !694, i64 72464, !694, i64 72468, !694, i64 72472, !694, i64 72476, !694, i64 72480, !694, i64 72484, !694, i64 72488, !694, i64 72492, !694, i64 72496, !694, i64 72500, !694, i64 72504, !694, i64 72508, !688, i64 72512, !694, i64 72520, !694, i64 72524, !694, i64 72528, !694, i64 72532, !694, i64 72536, !695, i64 72544, !694, i64 72552, !694, i64 72556, !694, i64 72560, !694, i64 72564, !694, i64 72568, !694, i64 72572, !694, i64 72576, !688, i64 72584, !694, i64 72592, !694, i64 72596, !694, i64 72600, !694, i64 72604, !694, i64 72608, !694, i64 72612, !694, i64 72616, !694, i64 72620, !694, i64 72624, !694, i64 72628, !694, i64 72632, !694, i64 72636, !694, i64 72640, !694, i64 72644, !694, i64 72648, !694, i64 72652, !694, i64 72656, !694, i64 72660, !694, i64 72664, !694, i64 72668, !694, i64 72672, !694, i64 72676, !694, i64 72680, !694, i64 72684, !694, i64 72688, !694, i64 72692, !694, i64 72696, !694, i64 72700, !694, i64 72704, !694, i64 72708, !694, i64 72712, !689, i64 72716, !694, i64 72724, !694, i64 72728, !694, i64 72732}
!705 = !{!"float", !689, i64 0}
!706 = !DILocation(line: 60, column: 53, scope: !59)
!707 = !{!708, !688, i64 24}
!708 = !{!"", !694, i64 0, !694, i64 4, !694, i64 8, !694, i64 12, !694, i64 16, !694, i64 20, !688, i64 24, !688, i64 32, !688, i64 40, !688, i64 48, !694, i64 56, !688, i64 64, !688, i64 72, !688, i64 80, !694, i64 88, !688, i64 96, !688, i64 104, !688, i64 112, !688, i64 120, !689, i64 128}
!709 = !DILocation(line: 60, column: 18, scope: !59)
!710 = !DILocation(line: 61, column: 10, scope: !59)
!711 = !DILocation(line: 62, column: 7, scope: !59)
!712 = !DILocation(line: 63, column: 16, scope: !59)
!713 = !DILocation(line: 63, column: 36, scope: !59)
!714 = !DILocation(line: 68, column: 12, scope: !715)
!715 = distinct !DILexicalBlock(scope: !59, file: !1, line: 68, column: 7)
!716 = !{!704, !694, i64 72400}
!717 = !DILocation(line: 68, column: 7, scope: !715)
!718 = !DILocation(line: 69, column: 47, scope: !715)
!719 = !{!704, !694, i64 12}
!720 = !DILocation(line: 68, column: 7, scope: !59)
!721 = !DILocation(line: 69, column: 61, scope: !715)
!722 = !DILocation(line: 69, column: 12, scope: !715)
!723 = !DILocation(line: 69, column: 5, scope: !715)
!724 = !DILocation(line: 71, column: 12, scope: !715)
!725 = !DILocation(line: 476, column: 7, scope: !253, inlinedAt: !726)
!726 = distinct !DILocation(line: 73, column: 40, scope: !59)
!727 = !DILocation(line: 478, column: 11, scope: !253, inlinedAt: !726)
!728 = !DILocation(line: 478, column: 16, scope: !253, inlinedAt: !726)
!729 = !{!704, !694, i64 24}
!730 = !DILocation(line: 478, column: 3, scope: !253, inlinedAt: !726)
!731 = !DILocation(line: 493, column: 5, scope: !732, inlinedAt: !726)
!732 = distinct !DILexicalBlock(scope: !253, file: !1, line: 479, column: 3)
!733 = !DILocation(line: 498, column: 1, scope: !253, inlinedAt: !726)
!734 = !DILocation(line: 73, column: 10, scope: !59)
!735 = !DILocation(line: 73, column: 7, scope: !59)
!736 = !DILocation(line: 75, column: 44, scope: !59)
!737 = !DILocation(line: 75, column: 56, scope: !59)
!738 = !{!739, !694, i64 4}
!739 = !{!"", !689, i64 0, !694, i64 4, !694, i64 8, !689, i64 12, !689, i64 16, !689, i64 20, !689, i64 24, !689, i64 56, !694, i64 60, !694, i64 64, !689, i64 68, !689, i64 100, !689, i64 132, !689, i64 164, !694, i64 168, !694, i64 172, !688, i64 176, !694, i64 184, !694, i64 188, !689, i64 192, !694, i64 196, !694, i64 200, !694, i64 204, !694, i64 208, !694, i64 212, !694, i64 216, !689, i64 220, !689, i64 224, !689, i64 228, !689, i64 232}
!740 = !DILocation(line: 75, column: 10, scope: !59)
!741 = !DILocation(line: 75, column: 7, scope: !59)
!742 = !DILocation(line: 78, column: 15, scope: !59)
!743 = !DILocation(line: 78, column: 41, scope: !59)
!744 = !DILocation(line: 78, column: 62, scope: !59)
!745 = !DILocation(line: 78, column: 67, scope: !59)
!746 = !{!704, !694, i64 72464}
!747 = !DILocation(line: 78, column: 10, scope: !59)
!748 = !DILocation(line: 78, column: 7, scope: !59)
!749 = !DILocation(line: 80, column: 8, scope: !750)
!750 = distinct !DILexicalBlock(scope: !59, file: !1, line: 80, column: 7)
!751 = !DILocation(line: 80, column: 20, scope: !750)
!752 = !{!753, !689, i64 1148}
!753 = !{!"", !689, i64 0, !694, i64 4, !689, i64 8, !689, i64 12, !689, i64 16, !689, i64 20, !694, i64 24, !694, i64 28, !694, i64 32, !689, i64 36, !689, i64 40, !694, i64 72, !694, i64 76, !694, i64 80, !694, i64 84, !694, i64 88, !689, i64 92, !694, i64 96, !694, i64 100, !694, i64 104, !689, i64 108, !694, i64 1132, !689, i64 1136, !694, i64 1140, !694, i64 1144, !689, i64 1148, !689, i64 1152, !689, i64 1156, !689, i64 1160, !694, i64 1164, !694, i64 1168, !694, i64 1172, !694, i64 1176, !689, i64 1180, !754, i64 1184}
!754 = !{!"", !689, i64 0, !694, i64 4, !694, i64 8, !694, i64 12, !689, i64 16, !689, i64 20, !689, i64 24, !694, i64 28, !689, i64 32, !689, i64 36, !694, i64 40, !694, i64 44, !694, i64 48, !689, i64 52, !694, i64 56, !694, i64 60, !689, i64 64, !694, i64 68, !694, i64 72, !689, i64 76, !689, i64 80, !755, i64 84, !689, i64 496, !755, i64 500, !689, i64 912, !689, i64 916, !689, i64 920, !694, i64 924, !694, i64 928, !694, i64 932, !694, i64 936, !694, i64 940, !694, i64 944}
!755 = !{!"", !694, i64 0, !694, i64 4, !694, i64 8, !689, i64 12, !689, i64 140, !689, i64 268, !694, i64 396, !694, i64 400, !694, i64 404, !694, i64 408}
!756 = !DILocation(line: 80, column: 7, scope: !59)
!757 = !DILocation(line: 83, column: 23, scope: !758)
!758 = distinct !DILexicalBlock(scope: !750, file: !1, line: 81, column: 3)
!759 = !DILocation(line: 83, column: 28, scope: !758)
!760 = !{!704, !694, i64 28}
!761 = !DILocation(line: 83, column: 50, scope: !758)
!762 = !DILocation(line: 83, column: 22, scope: !758)
!763 = !DILocation(line: 84, column: 5, scope: !758)
!764 = !{!704, !694, i64 71800}
!765 = !{!"branch_weights", i32 64, i32 4}
!766 = !DILocation(line: 85, column: 12, scope: !758)
!767 = !DILocation(line: 85, column: 9, scope: !758)
!768 = !DILocation(line: 87, column: 9, scope: !758)
!769 = !DILocation(line: 90, column: 28, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !1, line: 88, column: 5)
!771 = distinct !DILexicalBlock(scope: !758, file: !1, line: 87, column: 9)
!772 = !DILocation(line: 90, column: 33, scope: !770)
!773 = !DILocation(line: 90, column: 43, scope: !770)
!774 = !DILocation(line: 90, column: 27, scope: !770)
!775 = !DILocation(line: 91, column: 14, scope: !770)
!776 = !DILocation(line: 91, column: 11, scope: !770)
!777 = !DILocation(line: 92, column: 5, scope: !770)
!778 = !DILocation(line: 95, column: 7, scope: !779)
!779 = distinct !DILexicalBlock(scope: !59, file: !1, line: 95, column: 7)
!780 = !DILocation(line: 95, column: 12, scope: !779)
!781 = !{!704, !688, i64 14152}
!782 = !DILocation(line: 95, column: 28, scope: !779)
!783 = !{!784, !694, i64 4}
!784 = !{!"", !694, i64 0, !694, i64 4, !689, i64 8, !694, i64 808, !705, i64 812, !705, i64 816, !705, i64 820}
!785 = !DILocation(line: 95, column: 7, scope: !59)
!786 = !DILocation(line: 98, column: 42, scope: !787)
!787 = distinct !DILexicalBlock(scope: !779, file: !1, line: 96, column: 3)
!788 = !{!704, !694, i64 0}
!789 = !DILocation(line: 98, column: 49, scope: !787)
!790 = !DILocation(line: 98, column: 12, scope: !787)
!791 = !DILocation(line: 98, column: 9, scope: !787)
!792 = !DILocation(line: 101, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !59, file: !1, line: 101, column: 7)
!794 = !DILocation(line: 99, column: 3, scope: !787)
!795 = !DILocation(line: 101, column: 12, scope: !793)
!796 = !{!704, !694, i64 72404}
!797 = !DILocation(line: 101, column: 31, scope: !793)
!798 = !DILocation(line: 101, column: 7, scope: !59)
!799 = !DILocation(line: 103, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !1, line: 103, column: 9)
!801 = distinct !DILexicalBlock(scope: !793, file: !1, line: 102, column: 3)
!802 = !DILocation(line: 103, column: 21, scope: !800)
!803 = !DILocation(line: 103, column: 9, scope: !801)
!804 = !DILocation(line: 105, column: 38, scope: !805)
!805 = distinct !DILexicalBlock(scope: !800, file: !1, line: 104, column: 5)
!806 = !{!704, !694, i64 72448}
!807 = !DILocation(line: 105, column: 75, scope: !805)
!808 = !DILocation(line: 105, column: 108, scope: !805)
!809 = !DILocation(line: 105, column: 71, scope: !805)
!810 = !DILocation(line: 105, column: 47, scope: !805)
!811 = !DILocation(line: 105, column: 45, scope: !805)
!812 = !DILocation(line: 105, column: 12, scope: !805)
!813 = !DILocation(line: 105, column: 30, scope: !805)
!814 = !{!704, !694, i64 72428}
!815 = !DILocation(line: 106, column: 5, scope: !805)
!816 = !DILocation(line: 109, column: 12, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !1, line: 109, column: 11)
!818 = distinct !DILexicalBlock(scope: !800, file: !1, line: 108, column: 5)
!819 = !DILocation(line: 109, column: 27, scope: !817)
!820 = !DILocation(line: 109, column: 35, scope: !817)
!821 = !DILocation(line: 109, column: 11, scope: !818)
!822 = !DILocation(line: 115, column: 84, scope: !801)
!823 = !DILocation(line: 110, column: 40, scope: !817)
!824 = !DILocation(line: 110, column: 77, scope: !817)
!825 = !DILocation(line: 110, column: 110, scope: !817)
!826 = !DILocation(line: 110, column: 73, scope: !817)
!827 = !DILocation(line: 110, column: 49, scope: !817)
!828 = !DILocation(line: 110, column: 47, scope: !817)
!829 = !DILocation(line: 110, column: 14, scope: !817)
!830 = !DILocation(line: 110, column: 32, scope: !817)
!831 = !DILocation(line: 110, column: 9, scope: !817)
!832 = !DILocation(line: 112, column: 40, scope: !833)
!833 = distinct !DILexicalBlock(scope: !817, file: !1, line: 111, column: 17)
!834 = !{!704, !694, i64 72452}
!835 = !DILocation(line: 112, column: 80, scope: !833)
!836 = !DILocation(line: 112, column: 113, scope: !833)
!837 = !DILocation(line: 112, column: 76, scope: !833)
!838 = !DILocation(line: 112, column: 52, scope: !833)
!839 = !DILocation(line: 112, column: 50, scope: !833)
!840 = !DILocation(line: 112, column: 14, scope: !833)
!841 = !DILocation(line: 112, column: 32, scope: !833)
!842 = !DILocation(line: 112, column: 9, scope: !833)
!843 = !DILocation(line: 115, column: 17, scope: !801)
!844 = !DILocation(line: 115, column: 50, scope: !801)
!845 = !DILocation(line: 115, column: 12, scope: !801)
!846 = !DILocation(line: 115, column: 9, scope: !801)
!847 = !DILocation(line: 117, column: 9, scope: !848)
!848 = distinct !DILexicalBlock(scope: !801, file: !1, line: 117, column: 9)
!849 = !DILocation(line: 117, column: 14, scope: !848)
!850 = !{!704, !694, i64 72492}
!851 = !DILocation(line: 117, column: 41, scope: !848)
!852 = !DILocation(line: 117, column: 37, scope: !848)
!853 = !DILocation(line: 119, column: 59, scope: !854)
!854 = distinct !DILexicalBlock(scope: !848, file: !1, line: 118, column: 5)
!855 = !{!704, !694, i64 72432}
!856 = !DILocation(line: 119, column: 14, scope: !854)
!857 = !DILocation(line: 119, column: 11, scope: !854)
!858 = !DILocation(line: 122, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !59, file: !1, line: 122, column: 7)
!860 = !DILocation(line: 120, column: 5, scope: !854)
!861 = !DILocation(line: 122, column: 12, scope: !859)
!862 = !DILocation(line: 122, column: 31, scope: !859)
!863 = !DILocation(line: 122, column: 36, scope: !859)
!864 = !DILocation(line: 122, column: 45, scope: !859)
!865 = !{!704, !694, i64 72408}
!866 = !DILocation(line: 122, column: 40, scope: !859)
!867 = !DILocation(line: 122, column: 7, scope: !59)
!868 = !DILocation(line: 124, column: 48, scope: !869)
!869 = distinct !DILexicalBlock(scope: !859, file: !1, line: 123, column: 3)
!870 = !DILocation(line: 124, column: 12, scope: !869)
!871 = !DILocation(line: 124, column: 9, scope: !869)
!872 = !DILocation(line: 126, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !1, line: 126, column: 9)
!874 = !DILocation(line: 126, column: 14, scope: !873)
!875 = !DILocation(line: 126, column: 41, scope: !873)
!876 = !DILocation(line: 126, column: 37, scope: !873)
!877 = !DILocation(line: 128, column: 50, scope: !878)
!878 = distinct !DILexicalBlock(scope: !873, file: !1, line: 127, column: 5)
!879 = !DILocation(line: 128, column: 14, scope: !878)
!880 = !DILocation(line: 128, column: 11, scope: !878)
!881 = !DILocation(line: 129, column: 5, scope: !878)
!882 = !DILocation(line: 133, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !59, file: !1, line: 133, column: 7)
!884 = !DILocation(line: 133, column: 14, scope: !883)
!885 = !{!693, !694, i64 3204}
!886 = !DILocation(line: 133, column: 7, scope: !59)
!887 = !DILocation(line: 135, column: 43, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !1, line: 134, column: 3)
!889 = !DILocation(line: 135, column: 48, scope: !888)
!890 = !{!704, !694, i64 72396}
!891 = !DILocation(line: 135, column: 12, scope: !888)
!892 = !DILocation(line: 135, column: 9, scope: !888)
!893 = !DILocation(line: 136, column: 3, scope: !888)
!894 = !DILocation(line: 139, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !59, file: !1, line: 139, column: 7)
!896 = !DILocation(line: 139, column: 12, scope: !895)
!897 = !DILocation(line: 139, column: 16, scope: !895)
!898 = !DILocation(line: 139, column: 7, scope: !59)
!899 = !DILocation(line: 141, column: 58, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !1, line: 140, column: 3)
!901 = !{!704, !694, i64 71996}
!902 = !DILocation(line: 141, column: 13, scope: !900)
!903 = !DILocation(line: 141, column: 9, scope: !900)
!904 = !DILocation(line: 144, column: 8, scope: !252)
!905 = !DILocation(line: 144, column: 13, scope: !252)
!906 = !DILocation(line: 142, column: 3, scope: !900)
!907 = !DILocation(line: 144, column: 30, scope: !252)
!908 = !DILocation(line: 149, column: 29, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !1, line: 148, column: 5)
!910 = distinct !DILexicalBlock(scope: !251, file: !1, line: 147, column: 9)
!911 = !{!704, !694, i64 72000}
!912 = !DILocation(line: 149, column: 55, scope: !909)
!913 = !DILocation(line: 149, column: 67, scope: !909)
!914 = !{!739, !694, i64 184}
!915 = !DILocation(line: 149, column: 96, scope: !909)
!916 = !DILocation(line: 149, column: 51, scope: !909)
!917 = !DILocation(line: 146, column: 9, scope: !251)
!918 = !DILocation(line: 149, column: 23, scope: !909)
!919 = !DILocation(line: 157, column: 13, scope: !251)
!920 = !DILocation(line: 157, column: 9, scope: !251)
!921 = !DILocation(line: 159, column: 9, scope: !251)
!922 = !DILocation(line: 153, column: 30, scope: !923)
!923 = distinct !DILexicalBlock(scope: !910, file: !1, line: 152, column: 5)
!924 = !DILocation(line: 153, column: 56, scope: !923)
!925 = !DILocation(line: 153, column: 68, scope: !923)
!926 = !DILocation(line: 153, column: 97, scope: !923)
!927 = !DILocation(line: 153, column: 52, scope: !923)
!928 = !DILocation(line: 154, column: 23, scope: !923)
!929 = !DILocation(line: 154, column: 32, scope: !923)
!930 = !{!704, !694, i64 72004}
!931 = !DILocation(line: 154, column: 70, scope: !923)
!932 = !{!739, !694, i64 188}
!933 = !DILocation(line: 154, column: 99, scope: !923)
!934 = !DILocation(line: 154, column: 54, scope: !923)
!935 = !DILocation(line: 161, column: 56, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !1, line: 160, column: 5)
!937 = distinct !DILexicalBlock(scope: !251, file: !1, line: 159, column: 9)
!938 = !DILocation(line: 161, column: 61, scope: !936)
!939 = !DILocation(line: 161, column: 82, scope: !936)
!940 = !DILocation(line: 161, column: 14, scope: !936)
!941 = !DILocation(line: 161, column: 11, scope: !936)
!942 = !DILocation(line: 162, column: 11, scope: !943)
!943 = distinct !DILexicalBlock(scope: !936, file: !1, line: 162, column: 11)
!944 = !DILocation(line: 162, column: 16, scope: !943)
!945 = !DILocation(line: 162, column: 20, scope: !943)
!946 = !DILocation(line: 162, column: 11, scope: !936)
!947 = !DILocation(line: 164, column: 63, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !1, line: 163, column: 7)
!949 = !DILocation(line: 164, column: 84, scope: !948)
!950 = !DILocation(line: 164, column: 16, scope: !948)
!951 = !DILocation(line: 164, column: 13, scope: !948)
!952 = !DILocation(line: 165, column: 7, scope: !948)
!953 = !DILocation(line: 242, column: 34, scope: !265, inlinedAt: !954)
!954 = distinct !DILocation(line: 169, column: 10, scope: !59)
!955 = !DILocation(line: 242, column: 41, scope: !265, inlinedAt: !954)
!956 = !DILocation(line: 242, column: 15, scope: !265, inlinedAt: !954)
!957 = !DILocation(line: 242, column: 7, scope: !265, inlinedAt: !954)
!958 = !DILocation(line: 243, column: 32, scope: !265, inlinedAt: !954)
!959 = !DILocation(line: 243, column: 33, scope: !265, inlinedAt: !954)
!960 = !DILocation(line: 243, column: 38, scope: !265, inlinedAt: !954)
!961 = !DILocation(line: 243, column: 53, scope: !265, inlinedAt: !954)
!962 = !DILocation(line: 243, column: 18, scope: !265, inlinedAt: !954)
!963 = !DILocation(line: 244, column: 10, scope: !265, inlinedAt: !954)
!964 = !DILocation(line: 246, column: 10, scope: !265, inlinedAt: !954)
!965 = !DILocation(line: 248, column: 13, scope: !966, inlinedAt: !954)
!966 = distinct !DILexicalBlock(scope: !265, file: !1, line: 248, column: 7)
!967 = !DILocation(line: 248, column: 17, scope: !966, inlinedAt: !954)
!968 = !DILocation(line: 248, column: 7, scope: !265, inlinedAt: !954)
!969 = !DILocation(line: 250, column: 67, scope: !970, inlinedAt: !954)
!970 = distinct !DILexicalBlock(scope: !966, file: !1, line: 249, column: 3)
!971 = !{!708, !694, i64 56}
!972 = !DILocation(line: 250, column: 12, scope: !970, inlinedAt: !954)
!973 = !DILocation(line: 251, column: 20, scope: !974, inlinedAt: !954)
!974 = distinct !DILexicalBlock(scope: !970, file: !1, line: 251, column: 9)
!975 = !DILocation(line: 251, column: 9, scope: !974, inlinedAt: !954)
!976 = !DILocation(line: 251, column: 9, scope: !970, inlinedAt: !954)
!977 = !DILocation(line: 257, column: 65, scope: !978, inlinedAt: !954)
!978 = distinct !DILexicalBlock(scope: !979, file: !1, line: 255, column: 7)
!979 = distinct !DILexicalBlock(scope: !974, file: !1, line: 252, column: 5)
!980 = !DILocation(line: 261, column: 69, scope: !981, inlinedAt: !954)
!981 = distinct !DILexicalBlock(scope: !982, file: !1, line: 260, column: 9)
!982 = distinct !DILexicalBlock(scope: !978, file: !1, line: 258, column: 13)
!983 = !DILocation(line: 267, column: 65, scope: !984, inlinedAt: !954)
!984 = distinct !DILexicalBlock(scope: !985, file: !1, line: 266, column: 11)
!985 = distinct !DILexicalBlock(scope: !986, file: !1, line: 265, column: 15)
!986 = distinct !DILexicalBlock(scope: !982, file: !1, line: 264, column: 9)
!987 = !{!708, !688, i64 64}
!988 = !DILocation(line: 256, column: 10, scope: !978, inlinedAt: !954)
!989 = !DILocation(line: 169, column: 10, scope: !59)
!990 = !DILocation(line: 271, column: 7, scope: !978, inlinedAt: !954)
!991 = !DILocation(line: 257, column: 54, scope: !978, inlinedAt: !954)
!992 = !DILocation(line: 257, column: 16, scope: !978, inlinedAt: !954)
!993 = !DILocation(line: 257, column: 13, scope: !978, inlinedAt: !954)
!994 = !DILocation(line: 258, column: 24, scope: !982, inlinedAt: !954)
!995 = !DILocation(line: 258, column: 13, scope: !982, inlinedAt: !954)
!996 = !DILocation(line: 258, column: 59, scope: !982, inlinedAt: !954)
!997 = !{!708, !688, i64 72}
!998 = !DILocation(line: 261, column: 58, scope: !981, inlinedAt: !954)
!999 = !DILocation(line: 261, column: 18, scope: !981, inlinedAt: !954)
!1000 = !DILocation(line: 261, column: 15, scope: !981, inlinedAt: !954)
!1001 = !DILocation(line: 262, column: 9, scope: !981, inlinedAt: !954)
!1002 = !{!708, !688, i64 80}
!1003 = !DILocation(line: 267, column: 54, scope: !984, inlinedAt: !954)
!1004 = !DILocation(line: 267, column: 20, scope: !984, inlinedAt: !954)
!1005 = !DILocation(line: 267, column: 17, scope: !984, inlinedAt: !954)
!1006 = !DILocation(line: 268, column: 11, scope: !984, inlinedAt: !954)
!1007 = !DILocation(line: 271, column: 27, scope: !979, inlinedAt: !954)
!1008 = !DILocation(line: 271, column: 16, scope: !979, inlinedAt: !954)
!1009 = !DILocation(line: 271, column: 59, scope: !979, inlinedAt: !954)
!1010 = !DILocation(line: 275, column: 7, scope: !1011, inlinedAt: !954)
!1011 = distinct !DILexicalBlock(scope: !265, file: !1, line: 275, column: 7)
!1012 = !DILocation(line: 275, column: 12, scope: !1011, inlinedAt: !954)
!1013 = !DILocation(line: 275, column: 16, scope: !1011, inlinedAt: !954)
!1014 = !DILocation(line: 275, column: 7, scope: !265, inlinedAt: !954)
!1015 = !DILocation(line: 277, column: 67, scope: !1016, inlinedAt: !954)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 276, column: 3)
!1017 = !{!708, !694, i64 88}
!1018 = !DILocation(line: 277, column: 12, scope: !1016, inlinedAt: !954)
!1019 = !DILocation(line: 277, column: 9, scope: !1016, inlinedAt: !954)
!1020 = !DILocation(line: 278, column: 20, scope: !1021, inlinedAt: !954)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 278, column: 9)
!1022 = !DILocation(line: 278, column: 9, scope: !1021, inlinedAt: !954)
!1023 = !DILocation(line: 278, column: 9, scope: !1016, inlinedAt: !954)
!1024 = !DILocation(line: 284, column: 65, scope: !1025, inlinedAt: !954)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 282, column: 7)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 279, column: 5)
!1027 = !DILocation(line: 288, column: 69, scope: !1028, inlinedAt: !954)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 287, column: 9)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 285, column: 13)
!1030 = !DILocation(line: 294, column: 65, scope: !1031, inlinedAt: !954)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 293, column: 11)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 292, column: 15)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 291, column: 9)
!1034 = !{!708, !688, i64 96}
!1035 = !DILocation(line: 283, column: 10, scope: !1025, inlinedAt: !954)
!1036 = !DILocation(line: 297, column: 7, scope: !1025, inlinedAt: !954)
!1037 = !DILocation(line: 284, column: 54, scope: !1025, inlinedAt: !954)
!1038 = !DILocation(line: 284, column: 16, scope: !1025, inlinedAt: !954)
!1039 = !DILocation(line: 284, column: 13, scope: !1025, inlinedAt: !954)
!1040 = !DILocation(line: 285, column: 24, scope: !1029, inlinedAt: !954)
!1041 = !DILocation(line: 285, column: 13, scope: !1029, inlinedAt: !954)
!1042 = !DILocation(line: 285, column: 59, scope: !1029, inlinedAt: !954)
!1043 = !{!708, !688, i64 104}
!1044 = !DILocation(line: 288, column: 58, scope: !1028, inlinedAt: !954)
!1045 = !DILocation(line: 288, column: 18, scope: !1028, inlinedAt: !954)
!1046 = !DILocation(line: 288, column: 15, scope: !1028, inlinedAt: !954)
!1047 = !DILocation(line: 289, column: 9, scope: !1028, inlinedAt: !954)
!1048 = !{!708, !688, i64 112}
!1049 = !DILocation(line: 294, column: 54, scope: !1031, inlinedAt: !954)
!1050 = !DILocation(line: 294, column: 20, scope: !1031, inlinedAt: !954)
!1051 = !DILocation(line: 294, column: 17, scope: !1031, inlinedAt: !954)
!1052 = !DILocation(line: 295, column: 11, scope: !1031, inlinedAt: !954)
!1053 = !DILocation(line: 297, column: 27, scope: !1026, inlinedAt: !954)
!1054 = !DILocation(line: 297, column: 16, scope: !1026, inlinedAt: !954)
!1055 = !DILocation(line: 297, column: 59, scope: !1026, inlinedAt: !954)
!1056 = !DILocation(line: 169, column: 7, scope: !59)
!1057 = !DILocation(line: 171, column: 9, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !59, file: !1, line: 171, column: 7)
!1059 = !DILocation(line: 171, column: 14, scope: !1058)
!1060 = !DILocation(line: 171, column: 30, scope: !1058)
!1061 = !DILocation(line: 171, column: 59, scope: !1058)
!1062 = !DILocation(line: 171, column: 71, scope: !1058)
!1063 = !{!739, !689, i64 192}
!1064 = !DILocation(line: 171, column: 91, scope: !1058)
!1065 = !DILocation(line: 172, column: 18, scope: !1058)
!1066 = !DILocation(line: 172, column: 30, scope: !1058)
!1067 = !DILocation(line: 172, column: 33, scope: !1058)
!1068 = !DILocation(line: 172, column: 45, scope: !1058)
!1069 = !{!739, !694, i64 196}
!1070 = !DILocation(line: 172, column: 65, scope: !1058)
!1071 = !DILocation(line: 171, column: 7, scope: !59)
!1072 = !DILocation(line: 383, column: 34, scope: !290, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 174, column: 12, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 173, column: 3)
!1075 = !DILocation(line: 383, column: 41, scope: !290, inlinedAt: !1073)
!1076 = !DILocation(line: 383, column: 15, scope: !290, inlinedAt: !1073)
!1077 = !DILocation(line: 383, column: 7, scope: !290, inlinedAt: !1073)
!1078 = !DILocation(line: 384, column: 32, scope: !290, inlinedAt: !1073)
!1079 = !DILocation(line: 384, column: 38, scope: !290, inlinedAt: !1073)
!1080 = !DILocation(line: 384, column: 53, scope: !290, inlinedAt: !1073)
!1081 = !DILocation(line: 384, column: 18, scope: !290, inlinedAt: !1073)
!1082 = !DILocation(line: 386, column: 7, scope: !290, inlinedAt: !1073)
!1083 = !DILocation(line: 389, column: 44, scope: !290, inlinedAt: !1073)
!1084 = !DILocation(line: 389, column: 10, scope: !290, inlinedAt: !1073)
!1085 = !DILocation(line: 391, column: 46, scope: !290, inlinedAt: !1073)
!1086 = !DILocation(line: 391, column: 10, scope: !290, inlinedAt: !1073)
!1087 = !DILocation(line: 391, column: 7, scope: !290, inlinedAt: !1073)
!1088 = !DILocation(line: 387, column: 7, scope: !290, inlinedAt: !1073)
!1089 = !DILocation(line: 393, column: 16, scope: !1090, inlinedAt: !1073)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 393, column: 3)
!1091 = distinct !DILexicalBlock(scope: !290, file: !1, line: 393, column: 3)
!1092 = !DILocation(line: 393, column: 21, scope: !1090, inlinedAt: !1073)
!1093 = !DILocation(line: 393, column: 14, scope: !1090, inlinedAt: !1073)
!1094 = !DILocation(line: 393, column: 3, scope: !1091, inlinedAt: !1073)
!1095 = !DILocation(line: 174, column: 12, scope: !1074)
!1096 = !DILocation(line: 395, column: 11, scope: !1097, inlinedAt: !1073)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 395, column: 10)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 394, column: 3)
!1099 = !DILocation(line: 395, column: 36, scope: !1097, inlinedAt: !1073)
!1100 = !DILocation(line: 395, column: 34, scope: !1097, inlinedAt: !1073)
!1101 = !DILocation(line: 395, column: 30, scope: !1097, inlinedAt: !1073)
!1102 = !DILocation(line: 395, column: 59, scope: !1097, inlinedAt: !1073)
!1103 = !DILocation(line: 395, column: 63, scope: !1097, inlinedAt: !1073)
!1104 = !DILocation(line: 395, column: 82, scope: !1097, inlinedAt: !1073)
!1105 = !DILocation(line: 395, column: 10, scope: !1098, inlinedAt: !1073)
!1106 = !DILocation(line: 397, column: 14, scope: !1107, inlinedAt: !1073)
!1107 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 396, column: 5)
!1108 = !DILocation(line: 397, column: 11, scope: !1107, inlinedAt: !1073)
!1109 = !DILocation(line: 399, column: 42, scope: !1107, inlinedAt: !1073)
!1110 = !DILocation(line: 399, column: 14, scope: !1107, inlinedAt: !1073)
!1111 = !DILocation(line: 399, column: 11, scope: !1107, inlinedAt: !1073)
!1112 = !DILocation(line: 401, column: 42, scope: !1107, inlinedAt: !1073)
!1113 = !DILocation(line: 401, column: 14, scope: !1107, inlinedAt: !1073)
!1114 = !DILocation(line: 401, column: 11, scope: !1107, inlinedAt: !1073)
!1115 = !DILocation(line: 402, column: 5, scope: !1107, inlinedAt: !1073)
!1116 = !DILocation(line: 405, column: 16, scope: !1117, inlinedAt: !1073)
!1117 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 404, column: 5)
!1118 = !DILocation(line: 405, column: 13, scope: !1117, inlinedAt: !1073)
!1119 = !DILocation(line: 408, column: 11, scope: !1120, inlinedAt: !1073)
!1120 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 408, column: 10)
!1121 = !DILocation(line: 408, column: 36, scope: !1120, inlinedAt: !1073)
!1122 = !DILocation(line: 408, column: 34, scope: !1120, inlinedAt: !1073)
!1123 = !DILocation(line: 408, column: 30, scope: !1120, inlinedAt: !1073)
!1124 = !DILocation(line: 408, column: 61, scope: !1120, inlinedAt: !1073)
!1125 = !DILocation(line: 408, column: 65, scope: !1120, inlinedAt: !1073)
!1126 = !DILocation(line: 408, column: 84, scope: !1120, inlinedAt: !1073)
!1127 = !DILocation(line: 408, column: 90, scope: !1120, inlinedAt: !1073)
!1128 = !DILocation(line: 409, column: 7, scope: !1120, inlinedAt: !1073)
!1129 = !DILocation(line: 409, column: 26, scope: !1120, inlinedAt: !1073)
!1130 = !DILocation(line: 409, column: 57, scope: !1120, inlinedAt: !1073)
!1131 = !DILocation(line: 409, column: 61, scope: !1120, inlinedAt: !1073)
!1132 = !DILocation(line: 409, column: 80, scope: !1120, inlinedAt: !1073)
!1133 = !DILocation(line: 408, column: 10, scope: !1098, inlinedAt: !1073)
!1134 = !DILocation(line: 411, column: 14, scope: !1135, inlinedAt: !1073)
!1135 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 410, column: 5)
!1136 = !DILocation(line: 411, column: 11, scope: !1135, inlinedAt: !1073)
!1137 = !DILocation(line: 387, column: 9, scope: !290, inlinedAt: !1073)
!1138 = !DILocation(line: 412, column: 7, scope: !1139, inlinedAt: !1073)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 412, column: 7)
!1140 = !DILocation(line: 414, column: 42, scope: !1141, inlinedAt: !1073)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 413, column: 7)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !1, line: 412, column: 7)
!1143 = !DILocation(line: 414, column: 16, scope: !1141, inlinedAt: !1073)
!1144 = !DILocation(line: 414, column: 13, scope: !1141, inlinedAt: !1073)
!1145 = !DILocation(line: 416, column: 42, scope: !1141, inlinedAt: !1073)
!1146 = !DILocation(line: 416, column: 16, scope: !1141, inlinedAt: !1073)
!1147 = !DILocation(line: 416, column: 13, scope: !1141, inlinedAt: !1073)
!1148 = !DILocation(line: 421, column: 14, scope: !1149, inlinedAt: !1073)
!1149 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 420, column: 5)
!1150 = !DILocation(line: 421, column: 11, scope: !1149, inlinedAt: !1073)
!1151 = !DILocation(line: 425, column: 12, scope: !1152, inlinedAt: !1073)
!1152 = distinct !DILexicalBlock(scope: !290, file: !1, line: 425, column: 7)
!1153 = !DILocation(line: 425, column: 17, scope: !1152, inlinedAt: !1073)
!1154 = !DILocation(line: 425, column: 7, scope: !290, inlinedAt: !1073)
!1155 = !DILocation(line: 427, column: 23, scope: !1156, inlinedAt: !1073)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !1, line: 427, column: 5)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 427, column: 5)
!1158 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 426, column: 3)
!1159 = !DILocation(line: 427, column: 16, scope: !1156, inlinedAt: !1073)
!1160 = !DILocation(line: 427, column: 5, scope: !1157, inlinedAt: !1073)
!1161 = !DILocation(line: 429, column: 13, scope: !1162, inlinedAt: !1073)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 429, column: 12)
!1163 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 428, column: 5)
!1164 = !DILocation(line: 429, column: 38, scope: !1162, inlinedAt: !1073)
!1165 = !DILocation(line: 429, column: 36, scope: !1162, inlinedAt: !1073)
!1166 = !DILocation(line: 429, column: 32, scope: !1162, inlinedAt: !1073)
!1167 = !DILocation(line: 429, column: 61, scope: !1162, inlinedAt: !1073)
!1168 = !DILocation(line: 429, column: 65, scope: !1162, inlinedAt: !1073)
!1169 = !DILocation(line: 429, column: 84, scope: !1162, inlinedAt: !1073)
!1170 = !DILocation(line: 429, column: 12, scope: !1163, inlinedAt: !1073)
!1171 = !DILocation(line: 431, column: 16, scope: !1172, inlinedAt: !1073)
!1172 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 430, column: 7)
!1173 = !DILocation(line: 431, column: 13, scope: !1172, inlinedAt: !1073)
!1174 = !DILocation(line: 433, column: 44, scope: !1172, inlinedAt: !1073)
!1175 = !DILocation(line: 433, column: 16, scope: !1172, inlinedAt: !1073)
!1176 = !DILocation(line: 433, column: 13, scope: !1172, inlinedAt: !1073)
!1177 = !DILocation(line: 435, column: 44, scope: !1172, inlinedAt: !1073)
!1178 = !DILocation(line: 435, column: 16, scope: !1172, inlinedAt: !1073)
!1179 = !DILocation(line: 435, column: 13, scope: !1172, inlinedAt: !1073)
!1180 = !DILocation(line: 436, column: 7, scope: !1172, inlinedAt: !1073)
!1181 = !DILocation(line: 439, column: 16, scope: !1182, inlinedAt: !1073)
!1182 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 438, column: 7)
!1183 = !DILocation(line: 439, column: 13, scope: !1182, inlinedAt: !1073)
!1184 = !DILocation(line: 442, column: 13, scope: !1185, inlinedAt: !1073)
!1185 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 442, column: 12)
!1186 = !DILocation(line: 442, column: 38, scope: !1185, inlinedAt: !1073)
!1187 = !DILocation(line: 442, column: 36, scope: !1185, inlinedAt: !1073)
!1188 = !DILocation(line: 442, column: 32, scope: !1185, inlinedAt: !1073)
!1189 = !DILocation(line: 442, column: 63, scope: !1185, inlinedAt: !1073)
!1190 = !DILocation(line: 442, column: 67, scope: !1185, inlinedAt: !1073)
!1191 = !DILocation(line: 442, column: 86, scope: !1185, inlinedAt: !1073)
!1192 = !DILocation(line: 442, column: 92, scope: !1185, inlinedAt: !1073)
!1193 = !DILocation(line: 443, column: 8, scope: !1185, inlinedAt: !1073)
!1194 = !DILocation(line: 443, column: 27, scope: !1185, inlinedAt: !1073)
!1195 = !DILocation(line: 443, column: 58, scope: !1185, inlinedAt: !1073)
!1196 = !DILocation(line: 443, column: 62, scope: !1185, inlinedAt: !1073)
!1197 = !DILocation(line: 443, column: 81, scope: !1185, inlinedAt: !1073)
!1198 = !DILocation(line: 442, column: 12, scope: !1163, inlinedAt: !1073)
!1199 = !DILocation(line: 445, column: 16, scope: !1200, inlinedAt: !1073)
!1200 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 444, column: 7)
!1201 = !DILocation(line: 445, column: 13, scope: !1200, inlinedAt: !1073)
!1202 = !DILocation(line: 446, column: 9, scope: !1203, inlinedAt: !1073)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 446, column: 9)
!1204 = !DILocation(line: 448, column: 44, scope: !1205, inlinedAt: !1073)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 447, column: 9)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 446, column: 9)
!1207 = !DILocation(line: 448, column: 18, scope: !1205, inlinedAt: !1073)
!1208 = !DILocation(line: 448, column: 15, scope: !1205, inlinedAt: !1073)
!1209 = !DILocation(line: 450, column: 44, scope: !1205, inlinedAt: !1073)
!1210 = !DILocation(line: 450, column: 18, scope: !1205, inlinedAt: !1073)
!1211 = !DILocation(line: 450, column: 15, scope: !1205, inlinedAt: !1073)
!1212 = !DILocation(line: 455, column: 16, scope: !1213, inlinedAt: !1073)
!1213 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 454, column: 7)
!1214 = !DILocation(line: 455, column: 13, scope: !1213, inlinedAt: !1073)
!1215 = !DILocation(line: 427, column: 18, scope: !1156, inlinedAt: !1073)
!1216 = !DILocation(line: 174, column: 9, scope: !1074)
!1217 = !DILocation(line: 175, column: 3, scope: !1074)
!1218 = !DILocation(line: 177, column: 12, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !59, file: !1, line: 177, column: 7)
!1220 = !{!704, !694, i64 72496}
!1221 = !DILocation(line: 177, column: 7, scope: !1219)
!1222 = !DILocation(line: 177, column: 7, scope: !59)
!1223 = !DILocation(line: 316, column: 34, scope: !272, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 178, column: 12, scope: !1219)
!1225 = !DILocation(line: 316, column: 41, scope: !272, inlinedAt: !1224)
!1226 = !DILocation(line: 316, column: 15, scope: !272, inlinedAt: !1224)
!1227 = !DILocation(line: 316, column: 7, scope: !272, inlinedAt: !1224)
!1228 = !DILocation(line: 317, column: 32, scope: !272, inlinedAt: !1224)
!1229 = !DILocation(line: 317, column: 38, scope: !272, inlinedAt: !1224)
!1230 = !DILocation(line: 317, column: 53, scope: !272, inlinedAt: !1224)
!1231 = !DILocation(line: 317, column: 18, scope: !272, inlinedAt: !1224)
!1232 = !DILocation(line: 321, column: 12, scope: !272, inlinedAt: !1224)
!1233 = !DILocation(line: 323, column: 12, scope: !1234, inlinedAt: !1224)
!1234 = distinct !DILexicalBlock(scope: !272, file: !1, line: 323, column: 7)
!1235 = !DILocation(line: 323, column: 28, scope: !1234, inlinedAt: !1224)
!1236 = !DILocation(line: 323, column: 7, scope: !1234, inlinedAt: !1224)
!1237 = !DILocation(line: 323, column: 7, scope: !272, inlinedAt: !1224)
!1238 = !DILocation(line: 325, column: 57, scope: !1239, inlinedAt: !1224)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 324, column: 3)
!1240 = !{!704, !694, i64 72504}
!1241 = !DILocation(line: 325, column: 12, scope: !1239, inlinedAt: !1224)
!1242 = !DILocation(line: 326, column: 48, scope: !1239, inlinedAt: !1224)
!1243 = !DILocation(line: 326, column: 53, scope: !1239, inlinedAt: !1224)
!1244 = !{!704, !694, i64 72508}
!1245 = !DILocation(line: 326, column: 12, scope: !1239, inlinedAt: !1224)
!1246 = !DILocation(line: 326, column: 9, scope: !1239, inlinedAt: !1224)
!1247 = !DILocation(line: 327, column: 3, scope: !1239, inlinedAt: !1224)
!1248 = !DILocation(line: 330, column: 50, scope: !1249, inlinedAt: !1224)
!1249 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 329, column: 3)
!1250 = !{!704, !688, i64 72512}
!1251 = !DILocation(line: 330, column: 76, scope: !1249, inlinedAt: !1224)
!1252 = !DILocation(line: 330, column: 10, scope: !1249, inlinedAt: !1224)
!1253 = !DILocation(line: 330, column: 42, scope: !1249, inlinedAt: !1224)
!1254 = !{!704, !694, i64 72500}
!1255 = !DILocation(line: 332, column: 12, scope: !1249, inlinedAt: !1224)
!1256 = !DILocation(line: 334, column: 9, scope: !1257, inlinedAt: !1224)
!1257 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 334, column: 9)
!1258 = !DILocation(line: 334, column: 14, scope: !1257, inlinedAt: !1224)
!1259 = !DILocation(line: 334, column: 9, scope: !1249, inlinedAt: !1224)
!1260 = !DILocation(line: 336, column: 23, scope: !1261, inlinedAt: !1224)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !1, line: 335, column: 5)
!1262 = !DILocation(line: 338, column: 7, scope: !1261, inlinedAt: !1224)
!1263 = !DILocation(line: 178, column: 12, scope: !1219)
!1264 = !DILocation(line: 340, column: 21, scope: !1265, inlinedAt: !1224)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 340, column: 13)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 339, column: 7)
!1267 = !DILocation(line: 340, column: 13, scope: !1266, inlinedAt: !1224)
!1268 = !DILocation(line: 340, column: 29, scope: !1265, inlinedAt: !1224)
!1269 = !DILocation(line: 342, column: 25, scope: !1266, inlinedAt: !1224)
!1270 = !{!1271, !694, i64 0}
!1271 = !{!"DecRefPicMarking_s", !694, i64 0, !694, i64 4, !694, i64 8, !694, i64 12, !694, i64 16, !688, i64 24}
!1272 = !DILocation(line: 321, column: 7, scope: !272, inlinedAt: !1224)
!1273 = !DILocation(line: 343, column: 16, scope: !1266, inlinedAt: !1224)
!1274 = !DILocation(line: 343, column: 13, scope: !1266, inlinedAt: !1224)
!1275 = !DILocation(line: 345, column: 21, scope: !1276, inlinedAt: !1224)
!1276 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 345, column: 13)
!1277 = !DILocation(line: 347, column: 74, scope: !1278, inlinedAt: !1224)
!1278 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 346, column: 9)
!1279 = !{!1271, !694, i64 4}
!1280 = !DILocation(line: 347, column: 22, scope: !1278, inlinedAt: !1224)
!1281 = !DILocation(line: 347, column: 20, scope: !1278, inlinedAt: !1224)
!1282 = !DILocation(line: 347, column: 15, scope: !1278, inlinedAt: !1224)
!1283 = !DILocation(line: 348, column: 9, scope: !1278, inlinedAt: !1224)
!1284 = !DILocation(line: 349, column: 13, scope: !1266, inlinedAt: !1224)
!1285 = !DILocation(line: 351, column: 57, scope: !1286, inlinedAt: !1224)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 350, column: 9)
!1287 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 349, column: 13)
!1288 = !{!1271, !694, i64 8}
!1289 = !DILocation(line: 351, column: 17, scope: !1286, inlinedAt: !1224)
!1290 = !DILocation(line: 351, column: 14, scope: !1286, inlinedAt: !1224)
!1291 = !DILocation(line: 357, column: 13, scope: !1266, inlinedAt: !1224)
!1292 = !DILocation(line: 355, column: 59, scope: !1293, inlinedAt: !1224)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 354, column: 9)
!1294 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 353, column: 13)
!1295 = !{!1271, !694, i64 12}
!1296 = !DILocation(line: 355, column: 17, scope: !1293, inlinedAt: !1224)
!1297 = !DILocation(line: 355, column: 14, scope: !1293, inlinedAt: !1224)
!1298 = !DILocation(line: 356, column: 9, scope: !1293, inlinedAt: !1224)
!1299 = !DILocation(line: 359, column: 68, scope: !1300, inlinedAt: !1224)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 358, column: 9)
!1301 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 357, column: 13)
!1302 = !{!1271, !694, i64 16}
!1303 = !DILocation(line: 359, column: 18, scope: !1300, inlinedAt: !1224)
!1304 = !DILocation(line: 359, column: 15, scope: !1300, inlinedAt: !1224)
!1305 = !DILocation(line: 360, column: 9, scope: !1300, inlinedAt: !1224)
!1306 = !DILocation(line: 362, column: 28, scope: !1266, inlinedAt: !1224)
!1307 = !DILocation(line: 178, column: 9, scope: !1219)
!1308 = !DILocation(line: 178, column: 5, scope: !1219)
!1309 = !DILocation(line: 180, column: 6, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !59, file: !1, line: 180, column: 6)
!1311 = !DILocation(line: 180, column: 13, scope: !1310)
!1312 = !{!693, !694, i64 2356}
!1313 = !DILocation(line: 180, column: 24, scope: !1310)
!1314 = !DILocation(line: 180, column: 32, scope: !1310)
!1315 = !DILocation(line: 180, column: 35, scope: !1310)
!1316 = !DILocation(line: 180, column: 40, scope: !1310)
!1317 = !DILocation(line: 180, column: 44, scope: !1310)
!1318 = !DILocation(line: 180, column: 6, scope: !59)
!1319 = !DILocation(line: 182, column: 44, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 181, column: 3)
!1321 = !{!704, !694, i64 72520}
!1322 = !DILocation(line: 182, column: 12, scope: !1320)
!1323 = !DILocation(line: 182, column: 9, scope: !1320)
!1324 = !DILocation(line: 183, column: 3, scope: !1320)
!1325 = !DILocation(line: 185, column: 49, scope: !59)
!1326 = !{!708, !694, i64 4}
!1327 = !DILocation(line: 185, column: 52, scope: !59)
!1328 = !DILocation(line: 185, column: 59, scope: !59)
!1329 = !DILocation(line: 185, column: 71, scope: !59)
!1330 = !{!739, !694, i64 200}
!1331 = !DILocation(line: 185, column: 57, scope: !59)
!1332 = !DILocation(line: 185, column: 10, scope: !59)
!1333 = !DILocation(line: 185, column: 7, scope: !59)
!1334 = !DILocation(line: 187, column: 7, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !59, file: !1, line: 187, column: 7)
!1336 = !DILocation(line: 187, column: 12, scope: !1335)
!1337 = !DILocation(line: 187, column: 16, scope: !1335)
!1338 = !DILocation(line: 187, column: 7, scope: !59)
!1339 = !DILocation(line: 191, column: 14, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 190, column: 5)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !1, line: 189, column: 9)
!1342 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 188, column: 3)
!1343 = !DILocation(line: 191, column: 11, scope: !1340)
!1344 = !DILocation(line: 193, column: 41, scope: !1342)
!1345 = !DILocation(line: 193, column: 46, scope: !1342)
!1346 = !{!704, !694, i64 44}
!1347 = !DILocation(line: 193, column: 51, scope: !1342)
!1348 = !DILocation(line: 193, column: 12, scope: !1342)
!1349 = !DILocation(line: 193, column: 9, scope: !1342)
!1350 = !DILocation(line: 194, column: 3, scope: !1342)
!1351 = !DILocation(line: 196, column: 7, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !59, file: !1, line: 196, column: 7)
!1353 = !DILocation(line: 196, column: 19, scope: !1352)
!1354 = !{!739, !689, i64 220}
!1355 = !DILocation(line: 196, column: 7, scope: !59)
!1356 = !DILocation(line: 198, column: 53, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 197, column: 3)
!1358 = !DILocation(line: 198, column: 58, scope: !1357)
!1359 = !{!704, !694, i64 71984}
!1360 = !DILocation(line: 198, column: 12, scope: !1357)
!1361 = !DILocation(line: 198, column: 9, scope: !1357)
!1362 = !DILocation(line: 200, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 200, column: 9)
!1364 = !DILocation(line: 200, column: 14, scope: !1363)
!1365 = !DILocation(line: 200, column: 26, scope: !1363)
!1366 = !DILocation(line: 200, column: 9, scope: !1357)
!1367 = !DILocation(line: 202, column: 59, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 201, column: 5)
!1369 = !{!704, !694, i64 71988}
!1370 = !DILocation(line: 202, column: 75, scope: !1368)
!1371 = !DILocation(line: 202, column: 14, scope: !1368)
!1372 = !DILocation(line: 202, column: 11, scope: !1368)
!1373 = !DILocation(line: 204, column: 50, scope: !1368)
!1374 = !DILocation(line: 204, column: 55, scope: !1368)
!1375 = !{!704, !694, i64 71992}
!1376 = !DILocation(line: 204, column: 68, scope: !1368)
!1377 = !DILocation(line: 204, column: 14, scope: !1368)
!1378 = !DILocation(line: 204, column: 11, scope: !1368)
!1379 = !DILocation(line: 205, column: 5, scope: !1368)
!1380 = !DILocation(line: 209, column: 8, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !59, file: !1, line: 209, column: 8)
!1382 = !DILocation(line: 209, column: 20, scope: !1381)
!1383 = !{!739, !694, i64 60}
!1384 = !DILocation(line: 209, column: 43, scope: !1381)
!1385 = !DILocation(line: 209, column: 46, scope: !1381)
!1386 = !DILocation(line: 210, column: 17, scope: !1381)
!1387 = !{!739, !694, i64 64}
!1388 = !DILocation(line: 210, column: 41, scope: !1381)
!1389 = !DILocation(line: 212, column: 12, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 211, column: 3)
!1391 = !DILocation(line: 212, column: 17, scope: !1390)
!1392 = !{!704, !694, i64 72472}
!1393 = !DILocation(line: 212, column: 42, scope: !1390)
!1394 = !{!704, !694, i64 72468}
!1395 = !DILocation(line: 212, column: 36, scope: !1390)
!1396 = !DILocation(line: 212, column: 76, scope: !1390)
!1397 = !{!739, !694, i64 168}
!1398 = !DILocation(line: 212, column: 106, scope: !1390)
!1399 = !DILocation(line: 212, column: 56, scope: !1390)
!1400 = !DILocation(line: 212, column: 55, scope: !1390)
!1401 = !DILocation(line: 212, column: 109, scope: !1390)
!1402 = !DILocation(line: 66, column: 9, scope: !59)
!1403 = !DILocation(line: 213, column: 55, scope: !1390)
!1404 = !DILocation(line: 213, column: 51, scope: !1390)
!1405 = !DILocation(line: 213, column: 62, scope: !1390)
!1406 = !DILocation(line: 213, column: 46, scope: !1390)
!1407 = !DILocation(line: 213, column: 41, scope: !1390)
!1408 = !DILocation(line: 65, column: 7, scope: !59)
!1409 = !DILocation(line: 216, column: 89, scope: !1390)
!1410 = !{!704, !694, i64 72652}
!1411 = !DILocation(line: 216, column: 12, scope: !1390)
!1412 = !DILocation(line: 216, column: 9, scope: !1390)
!1413 = !DILocation(line: 217, column: 3, scope: !1390)
!1414 = !DILocation(line: 222, column: 6, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !59, file: !1, line: 222, column: 6)
!1416 = !DILocation(line: 222, column: 13, scope: !1415)
!1417 = !DILocation(line: 222, column: 27, scope: !1415)
!1418 = !DILocation(line: 222, column: 30, scope: !1415)
!1419 = !DILocation(line: 222, column: 35, scope: !1415)
!1420 = !DILocation(line: 222, column: 51, scope: !1415)
!1421 = !DILocation(line: 222, column: 6, scope: !59)
!1422 = !DILocation(line: 224, column: 39, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 223, column: 3)
!1424 = !{!704, !694, i64 20}
!1425 = !DILocation(line: 224, column: 12, scope: !1423)
!1426 = !DILocation(line: 224, column: 9, scope: !1423)
!1427 = !DILocation(line: 225, column: 3, scope: !1423)
!1428 = !DILocation(line: 227, column: 3, scope: !59)
!1429 = !DILocation(line: 476, column: 7, scope: !253)
!1430 = !DILocation(line: 478, column: 11, scope: !253)
!1431 = !DILocation(line: 478, column: 16, scope: !253)
!1432 = !DILocation(line: 478, column: 3, scope: !253)
!1433 = !DILocation(line: 493, column: 5, scope: !732)
!1434 = !DILocation(line: 498, column: 1, scope: !253)
!1435 = !DILocation(line: 529, column: 29, scope: !256)
!1436 = !DILocation(line: 531, column: 32, scope: !256)
!1437 = !DILocation(line: 531, column: 33, scope: !256)
!1438 = !DILocation(line: 531, column: 38, scope: !256)
!1439 = !DILocation(line: 531, column: 53, scope: !256)
!1440 = !DILocation(line: 531, column: 18, scope: !256)
!1441 = !DILocation(line: 532, column: 3, scope: !256)
!1442 = !DILocation(line: 532, column: 26, scope: !256)
!1443 = !DILocation(line: 534, column: 7, scope: !256)
!1444 = !DILocation(line: 536, column: 3, scope: !256)
!1445 = !{!693, !694, i64 2360}
!1446 = !DILocation(line: 537, column: 3, scope: !256)
!1447 = !{!708, !694, i64 16}
!1448 = !DILocation(line: 539, column: 8, scope: !256)
!1449 = !DILocation(line: 539, column: 13, scope: !256)
!1450 = !{!1451, !694, i64 0}
!1451 = !{!"syntaxelement", !694, i64 0, !694, i64 4, !694, i64 8, !694, i64 12, !694, i64 16, !694, i64 20, !694, i64 24, !694, i64 28, !688, i64 32, !688, i64 40}
!1452 = !DILocation(line: 540, column: 8, scope: !256)
!1453 = !DILocation(line: 540, column: 16, scope: !256)
!1454 = !{!1451, !688, i64 32}
!1455 = !DILocation(line: 541, column: 8, scope: !256)
!1456 = !DILocation(line: 541, column: 16, scope: !256)
!1457 = !{!1451, !694, i64 8}
!1458 = !DILocation(line: 546, column: 22, scope: !256)
!1459 = !DILocation(line: 546, column: 8, scope: !256)
!1460 = !DILocation(line: 546, column: 15, scope: !256)
!1461 = !{!1451, !694, i64 4}
!1462 = !DILocation(line: 532, column: 17, scope: !256)
!1463 = !DILocation(line: 547, column: 10, scope: !256)
!1464 = !DILocation(line: 549, column: 6, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !256, file: !1, line: 549, column: 6)
!1466 = !DILocation(line: 549, column: 18, scope: !1465)
!1467 = !{!739, !689, i64 228}
!1468 = !DILocation(line: 549, column: 6, scope: !256)
!1469 = !DILocation(line: 552, column: 17, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 550, column: 3)
!1471 = !DILocation(line: 552, column: 22, scope: !1470)
!1472 = !DILocation(line: 552, column: 36, scope: !1470)
!1473 = !{!708, !694, i64 0}
!1474 = !DILocation(line: 552, column: 15, scope: !1470)
!1475 = !DILocation(line: 553, column: 10, scope: !1470)
!1476 = !DILocation(line: 553, column: 7, scope: !1470)
!1477 = !DILocation(line: 554, column: 3, scope: !1470)
!1478 = !DILocation(line: 558, column: 1, scope: !256)
