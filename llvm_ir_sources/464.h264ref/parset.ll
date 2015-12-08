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
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@input = external global %struct.InputParameters*
@PicParSet = common global [256 x %struct.pic_parameter_set_rbsp_t] zeroinitializer, align 16
@active_sps = external global %struct.seq_parameter_set_rbsp_t*
@active_pps = external global %struct.pic_parameter_set_rbsp_t*
@GenerateSequenceParameterSet.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@GenerateSequenceParameterSet.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@img = external global %struct.ImageParameters*
@log2_max_frame_num_minus4 = external global i32
@log2_max_pic_order_cnt_lsb_minus4 = external global i32
@Co_located = external global %struct.colocated_params*
@.str = private unnamed_addr constant [46 x i8] c"automatic frame cropping (width) not possible\00", align 1
@.str1 = private unnamed_addr constant [47 x i8] c"automatic frame cropping (height) not possible\00", align 1
@ZZ_SCAN = internal unnamed_addr constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16
@ZZ_SCAN8 = internal unnamed_addr constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 16
@.str3 = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"SeqParameterSet:partition\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"SeqParameterSet:bitstream\00", align 1
@.str6 = private unnamed_addr constant [17 x i8] c"SPS: profile_idc\00", align 1
@.str7 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set0_flag\00", align 1
@.str8 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set1_flag\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set2_flag\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set3_flag\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"SPS: reserved_zero_4bits\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"SPS: level_idc\00", align 1
@.str13 = private unnamed_addr constant [26 x i8] c"SPS: seq_parameter_set_id\00", align 1
@.str14 = private unnamed_addr constant [23 x i8] c"SPS: chroma_format_idc\00", align 1
@.str15 = private unnamed_addr constant [28 x i8] c"SPS: residue_transform_flag\00", align 1
@.str16 = private unnamed_addr constant [27 x i8] c"SPS: bit_depth_luma_minus8\00", align 1
@.str17 = private unnamed_addr constant [29 x i8] c"SPS: bit_depth_chroma_minus8\00", align 1
@.str18 = private unnamed_addr constant [34 x i8] c"SPS: lossless_qpprime_y_zero_flag\00", align 1
@.str19 = private unnamed_addr constant [37 x i8] c"SPS: seq_scaling_matrix_present_flag\00", align 1
@.str20 = private unnamed_addr constant [35 x i8] c"SPS: seq_scaling_list_present_flag\00", align 1
@ScalingList4x4input = external global [6 x [16 x i16]]
@ScalingList4x4 = external global [6 x [16 x i16]]
@UseDefaultScalingMatrix4x4Flag = external global [6 x i16]
@ScalingList8x8input = external global [2 x [64 x i16]]
@ScalingList8x8 = external global [2 x [64 x i16]]
@UseDefaultScalingMatrix8x8Flag = external global [2 x i16]
@.str21 = private unnamed_addr constant [31 x i8] c"SPS: log2_max_frame_num_minus4\00", align 1
@.str22 = private unnamed_addr constant [24 x i8] c"SPS: pic_order_cnt_type\00", align 1
@.str23 = private unnamed_addr constant [39 x i8] c"SPS: log2_max_pic_order_cnt_lsb_minus4\00", align 1
@.str24 = private unnamed_addr constant [38 x i8] c"SPS: delta_pic_order_always_zero_flag\00", align 1
@.str25 = private unnamed_addr constant [28 x i8] c"SPS: offset_for_non_ref_pic\00", align 1
@.str26 = private unnamed_addr constant [36 x i8] c"SPS: offset_for_top_to_bottom_field\00", align 1
@.str27 = private unnamed_addr constant [43 x i8] c"SPS: num_ref_frames_in_pic_order_cnt_cycle\00", align 1
@.str28 = private unnamed_addr constant [26 x i8] c"SPS: offset_for_ref_frame\00", align 1
@.str29 = private unnamed_addr constant [20 x i8] c"SPS: num_ref_frames\00", align 1
@.str30 = private unnamed_addr constant [42 x i8] c"SPS: gaps_in_frame_num_value_allowed_flag\00", align 1
@.str31 = private unnamed_addr constant [29 x i8] c"SPS: pic_width_in_mbs_minus1\00", align 1
@.str32 = private unnamed_addr constant [36 x i8] c"SPS: pic_height_in_map_units_minus1\00", align 1
@.str33 = private unnamed_addr constant [25 x i8] c"SPS: frame_mbs_only_flag\00", align 1
@.str34 = private unnamed_addr constant [34 x i8] c"SPS: mb_adaptive_frame_field_flag\00", align 1
@.str35 = private unnamed_addr constant [31 x i8] c"SPS: direct_8x8_inference_flag\00", align 1
@.str36 = private unnamed_addr constant [25 x i8] c"SPS: frame_cropping_flag\00", align 1
@.str37 = private unnamed_addr constant [37 x i8] c"SPS: frame_cropping_rect_left_offset\00", align 1
@.str38 = private unnamed_addr constant [38 x i8] c"SPS: frame_cropping_rect_right_offset\00", align 1
@.str39 = private unnamed_addr constant [36 x i8] c"SPS: frame_cropping_rect_top_offset\00", align 1
@.str40 = private unnamed_addr constant [39 x i8] c"SPS: frame_cropping_rect_bottom_offset\00", align 1
@.str41 = private unnamed_addr constant [33 x i8] c"SPS: vui_parameters_present_flag\00", align 1
@.str42 = private unnamed_addr constant [26 x i8] c"PicParameterSet:partition\00", align 1
@.str43 = private unnamed_addr constant [26 x i8] c"PicParameterSet:bitstream\00", align 1
@.str44 = private unnamed_addr constant [26 x i8] c"PPS: pic_parameter_set_id\00", align 1
@.str45 = private unnamed_addr constant [26 x i8] c"PPS: seq_parameter_set_id\00", align 1
@.str46 = private unnamed_addr constant [30 x i8] c"PPS: entropy_coding_mode_flag\00", align 1
@.str47 = private unnamed_addr constant [28 x i8] c"PPS: pic_order_present_flag\00", align 1
@.str48 = private unnamed_addr constant [29 x i8] c"PPS: num_slice_groups_minus1\00", align 1
@.str49 = private unnamed_addr constant [26 x i8] c"PPS: slice_group_map_type\00", align 1
@.str50 = private unnamed_addr constant [26 x i8] c"PPS: run_length_minus1[i]\00", align 1
@.str51 = private unnamed_addr constant [17 x i8] c"PPS: top_left[i]\00", align 1
@.str52 = private unnamed_addr constant [21 x i8] c"PPS: bottom_right[i]\00", align 1
@.str53 = private unnamed_addr constant [39 x i8] c"PPS: slice_group_change_direction_flag\00", align 1
@.str54 = private unnamed_addr constant [36 x i8] c"PPS: slice_group_change_rate_minus1\00", align 1
@.str55 = private unnamed_addr constant [34 x i8] c"PPS: pic_size_in_map_units_minus1\00", align 1
@.str56 = private unnamed_addr constant [24 x i8] c"PPS: >slice_group_id[i]\00", align 1
@.str57 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l0_active_minus1\00", align 1
@.str58 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l1_active_minus1\00", align 1
@.str59 = private unnamed_addr constant [24 x i8] c"PPS: weighted_pred_flag\00", align 1
@.str60 = private unnamed_addr constant [25 x i8] c"PPS: weighted_bipred_idc\00", align 1
@.str61 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qp_minus26\00", align 1
@.str62 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qs_minus26\00", align 1
@.str63 = private unnamed_addr constant [28 x i8] c"PPS: chroma_qp_index_offset\00", align 1
@.str64 = private unnamed_addr constant [44 x i8] c"PPS: deblocking_filter_control_present_flag\00", align 1
@.str65 = private unnamed_addr constant [33 x i8] c"PPS: constrained_intra_pred_flag\00", align 1
@.str66 = private unnamed_addr constant [36 x i8] c"PPS: redundant_pic_cnt_present_flag\00", align 1
@.str67 = private unnamed_addr constant [29 x i8] c"PPS: transform_8x8_mode_flag\00", align 1
@.str68 = private unnamed_addr constant [37 x i8] c"PPS: pic_scaling_matrix_present_flag\00", align 1
@.str69 = private unnamed_addr constant [35 x i8] c"PPS: pic_scaling_list_present_flag\00", align 1
@.str70 = private unnamed_addr constant [35 x i8] c"PPS: second_chroma_qp_index_offset\00", align 1
@SeqParSet = common global [32 x %struct.seq_parameter_set_rbsp_t] zeroinitializer, align 16
@.str72 = private unnamed_addr constant [36 x i8] c"VUI: aspect_ratio_info_present_flag\00", align 1
@.str73 = private unnamed_addr constant [32 x i8] c"VUI: overscan_info_present_flag\00", align 1
@.str74 = private unnamed_addr constant [36 x i8] c"VUI: video_signal_type_present_flag\00", align 1
@.str75 = private unnamed_addr constant [18 x i8] c"VUI: video format\00", align 1
@.str76 = private unnamed_addr constant [27 x i8] c"VUI: video_full_range_flag\00", align 1
@.str77 = private unnamed_addr constant [36 x i8] c"VUI: color_description_present_flag\00", align 1
@.str78 = private unnamed_addr constant [22 x i8] c"VUI: colour primaries\00", align 1
@.str79 = private unnamed_addr constant [30 x i8] c"VUI: transfer characteristics\00", align 1
@.str80 = private unnamed_addr constant [25 x i8] c"VUI: matrix coefficients\00", align 1
@.str81 = private unnamed_addr constant [34 x i8] c"VUI: chroma_loc_info_present_flag\00", align 1
@.str82 = private unnamed_addr constant [30 x i8] c"VUI: timing_info_present_flag\00", align 1
@.str83 = private unnamed_addr constant [37 x i8] c"VUI: nal_hrd_parameters_present_flag\00", align 1
@.str84 = private unnamed_addr constant [37 x i8] c"VUI: vcl_hrd_parameters_present_flag\00", align 1
@.str85 = private unnamed_addr constant [28 x i8] c"VUI: pic_struc_present_flag\00", align 1
@.str86 = private unnamed_addr constant [32 x i8] c"VUI: bitstream_restriction_flag\00", align 1
@str = private unnamed_addr constant [48 x i8] c"Parset.c: slice_group_map_type invalid, default\00"
@str88 = private unnamed_addr constant [75 x i8] c"Sequence Parameter VUI not yet implemented, this should never happen, exit\00"
@str89 = private unnamed_addr constant [58 x i8] c"test: writing Sequence Parameter VUI to signal RGB format\00"

