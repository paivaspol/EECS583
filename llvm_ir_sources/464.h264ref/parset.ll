; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@input = external global %struct.InputParameters*
@PicParSet = common global [256 x %struct.pic_parameter_set_rbsp_t] zeroinitializer, align 16
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@GenerateSequenceParameterSet.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@GenerateSequenceParameterSet.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@.str = private unnamed_addr constant [18 x i8] c"sps != ((void*)0)\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c\00", align 1
@__PRETTY_FUNCTION__.GenerateSequenceParameterSet = private unnamed_addr constant [67 x i8] c"void GenerateSequenceParameterSet(seq_parameter_set_rbsp_t *, int)\00", align 1
@img = external global %struct.ImageParameters*
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@Co_located = external global %struct.colocated_params*
@.str2 = private unnamed_addr constant [46 x i8] c"automatic frame cropping (width) not possible\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"automatic frame cropping (height) not possible\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"0==1\00", align 1
@__PRETTY_FUNCTION__.GeneratePictureParameterSet = private unnamed_addr constant [114 x i8] c"void GeneratePictureParameterSet(pic_parameter_set_rbsp_t *, seq_parameter_set_rbsp_t *, int, int, int, int, int)\00", align 1
@ZZ_SCAN = internal unnamed_addr constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16
@ZZ_SCAN8 = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@.str6 = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"rbsp != ((void*)0)\00", align 1
@__PRETTY_FUNCTION__.GenerateSeq_parameter_set_rbsp = private unnamed_addr constant [71 x i8] c"int GenerateSeq_parameter_set_rbsp(seq_parameter_set_rbsp_t *, char *)\00", align 1
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
@__PRETTY_FUNCTION__.GeneratePic_parameter_set_rbsp = private unnamed_addr constant [71 x i8] c"int GeneratePic_parameter_set_rbsp(pic_parameter_set_rbsp_t *, char *)\00", align 1
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

; Function Attrs: nounwind optsize uwtable
define void @GenerateParameterSets() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !689, i64 0, metadata !25), !dbg !690
  tail call void @llvm.dbg.value(metadata !691, i64 0, metadata !126), !dbg !692
  %call = tail call %struct.seq_parameter_set_rbsp_t* (...)* @AllocSPS() #6, !dbg !693
  tail call void @llvm.dbg.value(metadata !{%struct.seq_parameter_set_rbsp_t* %call}, i64 0, metadata !25), !dbg !693
  %call1 = tail call %struct.pic_parameter_set_rbsp_t* (...)* @AllocPPS() #6, !dbg !694
  tail call void @llvm.dbg.value(metadata !{%struct.pic_parameter_set_rbsp_t* %call1}, i64 0, metadata !126), !dbg !694
  tail call void @GenerateSequenceParameterSet(%struct.seq_parameter_set_rbsp_t* %call, i32 undef) #7, !dbg !695
  %0 = load %struct.InputParameters** @input, align 8, !dbg !696, !tbaa !697
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 15, !dbg !696
  %1 = load i32* %GenerateMultiplePPS, align 4, !dbg !696, !tbaa !700
  %tobool = icmp eq i32 %1, 0, !dbg !696
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %call, i64 0, i32 1, !dbg !701
  %2 = load i32* %profile_idc, align 4, !dbg !701, !tbaa !700
  %cmp = icmp ugt i32 %2, 99, !dbg !701
  br i1 %tobool, label %if.else9, label %if.then, !dbg !696

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then2, label %if.else, !dbg !701

if.then2:                                         ; preds = %if.then
  %cb_qp_index_offset = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 140, !dbg !703
  %3 = load i32* %cb_qp_index_offset, align 4, !dbg !703, !tbaa !700
  %cr_qp_index_offset = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 141, !dbg !703
  %4 = load i32* %cr_qp_index_offset, align 4, !dbg !703, !tbaa !700
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 0, i32 0, i32 0, i32 %3, i32 %4) #7, !dbg !703
  %5 = bitcast %struct.pic_parameter_set_rbsp_t* %call1 to i8*, !dbg !705
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %5, i64 240, i32 8, i1 false), !dbg !705
  %6 = load %struct.InputParameters** @input, align 8, !dbg !706, !tbaa !697
  %cb_qp_index_offset3 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 140, !dbg !706
  %7 = load i32* %cb_qp_index_offset3, align 4, !dbg !706, !tbaa !700
  %cr_qp_index_offset4 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 141, !dbg !706
  %8 = load i32* %cr_qp_index_offset4, align 4, !dbg !706, !tbaa !700
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 1, i32 1, i32 1, i32 %7, i32 %8) #7, !dbg !706
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1) to i8*), i8* %5, i64 240, i32 8, i1 false), !dbg !707
  %9 = load %struct.InputParameters** @input, align 8, !dbg !708, !tbaa !697
  %cb_qp_index_offset5 = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 140, !dbg !708
  %10 = load i32* %cb_qp_index_offset5, align 4, !dbg !708, !tbaa !700
  %cr_qp_index_offset6 = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 141, !dbg !708
  %11 = load i32* %cr_qp_index_offset6, align 4, !dbg !708, !tbaa !700
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 2, i32 1, i32 2, i32 %10, i32 %11) #7, !dbg !708
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 2) to i8*), i8* %5, i64 240, i32 8, i1 false), !dbg !709
  br label %if.end20, !dbg !710

if.else:                                          ; preds = %if.then
  %chroma_qp_index_offset = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 77, !dbg !711
  %12 = load i32* %chroma_qp_index_offset, align 4, !dbg !711, !tbaa !700
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 0, i32 0, i32 0, i32 %12, i32 0) #7, !dbg !711
  %13 = bitcast %struct.pic_parameter_set_rbsp_t* %call1 to i8*, !dbg !713
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %13, i64 240, i32 8, i1 false), !dbg !713
  %14 = load %struct.InputParameters** @input, align 8, !dbg !714, !tbaa !697
  %chroma_qp_index_offset7 = getelementptr inbounds %struct.InputParameters* %14, i64 0, i32 77, !dbg !714
  %15 = load i32* %chroma_qp_index_offset7, align 4, !dbg !714, !tbaa !700
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 1, i32 1, i32 1, i32 %15, i32 0) #7, !dbg !714
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1) to i8*), i8* %13, i64 240, i32 8, i1 false), !dbg !715
  %16 = load %struct.InputParameters** @input, align 8, !dbg !716, !tbaa !697
  %chroma_qp_index_offset8 = getelementptr inbounds %struct.InputParameters* %16, i64 0, i32 77, !dbg !716
  %17 = load i32* %chroma_qp_index_offset8, align 4, !dbg !716, !tbaa !700
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 2, i32 1, i32 2, i32 %17, i32 0) #7, !dbg !716
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 2) to i8*), i8* %13, i64 240, i32 8, i1 false), !dbg !717
  br label %if.end20

if.else9:                                         ; preds = %entry
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 46, !dbg !718
  %18 = load i32* %WeightedPrediction, align 4, !dbg !718, !tbaa !700
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 47, !dbg !718
  %19 = load i32* %WeightedBiprediction, align 4, !dbg !718, !tbaa !700
  br i1 %cmp, label %if.then12, label %if.else15, !dbg !720

if.then12:                                        ; preds = %if.else9
  %cb_qp_index_offset13 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 140, !dbg !718
  %20 = load i32* %cb_qp_index_offset13, align 4, !dbg !718, !tbaa !700
  %cr_qp_index_offset14 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 141, !dbg !718
  %21 = load i32* %cr_qp_index_offset14, align 4, !dbg !718, !tbaa !700
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 0, i32 %18, i32 %19, i32 %20, i32 %21) #7, !dbg !718
  br label %if.end19, !dbg !718

if.else15:                                        ; preds = %if.else9
  %chroma_qp_index_offset18 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 77, !dbg !721
  %22 = load i32* %chroma_qp_index_offset18, align 4, !dbg !721, !tbaa !700
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 0, i32 %18, i32 %19, i32 %22, i32 0) #7, !dbg !721
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then12
  %23 = bitcast %struct.pic_parameter_set_rbsp_t* %call1 to i8*, !dbg !722
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %23, i64 240, i32 8, i1 false), !dbg !722
  br label %if.end20

if.end20:                                         ; preds = %if.then2, %if.else, %if.end19
  store %struct.seq_parameter_set_rbsp_t* %call, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !723, !tbaa !697
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !724, !tbaa !697
  ret void, !dbg !725
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare %struct.seq_parameter_set_rbsp_t* @AllocSPS(...) #2

; Function Attrs: optsize
declare %struct.pic_parameter_set_rbsp_t* @AllocPPS(...) #2

; Function Attrs: nounwind optsize uwtable
define void @GenerateSequenceParameterSet(%struct.seq_parameter_set_rbsp_t* %sps, i32 %SPS_id) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.seq_parameter_set_rbsp_t* %sps}, i64 0, metadata !202), !dbg !726
  tail call void @llvm.dbg.value(metadata !{i32 %SPS_id}, i64 0, metadata !203), !dbg !726
  tail call void @llvm.dbg.declare(metadata !727, metadata !205), !dbg !728
  tail call void @llvm.dbg.declare(metadata !729, metadata !209), !dbg !730
  %0 = load %struct.InputParameters** @input, align 8, !dbg !731, !tbaa !697
  %ProfileIDC.i = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 0, !dbg !731
  %1 = load i32* %ProfileIDC.i, align 4, !dbg !731, !tbaa !700
  %switch.tableidx = add i32 %1, -100, !dbg !732
  %2 = icmp ult i32 %switch.tableidx, 45, !dbg !732
  br i1 %2, label %switch.lookup, label %lor.end, !dbg !732

switch.lookup:                                    ; preds = %entry
  %switch.cast = zext i32 %switch.tableidx to i45, !dbg !732
  %switch.downshift = lshr i45 -17592181849087, %switch.cast, !dbg !732
  %3 = and i45 %switch.downshift, 1, !dbg !732
  %switch.masked = icmp ne i45 %3, 0, !dbg !732
  br label %lor.end, !dbg !732

lor.end:                                          ; preds = %entry, %switch.lookup
  %4 = phi i1 [ %switch.masked, %switch.lookup ], [ false, %entry ]
  %cmp8 = icmp eq %struct.seq_parameter_set_rbsp_t* %sps, null, !dbg !733
  br i1 %cmp8, label %cond.false, label %cond.end, !dbg !733

cond.false:                                       ; preds = %lor.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 217, i8* getelementptr inbounds ([67 x i8]* @__PRETTY_FUNCTION__.GenerateSequenceParameterSet, i64 0, i64 0)) #8, !dbg !733
  unreachable, !dbg !733

cond.end:                                         ; preds = %lor.end
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 1, !dbg !734
  store i32 %1, i32* %profile_idc, align 4, !dbg !734, !tbaa !700
  %LevelIDC.i = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 1, !dbg !735
  %5 = load i32* %LevelIDC.i, align 4, !dbg !735, !tbaa !700
  %level_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 6, !dbg !736
  store i32 %5, i32* %level_idc, align 4, !dbg !736, !tbaa !700
  %constrained_set0_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 2, !dbg !737
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 7, !dbg !738
  store i32 0, i32* %seq_parameter_set_id, align 4, !dbg !738, !tbaa !700
  %6 = bitcast i32* %constrained_set0_flag to i8*, !dbg !739
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 4, i1 false), !dbg !740
  %7 = load %struct.InputParameters** @input, align 8, !dbg !739, !tbaa !697
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 135, !dbg !739
  %8 = load i32* %BitDepthLuma, align 4, !dbg !739, !tbaa !700
  %sub = add nsw i32 %8, -8, !dbg !739
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 11, !dbg !739
  store i32 %sub, i32* %bit_depth_luma_minus8, align 4, !dbg !739, !tbaa !700
  %BitDepthChroma = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 136, !dbg !741
  %9 = load i32* %BitDepthChroma, align 4, !dbg !741, !tbaa !700
  %sub11 = add nsw i32 %9, -8, !dbg !741
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 12, !dbg !741
  store i32 %sub11, i32* %bit_depth_chroma_minus8, align 4, !dbg !741, !tbaa !700
  %lossless_qpprime_y_zero_flag = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 142, !dbg !742
  %10 = load i32* %lossless_qpprime_y_zero_flag, align 4, !dbg !742, !tbaa !700
  %cmp13 = icmp eq i32 %1, 144, !dbg !742
  %conv = zext i1 %cmp13 to i32, !dbg !742
  %and = and i32 %conv, %10, !dbg !742
  %11 = load %struct.ImageParameters** @img, align 8, !dbg !742, !tbaa !697
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 160, !dbg !742
  store i32 %and, i32* %lossless_qpprime_flag, align 4, !dbg !742, !tbaa !700
  %residue_transform_flag = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 143, !dbg !743
  %12 = load i32* %residue_transform_flag, align 4, !dbg !743, !tbaa !700
  %residue_transform_flag14 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 164, !dbg !743
  store i32 %12, i32* %residue_transform_flag14, align 4, !dbg !743, !tbaa !700
  %13 = load i32* @log2_max_frame_num_minus4, align 4, !dbg !744, !tbaa !700
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 13, !dbg !744
  store i32 %13, i32* %log2_max_frame_num_minus4, align 4, !dbg !744, !tbaa !700
  %14 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !745, !tbaa !700
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 15, !dbg !745
  store i32 %14, i32* %log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !745, !tbaa !700
  %pic_order_cnt_type = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 120, !dbg !746
  %15 = load i32* %pic_order_cnt_type, align 4, !dbg !746, !tbaa !700
  %pic_order_cnt_type15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 14, !dbg !746
  store i32 %15, i32* %pic_order_cnt_type15, align 4, !dbg !746, !tbaa !700
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 95, !dbg !747
  %16 = load i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !747, !tbaa !700
  %num_ref_frames_in_pic_order_cnt_cycle16 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 19, !dbg !747
  store i32 %16, i32* %num_ref_frames_in_pic_order_cnt_cycle16, align 4, !dbg !747, !tbaa !700
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 92, !dbg !748
  %17 = load i32* %delta_pic_order_always_zero_flag, align 4, !dbg !748, !tbaa !700
  %delta_pic_order_always_zero_flag17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 16, !dbg !748
  store i32 %17, i32* %delta_pic_order_always_zero_flag17, align 4, !dbg !748, !tbaa !698
  %18 = load %struct.ImageParameters** @img, align 8, !dbg !749, !tbaa !697
  %offset_for_non_ref_pic = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 93, !dbg !749
  %19 = load i32* %offset_for_non_ref_pic, align 4, !dbg !749, !tbaa !700
  %offset_for_non_ref_pic18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 17, !dbg !749
  store i32 %19, i32* %offset_for_non_ref_pic18, align 4, !dbg !749, !tbaa !700
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 94, !dbg !750
  %20 = load i32* %offset_for_top_to_bottom_field, align 4, !dbg !750, !tbaa !700
  %offset_for_top_to_bottom_field19 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 18, !dbg !750
  store i32 %20, i32* %offset_for_top_to_bottom_field19, align 4, !dbg !750, !tbaa !700
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !204), !dbg !751
  %num_ref_frames_in_pic_order_cnt_cycle20209 = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 95, !dbg !751
  %21 = load i32* %num_ref_frames_in_pic_order_cnt_cycle20209, align 4, !dbg !751, !tbaa !700
  %cmp21210 = icmp eq i32 %21, 0, !dbg !751
  br i1 %cmp21210, label %for.end, label %for.body, !dbg !751

for.body:                                         ; preds = %cond.end, %for.body
  %i.0211 = phi i32 [ %inc, %for.body ], [ 0, %cond.end ]
  %idxprom = zext i32 %i.0211 to i64, !dbg !753
  %arrayidx = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 96, i64 %idxprom, !dbg !753
  %22 = load i32* %arrayidx, align 4, !dbg !753, !tbaa !700
  %arrayidx25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 20, i64 %idxprom, !dbg !753
  store i32 %22, i32* %arrayidx25, align 4, !dbg !753, !tbaa !700
  %inc = add i32 %i.0211, 1, !dbg !751
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !204), !dbg !751
  %23 = load i32* %num_ref_frames_in_pic_order_cnt_cycle20209, align 4, !dbg !751, !tbaa !700
  %cmp21 = icmp ult i32 %inc, %23, !dbg !751
  br i1 %cmp21, label %for.body, label %for.end, !dbg !751

for.end:                                          ; preds = %for.body, %cond.end
  %24 = load %struct.InputParameters** @input, align 8, !dbg !755, !tbaa !697
  %num_ref_frames = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 9, !dbg !755
  %25 = load i32* %num_ref_frames, align 4, !dbg !755, !tbaa !700
  %num_ref_frames26 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 21, !dbg !755
  store i32 %25, i32* %num_ref_frames26, align 4, !dbg !755, !tbaa !700
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 22, !dbg !756
  store i32 0, i32* %gaps_in_frame_num_value_allowed_flag, align 4, !dbg !756, !tbaa !698
  %26 = load %struct.InputParameters** @input, align 8, !dbg !757, !tbaa !697
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %26, i64 0, i32 91, !dbg !757
  %27 = load i32* %PicInterlace, align 4, !dbg !757, !tbaa !700
  %tobool = icmp eq i32 %27, 0, !dbg !757
  br i1 %tobool, label %lor.rhs27, label %lor.end29, !dbg !757

lor.rhs27:                                        ; preds = %for.end
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %26, i64 0, i32 92, !dbg !757
  %28 = load i32* %MbInterlace, align 4, !dbg !757, !tbaa !700
  %phitmp = icmp eq i32 %28, 0, !dbg !757
  br label %lor.end29, !dbg !757

lor.end29:                                        ; preds = %for.end, %lor.rhs27
  %29 = phi i1 [ false, %for.end ], [ %phitmp, %lor.rhs27 ]
  %lnot.ext = zext i1 %29 to i32, !dbg !757
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25, !dbg !757
  store i32 %lnot.ext, i32* %frame_mbs_only_flag, align 4, !dbg !757, !tbaa !698
  %30 = load %struct.InputParameters** @input, align 8, !dbg !758, !tbaa !697
  %img_width = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 16, !dbg !758
  %31 = load i32* %img_width, align 4, !dbg !758, !tbaa !700
  %32 = load %struct.ImageParameters** @img, align 8, !dbg !758, !tbaa !697
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 165, !dbg !758
  %33 = load i32* %auto_crop_right, align 4, !dbg !758, !tbaa !700
  %add = add nsw i32 %33, %31, !dbg !758
  %div = sdiv i32 %add, 16, !dbg !758
  %sub31 = add nsw i32 %div, -1, !dbg !758
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 23, !dbg !758
  store i32 %sub31, i32* %pic_width_in_mbs_minus1, align 4, !dbg !758, !tbaa !700
  %img_height = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 17, !dbg !759
  %34 = load i32* %img_height, align 4, !dbg !759, !tbaa !700
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 166, !dbg !759
  %35 = load i32* %auto_crop_bottom, align 4, !dbg !759, !tbaa !700
  %add32 = add nsw i32 %35, %34, !dbg !759
  %div33 = sdiv i32 %add32, 16, !dbg !759
  %sub35 = sub i32 2, %lnot.ext, !dbg !759
  %div36 = udiv i32 %div33, %sub35, !dbg !759
  %sub37 = add i32 %div36, -1, !dbg !759
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 24, !dbg !759
  store i32 %sub37, i32* %pic_height_in_map_units_minus1, align 4, !dbg !759, !tbaa !700
  %MbInterlace38 = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 92, !dbg !760
  %36 = load i32* %MbInterlace38, align 4, !dbg !760, !tbaa !700
  %cmp39 = icmp ne i32 %36, 0, !dbg !760
  %conv40 = zext i1 %cmp39 to i32, !dbg !760
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 26, !dbg !760
  store i32 %conv40, i32* %mb_adaptive_frame_field_flag, align 4, !dbg !760, !tbaa !698
  %37 = load %struct.InputParameters** @input, align 8, !dbg !761, !tbaa !697
  %directInferenceFlag = getelementptr inbounds %struct.InputParameters* %37, i64 0, i32 38, !dbg !761
  %38 = load i32* %directInferenceFlag, align 4, !dbg !761, !tbaa !700
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 27, !dbg !761
  store i32 %38, i32* %direct_8x8_inference_flag, align 4, !dbg !761, !tbaa !698
  %39 = load %struct.InputParameters** @input, align 8, !dbg !762, !tbaa !697
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters* %39, i64 0, i32 139, !dbg !762
  %40 = load i32* %rgb_input_flag, align 4, !dbg !762, !tbaa !700
  %tobool41 = icmp eq i32 %40, 0, !dbg !762
  br i1 %tobool41, label %land.end, label %land.rhs, !dbg !762

land.rhs:                                         ; preds = %lor.end29
  %yuv_format = getelementptr inbounds %struct.InputParameters* %39, i64 0, i32 18, !dbg !762
  %41 = load i32* %yuv_format, align 4, !dbg !762, !tbaa !700
  %cmp42 = icmp eq i32 %41, 3, !dbg !762
  br label %land.end

