; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parset.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
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
%struct.colocated_params = type { i32, i32, i32, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, [6 x [33 x i64]], i16***, i64***, i16****, i8**, i32, i8** }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@input = external global %struct.InputParameters*
@PicParSet = common global [256 x %struct.pic_parameter_set_rbsp_t] zeroinitializer, align 16
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@GenerateSequenceParameterSet.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@GenerateSequenceParameterSet.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@__func__.GenerateSequenceParameterSet = private unnamed_addr constant [29 x i8] c"GenerateSequenceParameterSet\00", align 1
@.str = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parset.c\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"sps != NULL\00", align 1
@img = external global %struct.ImageParameters*
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@Co_located = external global %struct.colocated_params*
@.str2 = private unnamed_addr constant [46 x i8] c"automatic frame cropping (width) not possible\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"automatic frame cropping (height) not possible\00", align 1
@__func__.GeneratePictureParameterSet = private unnamed_addr constant [28 x i8] c"GeneratePictureParameterSet\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"0==1\00", align 1
@ZZ_SCAN = internal unnamed_addr constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16
@ZZ_SCAN8 = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@.str6 = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1
@__func__.GenerateSeq_parameter_set_rbsp = private unnamed_addr constant [31 x i8] c"GenerateSeq_parameter_set_rbsp\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"rbsp != NULL\00", align 1
@.str8 = private unnamed_addr constant [26 x i8] c"SeqParameterSet:partition\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"SeqParameterSet:bitstream\00", align 1
@.str10 = private unnamed_addr constant [17 x i8] c"SPS: profile_idc\00", align 1
@.str11 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set0_flag\00", align 1
@.str12 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set1_flag\00", align 1
@.str13 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set2_flag\00", align 1
@.str14 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set3_flag\00", align 1
@.str15 = private unnamed_addr constant [25 x i8] c"SPS: reserved_zero_4bits\00", align 1
@.str16 = private unnamed_addr constant [15 x i8] c"SPS: level_idc\00", align 1
@.str17 = private unnamed_addr constant [26 x i8] c"SPS: seq_parameter_set_id\00", align 1
@.str18 = private unnamed_addr constant [23 x i8] c"SPS: chroma_format_idc\00", align 1
@.str19 = private unnamed_addr constant [28 x i8] c"SPS: residue_transform_flag\00", align 1
@.str20 = private unnamed_addr constant [27 x i8] c"SPS: bit_depth_luma_minus8\00", align 1
@.str21 = private unnamed_addr constant [29 x i8] c"SPS: bit_depth_chroma_minus8\00", align 1
@.str22 = private unnamed_addr constant [34 x i8] c"SPS: lossless_qpprime_y_zero_flag\00", align 1
@.str23 = private unnamed_addr constant [37 x i8] c"SPS: seq_scaling_matrix_present_flag\00", align 1
@.str24 = private unnamed_addr constant [35 x i8] c"SPS: seq_scaling_list_present_flag\00", align 1
@ScalingList4x4input = external global [6 x [16 x i16]]
@ScalingList4x4 = external global [6 x [16 x i16]]
@UseDefaultScalingMatrix4x4Flag = external global [6 x i16]
@ScalingList8x8input = external global [2 x [64 x i16]]
@ScalingList8x8 = external global [2 x [64 x i16]]
@UseDefaultScalingMatrix8x8Flag = external global [2 x i16]
@.str25 = private unnamed_addr constant [31 x i8] c"SPS: log2_max_frame_num_minus4\00", align 1
@.str26 = private unnamed_addr constant [24 x i8] c"SPS: pic_order_cnt_type\00", align 1
@.str27 = private unnamed_addr constant [39 x i8] c"SPS: log2_max_pic_order_cnt_lsb_minus4\00", align 1
@.str28 = private unnamed_addr constant [38 x i8] c"SPS: delta_pic_order_always_zero_flag\00", align 1
@.str29 = private unnamed_addr constant [28 x i8] c"SPS: offset_for_non_ref_pic\00", align 1
@.str30 = private unnamed_addr constant [36 x i8] c"SPS: offset_for_top_to_bottom_field\00", align 1
@.str31 = private unnamed_addr constant [43 x i8] c"SPS: num_ref_frames_in_pic_order_cnt_cycle\00", align 1
@.str32 = private unnamed_addr constant [26 x i8] c"SPS: offset_for_ref_frame\00", align 1
@.str33 = private unnamed_addr constant [20 x i8] c"SPS: num_ref_frames\00", align 1
@.str34 = private unnamed_addr constant [42 x i8] c"SPS: gaps_in_frame_num_value_allowed_flag\00", align 1
@.str35 = private unnamed_addr constant [29 x i8] c"SPS: pic_width_in_mbs_minus1\00", align 1
@.str36 = private unnamed_addr constant [36 x i8] c"SPS: pic_height_in_map_units_minus1\00", align 1
@.str37 = private unnamed_addr constant [25 x i8] c"SPS: frame_mbs_only_flag\00", align 1
@.str38 = private unnamed_addr constant [34 x i8] c"SPS: mb_adaptive_frame_field_flag\00", align 1
@.str39 = private unnamed_addr constant [31 x i8] c"SPS: direct_8x8_inference_flag\00", align 1
@.str40 = private unnamed_addr constant [25 x i8] c"SPS: frame_cropping_flag\00", align 1
@.str41 = private unnamed_addr constant [37 x i8] c"SPS: frame_cropping_rect_left_offset\00", align 1
@.str42 = private unnamed_addr constant [38 x i8] c"SPS: frame_cropping_rect_right_offset\00", align 1
@.str43 = private unnamed_addr constant [36 x i8] c"SPS: frame_cropping_rect_top_offset\00", align 1
@.str44 = private unnamed_addr constant [39 x i8] c"SPS: frame_cropping_rect_bottom_offset\00", align 1
@.str45 = private unnamed_addr constant [33 x i8] c"SPS: vui_parameters_present_flag\00", align 1
@__func__.GeneratePic_parameter_set_rbsp = private unnamed_addr constant [31 x i8] c"GeneratePic_parameter_set_rbsp\00", align 1
@.str46 = private unnamed_addr constant [26 x i8] c"PicParameterSet:partition\00", align 1
@.str47 = private unnamed_addr constant [26 x i8] c"PicParameterSet:bitstream\00", align 1
@.str48 = private unnamed_addr constant [26 x i8] c"PPS: pic_parameter_set_id\00", align 1
@.str49 = private unnamed_addr constant [26 x i8] c"PPS: seq_parameter_set_id\00", align 1
@.str50 = private unnamed_addr constant [30 x i8] c"PPS: entropy_coding_mode_flag\00", align 1
@.str51 = private unnamed_addr constant [28 x i8] c"PPS: pic_order_present_flag\00", align 1
@.str52 = private unnamed_addr constant [29 x i8] c"PPS: num_slice_groups_minus1\00", align 1
@.str53 = private unnamed_addr constant [26 x i8] c"PPS: slice_group_map_type\00", align 1
@.str54 = private unnamed_addr constant [26 x i8] c"PPS: run_length_minus1[i]\00", align 1
@.str55 = private unnamed_addr constant [17 x i8] c"PPS: top_left[i]\00", align 1
@.str56 = private unnamed_addr constant [21 x i8] c"PPS: bottom_right[i]\00", align 1
@.str57 = private unnamed_addr constant [39 x i8] c"PPS: slice_group_change_direction_flag\00", align 1
@.str58 = private unnamed_addr constant [36 x i8] c"PPS: slice_group_change_rate_minus1\00", align 1
@.str59 = private unnamed_addr constant [34 x i8] c"PPS: pic_size_in_map_units_minus1\00", align 1
@.str60 = private unnamed_addr constant [24 x i8] c"PPS: >slice_group_id[i]\00", align 1
@.str61 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l0_active_minus1\00", align 1
@.str62 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l1_active_minus1\00", align 1
@.str63 = private unnamed_addr constant [24 x i8] c"PPS: weighted_pred_flag\00", align 1
@.str64 = private unnamed_addr constant [25 x i8] c"PPS: weighted_bipred_idc\00", align 1
@.str65 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qp_minus26\00", align 1
@.str66 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qs_minus26\00", align 1
@.str67 = private unnamed_addr constant [28 x i8] c"PPS: chroma_qp_index_offset\00", align 1
@.str68 = private unnamed_addr constant [44 x i8] c"PPS: deblocking_filter_control_present_flag\00", align 1
@.str69 = private unnamed_addr constant [33 x i8] c"PPS: constrained_intra_pred_flag\00", align 1
@.str70 = private unnamed_addr constant [36 x i8] c"PPS: redundant_pic_cnt_present_flag\00", align 1
@.str71 = private unnamed_addr constant [29 x i8] c"PPS: transform_8x8_mode_flag\00", align 1
@.str72 = private unnamed_addr constant [37 x i8] c"PPS: pic_scaling_matrix_present_flag\00", align 1
@.str73 = private unnamed_addr constant [35 x i8] c"PPS: pic_scaling_list_present_flag\00", align 1
@.str74 = private unnamed_addr constant [35 x i8] c"PPS: second_chroma_qp_index_offset\00", align 1
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
@SeqParSet = common global [32 x %struct.seq_parameter_set_rbsp_t] zeroinitializer, align 16
@.str76 = private unnamed_addr constant [36 x i8] c"VUI: aspect_ratio_info_present_flag\00", align 1
@.str77 = private unnamed_addr constant [32 x i8] c"VUI: overscan_info_present_flag\00", align 1
@.str78 = private unnamed_addr constant [36 x i8] c"VUI: video_signal_type_present_flag\00", align 1
@.str79 = private unnamed_addr constant [18 x i8] c"VUI: video format\00", align 1
@.str80 = private unnamed_addr constant [27 x i8] c"VUI: video_full_range_flag\00", align 1
@.str81 = private unnamed_addr constant [36 x i8] c"VUI: color_description_present_flag\00", align 1
@.str82 = private unnamed_addr constant [22 x i8] c"VUI: colour primaries\00", align 1
@.str83 = private unnamed_addr constant [30 x i8] c"VUI: transfer characteristics\00", align 1
@.str84 = private unnamed_addr constant [25 x i8] c"VUI: matrix coefficients\00", align 1
@.str85 = private unnamed_addr constant [34 x i8] c"VUI: chroma_loc_info_present_flag\00", align 1
@.str86 = private unnamed_addr constant [30 x i8] c"VUI: timing_info_present_flag\00", align 1
@.str87 = private unnamed_addr constant [37 x i8] c"VUI: nal_hrd_parameters_present_flag\00", align 1
@.str88 = private unnamed_addr constant [37 x i8] c"VUI: vcl_hrd_parameters_present_flag\00", align 1
@.str89 = private unnamed_addr constant [28 x i8] c"VUI: pic_struc_present_flag\00", align 1
@.str90 = private unnamed_addr constant [32 x i8] c"VUI: bitstream_restriction_flag\00", align 1
@str = private unnamed_addr constant [48 x i8] c"Parset.c: slice_group_map_type invalid, default\00"
@str92 = private unnamed_addr constant [75 x i8] c"Sequence Parameter VUI not yet implemented, this should never happen, exit\00"
@str93 = private unnamed_addr constant [58 x i8] c"test: writing Sequence Parameter VUI to signal RGB format\00"

; Function Attrs: nounwind optsize ssp uwtable
define void @GenerateParameterSets() #0 {
  tail call void @llvm.dbg.value(metadata %struct.seq_parameter_set_rbsp_t* null, i64 0, metadata !26, metadata !699), !dbg !700
  tail call void @llvm.dbg.value(metadata %struct.pic_parameter_set_rbsp_t* null, i64 0, metadata !126, metadata !699), !dbg !701
  %1 = tail call %struct.seq_parameter_set_rbsp_t* (...)* @AllocSPS() #6, !dbg !702
  tail call void @llvm.dbg.value(metadata %struct.seq_parameter_set_rbsp_t* %1, i64 0, metadata !26, metadata !699), !dbg !700
  %2 = tail call %struct.pic_parameter_set_rbsp_t* (...)* @AllocPPS() #6, !dbg !703
  tail call void @llvm.dbg.value(metadata %struct.pic_parameter_set_rbsp_t* %2, i64 0, metadata !126, metadata !699), !dbg !701
  tail call void @GenerateSequenceParameterSet(%struct.seq_parameter_set_rbsp_t* %1, i32 undef) #7, !dbg !704
  %3 = load %struct.InputParameters** @input, align 8, !dbg !705, !tbaa !707
  %4 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 15, !dbg !711
  %5 = load i32* %4, align 4, !dbg !711, !tbaa !712
  %6 = icmp eq i32 %5, 0, !dbg !705
  %7 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %1, i64 0, i32 1, !dbg !716
  %8 = load i32* %7, align 4, !dbg !716, !tbaa !719
  %9 = icmp ugt i32 %8, 99, !dbg !723
  br i1 %6, label %37, label %10, !dbg !724

; <label>:10                                      ; preds = %0
  br i1 %9, label %11, label %27, !dbg !725

; <label>:11                                      ; preds = %10
  %12 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 140, !dbg !726
  %13 = load i32* %12, align 4, !dbg !726, !tbaa !728
  %14 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 141, !dbg !729
  %15 = load i32* %14, align 4, !dbg !729, !tbaa !730
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %2, %struct.seq_parameter_set_rbsp_t* %1, i32 0, i32 0, i32 0, i32 %13, i32 %15) #7, !dbg !731
  %16 = bitcast %struct.pic_parameter_set_rbsp_t* %2 to i8*, !dbg !732
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %16, i64 240, i32 8, i1 false), !dbg !732
  %17 = load %struct.InputParameters** @input, align 8, !dbg !733, !tbaa !707
  %18 = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 140, !dbg !734
  %19 = load i32* %18, align 4, !dbg !734, !tbaa !728
  %20 = getelementptr inbounds %struct.InputParameters* %17, i64 0, i32 141, !dbg !735
  %21 = load i32* %20, align 4, !dbg !735, !tbaa !730
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %2, %struct.seq_parameter_set_rbsp_t* %1, i32 1, i32 1, i32 1, i32 %19, i32 %21) #7, !dbg !736
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1) to i8*), i8* %16, i64 240, i32 8, i1 false), !dbg !737
  %22 = load %struct.InputParameters** @input, align 8, !dbg !738, !tbaa !707
  %23 = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 140, !dbg !739
  %24 = load i32* %23, align 4, !dbg !739, !tbaa !728
  %25 = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 141, !dbg !740
  %26 = load i32* %25, align 4, !dbg !740, !tbaa !730
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %2, %struct.seq_parameter_set_rbsp_t* %1, i32 2, i32 1, i32 2, i32 %24, i32 %26) #7, !dbg !741
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 2) to i8*), i8* %16, i64 240, i32 8, i1 false), !dbg !742
  br label %52, !dbg !743

; <label>:27                                      ; preds = %10
  %28 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 77, !dbg !744
  %29 = load i32* %28, align 4, !dbg !744, !tbaa !746
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %2, %struct.seq_parameter_set_rbsp_t* %1, i32 0, i32 0, i32 0, i32 %29, i32 0) #7, !dbg !747
  %30 = bitcast %struct.pic_parameter_set_rbsp_t* %2 to i8*, !dbg !748
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %30, i64 240, i32 8, i1 false), !dbg !748
  %31 = load %struct.InputParameters** @input, align 8, !dbg !749, !tbaa !707
  %32 = getelementptr inbounds %struct.InputParameters* %31, i64 0, i32 77, !dbg !750
  %33 = load i32* %32, align 4, !dbg !750, !tbaa !746
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %2, %struct.seq_parameter_set_rbsp_t* %1, i32 1, i32 1, i32 1, i32 %33, i32 0) #7, !dbg !751
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1) to i8*), i8* %30, i64 240, i32 8, i1 false), !dbg !752
  %34 = load %struct.InputParameters** @input, align 8, !dbg !753, !tbaa !707
  %35 = getelementptr inbounds %struct.InputParameters* %34, i64 0, i32 77, !dbg !754
  %36 = load i32* %35, align 4, !dbg !754, !tbaa !746
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %2, %struct.seq_parameter_set_rbsp_t* %1, i32 2, i32 1, i32 2, i32 %36, i32 0) #7, !dbg !755
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 2) to i8*), i8* %30, i64 240, i32 8, i1 false), !dbg !756
  br label %52

; <label>:37                                      ; preds = %0
  %38 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 46, !dbg !757
  %39 = load i32* %38, align 4, !dbg !757, !tbaa !760
  %40 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 47, !dbg !761
  %41 = load i32* %40, align 4, !dbg !761, !tbaa !762
  br i1 %9, label %42, label %47, !dbg !763

; <label>:42                                      ; preds = %37
  %43 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 140, !dbg !764
  %44 = load i32* %43, align 4, !dbg !764, !tbaa !728
  %45 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 141, !dbg !765
  %46 = load i32* %45, align 4, !dbg !765, !tbaa !730
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %2, %struct.seq_parameter_set_rbsp_t* %1, i32 0, i32 %39, i32 %41, i32 %44, i32 %46) #7, !dbg !766
  br label %50, !dbg !766

; <label>:47                                      ; preds = %37
  %48 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 77, !dbg !767
  %49 = load i32* %48, align 4, !dbg !767, !tbaa !746
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %2, %struct.seq_parameter_set_rbsp_t* %1, i32 0, i32 %39, i32 %41, i32 %49, i32 0) #7, !dbg !768
  br label %50

; <label>:50                                      ; preds = %47, %42
  %51 = bitcast %struct.pic_parameter_set_rbsp_t* %2 to i8*, !dbg !769
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %51, i64 240, i32 8, i1 false), !dbg !769
  br label %52

; <label>:52                                      ; preds = %11, %27, %50
  store %struct.seq_parameter_set_rbsp_t* %1, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !770, !tbaa !707
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !771, !tbaa !707
  ret void, !dbg !772
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare %struct.seq_parameter_set_rbsp_t* @AllocSPS(...) #2

; Function Attrs: optsize
declare %struct.pic_parameter_set_rbsp_t* @AllocPPS(...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @GenerateSequenceParameterSet(%struct.seq_parameter_set_rbsp_t* %sps, i32 %SPS_id) #0 {
  tail call void @llvm.dbg.value(metadata %struct.seq_parameter_set_rbsp_t* %sps, i64 0, metadata !204, metadata !699), !dbg !773
  tail call void @llvm.dbg.value(metadata i32 %SPS_id, i64 0, metadata !205, metadata !699), !dbg !774
  tail call void @llvm.dbg.declare(metadata [4 x i32]* @GenerateSequenceParameterSet.SubWidthC, metadata !207, metadata !699), !dbg !775
  tail call void @llvm.dbg.declare(metadata [4 x i32]* @GenerateSequenceParameterSet.SubHeightC, metadata !211, metadata !699), !dbg !776
  %1 = load %struct.InputParameters** @input, align 8, !dbg !777, !tbaa !707
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 0, !dbg !779
  %3 = load i32* %2, align 4, !dbg !779, !tbaa !780
  %switch.tableidx = add i32 %3, -100, !dbg !781
  %4 = icmp ult i32 %switch.tableidx, 45, !dbg !781
  br i1 %4, label %switch.lookup, label %6, !dbg !781

switch.lookup:                                    ; preds = %0
  %switch.cast = zext i32 %switch.tableidx to i45, !dbg !781
  %switch.downshift = lshr i45 -17592181849087, %switch.cast, !dbg !781
  %5 = and i45 %switch.downshift, 1, !dbg !781
  %switch.masked = icmp ne i45 %5, 0, !dbg !781
  br label %6, !dbg !781

; <label>:6                                       ; preds = %0, %switch.lookup
  %7 = phi i1 [ %switch.masked, %switch.lookup ], [ false, %0 ]
  %8 = icmp eq %struct.seq_parameter_set_rbsp_t* %sps, null, !dbg !782
  br i1 %8, label %9, label %10, !dbg !782, !prof !783

; <label>:9                                       ; preds = %6
  tail call void @__assert_rtn(i8* getelementptr inbounds ([29 x i8]* @__func__.GenerateSequenceParameterSet, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 217, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !782
  unreachable, !dbg !782

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 1, !dbg !784
  store i32 %3, i32* %11, align 4, !dbg !785, !tbaa !719
  %12 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 1, !dbg !786
  %13 = load i32* %12, align 4, !dbg !786, !tbaa !788
  %14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 6, !dbg !789
  store i32 %13, i32* %14, align 4, !dbg !790, !tbaa !791
  %15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 2, !dbg !792
  %16 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 7, !dbg !793
  store i32 0, i32* %16, align 4, !dbg !794, !tbaa !795
  %17 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 135, !dbg !796
  %18 = bitcast i32* %15 to i8*, !dbg !796
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 16, i32 4, i1 false), !dbg !797
  %19 = load i32* %17, align 4, !dbg !796, !tbaa !798
  %20 = add nsw i32 %19, -8, !dbg !799
  %21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 11, !dbg !800
  store i32 %20, i32* %21, align 4, !dbg !801, !tbaa !802
  %22 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 136, !dbg !803
  %23 = load i32* %22, align 4, !dbg !803, !tbaa !804
  %24 = add nsw i32 %23, -8, !dbg !805
  %25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 12, !dbg !806
  store i32 %24, i32* %25, align 4, !dbg !807, !tbaa !808
  %26 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 142, !dbg !809
  %27 = load i32* %26, align 4, !dbg !809, !tbaa !810
  %28 = icmp eq i32 %3, 144, !dbg !811
  %29 = zext i1 %28 to i32, !dbg !811
  %30 = and i32 %29, %27, !dbg !812
  %31 = load %struct.ImageParameters** @img, align 8, !dbg !813, !tbaa !707
  %32 = getelementptr inbounds %struct.ImageParameters* %31, i64 0, i32 160, !dbg !814
  store i32 %30, i32* %32, align 4, !dbg !815, !tbaa !816
  %33 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 143, !dbg !819
  %34 = load i32* %33, align 4, !dbg !819, !tbaa !820
  %35 = getelementptr inbounds %struct.ImageParameters* %31, i64 0, i32 164, !dbg !821
  store i32 %34, i32* %35, align 4, !dbg !822, !tbaa !823
  %36 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !824, !tbaa !825
  %37 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 13, !dbg !826
  store i32 %36, i32* %37, align 4, !dbg !827, !tbaa !828
  %38 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !829, !tbaa !825
  %39 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 15, !dbg !830
  store i32 %38, i32* %39, align 4, !dbg !831, !tbaa !832
  %40 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 120, !dbg !833
  %41 = load i32* %40, align 4, !dbg !833, !tbaa !834
  %42 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 14, !dbg !835
  store i32 %41, i32* %42, align 4, !dbg !836, !tbaa !837
  %43 = getelementptr inbounds %struct.ImageParameters* %31, i64 0, i32 95, !dbg !838
  %44 = getelementptr inbounds %struct.ImageParameters* %31, i64 0, i32 92, !dbg !839
  %45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 16, !dbg !840
  %46 = bitcast i32* %44 to <4 x i32>*, !dbg !839
  %47 = load <4 x i32>* %46, align 4, !dbg !839, !tbaa !825
  %48 = bitcast i32* %45 to <4 x i32>*, !dbg !841
  store <4 x i32> %47, <4 x i32>* %48, align 4, !dbg !841, !tbaa !842
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !206, metadata !699), !dbg !843
  %49 = extractelement <4 x i32> %47, i32 3, !dbg !844
  %50 = icmp eq i32 %49, 0, !dbg !844
  br i1 %50, label %._crit_edge, label %.lr.ph, !dbg !847

.lr.ph:                                           ; preds = %10, %.lr.ph
  %i.04 = phi i32 [ %55, %.lr.ph ], [ 0, %10 ]
  %51 = zext i32 %i.04 to i64, !dbg !848
  %52 = getelementptr inbounds %struct.ImageParameters* %31, i64 0, i32 96, i64 %51, !dbg !848
  %53 = load i32* %52, align 4, !dbg !848, !tbaa !825
  %54 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 20, i64 %51, !dbg !850
  store i32 %53, i32* %54, align 4, !dbg !851, !tbaa !825
  %55 = add nuw i32 %i.04, 1, !dbg !852
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !206, metadata !699), !dbg !843
  %56 = load i32* %43, align 4, !dbg !853, !tbaa !854
  %57 = icmp ult i32 %55, %56, !dbg !844
  br i1 %57, label %.lr.ph, label %._crit_edge, !dbg !847

._crit_edge:                                      ; preds = %.lr.ph, %10
  %58 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 9, !dbg !855
  %59 = load i32* %58, align 4, !dbg !855, !tbaa !856
  %60 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 21, !dbg !857
  store i32 %59, i32* %60, align 4, !dbg !858, !tbaa !859
  %61 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 22, !dbg !860
  store i32 0, i32* %61, align 4, !dbg !861, !tbaa !862
  %62 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 91, !dbg !863
  %63 = load i32* %62, align 4, !dbg !863, !tbaa !864
  %64 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 92, !dbg !865
  %65 = load i32* %64, align 4, !dbg !865, !tbaa !866
  %66 = or i32 %63, %65, !dbg !867
  %67 = icmp eq i32 %66, 0, !dbg !867
  %68 = zext i1 %67 to i32, !dbg !868
  %69 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25, !dbg !869
  store i32 %68, i32* %69, align 4, !dbg !870, !tbaa !871
  %70 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 16, !dbg !872
  %71 = load i32* %70, align 4, !dbg !872, !tbaa !873
  %72 = getelementptr inbounds %struct.ImageParameters* %31, i64 0, i32 165, !dbg !874
  %73 = load i32* %72, align 4, !dbg !874, !tbaa !875
  %74 = add nsw i32 %73, %71, !dbg !876
  %75 = sdiv i32 %74, 16, !dbg !877
  %76 = add nsw i32 %75, -1, !dbg !878
  %77 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 23, !dbg !879
  store i32 %76, i32* %77, align 4, !dbg !880, !tbaa !881
  %78 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 17, !dbg !882
  %79 = load i32* %78, align 4, !dbg !882, !tbaa !883
  %80 = getelementptr inbounds %struct.ImageParameters* %31, i64 0, i32 166, !dbg !884
  %81 = load i32* %80, align 4, !dbg !884, !tbaa !885
  %82 = add nsw i32 %81, %79, !dbg !886
  %83 = sdiv i32 %82, 16, !dbg !887
  %84 = sub nsw i32 2, %68, !dbg !888
  %85 = udiv i32 %83, %84, !dbg !889
  %86 = add i32 %85, -1, !dbg !890
  %87 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 24, !dbg !891
  store i32 %86, i32* %87, align 4, !dbg !892, !tbaa !893
  %88 = icmp ne i32 %65, 0, !dbg !894
  %89 = zext i1 %88 to i32, !dbg !894
  %90 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 26, !dbg !895
  store i32 %89, i32* %90, align 4, !dbg !896, !tbaa !897
  %91 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 38, !dbg !898
  %92 = load i32* %91, align 4, !dbg !898, !tbaa !899
  %93 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 27, !dbg !900
  store i32 %92, i32* %93, align 4, !dbg !901, !tbaa !902
  %94 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 139, !dbg !903
  %95 = load i32* %94, align 4, !dbg !903, !tbaa !904
  %.phi.trans.insert11 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 18
  %.pre12 = load i32* %.phi.trans.insert11, align 4, !dbg !905, !tbaa !906
  %96 = icmp eq i32 %.pre12, 3, !dbg !907
  %not. = icmp ne i32 %95, 0, !dbg !908
  %97 = and i1 %96, %not., !dbg !908
  %98 = zext i1 %97 to i32, !dbg !908
  %99 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 33, !dbg !909
  store i32 %98, i32* %99, align 4, !dbg !910, !tbaa !911
  %100 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 8, !dbg !912
  store i32 %.pre12, i32* %100, align 4, !dbg !913, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %104, i64 0, metadata !216, metadata !699), !dbg !915
  %101 = shl i32 %76, 4, !dbg !916
  %102 = add i32 %101, 16, !dbg !916
  tail call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !217, metadata !699), !dbg !917
  %103 = shl i32 %86, 4, !dbg !918
  %104 = add i32 %103, 16, !dbg !918
  %105 = mul i32 %104, %84, !dbg !919
  tail call void @llvm.dbg.value(metadata i32 %105, i64 0, metadata !218, metadata !699), !dbg !920
  %106 = tail call %struct.colocated_params* @alloc_colocated(i32 %102, i32 %105, i32 %89) #6, !dbg !921
  store %struct.colocated_params* %106, %struct.colocated_params** @Co_located, align 8, !dbg !922, !tbaa !707
  br i1 %7, label %107, label %.loopexit1, !dbg !923