; Function Attrs: nounwind optsize uwtable
define void @GenerateParameterSets() #0 {
entry:
  %call = tail call %struct.seq_parameter_set_rbsp_t* (...)* @AllocSPS() #5
  %call1 = tail call %struct.pic_parameter_set_rbsp_t* (...)* @AllocPPS() #5
  tail call void @GenerateSequenceParameterSet(%struct.seq_parameter_set_rbsp_t* %call, i32 undef) #6
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 15
  %1 = load i32* %GenerateMultiplePPS, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %call, i64 0, i32 1
  %2 = load i32* %profile_idc, align 4, !tbaa !3
  %cmp = icmp ugt i32 %2, 99
  br i1 %tobool, label %if.else9, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %cb_qp_index_offset = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 140
  %3 = load i32* %cb_qp_index_offset, align 4, !tbaa !3
  %cr_qp_index_offset = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 141
  %4 = load i32* %cr_qp_index_offset, align 4, !tbaa !3
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 0, i32 0, i32 0, i32 %3, i32 %4) #6
  %5 = bitcast %struct.pic_parameter_set_rbsp_t* %call1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %5, i64 240, i32 8, i1 false)
  %6 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %cb_qp_index_offset3 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 140
  %7 = load i32* %cb_qp_index_offset3, align 4, !tbaa !3
  %cr_qp_index_offset4 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 141
  %8 = load i32* %cr_qp_index_offset4, align 4, !tbaa !3
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 1, i32 1, i32 1, i32 %7, i32 %8) #6
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1) to i8*), i8* %5, i64 240, i32 8, i1 false)
  %9 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %cb_qp_index_offset5 = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 140
  %10 = load i32* %cb_qp_index_offset5, align 4, !tbaa !3
  %cr_qp_index_offset6 = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 141
  %11 = load i32* %cr_qp_index_offset6, align 4, !tbaa !3
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 2, i32 1, i32 2, i32 %10, i32 %11) #6
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 2) to i8*), i8* %5, i64 240, i32 8, i1 false)
  br label %if.end20

if.else:                                          ; preds = %if.then
  %chroma_qp_index_offset = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 77
  %12 = load i32* %chroma_qp_index_offset, align 4, !tbaa !3
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 0, i32 0, i32 0, i32 %12, i32 0) #6
  %13 = bitcast %struct.pic_parameter_set_rbsp_t* %call1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %13, i64 240, i32 8, i1 false)
  %14 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %chroma_qp_index_offset7 = getelementptr inbounds %struct.InputParameters* %14, i64 0, i32 77
  %15 = load i32* %chroma_qp_index_offset7, align 4, !tbaa !3
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 1, i32 1, i32 1, i32 %15, i32 0) #6
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1) to i8*), i8* %13, i64 240, i32 8, i1 false)
  %16 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %chroma_qp_index_offset8 = getelementptr inbounds %struct.InputParameters* %16, i64 0, i32 77
  %17 = load i32* %chroma_qp_index_offset8, align 4, !tbaa !3
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 2, i32 1, i32 2, i32 %17, i32 0) #6
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 2) to i8*), i8* %13, i64 240, i32 8, i1 false)
  br label %if.end20

if.else9:                                         ; preds = %entry
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 46
  %18 = load i32* %WeightedPrediction, align 4, !tbaa !3
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 47
  %19 = load i32* %WeightedBiprediction, align 4, !tbaa !3
  br i1 %cmp, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else9
  %cb_qp_index_offset13 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 140
  %20 = load i32* %cb_qp_index_offset13, align 4, !tbaa !3
  %cr_qp_index_offset14 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 141
  %21 = load i32* %cr_qp_index_offset14, align 4, !tbaa !3
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 0, i32 %18, i32 %19, i32 %20, i32 %21) #6
  br label %if.end19

if.else15:                                        ; preds = %if.else9
  %chroma_qp_index_offset18 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 77
  %22 = load i32* %chroma_qp_index_offset18, align 4, !tbaa !3
  tail call void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %call1, %struct.seq_parameter_set_rbsp_t* %call, i32 0, i32 %18, i32 %19, i32 %22, i32 0) #6
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then12
  %23 = bitcast %struct.pic_parameter_set_rbsp_t* %call1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet to i8*), i8* %23, i64 240, i32 8, i1 false)
  br label %if.end20

if.end20:                                         ; preds = %if.then2, %if.else, %if.end19
  store %struct.seq_parameter_set_rbsp_t* %call, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.seq_parameter_set_rbsp_t* @AllocSPS(...) #1

; Function Attrs: optsize
declare %struct.pic_parameter_set_rbsp_t* @AllocPPS(...) #1

; Function Attrs: nounwind optsize uwtable
define void @GenerateSequenceParameterSet(%struct.seq_parameter_set_rbsp_t* %sps, i32 %SPS_id) #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %ProfileIDC.i = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 0
  %1 = load i32* %ProfileIDC.i, align 4, !tbaa !3
  %switch.tableidx = add i32 %1, -100
  %2 = icmp ult i32 %switch.tableidx, 45
  br i1 %2, label %switch.lookup, label %lor.end

switch.lookup:                                    ; preds = %entry
  %switch.cast = zext i32 %switch.tableidx to i45
  %switch.downshift = lshr i45 -17592181849087, %switch.cast
  %3 = and i45 %switch.downshift, 1
  %switch.masked = icmp ne i45 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %entry, %switch.lookup
  %4 = phi i1 [ %switch.masked, %switch.lookup ], [ false, %entry ]
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 1
  store i32 %1, i32* %profile_idc, align 4, !tbaa !3
  %LevelIDC.i = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 1
  %5 = load i32* %LevelIDC.i, align 4, !tbaa !3
  %level_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 6
  store i32 %5, i32* %level_idc, align 4, !tbaa !3
  %constrained_set0_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 2
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 7
  store i32 0, i32* %seq_parameter_set_id, align 4, !tbaa !3
  %6 = bitcast i32* %constrained_set0_flag to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 4, i1 false)
  %7 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %BitDepthLuma = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 135
  %8 = load i32* %BitDepthLuma, align 4, !tbaa !3
  %sub = add nsw i32 %8, -8
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 11
  store i32 %sub, i32* %bit_depth_luma_minus8, align 4, !tbaa !3
  %BitDepthChroma = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 136
  %9 = load i32* %BitDepthChroma, align 4, !tbaa !3
  %sub10 = add nsw i32 %9, -8
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 12
  store i32 %sub10, i32* %bit_depth_chroma_minus8, align 4, !tbaa !3
  %lossless_qpprime_y_zero_flag = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 142
  %10 = load i32* %lossless_qpprime_y_zero_flag, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %1, 144
  %conv = zext i1 %cmp12 to i32
  %and = and i32 %conv, %10
  %11 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 160
  store i32 %and, i32* %lossless_qpprime_flag, align 4, !tbaa !3
  %residue_transform_flag = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 143
  %12 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %residue_transform_flag13 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 164
  store i32 %12, i32* %residue_transform_flag13, align 4, !tbaa !3
  %13 = load i32* @log2_max_frame_num_minus4, align 4, !tbaa !3
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 13
  store i32 %13, i32* %log2_max_frame_num_minus4, align 4, !tbaa !3
  %14 = load i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !3
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 15
  store i32 %14, i32* %log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !3
  %pic_order_cnt_type = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 120
  %15 = load i32* %pic_order_cnt_type, align 4, !tbaa !3
  %pic_order_cnt_type14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 14
  store i32 %15, i32* %pic_order_cnt_type14, align 4, !tbaa !3
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 95
  %16 = load i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4, !tbaa !3
  %num_ref_frames_in_pic_order_cnt_cycle15 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 19
  store i32 %16, i32* %num_ref_frames_in_pic_order_cnt_cycle15, align 4, !tbaa !3
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 92
  %17 = load i32* %delta_pic_order_always_zero_flag, align 4, !tbaa !3
  %delta_pic_order_always_zero_flag16 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 16
  store i32 %17, i32* %delta_pic_order_always_zero_flag16, align 4, !tbaa !1
  %18 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %offset_for_non_ref_pic = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 93
  %19 = load i32* %offset_for_non_ref_pic, align 4, !tbaa !3
  %offset_for_non_ref_pic17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 17
  store i32 %19, i32* %offset_for_non_ref_pic17, align 4, !tbaa !3
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 94
  %20 = load i32* %offset_for_top_to_bottom_field, align 4, !tbaa !3
  %offset_for_top_to_bottom_field18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 18
  store i32 %20, i32* %offset_for_top_to_bottom_field18, align 4, !tbaa !3
  %num_ref_frames_in_pic_order_cnt_cycle19207 = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 95
  %21 = load i32* %num_ref_frames_in_pic_order_cnt_cycle19207, align 4, !tbaa !3
  %cmp20208 = icmp eq i32 %21, 0
  br i1 %cmp20208, label %for.end, label %for.body

for.body:                                         ; preds = %lor.end, %for.body
  %i.0209 = phi i32 [ %inc, %for.body ], [ 0, %lor.end ]
  %idxprom = zext i32 %i.0209 to i64
  %arrayidx = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 96, i64 %idxprom
  %22 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 20, i64 %idxprom
  store i32 %22, i32* %arrayidx24, align 4, !tbaa !3
  %inc = add i32 %i.0209, 1
  %23 = load i32* %num_ref_frames_in_pic_order_cnt_cycle19207, align 4, !tbaa !3
  %cmp20 = icmp ult i32 %inc, %23
  br i1 %cmp20, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %lor.end
  %24 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %num_ref_frames = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 9
  %25 = load i32* %num_ref_frames, align 4, !tbaa !3
  %num_ref_frames25 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 21
  store i32 %25, i32* %num_ref_frames25, align 4, !tbaa !3
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 22
  store i32 0, i32* %gaps_in_frame_num_value_allowed_flag, align 4, !tbaa !1
  %26 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %26, i64 0, i32 91
  %27 = load i32* %PicInterlace, align 4, !tbaa !3
  %tobool = icmp eq i32 %27, 0
  br i1 %tobool, label %lor.rhs26, label %lor.end28

lor.rhs26:                                        ; preds = %for.end
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %26, i64 0, i32 92
  %28 = load i32* %MbInterlace, align 4, !tbaa !3
  %phitmp = icmp eq i32 %28, 0
  br label %lor.end28