land.end:                                         ; preds = %lor.end29, %land.rhs
  %42 = phi i1 [ false, %lor.end29 ], [ %cmp42, %land.rhs ]
  %land.ext = zext i1 %42 to i32
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 33
  store i32 %land.ext, i32* %vui_parameters_present_flag, align 4, !tbaa !698
  %43 = load %struct.InputParameters** @input, align 8, !dbg !763, !tbaa !697
  %yuv_format44 = getelementptr inbounds %struct.InputParameters* %43, i64 0, i32 18, !dbg !763
  %44 = load i32* %yuv_format44, align 4, !dbg !763, !tbaa !700
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 8, !dbg !763
  store i32 %44, i32* %chroma_format_idc, align 4, !dbg !763, !tbaa !700
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !214), !dbg !764
  %add46 = shl i32 %sub31, 4, !dbg !765
  %mul51 = add i32 %add46, 16, !dbg !765
  tail call void @llvm.dbg.value(metadata !{i32 %mul51}, i64 0, metadata !215), !dbg !765
  %add48 = shl i32 %sub37, 4, !dbg !764
  %mul = add i32 %add48, 16, !dbg !764
  %mul52 = mul i32 %mul, %sub35, !dbg !766
  tail call void @llvm.dbg.value(metadata !{i32 %mul52}, i64 0, metadata !216), !dbg !766
  %call54 = tail call %struct.colocated_params* @alloc_colocated(i32 %mul51, i32 %mul52, i32 %conv40) #6, !dbg !767
  store %struct.colocated_params* %call54, %struct.colocated_params** @Co_located, align 8, !dbg !767, !tbaa !697
  br i1 %4, label %if.then, label %if.else86, !dbg !768

if.then:                                          ; preds = %land.end
  %45 = load %struct.InputParameters** @input, align 8, !dbg !769, !tbaa !697
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 132, !dbg !769
  %46 = load i32* %ScalingMatrixPresentFlag, align 4, !dbg !769, !tbaa !700
  %and56 = and i32 %46, 1, !dbg !769
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 9, !dbg !769
  store i32 %and56, i32* %seq_scaling_matrix_present_flag, align 4, !dbg !769, !tbaa !698
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !204), !dbg !771
  %47 = load %struct.InputParameters** @input, align 8, !dbg !773, !tbaa !697
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %47, i64 0, i32 123, !dbg !775
  br label %for.body60, !dbg !771

for.body60:                                       ; preds = %for.inc83, %if.then
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.inc83 ]
  %48 = trunc i64 %indvars.iv to i32, !dbg !777
  %cmp61 = icmp ult i32 %48, 6, !dbg !777
  br i1 %cmp61, label %if.then63, label %if.else, !dbg !777

if.then63:                                        ; preds = %for.body60
  %arrayidx65 = getelementptr inbounds %struct.InputParameters* %47, i64 0, i32 133, i64 %indvars.iv, !dbg !773
  %49 = load i32* %arrayidx65, align 4, !dbg !773, !tbaa !700
  %and66 = and i32 %49, 1, !dbg !773
  %arrayidx68 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv, !dbg !773
  store i32 %and66, i32* %arrayidx68, align 4, !dbg !773, !tbaa !700
  br label %for.inc83, !dbg !773

if.else:                                          ; preds = %for.body60
  %50 = load i32* %AllowTransform8x8, align 4, !dbg !775, !tbaa !700
  %tobool69 = icmp eq i32 %50, 0, !dbg !775
  br i1 %tobool69, label %if.else78, label %if.then70, !dbg !775

if.then70:                                        ; preds = %if.else
  %arrayidx73 = getelementptr inbounds %struct.InputParameters* %47, i64 0, i32 133, i64 %indvars.iv, !dbg !778
  %51 = load i32* %arrayidx73, align 4, !dbg !778, !tbaa !700
  %and74 = and i32 %51, 1, !dbg !778
  %arrayidx77 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv, !dbg !778
  store i32 %and74, i32* %arrayidx77, align 4, !dbg !778, !tbaa !700
  br label %for.inc83, !dbg !778

if.else78:                                        ; preds = %if.else
  %arrayidx81 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv, !dbg !779
  store i32 0, i32* %arrayidx81, align 4, !dbg !779, !tbaa !700
  br label %for.inc83

for.inc83:                                        ; preds = %if.then63, %if.else78, %if.then70
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !771
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !771
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !771
  br i1 %exitcond, label %if.end98, label %for.body60, !dbg !771

if.else86:                                        ; preds = %land.end
  %seq_scaling_matrix_present_flag87 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 9, !dbg !780
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !204), !dbg !782
  %52 = bitcast i32* %seq_scaling_matrix_present_flag87 to i8*
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 36, i32 4, i1 false), !dbg !784
  br label %if.end98

if.end98:                                         ; preds = %for.inc83, %if.else86
  %53 = load %struct.ImageParameters** @img, align 8, !dbg !785, !tbaa !697
  %auto_crop_right99 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 165, !dbg !785
  %54 = load i32* %auto_crop_right99, align 4, !dbg !785, !tbaa !700
  %tobool100 = icmp eq i32 %54, 0, !dbg !785
  br i1 %tobool100, label %lor.lhs.false101, label %if.then104, !dbg !785

lor.lhs.false101:                                 ; preds = %if.end98
  %auto_crop_bottom102 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 166, !dbg !785
  %55 = load i32* %auto_crop_bottom102, align 4, !dbg !785, !tbaa !700
  %tobool103 = icmp eq i32 %55, 0, !dbg !785
  br i1 %tobool103, label %if.else136, label %if.then104, !dbg !785

if.then104:                                       ; preds = %lor.lhs.false101, %if.end98
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 28, !dbg !786
  store i32 1, i32* %frame_cropping_flag, align 4, !dbg !786, !tbaa !698
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 29, !dbg !788
  store i32 0, i32* %frame_cropping_rect_left_offset, align 4, !dbg !788, !tbaa !700
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 31, !dbg !789
  store i32 0, i32* %frame_cropping_rect_top_offset, align 4, !dbg !789, !tbaa !700
  %56 = load %struct.ImageParameters** @img, align 8, !dbg !790, !tbaa !697
  %auto_crop_right105 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 165, !dbg !790
  %57 = load i32* %auto_crop_right105, align 4, !dbg !790, !tbaa !700
  %58 = load i32* %chroma_format_idc, align 4, !dbg !790, !tbaa !700
  %idxprom107 = zext i32 %58 to i64, !dbg !790
  %arrayidx108 = getelementptr inbounds [4 x i32]* @GenerateSequenceParameterSet.SubWidthC, i64 0, i64 %idxprom107, !dbg !790
  %59 = load i32* %arrayidx108, align 4, !dbg !790, !tbaa !700
  %div109 = sdiv i32 %57, %59, !dbg !790
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 30, !dbg !790
  store i32 %div109, i32* %frame_cropping_rect_right_offset, align 4, !dbg !790, !tbaa !700
  %auto_crop_bottom110 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 166, !dbg !791
  %60 = load i32* %auto_crop_bottom110, align 4, !dbg !791, !tbaa !700
  %arrayidx113 = getelementptr inbounds [4 x i32]* @GenerateSequenceParameterSet.SubHeightC, i64 0, i64 %idxprom107, !dbg !791
  %61 = load i32* %arrayidx113, align 4, !dbg !791, !tbaa !700
  %62 = load i32* %frame_mbs_only_flag, align 4, !dbg !791, !tbaa !698
  %sub115 = sub i32 2, %62, !dbg !791
  %mul116 = mul i32 %sub115, %61, !dbg !791
  %div117 = udiv i32 %60, %mul116, !dbg !791
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 32, !dbg !791
  store i32 %div117, i32* %frame_cropping_rect_bottom_offset, align 4, !dbg !791, !tbaa !700
  %63 = load i32* %auto_crop_right105, align 4, !dbg !792, !tbaa !700
  %rem = srem i32 %63, %59, !dbg !792
  %tobool122 = icmp eq i32 %rem, 0, !dbg !792
  br i1 %tobool122, label %if.end124, label %if.then123, !dbg !792

if.then123:                                       ; preds = %if.then104
  tail call void @error(i8* getelementptr inbounds ([46 x i8]* @.str2, i64 0, i64 0), i32 500) #6, !dbg !793
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !795, !tbaa !697
  %.pre217 = load i32* %chroma_format_idc, align 4, !dbg !795, !tbaa !700
  %idxprom127.phi.trans.insert = zext i32 %.pre217 to i64
  %arrayidx128.phi.trans.insert = getelementptr inbounds [4 x i32]* @GenerateSequenceParameterSet.SubHeightC, i64 0, i64 %idxprom127.phi.trans.insert
  %.pre218 = load i32* %arrayidx128.phi.trans.insert, align 4, !dbg !795, !tbaa !700
  %.pre219 = load i32* %frame_mbs_only_flag, align 4, !dbg !795, !tbaa !698
  br label %if.end124, !dbg !796

if.end124:                                        ; preds = %if.then104, %if.then123
  %64 = phi i32 [ %62, %if.then104 ], [ %.pre219, %if.then123 ]
  %65 = phi i32 [ %61, %if.then104 ], [ %.pre218, %if.then123 ]
  %66 = phi %struct.ImageParameters* [ %56, %if.then104 ], [ %.pre, %if.then123 ]
  %auto_crop_bottom125 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 166, !dbg !795
  %67 = load i32* %auto_crop_bottom125, align 4, !dbg !795, !tbaa !700
  %sub130 = sub i32 2, %64, !dbg !795
  %mul131 = mul i32 %sub130, %65, !dbg !795
  %rem132 = urem i32 %67, %mul131, !dbg !795
  %tobool133 = icmp eq i32 %rem132, 0, !dbg !795
  br i1 %tobool133, label %if.end138, label %if.then134, !dbg !795

if.then134:                                       ; preds = %if.end124
  tail call void @error(i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i32 500) #6, !dbg !797
  br label %if.end138, !dbg !799

if.else136:                                       ; preds = %lor.lhs.false101
  %frame_cropping_flag137 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 28, !dbg !800
  store i32 0, i32* %frame_cropping_flag137, align 4, !dbg !800, !tbaa !698
  br label %if.end138

if.end138:                                        ; preds = %if.end124, %if.then134, %if.else136
  ret void, !dbg !802
}

; Function Attrs: nounwind optsize uwtable
define void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* nocapture %sps, i32 %PPS_id, i32 %WeightedPrediction, i32 %WeightedBiprediction, i32 %cb_qp_index_offset, i32 %cr_qp_index_offset) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.pic_parameter_set_rbsp_t* %pps}, i64 0, metadata !221), !dbg !803
  tail call void @llvm.dbg.value(metadata !{%struct.seq_parameter_set_rbsp_t* %sps}, i64 0, metadata !222), !dbg !803
  tail call void @llvm.dbg.value(metadata !{i32 %PPS_id}, i64 0, metadata !223), !dbg !803
  tail call void @llvm.dbg.value(metadata !{i32 %WeightedPrediction}, i64 0, metadata !224), !dbg !804
  tail call void @llvm.dbg.value(metadata !{i32 %WeightedBiprediction}, i64 0, metadata !225), !dbg !804
  tail call void @llvm.dbg.value(metadata !{i32 %cb_qp_index_offset}, i64 0, metadata !226), !dbg !805
  tail call void @llvm.dbg.value(metadata !{i32 %cr_qp_index_offset}, i64 0, metadata !227), !dbg !805
  %0 = load %struct.InputParameters** @input, align 8, !dbg !806, !tbaa !697
  %ProfileIDC.i = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 0, !dbg !806
  %1 = load i32* %ProfileIDC.i, align 4, !dbg !806, !tbaa !700
  %switch.tableidx = add i32 %1, -100, !dbg !807
  %2 = icmp ult i32 %switch.tableidx, 45, !dbg !807
  br i1 %2, label %switch.lookup, label %lor.end, !dbg !807

switch.lookup:                                    ; preds = %entry
  %switch.cast = zext i32 %switch.tableidx to i45, !dbg !807
  %switch.downshift = lshr i45 -17592181849087, %switch.cast, !dbg !807
  %3 = and i45 %switch.downshift, 1, !dbg !807
  %switch.masked = icmp ne i45 %3, 0, !dbg !807
  br label %lor.end, !dbg !807

lor.end:                                          ; preds = %entry, %switch.lookup
  %4 = phi i1 [ %switch.masked, %switch.lookup ], [ false, %entry ]
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 7, !dbg !808
  %5 = load i32* %seq_parameter_set_id, align 4, !dbg !808, !tbaa !700
  %seq_parameter_set_id8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 2, !dbg !808
  store i32 %5, i32* %seq_parameter_set_id8, align 4, !dbg !808, !tbaa !700
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 1, !dbg !809
  store i32 %PPS_id, i32* %pic_parameter_set_id, align 4, !dbg !809, !tbaa !700
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 59, !dbg !810
  %6 = load i32* %symbol_mode, align 4, !dbg !810, !tbaa !700
  %not.cmp9 = icmp ne i32 %6, 0, !dbg !810
  %cond = zext i1 %not.cmp9 to i32, !dbg !810
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 3, !dbg !810
  store i32 %cond, i32* %entropy_coding_mode_flag, align 4, !dbg !810, !tbaa !698
  br i1 %4, label %if.then, label %if.else35, !dbg !811

if.then:                                          ; preds = %lor.end
  %7 = load %struct.InputParameters** @input, align 8, !dbg !812, !tbaa !697
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 123, !dbg !812
  %8 = load i32* %AllowTransform8x8, align 4, !dbg !812, !tbaa !700
  %tobool10 = icmp ne i32 %8, 0, !dbg !812
  %cond11 = zext i1 %tobool10 to i32, !dbg !812
  %transform_8x8_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 4, !dbg !812
  store i32 %cond11, i32* %transform_8x8_mode_flag, align 4, !dbg !812, !tbaa !698
  %9 = load %struct.InputParameters** @input, align 8, !dbg !814, !tbaa !697
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 132, !dbg !814
  %10 = load i32* %ScalingMatrixPresentFlag, align 4, !dbg !814, !tbaa !700
  %and = lshr i32 %10, 1, !dbg !814
  %shr215 = and i32 %and, 1, !dbg !814
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 5, !dbg !814
  store i32 %shr215, i32* %pic_scaling_matrix_present_flag, align 4, !dbg !814, !tbaa !698
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !228), !dbg !815
  br label %for.body, !dbg !815

for.body:                                         ; preds = %for.inc, %if.then
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.inc ]
  %11 = trunc i64 %indvars.iv to i32, !dbg !817
  %cmp13 = icmp ult i32 %11, 6, !dbg !817
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !817

if.then14:                                        ; preds = %for.body
  %12 = load %struct.InputParameters** @input, align 8, !dbg !819, !tbaa !697
  %arrayidx = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 133, i64 %indvars.iv, !dbg !819
  %13 = load i32* %arrayidx, align 4, !dbg !819, !tbaa !700
  %and15 = lshr i32 %13, 1, !dbg !819
  %shr16217 = and i32 %and15, 1, !dbg !819
  %arrayidx18 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %indvars.iv, !dbg !819
  store i32 %shr16217, i32* %arrayidx18, align 4, !dbg !819, !tbaa !700
  br label %for.inc, !dbg !819

if.else:                                          ; preds = %for.body
  %14 = load i32* %transform_8x8_mode_flag, align 4, !dbg !820, !tbaa !698
  %tobool20 = icmp eq i32 %14, 0, !dbg !820
  br i1 %tobool20, label %if.else30, label %if.then21, !dbg !820

if.then21:                                        ; preds = %if.else
  %15 = load %struct.InputParameters** @input, align 8, !dbg !822, !tbaa !697
  %arrayidx24 = getelementptr inbounds %struct.InputParameters* %15, i64 0, i32 133, i64 %indvars.iv, !dbg !822
  %16 = load i32* %arrayidx24, align 4, !dbg !822, !tbaa !700
  %and25 = lshr i32 %16, 1, !dbg !822
  %shr26216 = and i32 %and25, 1, !dbg !822
  %arrayidx29 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %indvars.iv, !dbg !822
  store i32 %shr26216, i32* %arrayidx29, align 4, !dbg !822, !tbaa !700
  br label %for.inc, !dbg !822

if.else30:                                        ; preds = %if.else
  %arrayidx33 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %indvars.iv, !dbg !823
  store i32 0, i32* %arrayidx33, align 4, !dbg !823, !tbaa !700
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.else30, %if.then21
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !815
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !815
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !815
  br i1 %exitcond, label %if.end48, label %for.body, !dbg !815

if.else35:                                        ; preds = %lor.end
  %pic_scaling_matrix_present_flag36 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 5, !dbg !824
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !228), !dbg !826
  %17 = bitcast i32* %pic_scaling_matrix_present_flag36 to i8*, !dbg !828
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 36, i32 4, i1 false), !dbg !829
  %18 = load %struct.InputParameters** @input, align 8, !dbg !828, !tbaa !697
  %AllowTransform8x846 = getelementptr inbounds %struct.InputParameters* %18, i64 0, i32 123, !dbg !828
  store i32 0, i32* %AllowTransform8x846, align 4, !dbg !828, !tbaa !700
  %transform_8x8_mode_flag47 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 4, !dbg !828
  store i32 0, i32* %transform_8x8_mode_flag47, align 4, !dbg !828, !tbaa !698
  br label %if.end48

if.end48:                                         ; preds = %for.inc, %if.else35
  %19 = load %struct.ImageParameters** @img, align 8, !dbg !830, !tbaa !697
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 112, !dbg !830
  %20 = load i32* %pic_order_present_flag, align 4, !dbg !830, !tbaa !700
  %pic_order_present_flag49 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 7, !dbg !830
  store i32 %20, i32* %pic_order_present_flag49, align 4, !dbg !830, !tbaa !698
  %21 = load %struct.InputParameters** @input, align 8, !dbg !831, !tbaa !697
  %num_slice_groups_minus1 = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 110, !dbg !831
  %22 = load i32* %num_slice_groups_minus1, align 4, !dbg !831, !tbaa !700
  %num_slice_groups_minus150 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 8, !dbg !831
  store i32 %22, i32* %num_slice_groups_minus150, align 4, !dbg !831, !tbaa !700
  %cmp52 = icmp eq i32 %22, 0, !dbg !832
  br i1 %cmp52, label %if.end112, label %if.then53, !dbg !832

if.then53:                                        ; preds = %if.end48
  %slice_group_map_type = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 111, !dbg !833
  %23 = load i32* %slice_group_map_type, align 4, !dbg !833, !tbaa !700
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb67
    i32 2, label %for.body74.lr.ph
    i32 3, label %sw.bb88
    i32 4, label %sw.bb88
    i32 5, label %sw.bb88
    i32 6, label %sw.bb93
  ], !dbg !833

sw.bb:                                            ; preds = %if.then53
  %slice_group_map_type54 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !834
  store i32 0, i32* %slice_group_map_type54, align 4, !dbg !834, !tbaa !700
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !228), !dbg !836
  %run_length_minus1 = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 115, !dbg !838
  %24 = load i32** %run_length_minus1, align 8, !dbg !838, !tbaa !697
  br label %for.body58, !dbg !836

for.body58:                                       ; preds = %sw.bb, %for.body58
  %i.2221 = phi i32 [ 0, %sw.bb ], [ %inc65, %for.body58 ]
  %idxprom59 = zext i32 %i.2221 to i64, !dbg !838
  %arrayidx60 = getelementptr inbounds i32* %24, i64 %idxprom59, !dbg !838
  %25 = load i32* %arrayidx60, align 4, !dbg !838, !tbaa !700
  %arrayidx63 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 10, i64 %idxprom59, !dbg !838
  store i32 %25, i32* %arrayidx63, align 4, !dbg !838, !tbaa !700
  %inc65 = add i32 %i.2221, 1, !dbg !836
  tail call void @llvm.dbg.value(metadata !{i32 %inc65}, i64 0, metadata !228), !dbg !836
  %26 = load i32* %num_slice_groups_minus150, align 4, !dbg !836, !tbaa !700
  %cmp57 = icmp ugt i32 %inc65, %26, !dbg !836
  br i1 %cmp57, label %if.end112, label %for.body58, !dbg !836

sw.bb67:                                          ; preds = %if.then53
  %slice_group_map_type68 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !840
  store i32 1, i32* %slice_group_map_type68, align 4, !dbg !840, !tbaa !700
  br label %if.end112, !dbg !841

for.body74.lr.ph:                                 ; preds = %if.then53
  %slice_group_map_type70 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !842
  store i32 2, i32* %slice_group_map_type70, align 4, !dbg !842, !tbaa !700
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !228), !dbg !843
  %top_left = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 112, !dbg !845
  %27 = load i32** %top_left, align 8, !dbg !845, !tbaa !697
  %bottom_right = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 113, !dbg !847
  %28 = load i32** %bottom_right, align 8, !dbg !847, !tbaa !697
  br label %for.body74, !dbg !843