; <label>:107                                     ; preds = %._crit_edge
  %108 = load %struct.InputParameters** @input, align 8, !dbg !924, !tbaa !707
  %109 = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 132, !dbg !927
  %110 = load i32* %109, align 4, !dbg !927, !tbaa !928
  %111 = and i32 %110, 1, !dbg !929
  %112 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 9, !dbg !930
  store i32 %111, i32* %112, align 4, !dbg !931, !tbaa !932
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !206, metadata !699), !dbg !843
  %113 = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 123, !dbg !933
  br label %114, !dbg !940

; <label>:114                                     ; preds = %131, %107
  %indvars.iv = phi i64 [ 0, %107 ], [ %indvars.iv.next, %131 ]
  %115 = icmp ult i64 %indvars.iv, 6, !dbg !941
  br i1 %115, label %116, label %121, !dbg !942

; <label>:116                                     ; preds = %114
  %117 = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 133, i64 %indvars.iv, !dbg !943
  %118 = load i32* %117, align 4, !dbg !943, !tbaa !825
  %119 = and i32 %118, 1, !dbg !944
  %120 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv, !dbg !945
  store i32 %119, i32* %120, align 4, !dbg !946, !tbaa !825
  br label %131, !dbg !945

; <label>:121                                     ; preds = %114
  %122 = load i32* %113, align 4, !dbg !933, !tbaa !947
  %123 = icmp eq i32 %122, 0, !dbg !948
  br i1 %123, label %129, label %124, !dbg !949

; <label>:124                                     ; preds = %121
  %125 = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 133, i64 %indvars.iv, !dbg !950
  %126 = load i32* %125, align 4, !dbg !950, !tbaa !825
  %127 = and i32 %126, 1, !dbg !951
  %128 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv, !dbg !952
  store i32 %127, i32* %128, align 4, !dbg !953, !tbaa !825
  br label %131, !dbg !952

; <label>:129                                     ; preds = %121
  %130 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv, !dbg !954
  store i32 0, i32* %130, align 4, !dbg !955, !tbaa !825
  br label %131

; <label>:131                                     ; preds = %116, %129, %124
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !940
  %exitcond = icmp eq i64 %indvars.iv.next, 8, !dbg !940
  br i1 %exitcond, label %.loopexit, label %114, !dbg !940

.loopexit1:                                       ; preds = %._crit_edge
  %132 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 9, !dbg !956
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !206, metadata !699), !dbg !843
  %133 = bitcast i32* %132 to i8*
  call void @llvm.memset.p0i8.i64(i8* %133, i8 0, i64 36, i32 4, i1 false), !dbg !958
  br label %.loopexit

.loopexit:                                        ; preds = %131, %.loopexit1
  %134 = load %struct.ImageParameters** @img, align 8, !dbg !961, !tbaa !707
  %135 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 165, !dbg !963
  %136 = load i32* %135, align 4, !dbg !963, !tbaa !875
  %137 = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 166, !dbg !964
  %138 = load i32* %137, align 4, !dbg !964, !tbaa !885
  %139 = or i32 %136, %138, !dbg !965
  %140 = icmp eq i32 %139, 0, !dbg !965
  %141 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 28, !dbg !966
  br i1 %140, label %169, label %._crit_edge13, !dbg !965

._crit_edge13:                                    ; preds = %.loopexit
  store i32 1, i32* %141, align 4, !dbg !968, !tbaa !970
  %142 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 29, !dbg !971
  store i32 0, i32* %142, align 4, !dbg !972, !tbaa !973
  %143 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 31, !dbg !974
  store i32 0, i32* %143, align 4, !dbg !975, !tbaa !976
  %144 = load i32* %100, align 4, !dbg !977, !tbaa !914
  %145 = zext i32 %144 to i64, !dbg !978
  %146 = getelementptr inbounds [4 x i32]* @GenerateSequenceParameterSet.SubWidthC, i64 0, i64 %145, !dbg !978
  %147 = load i32* %146, align 4, !dbg !978, !tbaa !825
  %148 = sdiv i32 %136, %147, !dbg !979
  %149 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 30, !dbg !980
  store i32 %148, i32* %149, align 4, !dbg !981, !tbaa !982
  %150 = getelementptr inbounds [4 x i32]* @GenerateSequenceParameterSet.SubHeightC, i64 0, i64 %145, !dbg !983
  %151 = load i32* %150, align 4, !dbg !983, !tbaa !825
  %152 = load i32* %69, align 4, !dbg !984, !tbaa !871
  %153 = sub i32 2, %152, !dbg !985
  %154 = mul i32 %153, %151, !dbg !986
  %155 = udiv i32 %138, %154, !dbg !987
  %156 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 32, !dbg !988
  store i32 %155, i32* %156, align 4, !dbg !989, !tbaa !990
  %157 = srem i32 %136, %147, !dbg !991
  %158 = icmp eq i32 %157, 0, !dbg !991
  br i1 %158, label %160, label %159, !dbg !993

; <label>:159                                     ; preds = %._crit_edge13
  tail call void @error(i8* getelementptr inbounds ([46 x i8]* @.str2, i64 0, i64 0), i32 500) #6, !dbg !994
  %.pre16 = load %struct.ImageParameters** @img, align 8, !dbg !996, !tbaa !707
  %.phi.trans.insert17 = getelementptr inbounds %struct.ImageParameters* %.pre16, i64 0, i32 166
  %.pre18 = load i32* %.phi.trans.insert17, align 4, !dbg !998, !tbaa !885
  %.pre19 = load i32* %100, align 4, !dbg !999, !tbaa !914
  %.phi.trans.insert20 = zext i32 %.pre19 to i64
  %.phi.trans.insert21 = getelementptr inbounds [4 x i32]* @GenerateSequenceParameterSet.SubHeightC, i64 0, i64 %.phi.trans.insert20
  %.pre22 = load i32* %.phi.trans.insert21, align 4, !dbg !1000, !tbaa !825
  %.pre23 = load i32* %69, align 4, !dbg !1001, !tbaa !871
  br label %160, !dbg !1002

; <label>:160                                     ; preds = %._crit_edge13, %159
  %161 = phi i32 [ %152, %._crit_edge13 ], [ %.pre23, %159 ]
  %162 = phi i32 [ %151, %._crit_edge13 ], [ %.pre22, %159 ]
  %163 = phi i32 [ %138, %._crit_edge13 ], [ %.pre18, %159 ]
  %164 = sub i32 2, %161, !dbg !1003
  %165 = mul i32 %164, %162, !dbg !1004
  %166 = urem i32 %163, %165, !dbg !1005
  %167 = icmp eq i32 %166, 0, !dbg !1005
  br i1 %167, label %170, label %168, !dbg !1006

; <label>:168                                     ; preds = %160
  tail call void @error(i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i32 500) #6, !dbg !1007
  br label %170, !dbg !1009

; <label>:169                                     ; preds = %.loopexit
  store i32 0, i32* %141, align 4, !dbg !1010, !tbaa !970
  br label %170

; <label>:170                                     ; preds = %160, %168, %169
  ret void, !dbg !1011
}

; Function Attrs: nounwind optsize ssp uwtable
define void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* nocapture readonly %sps, i32 %PPS_id, i32 %WeightedPrediction, i32 %WeightedBiprediction, i32 %cb_qp_index_offset, i32 %cr_qp_index_offset) #0 {
  tail call void @llvm.dbg.value(metadata %struct.pic_parameter_set_rbsp_t* %pps, i64 0, metadata !223, metadata !699), !dbg !1012
  tail call void @llvm.dbg.value(metadata %struct.seq_parameter_set_rbsp_t* %sps, i64 0, metadata !224, metadata !699), !dbg !1013
  tail call void @llvm.dbg.value(metadata i32 %PPS_id, i64 0, metadata !225, metadata !699), !dbg !1014
  tail call void @llvm.dbg.value(metadata i32 %WeightedPrediction, i64 0, metadata !226, metadata !699), !dbg !1015
  tail call void @llvm.dbg.value(metadata i32 %WeightedBiprediction, i64 0, metadata !227, metadata !699), !dbg !1016
  tail call void @llvm.dbg.value(metadata i32 %cb_qp_index_offset, i64 0, metadata !228, metadata !699), !dbg !1017
  tail call void @llvm.dbg.value(metadata i32 %cr_qp_index_offset, i64 0, metadata !229, metadata !699), !dbg !1018
  %1 = load %struct.InputParameters** @input, align 8, !dbg !1019, !tbaa !707
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 0, !dbg !1021
  %3 = load i32* %2, align 4, !dbg !1021, !tbaa !780
  %switch.tableidx = add i32 %3, -100, !dbg !1022
  %4 = icmp ult i32 %switch.tableidx, 45, !dbg !1022
  br i1 %4, label %switch.lookup, label %6, !dbg !1022

switch.lookup:                                    ; preds = %0
  %switch.cast = zext i32 %switch.tableidx to i45, !dbg !1022
  %switch.downshift = lshr i45 -17592181849087, %switch.cast, !dbg !1022
  %5 = and i45 %switch.downshift, 1, !dbg !1022
  %switch.masked = icmp ne i45 %5, 0, !dbg !1022
  br label %6, !dbg !1022

; <label>:6                                       ; preds = %0, %switch.lookup
  %7 = phi i1 [ %switch.masked, %switch.lookup ], [ false, %0 ]
  %8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 7, !dbg !1023
  %9 = load i32* %8, align 4, !dbg !1023, !tbaa !795
  %10 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 2, !dbg !1024
  store i32 %9, i32* %10, align 4, !dbg !1025, !tbaa !1026
  %11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 1, !dbg !1028
  store i32 %PPS_id, i32* %11, align 4, !dbg !1029, !tbaa !1030
  %12 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 59, !dbg !1031
  %13 = load i32* %12, align 4, !dbg !1031, !tbaa !1032
  %not. = icmp ne i32 %13, 0, !dbg !1033
  %14 = zext i1 %not. to i32, !dbg !1033
  %15 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 3, !dbg !1034
  store i32 %14, i32* %15, align 4, !dbg !1035, !tbaa !1036
  br i1 %7, label %16, label %47, !dbg !1037

; <label>:16                                      ; preds = %6
  %17 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 123, !dbg !1038
  %18 = load i32* %17, align 4, !dbg !1038, !tbaa !947
  %19 = icmp ne i32 %18, 0, !dbg !1041
  %20 = zext i1 %19 to i32, !dbg !1041
  %21 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 4, !dbg !1042
  store i32 %20, i32* %21, align 4, !dbg !1043, !tbaa !1044
  %22 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 132, !dbg !1045
  %23 = load i32* %22, align 4, !dbg !1045, !tbaa !928
  %24 = lshr i32 %23, 1, !dbg !1046
  %25 = and i32 %24, 1, !dbg !1046
  %26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 5, !dbg !1047
  store i32 %25, i32* %26, align 4, !dbg !1048, !tbaa !1049
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !230, metadata !699), !dbg !1050
  br label %27, !dbg !1051

; <label>:27                                      ; preds = %46, %16
  %indvars.iv = phi i64 [ 0, %16 ], [ %indvars.iv.next, %46 ]
  %28 = icmp ult i64 %indvars.iv, 6, !dbg !1053
  br i1 %28, label %29, label %35, !dbg !1057

; <label>:29                                      ; preds = %27
  %30 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 133, i64 %indvars.iv, !dbg !1058
  %31 = load i32* %30, align 4, !dbg !1058, !tbaa !825
  %32 = lshr i32 %31, 1, !dbg !1059
  %33 = and i32 %32, 1, !dbg !1059
  %34 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %indvars.iv, !dbg !1060
  store i32 %33, i32* %34, align 4, !dbg !1061, !tbaa !825
  br label %46, !dbg !1060

; <label>:35                                      ; preds = %27
  %36 = load i32* %21, align 4, !dbg !1062, !tbaa !1044
  %37 = icmp eq i32 %36, 0, !dbg !1065
  br i1 %37, label %44, label %38, !dbg !1066

; <label>:38                                      ; preds = %35
  %39 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 133, i64 %indvars.iv, !dbg !1067
  %40 = load i32* %39, align 4, !dbg !1067, !tbaa !825
  %41 = lshr i32 %40, 1, !dbg !1068
  %42 = and i32 %41, 1, !dbg !1068
  %43 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %indvars.iv, !dbg !1069
  store i32 %42, i32* %43, align 4, !dbg !1070, !tbaa !825
  br label %46, !dbg !1069

; <label>:44                                      ; preds = %35
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %indvars.iv, !dbg !1071
  store i32 0, i32* %45, align 4, !dbg !1072, !tbaa !825
  br label %46

; <label>:46                                      ; preds = %29, %44, %38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1051
  %exitcond = icmp eq i64 %indvars.iv.next, 8, !dbg !1051
  br i1 %exitcond, label %.loopexit4, label %27, !dbg !1051

; <label>:47                                      ; preds = %6
  %48 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 5, !dbg !1073
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !230, metadata !699), !dbg !1050
  %49 = bitcast i32* %48 to i8*, !dbg !1075
  call void @llvm.memset.p0i8.i64(i8* %49, i8 0, i64 36, i32 4, i1 false), !dbg !1076
  %50 = load %struct.InputParameters** @input, align 8, !dbg !1075, !tbaa !707
  %51 = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 123, !dbg !1079
  store i32 0, i32* %51, align 4, !dbg !1080, !tbaa !947
  %52 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 4, !dbg !1081
  store i32 0, i32* %52, align 4, !dbg !1082, !tbaa !1044
  br label %.loopexit4

.loopexit4:                                       ; preds = %46, %47
  %53 = phi %struct.InputParameters* [ %50, %47 ], [ %1, %46 ]
  %54 = load %struct.ImageParameters** @img, align 8, !dbg !1083, !tbaa !707
  %55 = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 112, !dbg !1084
  %56 = load i32* %55, align 4, !dbg !1084, !tbaa !1085
  %57 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 7, !dbg !1086
  store i32 %56, i32* %57, align 4, !dbg !1087, !tbaa !1088
  %58 = getelementptr inbounds %struct.InputParameters* %53, i64 0, i32 110, !dbg !1089
  %59 = load i32* %58, align 4, !dbg !1089, !tbaa !1090
  %60 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 8, !dbg !1091
  store i32 %59, i32* %60, align 4, !dbg !1092, !tbaa !1093
  %61 = icmp eq i32 %59, 0, !dbg !1094
  br i1 %61, label %.loopexit, label %62, !dbg !1096

; <label>:62                                      ; preds = %.loopexit4
  %63 = getelementptr inbounds %struct.InputParameters* %53, i64 0, i32 111, !dbg !1097
  %64 = load i32* %63, align 4, !dbg !1097, !tbaa !1098
  switch i32 %64, label %140 [
    i32 0, label %65
    i32 1, label %76
    i32 2, label %.lr.ph
    i32 3, label %93
    i32 4, label %93
    i32 5, label %93
    i32 6, label %101
  ], !dbg !1099

; <label>:65                                      ; preds = %62
  %66 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !1100
  store i32 0, i32* %66, align 4, !dbg !1102, !tbaa !1103
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !230, metadata !699), !dbg !1050
  %67 = getelementptr inbounds %struct.InputParameters* %53, i64 0, i32 115, !dbg !1104
  %68 = load i32** %67, align 8, !dbg !1104, !tbaa !1108
  br label %69, !dbg !1109

; <label>:69                                      ; preds = %65, %69
  %i.25 = phi i32 [ 0, %65 ], [ %74, %69 ]
  %70 = zext i32 %i.25 to i64, !dbg !1110
  %71 = getelementptr inbounds i32* %68, i64 %70, !dbg !1110
  %72 = load i32* %71, align 4, !dbg !1110, !tbaa !825
  %73 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 10, i64 %70, !dbg !1111
  store i32 %72, i32* %73, align 4, !dbg !1112, !tbaa !825
  %74 = add i32 %i.25, 1, !dbg !1113
  tail call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !230, metadata !699), !dbg !1050
  %75 = icmp ugt i32 %74, %59, !dbg !1114
  br i1 %75, label %.loopexit, label %69, !dbg !1109

; <label>:76                                      ; preds = %62
  %77 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !1115
  store i32 1, i32* %77, align 4, !dbg !1116, !tbaa !1103
  br label %.loopexit, !dbg !1117

.lr.ph:                                           ; preds = %62
  %78 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !1118
  store i32 2, i32* %78, align 4, !dbg !1119, !tbaa !1103
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !230, metadata !699), !dbg !1050
  %79 = getelementptr inbounds %struct.InputParameters* %53, i64 0, i32 112, !dbg !1120
  %80 = load i32** %79, align 8, !dbg !1120, !tbaa !1124
  %81 = getelementptr inbounds %struct.InputParameters* %53, i64 0, i32 113, !dbg !1125
  %82 = load i32** %81, align 8, !dbg !1125, !tbaa !1126
  br label %83, !dbg !1127

; <label>:83                                      ; preds = %.lr.ph, %83
  %i.36 = phi i32 [ 0, %.lr.ph ], [ %91, %83 ]
  %84 = zext i32 %i.36 to i64, !dbg !1128
  %85 = getelementptr inbounds i32* %80, i64 %84, !dbg !1128
  %86 = load i32* %85, align 4, !dbg !1128, !tbaa !825
  %87 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 11, i64 %84, !dbg !1129
  store i32 %86, i32* %87, align 4, !dbg !1130, !tbaa !825
  %88 = getelementptr inbounds i32* %82, i64 %84, !dbg !1131
  %89 = load i32* %88, align 4, !dbg !1131, !tbaa !825
  %90 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 12, i64 %84, !dbg !1132
  store i32 %89, i32* %90, align 4, !dbg !1133, !tbaa !825
  %91 = add nuw i32 %i.36, 1, !dbg !1134
  tail call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !230, metadata !699), !dbg !1050
  %92 = icmp ult i32 %91, %59, !dbg !1135
  br i1 %92, label %83, label %.loopexit, !dbg !1127

; <label>:93                                      ; preds = %62, %62, %62
  %94 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !1136
  store i32 %64, i32* %94, align 4, !dbg !1137, !tbaa !1103
  %95 = getelementptr inbounds %struct.InputParameters* %53, i64 0, i32 116, !dbg !1138
  %96 = load i32* %95, align 4, !dbg !1138, !tbaa !1139
  %97 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 13, !dbg !1140
  store i32 %96, i32* %97, align 4, !dbg !1141, !tbaa !1142
  %98 = getelementptr inbounds %struct.InputParameters* %53, i64 0, i32 117, !dbg !1143
  %99 = load i32* %98, align 4, !dbg !1143, !tbaa !1144
  %100 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 14, !dbg !1145
  store i32 %99, i32* %100, align 4, !dbg !1146, !tbaa !1147
  br label %.loopexit, !dbg !1148

; <label>:101                                     ; preds = %62
  %102 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !1149
  store i32 6, i32* %102, align 4, !dbg !1150, !tbaa !1103
  %103 = getelementptr inbounds %struct.InputParameters* %53, i64 0, i32 17, !dbg !1151
  %104 = load i32* %103, align 4, !dbg !1151, !tbaa !883
  %105 = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 166, !dbg !1152
  %106 = load i32* %105, align 4, !dbg !1152, !tbaa !885
  %107 = add nsw i32 %106, %104, !dbg !1153
  %108 = sdiv i32 %107, 16, !dbg !1154
  %109 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25, !dbg !1155
  %110 = load i32* %109, align 4, !dbg !1155, !tbaa !871
  %111 = sub i32 2, %110, !dbg !1156
  %112 = udiv i32 %108, %111, !dbg !1157
  %113 = getelementptr inbounds %struct.InputParameters* %53, i64 0, i32 16, !dbg !1158
  %114 = load i32* %113, align 4, !dbg !1158, !tbaa !873
  %115 = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 165, !dbg !1159
  %116 = load i32* %115, align 4, !dbg !1159, !tbaa !875
  %117 = add nsw i32 %116, %114, !dbg !1160
  %118 = sdiv i32 %117, 16, !dbg !1161
  %119 = mul i32 %118, %112, !dbg !1162
  %120 = add i32 %119, -1, !dbg !1163
  %121 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 15, !dbg !1164
  store i32 %120, i32* %121, align 4, !dbg !1165, !tbaa !1166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !230, metadata !699), !dbg !1050
  %122 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 16, !dbg !1167
  %123 = getelementptr inbounds %struct.InputParameters* %53, i64 0, i32 114, !dbg !1170
  %124 = load i8** %123, align 8, !dbg !1170, !tbaa !1171
  %125 = load i8* %124, align 1, !dbg !1172, !tbaa !842
  %126 = load i8** %122, align 8, !dbg !1167, !tbaa !1173
  store i8 %125, i8* %126, align 1, !dbg !1174, !tbaa !842
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !230, metadata !699), !dbg !1050
  %127 = load i32* %121, align 4, !dbg !1175, !tbaa !1166
  %128 = icmp eq i32 %127, 0, !dbg !1176
  br i1 %128, label %.loopexit, label %._crit_edge, !dbg !1177

._crit_edge:                                      ; preds = %101, %._crit_edge
  %129 = phi i32 [ %137, %._crit_edge ], [ 1, %101 ]
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !1172, !tbaa !707
  %130 = zext i32 %129 to i64, !dbg !1172
  %131 = getelementptr inbounds %struct.InputParameters* %.pre, i64 0, i32 114, !dbg !1170
  %132 = load i8** %131, align 8, !dbg !1170, !tbaa !1171
  %133 = getelementptr inbounds i8* %132, i64 %130, !dbg !1172
  %134 = load i8* %133, align 1, !dbg !1172, !tbaa !842
  %135 = load i8** %122, align 8, !dbg !1167, !tbaa !1173
  %136 = getelementptr inbounds i8* %135, i64 %130, !dbg !1178
  store i8 %134, i8* %136, align 1, !dbg !1174, !tbaa !842
  %137 = add i32 %129, 1, !dbg !1179
  tail call void @llvm.dbg.value(metadata i32 %137, i64 0, metadata !230, metadata !699), !dbg !1050
  %138 = load i32* %121, align 4, !dbg !1175, !tbaa !1166
  %139 = icmp ugt i32 %137, %138, !dbg !1176
  br i1 %139, label %.loopexit, label %._crit_edge, !dbg !1177

; <label>:140                                     ; preds = %62
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)), !dbg !1180
  tail call void @__assert_rtn(i8* getelementptr inbounds ([28 x i8]* @__func__.GeneratePictureParameterSet, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 460, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #8, !dbg !1181
  unreachable, !dbg !1181

.loopexit:                                        ; preds = %101, %._crit_edge, %83, %69, %.loopexit4, %76, %93
  %141 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25, !dbg !1182
  %142 = load i32* %141, align 4, !dbg !1182, !tbaa !871
  %143 = icmp eq i32 %142, 0, !dbg !1183
  %144 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 21, !dbg !1184
  %145 = load i32* %144, align 4, !dbg !1184, !tbaa !859
  %146 = zext i1 %143 to i32, !dbg !1183
  %. = shl i32 %145, %146, !dbg !1183
  %147 = add i32 %., -1, !dbg !1185
  %148 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 17, !dbg !1186
  store i32 %147, i32* %148, align 4, !dbg !1187, !tbaa !1188
  %149 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 18, !dbg !1189
  store i32 %147, i32* %149, align 4, !dbg !1190, !tbaa !1191
  %150 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 19, !dbg !1192
  store i32 %WeightedPrediction, i32* %150, align 4, !dbg !1193, !tbaa !1194
  %151 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 20, !dbg !1195
  store i32 %WeightedBiprediction, i32* %151, align 4, !dbg !1196, !tbaa !1197
  %152 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 21, !dbg !1198
  store i32 0, i32* %152, align 4, !dbg !1199, !tbaa !1200
  %153 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 22, !dbg !1201
  store i32 0, i32* %153, align 4, !dbg !1202, !tbaa !1203
  %154 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 23, !dbg !1204
  store i32 %cb_qp_index_offset, i32* %154, align 4, !dbg !1205, !tbaa !1206
  %cr_qp_index_offset.cb_qp_index_offset = select i1 %7, i32 %cr_qp_index_offset, i32 %cb_qp_index_offset, !dbg !1207
  %155 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 25, !dbg !1208
  store i32 %cr_qp_index_offset.cb_qp_index_offset, i32* %155, align 4
  %156 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 24, !dbg !1210
  store i32 %cb_qp_index_offset, i32* %156, align 4
  %157 = load %struct.InputParameters** @input, align 8, !dbg !1211, !tbaa !707
  %158 = getelementptr inbounds %struct.InputParameters* %157, i64 0, i32 102, !dbg !1212
  %159 = load i32* %158, align 4, !dbg !1212, !tbaa !1213
  %160 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 26, !dbg !1214
  store i32 %159, i32* %160, align 4, !dbg !1215, !tbaa !1216
  %161 = getelementptr inbounds %struct.InputParameters* %157, i64 0, i32 24, !dbg !1217
  %162 = load i32* %161, align 4, !dbg !1217, !tbaa !1218
  %163 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 27, !dbg !1219
  store i32 %162, i32* %163, align 4, !dbg !1220, !tbaa !1221
  %164 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 28, !dbg !1222
  store i32 0, i32* %164, align 4, !dbg !1223, !tbaa !1224
  ret void, !dbg !1225
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @FreeParameterSets() #0 {
  %1 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1226, !tbaa !707
  tail call void @FreeSPS(%struct.seq_parameter_set_rbsp_t* %1) #6, !dbg !1227
  ret void, !dbg !1228
}

; Function Attrs: optsize
declare void @FreeSPS(%struct.seq_parameter_set_rbsp_t*) #2

; Function Attrs: nounwind optsize ssp uwtable
define %struct.NALU_t* @GenerateSeq_parameter_set_NALU() #0 {
  %rbsp = alloca [64000 x i8], align 16
  %1 = tail call %struct.NALU_t* (i32, ...)* bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 64000) #6, !dbg !1229
  tail call void @llvm.dbg.value(metadata %struct.NALU_t* %1, i64 0, metadata !184, metadata !699), !dbg !1230
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !185, metadata !699), !dbg !1231
  %2 = getelementptr inbounds [64000 x i8]* %rbsp, i64 0, i64 0, !dbg !1232
  call void @llvm.lifetime.start(i64 64000, i8* %2) #3, !dbg !1232
  tail call void @llvm.dbg.declare(metadata [64000 x i8]* %rbsp, metadata !187, metadata !699), !dbg !1233
  %3 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1234, !tbaa !707
  %4 = call i32 @GenerateSeq_parameter_set_rbsp(%struct.seq_parameter_set_rbsp_t* %3, i8* %2) #7, !dbg !1235
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !185, metadata !699), !dbg !1231
  %5 = call i32 @RBSPtoNALU(i8* %2, %struct.NALU_t* %1, i32 %4, i32 7, i32 3, i32 0, i32 1) #6, !dbg !1236
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !186, metadata !699), !dbg !1237
  %6 = getelementptr inbounds %struct.NALU_t* %1, i64 0, i32 0, !dbg !1238
  store i32 4, i32* %6, align 4, !dbg !1239, !tbaa !1240
  call void @llvm.lifetime.end(i64 64000, i8* %2) #3, !dbg !1242
  ret %struct.NALU_t* %1, !dbg !1242
}