lor.end28:                                        ; preds = %for.end, %lor.rhs26
  %29 = phi i1 [ false, %for.end ], [ %phitmp, %lor.rhs26 ]
  %lnot.ext = zext i1 %29 to i32
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25
  store i32 %lnot.ext, i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %30 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %img_width = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 16
  %31 = load i32* %img_width, align 4, !tbaa !3
  %32 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 165
  %33 = load i32* %auto_crop_right, align 4, !tbaa !3
  %add = add nsw i32 %33, %31
  %div = sdiv i32 %add, 16
  %sub30 = add nsw i32 %div, -1
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 23
  store i32 %sub30, i32* %pic_width_in_mbs_minus1, align 4, !tbaa !3
  %img_height = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 17
  %34 = load i32* %img_height, align 4, !tbaa !3
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters* %32, i64 0, i32 166
  %35 = load i32* %auto_crop_bottom, align 4, !tbaa !3
  %add31 = add nsw i32 %35, %34
  %div32 = sdiv i32 %add31, 16
  %sub34 = sub i32 2, %lnot.ext
  %div35 = udiv i32 %div32, %sub34
  %sub36 = add i32 %div35, -1
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 24
  store i32 %sub36, i32* %pic_height_in_map_units_minus1, align 4, !tbaa !3
  %MbInterlace37 = getelementptr inbounds %struct.InputParameters* %30, i64 0, i32 92
  %36 = load i32* %MbInterlace37, align 4, !tbaa !3
  %cmp38 = icmp ne i32 %36, 0
  %conv39 = zext i1 %cmp38 to i32
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 26
  store i32 %conv39, i32* %mb_adaptive_frame_field_flag, align 4, !tbaa !1
  %37 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %directInferenceFlag = getelementptr inbounds %struct.InputParameters* %37, i64 0, i32 38
  %38 = load i32* %directInferenceFlag, align 4, !tbaa !3
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 27
  store i32 %38, i32* %direct_8x8_inference_flag, align 4, !tbaa !1
  %39 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rgb_input_flag = getelementptr inbounds %struct.InputParameters* %39, i64 0, i32 139
  %40 = load i32* %rgb_input_flag, align 4, !tbaa !3
  %tobool40 = icmp eq i32 %40, 0
  br i1 %tobool40, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.end28
  %yuv_format = getelementptr inbounds %struct.InputParameters* %39, i64 0, i32 18
  %41 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp41 = icmp eq i32 %41, 3
  br label %land.end

land.end:                                         ; preds = %lor.end28, %land.rhs
  %42 = phi i1 [ false, %lor.end28 ], [ %cmp41, %land.rhs ]
  %land.ext = zext i1 %42 to i32
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 33
  store i32 %land.ext, i32* %vui_parameters_present_flag, align 4, !tbaa !1
  %43 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %yuv_format43 = getelementptr inbounds %struct.InputParameters* %43, i64 0, i32 18
  %44 = load i32* %yuv_format43, align 4, !tbaa !3
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 8
  store i32 %44, i32* %chroma_format_idc, align 4, !tbaa !3
  %add45 = shl i32 %sub30, 4
  %mul50 = add i32 %add45, 16
  %add47 = shl i32 %sub36, 4
  %mul = add i32 %add47, 16
  %mul51 = mul i32 %mul, %sub34
  %call53 = tail call %struct.colocated_params* @alloc_colocated(i32 %mul50, i32 %mul51, i32 %conv39) #5
  store %struct.colocated_params* %call53, %struct.colocated_params** @Co_located, align 8, !tbaa !0
  br i1 %4, label %if.then, label %if.else85

if.then:                                          ; preds = %land.end
  %45 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %45, i64 0, i32 132
  %46 = load i32* %ScalingMatrixPresentFlag, align 4, !tbaa !3
  %and55 = and i32 %46, 1
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 9
  store i32 %and55, i32* %seq_scaling_matrix_present_flag, align 4, !tbaa !1
  %47 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %47, i64 0, i32 123
  br label %for.body59

for.body59:                                       ; preds = %for.inc82, %if.then
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.inc82 ]
  %48 = trunc i64 %indvars.iv to i32
  %cmp60 = icmp ult i32 %48, 6
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %for.body59
  %arrayidx64 = getelementptr inbounds %struct.InputParameters* %47, i64 0, i32 133, i64 %indvars.iv
  %49 = load i32* %arrayidx64, align 4, !tbaa !3
  %and65 = and i32 %49, 1
  %arrayidx67 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv
  store i32 %and65, i32* %arrayidx67, align 4, !tbaa !3
  br label %for.inc82

if.else:                                          ; preds = %for.body59
  %50 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool68 = icmp eq i32 %50, 0
  br i1 %tobool68, label %if.else77, label %if.then69

if.then69:                                        ; preds = %if.else
  %arrayidx72 = getelementptr inbounds %struct.InputParameters* %47, i64 0, i32 133, i64 %indvars.iv
  %51 = load i32* %arrayidx72, align 4, !tbaa !3
  %and73 = and i32 %51, 1
  %arrayidx76 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv
  store i32 %and73, i32* %arrayidx76, align 4, !tbaa !3
  br label %for.inc82

if.else77:                                        ; preds = %if.else
  %arrayidx80 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv
  store i32 0, i32* %arrayidx80, align 4, !tbaa !3
  br label %for.inc82

for.inc82:                                        ; preds = %if.then62, %if.else77, %if.then69
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %if.end97, label %for.body59

if.else85:                                        ; preds = %land.end
  %seq_scaling_matrix_present_flag86 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 9
  %52 = bitcast i32* %seq_scaling_matrix_present_flag86 to i8*
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 36, i32 4, i1 false)
  br label %if.end97

if.end97:                                         ; preds = %for.inc82, %if.else85
  %53 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %auto_crop_right98 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 165
  %54 = load i32* %auto_crop_right98, align 4, !tbaa !3
  %tobool99 = icmp eq i32 %54, 0
  br i1 %tobool99, label %lor.lhs.false100, label %if.then103

lor.lhs.false100:                                 ; preds = %if.end97
  %auto_crop_bottom101 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 166
  %55 = load i32* %auto_crop_bottom101, align 4, !tbaa !3
  %tobool102 = icmp eq i32 %55, 0
  br i1 %tobool102, label %if.else135, label %if.then103

if.then103:                                       ; preds = %lor.lhs.false100, %if.end97
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 28
  store i32 1, i32* %frame_cropping_flag, align 4, !tbaa !1
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 29
  store i32 0, i32* %frame_cropping_rect_left_offset, align 4, !tbaa !3
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 31
  store i32 0, i32* %frame_cropping_rect_top_offset, align 4, !tbaa !3
  %56 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %auto_crop_right104 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 165
  %57 = load i32* %auto_crop_right104, align 4, !tbaa !3
  %58 = load i32* %chroma_format_idc, align 4, !tbaa !3
  %idxprom106 = zext i32 %58 to i64
  %arrayidx107 = getelementptr inbounds [4 x i32]* @GenerateSequenceParameterSet.SubWidthC, i64 0, i64 %idxprom106
  %59 = load i32* %arrayidx107, align 4, !tbaa !3
  %div108 = sdiv i32 %57, %59
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 30
  store i32 %div108, i32* %frame_cropping_rect_right_offset, align 4, !tbaa !3
  %auto_crop_bottom109 = getelementptr inbounds %struct.ImageParameters* %56, i64 0, i32 166
  %60 = load i32* %auto_crop_bottom109, align 4, !tbaa !3
  %arrayidx112 = getelementptr inbounds [4 x i32]* @GenerateSequenceParameterSet.SubHeightC, i64 0, i64 %idxprom106
  %61 = load i32* %arrayidx112, align 4, !tbaa !3
  %62 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %sub114 = sub i32 2, %62
  %mul115 = mul i32 %sub114, %61
  %div116 = udiv i32 %60, %mul115
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 32
  store i32 %div116, i32* %frame_cropping_rect_bottom_offset, align 4, !tbaa !3
  %63 = load i32* %auto_crop_right104, align 4, !tbaa !3
  %rem = srem i32 %63, %59
  %tobool121 = icmp eq i32 %rem, 0
  br i1 %tobool121, label %if.end123, label %if.then122

if.then122:                                       ; preds = %if.then103
  tail call void @error(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i32 500) #5
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %.pre215 = load i32* %chroma_format_idc, align 4, !tbaa !3
  %idxprom126.phi.trans.insert = zext i32 %.pre215 to i64
  %arrayidx127.phi.trans.insert = getelementptr inbounds [4 x i32]* @GenerateSequenceParameterSet.SubHeightC, i64 0, i64 %idxprom126.phi.trans.insert
  %.pre216 = load i32* %arrayidx127.phi.trans.insert, align 4, !tbaa !3
  %.pre217 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  br label %if.end123

if.end123:                                        ; preds = %if.then103, %if.then122
  %64 = phi i32 [ %62, %if.then103 ], [ %.pre217, %if.then122 ]
  %65 = phi i32 [ %61, %if.then103 ], [ %.pre216, %if.then122 ]
  %66 = phi %struct.ImageParameters* [ %56, %if.then103 ], [ %.pre, %if.then122 ]
  %auto_crop_bottom124 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 166
  %67 = load i32* %auto_crop_bottom124, align 4, !tbaa !3
  %sub129 = sub i32 2, %64
  %mul130 = mul i32 %sub129, %65
  %rem131 = urem i32 %67, %mul130
  %tobool132 = icmp eq i32 %rem131, 0
  br i1 %tobool132, label %if.end137, label %if.then133

if.then133:                                       ; preds = %if.end123
  tail call void @error(i8* getelementptr inbounds ([47 x i8]* @.str1, i64 0, i64 0), i32 500) #5
  br label %if.end137

if.else135:                                       ; preds = %lor.lhs.false100
  %frame_cropping_flag136 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 28
  store i32 0, i32* %frame_cropping_flag136, align 4, !tbaa !1
  br label %if.end137

if.end137:                                        ; preds = %if.end123, %if.then133, %if.else135
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @GeneratePictureParameterSet(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* nocapture %sps, i32 %PPS_id, i32 %WeightedPrediction, i32 %WeightedBiprediction, i32 %cb_qp_index_offset, i32 %cr_qp_index_offset) #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %ProfileIDC.i = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 0
  %1 = load i32* %ProfileIDC.i, align 4, !tbaa !3
  %switch.tableidx = add i32 %1, -100
  %2 = icmp ult i32 %switch.tableidx, 45
  br i1 %2, label %switch.lookup, label %lor.end

switch.lookup:                                    ; preds = %entry
  %switch.cast = zext i32 %switch.tableidx to i45
  %switch.downshift = lshr i45 -17592181849087, %switch.cast
  %3 = and i45 %switch.downshift, 1
  %switch.masked = icmp ne i45 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %entry, %switch.lookup
  %4 = phi i1 [ %switch.masked, %switch.lookup ], [ false, %entry ]
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 7
  %5 = load i32* %seq_parameter_set_id, align 4, !tbaa !3
  %seq_parameter_set_id8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 2
  store i32 %5, i32* %seq_parameter_set_id8, align 4, !tbaa !3
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 1
  store i32 %PPS_id, i32* %pic_parameter_set_id, align 4, !tbaa !3
  %symbol_mode = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 59
  %6 = load i32* %symbol_mode, align 4, !tbaa !3
  %not.cmp9 = icmp ne i32 %6, 0
  %cond = zext i1 %not.cmp9 to i32
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 3
  store i32 %cond, i32* %entropy_coding_mode_flag, align 4, !tbaa !1
  br i1 %4, label %if.then, label %if.else35