for.body74:                                       ; preds = %for.body74.lr.ph, %for.body74
  %i.3224 = phi i32 [ 0, %for.body74.lr.ph ], [ %inc86, %for.body74 ]
  %idxprom75 = zext i32 %i.3224 to i64, !dbg !845
  %arrayidx76 = getelementptr inbounds i32* %27, i64 %idxprom75, !dbg !845
  %29 = load i32* %arrayidx76, align 4, !dbg !845, !tbaa !700
  %arrayidx79 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 11, i64 %idxprom75, !dbg !845
  store i32 %29, i32* %arrayidx79, align 4, !dbg !845, !tbaa !700
  %arrayidx81 = getelementptr inbounds i32* %28, i64 %idxprom75, !dbg !847
  %30 = load i32* %arrayidx81, align 4, !dbg !847, !tbaa !700
  %arrayidx84 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 12, i64 %idxprom75, !dbg !847
  store i32 %30, i32* %arrayidx84, align 4, !dbg !847, !tbaa !700
  %inc86 = add i32 %i.3224, 1, !dbg !843
  tail call void @llvm.dbg.value(metadata !{i32 %inc86}, i64 0, metadata !228), !dbg !843
  %31 = load i32* %num_slice_groups_minus150, align 4, !dbg !843, !tbaa !700
  %cmp73 = icmp ult i32 %inc86, %31, !dbg !843
  br i1 %cmp73, label %for.body74, label %if.end112, !dbg !843

sw.bb88:                                          ; preds = %if.then53, %if.then53, %if.then53
  %slice_group_map_type90 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !848
  store i32 %23, i32* %slice_group_map_type90, align 4, !dbg !848, !tbaa !700
  %slice_group_change_direction_flag = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 116, !dbg !849
  %32 = load i32* %slice_group_change_direction_flag, align 4, !dbg !849, !tbaa !700
  %slice_group_change_direction_flag91 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 13, !dbg !849
  store i32 %32, i32* %slice_group_change_direction_flag91, align 4, !dbg !849, !tbaa !698
  %33 = load %struct.InputParameters** @input, align 8, !dbg !850, !tbaa !697
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.InputParameters* %33, i64 0, i32 117, !dbg !850
  %34 = load i32* %slice_group_change_rate_minus1, align 4, !dbg !850, !tbaa !700
  %slice_group_change_rate_minus192 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 14, !dbg !850
  store i32 %34, i32* %slice_group_change_rate_minus192, align 4, !dbg !850, !tbaa !700
  br label %if.end112, !dbg !851

sw.bb93:                                          ; preds = %if.then53
  %slice_group_map_type94 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !852
  store i32 6, i32* %slice_group_map_type94, align 4, !dbg !852, !tbaa !700
  %img_height = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 17, !dbg !853
  %35 = load i32* %img_height, align 4, !dbg !853, !tbaa !700
  %36 = load %struct.ImageParameters** @img, align 8, !dbg !853, !tbaa !697
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters* %36, i64 0, i32 166, !dbg !853
  %37 = load i32* %auto_crop_bottom, align 4, !dbg !853, !tbaa !700
  %add = add nsw i32 %37, %35, !dbg !853
  %div = sdiv i32 %add, 16, !dbg !853
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25, !dbg !853
  %38 = load i32* %frame_mbs_only_flag, align 4, !dbg !853, !tbaa !698
  %sub = sub i32 2, %38, !dbg !853
  %div95 = udiv i32 %div, %sub, !dbg !853
  %img_width = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 16, !dbg !853
  %39 = load i32* %img_width, align 4, !dbg !853, !tbaa !700
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters* %36, i64 0, i32 165, !dbg !853
  %40 = load i32* %auto_crop_right, align 4, !dbg !853, !tbaa !700
  %add96 = add nsw i32 %40, %39, !dbg !853
  %div97 = sdiv i32 %add96, 16, !dbg !853
  %mul = mul i32 %div97, %div95, !dbg !853
  %sub98 = add i32 %mul, -1, !dbg !853
  %pic_size_in_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 15, !dbg !853
  store i32 %sub98, i32* %pic_size_in_map_units_minus1, align 4, !dbg !853, !tbaa !700
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !228), !dbg !854
  %slice_group_id106 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 16, !dbg !856
  br label %for.body102, !dbg !854

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %sw.bb93
  %41 = phi %struct.InputParameters* [ %21, %sw.bb93 ], [ %.pre, %for.body102.for.body102_crit_edge ]
  %i.4226 = phi i32 [ 0, %sw.bb93 ], [ %inc109, %for.body102.for.body102_crit_edge ]
  %idxprom103 = zext i32 %i.4226 to i64, !dbg !856
  %slice_group_id = getelementptr inbounds %struct.InputParameters* %41, i64 0, i32 114, !dbg !856
  %42 = load i8** %slice_group_id, align 8, !dbg !856, !tbaa !697
  %arrayidx104 = getelementptr inbounds i8* %42, i64 %idxprom103, !dbg !856
  %43 = load i8* %arrayidx104, align 1, !dbg !856, !tbaa !698
  %44 = load i8** %slice_group_id106, align 8, !dbg !856, !tbaa !697
  %arrayidx107 = getelementptr inbounds i8* %44, i64 %idxprom103, !dbg !856
  store i8 %43, i8* %arrayidx107, align 1, !dbg !856, !tbaa !698
  %inc109 = add i32 %i.4226, 1, !dbg !854
  tail call void @llvm.dbg.value(metadata !{i32 %inc109}, i64 0, metadata !228), !dbg !854
  %45 = load i32* %pic_size_in_map_units_minus1, align 4, !dbg !854, !tbaa !700
  %cmp101 = icmp ugt i32 %inc109, %45, !dbg !854
  br i1 %cmp101, label %if.end112, label %for.body102.for.body102_crit_edge, !dbg !854

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !856, !tbaa !697
  br label %for.body102, !dbg !854

sw.default:                                       ; preds = %if.then53
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)), !dbg !857
  tail call void @__assert_fail(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 460, i8* getelementptr inbounds ([114 x i8]* @__PRETTY_FUNCTION__.GeneratePictureParameterSet, i64 0, i64 0)) #8, !dbg !858
  unreachable, !dbg !858

if.end112:                                        ; preds = %for.body102, %for.body74, %for.body58, %if.end48, %sw.bb67, %sw.bb88
  %frame_mbs_only_flag113 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25, !dbg !859
  %46 = load i32* %frame_mbs_only_flag113, align 4, !dbg !859, !tbaa !698
  %tobool114 = icmp eq i32 %46, 0, !dbg !859
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 21, !dbg !859
  %47 = load i32* %num_ref_frames, align 4, !dbg !859, !tbaa !700
  %mul117 = zext i1 %tobool114 to i32, !dbg !859
  %mul117. = shl i32 %47, %mul117, !dbg !859
  %sub115 = add i32 %mul117., -1, !dbg !859
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 17, !dbg !859
  store i32 %sub115, i32* %num_ref_idx_l0_active_minus1, align 4, !dbg !859, !tbaa !700
  %48 = load i32* %frame_mbs_only_flag113, align 4, !dbg !860, !tbaa !698
  %tobool121 = icmp eq i32 %48, 0, !dbg !860
  %49 = load i32* %num_ref_frames, align 4, !dbg !860, !tbaa !700
  %mul127 = zext i1 %tobool121 to i32, !dbg !860
  %.sink140 = shl i32 %49, %mul127, !dbg !860
  %sub124 = add i32 %.sink140, -1, !dbg !860
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 18, !dbg !860
  store i32 %sub124, i32* %num_ref_idx_l1_active_minus1, align 4, !dbg !860, !tbaa !700
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 19, !dbg !861
  store i32 %WeightedPrediction, i32* %weighted_pred_flag, align 4, !dbg !861, !tbaa !698
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 20, !dbg !862
  store i32 %WeightedBiprediction, i32* %weighted_bipred_idc, align 4, !dbg !862, !tbaa !700
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 21, !dbg !863
  store i32 0, i32* %pic_init_qp_minus26, align 4, !dbg !863, !tbaa !700
  %pic_init_qs_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 22, !dbg !864
  store i32 0, i32* %pic_init_qs_minus26, align 4, !dbg !864, !tbaa !700
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 23, !dbg !865
  store i32 %cb_qp_index_offset, i32* %chroma_qp_index_offset, align 4, !dbg !865, !tbaa !700
  br i1 %4, label %if.then132, label %if.else135, !dbg !866

if.then132:                                       ; preds = %if.end112
  %cb_qp_index_offset133 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 24, !dbg !867
  store i32 %cb_qp_index_offset, i32* %cb_qp_index_offset133, align 4, !dbg !867, !tbaa !700
  %cr_qp_index_offset134 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 25, !dbg !869
  store i32 %cr_qp_index_offset, i32* %cr_qp_index_offset134, align 4, !dbg !869, !tbaa !700
  br label %if.end139, !dbg !870

if.else135:                                       ; preds = %if.end112
  %cr_qp_index_offset137 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 25, !dbg !871
  store i32 %cb_qp_index_offset, i32* %cr_qp_index_offset137, align 4, !dbg !871, !tbaa !700
  %cb_qp_index_offset138 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 24, !dbg !871
  store i32 %cb_qp_index_offset, i32* %cb_qp_index_offset138, align 4, !dbg !871, !tbaa !700
  br label %if.end139

if.end139:                                        ; preds = %if.else135, %if.then132
  %50 = load %struct.InputParameters** @input, align 8, !dbg !872, !tbaa !697
  %LFSendParameters = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 102, !dbg !872
  %51 = load i32* %LFSendParameters, align 4, !dbg !872, !tbaa !700
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 26, !dbg !872
  store i32 %51, i32* %deblocking_filter_control_present_flag, align 4, !dbg !872, !tbaa !698
  %52 = load %struct.InputParameters** @input, align 8, !dbg !873, !tbaa !697
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 24, !dbg !873
  %53 = load i32* %UseConstrainedIntraPred, align 4, !dbg !873, !tbaa !700
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 27, !dbg !873
  store i32 %53, i32* %constrained_intra_pred_flag, align 4, !dbg !873, !tbaa !698
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 28, !dbg !874
  store i32 0, i32* %redundant_pic_cnt_present_flag, align 4, !dbg !874, !tbaa !698
  ret void, !dbg !875
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define void @FreeParameterSets() #0 {
entry:
  %0 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !876, !tbaa !697
  tail call void @FreeSPS(%struct.seq_parameter_set_rbsp_t* %0) #6, !dbg !876
  ret void, !dbg !877
}

; Function Attrs: optsize
declare void @FreeSPS(%struct.seq_parameter_set_rbsp_t*) #2

; Function Attrs: nounwind optsize uwtable
define %struct.NALU_t* @GenerateSeq_parameter_set_NALU() #0 {
entry:
  %rbsp = alloca [64000 x i8], align 16
  %call = call %struct.NALU_t* (i32, ...)* bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 64000) #6, !dbg !878
  call void @llvm.dbg.value(metadata !{%struct.NALU_t* %call}, i64 0, metadata !182), !dbg !878
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !183), !dbg !879
  %0 = getelementptr inbounds [64000 x i8]* %rbsp, i64 0, i64 0, !dbg !880
  call void @llvm.lifetime.start(i64 64000, i8* %0) #3, !dbg !880
  call void @llvm.dbg.declare(metadata !{[64000 x i8]* %rbsp}, metadata !185), !dbg !880
  %1 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !881, !tbaa !697
  %call1 = call i32 @GenerateSeq_parameter_set_rbsp(%struct.seq_parameter_set_rbsp_t* %1, i8* %0) #7, !dbg !881
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !183), !dbg !881
  %call3 = call i32 @RBSPtoNALU(i8* %0, %struct.NALU_t* %call, i32 %call1, i32 7, i32 3, i32 0, i32 1) #6, !dbg !882
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !184), !dbg !882
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t* %call, i64 0, i32 0, !dbg !883
  store i32 4, i32* %startcodeprefix_len, align 4, !dbg !883, !tbaa !700
  call void @llvm.lifetime.end(i64 64000, i8* %0) #3, !dbg !884
  ret %struct.NALU_t* %call, !dbg !884
}

; Function Attrs: optsize
declare %struct.NALU_t* @AllocNALU(...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @GenerateSeq_parameter_set_rbsp(%struct.seq_parameter_set_rbsp_t* %sps, i8* %rbsp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.seq_parameter_set_rbsp_t* %sps}, i64 0, metadata !326), !dbg !885
  tail call void @llvm.dbg.value(metadata !{i8* %rbsp}, i64 0, metadata !327), !dbg !885
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !329), !dbg !886
  %cmp = icmp eq i8* %rbsp, null, !dbg !887
  br i1 %cmp, label %cond.false, label %cond.end, !dbg !887

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 567, i8* getelementptr inbounds ([71 x i8]* @__PRETTY_FUNCTION__.GenerateSeq_parameter_set_rbsp, i64 0, i64 0)) #8, !dbg !887
  unreachable, !dbg !887

cond.end:                                         ; preds = %entry
  %call = tail call noalias i8* @calloc(i64 1, i64 120) #6, !dbg !888
  %0 = bitcast i8* %call to %struct.datapartition*, !dbg !888
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %0}, i64 0, metadata !328), !dbg !888
  %cmp1 = icmp eq i8* %call, null, !dbg !888
  br i1 %cmp1, label %if.then, label %if.end, !dbg !888

if.then:                                          ; preds = %cond.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !888
  br label %if.end, !dbg !888

if.end:                                           ; preds = %if.then, %cond.end
  %call2 = tail call noalias i8* @calloc(i64 1, i64 48) #6, !dbg !889
  %1 = bitcast i8* %call2 to %struct.Bitstream*, !dbg !889
  %bitstream = bitcast i8* %call to %struct.Bitstream**, !dbg !889
  store %struct.Bitstream* %1, %struct.Bitstream** %bitstream, align 8, !dbg !889, !tbaa !697
  %cmp3 = icmp eq i8* %call2, null, !dbg !889
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !889

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !889
  %.pre = load %struct.Bitstream** %bitstream, align 8, !dbg !890, !tbaa !697
  br label %if.end5, !dbg !889

if.end5:                                          ; preds = %if.then4, %if.end
  %2 = phi %struct.Bitstream* [ %.pre, %if.then4 ], [ %1, %if.end ]
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9, !dbg !890
  store i8* %rbsp, i8** %streamBuffer, align 8, !dbg !890, !tbaa !697
  %3 = load %struct.Bitstream** %bitstream, align 8, !dbg !891, !tbaa !697
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 1, !dbg !891
  store i32 8, i32* %bits_to_go, align 4, !dbg !891, !tbaa !700
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 1, !dbg !892
  %4 = load i32* %profile_idc, align 4, !dbg !892, !tbaa !700
  %call8 = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([17 x i8]* @.str10, i64 0, i64 0), i32 %4, %struct.datapartition* %0) #6, !dbg !892
  tail call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !329), !dbg !892
  %constrained_set0_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 2, !dbg !893
  %5 = load i32* %constrained_set0_flag, align 4, !dbg !893, !tbaa !698
  %call9 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str11, i64 0, i64 0), i32 %5, %struct.datapartition* %0) #6, !dbg !893
  %constrained_set1_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 3, !dbg !894
  %6 = load i32* %constrained_set1_flag, align 4, !dbg !894, !tbaa !698
  %call11 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str12, i64 0, i64 0), i32 %6, %struct.datapartition* %0) #6, !dbg !894
  %constrained_set2_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 4, !dbg !895
  %7 = load i32* %constrained_set2_flag, align 4, !dbg !895, !tbaa !698
  %call13 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i32 %7, %struct.datapartition* %0) #6, !dbg !895
  %constrained_set3_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 5, !dbg !896
  %8 = load i32* %constrained_set3_flag, align 4, !dbg !896, !tbaa !698
  %call15 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str14, i64 0, i64 0), i32 %8, %struct.datapartition* %0) #6, !dbg !896
  %call17 = tail call i32 @u_v(i32 4, i8* getelementptr inbounds ([25 x i8]* @.str15, i64 0, i64 0), i32 0, %struct.datapartition* %0) #6, !dbg !897
  %level_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 6, !dbg !898
  %9 = load i32* %level_idc, align 4, !dbg !898, !tbaa !700
  %call19 = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([15 x i8]* @.str16, i64 0, i64 0), i32 %9, %struct.datapartition* %0) #6, !dbg !898
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 7, !dbg !899
  %10 = load i32* %seq_parameter_set_id, align 4, !dbg !899, !tbaa !700
  %call21 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str17, i64 0, i64 0), i32 %10, %struct.datapartition* %0) #6, !dbg !899
  %11 = load i32* %profile_idc, align 4, !dbg !900, !tbaa !700
  switch i32 %11, label %if.end85 [
    i32 100, label %if.then33
    i32 110, label %if.then33
    i32 122, label %if.then33
    i32 144, label %if.then33
  ], !dbg !900

if.then33:                                        ; preds = %if.end5, %if.end5, %if.end5, %if.end5
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 8, !dbg !901
  %12 = load i32* %chroma_format_idc, align 4, !dbg !901, !tbaa !700
  %call34 = tail call i32 @ue_v(i8* getelementptr inbounds ([23 x i8]* @.str18, i64 0, i64 0), i32 %12, %struct.datapartition* %0) #6, !dbg !901
  %13 = load %struct.ImageParameters** @img, align 8, !dbg !903, !tbaa !697
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 159, !dbg !903
  %14 = load i32* %yuv_format, align 4, !dbg !903, !tbaa !700
  %cmp36 = icmp eq i32 %14, 3, !dbg !903
  br i1 %cmp36, label %if.then37, label %if.end40, !dbg !903

if.then37:                                        ; preds = %if.then33
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 164, !dbg !904
  %15 = load i32* %residue_transform_flag, align 4, !dbg !904, !tbaa !700
  %call38 = tail call i32 @u_1(i8* getelementptr inbounds ([28 x i8]* @.str19, i64 0, i64 0), i32 %15, %struct.datapartition* %0) #6, !dbg !904
  br label %if.end40, !dbg !904

if.end40:                                         ; preds = %if.then37, %if.then33
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 11, !dbg !905
  %16 = load i32* %bit_depth_luma_minus8, align 4, !dbg !905, !tbaa !700
  %call41 = tail call i32 @ue_v(i8* getelementptr inbounds ([27 x i8]* @.str20, i64 0, i64 0), i32 %16, %struct.datapartition* %0) #6, !dbg !905
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 12, !dbg !906
  %17 = load i32* %bit_depth_chroma_minus8, align 4, !dbg !906, !tbaa !700
  %call43 = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str21, i64 0, i64 0), i32 %17, %struct.datapartition* %0) #6, !dbg !906
  %18 = load %struct.ImageParameters** @img, align 8, !dbg !907, !tbaa !697
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 160, !dbg !907
  %19 = load i32* %lossless_qpprime_flag, align 4, !dbg !907, !tbaa !700
  %call45 = tail call i32 @u_1(i8* getelementptr inbounds ([34 x i8]* @.str22, i64 0, i64 0), i32 %19, %struct.datapartition* %0) #6, !dbg !907
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 9, !dbg !908
  %20 = load i32* %seq_scaling_matrix_present_flag, align 4, !dbg !908, !tbaa !698
  %call47 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str23, i64 0, i64 0), i32 %20, %struct.datapartition* %0) #6, !dbg !908
  %21 = load i32* %seq_scaling_matrix_present_flag, align 4, !dbg !909, !tbaa !698
  %tobool = icmp eq i32 %21, 0, !dbg !909
  br i1 %tobool, label %if.end85, label %for.body, !dbg !909

for.body:                                         ; preds = %if.end40, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end40 ]
  %arrayidx = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv, !dbg !910
  %22 = load i32* %arrayidx, align 4, !dbg !910, !tbaa !700
  %call52 = tail call i32 @u_1(i8* getelementptr inbounds ([35 x i8]* @.str24, i64 0, i64 0), i32 %22, %struct.datapartition* %0) #6, !dbg !910
  %23 = load i32* %arrayidx, align 4, !dbg !914, !tbaa !700
  %tobool57 = icmp eq i32 %23, 0, !dbg !914
  br i1 %tobool57, label %for.inc, label %if.then58, !dbg !914

if.then58:                                        ; preds = %for.body
  %24 = trunc i64 %indvars.iv to i32, !dbg !915
  %cmp59 = icmp ult i32 %24, 6, !dbg !915
  br i1 %cmp59, label %if.then60, label %if.else, !dbg !915