; Function Attrs: optsize
declare %struct.NALU_t* @AllocNALU(...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @GenerateSeq_parameter_set_rbsp(%struct.seq_parameter_set_rbsp_t* %sps, i8* %rbsp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.seq_parameter_set_rbsp_t* %sps, i64 0, metadata !328, metadata !699), !dbg !1243
  tail call void @llvm.dbg.value(metadata i8* %rbsp, i64 0, metadata !329, metadata !699), !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !331, metadata !699), !dbg !1245
  %1 = icmp eq i8* %rbsp, null, !dbg !1246
  br i1 %1, label %2, label %3, !dbg !1246, !prof !783

; <label>:2                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([31 x i8]* @__func__.GenerateSeq_parameter_set_rbsp, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 567, i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0)) #8, !dbg !1246
  unreachable, !dbg !1246

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @calloc(i64 1, i64 120) #6, !dbg !1247
  %5 = bitcast i8* %4 to %struct.datapartition*, !dbg !1247
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %5, i64 0, metadata !330, metadata !699), !dbg !1249
  %6 = icmp eq i8* %4, null, !dbg !1250
  br i1 %6, label %7, label %8, !dbg !1251

; <label>:7                                       ; preds = %3
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !1252
  br label %8, !dbg !1252

; <label>:8                                       ; preds = %7, %3
  %9 = tail call i8* @calloc(i64 1, i64 48) #6, !dbg !1253
  %10 = bitcast i8* %4 to %struct.Bitstream**, !dbg !1255
  %11 = bitcast i8* %4 to i8**, !dbg !1256
  store i8* %9, i8** %11, align 8, !dbg !1256, !tbaa !1257
  %12 = icmp eq i8* %9, null, !dbg !1260
  %13 = bitcast i8* %9 to %struct.Bitstream*
  br i1 %12, label %14, label %15, !dbg !1261

; <label>:14                                      ; preds = %8
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !1262
  %.pre = load %struct.Bitstream** %10, align 8, !dbg !1263, !tbaa !1257
  br label %15, !dbg !1262

; <label>:15                                      ; preds = %14, %8
  %16 = phi %struct.Bitstream* [ %.pre, %14 ], [ %13, %8 ]
  %17 = getelementptr inbounds %struct.Bitstream* %16, i64 0, i32 9, !dbg !1264
  store i8* %rbsp, i8** %17, align 8, !dbg !1265, !tbaa !1266
  %18 = getelementptr inbounds %struct.Bitstream* %16, i64 0, i32 1, !dbg !1268
  store i32 8, i32* %18, align 4, !dbg !1269, !tbaa !1270
  %19 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 1, !dbg !1271
  %20 = load i32* %19, align 4, !dbg !1271, !tbaa !719
  %21 = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([17 x i8]* @.str10, i64 0, i64 0), i32 %20, %struct.datapartition* %5) #6, !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !331, metadata !699), !dbg !1245
  %22 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 2, !dbg !1273
  %23 = load i32* %22, align 4, !dbg !1273, !tbaa !1274
  %24 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str11, i64 0, i64 0), i32 %23, %struct.datapartition* %5) #6, !dbg !1275
  %25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 3, !dbg !1276
  %26 = load i32* %25, align 4, !dbg !1276, !tbaa !1277
  %27 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str12, i64 0, i64 0), i32 %26, %struct.datapartition* %5) #6, !dbg !1278
  %28 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 4, !dbg !1279
  %29 = load i32* %28, align 4, !dbg !1279, !tbaa !1280
  %30 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i32 %29, %struct.datapartition* %5) #6, !dbg !1281
  %31 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 5, !dbg !1282
  %32 = load i32* %31, align 4, !dbg !1282, !tbaa !1283
  %33 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str14, i64 0, i64 0), i32 %32, %struct.datapartition* %5) #6, !dbg !1284
  %34 = tail call i32 @u_v(i32 4, i8* getelementptr inbounds ([25 x i8]* @.str15, i64 0, i64 0), i32 0, %struct.datapartition* %5) #6, !dbg !1285
  %35 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 6, !dbg !1286
  %36 = load i32* %35, align 4, !dbg !1286, !tbaa !791
  %37 = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([15 x i8]* @.str16, i64 0, i64 0), i32 %36, %struct.datapartition* %5) #6, !dbg !1287
  %38 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 7, !dbg !1288
  %39 = load i32* %38, align 4, !dbg !1288, !tbaa !795
  %40 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str17, i64 0, i64 0), i32 %39, %struct.datapartition* %5) #6, !dbg !1289
  %41 = load i32* %19, align 4, !dbg !1290, !tbaa !719
  switch i32 %41, label %.loopexit1 [
    i32 100, label %42
    i32 110, label %42
    i32 122, label %42
    i32 144, label %42
  ], !dbg !1292

; <label>:42                                      ; preds = %15, %15, %15, %15
  %43 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 8, !dbg !1293
  %44 = load i32* %43, align 4, !dbg !1293, !tbaa !914
  %45 = tail call i32 @ue_v(i8* getelementptr inbounds ([23 x i8]* @.str18, i64 0, i64 0), i32 %44, %struct.datapartition* %5) #6, !dbg !1295
  %46 = load %struct.ImageParameters** @img, align 8, !dbg !1296, !tbaa !707
  %47 = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 159, !dbg !1298
  %48 = load i32* %47, align 4, !dbg !1298, !tbaa !1299
  %49 = icmp eq i32 %48, 3, !dbg !1300
  br i1 %49, label %50, label %54, !dbg !1301

; <label>:50                                      ; preds = %42
  %51 = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 164, !dbg !1302
  %52 = load i32* %51, align 4, !dbg !1302, !tbaa !823
  %53 = tail call i32 @u_1(i8* getelementptr inbounds ([28 x i8]* @.str19, i64 0, i64 0), i32 %52, %struct.datapartition* %5) #6, !dbg !1303
  br label %54, !dbg !1304

; <label>:54                                      ; preds = %50, %42
  %55 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 11, !dbg !1305
  %56 = load i32* %55, align 4, !dbg !1305, !tbaa !802
  %57 = tail call i32 @ue_v(i8* getelementptr inbounds ([27 x i8]* @.str20, i64 0, i64 0), i32 %56, %struct.datapartition* %5) #6, !dbg !1306
  %58 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 12, !dbg !1307
  %59 = load i32* %58, align 4, !dbg !1307, !tbaa !808
  %60 = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str21, i64 0, i64 0), i32 %59, %struct.datapartition* %5) #6, !dbg !1308
  %61 = load %struct.ImageParameters** @img, align 8, !dbg !1309, !tbaa !707
  %62 = getelementptr inbounds %struct.ImageParameters* %61, i64 0, i32 160, !dbg !1310
  %63 = load i32* %62, align 4, !dbg !1310, !tbaa !816
  %64 = tail call i32 @u_1(i8* getelementptr inbounds ([34 x i8]* @.str22, i64 0, i64 0), i32 %63, %struct.datapartition* %5) #6, !dbg !1311
  %65 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 9, !dbg !1312
  %66 = load i32* %65, align 4, !dbg !1312, !tbaa !932
  %67 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str23, i64 0, i64 0), i32 %66, %struct.datapartition* %5) #6, !dbg !1313
  %68 = load i32* %65, align 4, !dbg !1314, !tbaa !932
  %69 = icmp eq i32 %68, 0, !dbg !1316
  br i1 %69, label %.loopexit1, label %.preheader, !dbg !1317

.preheader:                                       ; preds = %54, %89
  %indvars.iv = phi i64 [ %indvars.iv.next, %89 ], [ 0, %54 ]
  %70 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv, !dbg !1318
  %71 = load i32* %70, align 4, !dbg !1318, !tbaa !825
  %72 = tail call i32 @u_1(i8* getelementptr inbounds ([35 x i8]* @.str24, i64 0, i64 0), i32 %71, %struct.datapartition* %5) #6, !dbg !1323
  %73 = load i32* %70, align 4, !dbg !1324, !tbaa !825
  %74 = icmp eq i32 %73, 0, !dbg !1324
  br i1 %74, label %89, label %75, !dbg !1326

; <label>:75                                      ; preds = %.preheader
  %76 = icmp ult i64 %indvars.iv, 6, !dbg !1327
  br i1 %76, label %77, label %82, !dbg !1330

; <label>:77                                      ; preds = %75
  %78 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %indvars.iv, i64 0, !dbg !1331
  %79 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 %indvars.iv, i64 0, !dbg !1332
  %80 = getelementptr inbounds [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 %indvars.iv, !dbg !1333
  %81 = tail call i32 @Scaling_List(i16* %78, i16* %79, i32 16, i16* %80, %struct.datapartition* %5) #7, !dbg !1334
  br label %89, !dbg !1335

; <label>:82                                      ; preds = %75
  %83 = add i64 %indvars.iv, 4294967290, !dbg !1336
  %84 = and i64 %83, 4294967295, !dbg !1337
  %85 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %84, i64 0, !dbg !1337
  %86 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 %84, i64 0, !dbg !1338
  %87 = getelementptr inbounds [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 %84, !dbg !1339
  %88 = tail call i32 @Scaling_List(i16* %85, i16* %86, i32 64, i16* %87, %struct.datapartition* %5) #7, !dbg !1340
  br label %89

; <label>:89                                      ; preds = %.preheader, %82, %77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1341
  %exitcond = icmp eq i64 %indvars.iv.next, 8, !dbg !1341
  br i1 %exitcond, label %.loopexit1, label %.preheader, !dbg !1341

.loopexit1:                                       ; preds = %89, %15, %54
  %90 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 13, !dbg !1342
  %91 = load i32* %90, align 4, !dbg !1342, !tbaa !828
  %92 = tail call i32 @ue_v(i8* getelementptr inbounds ([31 x i8]* @.str25, i64 0, i64 0), i32 %91, %struct.datapartition* %5) #6, !dbg !1343
  %93 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 14, !dbg !1344
  %94 = load i32* %93, align 4, !dbg !1344, !tbaa !837
  %95 = tail call i32 @ue_v(i8* getelementptr inbounds ([24 x i8]* @.str26, i64 0, i64 0), i32 %94, %struct.datapartition* %5) #6, !dbg !1345
  %96 = load i32* %93, align 4, !dbg !1346, !tbaa !837
  switch i32 %96, label %.loopexit [
    i32 0, label %97
    i32 1, label %101
  ], !dbg !1348

; <label>:97                                      ; preds = %.loopexit1
  %98 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 15, !dbg !1349
  %99 = load i32* %98, align 4, !dbg !1349, !tbaa !832
  %100 = tail call i32 @ue_v(i8* getelementptr inbounds ([39 x i8]* @.str27, i64 0, i64 0), i32 %99, %struct.datapartition* %5) #6, !dbg !1350
  br label %.loopexit, !dbg !1351

; <label>:101                                     ; preds = %.loopexit1
  %102 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 16, !dbg !1352
  %103 = load i32* %102, align 4, !dbg !1352, !tbaa !1355
  %104 = tail call i32 @u_1(i8* getelementptr inbounds ([38 x i8]* @.str28, i64 0, i64 0), i32 %103, %struct.datapartition* %5) #6, !dbg !1356
  %105 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 17, !dbg !1357
  %106 = load i32* %105, align 4, !dbg !1357, !tbaa !1358
  %107 = tail call i32 @se_v(i8* getelementptr inbounds ([28 x i8]* @.str29, i64 0, i64 0), i32 %106, %struct.datapartition* %5) #6, !dbg !1359
  %108 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 18, !dbg !1360
  %109 = load i32* %108, align 4, !dbg !1360, !tbaa !1361
  %110 = tail call i32 @se_v(i8* getelementptr inbounds ([36 x i8]* @.str30, i64 0, i64 0), i32 %109, %struct.datapartition* %5) #6, !dbg !1362
  %111 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 19, !dbg !1363
  %112 = load i32* %111, align 4, !dbg !1363, !tbaa !1364
  %113 = tail call i32 @ue_v(i8* getelementptr inbounds ([43 x i8]* @.str31, i64 0, i64 0), i32 %112, %struct.datapartition* %5) #6, !dbg !1365
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !333, metadata !699), !dbg !1366
  %114 = load i32* %111, align 4, !dbg !1367, !tbaa !1364
  %115 = icmp eq i32 %114, 0, !dbg !1370
  br i1 %115, label %.loopexit, label %.lr.ph, !dbg !1371

.lr.ph:                                           ; preds = %101, %.lr.ph
  %i.12 = phi i32 [ %120, %.lr.ph ], [ 0, %101 ]
  %116 = zext i32 %i.12 to i64, !dbg !1372
  %117 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 20, i64 %116, !dbg !1372
  %118 = load i32* %117, align 4, !dbg !1372, !tbaa !825
  %119 = tail call i32 @se_v(i8* getelementptr inbounds ([26 x i8]* @.str32, i64 0, i64 0), i32 %118, %struct.datapartition* %5) #6, !dbg !1373
  %120 = add nuw i32 %i.12, 1, !dbg !1374
  tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !333, metadata !699), !dbg !1366
  %121 = load i32* %111, align 4, !dbg !1367, !tbaa !1364
  %122 = icmp ult i32 %120, %121, !dbg !1370
  br i1 %122, label %.lr.ph, label %.loopexit, !dbg !1371

.loopexit:                                        ; preds = %.lr.ph, %101, %.loopexit1, %97
  %123 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 21, !dbg !1375
  %124 = load i32* %123, align 4, !dbg !1375, !tbaa !859
  %125 = tail call i32 @ue_v(i8* getelementptr inbounds ([20 x i8]* @.str33, i64 0, i64 0), i32 %124, %struct.datapartition* %5) #6, !dbg !1376
  %126 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 22, !dbg !1377
  %127 = load i32* %126, align 4, !dbg !1377, !tbaa !862
  %128 = tail call i32 @u_1(i8* getelementptr inbounds ([42 x i8]* @.str34, i64 0, i64 0), i32 %127, %struct.datapartition* %5) #6, !dbg !1378
  %129 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 23, !dbg !1379
  %130 = load i32* %129, align 4, !dbg !1379, !tbaa !881
  %131 = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str35, i64 0, i64 0), i32 %130, %struct.datapartition* %5) #6, !dbg !1380
  %132 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 24, !dbg !1381
  %133 = load i32* %132, align 4, !dbg !1381, !tbaa !893
  %134 = tail call i32 @ue_v(i8* getelementptr inbounds ([36 x i8]* @.str36, i64 0, i64 0), i32 %133, %struct.datapartition* %5) #6, !dbg !1382
  %135 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25, !dbg !1383
  %136 = load i32* %135, align 4, !dbg !1383, !tbaa !871
  %137 = tail call i32 @u_1(i8* getelementptr inbounds ([25 x i8]* @.str37, i64 0, i64 0), i32 %136, %struct.datapartition* %5) #6, !dbg !1384
  %138 = load i32* %135, align 4, !dbg !1385, !tbaa !871
  %139 = icmp eq i32 %138, 0, !dbg !1387
  br i1 %139, label %140, label %144, !dbg !1388

; <label>:140                                     ; preds = %.loopexit
  %141 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 26, !dbg !1389
  %142 = load i32* %141, align 4, !dbg !1389, !tbaa !897
  %143 = tail call i32 @u_1(i8* getelementptr inbounds ([34 x i8]* @.str38, i64 0, i64 0), i32 %142, %struct.datapartition* %5) #6, !dbg !1391
  br label %144, !dbg !1392

; <label>:144                                     ; preds = %.loopexit, %140
  %145 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 27, !dbg !1393
  %146 = load i32* %145, align 4, !dbg !1393, !tbaa !902
  %147 = tail call i32 @u_1(i8* getelementptr inbounds ([31 x i8]* @.str39, i64 0, i64 0), i32 %146, %struct.datapartition* %5) #6, !dbg !1394
  %148 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 28, !dbg !1395
  %149 = load i32* %148, align 4, !dbg !1395, !tbaa !970
  %150 = tail call i32 @u_1(i8* getelementptr inbounds ([25 x i8]* @.str40, i64 0, i64 0), i32 %149, %struct.datapartition* %5) #6, !dbg !1396
  %151 = load i32* %148, align 4, !dbg !1397, !tbaa !970
  %152 = icmp eq i32 %151, 0, !dbg !1399
  br i1 %152, label %166, label %153, !dbg !1400

; <label>:153                                     ; preds = %144
  %154 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 29, !dbg !1401
  %155 = load i32* %154, align 4, !dbg !1401, !tbaa !973
  %156 = tail call i32 @ue_v(i8* getelementptr inbounds ([37 x i8]* @.str41, i64 0, i64 0), i32 %155, %struct.datapartition* %5) #6, !dbg !1403
  %157 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 30, !dbg !1404
  %158 = load i32* %157, align 4, !dbg !1404, !tbaa !982
  %159 = tail call i32 @ue_v(i8* getelementptr inbounds ([38 x i8]* @.str42, i64 0, i64 0), i32 %158, %struct.datapartition* %5) #6, !dbg !1405
  %160 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 31, !dbg !1406
  %161 = load i32* %160, align 4, !dbg !1406, !tbaa !976
  %162 = tail call i32 @ue_v(i8* getelementptr inbounds ([36 x i8]* @.str43, i64 0, i64 0), i32 %161, %struct.datapartition* %5) #6, !dbg !1407
  %163 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 32, !dbg !1408
  %164 = load i32* %163, align 4, !dbg !1408, !tbaa !990
  %165 = tail call i32 @ue_v(i8* getelementptr inbounds ([39 x i8]* @.str44, i64 0, i64 0), i32 %164, %struct.datapartition* %5) #6, !dbg !1409
  br label %166, !dbg !1410

; <label>:166                                     ; preds = %144, %153
  %167 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 33, !dbg !1411
  %168 = load i32* %167, align 4, !dbg !1411, !tbaa !911
  %169 = tail call i32 @u_1(i8* getelementptr inbounds ([33 x i8]* @.str45, i64 0, i64 0), i32 %168, %struct.datapartition* %5) #6, !dbg !1412
  %170 = load i32* %167, align 4, !dbg !1413, !tbaa !911
  %171 = icmp eq i32 %170, 0, !dbg !1415
  br i1 %171, label %197, label %172, !dbg !1416

; <label>:172                                     ; preds = %166
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !355, metadata !699) #3, !dbg !1417
  %173 = load %struct.InputParameters** @input, align 8, !dbg !1419, !tbaa !707
  %174 = getelementptr inbounds %struct.InputParameters* %173, i64 0, i32 139, !dbg !1421
  %175 = load i32* %174, align 4, !dbg !1421, !tbaa !904
  %176 = icmp eq i32 %175, 0, !dbg !1419
  br i1 %176, label %181, label %177, !dbg !1422

; <label>:177                                     ; preds = %172
  %178 = getelementptr inbounds %struct.InputParameters* %173, i64 0, i32 18, !dbg !1423
  %179 = load i32* %178, align 4, !dbg !1423, !tbaa !906
  %180 = icmp eq i32 %179, 3, !dbg !1424
  br i1 %180, label %GenerateVUISequenceParameters.exit, label %181, !dbg !1425

; <label>:181                                     ; preds = %177, %172
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([75 x i8]* @str92, i64 0, i64 0)) #3, !dbg !1426
  tail call void @exit(i32 -1) #8, !dbg !1428
  unreachable, !dbg !1428

GenerateVUISequenceParameters.exit:               ; preds = %177
  %puts1.i = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str93, i64 0, i64 0)) #3, !dbg !1429
  %182 = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str76, i64 0, i64 0), i32 0, %struct.datapartition* %5) #6, !dbg !1431
  tail call void @llvm.dbg.value(metadata i32 %182, i64 0, metadata !355, metadata !699) #3, !dbg !1417
  %183 = tail call i32 @u_1(i8* getelementptr inbounds ([32 x i8]* @.str77, i64 0, i64 0), i32 0, %struct.datapartition* %5) #6, !dbg !1432
  %184 = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str78, i64 0, i64 0), i32 1, %struct.datapartition* %5) #6, !dbg !1433
  %185 = tail call i32 @u_v(i32 3, i8* getelementptr inbounds ([18 x i8]* @.str79, i64 0, i64 0), i32 2, %struct.datapartition* %5) #6, !dbg !1434
  %186 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str80, i64 0, i64 0), i32 1, %struct.datapartition* %5) #6, !dbg !1435
  %187 = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str81, i64 0, i64 0), i32 1, %struct.datapartition* %5) #6, !dbg !1436
  %188 = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([22 x i8]* @.str82, i64 0, i64 0), i32 2, %struct.datapartition* %5) #6, !dbg !1437
  %189 = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([30 x i8]* @.str83, i64 0, i64 0), i32 2, %struct.datapartition* %5) #6, !dbg !1438
  %190 = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([25 x i8]* @.str84, i64 0, i64 0), i32 0, %struct.datapartition* %5) #6, !dbg !1439
  %191 = tail call i32 @u_1(i8* getelementptr inbounds ([34 x i8]* @.str85, i64 0, i64 0), i32 0, %struct.datapartition* %5) #6, !dbg !1440
  %192 = tail call i32 @u_1(i8* getelementptr inbounds ([30 x i8]* @.str86, i64 0, i64 0), i32 0, %struct.datapartition* %5) #6, !dbg !1441
  %193 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str87, i64 0, i64 0), i32 0, %struct.datapartition* %5) #6, !dbg !1442
  %194 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str88, i64 0, i64 0), i32 0, %struct.datapartition* %5) #6, !dbg !1443
  %195 = tail call i32 @u_1(i8* getelementptr inbounds ([28 x i8]* @.str89, i64 0, i64 0), i32 0, %struct.datapartition* %5) #6, !dbg !1444
  %196 = tail call i32 @u_1(i8* getelementptr inbounds ([32 x i8]* @.str90, i64 0, i64 0), i32 0, %struct.datapartition* %5) #6, !dbg !1445
  br label %197, !dbg !1446

; <label>:197                                     ; preds = %166, %GenerateVUISequenceParameters.exit
  %198 = load %struct.Bitstream** %10, align 8, !dbg !1447, !tbaa !1257
  tail call void @SODBtoRBSP(%struct.Bitstream* %198) #6, !dbg !1448
  %199 = load %struct.Bitstream** %10, align 8, !dbg !1449, !tbaa !1257
  %200 = getelementptr inbounds %struct.Bitstream* %199, i64 0, i32 0, !dbg !1450
  %201 = load i32* %200, align 4, !dbg !1450, !tbaa !1451
  tail call void @llvm.dbg.value(metadata i32 %201, i64 0, metadata !332, metadata !699), !dbg !1452
  %202 = bitcast %struct.Bitstream* %199 to i8*, !dbg !1453
  tail call void @free(i8* %202) #7, !dbg !1454
  tail call void @free(i8* %4) #7, !dbg !1455
  ret i32 %201, !dbg !1456
}

; Function Attrs: optsize
declare i32 @RBSPtoNALU(i8*, %struct.NALU_t*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 %PPS_id) #0 {
  %rbsp = alloca [64000 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %PPS_id, i64 0, metadata !195, metadata !699), !dbg !1457
  %1 = tail call %struct.NALU_t* (i32, ...)* bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 64000) #6, !dbg !1458
  tail call void @llvm.dbg.value(metadata %struct.NALU_t* %1, i64 0, metadata !196, metadata !699), !dbg !1459
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !197, metadata !699), !dbg !1460
  %2 = getelementptr inbounds [64000 x i8]* %rbsp, i64 0, i64 0, !dbg !1461
  call void @llvm.lifetime.start(i64 64000, i8* %2) #3, !dbg !1461
  tail call void @llvm.dbg.declare(metadata [64000 x i8]* %rbsp, metadata !199, metadata !699), !dbg !1462
  %3 = sext i32 %PPS_id to i64, !dbg !1463
  %4 = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 %3, !dbg !1463
  %5 = call i32 @GeneratePic_parameter_set_rbsp(%struct.pic_parameter_set_rbsp_t* %4, i8* %2) #7, !dbg !1464
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !197, metadata !699), !dbg !1460
  %6 = call i32 @RBSPtoNALU(i8* %2, %struct.NALU_t* %1, i32 %5, i32 8, i32 3, i32 0, i32 1) #6, !dbg !1465
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !198, metadata !699), !dbg !1466
  %7 = getelementptr inbounds %struct.NALU_t* %1, i64 0, i32 0, !dbg !1467
  store i32 4, i32* %7, align 4, !dbg !1468, !tbaa !1240
  call void @llvm.lifetime.end(i64 64000, i8* %2) #3, !dbg !1469
  ret %struct.NALU_t* %1, !dbg !1469
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @GeneratePic_parameter_set_rbsp(%struct.pic_parameter_set_rbsp_t* %pps, i8* %rbsp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.pic_parameter_set_rbsp_t* %pps, i64 0, metadata !338, metadata !699), !dbg !1470
  tail call void @llvm.dbg.value(metadata i8* %rbsp, i64 0, metadata !339, metadata !699), !dbg !1471
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !341, metadata !699), !dbg !1472
  %1 = icmp eq i8* %rbsp, null, !dbg !1473
  br i1 %1, label %2, label %3, !dbg !1473, !prof !783

; <label>:2                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([31 x i8]* @__func__.GeneratePic_parameter_set_rbsp, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i32 697, i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0)) #8, !dbg !1473
  unreachable, !dbg !1473

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @calloc(i64 1, i64 120) #6, !dbg !1474
  %5 = bitcast i8* %4 to %struct.datapartition*, !dbg !1474
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %5, i64 0, metadata !340, metadata !699), !dbg !1476
  %6 = icmp eq i8* %4, null, !dbg !1477
  br i1 %6, label %7, label %8, !dbg !1478

; <label>:7                                       ; preds = %3
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str46, i64 0, i64 0)) #6, !dbg !1479
  br label %8, !dbg !1479

; <label>:8                                       ; preds = %7, %3
  %9 = tail call i8* @calloc(i64 1, i64 48) #6, !dbg !1480
  %10 = bitcast i8* %4 to %struct.Bitstream**, !dbg !1482
  %11 = bitcast i8* %4 to i8**, !dbg !1483
  store i8* %9, i8** %11, align 8, !dbg !1483, !tbaa !1257
  %12 = icmp eq i8* %9, null, !dbg !1484
  %13 = bitcast i8* %9 to %struct.Bitstream*
  br i1 %12, label %14, label %15, !dbg !1485

; <label>:14                                      ; preds = %8
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str47, i64 0, i64 0)) #6, !dbg !1486
  %.pre = load %struct.Bitstream** %10, align 8, !dbg !1487, !tbaa !1257
  br label %15, !dbg !1486