if.then:                                          ; preds = %lor.end
  %7 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 123
  %8 = load i32* %AllowTransform8x8, align 4, !tbaa !3
  %tobool10 = icmp ne i32 %8, 0
  %cond11 = zext i1 %tobool10 to i32
  %transform_8x8_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 4
  store i32 %cond11, i32* %transform_8x8_mode_flag, align 4, !tbaa !1
  %9 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %ScalingMatrixPresentFlag = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 132
  %10 = load i32* %ScalingMatrixPresentFlag, align 4, !tbaa !3
  %and = lshr i32 %10, 1
  %shr215 = and i32 %and, 1
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 5
  store i32 %shr215, i32* %pic_scaling_matrix_present_flag, align 4, !tbaa !1
  br label %for.body

for.body:                                         ; preds = %for.inc, %if.then
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.inc ]
  %11 = trunc i64 %indvars.iv to i32
  %cmp13 = icmp ult i32 %11, 6
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %for.body
  %12 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 133, i64 %indvars.iv
  %13 = load i32* %arrayidx, align 4, !tbaa !3
  %and15 = lshr i32 %13, 1
  %shr16217 = and i32 %and15, 1
  %arrayidx18 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %indvars.iv
  store i32 %shr16217, i32* %arrayidx18, align 4, !tbaa !3
  br label %for.inc

if.else:                                          ; preds = %for.body
  %14 = load i32* %transform_8x8_mode_flag, align 4, !tbaa !1
  %tobool20 = icmp eq i32 %14, 0
  br i1 %tobool20, label %if.else30, label %if.then21

if.then21:                                        ; preds = %if.else
  %15 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds %struct.InputParameters* %15, i64 0, i32 133, i64 %indvars.iv
  %16 = load i32* %arrayidx24, align 4, !tbaa !3
  %and25 = lshr i32 %16, 1
  %shr26216 = and i32 %and25, 1
  %arrayidx29 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %indvars.iv
  store i32 %shr26216, i32* %arrayidx29, align 4, !tbaa !3
  br label %for.inc

if.else30:                                        ; preds = %if.else
  %arrayidx33 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %indvars.iv
  store i32 0, i32* %arrayidx33, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.else30, %if.then21
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %if.end48, label %for.body

if.else35:                                        ; preds = %lor.end
  %pic_scaling_matrix_present_flag36 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 5
  %17 = bitcast i32* %pic_scaling_matrix_present_flag36 to i8*
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 36, i32 4, i1 false)
  %18 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x846 = getelementptr inbounds %struct.InputParameters* %18, i64 0, i32 123
  store i32 0, i32* %AllowTransform8x846, align 4, !tbaa !3
  %transform_8x8_mode_flag47 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 4
  store i32 0, i32* %transform_8x8_mode_flag47, align 4, !tbaa !1
  br label %if.end48

if.end48:                                         ; preds = %for.inc, %if.else35
  %19 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 112
  %20 = load i32* %pic_order_present_flag, align 4, !tbaa !3
  %pic_order_present_flag49 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 7
  store i32 %20, i32* %pic_order_present_flag49, align 4, !tbaa !1
  %21 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %num_slice_groups_minus1 = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 110
  %22 = load i32* %num_slice_groups_minus1, align 4, !tbaa !3
  %num_slice_groups_minus150 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 8
  store i32 %22, i32* %num_slice_groups_minus150, align 4, !tbaa !3
  %cmp52 = icmp eq i32 %22, 0
  br i1 %cmp52, label %if.end112, label %if.then53

if.then53:                                        ; preds = %if.end48
  %slice_group_map_type = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 111
  %23 = load i32* %slice_group_map_type, align 4, !tbaa !3
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb67
    i32 2, label %for.body74.lr.ph
    i32 3, label %sw.bb88
    i32 4, label %sw.bb88
    i32 5, label %sw.bb88
    i32 6, label %sw.bb93
  ]

sw.bb:                                            ; preds = %if.then53
  %slice_group_map_type54 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9
  store i32 0, i32* %slice_group_map_type54, align 4, !tbaa !3
  %run_length_minus1 = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 115
  %24 = load i32** %run_length_minus1, align 8, !tbaa !0
  br label %for.body58

for.body58:                                       ; preds = %sw.bb, %for.body58
  %i.2221 = phi i32 [ 0, %sw.bb ], [ %inc65, %for.body58 ]
  %idxprom59 = zext i32 %i.2221 to i64
  %arrayidx60 = getelementptr inbounds i32* %24, i64 %idxprom59
  %25 = load i32* %arrayidx60, align 4, !tbaa !3
  %arrayidx63 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 10, i64 %idxprom59
  store i32 %25, i32* %arrayidx63, align 4, !tbaa !3
  %inc65 = add i32 %i.2221, 1
  %26 = load i32* %num_slice_groups_minus150, align 4, !tbaa !3
  %cmp57 = icmp ugt i32 %inc65, %26
  br i1 %cmp57, label %if.end112, label %for.body58

sw.bb67:                                          ; preds = %if.then53
  %slice_group_map_type68 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9
  store i32 1, i32* %slice_group_map_type68, align 4, !tbaa !3
  br label %if.end112

for.body74.lr.ph:                                 ; preds = %if.then53
  %slice_group_map_type70 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9
  store i32 2, i32* %slice_group_map_type70, align 4, !tbaa !3
  %top_left = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 112
  %27 = load i32** %top_left, align 8, !tbaa !0
  %bottom_right = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 113
  %28 = load i32** %bottom_right, align 8, !tbaa !0
  br label %for.body74

for.body74:                                       ; preds = %for.body74.lr.ph, %for.body74
  %i.3224 = phi i32 [ 0, %for.body74.lr.ph ], [ %inc86, %for.body74 ]
  %idxprom75 = zext i32 %i.3224 to i64
  %arrayidx76 = getelementptr inbounds i32* %27, i64 %idxprom75
  %29 = load i32* %arrayidx76, align 4, !tbaa !3
  %arrayidx79 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 11, i64 %idxprom75
  store i32 %29, i32* %arrayidx79, align 4, !tbaa !3
  %arrayidx81 = getelementptr inbounds i32* %28, i64 %idxprom75
  %30 = load i32* %arrayidx81, align 4, !tbaa !3
  %arrayidx84 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 12, i64 %idxprom75
  store i32 %30, i32* %arrayidx84, align 4, !tbaa !3
  %inc86 = add i32 %i.3224, 1
  %31 = load i32* %num_slice_groups_minus150, align 4, !tbaa !3
  %cmp73 = icmp ult i32 %inc86, %31
  br i1 %cmp73, label %for.body74, label %if.end112

sw.bb88:                                          ; preds = %if.then53, %if.then53, %if.then53
  %slice_group_map_type90 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9
  store i32 %23, i32* %slice_group_map_type90, align 4, !tbaa !3
  %slice_group_change_direction_flag = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 116
  %32 = load i32* %slice_group_change_direction_flag, align 4, !tbaa !3
  %slice_group_change_direction_flag91 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 13
  store i32 %32, i32* %slice_group_change_direction_flag91, align 4, !tbaa !1
  %33 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.InputParameters* %33, i64 0, i32 117
  %34 = load i32* %slice_group_change_rate_minus1, align 4, !tbaa !3
  %slice_group_change_rate_minus192 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 14
  store i32 %34, i32* %slice_group_change_rate_minus192, align 4, !tbaa !3
  br label %if.end112

sw.bb93:                                          ; preds = %if.then53
  %slice_group_map_type94 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9
  store i32 6, i32* %slice_group_map_type94, align 4, !tbaa !3
  %img_height = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 17
  %35 = load i32* %img_height, align 4, !tbaa !3
  %36 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters* %36, i64 0, i32 166
  %37 = load i32* %auto_crop_bottom, align 4, !tbaa !3
  %add = add nsw i32 %37, %35
  %div = sdiv i32 %add, 16
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25
  %38 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %sub = sub i32 2, %38
  %div95 = udiv i32 %div, %sub
  %img_width = getelementptr inbounds %struct.InputParameters* %21, i64 0, i32 16
  %39 = load i32* %img_width, align 4, !tbaa !3
  %auto_crop_right = getelementptr inbounds %struct.ImageParameters* %36, i64 0, i32 165
  %40 = load i32* %auto_crop_right, align 4, !tbaa !3
  %add96 = add nsw i32 %40, %39
  %div97 = sdiv i32 %add96, 16
  %mul = mul i32 %div97, %div95
  %sub98 = add i32 %mul, -1
  %pic_size_in_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 15
  store i32 %sub98, i32* %pic_size_in_map_units_minus1, align 4, !tbaa !3
  %slice_group_id106 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 16
  br label %for.body102

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %sw.bb93
  %41 = phi %struct.InputParameters* [ %21, %sw.bb93 ], [ %.pre, %for.body102.for.body102_crit_edge ]
  %i.4226 = phi i32 [ 0, %sw.bb93 ], [ %inc109, %for.body102.for.body102_crit_edge ]
  %idxprom103 = zext i32 %i.4226 to i64
  %slice_group_id = getelementptr inbounds %struct.InputParameters* %41, i64 0, i32 114
  %42 = load i8** %slice_group_id, align 8, !tbaa !0
  %arrayidx104 = getelementptr inbounds i8* %42, i64 %idxprom103
  %43 = load i8* %arrayidx104, align 1, !tbaa !1
  %44 = load i8** %slice_group_id106, align 8, !tbaa !0
  %arrayidx107 = getelementptr inbounds i8* %44, i64 %idxprom103
  store i8 %43, i8* %arrayidx107, align 1, !tbaa !1
  %inc109 = add i32 %i.4226, 1
  %45 = load i32* %pic_size_in_map_units_minus1, align 4, !tbaa !3
  %cmp101 = icmp ugt i32 %inc109, %45
  br i1 %cmp101, label %if.end112, label %for.body102.for.body102_crit_edge

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.body102

sw.default:                                       ; preds = %if.then53
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0))
  br label %if.end112