if.then60:                                        ; preds = %if.then58
  %arraydecay = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %indvars.iv, i64 0, !dbg !917
  %arraydecay65 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 %indvars.iv, i64 0, !dbg !917
  %arrayidx67 = getelementptr inbounds [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 %indvars.iv, !dbg !917
  %call68 = tail call i32 @Scaling_List(i16* %arraydecay, i16* %arraydecay65, i32 16, i16* %arrayidx67, %struct.datapartition* %0) #7, !dbg !917
  br label %for.inc, !dbg !917

if.else:                                          ; preds = %if.then58
  %sub = add i64 %indvars.iv, 4294967290, !dbg !918
  %idxprom70 = and i64 %sub, 4294967295, !dbg !918
  %arraydecay72 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %idxprom70, i64 0, !dbg !918
  %arraydecay76 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 %idxprom70, i64 0, !dbg !918
  %arrayidx79 = getelementptr inbounds [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 %idxprom70, !dbg !918
  %call80 = tail call i32 @Scaling_List(i16* %arraydecay72, i16* %arraydecay76, i32 64, i16* %arrayidx79, %struct.datapartition* %0) #7, !dbg !918
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else, %if.then60
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !919
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !919
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !919
  br i1 %exitcond, label %if.end85, label %for.body, !dbg !919

if.end85:                                         ; preds = %for.inc, %if.end5, %if.end40
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 13, !dbg !920
  %25 = load i32* %log2_max_frame_num_minus4, align 4, !dbg !920, !tbaa !700
  %call86 = tail call i32 @ue_v(i8* getelementptr inbounds ([31 x i8]* @.str25, i64 0, i64 0), i32 %25, %struct.datapartition* %0) #6, !dbg !920
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 14, !dbg !921
  %26 = load i32* %pic_order_cnt_type, align 4, !dbg !921, !tbaa !700
  %call88 = tail call i32 @ue_v(i8* getelementptr inbounds ([24 x i8]* @.str26, i64 0, i64 0), i32 %26, %struct.datapartition* %0) #6, !dbg !921
  %27 = load i32* %pic_order_cnt_type, align 4, !dbg !922, !tbaa !700
  switch i32 %27, label %if.end119 [
    i32 0, label %if.then92
    i32 1, label %if.then98
  ], !dbg !922

if.then92:                                        ; preds = %if.end85
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 15, !dbg !923
  %28 = load i32* %log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !923, !tbaa !700
  %call93 = tail call i32 @ue_v(i8* getelementptr inbounds ([39 x i8]* @.str27, i64 0, i64 0), i32 %28, %struct.datapartition* %0) #6, !dbg !923
  br label %if.end119, !dbg !923

if.then98:                                        ; preds = %if.end85
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 16, !dbg !924
  %29 = load i32* %delta_pic_order_always_zero_flag, align 4, !dbg !924, !tbaa !698
  %call99 = tail call i32 @u_1(i8* getelementptr inbounds ([38 x i8]* @.str28, i64 0, i64 0), i32 %29, %struct.datapartition* %0) #6, !dbg !924
  %offset_for_non_ref_pic = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 17, !dbg !926
  %30 = load i32* %offset_for_non_ref_pic, align 4, !dbg !926, !tbaa !700
  %call101 = tail call i32 @se_v(i8* getelementptr inbounds ([28 x i8]* @.str29, i64 0, i64 0), i32 %30, %struct.datapartition* %0) #6, !dbg !926
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 18, !dbg !927
  %31 = load i32* %offset_for_top_to_bottom_field, align 4, !dbg !927, !tbaa !700
  %call103 = tail call i32 @se_v(i8* getelementptr inbounds ([36 x i8]* @.str30, i64 0, i64 0), i32 %31, %struct.datapartition* %0) #6, !dbg !927
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 19, !dbg !928
  %32 = load i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !928, !tbaa !700
  %call105 = tail call i32 @ue_v(i8* getelementptr inbounds ([43 x i8]* @.str31, i64 0, i64 0), i32 %32, %struct.datapartition* %0) #6, !dbg !928
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !331), !dbg !929
  %33 = load i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !929, !tbaa !700
  %cmp109302 = icmp eq i32 %33, 0, !dbg !929
  br i1 %cmp109302, label %if.end119, label %for.body110, !dbg !929

for.body110:                                      ; preds = %if.then98, %for.body110
  %i.1303 = phi i32 [ %inc116, %for.body110 ], [ 0, %if.then98 ]
  %idxprom111 = zext i32 %i.1303 to i64, !dbg !931
  %arrayidx112 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 20, i64 %idxprom111, !dbg !931
  %34 = load i32* %arrayidx112, align 4, !dbg !931, !tbaa !700
  %call113 = tail call i32 @se_v(i8* getelementptr inbounds ([26 x i8]* @.str32, i64 0, i64 0), i32 %34, %struct.datapartition* %0) #6, !dbg !931
  %inc116 = add i32 %i.1303, 1, !dbg !929
  tail call void @llvm.dbg.value(metadata !{i32 %inc116}, i64 0, metadata !331), !dbg !929
  %35 = load i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4, !dbg !929, !tbaa !700
  %cmp109 = icmp ult i32 %inc116, %35, !dbg !929
  br i1 %cmp109, label %for.body110, label %if.end119, !dbg !929

if.end119:                                        ; preds = %if.then98, %for.body110, %if.end85, %if.then92
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 21, !dbg !932
  %36 = load i32* %num_ref_frames, align 4, !dbg !932, !tbaa !700
  %call120 = tail call i32 @ue_v(i8* getelementptr inbounds ([20 x i8]* @.str33, i64 0, i64 0), i32 %36, %struct.datapartition* %0) #6, !dbg !932
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 22, !dbg !933
  %37 = load i32* %gaps_in_frame_num_value_allowed_flag, align 4, !dbg !933, !tbaa !698
  %call122 = tail call i32 @u_1(i8* getelementptr inbounds ([42 x i8]* @.str34, i64 0, i64 0), i32 %37, %struct.datapartition* %0) #6, !dbg !933
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 23, !dbg !934
  %38 = load i32* %pic_width_in_mbs_minus1, align 4, !dbg !934, !tbaa !700
  %call124 = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str35, i64 0, i64 0), i32 %38, %struct.datapartition* %0) #6, !dbg !934
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 24, !dbg !935
  %39 = load i32* %pic_height_in_map_units_minus1, align 4, !dbg !935, !tbaa !700
  %call126 = tail call i32 @ue_v(i8* getelementptr inbounds ([36 x i8]* @.str36, i64 0, i64 0), i32 %39, %struct.datapartition* %0) #6, !dbg !935
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25, !dbg !936
  %40 = load i32* %frame_mbs_only_flag, align 4, !dbg !936, !tbaa !698
  %call128 = tail call i32 @u_1(i8* getelementptr inbounds ([25 x i8]* @.str37, i64 0, i64 0), i32 %40, %struct.datapartition* %0) #6, !dbg !936
  %41 = load i32* %frame_mbs_only_flag, align 4, !dbg !937, !tbaa !698
  %tobool131 = icmp eq i32 %41, 0, !dbg !937
  br i1 %tobool131, label %if.then132, label %if.end135, !dbg !937

if.then132:                                       ; preds = %if.end119
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 26, !dbg !938
  %42 = load i32* %mb_adaptive_frame_field_flag, align 4, !dbg !938, !tbaa !698
  %call133 = tail call i32 @u_1(i8* getelementptr inbounds ([34 x i8]* @.str38, i64 0, i64 0), i32 %42, %struct.datapartition* %0) #6, !dbg !938
  br label %if.end135, !dbg !940

if.end135:                                        ; preds = %if.end119, %if.then132
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 27, !dbg !941
  %43 = load i32* %direct_8x8_inference_flag, align 4, !dbg !941, !tbaa !698
  %call136 = tail call i32 @u_1(i8* getelementptr inbounds ([31 x i8]* @.str39, i64 0, i64 0), i32 %43, %struct.datapartition* %0) #6, !dbg !941
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 28, !dbg !942
  %44 = load i32* %frame_cropping_flag, align 4, !dbg !942, !tbaa !698
  %call138 = tail call i32 @u_1(i8* getelementptr inbounds ([25 x i8]* @.str40, i64 0, i64 0), i32 %44, %struct.datapartition* %0) #6, !dbg !942
  %45 = load i32* %frame_cropping_flag, align 4, !dbg !943, !tbaa !698
  %tobool141 = icmp eq i32 %45, 0, !dbg !943
  br i1 %tobool141, label %if.end151, label %if.then142, !dbg !943

if.then142:                                       ; preds = %if.end135
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 29, !dbg !944
  %46 = load i32* %frame_cropping_rect_left_offset, align 4, !dbg !944, !tbaa !700
  %call143 = tail call i32 @ue_v(i8* getelementptr inbounds ([37 x i8]* @.str41, i64 0, i64 0), i32 %46, %struct.datapartition* %0) #6, !dbg !944
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 30, !dbg !946
  %47 = load i32* %frame_cropping_rect_right_offset, align 4, !dbg !946, !tbaa !700
  %call145 = tail call i32 @ue_v(i8* getelementptr inbounds ([38 x i8]* @.str42, i64 0, i64 0), i32 %47, %struct.datapartition* %0) #6, !dbg !946
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 31, !dbg !947
  %48 = load i32* %frame_cropping_rect_top_offset, align 4, !dbg !947, !tbaa !700
  %call147 = tail call i32 @ue_v(i8* getelementptr inbounds ([36 x i8]* @.str43, i64 0, i64 0), i32 %48, %struct.datapartition* %0) #6, !dbg !947
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 32, !dbg !948
  %49 = load i32* %frame_cropping_rect_bottom_offset, align 4, !dbg !948, !tbaa !700
  %call149 = tail call i32 @ue_v(i8* getelementptr inbounds ([39 x i8]* @.str44, i64 0, i64 0), i32 %49, %struct.datapartition* %0) #6, !dbg !948
  br label %if.end151, !dbg !949

if.end151:                                        ; preds = %if.end135, %if.then142
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 33, !dbg !950
  %50 = load i32* %vui_parameters_present_flag, align 4, !dbg !950, !tbaa !698
  %call152 = tail call i32 @u_1(i8* getelementptr inbounds ([33 x i8]* @.str45, i64 0, i64 0), i32 %50, %struct.datapartition* %0) #6, !dbg !950
  %51 = load i32* %vui_parameters_present_flag, align 4, !dbg !951, !tbaa !698
  %tobool155 = icmp eq i32 %51, 0, !dbg !951
  br i1 %tobool155, label %if.end159, label %if.then156, !dbg !951

if.then156:                                       ; preds = %if.end151
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !952) #3, !dbg !954
  %52 = load %struct.InputParameters** @input, align 8, !dbg !955, !tbaa !697
  %rgb_input_flag.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 139, !dbg !955
  %53 = load i32* %rgb_input_flag.i, align 4, !dbg !955, !tbaa !700
  %tobool.i = icmp eq i32 %53, 0, !dbg !955
  br i1 %tobool.i, label %if.else.i, label %land.lhs.true.i, !dbg !955

land.lhs.true.i:                                  ; preds = %if.then156
  %yuv_format.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 18, !dbg !955
  %54 = load i32* %yuv_format.i, align 4, !dbg !955, !tbaa !700
  %cmp.i = icmp eq i32 %54, 3, !dbg !955
  br i1 %cmp.i, label %GenerateVUISequenceParameters.exit, label %if.else.i, !dbg !955

if.else.i:                                        ; preds = %land.lhs.true.i, %if.then156
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([75 x i8]* @str92, i64 0, i64 0)) #3, !dbg !956
  tail call void @exit(i32 -1) #8, !dbg !958
  unreachable, !dbg !958

GenerateVUISequenceParameters.exit:               ; preds = %land.lhs.true.i
  %puts1.i = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str93, i64 0, i64 0)) #3, !dbg !959
  %call1.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str76, i64 0, i64 0), i32 0, %struct.datapartition* %0) #6, !dbg !961
  tail call void @llvm.dbg.value(metadata !{i32 %call1.i}, i64 0, metadata !952) #3, !dbg !961
  %call2.i = tail call i32 @u_1(i8* getelementptr inbounds ([32 x i8]* @.str77, i64 0, i64 0), i32 0, %struct.datapartition* %0) #6, !dbg !962
  %call4.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str78, i64 0, i64 0), i32 1, %struct.datapartition* %0) #6, !dbg !963
  %call6.i = tail call i32 @u_v(i32 3, i8* getelementptr inbounds ([18 x i8]* @.str79, i64 0, i64 0), i32 2, %struct.datapartition* %0) #6, !dbg !964
  %call8.i = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str80, i64 0, i64 0), i32 1, %struct.datapartition* %0) #6, !dbg !965
  %call10.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str81, i64 0, i64 0), i32 1, %struct.datapartition* %0) #6, !dbg !966
  %call12.i = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([22 x i8]* @.str82, i64 0, i64 0), i32 2, %struct.datapartition* %0) #6, !dbg !967
  %call14.i = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([30 x i8]* @.str83, i64 0, i64 0), i32 2, %struct.datapartition* %0) #6, !dbg !968
  %call16.i = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([25 x i8]* @.str84, i64 0, i64 0), i32 0, %struct.datapartition* %0) #6, !dbg !969
  %call18.i = tail call i32 @u_1(i8* getelementptr inbounds ([34 x i8]* @.str85, i64 0, i64 0), i32 0, %struct.datapartition* %0) #6, !dbg !970
  %call20.i = tail call i32 @u_1(i8* getelementptr inbounds ([30 x i8]* @.str86, i64 0, i64 0), i32 0, %struct.datapartition* %0) #6, !dbg !971
  %call22.i = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str87, i64 0, i64 0), i32 0, %struct.datapartition* %0) #6, !dbg !972
  %call24.i = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str88, i64 0, i64 0), i32 0, %struct.datapartition* %0) #6, !dbg !973
  %call26.i = tail call i32 @u_1(i8* getelementptr inbounds ([28 x i8]* @.str89, i64 0, i64 0), i32 0, %struct.datapartition* %0) #6, !dbg !974
  %call28.i = tail call i32 @u_1(i8* getelementptr inbounds ([32 x i8]* @.str90, i64 0, i64 0), i32 0, %struct.datapartition* %0) #6, !dbg !975
  br label %if.end159, !dbg !953

if.end159:                                        ; preds = %if.end151, %GenerateVUISequenceParameters.exit
  %55 = load %struct.Bitstream** %bitstream, align 8, !dbg !976, !tbaa !697
  tail call void @SODBtoRBSP(%struct.Bitstream* %55) #6, !dbg !976
  %56 = load %struct.Bitstream** %bitstream, align 8, !dbg !977, !tbaa !697
  %byte_pos = getelementptr inbounds %struct.Bitstream* %56, i64 0, i32 0, !dbg !977
  %57 = load i32* %byte_pos, align 4, !dbg !977, !tbaa !700
  tail call void @llvm.dbg.value(metadata !{i32 %57}, i64 0, metadata !330), !dbg !977
  %58 = bitcast %struct.Bitstream* %56 to i8*, !dbg !978
  tail call void @free(i8* %58) #6, !dbg !978
  tail call void @free(i8* %call) #6, !dbg !979
  ret i32 %57, !dbg !980
}

; Function Attrs: optsize
declare i32 @RBSPtoNALU(i8*, %struct.NALU_t*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 %PPS_id) #0 {
entry:
  %rbsp = alloca [64000 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32 %PPS_id}, i64 0, metadata !193), !dbg !981
  %call = call %struct.NALU_t* (i32, ...)* bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 64000) #6, !dbg !982
  call void @llvm.dbg.value(metadata !{%struct.NALU_t* %call}, i64 0, metadata !194), !dbg !982
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !195), !dbg !983
  %0 = getelementptr inbounds [64000 x i8]* %rbsp, i64 0, i64 0, !dbg !984
  call void @llvm.lifetime.start(i64 64000, i8* %0) #3, !dbg !984
  call void @llvm.dbg.declare(metadata !{[64000 x i8]* %rbsp}, metadata !197), !dbg !984
  %idxprom = sext i32 %PPS_id to i64, !dbg !985
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 %idxprom, !dbg !985
  %call1 = call i32 @GeneratePic_parameter_set_rbsp(%struct.pic_parameter_set_rbsp_t* %arrayidx, i8* %0) #7, !dbg !985
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !195), !dbg !985
  %call3 = call i32 @RBSPtoNALU(i8* %0, %struct.NALU_t* %call, i32 %call1, i32 8, i32 3, i32 0, i32 1) #6, !dbg !986
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !196), !dbg !986
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t* %call, i64 0, i32 0, !dbg !987
  store i32 4, i32* %startcodeprefix_len, align 4, !dbg !987, !tbaa !700
  call void @llvm.lifetime.end(i64 64000, i8* %0) #3, !dbg !988
  ret %struct.NALU_t* %call, !dbg !988
}

; Function Attrs: nounwind optsize uwtable
define i32 @GeneratePic_parameter_set_rbsp(%struct.pic_parameter_set_rbsp_t* %pps, i8* %rbsp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.pic_parameter_set_rbsp_t* %pps}, i64 0, metadata !336), !dbg !989
  tail call void @llvm.dbg.value(metadata !{i8* %rbsp}, i64 0, metadata !337), !dbg !989
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !339), !dbg !990
  %cmp = icmp eq i8* %rbsp, null, !dbg !991
  br i1 %cmp, label %cond.false, label %cond.end, !dbg !991

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 697, i8* getelementptr inbounds ([71 x i8]* @__PRETTY_FUNCTION__.GeneratePic_parameter_set_rbsp, i64 0, i64 0)) #8, !dbg !991
  unreachable, !dbg !991

cond.end:                                         ; preds = %entry
  %call = tail call noalias i8* @calloc(i64 1, i64 120) #6, !dbg !992
  %0 = bitcast i8* %call to %struct.datapartition*, !dbg !992
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %0}, i64 0, metadata !338), !dbg !992
  %cmp1 = icmp eq i8* %call, null, !dbg !992
  br i1 %cmp1, label %if.then, label %if.end, !dbg !992

if.then:                                          ; preds = %cond.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str46, i64 0, i64 0)) #6, !dbg !992
  br label %if.end, !dbg !992

if.end:                                           ; preds = %if.then, %cond.end
  %call2 = tail call noalias i8* @calloc(i64 1, i64 48) #6, !dbg !993
  %1 = bitcast i8* %call2 to %struct.Bitstream*, !dbg !993
  %bitstream = bitcast i8* %call to %struct.Bitstream**, !dbg !993
  store %struct.Bitstream* %1, %struct.Bitstream** %bitstream, align 8, !dbg !993, !tbaa !697
  %cmp3 = icmp eq i8* %call2, null, !dbg !993
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !993

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str47, i64 0, i64 0)) #6, !dbg !993
  %.pre = load %struct.Bitstream** %bitstream, align 8, !dbg !994, !tbaa !697
  br label %if.end5, !dbg !993

if.end5:                                          ; preds = %if.then4, %if.end
  %2 = phi %struct.Bitstream* [ %.pre, %if.then4 ], [ %1, %if.end ]
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9, !dbg !994
  store i8* %rbsp, i8** %streamBuffer, align 8, !dbg !994, !tbaa !697
  %3 = load %struct.Bitstream** %bitstream, align 8, !dbg !995, !tbaa !697
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 1, !dbg !995
  store i32 8, i32* %bits_to_go, align 4, !dbg !995, !tbaa !700
  %4 = load %struct.ImageParameters** @img, align 8, !dbg !996, !tbaa !697
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 112, !dbg !996
  %5 = load i32* %pic_order_present_flag, align 4, !dbg !996, !tbaa !700
  %pic_order_present_flag8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 7, !dbg !996
  store i32 %5, i32* %pic_order_present_flag8, align 4, !dbg !996, !tbaa !698
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 1, !dbg !997
  %6 = load i32* %pic_parameter_set_id, align 4, !dbg !997, !tbaa !700
  %call9 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str48, i64 0, i64 0), i32 %6, %struct.datapartition* %0) #6, !dbg !997
  tail call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !339), !dbg !997
  %seq_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 2, !dbg !998
  %7 = load i32* %seq_parameter_set_id, align 4, !dbg !998, !tbaa !700
  %call10 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str49, i64 0, i64 0), i32 %7, %struct.datapartition* %0) #6, !dbg !998
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 3, !dbg !999
  %8 = load i32* %entropy_coding_mode_flag, align 4, !dbg !999, !tbaa !698
  %call12 = tail call i32 @u_1(i8* getelementptr inbounds ([30 x i8]* @.str50, i64 0, i64 0), i32 %8, %struct.datapartition* %0) #6, !dbg !999
  %9 = load i32* %pic_order_present_flag8, align 4, !dbg !1000, !tbaa !698
  %call15 = tail call i32 @u_1(i8* getelementptr inbounds ([28 x i8]* @.str51, i64 0, i64 0), i32 %9, %struct.datapartition* %0) #6, !dbg !1000
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 8, !dbg !1001
  %10 = load i32* %num_slice_groups_minus1, align 4, !dbg !1001, !tbaa !700
  %call17 = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str52, i64 0, i64 0), i32 %10, %struct.datapartition* %0) #6, !dbg !1001
  %11 = load i32* %num_slice_groups_minus1, align 4, !dbg !1002, !tbaa !700
  %cmp20 = icmp eq i32 %11, 0, !dbg !1002
  br i1 %cmp20, label %if.end98, label %if.then21, !dbg !1002

if.then21:                                        ; preds = %if.end5
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9, !dbg !1003
  %12 = load i32* %slice_group_map_type, align 4, !dbg !1003, !tbaa !700
  %call22 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str53, i64 0, i64 0), i32 %12, %struct.datapartition* %0) #6, !dbg !1003
  %13 = load i32* %slice_group_map_type, align 4, !dbg !1005, !tbaa !700
  switch i32 %13, label %if.end98 [
    i32 0, label %for.body
    i32 2, label %for.cond34.preheader
    i32 3, label %if.then57
    i32 4, label %if.then57
    i32 5, label %if.then57
    i32 6, label %if.then65
  ], !dbg !1005

for.cond34.preheader:                             ; preds = %if.then21
  %14 = load i32* %num_slice_groups_minus1, align 4, !dbg !1006, !tbaa !700
  %cmp36354 = icmp eq i32 %14, 0, !dbg !1006
  br i1 %cmp36354, label %if.end98, label %for.body37, !dbg !1006