; <label>:15                                      ; preds = %14, %8
  %16 = phi %struct.Bitstream* [ %.pre, %14 ], [ %13, %8 ]
  %17 = getelementptr inbounds %struct.Bitstream* %16, i64 0, i32 9, !dbg !1488
  store i8* %rbsp, i8** %17, align 8, !dbg !1489, !tbaa !1266
  %18 = getelementptr inbounds %struct.Bitstream* %16, i64 0, i32 1, !dbg !1490
  store i32 8, i32* %18, align 4, !dbg !1491, !tbaa !1270
  %19 = load %struct.ImageParameters** @img, align 8, !dbg !1492, !tbaa !707
  %20 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 112, !dbg !1493
  %21 = load i32* %20, align 4, !dbg !1493, !tbaa !1085
  %22 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 7, !dbg !1494
  store i32 %21, i32* %22, align 4, !dbg !1495, !tbaa !1088
  %23 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 1, !dbg !1496
  %24 = load i32* %23, align 4, !dbg !1496, !tbaa !1030
  %25 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str48, i64 0, i64 0), i32 %24, %struct.datapartition* %5) #6, !dbg !1497
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !341, metadata !699), !dbg !1472
  %26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 2, !dbg !1498
  %27 = load i32* %26, align 4, !dbg !1498, !tbaa !1026
  %28 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str49, i64 0, i64 0), i32 %27, %struct.datapartition* %5) #6, !dbg !1499
  %29 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 3, !dbg !1500
  %30 = load i32* %29, align 4, !dbg !1500, !tbaa !1036
  %31 = tail call i32 @u_1(i8* getelementptr inbounds ([30 x i8]* @.str50, i64 0, i64 0), i32 %30, %struct.datapartition* %5) #6, !dbg !1501
  %32 = load i32* %22, align 4, !dbg !1502, !tbaa !1088
  %33 = tail call i32 @u_1(i8* getelementptr inbounds ([28 x i8]* @.str51, i64 0, i64 0), i32 %32, %struct.datapartition* %5) #6, !dbg !1503
  %34 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 8, !dbg !1504
  %35 = load i32* %34, align 4, !dbg !1504, !tbaa !1093
  %36 = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str52, i64 0, i64 0), i32 %35, %struct.datapartition* %5) #6, !dbg !1505
  %37 = load i32* %34, align 4, !dbg !1506, !tbaa !1093
  %38 = icmp eq i32 %37, 0, !dbg !1508
  br i1 %38, label %.loopexit12, label %39, !dbg !1509

; <label>:39                                      ; preds = %15
  %40 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !1510
  %41 = load i32* %40, align 4, !dbg !1510, !tbaa !1103
  %42 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str53, i64 0, i64 0), i32 %41, %struct.datapartition* %5) #6, !dbg !1512
  %43 = load i32* %40, align 4, !dbg !1513, !tbaa !1103
  switch i32 %43, label %.loopexit12 [
    i32 0, label %.preheader
    i32 2, label %.preheader13
    i32 3, label %63
    i32 4, label %63
    i32 5, label %63
    i32 6, label %70
  ], !dbg !1515

.preheader13:                                     ; preds = %39
  %44 = load i32* %34, align 4, !dbg !1516, !tbaa !1093
  %45 = icmp eq i32 %44, 0, !dbg !1520
  br i1 %45, label %.loopexit12, label %.lr.ph22, !dbg !1521

.preheader:                                       ; preds = %39, %.preheader
  %i.018 = phi i32 [ %50, %.preheader ], [ 0, %39 ]
  %46 = zext i32 %i.018 to i64, !dbg !1522
  %47 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 10, i64 %46, !dbg !1522
  %48 = load i32* %47, align 4, !dbg !1522, !tbaa !825
  %49 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str54, i64 0, i64 0), i32 %48, %struct.datapartition* %5) #6, !dbg !1525
  %50 = add i32 %i.018, 1, !dbg !1526
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !343, metadata !699), !dbg !1527
  %51 = load i32* %34, align 4, !dbg !1528, !tbaa !1093
  %52 = icmp ugt i32 %50, %51, !dbg !1529
  br i1 %52, label %.loopexit12, label %.preheader, !dbg !1530

.lr.ph22:                                         ; preds = %.preheader13, %.lr.ph22
  %i.120 = phi i32 [ %60, %.lr.ph22 ], [ 0, %.preheader13 ]
  %53 = zext i32 %i.120 to i64, !dbg !1531
  %54 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 11, i64 %53, !dbg !1531
  %55 = load i32* %54, align 4, !dbg !1531, !tbaa !825
  %56 = tail call i32 @ue_v(i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i32 %55, %struct.datapartition* %5) #6, !dbg !1533
  %57 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 12, i64 %53, !dbg !1534
  %58 = load i32* %57, align 4, !dbg !1534, !tbaa !825
  %59 = tail call i32 @ue_v(i8* getelementptr inbounds ([21 x i8]* @.str56, i64 0, i64 0), i32 %58, %struct.datapartition* %5) #6, !dbg !1535
  %60 = add nuw i32 %i.120, 1, !dbg !1536
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !343, metadata !699), !dbg !1527
  %61 = load i32* %34, align 4, !dbg !1516, !tbaa !1093
  %62 = icmp ult i32 %60, %61, !dbg !1520
  br i1 %62, label %.lr.ph22, label %.loopexit12, !dbg !1521

; <label>:63                                      ; preds = %39, %39, %39
  %64 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 13, !dbg !1537
  %65 = load i32* %64, align 4, !dbg !1537, !tbaa !1142
  %66 = tail call i32 @u_1(i8* getelementptr inbounds ([39 x i8]* @.str57, i64 0, i64 0), i32 %65, %struct.datapartition* %5) #6, !dbg !1540
  %67 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 14, !dbg !1541
  %68 = load i32* %67, align 4, !dbg !1541, !tbaa !1147
  %69 = tail call i32 @ue_v(i8* getelementptr inbounds ([36 x i8]* @.str58, i64 0, i64 0), i32 %68, %struct.datapartition* %5) #6, !dbg !1542
  br label %.loopexit12, !dbg !1543

; <label>:70                                      ; preds = %39
  %71 = load i32* %34, align 4, !dbg !1544, !tbaa !1093
  %72 = icmp ugt i32 %71, 3, !dbg !1548
  br i1 %72, label %76, label %73, !dbg !1549

; <label>:73                                      ; preds = %70
  %74 = icmp ugt i32 %71, 1, !dbg !1550
  br i1 %74, label %76, label %75, !dbg !1552

; <label>:75                                      ; preds = %73
  %not. = icmp ne i32 %71, 0
  %. = zext i1 %not. to i32
  br label %76

; <label>:76                                      ; preds = %75, %73, %70
  %NumberBitsPerSliceGroupId.0 = phi i32 [ 3, %70 ], [ 2, %73 ], [ %., %75 ]
  %77 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 15, !dbg !1553
  %78 = load i32* %77, align 4, !dbg !1553, !tbaa !1166
  %79 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0), i32 %78, %struct.datapartition* %5) #6, !dbg !1554
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !343, metadata !699), !dbg !1527
  %80 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 16, !dbg !1555
  br label %81, !dbg !1558

; <label>:81                                      ; preds = %76, %81
  %i.223 = phi i32 [ 0, %76 ], [ %88, %81 ]
  %82 = zext i32 %i.223 to i64, !dbg !1559
  %83 = load i8** %80, align 8, !dbg !1555, !tbaa !1173
  %84 = getelementptr inbounds i8* %83, i64 %82, !dbg !1559
  %85 = load i8* %84, align 1, !dbg !1559, !tbaa !842
  %86 = zext i8 %85 to i32, !dbg !1559
  %87 = tail call i32 @u_v(i32 %NumberBitsPerSliceGroupId.0, i8* getelementptr inbounds ([24 x i8]* @.str60, i64 0, i64 0), i32 %86, %struct.datapartition* %5) #6, !dbg !1560
  %88 = add i32 %i.223, 1, !dbg !1561
  tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !343, metadata !699), !dbg !1527
  %89 = load i32* %77, align 4, !dbg !1562, !tbaa !1166
  %90 = icmp ugt i32 %88, %89, !dbg !1563
  br i1 %90, label %.loopexit12, label %81, !dbg !1558

.loopexit12:                                      ; preds = %81, %.lr.ph22, %.preheader, %.preheader13, %39, %15, %63
  %91 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 17, !dbg !1564
  %92 = load i32* %91, align 4, !dbg !1564, !tbaa !1188
  %93 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str61, i64 0, i64 0), i32 %92, %struct.datapartition* %5) #6, !dbg !1565
  %94 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 18, !dbg !1566
  %95 = load i32* %94, align 4, !dbg !1566, !tbaa !1191
  %96 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str62, i64 0, i64 0), i32 %95, %struct.datapartition* %5) #6, !dbg !1567
  %97 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 19, !dbg !1568
  %98 = load i32* %97, align 4, !dbg !1568, !tbaa !1194
  %99 = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str63, i64 0, i64 0), i32 %98, %struct.datapartition* %5) #6, !dbg !1569
  %100 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 20, !dbg !1570
  %101 = load i32* %100, align 4, !dbg !1570, !tbaa !1197
  %102 = tail call i32 @u_v(i32 2, i8* getelementptr inbounds ([25 x i8]* @.str64, i64 0, i64 0), i32 %101, %struct.datapartition* %5) #6, !dbg !1571
  %103 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 21, !dbg !1572
  %104 = load i32* %103, align 4, !dbg !1572, !tbaa !1200
  %105 = tail call i32 @se_v(i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0), i32 %104, %struct.datapartition* %5) #6, !dbg !1573
  %106 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 22, !dbg !1574
  %107 = load i32* %106, align 4, !dbg !1574, !tbaa !1203
  %108 = tail call i32 @se_v(i8* getelementptr inbounds ([25 x i8]* @.str66, i64 0, i64 0), i32 %107, %struct.datapartition* %5) #6, !dbg !1575
  %109 = load %struct.InputParameters** @input, align 8, !dbg !1576, !tbaa !707
  %110 = getelementptr inbounds %struct.InputParameters* %109, i64 0, i32 0, !dbg !1578
  %111 = load i32* %110, align 4, !dbg !1578, !tbaa !780
  tail call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !345, metadata !699), !dbg !1579
  switch i32 %111, label %116 [
    i32 144, label %112
    i32 122, label %112
    i32 110, label %112
    i32 100, label %112
  ], !dbg !1580

; <label>:112                                     ; preds = %.loopexit12, %.loopexit12, %.loopexit12, %.loopexit12
  %113 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 24, !dbg !1582
  %114 = load i32* %113, align 4, !dbg !1582, !tbaa !1583
  %115 = tail call i32 @se_v(i8* getelementptr inbounds ([28 x i8]* @.str67, i64 0, i64 0), i32 %114, %struct.datapartition* %5) #6, !dbg !1584
  br label %120, !dbg !1585

; <label>:116                                     ; preds = %.loopexit12
  %117 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 23, !dbg !1586
  %118 = load i32* %117, align 4, !dbg !1586, !tbaa !1206
  %119 = tail call i32 @se_v(i8* getelementptr inbounds ([28 x i8]* @.str67, i64 0, i64 0), i32 %118, %struct.datapartition* %5) #6, !dbg !1587
  br label %120

; <label>:120                                     ; preds = %116, %112
  %121 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 26, !dbg !1588
  %122 = load i32* %121, align 4, !dbg !1588, !tbaa !1216
  %123 = tail call i32 @u_1(i8* getelementptr inbounds ([44 x i8]* @.str68, i64 0, i64 0), i32 %122, %struct.datapartition* %5) #6, !dbg !1589
  %124 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 27, !dbg !1590
  %125 = load i32* %124, align 4, !dbg !1590, !tbaa !1221
  %126 = tail call i32 @u_1(i8* getelementptr inbounds ([33 x i8]* @.str69, i64 0, i64 0), i32 %125, %struct.datapartition* %5) #6, !dbg !1591
  %127 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 28, !dbg !1592
  %128 = load i32* %127, align 4, !dbg !1592, !tbaa !1224
  %129 = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str70, i64 0, i64 0), i32 %128, %struct.datapartition* %5) #6, !dbg !1593
  switch i32 %111, label %171 [
    i32 144, label %130
    i32 122, label %130
    i32 110, label %130
    i32 100, label %130
  ], !dbg !1594

; <label>:130                                     ; preds = %120, %120, %120, %120
  %131 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 4, !dbg !1596
  %132 = load i32* %131, align 4, !dbg !1596, !tbaa !1044
  %133 = tail call i32 @u_1(i8* getelementptr inbounds ([29 x i8]* @.str71, i64 0, i64 0), i32 %132, %struct.datapartition* %5) #6, !dbg !1598
  %134 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 5, !dbg !1599
  %135 = load i32* %134, align 4, !dbg !1599, !tbaa !1049
  %136 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str72, i64 0, i64 0), i32 %135, %struct.datapartition* %5) #6, !dbg !1600
  %137 = load i32* %134, align 4, !dbg !1601, !tbaa !1049
  %138 = icmp eq i32 %137, 0, !dbg !1603
  br i1 %138, label %.loopexit, label %139, !dbg !1604

; <label>:139                                     ; preds = %130
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !343, metadata !699), !dbg !1527
  %140 = load i32* %131, align 4, !dbg !1605, !tbaa !1044
  %.mask = and i32 %140, 2147483647, !dbg !1609
  %141 = icmp eq i32 %.mask, 2147483645, !dbg !1609
  br i1 %141, label %.loopexit, label %.lr.ph, !dbg !1610

.lr.ph:                                           ; preds = %139, %162
  %i.316 = phi i32 [ %163, %162 ], [ 0, %139 ]
  %142 = zext i32 %i.316 to i64, !dbg !1611
  %143 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %142, !dbg !1611
  %144 = load i32* %143, align 4, !dbg !1611, !tbaa !825
  %145 = tail call i32 @u_1(i8* getelementptr inbounds ([35 x i8]* @.str73, i64 0, i64 0), i32 %144, %struct.datapartition* %5) #6, !dbg !1613
  %146 = load i32* %143, align 4, !dbg !1614, !tbaa !825
  %147 = icmp eq i32 %146, 0, !dbg !1614
  br i1 %147, label %162, label %148, !dbg !1616

; <label>:148                                     ; preds = %.lr.ph
  %149 = icmp ult i32 %i.316, 6, !dbg !1617
  br i1 %149, label %150, label %155, !dbg !1620

; <label>:150                                     ; preds = %148
  %151 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %142, i64 0, !dbg !1621
  %152 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 %142, i64 0, !dbg !1622
  %153 = getelementptr inbounds [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 %142, !dbg !1623
  %154 = tail call i32 @Scaling_List(i16* %151, i16* %152, i32 16, i16* %153, %struct.datapartition* %5) #7, !dbg !1624
  br label %162, !dbg !1625

; <label>:155                                     ; preds = %148
  %156 = add i32 %i.316, -6, !dbg !1626
  %157 = zext i32 %156 to i64, !dbg !1627
  %158 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %157, i64 0, !dbg !1627
  %159 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 %157, i64 0, !dbg !1628
  %160 = getelementptr inbounds [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 %157, !dbg !1629
  %161 = tail call i32 @Scaling_List(i16* %158, i16* %159, i32 64, i16* %160, %struct.datapartition* %5) #7, !dbg !1630
  br label %162

; <label>:162                                     ; preds = %.lr.ph, %155, %150
  %163 = add nuw i32 %i.316, 1, !dbg !1631
  tail call void @llvm.dbg.value(metadata i32 %163, i64 0, metadata !343, metadata !699), !dbg !1527
  %164 = load i32* %131, align 4, !dbg !1605, !tbaa !1044
  %165 = shl i32 %164, 1, !dbg !1632
  %166 = add i32 %165, 6, !dbg !1633
  %167 = icmp ult i32 %163, %166, !dbg !1609
  br i1 %167, label %.lr.ph, label %.loopexit, !dbg !1610

.loopexit:                                        ; preds = %162, %139, %130
  %168 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 25, !dbg !1634
  %169 = load i32* %168, align 4, !dbg !1634, !tbaa !1635
  %170 = tail call i32 @se_v(i8* getelementptr inbounds ([35 x i8]* @.str74, i64 0, i64 0), i32 %169, %struct.datapartition* %5) #6, !dbg !1636
  br label %171, !dbg !1637

; <label>:171                                     ; preds = %120, %.loopexit
  %172 = load %struct.Bitstream** %10, align 8, !dbg !1638, !tbaa !1257
  tail call void @SODBtoRBSP(%struct.Bitstream* %172) #6, !dbg !1639
  %173 = load %struct.Bitstream** %10, align 8, !dbg !1640, !tbaa !1257
  %174 = getelementptr inbounds %struct.Bitstream* %173, i64 0, i32 0, !dbg !1641
  %175 = load i32* %174, align 4, !dbg !1641, !tbaa !1451
  tail call void @llvm.dbg.value(metadata i32 %175, i64 0, metadata !342, metadata !699), !dbg !1642
  %176 = bitcast %struct.Bitstream* %173 to i8*, !dbg !1643
  tail call void @free(i8* %176) #7, !dbg !1644
  tail call void @free(i8* %4) #7, !dbg !1645
  ret i32 %175, !dbg !1646
}

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #4

; Function Attrs: optsize
declare %struct.colocated_params* @alloc_colocated(i32, i32, i32) #2

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Scaling_List(i16* nocapture readonly %scalingListinput, i16* nocapture %scalingList, i32 %sizeOfScalingList, i16* nocapture %UseDefaultScalingMatrix, %struct.datapartition* %partition) #0 {
  tail call void @llvm.dbg.value(metadata i16* %scalingListinput, i64 0, metadata !311, metadata !699), !dbg !1647
  tail call void @llvm.dbg.value(metadata i16* %scalingList, i64 0, metadata !312, metadata !699), !dbg !1648
  tail call void @llvm.dbg.value(metadata i32 %sizeOfScalingList, i64 0, metadata !313, metadata !699), !dbg !1649
  tail call void @llvm.dbg.value(metadata i16* %UseDefaultScalingMatrix, i64 0, metadata !314, metadata !699), !dbg !1650
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %partition, i64 0, metadata !315, metadata !699), !dbg !1651
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !318, metadata !699), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !320, metadata !699), !dbg !1653
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !321, metadata !699), !dbg !1654
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !316, metadata !699), !dbg !1655
  %1 = icmp sgt i32 %sizeOfScalingList, 0, !dbg !1656
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !1659

.lr.ph:                                           ; preds = %0
  %2 = icmp eq i32 %sizeOfScalingList, 16, !dbg !1660
  %3 = add i32 %sizeOfScalingList, -1, !dbg !1659
  br label %4, !dbg !1659

; <label>:4                                       ; preds = %._crit_edge6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge6 ]
  %nextScale.05 = phi i32 [ 8, %.lr.ph ], [ %nextScale.1, %._crit_edge6 ]
  %lastScale.04 = phi i32 [ 8, %.lr.ph ], [ %33, %._crit_edge6 ]
  %len.03 = phi i32 [ 0, %.lr.ph ], [ %len.1, %._crit_edge6 ]
  br i1 %2, label %5, label %7, !dbg !1662

; <label>:5                                       ; preds = %4
  %6 = getelementptr inbounds [16 x i8]* @ZZ_SCAN, i64 0, i64 %indvars.iv, !dbg !1663
  br label %9, !dbg !1662

; <label>:7                                       ; preds = %4
  %8 = getelementptr inbounds [64 x i8]* @ZZ_SCAN8, i64 0, i64 %indvars.iv, !dbg !1664
  br label %9, !dbg !1662

; <label>:9                                       ; preds = %7, %5
  %.sink.in = phi i8* [ %6, %5 ], [ %8, %7 ]
  %.sink = load i8* %.sink.in, align 1, !dbg !1663
  %10 = icmp eq i32 %nextScale.05, 0, !dbg !1665
  %.pre = zext i8 %.sink to i64, !dbg !1667
  br i1 %10, label %._crit_edge6, label %11, !dbg !1668

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds i16* %scalingListinput, i64 %.pre, !dbg !1669
  %13 = load i16* %12, align 2, !dbg !1669, !tbaa !1671
  %14 = sext i16 %13 to i32, !dbg !1669
  %15 = sub nsw i32 %14, %lastScale.04, !dbg !1673
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !319, metadata !699), !dbg !1674
  %16 = icmp sgt i32 %15, 127, !dbg !1675
  br i1 %16, label %17, label %19, !dbg !1677

; <label>:17                                      ; preds = %11
  %18 = add nsw i32 %15, -256, !dbg !1678
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !319, metadata !699), !dbg !1674
  br label %22, !dbg !1679

; <label>:19                                      ; preds = %11
  %20 = icmp slt i32 %15, -128, !dbg !1680
  %21 = add nsw i32 %15, 256, !dbg !1682
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !319, metadata !699), !dbg !1674
  %. = select i1 %20, i32 %21, i32 %15, !dbg !1683
  br label %22, !dbg !1683

; <label>:22                                      ; preds = %19, %17
  %delta_scale.0 = phi i32 [ %18, %17 ], [ %., %19 ]
  %23 = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i32 %delta_scale.0, %struct.datapartition* %partition) #6, !dbg !1684
  %24 = add nsw i32 %23, %len.03, !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !318, metadata !699), !dbg !1652
  %25 = load i16* %12, align 2, !dbg !1686, !tbaa !1671
  %26 = sext i16 %25 to i32, !dbg !1686
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !321, metadata !699), !dbg !1654
  %27 = icmp eq i8 %.sink, 0, !dbg !1687
  %28 = icmp eq i16 %25, 0, !dbg !1688
  %.1 = and i1 %27, %28, !dbg !1689
  %29 = zext i1 %.1 to i16, !dbg !1689
  %30 = load i16* %UseDefaultScalingMatrix, align 2, !dbg !1690, !tbaa !1671
  %31 = or i16 %29, %30, !dbg !1690
  store i16 %31, i16* %UseDefaultScalingMatrix, align 2, !dbg !1690, !tbaa !1671
  br label %._crit_edge6, !dbg !1691

._crit_edge6:                                     ; preds = %9, %22
  %len.1 = phi i32 [ %24, %22 ], [ %len.03, %9 ]
  %nextScale.1 = phi i32 [ %26, %22 ], [ 0, %9 ]
  %32 = icmp eq i32 %nextScale.1, 0, !dbg !1692
  %33 = select i1 %32, i32 %lastScale.04, i32 %nextScale.1, !dbg !1693
  %34 = trunc i32 %33 to i16, !dbg !1693
  %35 = getelementptr inbounds i16* %scalingList, i64 %.pre, !dbg !1667
  store i16 %34, i16* %35, align 2, !dbg !1694, !tbaa !1671
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !320, metadata !699), !dbg !1653
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1659
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !1659
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !1659
  br i1 %exitcond, label %._crit_edge, label %4, !dbg !1659

._crit_edge:                                      ; preds = %._crit_edge6, %0
  %len.0.lcssa = phi i32 [ 0, %0 ], [ %len.1, %._crit_edge6 ]
  ret i32 %len.0.lcssa, !dbg !1695
}