if.end112:                                        ; preds = %for.body102, %for.body74, %for.body58, %if.end48, %sw.bb67, %sw.bb88, %sw.default
  %frame_mbs_only_flag113 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25
  %46 = load i32* %frame_mbs_only_flag113, align 4, !tbaa !1
  %tobool114 = icmp eq i32 %46, 0
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 21
  %47 = load i32* %num_ref_frames, align 4, !tbaa !3
  %mul117 = zext i1 %tobool114 to i32
  %mul117. = shl i32 %47, %mul117
  %sub115 = add i32 %mul117., -1
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 17
  store i32 %sub115, i32* %num_ref_idx_l0_active_minus1, align 4, !tbaa !3
  %48 = load i32* %frame_mbs_only_flag113, align 4, !tbaa !1
  %tobool121 = icmp eq i32 %48, 0
  %49 = load i32* %num_ref_frames, align 4, !tbaa !3
  %mul127 = zext i1 %tobool121 to i32
  %.sink140 = shl i32 %49, %mul127
  %sub124 = add i32 %.sink140, -1
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 18
  store i32 %sub124, i32* %num_ref_idx_l1_active_minus1, align 4, !tbaa !3
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 19
  store i32 %WeightedPrediction, i32* %weighted_pred_flag, align 4, !tbaa !1
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 20
  store i32 %WeightedBiprediction, i32* %weighted_bipred_idc, align 4, !tbaa !3
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 21
  store i32 0, i32* %pic_init_qp_minus26, align 4, !tbaa !3
  %pic_init_qs_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 22
  store i32 0, i32* %pic_init_qs_minus26, align 4, !tbaa !3
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 23
  store i32 %cb_qp_index_offset, i32* %chroma_qp_index_offset, align 4, !tbaa !3
  br i1 %4, label %if.then132, label %if.else135

if.then132:                                       ; preds = %if.end112
  %cb_qp_index_offset133 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 24
  store i32 %cb_qp_index_offset, i32* %cb_qp_index_offset133, align 4, !tbaa !3
  %cr_qp_index_offset134 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 25
  store i32 %cr_qp_index_offset, i32* %cr_qp_index_offset134, align 4, !tbaa !3
  br label %if.end139

if.else135:                                       ; preds = %if.end112
  %cr_qp_index_offset137 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 25
  store i32 %cb_qp_index_offset, i32* %cr_qp_index_offset137, align 4, !tbaa !3
  %cb_qp_index_offset138 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 24
  store i32 %cb_qp_index_offset, i32* %cb_qp_index_offset138, align 4, !tbaa !3
  br label %if.end139

if.end139:                                        ; preds = %if.else135, %if.then132
  %50 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %LFSendParameters = getelementptr inbounds %struct.InputParameters* %50, i64 0, i32 102
  %51 = load i32* %LFSendParameters, align 4, !tbaa !3
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 26
  store i32 %51, i32* %deblocking_filter_control_present_flag, align 4, !tbaa !1
  %52 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 24
  %53 = load i32* %UseConstrainedIntraPred, align 4, !tbaa !3
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 27
  store i32 %53, i32* %constrained_intra_pred_flag, align 4, !tbaa !1
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 28
  store i32 0, i32* %redundant_pic_cnt_present_flag, align 4, !tbaa !1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @FreeParameterSets() #0 {
entry:
  %0 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  tail call void @FreeSPS(%struct.seq_parameter_set_rbsp_t* %0) #5
  ret void
}

; Function Attrs: optsize
declare void @FreeSPS(%struct.seq_parameter_set_rbsp_t*) #1

; Function Attrs: nounwind optsize uwtable
define %struct.NALU_t* @GenerateSeq_parameter_set_NALU() #0 {
entry:
  %rbsp = alloca [64000 x i8], align 16
  %call = call %struct.NALU_t* (i32, ...)* bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 64000) #5
  %0 = getelementptr inbounds [64000 x i8]* %rbsp, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64000, i8* %0) #2
  %1 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %call1 = call i32 @GenerateSeq_parameter_set_rbsp(%struct.seq_parameter_set_rbsp_t* %1, i8* %0) #6
  %call3 = call i32 @RBSPtoNALU(i8* %0, %struct.NALU_t* %call, i32 %call1, i32 7, i32 3, i32 0, i32 1) #5
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t* %call, i64 0, i32 0
  store i32 4, i32* %startcodeprefix_len, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 64000, i8* %0) #2
  ret %struct.NALU_t* %call
}

; Function Attrs: optsize
declare %struct.NALU_t* @AllocNALU(...) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @GenerateSeq_parameter_set_rbsp(%struct.seq_parameter_set_rbsp_t* %sps, i8* %rbsp) #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 120) #5
  %0 = bitcast i8* %call to %struct.datapartition*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str4, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call noalias i8* @calloc(i64 1, i64 48) #5
  %1 = bitcast i8* %call1 to %struct.Bitstream*
  %bitstream = bitcast i8* %call to %struct.Bitstream**
  store %struct.Bitstream* %1, %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0)) #5
  %.pre = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = phi %struct.Bitstream* [ %.pre, %if.then3 ], [ %1, %if.end ]
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9
  store i8* %rbsp, i8** %streamBuffer, align 8, !tbaa !0
  %3 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %profile_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 1
  %4 = load i32* %profile_idc, align 4, !tbaa !3
  %call7 = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i32 %4, %struct.datapartition* %0) #5
  %constrained_set0_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 2
  %5 = load i32* %constrained_set0_flag, align 4, !tbaa !1
  %call8 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0), i32 %5, %struct.datapartition* %0) #5
  %constrained_set1_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 3
  %6 = load i32* %constrained_set1_flag, align 4, !tbaa !1
  %call10 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str8, i64 0, i64 0), i32 %6, %struct.datapartition* %0) #5
  %constrained_set2_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 4
  %7 = load i32* %constrained_set2_flag, align 4, !tbaa !1
  %call12 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i32 %7, %struct.datapartition* %0) #5
  %constrained_set3_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 5
  %8 = load i32* %constrained_set3_flag, align 4, !tbaa !1
  %call14 = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %8, %struct.datapartition* %0) #5
  %call16 = tail call i32 @u_v(i32 4, i8* getelementptr inbounds ([25 x i8]* @.str11, i64 0, i64 0), i32 0, %struct.datapartition* %0) #5
  %level_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 6
  %9 = load i32* %level_idc, align 4, !tbaa !3
  %call18 = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i32 %9, %struct.datapartition* %0) #5
  %seq_parameter_set_id = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 7
  %10 = load i32* %seq_parameter_set_id, align 4, !tbaa !3
  %call20 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str13, i64 0, i64 0), i32 %10, %struct.datapartition* %0) #5
  %11 = load i32* %profile_idc, align 4, !tbaa !3
  switch i32 %11, label %if.end84 [
    i32 100, label %if.then32
    i32 110, label %if.then32
    i32 122, label %if.then32
    i32 144, label %if.then32
  ]

if.then32:                                        ; preds = %if.end4, %if.end4, %if.end4, %if.end4
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 8
  %12 = load i32* %chroma_format_idc, align 4, !tbaa !3
  %call33 = tail call i32 @ue_v(i8* getelementptr inbounds ([23 x i8]* @.str14, i64 0, i64 0), i32 %12, %struct.datapartition* %0) #5
  %13 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 159
  %14 = load i32* %yuv_format, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %14, 3
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 164
  %15 = load i32* %residue_transform_flag, align 4, !tbaa !3
  %call37 = tail call i32 @u_1(i8* getelementptr inbounds ([28 x i8]* @.str15, i64 0, i64 0), i32 %15, %struct.datapartition* %0) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 11
  %16 = load i32* %bit_depth_luma_minus8, align 4, !tbaa !3
  %call40 = tail call i32 @ue_v(i8* getelementptr inbounds ([27 x i8]* @.str16, i64 0, i64 0), i32 %16, %struct.datapartition* %0) #5
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 12
  %17 = load i32* %bit_depth_chroma_minus8, align 4, !tbaa !3
  %call42 = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str17, i64 0, i64 0), i32 %17, %struct.datapartition* %0) #5
  %18 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 160
  %19 = load i32* %lossless_qpprime_flag, align 4, !tbaa !3
  %call44 = tail call i32 @u_1(i8* getelementptr inbounds ([34 x i8]* @.str18, i64 0, i64 0), i32 %19, %struct.datapartition* %0) #5
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 9
  %20 = load i32* %seq_scaling_matrix_present_flag, align 4, !tbaa !1
  %call46 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str19, i64 0, i64 0), i32 %20, %struct.datapartition* %0) #5
  %21 = load i32* %seq_scaling_matrix_present_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %21, 0
  br i1 %tobool, label %if.end84, label %for.body

for.body:                                         ; preds = %if.end39, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end39 ]
  %arrayidx = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 10, i64 %indvars.iv
  %22 = load i32* %arrayidx, align 4, !tbaa !3
  %call51 = tail call i32 @u_1(i8* getelementptr inbounds ([35 x i8]* @.str20, i64 0, i64 0), i32 %22, %struct.datapartition* %0) #5
  %23 = load i32* %arrayidx, align 4, !tbaa !3
  %tobool56 = icmp eq i32 %23, 0
  br i1 %tobool56, label %for.inc, label %if.then57