for.body:                                         ; preds = %if.then21, %for.body
  %i.0351 = phi i32 [ %inc, %for.body ], [ 0, %if.then21 ]
  %idxprom = zext i32 %i.0351 to i64, !dbg !1008
  %arrayidx = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 10, i64 %idxprom, !dbg !1008
  %15 = load i32* %arrayidx, align 4, !dbg !1008, !tbaa !700
  %call29 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str54, i64 0, i64 0), i32 %15, %struct.datapartition* %0) #6, !dbg !1008
  %inc = add i32 %i.0351, 1, !dbg !1010
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !341), !dbg !1010
  %16 = load i32* %num_slice_groups_minus1, align 4, !dbg !1010, !tbaa !700
  %cmp28 = icmp ugt i32 %inc, %16, !dbg !1010
  br i1 %cmp28, label %if.end98, label %for.body, !dbg !1010

for.body37:                                       ; preds = %for.cond34.preheader, %for.body37
  %i.1355 = phi i32 [ %inc47, %for.body37 ], [ 0, %for.cond34.preheader ]
  %idxprom38 = zext i32 %i.1355 to i64, !dbg !1011
  %arrayidx39 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 11, i64 %idxprom38, !dbg !1011
  %17 = load i32* %arrayidx39, align 4, !dbg !1011, !tbaa !700
  %call40 = tail call i32 @ue_v(i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), i32 %17, %struct.datapartition* %0) #6, !dbg !1011
  %arrayidx43 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 12, i64 %idxprom38, !dbg !1013
  %18 = load i32* %arrayidx43, align 4, !dbg !1013, !tbaa !700
  %call44 = tail call i32 @ue_v(i8* getelementptr inbounds ([21 x i8]* @.str56, i64 0, i64 0), i32 %18, %struct.datapartition* %0) #6, !dbg !1013
  %inc47 = add i32 %i.1355, 1, !dbg !1006
  tail call void @llvm.dbg.value(metadata !{i32 %inc47}, i64 0, metadata !341), !dbg !1006
  %19 = load i32* %num_slice_groups_minus1, align 4, !dbg !1006, !tbaa !700
  %cmp36 = icmp ult i32 %inc47, %19, !dbg !1006
  br i1 %cmp36, label %for.body37, label %if.end98, !dbg !1006

if.then57:                                        ; preds = %if.then21, %if.then21, %if.then21
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 13, !dbg !1014
  %20 = load i32* %slice_group_change_direction_flag, align 4, !dbg !1014, !tbaa !698
  %call58 = tail call i32 @u_1(i8* getelementptr inbounds ([39 x i8]* @.str57, i64 0, i64 0), i32 %20, %struct.datapartition* %0) #6, !dbg !1014
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 14, !dbg !1016
  %21 = load i32* %slice_group_change_rate_minus1, align 4, !dbg !1016, !tbaa !700
  %call60 = tail call i32 @ue_v(i8* getelementptr inbounds ([36 x i8]* @.str58, i64 0, i64 0), i32 %21, %struct.datapartition* %0) #6, !dbg !1016
  br label %if.end98, !dbg !1017

if.then65:                                        ; preds = %if.then21
  %22 = load i32* %num_slice_groups_minus1, align 4, !dbg !1018, !tbaa !700
  %cmp67 = icmp ugt i32 %22, 3, !dbg !1018
  br i1 %cmp67, label %if.end80, label %if.else69, !dbg !1018

if.else69:                                        ; preds = %if.then65
  %cmp71 = icmp ugt i32 %22, 1, !dbg !1020
  br i1 %cmp71, label %if.end80, label %if.else73, !dbg !1020

if.else73:                                        ; preds = %if.else69
  %not.cmp75 = icmp ne i32 %22, 0
  %. = zext i1 %not.cmp75 to i32
  br label %if.end80

if.end80:                                         ; preds = %if.else73, %if.else69, %if.then65
  %NumberBitsPerSliceGroupId.0 = phi i32 [ 3, %if.then65 ], [ 2, %if.else69 ], [ %., %if.else73 ]
  %pic_size_in_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 15, !dbg !1021
  %23 = load i32* %pic_size_in_map_units_minus1, align 4, !dbg !1021, !tbaa !700
  %call81 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0), i32 %23, %struct.datapartition* %0) #6, !dbg !1021
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !341), !dbg !1022
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 16, !dbg !1024
  br label %for.body86, !dbg !1022

for.body86:                                       ; preds = %if.end80, %for.body86
  %i.2358 = phi i32 [ 0, %if.end80 ], [ %inc92, %for.body86 ]
  %idxprom87 = zext i32 %i.2358 to i64, !dbg !1024
  %24 = load i8** %slice_group_id, align 8, !dbg !1024, !tbaa !697
  %arrayidx88 = getelementptr inbounds i8* %24, i64 %idxprom87, !dbg !1024
  %25 = load i8* %arrayidx88, align 1, !dbg !1024, !tbaa !698
  %conv = zext i8 %25 to i32, !dbg !1024
  %call89 = tail call i32 @u_v(i32 %NumberBitsPerSliceGroupId.0, i8* getelementptr inbounds ([24 x i8]* @.str60, i64 0, i64 0), i32 %conv, %struct.datapartition* %0) #6, !dbg !1024
  %inc92 = add i32 %i.2358, 1, !dbg !1022
  tail call void @llvm.dbg.value(metadata !{i32 %inc92}, i64 0, metadata !341), !dbg !1022
  %26 = load i32* %pic_size_in_map_units_minus1, align 4, !dbg !1022, !tbaa !700
  %cmp85 = icmp ugt i32 %inc92, %26, !dbg !1022
  br i1 %cmp85, label %if.end98, label %for.body86, !dbg !1022

if.end98:                                         ; preds = %for.body86, %for.cond34.preheader, %for.body37, %for.body, %if.then21, %if.end5, %if.then57
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 17, !dbg !1025
  %27 = load i32* %num_ref_idx_l0_active_minus1, align 4, !dbg !1025, !tbaa !700
  %call99 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str61, i64 0, i64 0), i32 %27, %struct.datapartition* %0) #6, !dbg !1025
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 18, !dbg !1026
  %28 = load i32* %num_ref_idx_l1_active_minus1, align 4, !dbg !1026, !tbaa !700
  %call101 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str62, i64 0, i64 0), i32 %28, %struct.datapartition* %0) #6, !dbg !1026
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 19, !dbg !1027
  %29 = load i32* %weighted_pred_flag, align 4, !dbg !1027, !tbaa !698
  %call103 = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str63, i64 0, i64 0), i32 %29, %struct.datapartition* %0) #6, !dbg !1027
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 20, !dbg !1028
  %30 = load i32* %weighted_bipred_idc, align 4, !dbg !1028, !tbaa !700
  %call105 = tail call i32 @u_v(i32 2, i8* getelementptr inbounds ([25 x i8]* @.str64, i64 0, i64 0), i32 %30, %struct.datapartition* %0) #6, !dbg !1028
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 21, !dbg !1029
  %31 = load i32* %pic_init_qp_minus26, align 4, !dbg !1029, !tbaa !700
  %call107 = tail call i32 @se_v(i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0), i32 %31, %struct.datapartition* %0) #6, !dbg !1029
  %pic_init_qs_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 22, !dbg !1030
  %32 = load i32* %pic_init_qs_minus26, align 4, !dbg !1030, !tbaa !700
  %call109 = tail call i32 @se_v(i8* getelementptr inbounds ([25 x i8]* @.str66, i64 0, i64 0), i32 %32, %struct.datapartition* %0) #6, !dbg !1030
  %33 = load %struct.InputParameters** @input, align 8, !dbg !1031, !tbaa !697
  %ProfileIDC.i = getelementptr inbounds %struct.InputParameters* %33, i64 0, i32 0, !dbg !1031
  %34 = load i32* %ProfileIDC.i, align 4, !dbg !1031, !tbaa !700
  tail call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !343), !dbg !1032
  switch i32 %34, label %if.else126 [
    i32 144, label %if.then123
    i32 122, label %if.then123
    i32 110, label %if.then123
    i32 100, label %if.then123
  ], !dbg !1033

if.then123:                                       ; preds = %if.end98, %if.end98, %if.end98, %if.end98
  %cb_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 24, !dbg !1034
  %35 = load i32* %cb_qp_index_offset, align 4, !dbg !1034, !tbaa !700
  %call124 = tail call i32 @se_v(i8* getelementptr inbounds ([28 x i8]* @.str67, i64 0, i64 0), i32 %35, %struct.datapartition* %0) #6, !dbg !1034
  br label %if.end129, !dbg !1034

if.else126:                                       ; preds = %if.end98
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 23, !dbg !1035
  %36 = load i32* %chroma_qp_index_offset, align 4, !dbg !1035, !tbaa !700
  %call127 = tail call i32 @se_v(i8* getelementptr inbounds ([28 x i8]* @.str67, i64 0, i64 0), i32 %36, %struct.datapartition* %0) #6, !dbg !1035
  br label %if.end129

if.end129:                                        ; preds = %if.else126, %if.then123
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 26, !dbg !1036
  %37 = load i32* %deblocking_filter_control_present_flag, align 4, !dbg !1036, !tbaa !698
  %call130 = tail call i32 @u_1(i8* getelementptr inbounds ([44 x i8]* @.str68, i64 0, i64 0), i32 %37, %struct.datapartition* %0) #6, !dbg !1036
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 27, !dbg !1037
  %38 = load i32* %constrained_intra_pred_flag, align 4, !dbg !1037, !tbaa !698
  %call132 = tail call i32 @u_1(i8* getelementptr inbounds ([33 x i8]* @.str69, i64 0, i64 0), i32 %38, %struct.datapartition* %0) #6, !dbg !1037
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 28, !dbg !1038
  %39 = load i32* %redundant_pic_cnt_present_flag, align 4, !dbg !1038, !tbaa !698
  %call134 = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str70, i64 0, i64 0), i32 %39, %struct.datapartition* %0) #6, !dbg !1038
  switch i32 %34, label %if.end202 [
    i32 144, label %if.then147
    i32 122, label %if.then147
    i32 110, label %if.then147
    i32 100, label %if.then147
  ], !dbg !1039

if.then147:                                       ; preds = %if.end129, %if.end129, %if.end129, %if.end129
  %transform_8x8_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 4, !dbg !1040
  %40 = load i32* %transform_8x8_mode_flag, align 4, !dbg !1040, !tbaa !698
  %call148 = tail call i32 @u_1(i8* getelementptr inbounds ([29 x i8]* @.str71, i64 0, i64 0), i32 %40, %struct.datapartition* %0) #6, !dbg !1040
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 5, !dbg !1042
  %41 = load i32* %pic_scaling_matrix_present_flag, align 4, !dbg !1042, !tbaa !698
  %call150 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str72, i64 0, i64 0), i32 %41, %struct.datapartition* %0) #6, !dbg !1042
  %42 = load i32* %pic_scaling_matrix_present_flag, align 4, !dbg !1043, !tbaa !698
  %tobool = icmp eq i32 %42, 0, !dbg !1043
  br i1 %tobool, label %if.end199, label %if.then153, !dbg !1043

if.then153:                                       ; preds = %if.then147
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !341), !dbg !1044
  %43 = load i32* %transform_8x8_mode_flag, align 4, !dbg !1044, !tbaa !698
  %shl346.mask = and i32 %43, 2147483647, !dbg !1044
  %cmp157348 = icmp eq i32 %shl346.mask, 2147483645, !dbg !1044
  br i1 %cmp157348, label %if.end199, label %for.body159, !dbg !1044

for.body159:                                      ; preds = %if.then153, %for.inc196
  %i.3349 = phi i32 [ %inc197, %for.inc196 ], [ 0, %if.then153 ]
  %idxprom160 = zext i32 %i.3349 to i64, !dbg !1047
  %arrayidx161 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %idxprom160, !dbg !1047
  %44 = load i32* %arrayidx161, align 4, !dbg !1047, !tbaa !700
  %call162 = tail call i32 @u_1(i8* getelementptr inbounds ([35 x i8]* @.str73, i64 0, i64 0), i32 %44, %struct.datapartition* %0) #6, !dbg !1047
  %45 = load i32* %arrayidx161, align 4, !dbg !1049, !tbaa !700
  %tobool167 = icmp eq i32 %45, 0, !dbg !1049
  br i1 %tobool167, label %for.inc196, label %if.then168, !dbg !1049

if.then168:                                       ; preds = %for.body159
  %cmp169 = icmp ult i32 %i.3349, 6, !dbg !1050
  br i1 %cmp169, label %if.then171, label %if.else181, !dbg !1050

if.then171:                                       ; preds = %if.then168
  %arraydecay = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %idxprom160, i64 0, !dbg !1052
  %arraydecay176 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 %idxprom160, i64 0, !dbg !1052
  %arrayidx178 = getelementptr inbounds [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 %idxprom160, !dbg !1052
  %call179 = tail call i32 @Scaling_List(i16* %arraydecay, i16* %arraydecay176, i32 16, i16* %arrayidx178, %struct.datapartition* %0) #7, !dbg !1052
  br label %for.inc196, !dbg !1052

if.else181:                                       ; preds = %if.then168
  %sub = add i32 %i.3349, -6, !dbg !1053
  %idxprom182 = zext i32 %sub to i64, !dbg !1053
  %arraydecay184 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %idxprom182, i64 0, !dbg !1053
  %arraydecay188 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 %idxprom182, i64 0, !dbg !1053
  %arrayidx191 = getelementptr inbounds [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 %idxprom182, !dbg !1053
  %call192 = tail call i32 @Scaling_List(i16* %arraydecay184, i16* %arraydecay188, i32 64, i16* %arrayidx191, %struct.datapartition* %0) #7, !dbg !1053
  br label %for.inc196

for.inc196:                                       ; preds = %for.body159, %if.else181, %if.then171
  %inc197 = add i32 %i.3349, 1, !dbg !1044
  tail call void @llvm.dbg.value(metadata !{i32 %inc197}, i64 0, metadata !341), !dbg !1044
  %46 = load i32* %transform_8x8_mode_flag, align 4, !dbg !1044, !tbaa !698
  %shl = shl i32 %46, 1, !dbg !1044
  %add156 = add i32 %shl, 6, !dbg !1044
  %cmp157 = icmp ult i32 %inc197, %add156, !dbg !1044
  br i1 %cmp157, label %for.body159, label %if.end199, !dbg !1044

if.end199:                                        ; preds = %if.then153, %for.inc196, %if.then147
  %cr_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 25, !dbg !1054
  %47 = load i32* %cr_qp_index_offset, align 4, !dbg !1054, !tbaa !700
  %call200 = tail call i32 @se_v(i8* getelementptr inbounds ([35 x i8]* @.str74, i64 0, i64 0), i32 %47, %struct.datapartition* %0) #6, !dbg !1054
  br label %if.end202, !dbg !1055

if.end202:                                        ; preds = %if.end129, %if.end199
  %48 = load %struct.Bitstream** %bitstream, align 8, !dbg !1056, !tbaa !697
  tail call void @SODBtoRBSP(%struct.Bitstream* %48) #6, !dbg !1056
  %49 = load %struct.Bitstream** %bitstream, align 8, !dbg !1057, !tbaa !697
  %byte_pos = getelementptr inbounds %struct.Bitstream* %49, i64 0, i32 0, !dbg !1057
  %50 = load i32* %byte_pos, align 4, !dbg !1057, !tbaa !700
  tail call void @llvm.dbg.value(metadata !{i32 %50}, i64 0, metadata !340), !dbg !1057
  %51 = bitcast %struct.Bitstream* %49 to i8*, !dbg !1058
  tail call void @free(i8* %51) #6, !dbg !1058
  tail call void @free(i8* %call) #6, !dbg !1059
  ret i32 %50, !dbg !1060
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: optsize
declare %struct.colocated_params* @alloc_colocated(i32, i32, i32) #2

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Scaling_List(i16* nocapture %scalingListinput, i16* nocapture %scalingList, i32 %sizeOfScalingList, i16* nocapture %UseDefaultScalingMatrix, %struct.datapartition* %partition) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16* %scalingListinput}, i64 0, metadata !309), !dbg !1061
  tail call void @llvm.dbg.value(metadata !{i16* %scalingList}, i64 0, metadata !310), !dbg !1061
  tail call void @llvm.dbg.value(metadata !{i32 %sizeOfScalingList}, i64 0, metadata !311), !dbg !1061
  tail call void @llvm.dbg.value(metadata !{i16* %UseDefaultScalingMatrix}, i64 0, metadata !312), !dbg !1061
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %partition}, i64 0, metadata !313), !dbg !1061
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !316), !dbg !1062
  tail call void @llvm.dbg.value(metadata !1063, i64 0, metadata !318), !dbg !1064
  tail call void @llvm.dbg.value(metadata !1063, i64 0, metadata !319), !dbg !1065
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !314), !dbg !1066
  %cmp59 = icmp sgt i32 %sizeOfScalingList, 0, !dbg !1066
  br i1 %cmp59, label %for.body.lr.ph, label %for.end, !dbg !1066

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i32 %sizeOfScalingList, 16, !dbg !1068
  br label %for.body, !dbg !1066

for.body:                                         ; preds = %if.end28, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end28 ]
  %nextScale.063 = phi i32 [ 8, %for.body.lr.ph ], [ %nextScale.1, %if.end28 ]
  %lastScale.062 = phi i32 [ 8, %for.body.lr.ph ], [ %cond34, %if.end28 ]
  %len.061 = phi i32 [ 0, %for.body.lr.ph ], [ %len.1, %if.end28 ]
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1068

cond.true:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds [16 x i8]* @ZZ_SCAN, i64 0, i64 %indvars.iv, !dbg !1068
  br label %cond.end, !dbg !1068

cond.false:                                       ; preds = %for.body
  %arrayidx3 = getelementptr inbounds [64 x i8]* @ZZ_SCAN8, i64 0, i64 %indvars.iv, !dbg !1068
  br label %cond.end, !dbg !1068

cond.end:                                         ; preds = %cond.false, %cond.true
  %.sink.in = phi i8* [ %arrayidx, %cond.true ], [ %arrayidx3, %cond.false ]
  %.sink = load i8* %.sink.in, align 1, !dbg !1068
  %cmp5 = icmp eq i32 %nextScale.063, 0, !dbg !1070
  %idxprom36.pre = zext i8 %.sink to i64, !dbg !1071
  br i1 %cmp5, label %if.end28, label %if.then, !dbg !1070

if.then:                                          ; preds = %cond.end
  %arrayidx8 = getelementptr inbounds i16* %scalingListinput, i64 %idxprom36.pre, !dbg !1072
  %0 = load i16* %arrayidx8, align 2, !dbg !1072, !tbaa !1074
  %conv9 = sext i16 %0 to i32, !dbg !1072
  %sub = sub nsw i32 %conv9, %lastScale.062, !dbg !1072
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !317), !dbg !1072
  %cmp10 = icmp sgt i32 %sub, 127, !dbg !1075
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1075

if.then12:                                        ; preds = %if.then
  %sub13 = add nsw i32 %sub, -256, !dbg !1076
  tail call void @llvm.dbg.value(metadata !{i32 %sub13}, i64 0, metadata !317), !dbg !1076
  br label %if.end17, !dbg !1076

if.else:                                          ; preds = %if.then
  %cmp14 = icmp slt i32 %sub, -128, !dbg !1077
  %add = add nsw i32 %sub, 256, !dbg !1078
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !317), !dbg !1078
  %add.sub = select i1 %cmp14, i32 %add, i32 %sub, !dbg !1077
  br label %if.end17, !dbg !1077

if.end17:                                         ; preds = %if.else, %if.then12
  %delta_scale.0 = phi i32 [ %sub13, %if.then12 ], [ %add.sub, %if.else ]
  %call = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i32 %delta_scale.0, %struct.datapartition* %partition) #6, !dbg !1079
  %add18 = add nsw i32 %call, %len.061, !dbg !1079
  tail call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !316), !dbg !1079
  %1 = load i16* %arrayidx8, align 2, !dbg !1080, !tbaa !1074
  %conv21 = sext i16 %1 to i32, !dbg !1080
  tail call void @llvm.dbg.value(metadata !{i32 %conv21}, i64 0, metadata !319), !dbg !1080
  %cmp22 = icmp eq i8 %.sink, 0, !dbg !1081
  %cmp24 = icmp eq i16 %1, 0, !dbg !1081
  %cmp24. = and i1 %cmp22, %cmp24, !dbg !1081
  %land.ext = zext i1 %cmp24. to i16
  %2 = load i16* %UseDefaultScalingMatrix, align 2, !tbaa !1074
  %or = or i16 %land.ext, %2
  store i16 %or, i16* %UseDefaultScalingMatrix, align 2, !tbaa !1074
  br label %if.end28, !dbg !1082

if.end28:                                         ; preds = %cond.end, %if.end17
  %len.1 = phi i32 [ %add18, %if.end17 ], [ %len.061, %cond.end ]
  %nextScale.1 = phi i32 [ %conv21, %if.end17 ], [ 0, %cond.end ]
  %cmp29 = icmp eq i32 %nextScale.1, 0, !dbg !1071
  %cond34 = select i1 %cmp29, i32 %lastScale.062, i32 %nextScale.1, !dbg !1071
  %conv35 = trunc i32 %cond34 to i16, !dbg !1071
  %arrayidx37 = getelementptr inbounds i16* %scalingList, i64 %idxprom36.pre, !dbg !1071
  store i16 %conv35, i16* %arrayidx37, align 2, !dbg !1071, !tbaa !1074
  tail call void @llvm.dbg.value(metadata !{i32 %cond34}, i64 0, metadata !318), !dbg !1083
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1066
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1066
  %exitcond = icmp eq i32 %lftr.wideiv, %sizeOfScalingList, !dbg !1066
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1066