; Function Attrs: optsize
declare i32 @se_v(i8*, i32, %struct.datapartition*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #5

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: optsize
declare i32 @u_v(i32, i8*, i32, %struct.datapartition*) #2

; Function Attrs: optsize
declare i32 @u_1(i8*, i32, %struct.datapartition*) #2

; Function Attrs: optsize
declare i32 @ue_v(i8*, i32, %struct.datapartition*) #2

; Function Attrs: optsize
declare void @SODBtoRBSP(%struct.Bitstream*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: noreturn optsize
declare void @exit(i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!695, !696, !697}
!llvm.ident = !{!698}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !18, subprograms: !21, globals: !356, imports: !167)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parset.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !8, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 111, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "FRAME_CODING", value: 0)
!12 = !DIEnumerator(name: "FIELD_CODING", value: 1)
!13 = !DIEnumerator(name: "ADAPTIVE_CODING", value: 2)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 178, size: 32, align: 32, elements: !15)
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "UVLC", value: 0)
!17 = !DIEnumerator(name: "CABAC", value: 1)
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!21 = !{!22, !166, !168, !191, !200, !219, !232, !322, !334, !346, !349, !350}
!22 = !DISubprogram(name: "GenerateParameterSets", scope: !1, file: !1, line: 60, type: !23, isLocal: false, isDefinition: true, scopeLine: 61, isOptimized: true, function: void ()* @GenerateParameterSets, variables: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{null}
!25 = !{!26, !126}
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sps", scope: !22, file: !1, line: 62, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !4, line: 193, baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 149, size: 17056, align: 32, elements: !30)
!30 = !{!31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !29, file: !4, line: 151, baseType: !32, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !4, line: 45, baseType: !3)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !29, file: !4, line: 153, baseType: !20, size: 32, align: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !29, file: !4, line: 154, baseType: !32, size: 32, align: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !29, file: !4, line: 155, baseType: !32, size: 32, align: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !29, file: !4, line: 156, baseType: !32, size: 32, align: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !29, file: !4, line: 157, baseType: !32, size: 32, align: 32, offset: 160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !29, file: !4, line: 158, baseType: !20, size: 32, align: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !29, file: !4, line: 159, baseType: !20, size: 32, align: 32, offset: 224)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !29, file: !4, line: 160, baseType: !20, size: 32, align: 32, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !29, file: !4, line: 162, baseType: !32, size: 32, align: 32, offset: 288)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !29, file: !4, line: 163, baseType: !43, size: 256, align: 32, offset: 320)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 256, align: 32, elements: !45)
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !{!46}
!46 = !DISubrange(count: 8)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !29, file: !4, line: 165, baseType: !20, size: 32, align: 32, offset: 576)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !29, file: !4, line: 166, baseType: !20, size: 32, align: 32, offset: 608)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !29, file: !4, line: 167, baseType: !20, size: 32, align: 32, offset: 640)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !29, file: !4, line: 168, baseType: !20, size: 32, align: 32, offset: 672)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !29, file: !4, line: 170, baseType: !20, size: 32, align: 32, offset: 704)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !29, file: !4, line: 172, baseType: !32, size: 32, align: 32, offset: 736)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !29, file: !4, line: 173, baseType: !44, size: 32, align: 32, offset: 768)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !29, file: !4, line: 174, baseType: !44, size: 32, align: 32, offset: 800)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !29, file: !4, line: 175, baseType: !20, size: 32, align: 32, offset: 832)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !29, file: !4, line: 177, baseType: !57, size: 8192, align: 32, offset: 864)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8192, align: 32, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !29, file: !4, line: 178, baseType: !20, size: 32, align: 32, offset: 9056)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !29, file: !4, line: 179, baseType: !32, size: 32, align: 32, offset: 9088)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !29, file: !4, line: 180, baseType: !20, size: 32, align: 32, offset: 9120)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !29, file: !4, line: 181, baseType: !20, size: 32, align: 32, offset: 9152)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !29, file: !4, line: 182, baseType: !32, size: 32, align: 32, offset: 9184)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !29, file: !4, line: 184, baseType: !32, size: 32, align: 32, offset: 9216)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !29, file: !4, line: 185, baseType: !32, size: 32, align: 32, offset: 9248)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !29, file: !4, line: 186, baseType: !32, size: 32, align: 32, offset: 9280)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !29, file: !4, line: 187, baseType: !20, size: 32, align: 32, offset: 9312)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !29, file: !4, line: 188, baseType: !20, size: 32, align: 32, offset: 9344)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !29, file: !4, line: 189, baseType: !20, size: 32, align: 32, offset: 9376)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !29, file: !4, line: 190, baseType: !20, size: 32, align: 32, offset: 9408)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !29, file: !4, line: 191, baseType: !32, size: 32, align: 32, offset: 9440)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !29, file: !4, line: 192, baseType: !74, size: 7584, align: 32, offset: 9472)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !4, line: 99, baseType: !75)
!75 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 63, size: 7584, align: 32, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !75, file: !4, line: 65, baseType: !32, size: 32, align: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !75, file: !4, line: 66, baseType: !20, size: 32, align: 32, offset: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !75, file: !4, line: 67, baseType: !20, size: 32, align: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !75, file: !4, line: 68, baseType: !20, size: 32, align: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !75, file: !4, line: 69, baseType: !32, size: 32, align: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !75, file: !4, line: 70, baseType: !32, size: 32, align: 32, offset: 160)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !75, file: !4, line: 71, baseType: !32, size: 32, align: 32, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !75, file: !4, line: 72, baseType: !20, size: 32, align: 32, offset: 224)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !75, file: !4, line: 73, baseType: !32, size: 32, align: 32, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !75, file: !4, line: 74, baseType: !32, size: 32, align: 32, offset: 288)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !75, file: !4, line: 75, baseType: !20, size: 32, align: 32, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !75, file: !4, line: 76, baseType: !20, size: 32, align: 32, offset: 352)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !75, file: !4, line: 77, baseType: !20, size: 32, align: 32, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !75, file: !4, line: 78, baseType: !32, size: 32, align: 32, offset: 416)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !75, file: !4, line: 79, baseType: !20, size: 32, align: 32, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !75, file: !4, line: 80, baseType: !20, size: 32, align: 32, offset: 480)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !75, file: !4, line: 81, baseType: !32, size: 32, align: 32, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !75, file: !4, line: 82, baseType: !20, size: 32, align: 32, offset: 544)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !75, file: !4, line: 83, baseType: !20, size: 32, align: 32, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !75, file: !4, line: 84, baseType: !32, size: 32, align: 32, offset: 608)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !75, file: !4, line: 85, baseType: !32, size: 32, align: 32, offset: 640)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !75, file: !4, line: 86, baseType: !99, size: 3296, align: 32, offset: 672)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !4, line: 60, baseType: !100)
!100 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 3296, align: 32, elements: !101)
!101 = !{!102, !103, !104, !105, !109, !110, !111, !112, !113, !114}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !100, file: !4, line: 50, baseType: !20, size: 32, align: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !100, file: !4, line: 51, baseType: !20, size: 32, align: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !100, file: !4, line: 52, baseType: !20, size: 32, align: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !100, file: !4, line: 53, baseType: !106, size: 1024, align: 32, offset: 96)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1024, align: 32, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !100, file: !4, line: 54, baseType: !106, size: 1024, align: 32, offset: 1120)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !100, file: !4, line: 55, baseType: !106, size: 1024, align: 32, offset: 2144)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !100, file: !4, line: 56, baseType: !20, size: 32, align: 32, offset: 3168)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !100, file: !4, line: 57, baseType: !20, size: 32, align: 32, offset: 3200)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !100, file: !4, line: 58, baseType: !20, size: 32, align: 32, offset: 3232)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !100, file: !4, line: 59, baseType: !20, size: 32, align: 32, offset: 3264)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !75, file: !4, line: 87, baseType: !32, size: 32, align: 32, offset: 3968)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !75, file: !4, line: 88, baseType: !99, size: 3296, align: 32, offset: 4000)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !75, file: !4, line: 90, baseType: !32, size: 32, align: 32, offset: 7296)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !75, file: !4, line: 91, baseType: !32, size: 32, align: 32, offset: 7328)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !75, file: !4, line: 92, baseType: !32, size: 32, align: 32, offset: 7360)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !75, file: !4, line: 93, baseType: !20, size: 32, align: 32, offset: 7392)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !75, file: !4, line: 94, baseType: !20, size: 32, align: 32, offset: 7424)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !75, file: !4, line: 95, baseType: !20, size: 32, align: 32, offset: 7456)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !75, file: !4, line: 96, baseType: !20, size: 32, align: 32, offset: 7488)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !75, file: !4, line: 97, baseType: !20, size: 32, align: 32, offset: 7520)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !75, file: !4, line: 98, baseType: !20, size: 32, align: 32, offset: 7552)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pps", scope: !22, file: !1, line: 63, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !4, line: 145, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 103, size: 1920, align: 64, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !143, !144, !145, !146, !147, !148, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !129, file: !4, line: 105, baseType: !32, size: 32, align: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !129, file: !4, line: 106, baseType: !20, size: 32, align: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !129, file: !4, line: 107, baseType: !20, size: 32, align: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !129, file: !4, line: 108, baseType: !32, size: 32, align: 32, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !129, file: !4, line: 110, baseType: !32, size: 32, align: 32, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !129, file: !4, line: 111, baseType: !32, size: 32, align: 32, offset: 160)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !129, file: !4, line: 112, baseType: !43, size: 256, align: 32, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !129, file: !4, line: 115, baseType: !32, size: 32, align: 32, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !129, file: !4, line: 116, baseType: !20, size: 32, align: 32, offset: 480)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !129, file: !4, line: 117, baseType: !20, size: 32, align: 32, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !129, file: !4, line: 119, baseType: !142, size: 256, align: 32, offset: 544)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, align: 32, elements: !45)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !129, file: !4, line: 121, baseType: !142, size: 256, align: 32, offset: 800)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !129, file: !4, line: 122, baseType: !142, size: 256, align: 32, offset: 1056)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !129, file: !4, line: 124, baseType: !32, size: 32, align: 32, offset: 1312)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !129, file: !4, line: 125, baseType: !20, size: 32, align: 32, offset: 1344)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !129, file: !4, line: 127, baseType: !20, size: 32, align: 32, offset: 1376)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !129, file: !4, line: 128, baseType: !149, size: 64, align: 64, offset: 1408)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !151, line: 30, baseType: !152)
!151 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!152 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !129, file: !4, line: 130, baseType: !44, size: 32, align: 32, offset: 1472)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !129, file: !4, line: 131, baseType: !44, size: 32, align: 32, offset: 1504)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !129, file: !4, line: 132, baseType: !32, size: 32, align: 32, offset: 1536)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !129, file: !4, line: 133, baseType: !20, size: 32, align: 32, offset: 1568)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !129, file: !4, line: 134, baseType: !44, size: 32, align: 32, offset: 1600)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !129, file: !4, line: 135, baseType: !44, size: 32, align: 32, offset: 1632)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !129, file: !4, line: 136, baseType: !44, size: 32, align: 32, offset: 1664)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !129, file: !4, line: 138, baseType: !44, size: 32, align: 32, offset: 1696)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !129, file: !4, line: 139, baseType: !44, size: 32, align: 32, offset: 1728)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !129, file: !4, line: 141, baseType: !32, size: 32, align: 32, offset: 1760)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !129, file: !4, line: 142, baseType: !32, size: 32, align: 32, offset: 1792)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !129, file: !4, line: 143, baseType: !32, size: 32, align: 32, offset: 1824)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !129, file: !4, line: 144, baseType: !32, size: 32, align: 32, offset: 1856)
!166 = !DISubprogram(name: "FreeParameterSets", scope: !1, file: !1, line: 119, type: !23, isLocal: false, isDefinition: true, scopeLine: 120, isOptimized: true, function: void ()* @FreeParameterSets, variables: !167)
!167 = !{}
!168 = !DISubprogram(name: "GenerateSeq_parameter_set_NALU", scope: !1, file: !1, line: 141, type: !169, isLocal: false, isDefinition: true, scopeLine: 142, isOptimized: true, function: %struct.NALU_t* ()* @GenerateSeq_parameter_set_NALU, variables: !183)
!169 = !DISubroutineType(types: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALU_t", file: !173, line: 49, baseType: !174)
!173 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nalucommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!174 = !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 40, size: 256, align: 64, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !174, file: !173, line: 42, baseType: !44, size: 32, align: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !174, file: !173, line: 43, baseType: !20, size: 32, align: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !174, file: !173, line: 44, baseType: !20, size: 32, align: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !174, file: !173, line: 45, baseType: !44, size: 32, align: 32, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !174, file: !173, line: 46, baseType: !44, size: 32, align: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !174, file: !173, line: 47, baseType: !44, size: 32, align: 32, offset: 160)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !174, file: !173, line: 48, baseType: !149, size: 64, align: 64, offset: 192)
!183 = !{!184, !185, !186, !187}
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !168, file: !1, line: 143, type: !171)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "RBSPlen", scope: !168, file: !1, line: 144, type: !44)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "NALUlen", scope: !168, file: !1, line: 145, type: !44)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rbsp", scope: !168, file: !1, line: 146, type: !188)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 512000, align: 8, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 64000)
!191 = !DISubprogram(name: "GeneratePic_parameter_set_NALU", scope: !1, file: !1, line: 171, type: !192, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, function: %struct.NALU_t* (i32)* @GeneratePic_parameter_set_NALU, variables: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{!171, !44}
!194 = !{!195, !196, !197, !198, !199}
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PPS_id", arg: 1, scope: !191, file: !1, line: 171, type: !44)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !191, file: !1, line: 173, type: !171)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "RBSPlen", scope: !191, file: !1, line: 174, type: !44)
!198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "NALUlen", scope: !191, file: !1, line: 175, type: !44)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rbsp", scope: !191, file: !1, line: 176, type: !188)
!200 = !DISubprogram(name: "GenerateSequenceParameterSet", scope: !1, file: !1, line: 203, type: !201, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.seq_parameter_set_rbsp_t*, i32)* @GenerateSequenceParameterSet, variables: !203)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !27, !44}
!203 = !{!204, !205, !206, !207, !211, !212, !213, !215, !216, !217, !218}
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sps", arg: 1, scope: !200, file: !1, line: 203, type: !27)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "SPS_id", arg: 2, scope: !200, file: !1, line: 203, type: !44)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !200, file: !1, line: 205, type: !20)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "SubWidthC", scope: !200, file: !1, line: 206, type: !208)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 128, align: 32, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 4)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "SubHeightC", scope: !200, file: !1, line: 207, type: !208)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frext_profile", scope: !200, file: !1, line: 209, type: !44)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "PicWidthInMbs", scope: !214, file: !1, line: 281, type: !44)
!214 = distinct !DILexicalBlock(scope: !200, file: !1, line: 280, column: 3)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "PicHeightInMapUnits", scope: !214, file: !1, line: 281, type: !44)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "FrameHeightInMbs", scope: !214, file: !1, line: 281, type: !44)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "width", scope: !214, file: !1, line: 282, type: !44)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "height", scope: !214, file: !1, line: 282, type: !44)
!219 = !DISubprogram(name: "GeneratePictureParameterSet", scope: !1, file: !1, line: 361, type: !220, isLocal: false, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pic_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t*, i32, i32, i32, i32, i32)* @GeneratePictureParameterSet, variables: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !127, !27, !44, !44, !44, !44, !44}
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pps", arg: 1, scope: !219, file: !1, line: 361, type: !127)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sps", arg: 2, scope: !219, file: !1, line: 361, type: !27)
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "PPS_id", arg: 3, scope: !219, file: !1, line: 361, type: !44)
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WeightedPrediction", arg: 4, scope: !219, file: !1, line: 362, type: !44)
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "WeightedBiprediction", arg: 5, scope: !219, file: !1, line: 362, type: !44)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cb_qp_index_offset", arg: 6, scope: !219, file: !1, line: 363, type: !44)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr_qp_index_offset", arg: 7, scope: !219, file: !1, line: 363, type: !44)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !219, file: !1, line: 365, type: !20)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frext_profile", scope: !219, file: !1, line: 367, type: !44)
!232 = !DISubprogram(name: "Scaling_List", scope: !1, file: !1, line: 509, type: !233, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i16*, i16*, i32, i16*, %struct.datapartition*)* @Scaling_List, variables: !310)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !235, !235, !44, !235, !237}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !9, line: 440, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !9, line: 430, size: 960, align: 64, elements: !240)
!240 = !{!241, !257, !282}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !239, file: !9, line: 433, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !9, line: 427, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 411, size: 384, align: 64, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !244, file: !9, line: 413, baseType: !44, size: 32, align: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !244, file: !9, line: 414, baseType: !44, size: 32, align: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !244, file: !9, line: 415, baseType: !150, size: 8, align: 8, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !244, file: !9, line: 416, baseType: !44, size: 32, align: 32, offset: 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !244, file: !9, line: 417, baseType: !44, size: 32, align: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !244, file: !9, line: 418, baseType: !150, size: 8, align: 8, offset: 160)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !244, file: !9, line: 420, baseType: !150, size: 8, align: 8, offset: 168)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !244, file: !9, line: 421, baseType: !44, size: 32, align: 32, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !244, file: !9, line: 422, baseType: !44, size: 32, align: 32, offset: 224)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !244, file: !9, line: 424, baseType: !149, size: 64, align: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !244, file: !9, line: 425, baseType: !44, size: 32, align: 32, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !239, file: !9, line: 434, baseType: !258, size: 832, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !9, line: 226, baseType: !259)
!259 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 207, size: 832, align: 64, elements: !260)
!260 = !{!261, !262, !263, !264, !265, !266, !267, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !259, file: !9, line: 209, baseType: !20, size: 32, align: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !259, file: !9, line: 209, baseType: !20, size: 32, align: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !259, file: !9, line: 210, baseType: !20, size: 32, align: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !259, file: !9, line: 211, baseType: !20, size: 32, align: 32, offset: 96)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !259, file: !9, line: 212, baseType: !20, size: 32, align: 32, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !259, file: !9, line: 213, baseType: !149, size: 64, align: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !259, file: !9, line: 214, baseType: !268, size: 64, align: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !259, file: !9, line: 217, baseType: !20, size: 32, align: 32, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !259, file: !9, line: 217, baseType: !20, size: 32, align: 32, offset: 352)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !259, file: !9, line: 218, baseType: !20, size: 32, align: 32, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !259, file: !9, line: 219, baseType: !20, size: 32, align: 32, offset: 416)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !259, file: !9, line: 220, baseType: !20, size: 32, align: 32, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !259, file: !9, line: 221, baseType: !149, size: 64, align: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !259, file: !9, line: 222, baseType: !268, size: 64, align: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !259, file: !9, line: 223, baseType: !44, size: 32, align: 32, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !259, file: !9, line: 223, baseType: !44, size: 32, align: 32, offset: 672)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !259, file: !9, line: 224, baseType: !44, size: 32, align: 32, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !259, file: !9, line: 224, baseType: !44, size: 32, align: 32, offset: 736)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !259, file: !9, line: 225, baseType: !44, size: 32, align: 32, offset: 768)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !259, file: !9, line: 225, baseType: !44, size: 32, align: 32, offset: 800)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !239, file: !9, line: 436, baseType: !283, size: 64, align: 64, offset: 896)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!44, !286, !309}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !9, line: 348, baseType: !288)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !9, line: 327, size: 384, align: 64, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !302}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !288, file: !9, line: 329, baseType: !44, size: 32, align: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !288, file: !9, line: 330, baseType: !44, size: 32, align: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !288, file: !9, line: 331, baseType: !44, size: 32, align: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !288, file: !9, line: 332, baseType: !44, size: 32, align: 32, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !288, file: !9, line: 333, baseType: !44, size: 32, align: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !288, file: !9, line: 334, baseType: !20, size: 32, align: 32, offset: 160)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !288, file: !9, line: 335, baseType: !44, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !288, file: !9, line: 336, baseType: !44, size: 32, align: 32, offset: 224)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !288, file: !9, line: 344, baseType: !299, size: 64, align: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !44, !44, !268, !268}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !288, file: !9, line: 346, baseType: !303, size: 64, align: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !306, !307}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !9, line: 228, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!311 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "scalingListinput", arg: 1, scope: !232, file: !1, line: 509, type: !235)
!312 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "scalingList", arg: 2, scope: !232, file: !1, line: 509, type: !235)
!313 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sizeOfScalingList", arg: 3, scope: !232, file: !1, line: 509, type: !44)
!314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "UseDefaultScalingMatrix", arg: 4, scope: !232, file: !1, line: 509, type: !235)
!315 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "partition", arg: 5, scope: !232, file: !1, line: 509, type: !237)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !232, file: !1, line: 511, type: !44)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "scanj", scope: !232, file: !1, line: 511, type: !44)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !232, file: !1, line: 512, type: !44)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delta_scale", scope: !232, file: !1, line: 513, type: !44)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastScale", scope: !232, file: !1, line: 513, type: !44)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextScale", scope: !232, file: !1, line: 513, type: !44)
!322 = !DISubprogram(name: "GenerateSeq_parameter_set_rbsp", scope: !1, file: !1, line: 561, type: !323, isLocal: false, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.seq_parameter_set_rbsp_t*, i8*)* @GenerateSeq_parameter_set_rbsp, variables: !327)
!323 = !DISubroutineType(types: !324)
!324 = !{!44, !27, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!327 = !{!328, !329, !330, !331, !332, !333}
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sps", arg: 1, scope: !322, file: !1, line: 561, type: !27)
!329 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rbsp", arg: 2, scope: !322, file: !1, line: 561, type: !325)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !322, file: !1, line: 563, type: !237)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !322, file: !1, line: 564, type: !44)
!332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "LenInBytes", scope: !322, file: !1, line: 564, type: !44)
!333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !322, file: !1, line: 565, type: !20)
!334 = !DISubprogram(name: "GeneratePic_parameter_set_rbsp", scope: !1, file: !1, line: 689, type: !335, isLocal: false, isDefinition: true, scopeLine: 690, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pic_parameter_set_rbsp_t*, i8*)* @GeneratePic_parameter_set_rbsp, variables: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!44, !127, !325}
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345}
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pps", arg: 1, scope: !334, file: !1, line: 689, type: !127)
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rbsp", arg: 2, scope: !334, file: !1, line: 689, type: !325)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !334, file: !1, line: 691, type: !237)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !334, file: !1, line: 692, type: !44)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "LenInBytes", scope: !334, file: !1, line: 692, type: !44)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !334, file: !1, line: 693, type: !20)
!344 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "NumberBitsPerSliceGroupId", scope: !334, file: !1, line: 694, type: !20)
!345 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "profile_idc", scope: !334, file: !1, line: 695, type: !44)
!346 = !DISubprogram(name: "IdentifyProfile", scope: !1, file: !1, line: 834, type: !347, isLocal: true, isDefinition: true, scopeLine: 835, isOptimized: true, variables: !167)
!347 = !DISubroutineType(types: !348)
!348 = !{!44}
!349 = !DISubprogram(name: "IdentifyLevel", scope: !1, file: !1, line: 852, type: !347, isLocal: true, isDefinition: true, scopeLine: 853, isOptimized: true, variables: !167)
!350 = !DISubprogram(name: "GenerateVUISequenceParameters", scope: !1, file: !1, line: 867, type: !351, isLocal: true, isDefinition: true, scopeLine: 868, flags: DIFlagPrototyped, isOptimized: true, variables: !353)
!351 = !DISubroutineType(types: !352)
!352 = !{!44, !237}
!353 = !{!354, !355}
!354 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "partition", arg: 1, scope: !350, file: !1, line: 867, type: !237)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !350, file: !1, line: 869, type: !44)
!356 = !{!357, !472, !473, !474, !475, !476, !479, !481, !483, !484, !485, !486, !487, !488, !489, !490, !491, !493, !494, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !511, !512, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !527, !531, !532, !533, !534, !535, !536, !539, !542, !543, !544, !545, !548, !551, !562, !603, !604, !605, !606, !607, !663, !664, !665, !666, !667, !671, !672, !673, !674, !675, !676, !677, !678, !679, !684, !686, !688, !691}
!357 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !9, line: 558, type: !358, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !9, line: 484, baseType: !360)
!360 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 475, size: 6592, align: 64, elements: !361)
!361 = !{!362, !363, !364, !467, !468, !470, !471}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !360, file: !9, line: 477, baseType: !44, size: 32, align: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !360, file: !9, line: 478, baseType: !44, size: 32, align: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !360, file: !9, line: 479, baseType: !365, size: 6400, align: 64, offset: 64)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 6400, align: 64, elements: !465)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !9, line: 471, baseType: !368)
!368 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 443, size: 1216, align: 64, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !414, !441, !450, !451, !452, !453, !454, !455, !456, !457, !458, !462}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !368, file: !9, line: 445, baseType: !44, size: 32, align: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !368, file: !9, line: 446, baseType: !44, size: 32, align: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !368, file: !9, line: 447, baseType: !44, size: 32, align: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !368, file: !9, line: 448, baseType: !44, size: 32, align: 32, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !368, file: !9, line: 449, baseType: !44, size: 32, align: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !368, file: !9, line: 450, baseType: !44, size: 32, align: 32, offset: 160)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !368, file: !9, line: 451, baseType: !237, size: 64, align: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !368, file: !9, line: 452, baseType: !378, size: 64, align: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !9, line: 268, baseType: !380)
!380 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 258, size: 12032, align: 64, elements: !381)
!381 = !{!382, !395, !400, !404, !408, !410, !411}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !380, file: !9, line: 260, baseType: !383, size: 4224, align: 64)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 4224, align: 64, elements: !392)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !9, line: 238, baseType: !385)
!385 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 231, size: 128, align: 64, elements: !386)
!386 = !{!387, !389, !390}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !385, file: !9, line: 233, baseType: !388, size: 16, align: 16)
!388 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !385, file: !9, line: 234, baseType: !152, size: 8, align: 8, offset: 16)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !385, file: !9, line: 236, baseType: !391, size: 64, align: 64, offset: 64)
!391 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!392 = !{!393, !394}
!393 = !DISubrange(count: 3)
!394 = !DISubrange(count: 11)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !380, file: !9, line: 261, baseType: !396, size: 2304, align: 64, offset: 4224)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 2304, align: 64, elements: !397)
!397 = !{!398, !399}
!398 = !DISubrange(count: 2)
!399 = !DISubrange(count: 9)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !380, file: !9, line: 262, baseType: !401, size: 2560, align: 64, offset: 6528)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 2560, align: 64, elements: !402)
!402 = !{!398, !403}
!403 = !DISubrange(count: 10)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !380, file: !9, line: 263, baseType: !405, size: 1536, align: 64, offset: 9088)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 1536, align: 64, elements: !406)
!406 = !{!398, !407}
!407 = !DISubrange(count: 6)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !380, file: !9, line: 264, baseType: !409, size: 512, align: 64, offset: 10624)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 512, align: 64, elements: !209)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !380, file: !9, line: 265, baseType: !409, size: 512, align: 64, offset: 11136)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !380, file: !9, line: 266, baseType: !412, size: 384, align: 64, offset: 11648)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 384, align: 64, elements: !413)
!413 = !{!393}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !368, file: !9, line: 453, baseType: !415, size: 64, align: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !9, line: 293, baseType: !417)
!417 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 281, size: 97024, align: 64, elements: !418)
!418 = !{!419, !422, !423, !426, !429, !433, !434, !438, !439, !440}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !417, file: !9, line: 283, baseType: !420, size: 256, align: 64)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 256, align: 64, elements: !421)
!421 = !{!398}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !417, file: !9, line: 284, baseType: !409, size: 512, align: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !417, file: !9, line: 285, baseType: !424, size: 1536, align: 64, offset: 768)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 1536, align: 64, elements: !425)
!425 = !{!393, !210}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !417, file: !9, line: 286, baseType: !427, size: 5120, align: 64, offset: 2304)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 5120, align: 64, elements: !428)
!428 = !{!403, !210}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !417, file: !9, line: 287, baseType: !430, size: 19200, align: 64, offset: 7424)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 19200, align: 64, elements: !431)
!431 = !{!403, !432}
!432 = !DISubrange(count: 15)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !417, file: !9, line: 288, baseType: !430, size: 19200, align: 64, offset: 26624)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !417, file: !9, line: 289, baseType: !435, size: 6400, align: 64, offset: 45824)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 6400, align: 64, elements: !436)
!436 = !{!403, !437}
!437 = !DISubrange(count: 5)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !417, file: !9, line: 290, baseType: !435, size: 6400, align: 64, offset: 52224)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !417, file: !9, line: 291, baseType: !430, size: 19200, align: 64, offset: 58624)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !417, file: !9, line: 292, baseType: !430, size: 19200, align: 64, offset: 77824)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !368, file: !9, line: 456, baseType: !442, size: 64, align: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !9, line: 313, baseType: !444)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !9, line: 308, size: 128, align: 64, elements: !445)
!445 = !{!446, !447, !448}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !444, file: !9, line: 310, baseType: !44, size: 32, align: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !444, file: !9, line: 311, baseType: !44, size: 32, align: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !444, file: !9, line: 312, baseType: !449, size: 64, align: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !368, file: !9, line: 458, baseType: !44, size: 32, align: 32, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !368, file: !9, line: 459, baseType: !268, size: 64, align: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !368, file: !9, line: 460, baseType: !268, size: 64, align: 64, offset: 576)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !368, file: !9, line: 461, baseType: !268, size: 64, align: 64, offset: 640)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !368, file: !9, line: 462, baseType: !44, size: 32, align: 32, offset: 704)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !368, file: !9, line: 463, baseType: !268, size: 64, align: 64, offset: 768)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !368, file: !9, line: 464, baseType: !268, size: 64, align: 64, offset: 832)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !368, file: !9, line: 465, baseType: !268, size: 64, align: 64, offset: 896)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !368, file: !9, line: 467, baseType: !459, size: 64, align: 64, offset: 960)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!32, !44}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !368, file: !9, line: 469, baseType: !463, size: 192, align: 32, offset: 1024)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 192, align: 32, elements: !464)
!464 = !{!393, !398}
!465 = !{!466}
!466 = !DISubrange(count: 100)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !360, file: !9, line: 480, baseType: !44, size: 32, align: 32, offset: 6464)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !360, file: !9, line: 481, baseType: !469, size: 32, align: 32, offset: 6496)
!469 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !360, file: !9, line: 482, baseType: !469, size: 32, align: 32, offset: 6528)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !360, file: !9, line: 483, baseType: !469, size: 32, align: 32, offset: 6560)
!472 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !9, line: 559, type: !358, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!473 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !9, line: 560, type: !358, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!474 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !9, line: 561, type: !358, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!475 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !9, line: 562, type: !358, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!476 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !9, line: 565, type: !477, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!479 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !9, line: 566, type: !480, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!481 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !9, line: 567, type: !482, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!483 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !9, line: 569, type: !20, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!484 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !9, line: 570, type: !20, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!485 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !9, line: 572, type: !44, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!486 = !DIGlobalVariable(name: "me_time", scope: !0, file: !9, line: 572, type: !44, isLocal: false, isDefinition: true, variable: i32* @me_time)
!487 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !9, line: 573, type: !127, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!488 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !9, line: 574, type: !27, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!489 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !9, line: 578, type: !44, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!490 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !9, line: 579, type: !44, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!491 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !9, line: 583, type: !492, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!493 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !9, line: 584, type: !492, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!494 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !9, line: 585, type: !495, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!496 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !9, line: 586, type: !44, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!497 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !9, line: 587, type: !44, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!498 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !9, line: 588, type: !44, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!499 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !9, line: 589, type: !44, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!500 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !9, line: 592, type: !477, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!501 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !9, line: 593, type: !477, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!502 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !9, line: 595, type: !480, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!503 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !9, line: 596, type: !480, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!504 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !9, line: 598, type: !477, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!505 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !9, line: 599, type: !480, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!506 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !9, line: 601, type: !477, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!507 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !9, line: 602, type: !480, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!508 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !9, line: 604, type: !509, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!511 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !9, line: 605, type: !510, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!512 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !9, line: 608, type: !513, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!514 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !9, line: 609, type: !513, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!515 = !DIGlobalVariable(name: "intras", scope: !0, file: !9, line: 610, type: !44, isLocal: false, isDefinition: true, variable: i32* @intras)
!516 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !9, line: 612, type: !44, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!517 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !9, line: 612, type: !44, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!518 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !9, line: 612, type: !44, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!519 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !9, line: 613, type: !44, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!520 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !9, line: 613, type: !44, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!521 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !9, line: 613, type: !44, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!522 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !9, line: 614, type: !44, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!523 = !DIGlobalVariable(name: "errortext", scope: !0, file: !9, line: 617, type: !524, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 2400, align: 8, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 300)
!527 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !9, line: 620, type: !528, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8192, align: 32, elements: !529)
!529 = !{!530, !530}
!530 = !DISubrange(count: 16)
!531 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !9, line: 620, type: !528, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!532 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !9, line: 620, type: !528, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!533 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !9, line: 621, type: !528, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!534 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !9, line: 621, type: !528, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!535 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !9, line: 621, type: !528, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!536 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !9, line: 622, type: !537, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 24576, align: 32, elements: !538)
!538 = !{!393, !530, !530}
!539 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !9, line: 623, type: !540, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 1024, align: 32, elements: !541)
!541 = !{!398, !210, !210}
!542 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !9, line: 623, type: !540, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!543 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !9, line: 624, type: !540, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!544 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !9, line: 624, type: !540, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!545 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !9, line: 625, type: !546, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 512, align: 32, elements: !547)
!547 = !{!210, !210}
!548 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !9, line: 625, type: !549, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 512, align: 32, elements: !550)
!550 = !{!530}
!551 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !9, line: 1201, type: !552, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !9, line: 1190, baseType: !554)
!554 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 1182, size: 192, align: 32, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !554, file: !9, line: 1184, baseType: !44, size: 32, align: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !554, file: !9, line: 1185, baseType: !44, size: 32, align: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !554, file: !9, line: 1186, baseType: !44, size: 32, align: 32, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !554, file: !9, line: 1187, baseType: !44, size: 32, align: 32, offset: 96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !554, file: !9, line: 1188, baseType: !44, size: 32, align: 32, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !554, file: !9, line: 1189, baseType: !44, size: 32, align: 32, offset: 160)
!562 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !9, line: 1202, type: !563, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !9, line: 1177, baseType: !565)
!565 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 1145, size: 26880, align: 64, elements: !566)
!566 = !{!567, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !586, !587, !591, !592, !593, !594, !596, !597, !598, !599, !600, !601, !602}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !565, file: !9, line: 1147, baseType: !568, size: 64, align: 64)
!568 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !565, file: !9, line: 1149, baseType: !528, size: 8192, align: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !565, file: !9, line: 1150, baseType: !528, size: 8192, align: 32, offset: 8256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !565, file: !9, line: 1150, baseType: !528, size: 8192, align: 32, offset: 16448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !565, file: !9, line: 1151, baseType: !495, size: 64, align: 64, offset: 24640)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !565, file: !9, line: 1152, baseType: !492, size: 64, align: 64, offset: 24704)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !565, file: !9, line: 1153, baseType: !44, size: 32, align: 32, offset: 24768)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !565, file: !9, line: 1155, baseType: !44, size: 32, align: 32, offset: 24800)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !565, file: !9, line: 1157, baseType: !208, size: 128, align: 32, offset: 24832)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !565, file: !9, line: 1157, baseType: !208, size: 128, align: 32, offset: 24960)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !565, file: !9, line: 1158, baseType: !482, size: 64, align: 64, offset: 25088)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !565, file: !9, line: 1159, baseType: !549, size: 512, align: 32, offset: 25152)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !565, file: !9, line: 1160, baseType: !44, size: 32, align: 32, offset: 25664)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !565, file: !9, line: 1161, baseType: !582, size: 64, align: 64, offset: 25728)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !9, line: 62, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !584, line: 30, baseType: !585)
!584 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!585 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !565, file: !9, line: 1162, baseType: !44, size: 32, align: 32, offset: 25792)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !565, file: !9, line: 1163, baseType: !588, size: 64, align: 64, offset: 25856)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !565, file: !9, line: 1164, baseType: !588, size: 64, align: 64, offset: 25920)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !565, file: !9, line: 1165, baseType: !588, size: 64, align: 64, offset: 25984)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !565, file: !9, line: 1166, baseType: !588, size: 64, align: 64, offset: 26048)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !565, file: !9, line: 1167, baseType: !595, size: 512, align: 16, offset: 26112)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 512, align: 16, elements: !541)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !565, file: !9, line: 1168, baseType: !44, size: 32, align: 32, offset: 26624)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !565, file: !9, line: 1169, baseType: !44, size: 32, align: 32, offset: 26656)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !565, file: !9, line: 1171, baseType: !44, size: 32, align: 32, offset: 26688)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !565, file: !9, line: 1172, baseType: !44, size: 32, align: 32, offset: 26720)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !565, file: !9, line: 1174, baseType: !44, size: 32, align: 32, offset: 26752)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !565, file: !9, line: 1175, baseType: !44, size: 32, align: 32, offset: 26784)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !565, file: !9, line: 1176, baseType: !44, size: 32, align: 32, offset: 26816)
!603 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !9, line: 1203, type: !564, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!604 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !9, line: 1203, type: !564, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!605 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !9, line: 1204, type: !564, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!606 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !9, line: 1204, type: !564, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!607 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !9, line: 1230, type: !608, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !610, line: 153, baseType: !611)
!610 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !610, line: 122, size: 1216, align: 64, elements: !612)
!612 = !{!613, !615, !616, !617, !618, !619, !624, !625, !626, !630, !634, !643, !649, !650, !653, !654, !656, !660, !661, !662}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !611, file: !610, line: 123, baseType: !614, size: 64, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !611, file: !610, line: 124, baseType: !44, size: 32, align: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !611, file: !610, line: 125, baseType: !44, size: 32, align: 32, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !611, file: !610, line: 126, baseType: !236, size: 16, align: 16, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !611, file: !610, line: 127, baseType: !236, size: 16, align: 16, offset: 144)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !611, file: !610, line: 128, baseType: !620, size: 128, align: 64, offset: 192)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !610, line: 88, size: 128, align: 64, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !620, file: !610, line: 89, baseType: !614, size: 64, align: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !620, file: !610, line: 90, baseType: !44, size: 32, align: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !611, file: !610, line: 129, baseType: !44, size: 32, align: 32, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !611, file: !610, line: 132, baseType: !19, size: 64, align: 64, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !611, file: !610, line: 133, baseType: !627, size: 64, align: 64, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, align: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!44, !19}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !611, file: !610, line: 134, baseType: !631, size: 64, align: 64, offset: 512)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64, align: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!44, !19, !325, !44}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !611, file: !610, line: 135, baseType: !635, size: 64, align: 64, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!638, !19, !638, !44}
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !610, line: 77, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !640, line: 71, baseType: !641)
!640 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !642, line: 46, baseType: !585)
!642 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !611, file: !610, line: 136, baseType: !644, size: 64, align: 64, offset: 640)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64, align: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!44, !19, !647, !44}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64, align: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !611, file: !610, line: 139, baseType: !620, size: 128, align: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !611, file: !610, line: 140, baseType: !651, size: 64, align: 64, offset: 832)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, align: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !610, line: 94, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !611, file: !610, line: 141, baseType: !44, size: 32, align: 32, offset: 896)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !611, file: !610, line: 144, baseType: !655, size: 24, align: 8, offset: 928)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 24, align: 8, elements: !413)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !611, file: !610, line: 145, baseType: !657, size: 8, align: 8, offset: 952)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 8, align: 8, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 1)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !611, file: !610, line: 148, baseType: !620, size: 128, align: 64, offset: 960)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !611, file: !610, line: 151, baseType: !44, size: 32, align: 32, offset: 1088)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !611, file: !610, line: 152, baseType: !638, size: 64, align: 64, offset: 1152)
!663 = !DIGlobalVariable(name: "p_log", scope: !0, file: !9, line: 1231, type: !608, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!664 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !9, line: 1232, type: !608, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!665 = !DIGlobalVariable(name: "p_in", scope: !0, file: !9, line: 1233, type: !44, isLocal: false, isDefinition: true, variable: i32* @p_in)
!666 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !9, line: 1234, type: !44, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!667 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !9, line: 1237, type: !668, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, align: 32, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 20)
!671 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !9, line: 1238, type: !668, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!672 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !9, line: 1239, type: !668, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!673 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !9, line: 1240, type: !668, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!674 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !9, line: 1241, type: !668, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!675 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !9, line: 1242, type: !668, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!676 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !9, line: 1456, type: !44, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!677 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !9, line: 1465, type: !44, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!678 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !9, line: 1466, type: !44, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!679 = !DIGlobalVariable(name: "WriteNALU", scope: !0, file: !680, line: 28, type: !681, isLocal: false, isDefinition: true, variable: i32 (%struct.NALU_t*)** @WriteNALU)
!680 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nalu.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!44, !171}
!684 = !DIGlobalVariable(name: "SeqParSet", scope: !0, file: !1, line: 34, type: !685, isLocal: false, isDefinition: true, variable: [32 x %struct.seq_parameter_set_rbsp_t]* @SeqParSet)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 545792, align: 32, elements: !107)
!686 = !DIGlobalVariable(name: "PicParSet", scope: !0, file: !1, line: 35, type: !687, isLocal: false, isDefinition: true, variable: [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 491520, align: 64, elements: !58)
!688 = !DIGlobalVariable(name: "ZZ_SCAN", scope: !0, file: !1, line: 37, type: !689, isLocal: true, isDefinition: true, variable: [16 x i8]* @ZZ_SCAN)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 128, align: 8, elements: !550)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!691 = !DIGlobalVariable(name: "ZZ_SCAN8", scope: !0, file: !1, line: 41, type: !692, isLocal: true, isDefinition: true, variable: [64 x i8]* @ZZ_SCAN8)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 512, align: 8, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 64)
!695 = !{i32 2, !"Dwarf Version", i32 2}
!696 = !{i32 2, !"Debug Info Version", i32 700000003}
!697 = !{i32 1, !"PIC Level", i32 2}
!698 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!699 = !DIExpression()
!700 = !DILocation(line: 62, column: 29, scope: !22)
!701 = !DILocation(line: 63, column: 29, scope: !22)
!702 = !DILocation(line: 65, column: 9, scope: !22)
!703 = !DILocation(line: 66, column: 9, scope: !22)
!704 = !DILocation(line: 68, column: 3, scope: !22)
!705 = !DILocation(line: 70, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !22, file: !1, line: 70, column: 7)
!707 = !{!708, !708, i64 0}
!708 = !{!"any pointer", !709, i64 0}
!709 = !{!"omnipotent char", !710, i64 0}
!710 = !{!"Simple C/C++ TBAA"}
!711 = !DILocation(line: 70, column: 14, scope: !706)
!712 = !{!713, !714, i64 60}
!713 = !{!"", !714, i64 0, !714, i64 4, !714, i64 8, !714, i64 12, !714, i64 16, !714, i64 20, !714, i64 24, !714, i64 28, !714, i64 32, !714, i64 36, !714, i64 40, !714, i64 44, !714, i64 48, !714, i64 52, !714, i64 56, !714, i64 60, !714, i64 64, !714, i64 68, !714, i64 72, !714, i64 76, !709, i64 80, !709, i64 144, !714, i64 208, !714, i64 212, !714, i64 216, !714, i64 220, !709, i64 224, !709, i64 424, !709, i64 624, !709, i64 824, !709, i64 1024, !714, i64 1224, !714, i64 1228, !714, i64 1232, !714, i64 1236, !714, i64 1240, !714, i64 1244, !714, i64 1248, !714, i64 1252, !714, i64 1256, !714, i64 1260, !714, i64 1264, !714, i64 1268, !714, i64 1272, !714, i64 1276, !714, i64 1280, !714, i64 1284, !714, i64 1288, !714, i64 1292, !714, i64 1296, !714, i64 1300, !714, i64 1304, !714, i64 1308, !714, i64 1312, !714, i64 1316, !714, i64 1320, !709, i64 1324, !714, i64 2348, !714, i64 2352, !714, i64 2356, !714, i64 2360, !714, i64 2364, !714, i64 2368, !714, i64 2372, !714, i64 2376, !714, i64 2380, !714, i64 2384, !714, i64 2388, !714, i64 2392, !714, i64 2396, !714, i64 2400, !714, i64 2404, !714, i64 2408, !714, i64 2412, !714, i64 2416, !714, i64 2420, !715, i64 2424, !714, i64 2432, !714, i64 2436, !714, i64 2440, !714, i64 2444, !714, i64 2448, !714, i64 2452, !714, i64 2456, !714, i64 2460, !714, i64 2464, !714, i64 2468, !714, i64 2472, !714, i64 2476, !709, i64 2480, !709, i64 2680, !714, i64 2880, !714, i64 2884, !714, i64 2888, !714, i64 2892, !714, i64 2896, !714, i64 2900, !714, i64 2904, !714, i64 2908, !714, i64 2912, !714, i64 2916, !714, i64 2920, !714, i64 2924, !714, i64 2928, !714, i64 2932, !714, i64 2936, !714, i64 2940, !714, i64 2944, !714, i64 2948, !709, i64 2952, !714, i64 3152, !714, i64 3156, !708, i64 3160, !708, i64 3168, !708, i64 3176, !708, i64 3184, !714, i64 3192, !714, i64 3196, !714, i64 3200, !714, i64 3204, !714, i64 3208, !714, i64 3212, !714, i64 3216, !714, i64 3220, !714, i64 3224, !714, i64 3228, !714, i64 3232, !714, i64 3236, !714, i64 3240, !714, i64 3244, !714, i64 3248, !714, i64 3252, !714, i64 3256, !709, i64 3260, !714, i64 3292, !714, i64 3296, !714, i64 3300, !714, i64 3304, !714, i64 3308, !714, i64 3312, !714, i64 3316, !714, i64 3320, !714, i64 3324, !714, i64 3328, !714, i64 3332, !709, i64 3336, !709, i64 3384, !714, i64 3584}
!714 = !{!"int", !709, i64 0}
!715 = !{!"double", !709, i64 0}
!716 = !DILocation(line: 72, column: 14, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !1, line: 72, column: 9)
!718 = distinct !DILexicalBlock(scope: !706, file: !1, line: 71, column: 3)
!719 = !{!720, !714, i64 4}
!720 = !{!"", !709, i64 0, !714, i64 4, !709, i64 8, !709, i64 12, !709, i64 16, !709, i64 20, !714, i64 24, !714, i64 28, !714, i64 32, !709, i64 36, !709, i64 40, !714, i64 72, !714, i64 76, !714, i64 80, !714, i64 84, !714, i64 88, !709, i64 92, !714, i64 96, !714, i64 100, !714, i64 104, !709, i64 108, !714, i64 1132, !709, i64 1136, !714, i64 1140, !714, i64 1144, !709, i64 1148, !709, i64 1152, !709, i64 1156, !709, i64 1160, !714, i64 1164, !714, i64 1168, !714, i64 1172, !714, i64 1176, !709, i64 1180, !721, i64 1184}
!721 = !{!"", !709, i64 0, !714, i64 4, !714, i64 8, !714, i64 12, !709, i64 16, !709, i64 20, !709, i64 24, !714, i64 28, !709, i64 32, !709, i64 36, !714, i64 40, !714, i64 44, !714, i64 48, !709, i64 52, !714, i64 56, !714, i64 60, !709, i64 64, !714, i64 68, !714, i64 72, !709, i64 76, !709, i64 80, !722, i64 84, !709, i64 496, !722, i64 500, !709, i64 912, !709, i64 916, !709, i64 920, !714, i64 924, !714, i64 928, !714, i64 932, !714, i64 936, !714, i64 940, !714, i64 944}
!722 = !{!"", !714, i64 0, !714, i64 4, !714, i64 8, !709, i64 12, !709, i64 140, !709, i64 268, !714, i64 396, !714, i64 400, !714, i64 404, !714, i64 408}
!723 = !DILocation(line: 72, column: 26, scope: !717)
!724 = !DILocation(line: 70, column: 7, scope: !22)
!725 = !DILocation(line: 72, column: 9, scope: !718)
!726 = !DILocation(line: 74, column: 62, scope: !727)
!727 = distinct !DILexicalBlock(scope: !717, file: !1, line: 73, column: 5)
!728 = !{!713, !714, i64 3316}
!729 = !DILocation(line: 74, column: 89, scope: !727)
!730 = !{!713, !714, i64 3320}
!731 = !DILocation(line: 74, column: 7, scope: !727)
!732 = !DILocation(line: 75, column: 7, scope: !727)
!733 = !DILocation(line: 76, column: 55, scope: !727)
!734 = !DILocation(line: 76, column: 62, scope: !727)
!735 = !DILocation(line: 76, column: 89, scope: !727)
!736 = !DILocation(line: 76, column: 7, scope: !727)
!737 = !DILocation(line: 77, column: 7, scope: !727)
!738 = !DILocation(line: 78, column: 55, scope: !727)
!739 = !DILocation(line: 78, column: 62, scope: !727)
!740 = !DILocation(line: 78, column: 89, scope: !727)
!741 = !DILocation(line: 78, column: 7, scope: !727)
!742 = !DILocation(line: 79, column: 7, scope: !727)
!743 = !DILocation(line: 81, column: 5, scope: !727)
!744 = !DILocation(line: 84, column: 62, scope: !745)
!745 = distinct !DILexicalBlock(scope: !717, file: !1, line: 83, column: 5)
!746 = !{!713, !714, i64 2432}
!747 = !DILocation(line: 84, column: 7, scope: !745)
!748 = !DILocation(line: 85, column: 7, scope: !745)
!749 = !DILocation(line: 86, column: 55, scope: !745)
!750 = !DILocation(line: 86, column: 62, scope: !745)
!751 = !DILocation(line: 86, column: 7, scope: !745)
!752 = !DILocation(line: 87, column: 7, scope: !745)
!753 = !DILocation(line: 88, column: 55, scope: !745)
!754 = !DILocation(line: 88, column: 62, scope: !745)
!755 = !DILocation(line: 88, column: 7, scope: !745)
!756 = !DILocation(line: 89, column: 7, scope: !745)
!757 = !DILocation(line: 95, column: 56, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !1, line: 94, column: 9)
!759 = distinct !DILexicalBlock(scope: !706, file: !1, line: 93, column: 3)
!760 = !{!713, !714, i64 1284}
!761 = !DILocation(line: 95, column: 83, scope: !758)
!762 = !{!713, !714, i64 1288}
!763 = !DILocation(line: 94, column: 9, scope: !759)
!764 = !DILocation(line: 96, column: 43, scope: !758)
!765 = !DILocation(line: 96, column: 70, scope: !758)
!766 = !DILocation(line: 95, column: 7, scope: !758)
!767 = !DILocation(line: 99, column: 43, scope: !758)
!768 = !DILocation(line: 98, column: 7, scope: !758)
!769 = !DILocation(line: 101, column: 5, scope: !759)
!770 = !DILocation(line: 105, column: 14, scope: !22)
!771 = !DILocation(line: 106, column: 14, scope: !22)
!772 = !DILocation(line: 107, column: 1, scope: !22)
!773 = !DILocation(line: 203, column: 61, scope: !200)
!774 = !DILocation(line: 203, column: 70, scope: !200)
!775 = !DILocation(line: 206, column: 7, scope: !200)
!776 = !DILocation(line: 207, column: 7, scope: !200)
!777 = !DILocation(line: 836, column: 10, scope: !346, inlinedAt: !778)
!778 = distinct !DILocation(line: 209, column: 25, scope: !200)
!779 = !DILocation(line: 836, column: 17, scope: !346, inlinedAt: !778)
!780 = !{!713, !714, i64 0}
!781 = !DILocation(line: 209, column: 54, scope: !200)
!782 = !DILocation(line: 217, column: 3, scope: !200)
!783 = !{!"branch_weights", i32 4, i32 64}
!784 = !DILocation(line: 220, column: 8, scope: !200)
!785 = !DILocation(line: 220, column: 20, scope: !200)
!786 = !DILocation(line: 854, column: 17, scope: !349, inlinedAt: !787)
!787 = distinct !DILocation(line: 221, column: 20, scope: !200)
!788 = !{!713, !714, i64 4}
!789 = !DILocation(line: 221, column: 8, scope: !200)
!790 = !DILocation(line: 221, column: 18, scope: !200)
!791 = !{!720, !714, i64 24}
!792 = !DILocation(line: 224, column: 8, scope: !200)
!793 = !DILocation(line: 230, column: 8, scope: !200)
!794 = !DILocation(line: 230, column: 29, scope: !200)
!795 = !{!720, !714, i64 28}
!796 = !DILocation(line: 233, column: 41, scope: !200)
!797 = !DILocation(line: 225, column: 30, scope: !200)
!798 = !{!713, !714, i64 3296}
!799 = !DILocation(line: 233, column: 54, scope: !200)
!800 = !DILocation(line: 233, column: 8, scope: !200)
!801 = !DILocation(line: 233, column: 32, scope: !200)
!802 = !{!720, !714, i64 72}
!803 = !DILocation(line: 234, column: 41, scope: !200)
!804 = !{!713, !714, i64 3300}
!805 = !DILocation(line: 234, column: 56, scope: !200)
!806 = !DILocation(line: 234, column: 8, scope: !200)
!807 = !DILocation(line: 234, column: 32, scope: !200)
!808 = !{!720, !714, i64 76}
!809 = !DILocation(line: 235, column: 39, scope: !200)
!810 = !{!713, !714, i64 3324}
!811 = !DILocation(line: 235, column: 87, scope: !200)
!812 = !DILocation(line: 235, column: 68, scope: !200)
!813 = !DILocation(line: 235, column: 3, scope: !200)
!814 = !DILocation(line: 235, column: 8, scope: !200)
!815 = !DILocation(line: 235, column: 30, scope: !200)
!816 = !{!817, !714, i64 72704}
!817 = !{!"", !714, i64 0, !714, i64 4, !714, i64 8, !714, i64 12, !714, i64 16, !714, i64 20, !714, i64 24, !714, i64 28, !714, i64 32, !714, i64 36, !714, i64 40, !714, i64 44, !818, i64 48, !714, i64 52, !714, i64 56, !714, i64 60, !714, i64 64, !714, i64 68, !714, i64 72, !714, i64 76, !714, i64 80, !714, i64 84, !714, i64 88, !714, i64 92, !714, i64 96, !708, i64 104, !708, i64 112, !714, i64 120, !708, i64 128, !714, i64 136, !714, i64 140, !714, i64 144, !714, i64 148, !714, i64 152, !714, i64 156, !714, i64 160, !714, i64 164, !714, i64 168, !714, i64 172, !714, i64 176, !714, i64 180, !709, i64 184, !709, i64 4792, !709, i64 7352, !709, i64 8504, !709, i64 12600, !709, i64 13112, !708, i64 14136, !708, i64 14144, !708, i64 14152, !708, i64 14160, !708, i64 14168, !709, i64 14176, !708, i64 71776, !708, i64 71784, !714, i64 71792, !714, i64 71796, !714, i64 71800, !714, i64 71804, !709, i64 71808, !714, i64 71872, !714, i64 71876, !714, i64 71880, !714, i64 71884, !714, i64 71888, !715, i64 71896, !714, i64 71904, !714, i64 71908, !714, i64 71912, !714, i64 71916, !708, i64 71920, !708, i64 71928, !708, i64 71936, !708, i64 71944, !709, i64 71952, !714, i64 71984, !714, i64 71988, !714, i64 71992, !714, i64 71996, !714, i64 72000, !714, i64 72004, !714, i64 72008, !714, i64 72012, !709, i64 72016, !714, i64 72376, !714, i64 72380, !714, i64 72384, !714, i64 72388, !714, i64 72392, !714, i64 72396, !714, i64 72400, !714, i64 72404, !714, i64 72408, !714, i64 72412, !714, i64 72416, !714, i64 72420, !709, i64 72424, !714, i64 72428, !714, i64 72432, !709, i64 72436, !714, i64 72444, !714, i64 72448, !714, i64 72452, !714, i64 72456, !714, i64 72460, !714, i64 72464, !714, i64 72468, !714, i64 72472, !714, i64 72476, !714, i64 72480, !714, i64 72484, !714, i64 72488, !714, i64 72492, !714, i64 72496, !714, i64 72500, !714, i64 72504, !714, i64 72508, !708, i64 72512, !714, i64 72520, !714, i64 72524, !714, i64 72528, !714, i64 72532, !714, i64 72536, !715, i64 72544, !714, i64 72552, !714, i64 72556, !714, i64 72560, !714, i64 72564, !714, i64 72568, !714, i64 72572, !714, i64 72576, !708, i64 72584, !714, i64 72592, !714, i64 72596, !714, i64 72600, !714, i64 72604, !714, i64 72608, !714, i64 72612, !714, i64 72616, !714, i64 72620, !714, i64 72624, !714, i64 72628, !714, i64 72632, !714, i64 72636, !714, i64 72640, !714, i64 72644, !714, i64 72648, !714, i64 72652, !714, i64 72656, !714, i64 72660, !714, i64 72664, !714, i64 72668, !714, i64 72672, !714, i64 72676, !714, i64 72680, !714, i64 72684, !714, i64 72688, !714, i64 72692, !714, i64 72696, !714, i64 72700, !714, i64 72704, !714, i64 72708, !714, i64 72712, !709, i64 72716, !714, i64 72724, !714, i64 72728, !714, i64 72732}
!818 = !{!"float", !709, i64 0}
!819 = !DILocation(line: 236, column: 40, scope: !200)
!820 = !{!713, !714, i64 3328}
!821 = !DILocation(line: 236, column: 8, scope: !200)
!822 = !DILocation(line: 236, column: 31, scope: !200)
!823 = !{!817, !714, i64 72724}
!824 = !DILocation(line: 243, column: 36, scope: !200)
!825 = !{!714, !714, i64 0}
!826 = !DILocation(line: 243, column: 8, scope: !200)
!827 = !DILocation(line: 243, column: 34, scope: !200)
!828 = !{!720, !714, i64 80}
!829 = !DILocation(line: 244, column: 44, scope: !200)
!830 = !DILocation(line: 244, column: 8, scope: !200)
!831 = !DILocation(line: 244, column: 42, scope: !200)
!832 = !{!720, !714, i64 88}
!833 = !DILocation(line: 246, column: 36, scope: !200)
!834 = !{!713, !714, i64 3208}
!835 = !DILocation(line: 246, column: 8, scope: !200)
!836 = !DILocation(line: 246, column: 27, scope: !200)
!837 = !{!720, !714, i64 84}
!838 = !DILocation(line: 247, column: 53, scope: !200)
!839 = !DILocation(line: 248, column: 48, scope: !200)
!840 = !DILocation(line: 248, column: 8, scope: !200)
!841 = !DILocation(line: 248, column: 41, scope: !200)
!842 = !{!709, !709, i64 0}
!843 = !DILocation(line: 205, column: 12, scope: !200)
!844 = !DILocation(line: 252, column: 14, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 252, column: 3)
!846 = distinct !DILexicalBlock(scope: !200, file: !1, line: 252, column: 3)
!847 = !DILocation(line: 252, column: 3, scope: !846)
!848 = !DILocation(line: 254, column: 36, scope: !849)
!849 = distinct !DILexicalBlock(scope: !845, file: !1, line: 253, column: 3)
!850 = !DILocation(line: 254, column: 5, scope: !849)
!851 = !DILocation(line: 254, column: 34, scope: !849)
!852 = !DILocation(line: 252, column: 60, scope: !845)
!853 = !DILocation(line: 252, column: 20, scope: !845)
!854 = !{!817, !714, i64 72420}
!855 = !DILocation(line: 259, column: 32, scope: !200)
!856 = !{!713, !714, i64 36}
!857 = !DILocation(line: 259, column: 8, scope: !200)
!858 = !DILocation(line: 259, column: 23, scope: !200)
!859 = !{!720, !714, i64 1132}
!860 = !DILocation(line: 262, column: 8, scope: !200)
!861 = !DILocation(line: 262, column: 45, scope: !200)
!862 = !{!720, !709, i64 1136}
!863 = !DILocation(line: 264, column: 39, scope: !200)
!864 = !{!713, !714, i64 2880}
!865 = !DILocation(line: 264, column: 62, scope: !200)
!866 = !{!713, !714, i64 2884}
!867 = !DILocation(line: 264, column: 52, scope: !200)
!868 = !DILocation(line: 264, column: 30, scope: !200)
!869 = !DILocation(line: 264, column: 8, scope: !200)
!870 = !DILocation(line: 264, column: 28, scope: !200)
!871 = !{!720, !709, i64 1148}
!872 = !DILocation(line: 267, column: 43, scope: !200)
!873 = !{!713, !714, i64 64}
!874 = !DILocation(line: 267, column: 58, scope: !200)
!875 = !{!817, !714, i64 72728}
!876 = !DILocation(line: 267, column: 52, scope: !200)
!877 = !DILocation(line: 267, column: 74, scope: !200)
!878 = !DILocation(line: 267, column: 79, scope: !200)
!879 = !DILocation(line: 267, column: 8, scope: !200)
!880 = !DILocation(line: 267, column: 32, scope: !200)
!881 = !{!720, !714, i64 1140}
!882 = !DILocation(line: 268, column: 51, scope: !200)
!883 = !{!713, !714, i64 68}
!884 = !DILocation(line: 268, column: 67, scope: !200)
!885 = !{!817, !714, i64 72732}
!886 = !DILocation(line: 268, column: 61, scope: !200)
!887 = !DILocation(line: 268, column: 84, scope: !200)
!888 = !DILocation(line: 268, column: 93, scope: !200)
!889 = !DILocation(line: 268, column: 88, scope: !200)
!890 = !DILocation(line: 268, column: 122, scope: !200)
!891 = !DILocation(line: 268, column: 8, scope: !200)
!892 = !DILocation(line: 268, column: 39, scope: !200)
!893 = !{!720, !714, i64 1144}
!894 = !DILocation(line: 271, column: 53, scope: !200)
!895 = !DILocation(line: 271, column: 8, scope: !200)
!896 = !DILocation(line: 271, column: 37, scope: !200)
!897 = !{!720, !709, i64 1152}
!898 = !DILocation(line: 272, column: 43, scope: !200)
!899 = !{!713, !714, i64 1252}
!900 = !DILocation(line: 272, column: 8, scope: !200)
!901 = !DILocation(line: 272, column: 34, scope: !200)
!902 = !{!720, !709, i64 1156}
!903 = !DILocation(line: 275, column: 46, scope: !200)
!904 = !{!713, !714, i64 3312}
!905 = !DILocation(line: 277, column: 35, scope: !200)
!906 = !{!713, !714, i64 72}
!907 = !DILocation(line: 275, column: 81, scope: !200)
!908 = !DILocation(line: 275, column: 61, scope: !200)
!909 = !DILocation(line: 275, column: 8, scope: !200)
!910 = !DILocation(line: 275, column: 36, scope: !200)
!911 = !{!720, !709, i64 1180}
!912 = !DILocation(line: 277, column: 8, scope: !200)
!913 = !DILocation(line: 277, column: 26, scope: !200)
!914 = !{!720, !714, i64 32}
!915 = !DILocation(line: 281, column: 45, scope: !214)
!916 = !DILocation(line: 287, column: 27, scope: !214)
!917 = !DILocation(line: 282, column: 9, scope: !214)
!918 = !DILocation(line: 285, column: 57, scope: !214)
!919 = !DILocation(line: 288, column: 31, scope: !214)
!920 = !DILocation(line: 282, column: 16, scope: !214)
!921 = !DILocation(line: 290, column: 18, scope: !214)
!922 = !DILocation(line: 290, column: 16, scope: !214)
!923 = !DILocation(line: 295, column: 6, scope: !200)
!924 = !DILocation(line: 298, column: 45, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !1, line: 296, column: 3)
!926 = distinct !DILexicalBlock(scope: !200, file: !1, line: 295, column: 6)
!927 = !DILocation(line: 298, column: 52, scope: !925)
!928 = !{!713, !714, i64 3256}
!929 = !DILocation(line: 298, column: 76, scope: !925)
!930 = !DILocation(line: 298, column: 10, scope: !925)
!931 = !DILocation(line: 298, column: 42, scope: !925)
!932 = !{!720, !709, i64 36}
!933 = !DILocation(line: 305, column: 19, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !1, line: 305, column: 12)
!935 = distinct !DILexicalBlock(scope: !936, file: !1, line: 304, column: 7)
!936 = distinct !DILexicalBlock(scope: !937, file: !1, line: 301, column: 10)
!937 = distinct !DILexicalBlock(scope: !938, file: !1, line: 300, column: 5)
!938 = distinct !DILexicalBlock(scope: !939, file: !1, line: 299, column: 5)
!939 = distinct !DILexicalBlock(scope: !925, file: !1, line: 299, column: 5)
!940 = !DILocation(line: 299, column: 5, scope: !939)
!941 = !DILocation(line: 301, column: 11, scope: !936)
!942 = !DILocation(line: 301, column: 10, scope: !937)
!943 = !DILocation(line: 302, column: 50, scope: !936)
!944 = !DILocation(line: 302, column: 82, scope: !936)
!945 = !DILocation(line: 302, column: 9, scope: !936)
!946 = !DILocation(line: 302, column: 47, scope: !936)
!947 = !{!713, !714, i64 3220}
!948 = !DILocation(line: 305, column: 12, scope: !934)
!949 = !DILocation(line: 305, column: 12, scope: !935)
!950 = !DILocation(line: 306, column: 52, scope: !934)
!951 = !DILocation(line: 306, column: 84, scope: !934)
!952 = !DILocation(line: 306, column: 11, scope: !934)
!953 = !DILocation(line: 306, column: 49, scope: !934)
!954 = !DILocation(line: 308, column: 11, scope: !934)
!955 = !DILocation(line: 308, column: 49, scope: !934)
!956 = !DILocation(line: 314, column: 10, scope: !957)
!957 = distinct !DILexicalBlock(scope: !926, file: !1, line: 313, column: 3)
!958 = !DILocation(line: 316, column: 45, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !1, line: 315, column: 5)
!960 = distinct !DILexicalBlock(scope: !957, file: !1, line: 315, column: 5)
!961 = !DILocation(line: 321, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !200, file: !1, line: 321, column: 7)
!963 = !DILocation(line: 321, column: 12, scope: !962)
!964 = !DILocation(line: 321, column: 36, scope: !962)
!965 = !DILocation(line: 321, column: 28, scope: !962)
!966 = !DILocation(line: 339, column: 10, scope: !967)
!967 = distinct !DILexicalBlock(scope: !962, file: !1, line: 338, column: 3)
!968 = !DILocation(line: 323, column: 30, scope: !969)
!969 = distinct !DILexicalBlock(scope: !962, file: !1, line: 322, column: 3)
!970 = !{!720, !709, i64 1160}
!971 = !DILocation(line: 324, column: 10, scope: !969)
!972 = !DILocation(line: 324, column: 41, scope: !969)
!973 = !{!720, !714, i64 1164}
!974 = !DILocation(line: 325, column: 10, scope: !969)
!975 = !DILocation(line: 325, column: 40, scope: !969)
!976 = !{!720, !714, i64 1172}
!977 = !DILocation(line: 326, column: 84, scope: !969)
!978 = !DILocation(line: 326, column: 69, scope: !969)
!979 = !DILocation(line: 326, column: 67, scope: !969)
!980 = !DILocation(line: 326, column: 10, scope: !969)
!981 = !DILocation(line: 326, column: 42, scope: !969)
!982 = !{!720, !714, i64 1168}
!983 = !DILocation(line: 327, column: 71, scope: !969)
!984 = !DILocation(line: 327, column: 118, scope: !969)
!985 = !DILocation(line: 327, column: 111, scope: !969)
!986 = !DILocation(line: 327, column: 106, scope: !969)
!987 = !DILocation(line: 327, column: 68, scope: !969)
!988 = !DILocation(line: 327, column: 10, scope: !969)
!989 = !DILocation(line: 327, column: 43, scope: !969)
!990 = !{!720, !714, i64 1176}
!991 = !DILocation(line: 328, column: 30, scope: !992)
!992 = distinct !DILexicalBlock(scope: !969, file: !1, line: 328, column: 9)
!993 = !DILocation(line: 328, column: 9, scope: !969)
!994 = !DILocation(line: 330, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !1, line: 329, column: 5)
!996 = !DILocation(line: 332, column: 9, scope: !997)
!997 = distinct !DILexicalBlock(scope: !969, file: !1, line: 332, column: 9)
!998 = !DILocation(line: 332, column: 14, scope: !997)
!999 = !DILocation(line: 332, column: 50, scope: !997)
!1000 = !DILocation(line: 332, column: 34, scope: !997)
!1001 = !DILocation(line: 332, column: 81, scope: !997)
!1002 = !DILocation(line: 331, column: 5, scope: !995)
!1003 = !DILocation(line: 332, column: 74, scope: !997)
!1004 = !DILocation(line: 332, column: 69, scope: !997)
!1005 = !DILocation(line: 332, column: 31, scope: !997)
!1006 = !DILocation(line: 332, column: 9, scope: !969)
!1007 = !DILocation(line: 334, column: 7, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !997, file: !1, line: 333, column: 5)
!1009 = !DILocation(line: 335, column: 5, scope: !1008)
!1010 = !DILocation(line: 339, column: 30, scope: !967)
!1011 = !DILocation(line: 341, column: 1, scope: !200)
!1012 = !DILocation(line: 361, column: 61, scope: !219)
!1013 = !DILocation(line: 361, column: 92, scope: !219)
!1014 = !DILocation(line: 361, column: 101, scope: !219)
!1015 = !DILocation(line: 362, column: 38, scope: !219)
!1016 = !DILocation(line: 362, column: 62, scope: !219)
!1017 = !DILocation(line: 363, column: 38, scope: !219)
!1018 = !DILocation(line: 363, column: 62, scope: !219)
!1019 = !DILocation(line: 836, column: 10, scope: !346, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 367, column: 25, scope: !219)
!1021 = !DILocation(line: 836, column: 17, scope: !346, inlinedAt: !1020)
!1022 = !DILocation(line: 367, column: 54, scope: !219)
!1023 = !DILocation(line: 376, column: 36, scope: !219)
!1024 = !DILocation(line: 376, column: 8, scope: !219)
!1025 = !DILocation(line: 376, column: 29, scope: !219)
!1026 = !{!1027, !714, i64 8}
!1027 = !{!"", !709, i64 0, !714, i64 4, !714, i64 8, !709, i64 12, !709, i64 16, !709, i64 20, !709, i64 24, !709, i64 56, !714, i64 60, !714, i64 64, !709, i64 68, !709, i64 100, !709, i64 132, !709, i64 164, !714, i64 168, !714, i64 172, !708, i64 176, !714, i64 184, !714, i64 188, !709, i64 192, !714, i64 196, !714, i64 200, !714, i64 204, !714, i64 208, !714, i64 212, !714, i64 216, !709, i64 220, !709, i64 224, !709, i64 228, !709, i64 232}
!1028 = !DILocation(line: 377, column: 8, scope: !219)
!1029 = !DILocation(line: 377, column: 29, scope: !219)
!1030 = !{!1027, !714, i64 4}
!1031 = !DILocation(line: 378, column: 43, scope: !219)
!1032 = !{!713, !714, i64 2356}
!1033 = !DILocation(line: 378, column: 36, scope: !219)
!1034 = !DILocation(line: 378, column: 8, scope: !219)
!1035 = !DILocation(line: 378, column: 33, scope: !219)
!1036 = !{!1027, !709, i64 12}
!1037 = !DILocation(line: 381, column: 6, scope: !219)
!1038 = !DILocation(line: 383, column: 43, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 382, column: 3)
!1040 = distinct !DILexicalBlock(scope: !219, file: !1, line: 381, column: 6)
!1041 = !DILocation(line: 383, column: 36, scope: !1039)
!1042 = !DILocation(line: 383, column: 10, scope: !1039)
!1043 = !DILocation(line: 383, column: 34, scope: !1039)
!1044 = !{!1027, !709, i64 16}
!1045 = !DILocation(line: 384, column: 52, scope: !1039)
!1046 = !DILocation(line: 384, column: 79, scope: !1039)
!1047 = !DILocation(line: 384, column: 10, scope: !1039)
!1048 = !DILocation(line: 384, column: 42, scope: !1039)
!1049 = !{!1027, !709, i64 20}
!1050 = !DILocation(line: 365, column: 12, scope: !219)
!1051 = !DILocation(line: 385, column: 5, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 385, column: 5)
!1053 = !DILocation(line: 387, column: 11, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 387, column: 10)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 386, column: 5)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 385, column: 5)
!1057 = !DILocation(line: 387, column: 10, scope: !1055)
!1058 = !DILocation(line: 388, column: 50, scope: !1054)
!1059 = !DILocation(line: 388, column: 85, scope: !1054)
!1060 = !DILocation(line: 388, column: 9, scope: !1054)
!1061 = !DILocation(line: 388, column: 47, scope: !1054)
!1062 = !DILocation(line: 391, column: 17, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 391, column: 12)
!1064 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 390, column: 7)
!1065 = !DILocation(line: 391, column: 12, scope: !1063)
!1066 = !DILocation(line: 391, column: 12, scope: !1064)
!1067 = !DILocation(line: 392, column: 52, scope: !1063)
!1068 = !DILocation(line: 392, column: 87, scope: !1063)
!1069 = !DILocation(line: 392, column: 11, scope: !1063)
!1070 = !DILocation(line: 392, column: 49, scope: !1063)
!1071 = !DILocation(line: 394, column: 11, scope: !1063)
!1072 = !DILocation(line: 394, column: 49, scope: !1063)
!1073 = !DILocation(line: 400, column: 10, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 399, column: 3)
!1075 = !DILocation(line: 404, column: 36, scope: !1074)
!1076 = !DILocation(line: 402, column: 45, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 401, column: 5)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 401, column: 5)
!1079 = !DILocation(line: 404, column: 43, scope: !1074)
!1080 = !DILocation(line: 404, column: 61, scope: !1074)
!1081 = !DILocation(line: 404, column: 10, scope: !1074)
!1082 = !DILocation(line: 404, column: 34, scope: !1074)
!1083 = !DILocation(line: 408, column: 33, scope: !219)
!1084 = !DILocation(line: 408, column: 38, scope: !219)
!1085 = !{!817, !714, i64 72492}
!1086 = !DILocation(line: 408, column: 8, scope: !219)
!1087 = !DILocation(line: 408, column: 31, scope: !219)
!1088 = !{!1027, !709, i64 56}
!1089 = !DILocation(line: 412, column: 41, scope: !219)
!1090 = !{!713, !714, i64 3152}
!1091 = !DILocation(line: 412, column: 8, scope: !219)
!1092 = !DILocation(line: 412, column: 32, scope: !219)
!1093 = !{!1027, !714, i64 60}
!1094 = !DILocation(line: 416, column: 36, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !219, file: !1, line: 416, column: 7)
!1096 = !DILocation(line: 416, column: 7, scope: !219)
!1097 = !DILocation(line: 417, column: 20, scope: !1095)
!1098 = !{!713, !714, i64 3156}
!1099 = !DILocation(line: 417, column: 5, scope: !1095)
!1100 = !DILocation(line: 421, column: 12, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 418, column: 5)
!1102 = !DILocation(line: 421, column: 33, scope: !1101)
!1103 = !{!1027, !714, i64 64}
!1104 = !DILocation(line: 424, column: 42, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 423, column: 7)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 422, column: 7)
!1107 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 422, column: 7)
!1108 = !{!713, !708, i64 3184}
!1109 = !DILocation(line: 422, column: 7, scope: !1107)
!1110 = !DILocation(line: 424, column: 35, scope: !1105)
!1111 = !DILocation(line: 424, column: 9, scope: !1105)
!1112 = !DILocation(line: 424, column: 34, scope: !1105)
!1113 = !DILocation(line: 422, column: 50, scope: !1106)
!1114 = !DILocation(line: 422, column: 17, scope: !1106)
!1115 = !DILocation(line: 429, column: 12, scope: !1101)
!1116 = !DILocation(line: 429, column: 33, scope: !1101)
!1117 = !DILocation(line: 430, column: 7, scope: !1101)
!1118 = !DILocation(line: 433, column: 12, scope: !1101)
!1119 = !DILocation(line: 433, column: 33, scope: !1101)
!1120 = !DILocation(line: 436, column: 35, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 435, column: 7)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 434, column: 7)
!1123 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 434, column: 7)
!1124 = !{!713, !708, i64 3160}
!1125 = !DILocation(line: 437, column: 39, scope: !1121)
!1126 = !{!713, !708, i64 3168}
!1127 = !DILocation(line: 434, column: 7, scope: !1123)
!1128 = !DILocation(line: 436, column: 28, scope: !1121)
!1129 = !DILocation(line: 436, column: 9, scope: !1121)
!1130 = !DILocation(line: 436, column: 26, scope: !1121)
!1131 = !DILocation(line: 437, column: 32, scope: !1121)
!1132 = !DILocation(line: 437, column: 9, scope: !1121)
!1133 = !DILocation(line: 437, column: 30, scope: !1121)
!1134 = !DILocation(line: 434, column: 49, scope: !1122)
!1135 = !DILocation(line: 434, column: 17, scope: !1122)
!1136 = !DILocation(line: 443, column: 12, scope: !1101)
!1137 = !DILocation(line: 443, column: 33, scope: !1101)
!1138 = !DILocation(line: 445, column: 55, scope: !1101)
!1139 = !{!713, !714, i64 3192}
!1140 = !DILocation(line: 445, column: 12, scope: !1101)
!1141 = !DILocation(line: 445, column: 46, scope: !1101)
!1142 = !{!1027, !709, i64 164}
!1143 = !DILocation(line: 446, column: 52, scope: !1101)
!1144 = !{!713, !714, i64 3196}
!1145 = !DILocation(line: 446, column: 12, scope: !1101)
!1146 = !DILocation(line: 446, column: 43, scope: !1101)
!1147 = !{!1027, !714, i64 168}
!1148 = !DILocation(line: 447, column: 7, scope: !1101)
!1149 = !DILocation(line: 449, column: 12, scope: !1101)
!1150 = !DILocation(line: 449, column: 33, scope: !1101)
!1151 = !DILocation(line: 451, column: 15, scope: !1101)
!1152 = !DILocation(line: 451, column: 31, scope: !1101)
!1153 = !DILocation(line: 451, column: 25, scope: !1101)
!1154 = !DILocation(line: 451, column: 48, scope: !1101)
!1155 = !DILocation(line: 451, column: 72, scope: !1101)
!1156 = !DILocation(line: 451, column: 66, scope: !1101)
!1157 = !DILocation(line: 451, column: 63, scope: !1101)
!1158 = !DILocation(line: 452, column: 15, scope: !1101)
!1159 = !DILocation(line: 452, column: 30, scope: !1101)
!1160 = !DILocation(line: 452, column: 24, scope: !1101)
!1161 = !DILocation(line: 452, column: 46, scope: !1101)
!1162 = !DILocation(line: 452, column: 5, scope: !1101)
!1163 = !DILocation(line: 452, column: 62, scope: !1101)
!1164 = !DILocation(line: 450, column: 12, scope: !1101)
!1165 = !DILocation(line: 450, column: 41, scope: !1101)
!1166 = !{!1027, !714, i64 172}
!1167 = !DILocation(line: 455, column: 14, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 454, column: 7)
!1169 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 454, column: 7)
!1170 = !DILocation(line: 455, column: 41, scope: !1168)
!1171 = !{!713, !708, i64 3176}
!1172 = !DILocation(line: 455, column: 34, scope: !1168)
!1173 = !{!1027, !708, i64 176}
!1174 = !DILocation(line: 455, column: 32, scope: !1168)
!1175 = !DILocation(line: 454, column: 24, scope: !1168)
!1176 = !DILocation(line: 454, column: 17, scope: !1168)
!1177 = !DILocation(line: 454, column: 7, scope: !1169)
!1178 = !DILocation(line: 455, column: 9, scope: !1168)
!1179 = !DILocation(line: 454, column: 55, scope: !1168)
!1180 = !DILocation(line: 459, column: 7, scope: !1101)
!1181 = !DILocation(line: 460, column: 7, scope: !1101)
!1182 = !DILocation(line: 464, column: 44, scope: !219)
!1183 = !DILocation(line: 464, column: 39, scope: !219)
!1184 = !DILocation(line: 464, column: 72, scope: !219)
!1185 = !DILocation(line: 464, column: 86, scope: !219)
!1186 = !DILocation(line: 464, column: 8, scope: !219)
!1187 = !DILocation(line: 464, column: 37, scope: !219)
!1188 = !{!1027, !714, i64 184}
!1189 = !DILocation(line: 465, column: 8, scope: !219)
!1190 = !DILocation(line: 465, column: 37, scope: !219)
!1191 = !{!1027, !714, i64 188}
!1192 = !DILocation(line: 467, column: 8, scope: !219)
!1193 = !DILocation(line: 467, column: 27, scope: !219)
!1194 = !{!1027, !709, i64 192}
!1195 = !DILocation(line: 468, column: 8, scope: !219)
!1196 = !DILocation(line: 468, column: 28, scope: !219)
!1197 = !{!1027, !714, i64 196}
!1198 = !DILocation(line: 470, column: 8, scope: !219)
!1199 = !DILocation(line: 470, column: 28, scope: !219)
!1200 = !{!1027, !714, i64 200}
!1201 = !DILocation(line: 471, column: 8, scope: !219)
!1202 = !DILocation(line: 471, column: 28, scope: !219)
!1203 = !{!1027, !714, i64 204}
!1204 = !DILocation(line: 473, column: 8, scope: !219)
!1205 = !DILocation(line: 473, column: 31, scope: !219)
!1206 = !{!1027, !714, i64 208}
!1207 = !DILocation(line: 474, column: 7, scope: !219)
!1208 = !DILocation(line: 480, column: 36, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !219, file: !1, line: 474, column: 7)
!1210 = !DILocation(line: 480, column: 10, scope: !1209)
!1211 = !DILocation(line: 482, column: 49, scope: !219)
!1212 = !DILocation(line: 482, column: 56, scope: !219)
!1213 = !{!713, !714, i64 2924}
!1214 = !DILocation(line: 482, column: 8, scope: !219)
!1215 = !DILocation(line: 482, column: 47, scope: !219)
!1216 = !{!1027, !709, i64 220}
!1217 = !DILocation(line: 483, column: 45, scope: !219)
!1218 = !{!713, !714, i64 216}
!1219 = !DILocation(line: 483, column: 8, scope: !219)
!1220 = !DILocation(line: 483, column: 36, scope: !219)
!1221 = !{!1027, !709, i64 224}
!1222 = !DILocation(line: 485, column: 8, scope: !219)
!1223 = !DILocation(line: 485, column: 39, scope: !219)
!1224 = !{!1027, !709, i64 228}
!1225 = !DILocation(line: 486, column: 1, scope: !219)
!1226 = !DILocation(line: 122, column: 12, scope: !166)
!1227 = !DILocation(line: 122, column: 3, scope: !166)
!1228 = !DILocation(line: 124, column: 1, scope: !166)
!1229 = !DILocation(line: 143, column: 15, scope: !168)
!1230 = !DILocation(line: 143, column: 11, scope: !168)
!1231 = !DILocation(line: 144, column: 7, scope: !168)
!1232 = !DILocation(line: 146, column: 3, scope: !168)
!1233 = !DILocation(line: 146, column: 8, scope: !168)
!1234 = !DILocation(line: 148, column: 45, scope: !168)
!1235 = !DILocation(line: 148, column: 13, scope: !168)
!1236 = !DILocation(line: 149, column: 13, scope: !168)
!1237 = !DILocation(line: 145, column: 7, scope: !168)
!1238 = !DILocation(line: 150, column: 6, scope: !168)
!1239 = !DILocation(line: 150, column: 26, scope: !168)
!1240 = !{!1241, !714, i64 0}
!1241 = !{!"", !714, i64 0, !714, i64 4, !714, i64 8, !714, i64 12, !714, i64 16, !714, i64 20, !708, i64 24}
!1242 = !DILocation(line: 153, column: 1, scope: !168)
!1243 = !DILocation(line: 561, column: 63, scope: !322)
!1244 = !DILocation(line: 561, column: 74, scope: !322)
!1245 = !DILocation(line: 564, column: 7, scope: !322)
!1246 = !DILocation(line: 567, column: 3, scope: !322)
!1247 = !DILocation(line: 571, column: 18, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !322, file: !1, line: 571, column: 7)
!1249 = !DILocation(line: 563, column: 18, scope: !322)
!1250 = !DILocation(line: 571, column: 50, scope: !1248)
!1251 = !DILocation(line: 571, column: 7, scope: !322)
!1252 = !DILocation(line: 571, column: 58, scope: !1248)
!1253 = !DILocation(line: 572, column: 29, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !322, file: !1, line: 572, column: 7)
!1255 = !DILocation(line: 572, column: 19, scope: !1254)
!1256 = !DILocation(line: 572, column: 28, scope: !1254)
!1257 = !{!1258, !708, i64 0}
!1258 = !{!"datapartition", !708, i64 0, !1259, i64 8, !708, i64 112}
!1259 = !{!"", !714, i64 0, !714, i64 4, !714, i64 8, !714, i64 12, !714, i64 16, !708, i64 24, !708, i64 32, !714, i64 40, !714, i64 44, !714, i64 48, !714, i64 52, !714, i64 56, !708, i64 64, !708, i64 72, !714, i64 80, !714, i64 84, !714, i64 88, !714, i64 92, !714, i64 96, !714, i64 100}
!1260 = !DILocation(line: 572, column: 58, scope: !1254)
!1261 = !DILocation(line: 572, column: 7, scope: !322)
!1262 = !DILocation(line: 572, column: 66, scope: !1254)
!1263 = !DILocation(line: 574, column: 14, scope: !322)
!1264 = !DILocation(line: 574, column: 25, scope: !322)
!1265 = !DILocation(line: 574, column: 38, scope: !322)
!1266 = !{!1267, !708, i64 32}
!1267 = !{!"", !714, i64 0, !714, i64 4, !709, i64 8, !714, i64 12, !714, i64 16, !709, i64 20, !709, i64 21, !714, i64 24, !714, i64 28, !708, i64 32, !714, i64 40}
!1268 = !DILocation(line: 575, column: 25, scope: !322)
!1269 = !DILocation(line: 575, column: 36, scope: !322)
!1270 = !{!1267, !714, i64 4}
!1271 = !DILocation(line: 577, column: 70, scope: !322)
!1272 = !DILocation(line: 577, column: 8, scope: !322)
!1273 = !DILocation(line: 579, column: 70, scope: !322)
!1274 = !{!720, !709, i64 8}
!1275 = !DILocation(line: 579, column: 8, scope: !322)
!1276 = !DILocation(line: 580, column: 70, scope: !322)
!1277 = !{!720, !709, i64 12}
!1278 = !DILocation(line: 580, column: 8, scope: !322)
!1279 = !DILocation(line: 581, column: 70, scope: !322)
!1280 = !{!720, !709, i64 16}
!1281 = !DILocation(line: 581, column: 8, scope: !322)
!1282 = !DILocation(line: 582, column: 70, scope: !322)
!1283 = !{!720, !709, i64 20}
!1284 = !DILocation(line: 582, column: 8, scope: !322)
!1285 = !DILocation(line: 583, column: 8, scope: !322)
!1286 = !DILocation(line: 585, column: 70, scope: !322)
!1287 = !DILocation(line: 585, column: 8, scope: !322)
!1288 = !DILocation(line: 587, column: 67, scope: !322)
!1289 = !DILocation(line: 587, column: 8, scope: !322)
!1290 = !DILocation(line: 590, column: 12, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !322, file: !1, line: 590, column: 6)
!1292 = !DILocation(line: 590, column: 35, scope: !1291)
!1293 = !DILocation(line: 595, column: 70, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 594, column: 3)
!1295 = !DILocation(line: 595, column: 10, scope: !1294)
!1296 = !DILocation(line: 596, column: 8, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 596, column: 8)
!1298 = !DILocation(line: 596, column: 13, scope: !1297)
!1299 = !{!817, !714, i64 72700}
!1300 = !DILocation(line: 596, column: 24, scope: !1297)
!1301 = !DILocation(line: 596, column: 8, scope: !1294)
!1302 = !DILocation(line: 597, column: 70, scope: !1297)
!1303 = !DILocation(line: 597, column: 12, scope: !1297)
!1304 = !DILocation(line: 597, column: 7, scope: !1297)
!1305 = !DILocation(line: 598, column: 70, scope: !1294)
!1306 = !DILocation(line: 598, column: 10, scope: !1294)
!1307 = !DILocation(line: 599, column: 70, scope: !1294)
!1308 = !DILocation(line: 599, column: 10, scope: !1294)
!1309 = !DILocation(line: 600, column: 65, scope: !1294)
!1310 = !DILocation(line: 600, column: 70, scope: !1294)
!1311 = !DILocation(line: 600, column: 10, scope: !1294)
!1312 = !DILocation(line: 603, column: 70, scope: !1294)
!1313 = !DILocation(line: 603, column: 10, scope: !1294)
!1314 = !DILocation(line: 605, column: 13, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 605, column: 8)
!1316 = !DILocation(line: 605, column: 8, scope: !1315)
!1317 = !DILocation(line: 605, column: 8, scope: !1294)
!1318 = !DILocation(line: 609, column: 65, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 608, column: 7)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !1, line: 607, column: 7)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 607, column: 7)
!1322 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 606, column: 5)
!1323 = !DILocation(line: 609, column: 14, scope: !1319)
!1324 = !DILocation(line: 610, column: 12, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1319, file: !1, line: 610, column: 12)
!1326 = !DILocation(line: 610, column: 12, scope: !1319)
!1327 = !DILocation(line: 612, column: 15, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 612, column: 14)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 611, column: 9)
!1330 = !DILocation(line: 612, column: 14, scope: !1329)
!1331 = !DILocation(line: 613, column: 31, scope: !1328)
!1332 = !DILocation(line: 613, column: 55, scope: !1328)
!1333 = !DILocation(line: 613, column: 79, scope: !1328)
!1334 = !DILocation(line: 613, column: 18, scope: !1328)
!1335 = !DILocation(line: 613, column: 13, scope: !1328)
!1336 = !DILocation(line: 615, column: 52, scope: !1328)
!1337 = !DILocation(line: 615, column: 31, scope: !1328)
!1338 = !DILocation(line: 615, column: 57, scope: !1328)
!1339 = !DILocation(line: 615, column: 83, scope: !1328)
!1340 = !DILocation(line: 615, column: 18, scope: !1328)
!1341 = !DILocation(line: 607, column: 7, scope: !1321)
!1342 = !DILocation(line: 621, column: 67, scope: !322)
!1343 = !DILocation(line: 621, column: 8, scope: !322)
!1344 = !DILocation(line: 622, column: 67, scope: !322)
!1345 = !DILocation(line: 622, column: 8, scope: !322)
!1346 = !DILocation(line: 624, column: 12, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !322, file: !1, line: 624, column: 7)
!1348 = !DILocation(line: 624, column: 7, scope: !322)
!1349 = !DILocation(line: 625, column: 67, scope: !1347)
!1350 = !DILocation(line: 625, column: 10, scope: !1347)
!1351 = !DILocation(line: 625, column: 5, scope: !1347)
!1352 = !DILocation(line: 628, column: 69, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 627, column: 3)
!1354 = distinct !DILexicalBlock(scope: !1347, file: !1, line: 626, column: 12)
!1355 = !{!720, !709, i64 92}
!1356 = !DILocation(line: 628, column: 10, scope: !1353)
!1357 = !DILocation(line: 629, column: 69, scope: !1353)
!1358 = !{!720, !714, i64 96}
!1359 = !DILocation(line: 629, column: 10, scope: !1353)
!1360 = !DILocation(line: 630, column: 69, scope: !1353)
!1361 = !{!720, !714, i64 100}
!1362 = !DILocation(line: 630, column: 10, scope: !1353)
!1363 = !DILocation(line: 631, column: 69, scope: !1353)
!1364 = !{!720, !714, i64 104}
!1365 = !DILocation(line: 631, column: 10, scope: !1353)
!1366 = !DILocation(line: 565, column: 12, scope: !322)
!1367 = !DILocation(line: 632, column: 22, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 632, column: 5)
!1369 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 632, column: 5)
!1370 = !DILocation(line: 632, column: 16, scope: !1368)
!1371 = !DILocation(line: 632, column: 5, scope: !1369)
!1372 = !DILocation(line: 633, column: 64, scope: !1368)
!1373 = !DILocation(line: 633, column: 12, scope: !1368)
!1374 = !DILocation(line: 632, column: 62, scope: !1368)
!1375 = !DILocation(line: 635, column: 67, scope: !322)
!1376 = !DILocation(line: 635, column: 8, scope: !322)
!1377 = !DILocation(line: 636, column: 67, scope: !322)
!1378 = !DILocation(line: 636, column: 8, scope: !322)
!1379 = !DILocation(line: 637, column: 67, scope: !322)
!1380 = !DILocation(line: 637, column: 8, scope: !322)
!1381 = !DILocation(line: 638, column: 67, scope: !322)
!1382 = !DILocation(line: 638, column: 8, scope: !322)
!1383 = !DILocation(line: 639, column: 67, scope: !322)
!1384 = !DILocation(line: 639, column: 8, scope: !322)
!1385 = !DILocation(line: 640, column: 13, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !322, file: !1, line: 640, column: 7)
!1387 = !DILocation(line: 640, column: 8, scope: !1386)
!1388 = !DILocation(line: 640, column: 7, scope: !322)
!1389 = !DILocation(line: 642, column: 69, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !1, line: 641, column: 3)
!1391 = !DILocation(line: 642, column: 10, scope: !1390)
!1392 = !DILocation(line: 643, column: 3, scope: !1390)
!1393 = !DILocation(line: 644, column: 67, scope: !322)
!1394 = !DILocation(line: 644, column: 8, scope: !322)
!1395 = !DILocation(line: 646, column: 68, scope: !322)
!1396 = !DILocation(line: 646, column: 8, scope: !322)
!1397 = !DILocation(line: 647, column: 12, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !322, file: !1, line: 647, column: 7)
!1399 = !DILocation(line: 647, column: 7, scope: !1398)
!1400 = !DILocation(line: 647, column: 7, scope: !322)
!1401 = !DILocation(line: 649, column: 70, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !1, line: 648, column: 3)
!1403 = !DILocation(line: 649, column: 10, scope: !1402)
!1404 = !DILocation(line: 650, column: 70, scope: !1402)
!1405 = !DILocation(line: 650, column: 10, scope: !1402)
!1406 = !DILocation(line: 651, column: 70, scope: !1402)
!1407 = !DILocation(line: 651, column: 10, scope: !1402)
!1408 = !DILocation(line: 652, column: 70, scope: !1402)
!1409 = !DILocation(line: 652, column: 10, scope: !1402)
!1410 = !DILocation(line: 653, column: 3, scope: !1402)
!1411 = !DILocation(line: 655, column: 67, scope: !322)
!1412 = !DILocation(line: 655, column: 8, scope: !322)
!1413 = !DILocation(line: 656, column: 12, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !322, file: !1, line: 656, column: 7)
!1415 = !DILocation(line: 656, column: 7, scope: !1414)
!1416 = !DILocation(line: 656, column: 7, scope: !322)
!1417 = !DILocation(line: 869, column: 7, scope: !350, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 657, column: 10, scope: !1414)
!1419 = !DILocation(line: 872, column: 6, scope: !1420, inlinedAt: !1418)
!1420 = distinct !DILexicalBlock(scope: !350, file: !1, line: 872, column: 6)
!1421 = !DILocation(line: 872, column: 13, scope: !1420, inlinedAt: !1418)
!1422 = !DILocation(line: 872, column: 28, scope: !1420, inlinedAt: !1418)
!1423 = !DILocation(line: 872, column: 38, scope: !1420, inlinedAt: !1418)
!1424 = !DILocation(line: 872, column: 48, scope: !1420, inlinedAt: !1418)
!1425 = !DILocation(line: 872, column: 6, scope: !350, inlinedAt: !1418)
!1426 = !DILocation(line: 896, column: 5, scope: !1427, inlinedAt: !1418)
!1427 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 895, column: 3)
!1428 = !DILocation(line: 897, column: 5, scope: !1427, inlinedAt: !1418)
!1429 = !DILocation(line: 875, column: 5, scope: !1430, inlinedAt: !1418)
!1430 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 873, column: 3)
!1431 = !DILocation(line: 876, column: 10, scope: !1430, inlinedAt: !1418)
!1432 = !DILocation(line: 877, column: 10, scope: !1430, inlinedAt: !1418)
!1433 = !DILocation(line: 878, column: 10, scope: !1430, inlinedAt: !1418)
!1434 = !DILocation(line: 879, column: 10, scope: !1430, inlinedAt: !1418)
!1435 = !DILocation(line: 880, column: 10, scope: !1430, inlinedAt: !1418)
!1436 = !DILocation(line: 881, column: 10, scope: !1430, inlinedAt: !1418)
!1437 = !DILocation(line: 882, column: 10, scope: !1430, inlinedAt: !1418)
!1438 = !DILocation(line: 883, column: 10, scope: !1430, inlinedAt: !1418)
!1439 = !DILocation(line: 884, column: 10, scope: !1430, inlinedAt: !1418)
!1440 = !DILocation(line: 885, column: 10, scope: !1430, inlinedAt: !1418)
!1441 = !DILocation(line: 886, column: 10, scope: !1430, inlinedAt: !1418)
!1442 = !DILocation(line: 887, column: 10, scope: !1430, inlinedAt: !1418)
!1443 = !DILocation(line: 888, column: 10, scope: !1430, inlinedAt: !1418)
!1444 = !DILocation(line: 889, column: 10, scope: !1430, inlinedAt: !1418)
!1445 = !DILocation(line: 890, column: 10, scope: !1430, inlinedAt: !1418)
!1446 = !DILocation(line: 657, column: 5, scope: !1414)
!1447 = !DILocation(line: 659, column: 25, scope: !322)
!1448 = !DILocation(line: 659, column: 3, scope: !322)
!1449 = !DILocation(line: 661, column: 25, scope: !322)
!1450 = !DILocation(line: 661, column: 36, scope: !322)
!1451 = !{!1267, !714, i64 0}
!1452 = !DILocation(line: 564, column: 16, scope: !322)
!1453 = !DILocation(line: 663, column: 9, scope: !322)
!1454 = !DILocation(line: 663, column: 3, scope: !322)
!1455 = !DILocation(line: 664, column: 3, scope: !322)
!1456 = !DILocation(line: 666, column: 3, scope: !322)
!1457 = !DILocation(line: 171, column: 44, scope: !191)
!1458 = !DILocation(line: 173, column: 15, scope: !191)
!1459 = !DILocation(line: 173, column: 11, scope: !191)
!1460 = !DILocation(line: 174, column: 7, scope: !191)
!1461 = !DILocation(line: 176, column: 3, scope: !191)
!1462 = !DILocation(line: 176, column: 8, scope: !191)
!1463 = !DILocation(line: 178, column: 46, scope: !191)
!1464 = !DILocation(line: 178, column: 13, scope: !191)
!1465 = !DILocation(line: 179, column: 13, scope: !191)
!1466 = !DILocation(line: 175, column: 7, scope: !191)
!1467 = !DILocation(line: 180, column: 6, scope: !191)
!1468 = !DILocation(line: 180, column: 26, scope: !191)
!1469 = !DILocation(line: 183, column: 1, scope: !191)
!1470 = !DILocation(line: 689, column: 63, scope: !334)
!1471 = !DILocation(line: 689, column: 74, scope: !334)
!1472 = !DILocation(line: 692, column: 7, scope: !334)
!1473 = !DILocation(line: 697, column: 3, scope: !334)
!1474 = !DILocation(line: 702, column: 18, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !334, file: !1, line: 702, column: 7)
!1476 = !DILocation(line: 691, column: 18, scope: !334)
!1477 = !DILocation(line: 702, column: 50, scope: !1475)
!1478 = !DILocation(line: 702, column: 7, scope: !334)
!1479 = !DILocation(line: 702, column: 58, scope: !1475)
!1480 = !DILocation(line: 703, column: 29, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !334, file: !1, line: 703, column: 7)
!1482 = !DILocation(line: 703, column: 19, scope: !1481)
!1483 = !DILocation(line: 703, column: 28, scope: !1481)
!1484 = !DILocation(line: 703, column: 58, scope: !1481)
!1485 = !DILocation(line: 703, column: 7, scope: !334)
!1486 = !DILocation(line: 703, column: 66, scope: !1481)
!1487 = !DILocation(line: 705, column: 14, scope: !334)
!1488 = !DILocation(line: 705, column: 25, scope: !334)
!1489 = !DILocation(line: 705, column: 38, scope: !334)
!1490 = !DILocation(line: 706, column: 25, scope: !334)
!1491 = !DILocation(line: 706, column: 36, scope: !334)
!1492 = !DILocation(line: 708, column: 33, scope: !334)
!1493 = !DILocation(line: 708, column: 38, scope: !334)
!1494 = !DILocation(line: 708, column: 8, scope: !334)
!1495 = !DILocation(line: 708, column: 31, scope: !334)
!1496 = !DILocation(line: 710, column: 67, scope: !334)
!1497 = !DILocation(line: 710, column: 8, scope: !334)
!1498 = !DILocation(line: 711, column: 67, scope: !334)
!1499 = !DILocation(line: 711, column: 8, scope: !334)
!1500 = !DILocation(line: 712, column: 67, scope: !334)
!1501 = !DILocation(line: 712, column: 8, scope: !334)
!1502 = !DILocation(line: 713, column: 67, scope: !334)
!1503 = !DILocation(line: 713, column: 8, scope: !334)
!1504 = !DILocation(line: 714, column: 67, scope: !334)
!1505 = !DILocation(line: 714, column: 8, scope: !334)
!1506 = !DILocation(line: 717, column: 11, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !334, file: !1, line: 717, column: 6)
!1508 = !DILocation(line: 717, column: 35, scope: !1507)
!1509 = !DILocation(line: 717, column: 6, scope: !334)
!1510 = !DILocation(line: 719, column: 66, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 718, column: 3)
!1512 = !DILocation(line: 719, column: 10, scope: !1511)
!1513 = !DILocation(line: 720, column: 14, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 720, column: 9)
!1515 = !DILocation(line: 720, column: 9, scope: !1511)
!1516 = !DILocation(line: 724, column: 24, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 724, column: 7)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 724, column: 7)
!1519 = distinct !DILexicalBlock(scope: !1514, file: !1, line: 723, column: 14)
!1520 = !DILocation(line: 724, column: 18, scope: !1517)
!1521 = !DILocation(line: 724, column: 7, scope: !1518)
!1522 = !DILocation(line: 722, column: 75, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !1, line: 721, column: 7)
!1524 = distinct !DILexicalBlock(scope: !1514, file: !1, line: 721, column: 7)
!1525 = !DILocation(line: 722, column: 14, scope: !1523)
!1526 = !DILocation(line: 721, column: 51, scope: !1523)
!1527 = !DILocation(line: 693, column: 12, scope: !334)
!1528 = !DILocation(line: 721, column: 25, scope: !1523)
!1529 = !DILocation(line: 721, column: 18, scope: !1523)
!1530 = !DILocation(line: 721, column: 7, scope: !1524)
!1531 = !DILocation(line: 727, column: 65, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 725, column: 7)
!1533 = !DILocation(line: 727, column: 14, scope: !1532)
!1534 = !DILocation(line: 728, column: 65, scope: !1532)
!1535 = !DILocation(line: 728, column: 14, scope: !1532)
!1536 = !DILocation(line: 724, column: 50, scope: !1517)
!1537 = !DILocation(line: 734, column: 73, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !1, line: 733, column: 5)
!1539 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 730, column: 14)
!1540 = !DILocation(line: 734, column: 12, scope: !1538)
!1541 = !DILocation(line: 735, column: 73, scope: !1538)
!1542 = !DILocation(line: 735, column: 12, scope: !1538)
!1543 = !DILocation(line: 736, column: 5, scope: !1538)
!1544 = !DILocation(line: 739, column: 16, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !1, line: 739, column: 11)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !1, line: 738, column: 5)
!1547 = distinct !DILexicalBlock(scope: !1539, file: !1, line: 737, column: 14)
!1548 = !DILocation(line: 739, column: 39, scope: !1545)
!1549 = !DILocation(line: 739, column: 11, scope: !1546)
!1550 = !DILocation(line: 741, column: 44, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 741, column: 16)
!1552 = !DILocation(line: 741, column: 16, scope: !1545)
!1553 = !DILocation(line: 748, column: 69, scope: !1546)
!1554 = !DILocation(line: 748, column: 12, scope: !1546)
!1555 = !DILocation(line: 750, column: 107, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 749, column: 7)
!1557 = distinct !DILexicalBlock(scope: !1546, file: !1, line: 749, column: 7)
!1558 = !DILocation(line: 749, column: 7, scope: !1557)
!1559 = !DILocation(line: 750, column: 102, scope: !1556)
!1560 = !DILocation(line: 750, column: 15, scope: !1556)
!1561 = !DILocation(line: 749, column: 55, scope: !1556)
!1562 = !DILocation(line: 749, column: 24, scope: !1556)
!1563 = !DILocation(line: 749, column: 17, scope: !1556)
!1564 = !DILocation(line: 755, column: 68, scope: !334)
!1565 = !DILocation(line: 755, column: 8, scope: !334)
!1566 = !DILocation(line: 756, column: 68, scope: !334)
!1567 = !DILocation(line: 756, column: 8, scope: !334)
!1568 = !DILocation(line: 757, column: 68, scope: !334)
!1569 = !DILocation(line: 757, column: 8, scope: !334)
!1570 = !DILocation(line: 758, column: 68, scope: !334)
!1571 = !DILocation(line: 758, column: 8, scope: !334)
!1572 = !DILocation(line: 759, column: 68, scope: !334)
!1573 = !DILocation(line: 759, column: 8, scope: !334)
!1574 = !DILocation(line: 760, column: 68, scope: !334)
!1575 = !DILocation(line: 760, column: 8, scope: !334)
!1576 = !DILocation(line: 836, column: 10, scope: !346, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 762, column: 17, scope: !334)
!1578 = !DILocation(line: 836, column: 17, scope: !346, inlinedAt: !1577)
!1579 = !DILocation(line: 695, column: 7, scope: !334)
!1580 = !DILocation(line: 763, column: 30, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !334, file: !1, line: 763, column: 6)
!1582 = !DILocation(line: 767, column: 68, scope: !1581)
!1583 = !{!1027, !714, i64 212}
!1584 = !DILocation(line: 767, column: 10, scope: !1581)
!1585 = !DILocation(line: 767, column: 5, scope: !1581)
!1586 = !DILocation(line: 769, column: 68, scope: !1581)
!1587 = !DILocation(line: 769, column: 10, scope: !1581)
!1588 = !DILocation(line: 771, column: 68, scope: !334)
!1589 = !DILocation(line: 771, column: 8, scope: !334)
!1590 = !DILocation(line: 772, column: 68, scope: !334)
!1591 = !DILocation(line: 772, column: 8, scope: !334)
!1592 = !DILocation(line: 773, column: 68, scope: !334)
!1593 = !DILocation(line: 773, column: 8, scope: !334)
!1594 = !DILocation(line: 776, column: 30, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !334, file: !1, line: 776, column: 6)
!1596 = !DILocation(line: 781, column: 68, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1595, file: !1, line: 780, column: 3)
!1598 = !DILocation(line: 781, column: 10, scope: !1597)
!1599 = !DILocation(line: 783, column: 68, scope: !1597)
!1600 = !DILocation(line: 783, column: 10, scope: !1597)
!1601 = !DILocation(line: 785, column: 13, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 785, column: 8)
!1603 = !DILocation(line: 785, column: 8, scope: !1602)
!1604 = !DILocation(line: 785, column: 8, scope: !1597)
!1605 = !DILocation(line: 787, column: 37, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !1, line: 787, column: 7)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 787, column: 7)
!1608 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 786, column: 5)
!1609 = !DILocation(line: 787, column: 17, scope: !1606)
!1610 = !DILocation(line: 787, column: 7, scope: !1607)
!1611 = !DILocation(line: 789, column: 63, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 788, column: 7)
!1613 = !DILocation(line: 789, column: 14, scope: !1612)
!1614 = !DILocation(line: 791, column: 12, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 791, column: 12)
!1616 = !DILocation(line: 791, column: 12, scope: !1612)
!1617 = !DILocation(line: 793, column: 15, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 793, column: 14)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 792, column: 9)
!1620 = !DILocation(line: 793, column: 14, scope: !1619)
!1621 = !DILocation(line: 794, column: 31, scope: !1618)
!1622 = !DILocation(line: 794, column: 55, scope: !1618)
!1623 = !DILocation(line: 794, column: 79, scope: !1618)
!1624 = !DILocation(line: 794, column: 18, scope: !1618)
!1625 = !DILocation(line: 794, column: 13, scope: !1618)
!1626 = !DILocation(line: 796, column: 52, scope: !1618)
!1627 = !DILocation(line: 796, column: 31, scope: !1618)
!1628 = !DILocation(line: 796, column: 57, scope: !1618)
!1629 = !DILocation(line: 796, column: 83, scope: !1618)
!1630 = !DILocation(line: 796, column: 18, scope: !1618)
!1631 = !DILocation(line: 787, column: 68, scope: !1606)
!1632 = !DILocation(line: 787, column: 60, scope: !1606)
!1633 = !DILocation(line: 787, column: 20, scope: !1606)
!1634 = !DILocation(line: 800, column: 68, scope: !1597)
!1635 = !{!1027, !714, i64 216}
!1636 = !DILocation(line: 800, column: 10, scope: !1597)
!1637 = !DILocation(line: 801, column: 3, scope: !1597)
!1638 = !DILocation(line: 803, column: 25, scope: !334)
!1639 = !DILocation(line: 803, column: 3, scope: !334)
!1640 = !DILocation(line: 805, column: 25, scope: !334)
!1641 = !DILocation(line: 805, column: 36, scope: !334)
!1642 = !DILocation(line: 692, column: 16, scope: !334)
!1643 = !DILocation(line: 808, column: 9, scope: !334)
!1644 = !DILocation(line: 808, column: 3, scope: !334)
!1645 = !DILocation(line: 809, column: 3, scope: !334)
!1646 = !DILocation(line: 811, column: 3, scope: !334)
!1647 = !DILocation(line: 509, column: 25, scope: !232)
!1648 = !DILocation(line: 509, column: 50, scope: !232)
!1649 = !DILocation(line: 509, column: 67, scope: !232)
!1650 = !DILocation(line: 509, column: 93, scope: !232)
!1651 = !DILocation(line: 509, column: 133, scope: !232)
!1652 = !DILocation(line: 512, column: 7, scope: !232)
!1653 = !DILocation(line: 513, column: 20, scope: !232)
!1654 = !DILocation(line: 513, column: 31, scope: !232)
!1655 = !DILocation(line: 511, column: 7, scope: !232)
!1656 = !DILocation(line: 518, column: 13, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 518, column: 3)
!1658 = distinct !DILexicalBlock(scope: !232, file: !1, line: 518, column: 3)
!1659 = !DILocation(line: 518, column: 3, scope: !1658)
!1660 = !DILocation(line: 520, column: 31, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !1, line: 519, column: 3)
!1662 = !DILocation(line: 520, column: 13, scope: !1661)
!1663 = !DILocation(line: 520, column: 39, scope: !1661)
!1664 = !DILocation(line: 520, column: 50, scope: !1661)
!1665 = !DILocation(line: 522, column: 17, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 522, column: 8)
!1667 = !DILocation(line: 535, column: 5, scope: !1661)
!1668 = !DILocation(line: 522, column: 8, scope: !1661)
!1669 = !DILocation(line: 524, column: 21, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !1, line: 523, column: 5)
!1671 = !{!1672, !1672, i64 0}
!1672 = !{!"short", !709, i64 0}
!1673 = !DILocation(line: 524, column: 44, scope: !1670)
!1674 = !DILocation(line: 513, column: 7, scope: !232)
!1675 = !DILocation(line: 525, column: 21, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1670, file: !1, line: 525, column: 10)
!1677 = !DILocation(line: 525, column: 10, scope: !1670)
!1678 = !DILocation(line: 526, column: 32, scope: !1676)
!1679 = !DILocation(line: 526, column: 9, scope: !1676)
!1680 = !DILocation(line: 527, column: 26, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 527, column: 15)
!1682 = !DILocation(line: 528, column: 32, scope: !1681)
!1683 = !DILocation(line: 527, column: 15, scope: !1676)
!1684 = !DILocation(line: 530, column: 12, scope: !1670)
!1685 = !DILocation(line: 530, column: 10, scope: !1670)
!1686 = !DILocation(line: 531, column: 19, scope: !1670)
!1687 = !DILocation(line: 532, column: 39, scope: !1670)
!1688 = !DILocation(line: 532, column: 55, scope: !1670)
!1689 = !DILocation(line: 532, column: 43, scope: !1670)
!1690 = !DILocation(line: 532, column: 31, scope: !1670)
!1691 = !DILocation(line: 533, column: 5, scope: !1670)
!1692 = !DILocation(line: 535, column: 36, scope: !1661)
!1693 = !DILocation(line: 535, column: 26, scope: !1661)
!1694 = !DILocation(line: 535, column: 24, scope: !1661)
!1695 = !DILocation(line: 539, column: 3, scope: !232)