if.then57:                                        ; preds = %for.body
  %24 = trunc i64 %indvars.iv to i32
  %cmp58 = icmp ult i32 %24, 6
  br i1 %cmp58, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.then57
  %arraydecay = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %indvars.iv, i64 0
  %arraydecay64 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 %indvars.iv, i64 0
  %arrayidx66 = getelementptr inbounds [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 %indvars.iv
  %call67 = tail call i32 @Scaling_List(i16* %arraydecay, i16* %arraydecay64, i32 16, i16* %arrayidx66, %struct.datapartition* %0) #6
  br label %for.inc

if.else:                                          ; preds = %if.then57
  %sub = add i64 %indvars.iv, 4294967290
  %idxprom69 = and i64 %sub, 4294967295
  %arraydecay71 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %idxprom69, i64 0
  %arraydecay75 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 %idxprom69, i64 0
  %arrayidx78 = getelementptr inbounds [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 %idxprom69
  %call79 = tail call i32 @Scaling_List(i16* %arraydecay71, i16* %arraydecay75, i32 64, i16* %arrayidx78, %struct.datapartition* %0) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else, %if.then59
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %if.end84, label %for.body

if.end84:                                         ; preds = %for.inc, %if.end4, %if.end39
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 13
  %25 = load i32* %log2_max_frame_num_minus4, align 4, !tbaa !3
  %call85 = tail call i32 @ue_v(i8* getelementptr inbounds ([31 x i8]* @.str21, i64 0, i64 0), i32 %25, %struct.datapartition* %0) #5
  %pic_order_cnt_type = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 14
  %26 = load i32* %pic_order_cnt_type, align 4, !tbaa !3
  %call87 = tail call i32 @ue_v(i8* getelementptr inbounds ([24 x i8]* @.str22, i64 0, i64 0), i32 %26, %struct.datapartition* %0) #5
  %27 = load i32* %pic_order_cnt_type, align 4, !tbaa !3
  switch i32 %27, label %if.end118 [
    i32 0, label %if.then91
    i32 1, label %if.then97
  ]

if.then91:                                        ; preds = %if.end84
  %log2_max_pic_order_cnt_lsb_minus4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 15
  %28 = load i32* %log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !3
  %call92 = tail call i32 @ue_v(i8* getelementptr inbounds ([39 x i8]* @.str23, i64 0, i64 0), i32 %28, %struct.datapartition* %0) #5
  br label %if.end118

if.then97:                                        ; preds = %if.end84
  %delta_pic_order_always_zero_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 16
  %29 = load i32* %delta_pic_order_always_zero_flag, align 4, !tbaa !1
  %call98 = tail call i32 @u_1(i8* getelementptr inbounds ([38 x i8]* @.str24, i64 0, i64 0), i32 %29, %struct.datapartition* %0) #5
  %offset_for_non_ref_pic = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 17
  %30 = load i32* %offset_for_non_ref_pic, align 4, !tbaa !3
  %call100 = tail call i32 @se_v(i8* getelementptr inbounds ([28 x i8]* @.str25, i64 0, i64 0), i32 %30, %struct.datapartition* %0) #5
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 18
  %31 = load i32* %offset_for_top_to_bottom_field, align 4, !tbaa !3
  %call102 = tail call i32 @se_v(i8* getelementptr inbounds ([36 x i8]* @.str26, i64 0, i64 0), i32 %31, %struct.datapartition* %0) #5
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 19
  %32 = load i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4, !tbaa !3
  %call104 = tail call i32 @ue_v(i8* getelementptr inbounds ([43 x i8]* @.str27, i64 0, i64 0), i32 %32, %struct.datapartition* %0) #5
  %33 = load i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4, !tbaa !3
  %cmp108300 = icmp eq i32 %33, 0
  br i1 %cmp108300, label %if.end118, label %for.body109

for.body109:                                      ; preds = %if.then97, %for.body109
  %i.1301 = phi i32 [ %inc115, %for.body109 ], [ 0, %if.then97 ]
  %idxprom110 = zext i32 %i.1301 to i64
  %arrayidx111 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 20, i64 %idxprom110
  %34 = load i32* %arrayidx111, align 4, !tbaa !3
  %call112 = tail call i32 @se_v(i8* getelementptr inbounds ([26 x i8]* @.str28, i64 0, i64 0), i32 %34, %struct.datapartition* %0) #5
  %inc115 = add i32 %i.1301, 1
  %35 = load i32* %num_ref_frames_in_pic_order_cnt_cycle, align 4, !tbaa !3
  %cmp108 = icmp ult i32 %inc115, %35
  br i1 %cmp108, label %for.body109, label %if.end118

if.end118:                                        ; preds = %if.then97, %for.body109, %if.end84, %if.then91
  %num_ref_frames = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 21
  %36 = load i32* %num_ref_frames, align 4, !tbaa !3
  %call119 = tail call i32 @ue_v(i8* getelementptr inbounds ([20 x i8]* @.str29, i64 0, i64 0), i32 %36, %struct.datapartition* %0) #5
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 22
  %37 = load i32* %gaps_in_frame_num_value_allowed_flag, align 4, !tbaa !1
  %call121 = tail call i32 @u_1(i8* getelementptr inbounds ([42 x i8]* @.str30, i64 0, i64 0), i32 %37, %struct.datapartition* %0) #5
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 23
  %38 = load i32* %pic_width_in_mbs_minus1, align 4, !tbaa !3
  %call123 = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str31, i64 0, i64 0), i32 %38, %struct.datapartition* %0) #5
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 24
  %39 = load i32* %pic_height_in_map_units_minus1, align 4, !tbaa !3
  %call125 = tail call i32 @ue_v(i8* getelementptr inbounds ([36 x i8]* @.str32, i64 0, i64 0), i32 %39, %struct.datapartition* %0) #5
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 25
  %40 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %call127 = tail call i32 @u_1(i8* getelementptr inbounds ([25 x i8]* @.str33, i64 0, i64 0), i32 %40, %struct.datapartition* %0) #5
  %41 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool130 = icmp eq i32 %41, 0
  br i1 %tobool130, label %if.then131, label %if.end134

if.then131:                                       ; preds = %if.end118
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 26
  %42 = load i32* %mb_adaptive_frame_field_flag, align 4, !tbaa !1
  %call132 = tail call i32 @u_1(i8* getelementptr inbounds ([34 x i8]* @.str34, i64 0, i64 0), i32 %42, %struct.datapartition* %0) #5
  br label %if.end134

if.end134:                                        ; preds = %if.end118, %if.then131
  %direct_8x8_inference_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 27
  %43 = load i32* %direct_8x8_inference_flag, align 4, !tbaa !1
  %call135 = tail call i32 @u_1(i8* getelementptr inbounds ([31 x i8]* @.str35, i64 0, i64 0), i32 %43, %struct.datapartition* %0) #5
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 28
  %44 = load i32* %frame_cropping_flag, align 4, !tbaa !1
  %call137 = tail call i32 @u_1(i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0), i32 %44, %struct.datapartition* %0) #5
  %45 = load i32* %frame_cropping_flag, align 4, !tbaa !1
  %tobool140 = icmp eq i32 %45, 0
  br i1 %tobool140, label %if.end150, label %if.then141

if.then141:                                       ; preds = %if.end134
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 29
  %46 = load i32* %frame_cropping_rect_left_offset, align 4, !tbaa !3
  %call142 = tail call i32 @ue_v(i8* getelementptr inbounds ([37 x i8]* @.str37, i64 0, i64 0), i32 %46, %struct.datapartition* %0) #5
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 30
  %47 = load i32* %frame_cropping_rect_right_offset, align 4, !tbaa !3
  %call144 = tail call i32 @ue_v(i8* getelementptr inbounds ([38 x i8]* @.str38, i64 0, i64 0), i32 %47, %struct.datapartition* %0) #5
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 31
  %48 = load i32* %frame_cropping_rect_top_offset, align 4, !tbaa !3
  %call146 = tail call i32 @ue_v(i8* getelementptr inbounds ([36 x i8]* @.str39, i64 0, i64 0), i32 %48, %struct.datapartition* %0) #5
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 32
  %49 = load i32* %frame_cropping_rect_bottom_offset, align 4, !tbaa !3
  %call148 = tail call i32 @ue_v(i8* getelementptr inbounds ([39 x i8]* @.str40, i64 0, i64 0), i32 %49, %struct.datapartition* %0) #5
  br label %if.end150

if.end150:                                        ; preds = %if.end134, %if.then141
  %vui_parameters_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %sps, i64 0, i32 33
  %50 = load i32* %vui_parameters_present_flag, align 4, !tbaa !1
  %call151 = tail call i32 @u_1(i8* getelementptr inbounds ([33 x i8]* @.str41, i64 0, i64 0), i32 %50, %struct.datapartition* %0) #5
  %51 = load i32* %vui_parameters_present_flag, align 4, !tbaa !1
  %tobool154 = icmp eq i32 %51, 0
  br i1 %tobool154, label %if.end158, label %if.then155

if.then155:                                       ; preds = %if.end150
  %52 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rgb_input_flag.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 139
  %53 = load i32* %rgb_input_flag.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %53, 0
  br i1 %tobool.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then155
  %yuv_format.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 18
  %54 = load i32* %yuv_format.i, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %54, 3
  br i1 %cmp.i, label %GenerateVUISequenceParameters.exit, label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i, %if.then155
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([75 x i8]* @str88, i64 0, i64 0)) #2
  tail call void @exit(i32 -1) #7
  unreachable

GenerateVUISequenceParameters.exit:               ; preds = %land.lhs.true.i
  %puts1.i = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @str89, i64 0, i64 0)) #2
  %call1.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str72, i64 0, i64 0), i32 0, %struct.datapartition* %0) #5
  %call2.i = tail call i32 @u_1(i8* getelementptr inbounds ([32 x i8]* @.str73, i64 0, i64 0), i32 0, %struct.datapartition* %0) #5
  %call4.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str74, i64 0, i64 0), i32 1, %struct.datapartition* %0) #5
  %call6.i = tail call i32 @u_v(i32 3, i8* getelementptr inbounds ([18 x i8]* @.str75, i64 0, i64 0), i32 2, %struct.datapartition* %0) #5
  %call8.i = tail call i32 @u_1(i8* getelementptr inbounds ([27 x i8]* @.str76, i64 0, i64 0), i32 1, %struct.datapartition* %0) #5
  %call10.i = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str77, i64 0, i64 0), i32 1, %struct.datapartition* %0) #5
  %call12.i = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([22 x i8]* @.str78, i64 0, i64 0), i32 2, %struct.datapartition* %0) #5
  %call14.i = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([30 x i8]* @.str79, i64 0, i64 0), i32 2, %struct.datapartition* %0) #5
  %call16.i = tail call i32 @u_v(i32 8, i8* getelementptr inbounds ([25 x i8]* @.str80, i64 0, i64 0), i32 0, %struct.datapartition* %0) #5
  %call18.i = tail call i32 @u_1(i8* getelementptr inbounds ([34 x i8]* @.str81, i64 0, i64 0), i32 0, %struct.datapartition* %0) #5
  %call20.i = tail call i32 @u_1(i8* getelementptr inbounds ([30 x i8]* @.str82, i64 0, i64 0), i32 0, %struct.datapartition* %0) #5
  %call22.i = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str83, i64 0, i64 0), i32 0, %struct.datapartition* %0) #5
  %call24.i = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str84, i64 0, i64 0), i32 0, %struct.datapartition* %0) #5
  %call26.i = tail call i32 @u_1(i8* getelementptr inbounds ([28 x i8]* @.str85, i64 0, i64 0), i32 0, %struct.datapartition* %0) #5
  %call28.i = tail call i32 @u_1(i8* getelementptr inbounds ([32 x i8]* @.str86, i64 0, i64 0), i32 0, %struct.datapartition* %0) #5
  br label %if.end158

if.end158:                                        ; preds = %if.end150, %GenerateVUISequenceParameters.exit
  %55 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  tail call void @SODBtoRBSP(%struct.Bitstream* %55) #5
  %56 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %byte_pos = getelementptr inbounds %struct.Bitstream* %56, i64 0, i32 0
  %57 = load i32* %byte_pos, align 4, !tbaa !3
  %58 = bitcast %struct.Bitstream* %56 to i8*
  tail call void @free(i8* %58) #5
  tail call void @free(i8* %call) #5
  ret i32 %57
}