for.end:                                          ; preds = %if.end28, %entry
  %len.0.lcssa = phi i32 [ 0, %entry ], [ %len.1, %if.end28 ]
  ret i32 %len.0.lcssa, !dbg !1084
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

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !354, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8, metadata !14}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 111, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 111, size 32, align 32, offset 0] [from ]
!9 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!10 = metadata !{metadata !11, metadata !12, metadata !13}
!11 = metadata !{i32 786472, metadata !"FRAME_CODING", i64 0} ; [ DW_TAG_enumerator ] [FRAME_CODING :: 0]
!12 = metadata !{i32 786472, metadata !"FIELD_CODING", i64 1} ; [ DW_TAG_enumerator ] [FIELD_CODING :: 1]
!13 = metadata !{i32 786472, metadata !"ADAPTIVE_CODING", i64 2} ; [ DW_TAG_enumerator ] [ADAPTIVE_CODING :: 2]
!14 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 178, i64 32, i64 32, i32 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 178, size 32, align 32, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786472, metadata !"UVLC", i64 0} ; [ DW_TAG_enumerator ] [UVLC :: 0]
!17 = metadata !{i32 786472, metadata !"CABAC", i64 1} ; [ DW_TAG_enumerator ] [CABAC :: 1]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !165, metadata !166, metadata !189, metadata !198, metadata !217, metadata !230, metadata !320, metadata !332, metadata !344, metadata !350, metadata !353}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GenerateParameterSets", metadata !"GenerateParameterSets", metadata !"", i32 60, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @GenerateParameterSets, null, null, metadata !24, i32 61} ; [ DW_TAG_subprogram ] [line 60] [def] [scope 61] [GenerateParameterSets]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null}
!24 = metadata !{metadata !25, metadata !126}
!25 = metadata !{i32 786688, metadata !20, metadata !"sps", metadata !21, i32 62, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sps] [line 62]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!27 = metadata !{i32 786454, metadata !1, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!28 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!30 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!31 = metadata !{i32 786454, metadata !4, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!32 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!33 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!34 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!35 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !31} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!36 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!37 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !31} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!38 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!39 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !33} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!40 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!41 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !31} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!42 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !43} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!43 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !44, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!44 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!47 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!48 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !33} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!49 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!50 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !33} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!51 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !33} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!52 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !31} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!53 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !44} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!54 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !44} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!55 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !33} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!56 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !57} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!57 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !44, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!60 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !33} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!61 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !31} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!62 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !33} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!63 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !33} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!64 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !31} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!65 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !31} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!66 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !31} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!67 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !31} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!68 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !33} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!69 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !33} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!70 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !33} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!71 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !33} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!72 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !31} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!73 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !74} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!74 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!75 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !76, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!77 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!78 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!79 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!80 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !33} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!81 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!82 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !31} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!83 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!84 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !33} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!85 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!86 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !31} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!87 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !33} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!88 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !33} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!89 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!90 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !31} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!91 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !33} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!92 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !33} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!93 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!94 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !33} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!95 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!96 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !31} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!97 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !31} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!98 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !99} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!99 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!100 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !101, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114}
!102 = metadata !{i32 786445, metadata !4, metadata !100, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!103 = metadata !{i32 786445, metadata !4, metadata !100, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!104 = metadata !{i32 786445, metadata !4, metadata !100, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!105 = metadata !{i32 786445, metadata !4, metadata !100, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !106} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!106 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !33, metadata !107, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!109 = metadata !{i32 786445, metadata !4, metadata !100, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !106} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!110 = metadata !{i32 786445, metadata !4, metadata !100, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !106} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!111 = metadata !{i32 786445, metadata !4, metadata !100, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !33} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!112 = metadata !{i32 786445, metadata !4, metadata !100, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !33} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!113 = metadata !{i32 786445, metadata !4, metadata !100, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !33} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!114 = metadata !{i32 786445, metadata !4, metadata !100, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !33} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!115 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !31} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!116 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !99} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!117 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !31} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!118 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !31} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!119 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !31} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!120 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !33} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!121 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !33} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!122 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !33} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!123 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !33} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!124 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !33} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!125 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !33} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!126 = metadata !{i32 786688, metadata !20, metadata !"pps", metadata !21, i32 63, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pps] [line 63]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!128 = metadata !{i32 786454, metadata !1, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!129 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !130, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164}
!131 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!132 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!133 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!134 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !31} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!135 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!136 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !31} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!137 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !43} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!138 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!139 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !33} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!140 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !33} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!141 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !142} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!142 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !33, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!143 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !142} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!144 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !142} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!145 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !31} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!146 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !33} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!147 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !33} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!148 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !149} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!150 = metadata !{i32 786454, metadata !4, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!151 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!152 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !44} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!153 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !44} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!154 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !31} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!155 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !33} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!156 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !44} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!157 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !44} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!158 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !44} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!159 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !44} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!160 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !44} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!161 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !31} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!162 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !31} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!163 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !31} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!164 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !31} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!165 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"FreeParameterSets", metadata !"FreeParameterSets", metadata !"", i32 119, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @FreeParameterSets, null, null, metadata !18, i32 120} ; [ DW_TAG_subprogram ] [line 119] [def] [scope 120] [FreeParameterSets]
!166 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GenerateSeq_parameter_set_NALU", metadata !"GenerateSeq_parameter_set_NALU", metadata !"", i32 141, metadata !167, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, %struct.NALU_t* ()* @GenerateSeq_parameter_set_NALU, null, null, metadata !181, i32 142} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 142] [GenerateSeq_parameter_set_NALU]
!167 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!168 = metadata !{metadata !169}
!169 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from NALU_t]
!170 = metadata !{i32 786454, metadata !1, null, metadata !"NALU_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !171} ; [ DW_TAG_typedef ] [NALU_t] [line 49, size 0, align 0, offset 0] [from ]
!171 = metadata !{i32 786451, metadata !172, null, metadata !"", i32 40, i64 256, i64 64, i32 0, i32 0, null, metadata !173, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 256, align 64, offset 0] [from ]
!172 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalucommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!174 = metadata !{i32 786445, metadata !172, metadata !171, metadata !"startcodeprefix_len", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [startcodeprefix_len] [line 42, size 32, align 32, offset 0] [from int]
!175 = metadata !{i32 786445, metadata !172, metadata !171, metadata !"len", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [len] [line 43, size 32, align 32, offset 32] [from unsigned int]
!176 = metadata !{i32 786445, metadata !172, metadata !171, metadata !"max_size", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [max_size] [line 44, size 32, align 32, offset 64] [from unsigned int]
!177 = metadata !{i32 786445, metadata !172, metadata !171, metadata !"nal_unit_type", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [nal_unit_type] [line 45, size 32, align 32, offset 96] [from int]
!178 = metadata !{i32 786445, metadata !172, metadata !171, metadata !"nal_reference_idc", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [nal_reference_idc] [line 46, size 32, align 32, offset 128] [from int]
!179 = metadata !{i32 786445, metadata !172, metadata !171, metadata !"forbidden_bit", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [forbidden_bit] [line 47, size 32, align 32, offset 160] [from int]
!180 = metadata !{i32 786445, metadata !172, metadata !171, metadata !"buf", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !149} ; [ DW_TAG_member ] [buf] [line 48, size 64, align 64, offset 192] [from ]
!181 = metadata !{metadata !182, metadata !183, metadata !184, metadata !185}
!182 = metadata !{i32 786688, metadata !166, metadata !"n", metadata !21, i32 143, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 143]
!183 = metadata !{i32 786688, metadata !166, metadata !"RBSPlen", metadata !21, i32 144, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RBSPlen] [line 144]
!184 = metadata !{i32 786688, metadata !166, metadata !"NALUlen", metadata !21, i32 145, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NALUlen] [line 145]
!185 = metadata !{i32 786688, metadata !166, metadata !"rbsp", metadata !21, i32 146, metadata !186, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rbsp] [line 146]
!186 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512000, i64 8, i32 0, i32 0, metadata !150, metadata !187, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512000, align 8, offset 0] [from byte]
!187 = metadata !{metadata !188}
!188 = metadata !{i32 786465, i64 0, i64 64000}   ; [ DW_TAG_subrange_type ] [0, 63999]
!189 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GeneratePic_parameter_set_NALU", metadata !"GeneratePic_parameter_set_NALU", metadata !"", i32 171, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.NALU_t* (i32)* @GeneratePic_parameter_set_NALU, null, null, metadata !192, i32 172} ; [ DW_TAG_subprogram ] [line 171] [def] [scope 172] [GeneratePic_parameter_set_NALU]
!190 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!191 = metadata !{metadata !169, metadata !44}
!192 = metadata !{metadata !193, metadata !194, metadata !195, metadata !196, metadata !197}
!193 = metadata !{i32 786689, metadata !189, metadata !"PPS_id", metadata !21, i32 16777387, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PPS_id] [line 171]
!194 = metadata !{i32 786688, metadata !189, metadata !"n", metadata !21, i32 173, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 173]
!195 = metadata !{i32 786688, metadata !189, metadata !"RBSPlen", metadata !21, i32 174, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [RBSPlen] [line 174]
!196 = metadata !{i32 786688, metadata !189, metadata !"NALUlen", metadata !21, i32 175, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NALUlen] [line 175]
!197 = metadata !{i32 786688, metadata !189, metadata !"rbsp", metadata !21, i32 176, metadata !186, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rbsp] [line 176]
!198 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GenerateSequenceParameterSet", metadata !"GenerateSequenceParameterSet", metadata !"", i32 203, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.seq_parameter_set_rbsp_t*, i32)* @GenerateSequenceParameterSet, null, null, metadata !201, i32 204} ; [ DW_TAG_subprogram ] [line 203] [def] [scope 204] [GenerateSequenceParameterSet]
!199 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!200 = metadata !{null, metadata !26, metadata !44}
!201 = metadata !{metadata !202, metadata !203, metadata !204, metadata !205, metadata !209, metadata !210, metadata !211, metadata !213, metadata !214, metadata !215, metadata !216}
!202 = metadata !{i32 786689, metadata !198, metadata !"sps", metadata !21, i32 16777419, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sps] [line 203]
!203 = metadata !{i32 786689, metadata !198, metadata !"SPS_id", metadata !21, i32 33554635, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SPS_id] [line 203]
!204 = metadata !{i32 786688, metadata !198, metadata !"i", metadata !21, i32 205, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 205]
!205 = metadata !{i32 786688, metadata !198, metadata !"SubWidthC", metadata !21, i32 206, metadata !206, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [SubWidthC] [line 206]
!206 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !44, metadata !207, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!207 = metadata !{metadata !208}
!208 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!209 = metadata !{i32 786688, metadata !198, metadata !"SubHeightC", metadata !21, i32 207, metadata !206, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [SubHeightC] [line 207]
!210 = metadata !{i32 786688, metadata !198, metadata !"frext_profile", metadata !21, i32 209, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frext_profile] [line 209]
!211 = metadata !{i32 786688, metadata !212, metadata !"PicWidthInMbs", metadata !21, i32 281, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [PicWidthInMbs] [line 281]
!212 = metadata !{i32 786443, metadata !1, metadata !198, i32 280, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!213 = metadata !{i32 786688, metadata !212, metadata !"PicHeightInMapUnits", metadata !21, i32 281, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [PicHeightInMapUnits] [line 281]
!214 = metadata !{i32 786688, metadata !212, metadata !"FrameHeightInMbs", metadata !21, i32 281, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrameHeightInMbs] [line 281]
!215 = metadata !{i32 786688, metadata !212, metadata !"width", metadata !21, i32 282, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [width] [line 282]
!216 = metadata !{i32 786688, metadata !212, metadata !"height", metadata !21, i32 282, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [height] [line 282]
!217 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GeneratePictureParameterSet", metadata !"GeneratePictureParameterSet", metadata !"", i32 361, metadata !218, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.pic_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t*, i32, i32, i32, i32, i32)* @GeneratePictureParameterSet, null, null, metadata !220, i32 364} ; [ DW_TAG_subprogram ] [line 361] [def] [scope 364] [GeneratePictureParameterSet]
!218 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !219, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!219 = metadata !{null, metadata !127, metadata !26, metadata !44, metadata !44, metadata !44, metadata !44, metadata !44}
!220 = metadata !{metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229}
!221 = metadata !{i32 786689, metadata !217, metadata !"pps", metadata !21, i32 16777577, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pps] [line 361]
!222 = metadata !{i32 786689, metadata !217, metadata !"sps", metadata !21, i32 33554793, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sps] [line 361]
!223 = metadata !{i32 786689, metadata !217, metadata !"PPS_id", metadata !21, i32 50332009, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PPS_id] [line 361]
!224 = metadata !{i32 786689, metadata !217, metadata !"WeightedPrediction", metadata !21, i32 67109226, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [WeightedPrediction] [line 362]
!225 = metadata !{i32 786689, metadata !217, metadata !"WeightedBiprediction", metadata !21, i32 83886442, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [WeightedBiprediction] [line 362]
!226 = metadata !{i32 786689, metadata !217, metadata !"cb_qp_index_offset", metadata !21, i32 100663659, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cb_qp_index_offset] [line 363]
!227 = metadata !{i32 786689, metadata !217, metadata !"cr_qp_index_offset", metadata !21, i32 117440875, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr_qp_index_offset] [line 363]
!228 = metadata !{i32 786688, metadata !217, metadata !"i", metadata !21, i32 365, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 365]
!229 = metadata !{i32 786688, metadata !217, metadata !"frext_profile", metadata !21, i32 367, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frext_profile] [line 367]
!230 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"Scaling_List", metadata !"Scaling_List", metadata !"", i32 509, metadata !231, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i16*, i16*, i32, i16*, %struct.datapartition*)* @Scaling_List, null, null, metadata !308, i32 510} ; [ DW_TAG_subprogram ] [line 509] [def] [scope 510] [Scaling_List]
!231 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!232 = metadata !{metadata !44, metadata !233, metadata !233, metadata !44, metadata !233, metadata !235}
!233 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !234} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!234 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!236 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!237 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !238, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!238 = metadata !{metadata !239, metadata !255, metadata !280}
!239 = metadata !{i32 786445, metadata !9, metadata !237, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !240} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!240 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !241} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!241 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !242} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!242 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !243, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!243 = metadata !{metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254}
!244 = metadata !{i32 786445, metadata !9, metadata !242, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!245 = metadata !{i32 786445, metadata !9, metadata !242, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!246 = metadata !{i32 786445, metadata !9, metadata !242, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !150} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!247 = metadata !{i32 786445, metadata !9, metadata !242, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!248 = metadata !{i32 786445, metadata !9, metadata !242, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!249 = metadata !{i32 786445, metadata !9, metadata !242, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !150} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!250 = metadata !{i32 786445, metadata !9, metadata !242, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !150} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!251 = metadata !{i32 786445, metadata !9, metadata !242, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!252 = metadata !{i32 786445, metadata !9, metadata !242, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !44} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!253 = metadata !{i32 786445, metadata !9, metadata !242, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !149} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!254 = metadata !{i32 786445, metadata !9, metadata !242, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!255 = metadata !{i32 786445, metadata !9, metadata !237, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !256} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!256 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !257} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!257 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !258, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!258 = metadata !{metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279}
!259 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!260 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!261 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!262 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !33} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!263 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!264 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !149} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!265 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !266} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!266 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!267 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !33} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!268 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !33} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!269 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!270 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !33} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!271 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !33} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!272 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !149} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!273 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !266} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!274 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !44} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!275 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !44} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!276 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !44} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!277 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !44} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!278 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !44} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!279 = metadata !{i32 786445, metadata !9, metadata !257, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !44} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!280 = metadata !{i32 786445, metadata !9, metadata !237, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !281} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!281 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !282} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!282 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!283 = metadata !{metadata !44, metadata !284, metadata !307}
!284 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !285} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!285 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !286} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!286 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !287, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!287 = metadata !{metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !300}
!288 = metadata !{i32 786445, metadata !9, metadata !286, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!289 = metadata !{i32 786445, metadata !9, metadata !286, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!290 = metadata !{i32 786445, metadata !9, metadata !286, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !44} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!291 = metadata !{i32 786445, metadata !9, metadata !286, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!292 = metadata !{i32 786445, metadata !9, metadata !286, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!293 = metadata !{i32 786445, metadata !9, metadata !286, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !33} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!294 = metadata !{i32 786445, metadata !9, metadata !286, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!295 = metadata !{i32 786445, metadata !9, metadata !286, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !44} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!296 = metadata !{i32 786445, metadata !9, metadata !286, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !297} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!297 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !298} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!298 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!299 = metadata !{null, metadata !44, metadata !44, metadata !266, metadata !266}
!300 = metadata !{i32 786445, metadata !9, metadata !286, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !301} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!301 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !302} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!302 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!303 = metadata !{null, metadata !304, metadata !305}
!304 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !286} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!305 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!306 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !256} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!307 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!308 = metadata !{metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319}
!309 = metadata !{i32 786689, metadata !230, metadata !"scalingListinput", metadata !21, i32 16777725, metadata !233, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [scalingListinput] [line 509]
!310 = metadata !{i32 786689, metadata !230, metadata !"scalingList", metadata !21, i32 33554941, metadata !233, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [scalingList] [line 509]
!311 = metadata !{i32 786689, metadata !230, metadata !"sizeOfScalingList", metadata !21, i32 50332157, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sizeOfScalingList] [line 509]
!312 = metadata !{i32 786689, metadata !230, metadata !"UseDefaultScalingMatrix", metadata !21, i32 67109373, metadata !233, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [UseDefaultScalingMatrix] [line 509]
!313 = metadata !{i32 786689, metadata !230, metadata !"partition", metadata !21, i32 83886589, metadata !235, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [partition] [line 509]
!314 = metadata !{i32 786688, metadata !230, metadata !"j", metadata !21, i32 511, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 511]
!315 = metadata !{i32 786688, metadata !230, metadata !"scanj", metadata !21, i32 511, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scanj] [line 511]
!316 = metadata !{i32 786688, metadata !230, metadata !"len", metadata !21, i32 512, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 512]
!317 = metadata !{i32 786688, metadata !230, metadata !"delta_scale", metadata !21, i32 513, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta_scale] [line 513]
!318 = metadata !{i32 786688, metadata !230, metadata !"lastScale", metadata !21, i32 513, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastScale] [line 513]
!319 = metadata !{i32 786688, metadata !230, metadata !"nextScale", metadata !21, i32 513, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextScale] [line 513]
!320 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GenerateSeq_parameter_set_rbsp", metadata !"GenerateSeq_parameter_set_rbsp", metadata !"", i32 561, metadata !321, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.seq_parameter_set_rbsp_t*, i8*)* @GenerateSeq_parameter_set_rbsp, null, null, metadata !325, i32 562} ; [ DW_TAG_subprogram ] [line 561] [def] [scope 562] [GenerateSeq_parameter_set_rbsp]
!321 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !322, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!322 = metadata !{metadata !44, metadata !26, metadata !323}
!323 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !324} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!324 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!325 = metadata !{metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331}
!326 = metadata !{i32 786689, metadata !320, metadata !"sps", metadata !21, i32 16777777, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sps] [line 561]
!327 = metadata !{i32 786689, metadata !320, metadata !"rbsp", metadata !21, i32 33554993, metadata !323, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rbsp] [line 561]
!328 = metadata !{i32 786688, metadata !320, metadata !"partition", metadata !21, i32 563, metadata !235, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 563]
!329 = metadata !{i32 786688, metadata !320, metadata !"len", metadata !21, i32 564, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 564]
!330 = metadata !{i32 786688, metadata !320, metadata !"LenInBytes", metadata !21, i32 564, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [LenInBytes] [line 564]
!331 = metadata !{i32 786688, metadata !320, metadata !"i", metadata !21, i32 565, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 565]
!332 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GeneratePic_parameter_set_rbsp", metadata !"GeneratePic_parameter_set_rbsp", metadata !"", i32 689, metadata !333, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.pic_parameter_set_rbsp_t*, i8*)* @GeneratePic_parameter_set_rbsp, null, null, metadata !335, i32 690} ; [ DW_TAG_subprogram ] [line 689] [def] [scope 690] [GeneratePic_parameter_set_rbsp]
!333 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!334 = metadata !{metadata !44, metadata !127, metadata !323}
!335 = metadata !{metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343}
!336 = metadata !{i32 786689, metadata !332, metadata !"pps", metadata !21, i32 16777905, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pps] [line 689]
!337 = metadata !{i32 786689, metadata !332, metadata !"rbsp", metadata !21, i32 33555121, metadata !323, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rbsp] [line 689]
!338 = metadata !{i32 786688, metadata !332, metadata !"partition", metadata !21, i32 691, metadata !235, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 691]
!339 = metadata !{i32 786688, metadata !332, metadata !"len", metadata !21, i32 692, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 692]
!340 = metadata !{i32 786688, metadata !332, metadata !"LenInBytes", metadata !21, i32 692, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [LenInBytes] [line 692]
!341 = metadata !{i32 786688, metadata !332, metadata !"i", metadata !21, i32 693, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 693]
!342 = metadata !{i32 786688, metadata !332, metadata !"NumberBitsPerSliceGroupId", metadata !21, i32 694, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NumberBitsPerSliceGroupId] [line 694]
!343 = metadata !{i32 786688, metadata !332, metadata !"profile_idc", metadata !21, i32 695, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [profile_idc] [line 695]
!344 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GenerateVUISequenceParameters", metadata !"GenerateVUISequenceParameters", metadata !"", i32 867, metadata !345, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !347, i32 868} ; [ DW_TAG_subprogram ] [line 867] [local] [def] [scope 868] [GenerateVUISequenceParameters]
!345 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !346, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!346 = metadata !{metadata !44, metadata !235}
!347 = metadata !{metadata !348, metadata !349}
!348 = metadata !{i32 786689, metadata !344, metadata !"partition", metadata !21, i32 16778083, metadata !235, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [partition] [line 867]
!349 = metadata !{i32 786688, metadata !344, metadata !"len", metadata !21, i32 869, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 869]
!350 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"IdentifyLevel", metadata !"IdentifyLevel", metadata !"", i32 852, metadata !351, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !18, i32 853} ; [ DW_TAG_subprogram ] [line 852] [local] [def] [scope 853] [IdentifyLevel]
!351 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!352 = metadata !{metadata !44}
!353 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"IdentifyProfile", metadata !"IdentifyProfile", metadata !"", i32 834, metadata !351, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !18, i32 835} ; [ DW_TAG_subprogram ] [line 834] [local] [def] [scope 835] [IdentifyProfile]
!354 = metadata !{metadata !355, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !478, metadata !480, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !492, metadata !493, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !510, metadata !511, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !526, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !538, metadata !541, metadata !542, metadata !543, metadata !544, metadata !547, metadata !550, metadata !561, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !658, metadata !659, metadata !660, metadata !661, metadata !662, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !678, metadata !680, metadata !682, metadata !687}
!355 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !356, i32 558, metadata !357, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!356 = metadata !{i32 786473, metadata !9}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!357 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!358 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !359} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!359 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !360, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!360 = metadata !{metadata !361, metadata !362, metadata !363, metadata !466, metadata !467, metadata !469, metadata !470}
!361 = metadata !{i32 786445, metadata !9, metadata !359, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!362 = metadata !{i32 786445, metadata !9, metadata !359, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!363 = metadata !{i32 786445, metadata !9, metadata !359, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !364} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!364 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !365, metadata !464, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!365 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !366} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!366 = metadata !{i32 786454, metadata !9, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !367} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!367 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !368, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!368 = metadata !{metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !413, metadata !440, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !461}
!369 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!370 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!371 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !44} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!372 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!373 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!374 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!375 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !235} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!376 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !377} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!377 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !378} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!378 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !379} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!379 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !380, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!380 = metadata !{metadata !381, metadata !394, metadata !399, metadata !403, metadata !407, metadata !409, metadata !410}
!381 = metadata !{i32 786445, metadata !9, metadata !379, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !382} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!382 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !383, metadata !391, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!383 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !384} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!384 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !385, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!385 = metadata !{metadata !386, metadata !388, metadata !389}
!386 = metadata !{i32 786445, metadata !9, metadata !384, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !387} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!387 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!388 = metadata !{i32 786445, metadata !9, metadata !384, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !151} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!389 = metadata !{i32 786445, metadata !9, metadata !384, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !390} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!390 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!391 = metadata !{metadata !392, metadata !393}
!392 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!393 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!394 = metadata !{i32 786445, metadata !9, metadata !379, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !395} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!395 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !383, metadata !396, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!396 = metadata !{metadata !397, metadata !398}
!397 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!398 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!399 = metadata !{i32 786445, metadata !9, metadata !379, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !400} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!400 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !383, metadata !401, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!401 = metadata !{metadata !397, metadata !402}
!402 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!403 = metadata !{i32 786445, metadata !9, metadata !379, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !404} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!404 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !383, metadata !405, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!405 = metadata !{metadata !397, metadata !406}
!406 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!407 = metadata !{i32 786445, metadata !9, metadata !379, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !408} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!408 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !383, metadata !207, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!409 = metadata !{i32 786445, metadata !9, metadata !379, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !408} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!410 = metadata !{i32 786445, metadata !9, metadata !379, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !411} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!411 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !383, metadata !412, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!412 = metadata !{metadata !392}
!413 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !414} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!414 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !415} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!415 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !416} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!416 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !417, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!417 = metadata !{metadata !418, metadata !421, metadata !422, metadata !425, metadata !428, metadata !432, metadata !433, metadata !437, metadata !438, metadata !439}
!418 = metadata !{i32 786445, metadata !9, metadata !416, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !419} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!419 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !383, metadata !420, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!420 = metadata !{metadata !397}
!421 = metadata !{i32 786445, metadata !9, metadata !416, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !408} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!422 = metadata !{i32 786445, metadata !9, metadata !416, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !423} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!423 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !383, metadata !424, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!424 = metadata !{metadata !392, metadata !208}
!425 = metadata !{i32 786445, metadata !9, metadata !416, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !426} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!426 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !383, metadata !427, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!427 = metadata !{metadata !402, metadata !208}
!428 = metadata !{i32 786445, metadata !9, metadata !416, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !429} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!429 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !383, metadata !430, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!430 = metadata !{metadata !402, metadata !431}
!431 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!432 = metadata !{i32 786445, metadata !9, metadata !416, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !429} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!433 = metadata !{i32 786445, metadata !9, metadata !416, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !434} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!434 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !383, metadata !435, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!435 = metadata !{metadata !402, metadata !436}
!436 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!437 = metadata !{i32 786445, metadata !9, metadata !416, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !434} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!438 = metadata !{i32 786445, metadata !9, metadata !416, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !429} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!439 = metadata !{i32 786445, metadata !9, metadata !416, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !429} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!440 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !441} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!441 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !442} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!442 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !443} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!443 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !444, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!444 = metadata !{metadata !445, metadata !446, metadata !447}
!445 = metadata !{i32 786445, metadata !9, metadata !443, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!446 = metadata !{i32 786445, metadata !9, metadata !443, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!447 = metadata !{i32 786445, metadata !9, metadata !443, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !448} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!448 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !443} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!449 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !44} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!450 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !266} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!451 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !266} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!452 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !266} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!453 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !44} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!454 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !266} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!455 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !266} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!456 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !266} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!457 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !458} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!458 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !459} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!459 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !460, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!460 = metadata !{metadata !31, metadata !44}
!461 = metadata !{i32 786445, metadata !9, metadata !367, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !462} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!462 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !44, metadata !463, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!463 = metadata !{metadata !392, metadata !397}
!464 = metadata !{metadata !465}
!465 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!466 = metadata !{i32 786445, metadata !9, metadata !359, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !44} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!467 = metadata !{i32 786445, metadata !9, metadata !359, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !468} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!468 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!469 = metadata !{i32 786445, metadata !9, metadata !359, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !468} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!470 = metadata !{i32 786445, metadata !9, metadata !359, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !468} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!471 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !356, i32 559, metadata !357, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!472 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !356, i32 560, metadata !357, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!473 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !356, i32 561, metadata !357, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!474 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !356, i32 562, metadata !357, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!475 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !356, i32 565, metadata !476, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!476 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !477} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!477 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !387} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!478 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !356, i32 566, metadata !479, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!479 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !476} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!480 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !356, i32 567, metadata !481, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!481 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !266} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!482 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !356, i32 569, metadata !33, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!483 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !356, i32 570, metadata !33, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!484 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !356, i32 572, metadata !44, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!485 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !356, i32 572, metadata !44, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!486 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !356, i32 573, metadata !127, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!487 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !356, i32 574, metadata !26, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!488 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !356, i32 578, metadata !44, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!489 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !356, i32 579, metadata !44, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!490 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !356, i32 583, metadata !491, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!491 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !481} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!492 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !356, i32 584, metadata !491, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!493 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !356, i32 585, metadata !494, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!494 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !491} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!495 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !356, i32 586, metadata !44, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!496 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !356, i32 587, metadata !44, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!497 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !356, i32 588, metadata !44, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!498 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !356, i32 589, metadata !44, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!499 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !356, i32 592, metadata !476, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!500 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !356, i32 593, metadata !476, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!501 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !356, i32 595, metadata !479, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!502 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !356, i32 596, metadata !479, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!503 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !356, i32 598, metadata !476, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!504 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !356, i32 599, metadata !479, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!505 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !356, i32 601, metadata !476, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!506 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !356, i32 602, metadata !479, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!507 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !356, i32 604, metadata !508, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!508 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !509} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!509 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !233} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!510 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !356, i32 605, metadata !509, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!511 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !356, i32 608, metadata !512, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!512 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!513 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !356, i32 609, metadata !512, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!514 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !356, i32 610, metadata !44, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!515 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !356, i32 612, metadata !44, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!516 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !356, i32 612, metadata !44, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!517 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !356, i32 612, metadata !44, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!518 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !356, i32 613, metadata !44, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!519 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !356, i32 613, metadata !44, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!520 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !356, i32 613, metadata !44, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!521 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !356, i32 614, metadata !44, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!522 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !356, i32 617, metadata !523, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!523 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !324, metadata !524, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!524 = metadata !{metadata !525}
!525 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!526 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !356, i32 620, metadata !527, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!527 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !44, metadata !528, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!528 = metadata !{metadata !529, metadata !529}
!529 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!530 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !356, i32 620, metadata !527, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!531 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !356, i32 620, metadata !527, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!532 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !356, i32 621, metadata !527, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!533 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !356, i32 621, metadata !527, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!534 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !356, i32 621, metadata !527, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!535 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !356, i32 622, metadata !536, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!536 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !44, metadata !537, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!537 = metadata !{metadata !392, metadata !529, metadata !529}
!538 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !356, i32 623, metadata !539, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!539 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !44, metadata !540, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!540 = metadata !{metadata !397, metadata !208, metadata !208}
!541 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !356, i32 623, metadata !539, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!542 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !356, i32 624, metadata !539, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!543 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !356, i32 624, metadata !539, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!544 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !356, i32 625, metadata !545, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!545 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !44, metadata !546, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!546 = metadata !{metadata !208, metadata !208}
!547 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !356, i32 625, metadata !548, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!548 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !44, metadata !549, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!549 = metadata !{metadata !529}
!550 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !356, i32 1201, metadata !551, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!551 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !552} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!552 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !553} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!553 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !554, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!554 = metadata !{metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560}
!555 = metadata !{i32 786445, metadata !9, metadata !553, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!556 = metadata !{i32 786445, metadata !9, metadata !553, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!557 = metadata !{i32 786445, metadata !9, metadata !553, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !44} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!558 = metadata !{i32 786445, metadata !9, metadata !553, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!559 = metadata !{i32 786445, metadata !9, metadata !553, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!560 = metadata !{i32 786445, metadata !9, metadata !553, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!561 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !356, i32 1202, metadata !562, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!562 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !563} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!563 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !564} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!564 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !565, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!565 = metadata !{metadata !566, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !584, metadata !585, metadata !589, metadata !590, metadata !591, metadata !592, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600}
!566 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !567} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!567 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!568 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !527} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!569 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !527} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!570 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !527} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!571 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !494} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!572 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !491} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!573 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !44} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!574 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !44} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!575 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !206} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!576 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !206} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!577 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !481} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!578 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !548} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!579 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !44} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!580 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !581} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!581 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !582} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!582 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !583} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!583 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!584 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !44} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!585 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !586} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!586 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !587} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!587 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !588} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!588 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !508} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!589 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !586} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!590 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !586} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!591 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !586} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!592 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !593} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!593 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !234, metadata !540, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!594 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !44} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!595 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !44} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!596 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !44} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!597 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !44} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!598 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !44} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!599 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !44} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!600 = metadata !{i32 786445, metadata !9, metadata !564, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !44} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!601 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !356, i32 1203, metadata !563, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!602 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !356, i32 1203, metadata !563, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!603 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !356, i32 1204, metadata !563, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!604 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !356, i32 1204, metadata !563, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!605 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !356, i32 1230, metadata !606, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!606 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !607} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!607 = metadata !{i32 786454, metadata !9, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !608} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!608 = metadata !{i32 786451, metadata !609, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !610, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!609 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!610 = metadata !{metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !631, metadata !632, metadata !633, metadata !634, metadata !636, metadata !637, metadata !639, metadata !643, metadata !645, metadata !647, metadata !648, metadata !649, metadata !650, metadata !651, metadata !653, metadata !654}
!611 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!612 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !323} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!613 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !323} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!614 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !323} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!615 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !323} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!616 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !323} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!617 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !323} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!618 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !323} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!619 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !323} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!620 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !323} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!621 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !323} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!622 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !323} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!623 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !624} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!624 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !625} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!625 = metadata !{i32 786451, metadata !609, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !626, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!626 = metadata !{metadata !627, metadata !628, metadata !630}
!627 = metadata !{i32 786445, metadata !609, metadata !625, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !624} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!628 = metadata !{i32 786445, metadata !609, metadata !625, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !629} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!629 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !608} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!630 = metadata !{i32 786445, metadata !609, metadata !625, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!631 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !629} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!632 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !44} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!633 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !44} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!634 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !635} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!635 = metadata !{i32 786454, metadata !609, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !583} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!636 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !387} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!637 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !638} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!638 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!639 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !640} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!640 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !324, metadata !641, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!641 = metadata !{metadata !642}
!642 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!643 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !644} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!644 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!645 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !646} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!646 = metadata !{i32 786454, metadata !609, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !583} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!647 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !644} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!648 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !644} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!649 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !644} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!650 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !644} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!651 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !652} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!652 = metadata !{i32 786454, metadata !609, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !390} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!653 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !44} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!654 = metadata !{i32 786445, metadata !609, metadata !608, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !655} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!655 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !324, metadata !656, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!656 = metadata !{metadata !657}
!657 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!658 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !356, i32 1231, metadata !606, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!659 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !356, i32 1232, metadata !606, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!660 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !356, i32 1233, metadata !44, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!661 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !356, i32 1234, metadata !44, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!662 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !356, i32 1237, metadata !663, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!663 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !44, metadata !656, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!664 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !356, i32 1238, metadata !663, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!665 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !356, i32 1239, metadata !663, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!666 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !356, i32 1240, metadata !663, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!667 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !356, i32 1241, metadata !663, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!668 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !356, i32 1242, metadata !663, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!669 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !356, i32 1456, metadata !44, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!670 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !356, i32 1465, metadata !44, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!671 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !356, i32 1466, metadata !44, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!672 = metadata !{i32 786484, i32 0, null, metadata !"WriteNALU", metadata !"WriteNALU", metadata !"", metadata !673, i32 28, metadata !675, i32 0, i32 1, i32 (%struct.NALU_t*)** @WriteNALU, null} ; [ DW_TAG_variable ] [WriteNALU] [line 28] [def]
!673 = metadata !{i32 786473, metadata !674}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h]
!674 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!675 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !676} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!676 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !677, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!677 = metadata !{metadata !44, metadata !169}
!678 = metadata !{i32 786484, i32 0, null, metadata !"SeqParSet", metadata !"SeqParSet", metadata !"", metadata !21, i32 34, metadata !679, i32 0, i32 1, [32 x %struct.seq_parameter_set_rbsp_t]* @SeqParSet, null} ; [ DW_TAG_variable ] [SeqParSet] [line 34] [def]
!679 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 545792, i64 32, i32 0, i32 0, metadata !27, metadata !107, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 545792, align 32, offset 0] [from seq_parameter_set_rbsp_t]
!680 = metadata !{i32 786484, i32 0, null, metadata !"PicParSet", metadata !"PicParSet", metadata !"", metadata !21, i32 35, metadata !681, i32 0, i32 1, [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, null} ; [ DW_TAG_variable ] [PicParSet] [line 35] [def]
!681 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 491520, i64 64, i32 0, i32 0, metadata !128, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 491520, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!682 = metadata !{i32 786484, i32 0, null, metadata !"ZZ_SCAN8", metadata !"ZZ_SCAN8", metadata !"", metadata !21, i32 41, metadata !683, i32 1, i32 1, [64 x i8]* @ZZ_SCAN8, null} ; [ DW_TAG_variable ] [ZZ_SCAN8] [line 41] [local] [def]
!683 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !684, metadata !685, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from ]
!684 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from byte]
!685 = metadata !{metadata !686}
!686 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!687 = metadata !{i32 786484, i32 0, null, metadata !"ZZ_SCAN", metadata !"ZZ_SCAN", metadata !"", metadata !21, i32 37, metadata !688, i32 1, i32 1, [16 x i8]* @ZZ_SCAN, null} ; [ DW_TAG_variable ] [ZZ_SCAN] [line 37] [local] [def]
!688 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 8, i32 0, i32 0, metadata !684, metadata !549, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from ]
!689 = metadata !{%struct.seq_parameter_set_rbsp_t* null}
!690 = metadata !{i32 62, i32 0, metadata !20, null}
!691 = metadata !{%struct.pic_parameter_set_rbsp_t* null}
!692 = metadata !{i32 63, i32 0, metadata !20, null}
!693 = metadata !{i32 65, i32 0, metadata !20, null}
!694 = metadata !{i32 66, i32 0, metadata !20, null}
!695 = metadata !{i32 68, i32 0, metadata !20, null}
!696 = metadata !{i32 70, i32 0, metadata !20, null}
!697 = metadata !{metadata !"any pointer", metadata !698}
!698 = metadata !{metadata !"omnipotent char", metadata !699}
!699 = metadata !{metadata !"Simple C/C++ TBAA"}
!700 = metadata !{metadata !"int", metadata !698}
!701 = metadata !{i32 72, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !20, i32 71, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!703 = metadata !{i32 74, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !1, metadata !702, i32 73, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!705 = metadata !{i32 75, i32 0, metadata !704, null}
!706 = metadata !{i32 76, i32 0, metadata !704, null}
!707 = metadata !{i32 77, i32 0, metadata !704, null}
!708 = metadata !{i32 78, i32 0, metadata !704, null}
!709 = metadata !{i32 79, i32 0, metadata !704, null}
!710 = metadata !{i32 81, i32 0, metadata !704, null}
!711 = metadata !{i32 84, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !1, metadata !702, i32 83, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!713 = metadata !{i32 85, i32 0, metadata !712, null}
!714 = metadata !{i32 86, i32 0, metadata !712, null}
!715 = metadata !{i32 87, i32 0, metadata !712, null}
!716 = metadata !{i32 88, i32 0, metadata !712, null}
!717 = metadata !{i32 89, i32 0, metadata !712, null}
!718 = metadata !{i32 95, i32 0, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !20, i32 93, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!720 = metadata !{i32 94, i32 0, metadata !719, null}
!721 = metadata !{i32 98, i32 0, metadata !719, null}
!722 = metadata !{i32 101, i32 0, metadata !719, null}
!723 = metadata !{i32 105, i32 0, metadata !20, null}
!724 = metadata !{i32 106, i32 0, metadata !20, null}
!725 = metadata !{i32 107, i32 0, metadata !20, null}
!726 = metadata !{i32 203, i32 0, metadata !198, null}
!727 = metadata !{[4 x i32]* @GenerateSequenceParameterSet.SubWidthC}
!728 = metadata !{i32 206, i32 0, metadata !198, null}
!729 = metadata !{[4 x i32]* @GenerateSequenceParameterSet.SubHeightC}
!730 = metadata !{i32 207, i32 0, metadata !198, null}
!731 = metadata !{i32 836, i32 0, metadata !353, metadata !732}
!732 = metadata !{i32 209, i32 0, metadata !198, null}
!733 = metadata !{i32 217, i32 0, metadata !198, null}
!734 = metadata !{i32 220, i32 0, metadata !198, null}
!735 = metadata !{i32 854, i32 0, metadata !350, metadata !736}
!736 = metadata !{i32 221, i32 0, metadata !198, null}
!737 = metadata !{i32 224, i32 0, metadata !198, null}
!738 = metadata !{i32 230, i32 0, metadata !198, null}
!739 = metadata !{i32 233, i32 0, metadata !198, null}
!740 = metadata !{i32 225, i32 0, metadata !198, null}
!741 = metadata !{i32 234, i32 0, metadata !198, null}
!742 = metadata !{i32 235, i32 0, metadata !198, null}
!743 = metadata !{i32 236, i32 0, metadata !198, null}
!744 = metadata !{i32 243, i32 0, metadata !198, null}
!745 = metadata !{i32 244, i32 0, metadata !198, null}
!746 = metadata !{i32 246, i32 0, metadata !198, null}
!747 = metadata !{i32 247, i32 0, metadata !198, null}
!748 = metadata !{i32 248, i32 0, metadata !198, null}
!749 = metadata !{i32 249, i32 0, metadata !198, null}
!750 = metadata !{i32 250, i32 0, metadata !198, null}
!751 = metadata !{i32 252, i32 0, metadata !752, null}
!752 = metadata !{i32 786443, metadata !1, metadata !198, i32 252, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!753 = metadata !{i32 254, i32 0, metadata !754, null}
!754 = metadata !{i32 786443, metadata !1, metadata !752, i32 253, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!755 = metadata !{i32 259, i32 0, metadata !198, null}
!756 = metadata !{i32 262, i32 0, metadata !198, null}
!757 = metadata !{i32 264, i32 0, metadata !198, null}
!758 = metadata !{i32 267, i32 0, metadata !198, null}
!759 = metadata !{i32 268, i32 0, metadata !198, null}
!760 = metadata !{i32 271, i32 0, metadata !198, null}
!761 = metadata !{i32 272, i32 0, metadata !198, null}
!762 = metadata !{i32 275, i32 0, metadata !198, null}
!763 = metadata !{i32 277, i32 0, metadata !198, null}
!764 = metadata !{i32 285, i32 0, metadata !212, null}
!765 = metadata !{i32 287, i32 0, metadata !212, null}
!766 = metadata !{i32 288, i32 0, metadata !212, null}
!767 = metadata !{i32 290, i32 0, metadata !212, null}
!768 = metadata !{i32 295, i32 0, metadata !198, null}
!769 = metadata !{i32 298, i32 0, metadata !770, null}
!770 = metadata !{i32 786443, metadata !1, metadata !198, i32 296, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!771 = metadata !{i32 299, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !770, i32 299, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!773 = metadata !{i32 302, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !772, i32 300, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!775 = metadata !{i32 305, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !774, i32 304, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!777 = metadata !{i32 301, i32 0, metadata !774, null}
!778 = metadata !{i32 306, i32 0, metadata !776, null}
!779 = metadata !{i32 308, i32 0, metadata !776, null}
!780 = metadata !{i32 314, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !198, i32 313, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!782 = metadata !{i32 315, i32 0, metadata !783, null}
!783 = metadata !{i32 786443, metadata !1, metadata !781, i32 315, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!784 = metadata !{i32 316, i32 0, metadata !783, null}
!785 = metadata !{i32 321, i32 0, metadata !198, null}
!786 = metadata !{i32 323, i32 0, metadata !787, null}
!787 = metadata !{i32 786443, metadata !1, metadata !198, i32 322, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!788 = metadata !{i32 324, i32 0, metadata !787, null}
!789 = metadata !{i32 325, i32 0, metadata !787, null}
!790 = metadata !{i32 326, i32 0, metadata !787, null}
!791 = metadata !{i32 327, i32 0, metadata !787, null}
!792 = metadata !{i32 328, i32 0, metadata !787, null}
!793 = metadata !{i32 330, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !787, i32 329, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!795 = metadata !{i32 332, i32 0, metadata !787, null}
!796 = metadata !{i32 331, i32 0, metadata !794, null}
!797 = metadata !{i32 334, i32 0, metadata !798, null}
!798 = metadata !{i32 786443, metadata !1, metadata !787, i32 333, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!799 = metadata !{i32 335, i32 0, metadata !798, null}
!800 = metadata !{i32 339, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !198, i32 338, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!802 = metadata !{i32 341, i32 0, metadata !198, null}
!803 = metadata !{i32 361, i32 0, metadata !217, null}
!804 = metadata !{i32 362, i32 0, metadata !217, null}
!805 = metadata !{i32 363, i32 0, metadata !217, null}
!806 = metadata !{i32 836, i32 0, metadata !353, metadata !807}
!807 = metadata !{i32 367, i32 0, metadata !217, null}
!808 = metadata !{i32 376, i32 0, metadata !217, null}
!809 = metadata !{i32 377, i32 0, metadata !217, null}
!810 = metadata !{i32 378, i32 0, metadata !217, null}
!811 = metadata !{i32 381, i32 0, metadata !217, null}
!812 = metadata !{i32 383, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !217, i32 382, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!814 = metadata !{i32 384, i32 0, metadata !813, null}
!815 = metadata !{i32 385, i32 0, metadata !816, null}
!816 = metadata !{i32 786443, metadata !1, metadata !813, i32 385, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!817 = metadata !{i32 387, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !816, i32 386, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!819 = metadata !{i32 388, i32 0, metadata !818, null}
!820 = metadata !{i32 391, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !818, i32 390, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!822 = metadata !{i32 392, i32 0, metadata !821, null}
!823 = metadata !{i32 394, i32 0, metadata !821, null}
!824 = metadata !{i32 400, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !1, metadata !217, i32 399, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!826 = metadata !{i32 401, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !1, metadata !825, i32 401, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!828 = metadata !{i32 404, i32 0, metadata !825, null}
!829 = metadata !{i32 402, i32 0, metadata !827, null}
!830 = metadata !{i32 408, i32 0, metadata !217, null}
!831 = metadata !{i32 412, i32 0, metadata !217, null}
!832 = metadata !{i32 416, i32 0, metadata !217, null}
!833 = metadata !{i32 417, i32 0, metadata !217, null}
!834 = metadata !{i32 421, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !217, i32 418, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!836 = metadata !{i32 422, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !1, metadata !835, i32 422, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!838 = metadata !{i32 424, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !1, metadata !837, i32 423, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!840 = metadata !{i32 429, i32 0, metadata !835, null}
!841 = metadata !{i32 430, i32 0, metadata !835, null}
!842 = metadata !{i32 433, i32 0, metadata !835, null}
!843 = metadata !{i32 434, i32 0, metadata !844, null}
!844 = metadata !{i32 786443, metadata !1, metadata !835, i32 434, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!845 = metadata !{i32 436, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !844, i32 435, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!847 = metadata !{i32 437, i32 0, metadata !846, null}
!848 = metadata !{i32 443, i32 0, metadata !835, null}
!849 = metadata !{i32 445, i32 0, metadata !835, null}
!850 = metadata !{i32 446, i32 0, metadata !835, null}
!851 = metadata !{i32 447, i32 0, metadata !835, null}
!852 = metadata !{i32 449, i32 0, metadata !835, null}
!853 = metadata !{i32 450, i32 0, metadata !835, null}
!854 = metadata !{i32 454, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !835, i32 454, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!856 = metadata !{i32 455, i32 0, metadata !855, null}
!857 = metadata !{i32 459, i32 0, metadata !835, null}
!858 = metadata !{i32 460, i32 0, metadata !835, null}
!859 = metadata !{i32 464, i32 0, metadata !217, null}
!860 = metadata !{i32 465, i32 0, metadata !217, null}
!861 = metadata !{i32 467, i32 0, metadata !217, null}
!862 = metadata !{i32 468, i32 0, metadata !217, null}
!863 = metadata !{i32 470, i32 0, metadata !217, null}
!864 = metadata !{i32 471, i32 0, metadata !217, null}
!865 = metadata !{i32 473, i32 0, metadata !217, null}
!866 = metadata !{i32 474, i32 0, metadata !217, null}
!867 = metadata !{i32 476, i32 0, metadata !868, null}
!868 = metadata !{i32 786443, metadata !1, metadata !217, i32 475, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!869 = metadata !{i32 477, i32 0, metadata !868, null}
!870 = metadata !{i32 478, i32 0, metadata !868, null}
!871 = metadata !{i32 480, i32 0, metadata !217, null}
!872 = metadata !{i32 482, i32 0, metadata !217, null}
!873 = metadata !{i32 483, i32 0, metadata !217, null}
!874 = metadata !{i32 485, i32 0, metadata !217, null}
!875 = metadata !{i32 486, i32 0, metadata !217, null}
!876 = metadata !{i32 122, i32 0, metadata !165, null}
!877 = metadata !{i32 124, i32 0, metadata !165, null}
!878 = metadata !{i32 143, i32 0, metadata !166, null}
!879 = metadata !{i32 144, i32 0, metadata !166, null}
!880 = metadata !{i32 146, i32 0, metadata !166, null}
!881 = metadata !{i32 148, i32 0, metadata !166, null}
!882 = metadata !{i32 149, i32 0, metadata !166, null}
!883 = metadata !{i32 150, i32 0, metadata !166, null}
!884 = metadata !{i32 153, i32 0, metadata !166, null}
!885 = metadata !{i32 561, i32 0, metadata !320, null}
!886 = metadata !{i32 564, i32 0, metadata !320, null}
!887 = metadata !{i32 567, i32 0, metadata !320, null}
!888 = metadata !{i32 571, i32 0, metadata !320, null}
!889 = metadata !{i32 572, i32 0, metadata !320, null}
!890 = metadata !{i32 574, i32 0, metadata !320, null}
!891 = metadata !{i32 575, i32 0, metadata !320, null}
!892 = metadata !{i32 577, i32 0, metadata !320, null}
!893 = metadata !{i32 579, i32 0, metadata !320, null}
!894 = metadata !{i32 580, i32 0, metadata !320, null}
!895 = metadata !{i32 581, i32 0, metadata !320, null}
!896 = metadata !{i32 582, i32 0, metadata !320, null}
!897 = metadata !{i32 583, i32 0, metadata !320, null}
!898 = metadata !{i32 585, i32 0, metadata !320, null}
!899 = metadata !{i32 587, i32 0, metadata !320, null}
!900 = metadata !{i32 590, i32 0, metadata !320, null}
!901 = metadata !{i32 595, i32 0, metadata !902, null}
!902 = metadata !{i32 786443, metadata !1, metadata !320, i32 594, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!903 = metadata !{i32 596, i32 0, metadata !902, null}
!904 = metadata !{i32 597, i32 0, metadata !902, null}
!905 = metadata !{i32 598, i32 0, metadata !902, null}
!906 = metadata !{i32 599, i32 0, metadata !902, null}
!907 = metadata !{i32 600, i32 0, metadata !902, null}
!908 = metadata !{i32 603, i32 0, metadata !902, null}
!909 = metadata !{i32 605, i32 0, metadata !902, null}
!910 = metadata !{i32 609, i32 0, metadata !911, null}
!911 = metadata !{i32 786443, metadata !1, metadata !912, i32 608, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!912 = metadata !{i32 786443, metadata !1, metadata !913, i32 607, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!913 = metadata !{i32 786443, metadata !1, metadata !902, i32 606, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!914 = metadata !{i32 610, i32 0, metadata !911, null}
!915 = metadata !{i32 612, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !911, i32 611, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!917 = metadata !{i32 613, i32 0, metadata !916, null}
!918 = metadata !{i32 615, i32 0, metadata !916, null}
!919 = metadata !{i32 607, i32 0, metadata !912, null}
!920 = metadata !{i32 621, i32 0, metadata !320, null}
!921 = metadata !{i32 622, i32 0, metadata !320, null}
!922 = metadata !{i32 624, i32 0, metadata !320, null}
!923 = metadata !{i32 625, i32 0, metadata !320, null}
!924 = metadata !{i32 628, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !320, i32 627, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!926 = metadata !{i32 629, i32 0, metadata !925, null}
!927 = metadata !{i32 630, i32 0, metadata !925, null}
!928 = metadata !{i32 631, i32 0, metadata !925, null}
!929 = metadata !{i32 632, i32 0, metadata !930, null}
!930 = metadata !{i32 786443, metadata !1, metadata !925, i32 632, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!931 = metadata !{i32 633, i32 0, metadata !930, null}
!932 = metadata !{i32 635, i32 0, metadata !320, null}
!933 = metadata !{i32 636, i32 0, metadata !320, null}
!934 = metadata !{i32 637, i32 0, metadata !320, null}
!935 = metadata !{i32 638, i32 0, metadata !320, null}
!936 = metadata !{i32 639, i32 0, metadata !320, null}
!937 = metadata !{i32 640, i32 0, metadata !320, null}
!938 = metadata !{i32 642, i32 0, metadata !939, null}
!939 = metadata !{i32 786443, metadata !1, metadata !320, i32 641, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!940 = metadata !{i32 643, i32 0, metadata !939, null}
!941 = metadata !{i32 644, i32 0, metadata !320, null}
!942 = metadata !{i32 646, i32 0, metadata !320, null}
!943 = metadata !{i32 647, i32 0, metadata !320, null}
!944 = metadata !{i32 649, i32 0, metadata !945, null}
!945 = metadata !{i32 786443, metadata !1, metadata !320, i32 648, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!946 = metadata !{i32 650, i32 0, metadata !945, null}
!947 = metadata !{i32 651, i32 0, metadata !945, null}
!948 = metadata !{i32 652, i32 0, metadata !945, null}
!949 = metadata !{i32 653, i32 0, metadata !945, null}
!950 = metadata !{i32 655, i32 0, metadata !320, null}
!951 = metadata !{i32 656, i32 0, metadata !320, null}
!952 = metadata !{i32 786688, metadata !344, metadata !"len", metadata !21, i32 869, metadata !44, i32 0, metadata !953} ; [ DW_TAG_auto_variable ] [len] [line 869]
!953 = metadata !{i32 657, i32 0, metadata !320, null}
!954 = metadata !{i32 869, i32 0, metadata !344, metadata !953}
!955 = metadata !{i32 872, i32 0, metadata !344, metadata !953}
!956 = metadata !{i32 896, i32 0, metadata !957, metadata !953}
!957 = metadata !{i32 786443, metadata !1, metadata !344, i32 895, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!958 = metadata !{i32 897, i32 0, metadata !957, metadata !953}
!959 = metadata !{i32 875, i32 0, metadata !960, metadata !953}
!960 = metadata !{i32 786443, metadata !1, metadata !344, i32 873, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!961 = metadata !{i32 876, i32 0, metadata !960, metadata !953}
!962 = metadata !{i32 877, i32 0, metadata !960, metadata !953}
!963 = metadata !{i32 878, i32 0, metadata !960, metadata !953}
!964 = metadata !{i32 879, i32 0, metadata !960, metadata !953}
!965 = metadata !{i32 880, i32 0, metadata !960, metadata !953}
!966 = metadata !{i32 881, i32 0, metadata !960, metadata !953}
!967 = metadata !{i32 882, i32 0, metadata !960, metadata !953}
!968 = metadata !{i32 883, i32 0, metadata !960, metadata !953}
!969 = metadata !{i32 884, i32 0, metadata !960, metadata !953}
!970 = metadata !{i32 885, i32 0, metadata !960, metadata !953}
!971 = metadata !{i32 886, i32 0, metadata !960, metadata !953}
!972 = metadata !{i32 887, i32 0, metadata !960, metadata !953}
!973 = metadata !{i32 888, i32 0, metadata !960, metadata !953}
!974 = metadata !{i32 889, i32 0, metadata !960, metadata !953}
!975 = metadata !{i32 890, i32 0, metadata !960, metadata !953}
!976 = metadata !{i32 659, i32 0, metadata !320, null}
!977 = metadata !{i32 661, i32 0, metadata !320, null}
!978 = metadata !{i32 663, i32 0, metadata !320, null}
!979 = metadata !{i32 664, i32 0, metadata !320, null}
!980 = metadata !{i32 666, i32 0, metadata !320, null}
!981 = metadata !{i32 171, i32 0, metadata !189, null}
!982 = metadata !{i32 173, i32 0, metadata !189, null}
!983 = metadata !{i32 174, i32 0, metadata !189, null}
!984 = metadata !{i32 176, i32 0, metadata !189, null}
!985 = metadata !{i32 178, i32 0, metadata !189, null}
!986 = metadata !{i32 179, i32 0, metadata !189, null}
!987 = metadata !{i32 180, i32 0, metadata !189, null}
!988 = metadata !{i32 183, i32 0, metadata !189, null}
!989 = metadata !{i32 689, i32 0, metadata !332, null}
!990 = metadata !{i32 692, i32 0, metadata !332, null}
!991 = metadata !{i32 697, i32 0, metadata !332, null}
!992 = metadata !{i32 702, i32 0, metadata !332, null}
!993 = metadata !{i32 703, i32 0, metadata !332, null}
!994 = metadata !{i32 705, i32 0, metadata !332, null}
!995 = metadata !{i32 706, i32 0, metadata !332, null}
!996 = metadata !{i32 708, i32 0, metadata !332, null}
!997 = metadata !{i32 710, i32 0, metadata !332, null}
!998 = metadata !{i32 711, i32 0, metadata !332, null}
!999 = metadata !{i32 712, i32 0, metadata !332, null}
!1000 = metadata !{i32 713, i32 0, metadata !332, null}
!1001 = metadata !{i32 714, i32 0, metadata !332, null}
!1002 = metadata !{i32 717, i32 0, metadata !332, null}
!1003 = metadata !{i32 719, i32 0, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !1, metadata !332, i32 718, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1005 = metadata !{i32 720, i32 0, metadata !1004, null}
!1006 = metadata !{i32 724, i32 0, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !1, metadata !1004, i32 724, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1008 = metadata !{i32 722, i32 0, metadata !1009, null}
!1009 = metadata !{i32 786443, metadata !1, metadata !1004, i32 721, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1010 = metadata !{i32 721, i32 0, metadata !1009, null}
!1011 = metadata !{i32 727, i32 0, metadata !1012, null}
!1012 = metadata !{i32 786443, metadata !1, metadata !1007, i32 725, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1013 = metadata !{i32 728, i32 0, metadata !1012, null}
!1014 = metadata !{i32 734, i32 0, metadata !1015, null}
!1015 = metadata !{i32 786443, metadata !1, metadata !1004, i32 733, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1016 = metadata !{i32 735, i32 0, metadata !1015, null}
!1017 = metadata !{i32 736, i32 0, metadata !1015, null}
!1018 = metadata !{i32 739, i32 0, metadata !1019, null}
!1019 = metadata !{i32 786443, metadata !1, metadata !1004, i32 738, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1020 = metadata !{i32 741, i32 0, metadata !1019, null}
!1021 = metadata !{i32 748, i32 0, metadata !1019, null}
!1022 = metadata !{i32 749, i32 0, metadata !1023, null}
!1023 = metadata !{i32 786443, metadata !1, metadata !1019, i32 749, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1024 = metadata !{i32 750, i32 0, metadata !1023, null}
!1025 = metadata !{i32 755, i32 0, metadata !332, null}
!1026 = metadata !{i32 756, i32 0, metadata !332, null}
!1027 = metadata !{i32 757, i32 0, metadata !332, null}
!1028 = metadata !{i32 758, i32 0, metadata !332, null}
!1029 = metadata !{i32 759, i32 0, metadata !332, null}
!1030 = metadata !{i32 760, i32 0, metadata !332, null}
!1031 = metadata !{i32 836, i32 0, metadata !353, metadata !1032}
!1032 = metadata !{i32 762, i32 0, metadata !332, null}
!1033 = metadata !{i32 763, i32 0, metadata !332, null}
!1034 = metadata !{i32 767, i32 0, metadata !332, null}
!1035 = metadata !{i32 769, i32 0, metadata !332, null}
!1036 = metadata !{i32 771, i32 0, metadata !332, null}
!1037 = metadata !{i32 772, i32 0, metadata !332, null}
!1038 = metadata !{i32 773, i32 0, metadata !332, null}
!1039 = metadata !{i32 776, i32 0, metadata !332, null}
!1040 = metadata !{i32 781, i32 0, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !1, metadata !332, i32 780, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1042 = metadata !{i32 783, i32 0, metadata !1041, null}
!1043 = metadata !{i32 785, i32 0, metadata !1041, null}
!1044 = metadata !{i32 787, i32 0, metadata !1045, null}
!1045 = metadata !{i32 786443, metadata !1, metadata !1046, i32 787, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1046 = metadata !{i32 786443, metadata !1, metadata !1041, i32 786, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1047 = metadata !{i32 789, i32 0, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !1, metadata !1045, i32 788, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1049 = metadata !{i32 791, i32 0, metadata !1048, null}
!1050 = metadata !{i32 793, i32 0, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !1, metadata !1048, i32 792, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1052 = metadata !{i32 794, i32 0, metadata !1051, null}
!1053 = metadata !{i32 796, i32 0, metadata !1051, null}
!1054 = metadata !{i32 800, i32 0, metadata !1041, null}
!1055 = metadata !{i32 801, i32 0, metadata !1041, null}
!1056 = metadata !{i32 803, i32 0, metadata !332, null}
!1057 = metadata !{i32 805, i32 0, metadata !332, null}
!1058 = metadata !{i32 808, i32 0, metadata !332, null}
!1059 = metadata !{i32 809, i32 0, metadata !332, null}
!1060 = metadata !{i32 811, i32 0, metadata !332, null}
!1061 = metadata !{i32 509, i32 0, metadata !230, null}
!1062 = metadata !{i32 512, i32 0, metadata !230, null}
!1063 = metadata !{i32 8}
!1064 = metadata !{i32 515, i32 0, metadata !230, null}
!1065 = metadata !{i32 516, i32 0, metadata !230, null}
!1066 = metadata !{i32 518, i32 0, metadata !1067, null}
!1067 = metadata !{i32 786443, metadata !1, metadata !230, i32 518, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1068 = metadata !{i32 520, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !1067, i32 519, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1070 = metadata !{i32 522, i32 0, metadata !1069, null}
!1071 = metadata !{i32 535, i32 0, metadata !1069, null}
!1072 = metadata !{i32 524, i32 0, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !1, metadata !1069, i32 523, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/parset.c]
!1074 = metadata !{metadata !"short", metadata !698}
!1075 = metadata !{i32 525, i32 0, metadata !1073, null}
!1076 = metadata !{i32 526, i32 0, metadata !1073, null}
!1077 = metadata !{i32 527, i32 0, metadata !1073, null}
!1078 = metadata !{i32 528, i32 0, metadata !1073, null}
!1079 = metadata !{i32 530, i32 0, metadata !1073, null}
!1080 = metadata !{i32 531, i32 0, metadata !1073, null}
!1081 = metadata !{i32 532, i32 0, metadata !1073, null}
!1082 = metadata !{i32 533, i32 0, metadata !1073, null}
!1083 = metadata !{i32 536, i32 0, metadata !1069, null}
!1084 = metadata !{i32 539, i32 0, metadata !230, null}