; Function Attrs: optsize
declare i32 @RBSPtoNALU(i8*, %struct.NALU_t*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 %PPS_id) #0 {
entry:
  %rbsp = alloca [64000 x i8], align 16
  %call = call %struct.NALU_t* (i32, ...)* bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 64000) #5
  %0 = getelementptr inbounds [64000 x i8]* %rbsp, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64000, i8* %0) #2
  %idxprom = sext i32 %PPS_id to i64
  %arrayidx = getelementptr inbounds [256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 %idxprom
  %call1 = call i32 @GeneratePic_parameter_set_rbsp(%struct.pic_parameter_set_rbsp_t* %arrayidx, i8* %0) #6
  %call3 = call i32 @RBSPtoNALU(i8* %0, %struct.NALU_t* %call, i32 %call1, i32 8, i32 3, i32 0, i32 1) #5
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t* %call, i64 0, i32 0
  store i32 4, i32* %startcodeprefix_len, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 64000, i8* %0) #2
  ret %struct.NALU_t* %call
}

; Function Attrs: nounwind optsize uwtable
define i32 @GeneratePic_parameter_set_rbsp(%struct.pic_parameter_set_rbsp_t* %pps, i8* %rbsp) #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 120) #5
  %0 = bitcast i8* %call to %struct.datapartition*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str42, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call noalias i8* @calloc(i64 1, i64 48) #5
  %1 = bitcast i8* %call1 to %struct.Bitstream*
  %bitstream = bitcast i8* %call to %struct.Bitstream**
  store %struct.Bitstream* %1, %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str43, i64 0, i64 0)) #5
  %.pre = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = phi %struct.Bitstream* [ %.pre, %if.then3 ], [ %1, %if.end ]
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9
  store i8* %rbsp, i8** %streamBuffer, align 8, !tbaa !0
  %3 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !3
  %4 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %pic_order_present_flag = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 112
  %5 = load i32* %pic_order_present_flag, align 4, !tbaa !3
  %pic_order_present_flag7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 7
  store i32 %5, i32* %pic_order_present_flag7, align 4, !tbaa !1
  %pic_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 1
  %6 = load i32* %pic_parameter_set_id, align 4, !tbaa !3
  %call8 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str44, i64 0, i64 0), i32 %6, %struct.datapartition* %0) #5
  %seq_parameter_set_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 2
  %7 = load i32* %seq_parameter_set_id, align 4, !tbaa !3
  %call9 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str45, i64 0, i64 0), i32 %7, %struct.datapartition* %0) #5
  %entropy_coding_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 3
  %8 = load i32* %entropy_coding_mode_flag, align 4, !tbaa !1
  %call11 = tail call i32 @u_1(i8* getelementptr inbounds ([30 x i8]* @.str46, i64 0, i64 0), i32 %8, %struct.datapartition* %0) #5
  %9 = load i32* %pic_order_present_flag7, align 4, !tbaa !1
  %call14 = tail call i32 @u_1(i8* getelementptr inbounds ([28 x i8]* @.str47, i64 0, i64 0), i32 %9, %struct.datapartition* %0) #5
  %num_slice_groups_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 8
  %10 = load i32* %num_slice_groups_minus1, align 4, !tbaa !3
  %call16 = tail call i32 @ue_v(i8* getelementptr inbounds ([29 x i8]* @.str48, i64 0, i64 0), i32 %10, %struct.datapartition* %0) #5
  %11 = load i32* %num_slice_groups_minus1, align 4, !tbaa !3
  %cmp19 = icmp eq i32 %11, 0
  br i1 %cmp19, label %if.end97, label %if.then20

if.then20:                                        ; preds = %if.end4
  %slice_group_map_type = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 9
  %12 = load i32* %slice_group_map_type, align 4, !tbaa !3
  %call21 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str49, i64 0, i64 0), i32 %12, %struct.datapartition* %0) #5
  %13 = load i32* %slice_group_map_type, align 4, !tbaa !3
  switch i32 %13, label %if.end97 [
    i32 0, label %for.body
    i32 2, label %for.cond33.preheader
    i32 3, label %if.then56
    i32 4, label %if.then56
    i32 5, label %if.then56
    i32 6, label %if.then64
  ]

for.cond33.preheader:                             ; preds = %if.then20
  %14 = load i32* %num_slice_groups_minus1, align 4, !tbaa !3
  %cmp35352 = icmp eq i32 %14, 0
  br i1 %cmp35352, label %if.end97, label %for.body36

for.body:                                         ; preds = %if.then20, %for.body
  %i.0349 = phi i32 [ %inc, %for.body ], [ 0, %if.then20 ]
  %idxprom = zext i32 %i.0349 to i64
  %arrayidx = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 10, i64 %idxprom
  %15 = load i32* %arrayidx, align 4, !tbaa !3
  %call28 = tail call i32 @ue_v(i8* getelementptr inbounds ([26 x i8]* @.str50, i64 0, i64 0), i32 %15, %struct.datapartition* %0) #5
  %inc = add i32 %i.0349, 1
  %16 = load i32* %num_slice_groups_minus1, align 4, !tbaa !3
  %cmp27 = icmp ugt i32 %inc, %16
  br i1 %cmp27, label %if.end97, label %for.body

for.body36:                                       ; preds = %for.cond33.preheader, %for.body36
  %i.1353 = phi i32 [ %inc46, %for.body36 ], [ 0, %for.cond33.preheader ]
  %idxprom37 = zext i32 %i.1353 to i64
  %arrayidx38 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 11, i64 %idxprom37
  %17 = load i32* %arrayidx38, align 4, !tbaa !3
  %call39 = tail call i32 @ue_v(i8* getelementptr inbounds ([17 x i8]* @.str51, i64 0, i64 0), i32 %17, %struct.datapartition* %0) #5
  %arrayidx42 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 12, i64 %idxprom37
  %18 = load i32* %arrayidx42, align 4, !tbaa !3
  %call43 = tail call i32 @ue_v(i8* getelementptr inbounds ([21 x i8]* @.str52, i64 0, i64 0), i32 %18, %struct.datapartition* %0) #5
  %inc46 = add i32 %i.1353, 1
  %19 = load i32* %num_slice_groups_minus1, align 4, !tbaa !3
  %cmp35 = icmp ult i32 %inc46, %19
  br i1 %cmp35, label %for.body36, label %if.end97

if.then56:                                        ; preds = %if.then20, %if.then20, %if.then20
  %slice_group_change_direction_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 13
  %20 = load i32* %slice_group_change_direction_flag, align 4, !tbaa !1
  %call57 = tail call i32 @u_1(i8* getelementptr inbounds ([39 x i8]* @.str53, i64 0, i64 0), i32 %20, %struct.datapartition* %0) #5
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 14
  %21 = load i32* %slice_group_change_rate_minus1, align 4, !tbaa !3
  %call59 = tail call i32 @ue_v(i8* getelementptr inbounds ([36 x i8]* @.str54, i64 0, i64 0), i32 %21, %struct.datapartition* %0) #5
  br label %if.end97

if.then64:                                        ; preds = %if.then20
  %22 = load i32* %num_slice_groups_minus1, align 4, !tbaa !3
  %cmp66 = icmp ugt i32 %22, 3
  br i1 %cmp66, label %if.end79, label %if.else68

if.else68:                                        ; preds = %if.then64
  %cmp70 = icmp ugt i32 %22, 1
  br i1 %cmp70, label %if.end79, label %if.else72

if.else72:                                        ; preds = %if.else68
  %not.cmp74 = icmp ne i32 %22, 0
  %. = zext i1 %not.cmp74 to i32
  br label %if.end79

if.end79:                                         ; preds = %if.else72, %if.else68, %if.then64
  %NumberBitsPerSliceGroupId.0 = phi i32 [ 3, %if.then64 ], [ 2, %if.else68 ], [ %., %if.else72 ]
  %pic_size_in_map_units_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 15
  %23 = load i32* %pic_size_in_map_units_minus1, align 4, !tbaa !3
  %call80 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str55, i64 0, i64 0), i32 %23, %struct.datapartition* %0) #5
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 16
  br label %for.body85

for.body85:                                       ; preds = %if.end79, %for.body85
  %i.2356 = phi i32 [ 0, %if.end79 ], [ %inc91, %for.body85 ]
  %idxprom86 = zext i32 %i.2356 to i64
  %24 = load i8** %slice_group_id, align 8, !tbaa !0
  %arrayidx87 = getelementptr inbounds i8* %24, i64 %idxprom86
  %25 = load i8* %arrayidx87, align 1, !tbaa !1
  %conv = zext i8 %25 to i32
  %call88 = tail call i32 @u_v(i32 %NumberBitsPerSliceGroupId.0, i8* getelementptr inbounds ([24 x i8]* @.str56, i64 0, i64 0), i32 %conv, %struct.datapartition* %0) #5
  %inc91 = add i32 %i.2356, 1
  %26 = load i32* %pic_size_in_map_units_minus1, align 4, !tbaa !3
  %cmp84 = icmp ugt i32 %inc91, %26
  br i1 %cmp84, label %if.end97, label %for.body85

if.end97:                                         ; preds = %for.body85, %for.cond33.preheader, %for.body36, %for.body, %if.then20, %if.end4, %if.then56
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 17
  %27 = load i32* %num_ref_idx_l0_active_minus1, align 4, !tbaa !3
  %call98 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str57, i64 0, i64 0), i32 %27, %struct.datapartition* %0) #5
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 18
  %28 = load i32* %num_ref_idx_l1_active_minus1, align 4, !tbaa !3
  %call100 = tail call i32 @ue_v(i8* getelementptr inbounds ([34 x i8]* @.str58, i64 0, i64 0), i32 %28, %struct.datapartition* %0) #5
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 19
  %29 = load i32* %weighted_pred_flag, align 4, !tbaa !1
  %call102 = tail call i32 @u_1(i8* getelementptr inbounds ([24 x i8]* @.str59, i64 0, i64 0), i32 %29, %struct.datapartition* %0) #5
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 20
  %30 = load i32* %weighted_bipred_idc, align 4, !tbaa !3
  %call104 = tail call i32 @u_v(i32 2, i8* getelementptr inbounds ([25 x i8]* @.str60, i64 0, i64 0), i32 %30, %struct.datapartition* %0) #5
  %pic_init_qp_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 21
  %31 = load i32* %pic_init_qp_minus26, align 4, !tbaa !3
  %call106 = tail call i32 @se_v(i8* getelementptr inbounds ([25 x i8]* @.str61, i64 0, i64 0), i32 %31, %struct.datapartition* %0) #5
  %pic_init_qs_minus26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 22
  %32 = load i32* %pic_init_qs_minus26, align 4, !tbaa !3
  %call108 = tail call i32 @se_v(i8* getelementptr inbounds ([25 x i8]* @.str62, i64 0, i64 0), i32 %32, %struct.datapartition* %0) #5
  %33 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %ProfileIDC.i = getelementptr inbounds %struct.InputParameters* %33, i64 0, i32 0
  %34 = load i32* %ProfileIDC.i, align 4, !tbaa !3
  switch i32 %34, label %if.else125 [
    i32 144, label %if.then122
    i32 122, label %if.then122
    i32 110, label %if.then122
    i32 100, label %if.then122
  ]

if.then122:                                       ; preds = %if.end97, %if.end97, %if.end97, %if.end97
  %cb_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 24
  %35 = load i32* %cb_qp_index_offset, align 4, !tbaa !3
  %call123 = tail call i32 @se_v(i8* getelementptr inbounds ([28 x i8]* @.str63, i64 0, i64 0), i32 %35, %struct.datapartition* %0) #5
  br label %if.end128

if.else125:                                       ; preds = %if.end97
  %chroma_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 23
  %36 = load i32* %chroma_qp_index_offset, align 4, !tbaa !3
  %call126 = tail call i32 @se_v(i8* getelementptr inbounds ([28 x i8]* @.str63, i64 0, i64 0), i32 %36, %struct.datapartition* %0) #5
  br label %if.end128

if.end128:                                        ; preds = %if.else125, %if.then122
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 26
  %37 = load i32* %deblocking_filter_control_present_flag, align 4, !tbaa !1
  %call129 = tail call i32 @u_1(i8* getelementptr inbounds ([44 x i8]* @.str64, i64 0, i64 0), i32 %37, %struct.datapartition* %0) #5
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 27
  %38 = load i32* %constrained_intra_pred_flag, align 4, !tbaa !1
  %call131 = tail call i32 @u_1(i8* getelementptr inbounds ([33 x i8]* @.str65, i64 0, i64 0), i32 %38, %struct.datapartition* %0) #5
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 28
  %39 = load i32* %redundant_pic_cnt_present_flag, align 4, !tbaa !1
  %call133 = tail call i32 @u_1(i8* getelementptr inbounds ([36 x i8]* @.str66, i64 0, i64 0), i32 %39, %struct.datapartition* %0) #5
  switch i32 %34, label %if.end201 [
    i32 144, label %if.then146
    i32 122, label %if.then146
    i32 110, label %if.then146
    i32 100, label %if.then146
  ]

if.then146:                                       ; preds = %if.end128, %if.end128, %if.end128, %if.end128
  %transform_8x8_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 4
  %40 = load i32* %transform_8x8_mode_flag, align 4, !tbaa !1
  %call147 = tail call i32 @u_1(i8* getelementptr inbounds ([29 x i8]* @.str67, i64 0, i64 0), i32 %40, %struct.datapartition* %0) #5
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 5
  %41 = load i32* %pic_scaling_matrix_present_flag, align 4, !tbaa !1
  %call149 = tail call i32 @u_1(i8* getelementptr inbounds ([37 x i8]* @.str68, i64 0, i64 0), i32 %41, %struct.datapartition* %0) #5
  %42 = load i32* %pic_scaling_matrix_present_flag, align 4, !tbaa !1
  %tobool = icmp eq i32 %42, 0
  br i1 %tobool, label %if.end198, label %if.then152

if.then152:                                       ; preds = %if.then146
  %43 = load i32* %transform_8x8_mode_flag, align 4, !tbaa !1
  %shl344.mask = and i32 %43, 2147483647
  %cmp156346 = icmp eq i32 %shl344.mask, 2147483645
  br i1 %cmp156346, label %if.end198, label %for.body158

for.body158:                                      ; preds = %if.then152, %for.inc195
  %i.3347 = phi i32 [ %inc196, %for.inc195 ], [ 0, %if.then152 ]
  %idxprom159 = zext i32 %i.3347 to i64
  %arrayidx160 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 6, i64 %idxprom159
  %44 = load i32* %arrayidx160, align 4, !tbaa !3
  %call161 = tail call i32 @u_1(i8* getelementptr inbounds ([35 x i8]* @.str69, i64 0, i64 0), i32 %44, %struct.datapartition* %0) #5
  %45 = load i32* %arrayidx160, align 4, !tbaa !3
  %tobool166 = icmp eq i32 %45, 0
  br i1 %tobool166, label %for.inc195, label %if.then167

if.then167:                                       ; preds = %for.body158
  %cmp168 = icmp ult i32 %i.3347, 6
  br i1 %cmp168, label %if.then170, label %if.else180

if.then170:                                       ; preds = %if.then167
  %arraydecay = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %idxprom159, i64 0
  %arraydecay175 = getelementptr inbounds [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 %idxprom159, i64 0
  %arrayidx177 = getelementptr inbounds [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 %idxprom159
  %call178 = tail call i32 @Scaling_List(i16* %arraydecay, i16* %arraydecay175, i32 16, i16* %arrayidx177, %struct.datapartition* %0) #6
  br label %for.inc195

if.else180:                                       ; preds = %if.then167
  %sub = add i32 %i.3347, -6
  %idxprom181 = zext i32 %sub to i64
  %arraydecay183 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %idxprom181, i64 0
  %arraydecay187 = getelementptr inbounds [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 %idxprom181, i64 0
  %arrayidx190 = getelementptr inbounds [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 %idxprom181
  %call191 = tail call i32 @Scaling_List(i16* %arraydecay183, i16* %arraydecay187, i32 64, i16* %arrayidx190, %struct.datapartition* %0) #6
  br label %for.inc195

for.inc195:                                       ; preds = %for.body158, %if.else180, %if.then170
  %inc196 = add i32 %i.3347, 1
  %46 = load i32* %transform_8x8_mode_flag, align 4, !tbaa !1
  %shl = shl i32 %46, 1
  %add155 = add i32 %shl, 6
  %cmp156 = icmp ult i32 %inc196, %add155
  br i1 %cmp156, label %for.body158, label %if.end198

if.end198:                                        ; preds = %if.then152, %for.inc195, %if.then146
  %cr_qp_index_offset = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 25
  %47 = load i32* %cr_qp_index_offset, align 4, !tbaa !3
  %call199 = tail call i32 @se_v(i8* getelementptr inbounds ([35 x i8]* @.str70, i64 0, i64 0), i32 %47, %struct.datapartition* %0) #5
  br label %if.end201

if.end201:                                        ; preds = %if.end128, %if.end198
  %48 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  tail call void @SODBtoRBSP(%struct.Bitstream* %48) #5
  %49 = load %struct.Bitstream** %bitstream, align 8, !tbaa !0
  %byte_pos = getelementptr inbounds %struct.Bitstream* %49, i64 0, i32 0
  %50 = load i32* %byte_pos, align 4, !tbaa !3
  %51 = bitcast %struct.Bitstream* %49 to i8*
  tail call void @free(i8* %51) #5
  tail call void @free(i8* %call) #5
  ret i32 %50
}

; Function Attrs: optsize
declare %struct.colocated_params* @alloc_colocated(i32, i32, i32) #1

; Function Attrs: optsize
declare void @error(i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Scaling_List(i16* nocapture %scalingListinput, i16* nocapture %scalingList, i32 %sizeOfScalingList, i16* nocapture %UseDefaultScalingMatrix, %struct.datapartition* %partition) #0 {
entry:
  %cmp59 = icmp sgt i32 %sizeOfScalingList, 0
  br i1 %cmp59, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i32 %sizeOfScalingList, 16
  br label %for.body

for.body:                                         ; preds = %if.end28, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end28 ]
  %nextScale.063 = phi i32 [ 8, %for.body.lr.ph ], [ %nextScale.1, %if.end28 ]
  %lastScale.062 = phi i32 [ 8, %for.body.lr.ph ], [ %cond34, %if.end28 ]
  %len.061 = phi i32 [ 0, %for.body.lr.ph ], [ %len.1, %if.end28 ]
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds [16 x i8]* @ZZ_SCAN, i64 0, i64 %indvars.iv
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %arrayidx3 = getelementptr inbounds [64 x i8]* @ZZ_SCAN8, i64 0, i64 %indvars.iv
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %.sink.in = phi i8* [ %arrayidx, %cond.true ], [ %arrayidx3, %cond.false ]
  %.sink = load i8* %.sink.in, align 1
  %cmp5 = icmp eq i32 %nextScale.063, 0
  %idxprom36.pre = zext i8 %.sink to i64
  br i1 %cmp5, label %if.end28, label %if.then

if.then:                                          ; preds = %cond.end
  %arrayidx8 = getelementptr inbounds i16* %scalingListinput, i64 %idxprom36.pre
  %0 = load i16* %arrayidx8, align 2, !tbaa !4
  %conv9 = sext i16 %0 to i32
  %sub = sub nsw i32 %conv9, %lastScale.062
  %cmp10 = icmp sgt i32 %sub, 127
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  %sub13 = add nsw i32 %sub, -256
  br label %if.end17

if.else:                                          ; preds = %if.then
  %cmp14 = icmp slt i32 %sub, -128
  %add = add nsw i32 %sub, 256
  %add.sub = select i1 %cmp14, i32 %add, i32 %sub
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  %delta_scale.0 = phi i32 [ %sub13, %if.then12 ], [ %add.sub, %if.else ]
  %call = tail call i32 @se_v(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), i32 %delta_scale.0, %struct.datapartition* %partition) #5
  %add18 = add nsw i32 %call, %len.061
  %1 = load i16* %arrayidx8, align 2, !tbaa !4
  %conv21 = sext i16 %1 to i32
  %cmp22 = icmp eq i8 %.sink, 0
  %cmp24 = icmp eq i16 %1, 0
  %cmp24. = and i1 %cmp22, %cmp24
  %land.ext = zext i1 %cmp24. to i16
  %2 = load i16* %UseDefaultScalingMatrix, align 2, !tbaa !4
  %or = or i16 %land.ext, %2
  store i16 %or, i16* %UseDefaultScalingMatrix, align 2, !tbaa !4
  br label %if.end28

if.end28:                                         ; preds = %cond.end, %if.end17
  %len.1 = phi i32 [ %add18, %if.end17 ], [ %len.061, %cond.end ]
  %nextScale.1 = phi i32 [ %conv21, %if.end17 ], [ 0, %cond.end ]
  %cmp29 = icmp eq i32 %nextScale.1, 0
  %cond34 = select i1 %cmp29, i32 %lastScale.062, i32 %nextScale.1
  %conv35 = trunc i32 %cond34 to i16
  %arrayidx37 = getelementptr inbounds i16* %scalingList, i64 %idxprom36.pre
  store i16 %conv35, i16* %arrayidx37, align 2, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sizeOfScalingList
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end28, %entry
  %len.0.lcssa = phi i32 [ 0, %entry ], [ %len.1, %if.end28 ]
  ret i32 %len.0.lcssa
}

; Function Attrs: optsize
declare i32 @se_v(i8*, i32, %struct.datapartition*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #1

; Function Attrs: optsize
declare i32 @u_v(i32, i8*, i32, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @u_1(i8*, i32, %struct.datapartition*) #1

; Function Attrs: optsize
declare i32 @ue_v(i8*, i32, %struct.datapartition*) #1

; Function Attrs: optsize
declare void @SODBtoRBSP(%struct.Bitstream*) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
