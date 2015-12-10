; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c'
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
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@AlphaSec = common global [8 x float] zeroinitializer, align 16
@AlphaThird = common global [8 x float] zeroinitializer, align 16
@input = external global %struct.InputParameters*
@img = external global %struct.ImageParameters*
@quant_coef = internal unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243], [4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243]], [4 x [4 x i32]] [[4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660], [4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660]], [4 x [4 x i32]] [[4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194], [4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194]], [4 x [4 x i32]] [[4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647], [4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647]], [4 x [4 x i32]] [[4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355], [4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355]], [4 x [4 x i32]] [[4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893], [4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893]]], align 16
@Quantize_step = common global float 0.000000e+00, align 4
@Bsize = common global [8 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"get_mem_mv: mv\00", align 1
@flag_intra = common global i32* null, align 8
@.str1 = private unnamed_addr constant [24 x i8] c"get_mem_FME: flag_intra\00", align 1
@McostState = common global i32** null, align 8
@all_mincost = common global i32***** null, align 8
@all_bwmincost = common global i32***** null, align 8
@SearchState = common global i8** null, align 8
@byte_abs = external global i32*
@FastIntegerPelBlockMotionSearch.Hexagon_x = internal unnamed_addr constant [6 x i32] [i32 2, i32 1, i32 -1, i32 -2, i32 -1, i32 1], align 16
@FastIntegerPelBlockMotionSearch.Hexagon_y = internal unnamed_addr constant [6 x i32] [i32 0, i32 -2, i32 -2, i32 0, i32 2, i32 2], align 16
@FastIntegerPelBlockMotionSearch.Big_Hexagon_x = internal unnamed_addr constant [16 x i32] [i32 0, i32 -2, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -2, i32 0, i32 2, i32 4, i32 4, i32 4, i32 4, i32 4, i32 2], align 16
@FastIntegerPelBlockMotionSearch.Big_Hexagon_y = internal unnamed_addr constant [16 x i32] [i32 4, i32 3, i32 2, i32 1, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -3, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3], align 16
@listX = external global [6 x %struct.storable_picture**]
@pred_SAD_ref = common global i32 0, align 4
@pred_SAD_space = common global i32 0, align 4
@pred_SAD_uplayer = common global i32 0, align 4
@mvbits = external global i32*
@pred_MV_uplayer = common global [2 x i32] zeroinitializer, align 4
@Bframe_ctr = common global i32 0, align 4
@pred_MV_time = common global [2 x i32] zeroinitializer, align 4
@pred_MV_ref = common global [2 x i32] zeroinitializer, align 4
@spiral_search_x = external global i32*
@spiral_search_y = external global i32*
@PelY_14 = internal unnamed_addr global i16 (i16**, i32, i32, i32, i32)* null, align 8
@FastSubPelBlockMotionSearch.Diamond_x = internal unnamed_addr constant [4 x i32] [i32 -1, i32 0, i32 1, i32 0], align 16
@FastSubPelBlockMotionSearch.Diamond_y = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 0, i32 -1], align 16
@flag_intra_SAD = common global i32 0, align 4
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@img4Y_tmp = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
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
@pred_SAD_time = common global i32 0, align 4
@FME_blocktype = common global i32 0, align 4
@Thresh4x4 = common global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define void @DefineThreshold() #0 {
entry:
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 1), align 4, !dbg !875, !tbaa !876
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 2), align 8, !dbg !879, !tbaa !876
  store float 0x3F847AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 3), align 4, !dbg !880, !tbaa !876
  store float 0x3F947AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 4), align 16, !dbg !881, !tbaa !876
  store float 0x3F9EB851E0000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 5), align 4, !dbg !882, !tbaa !876
  store float 0x3F9EB851E0000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 6), align 8, !dbg !883, !tbaa !876
  store float 0x3FA47AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaSec, i64 0, i64 7), align 4, !dbg !884, !tbaa !876
  store float 0x3FAEB851E0000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 1), align 4, !dbg !885, !tbaa !876
  store float 0x3FB1EB8520000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 2), align 8, !dbg !886, !tbaa !876
  store float 0x3FB1EB8520000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 3), align 4, !dbg !887, !tbaa !876
  store float 0x3FB47AE140000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 4), align 16, !dbg !888, !tbaa !876
  store float 0x3FBEB851E0000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 5), align 4, !dbg !889, !tbaa !876
  store float 0x3FBC28F5C0000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 6), align 8, !dbg !890, !tbaa !876
  store float 0x3FC3333340000000, float* getelementptr inbounds ([8 x float]* @AlphaThird, i64 0, i64 7), align 4, !dbg !891, !tbaa !876
  tail call void @DefineThresholdMB() #5, !dbg !892
  ret void, !dbg !893
}

; Function Attrs: nounwind optsize uwtable
define void @DefineThresholdMB() #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !894, !tbaa !895
  %qpN = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 4, !dbg !894
  %1 = load i32* %qpN, align 4, !dbg !894, !tbaa !896
  %div = sdiv i32 %1, 6, !dbg !894
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !34), !dbg !894
  %rem = srem i32 %1, 6, !dbg !897
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !36), !dbg !897
  %add = add nsw i32 %div, 15, !dbg !898
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !37), !dbg !898
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !899, !tbaa !895
  %type = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6, !dbg !899
  %3 = load i32* %type, align 4, !dbg !899, !tbaa !896
  %cmp = icmp eq i32 %3, 2, !dbg !899
  %shl = shl i32 1, %add, !dbg !900
  br i1 %cmp, label %if.then, label %if.else, !dbg !899

if.then:                                          ; preds = %entry
  %div3 = sdiv i32 %shl, 3, !dbg !900
  tail call void @llvm.dbg.value(metadata !{i32 %div3}, i64 0, metadata !38), !dbg !900
  br label %if.end, !dbg !900

if.else:                                          ; preds = %entry
  %div5 = sdiv i32 %shl, 6, !dbg !901
  tail call void @llvm.dbg.value(metadata !{i32 %div5}, i64 0, metadata !38), !dbg !901
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gb_qp_const.0 = phi i32 [ %div3, %if.then ], [ %div5, %if.else ]
  %sub7 = sub nsw i32 %shl, %gb_qp_const.0, !dbg !902
  %idxprom = sext i32 %rem to i64, !dbg !902
  %arrayidx9 = getelementptr inbounds [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %idxprom, i64 0, i64 0, !dbg !902
  %4 = load i32* %arrayidx9, align 16, !dbg !902, !tbaa !896
  %div10 = sdiv i32 %sub7, %4, !dbg !902
  tail call void @llvm.dbg.value(metadata !{i32 %div10}, i64 0, metadata !39), !dbg !902
  %conv = sitofp i32 %div10 to float, !dbg !903
  %div11 = fdiv float %conv, 0x403670A3E0000000, !dbg !903
  store float %div11, float* @Quantize_step, align 4, !dbg !903, !tbaa !876
  %mul = fmul float %div11, 2.560000e+02, !dbg !904
  store float %mul, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 7), align 4, !dbg !904, !tbaa !876
  %mul12 = fmul float %mul, 4.000000e+00, !dbg !905
  store float %mul12, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 6), align 8, !dbg !905, !tbaa !876
  store float %mul12, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 5), align 4, !dbg !906, !tbaa !876
  %mul14 = fmul float %mul12, 4.000000e+00, !dbg !907
  store float %mul14, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 4), align 16, !dbg !907, !tbaa !876
  %mul15 = fmul float %mul14, 4.000000e+00, !dbg !908
  store float %mul15, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 3), align 4, !dbg !908, !tbaa !876
  store float %mul15, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 2), align 8, !dbg !909, !tbaa !876
  %mul17 = fmul float %mul15, 4.000000e+00, !dbg !910
  store float %mul17, float* getelementptr inbounds ([8 x float]* @Bsize, i64 0, i64 1), align 4, !dbg !910, !tbaa !876
  ret void, !dbg !911
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_mincost(i32****** nocapture %mv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32****** %mv}, i64 0, metadata !50), !dbg !912
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !913, !tbaa !895
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !913
  %1 = load i32* %width, align 4, !dbg !913, !tbaa !896
  %div = sdiv i32 %1, 4, !dbg !913
  %conv = sext i32 %div to i64, !dbg !913
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #6, !dbg !913
  %2 = bitcast i8* %call to i32*****, !dbg !913
  store i32***** %2, i32****** %mv, align 8, !dbg !913, !tbaa !895
  %cmp = icmp eq i8* %call, null, !dbg !913
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !913

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !914
  br label %for.cond.preheader, !dbg !914

for.cond.preheader:                               ; preds = %if.then, %entry
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !915, !tbaa !895
  %width2109 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 13, !dbg !915
  %4 = load i32* %width2109, align 4, !dbg !915, !tbaa !896
  %div3110 = sdiv i32 %4, 4, !dbg !915
  %cmp4111 = icmp sgt i32 %4, 3, !dbg !915
  %height112 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 15, !dbg !917
  %5 = load i32* %height112, align 4, !dbg !917, !tbaa !896
  br i1 %cmp4111, label %for.body, label %for.end70, !dbg !915

for.body:                                         ; preds = %for.inc68, %for.cond.preheader
  %indvars.iv123 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next124, %for.inc68 ]
  %6 = phi i32 [ %5, %for.cond.preheader ], [ %33, %for.inc68 ]
  %div6 = sdiv i32 %6, 4, !dbg !917
  %conv7 = sext i32 %div6 to i64, !dbg !917
  %call8 = tail call noalias i8* @calloc(i64 %conv7, i64 8) #6, !dbg !917
  %7 = bitcast i8* %call8 to i32****, !dbg !917
  %8 = load i32****** %mv, align 8, !dbg !917, !tbaa !895
  %arrayidx = getelementptr inbounds i32***** %8, i64 %indvars.iv123, !dbg !917
  store i32**** %7, i32***** %arrayidx, align 8, !dbg !917, !tbaa !895
  %cmp9 = icmp eq i8* %call8, null, !dbg !917
  br i1 %cmp9, label %if.then11, label %for.cond13.preheader, !dbg !917

if.then11:                                        ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !919
  br label %for.cond13.preheader, !dbg !919

for.cond13.preheader:                             ; preds = %if.then11, %for.body
  %9 = load %struct.ImageParameters** @img, align 8, !dbg !920, !tbaa !895
  %height14104 = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 15, !dbg !920
  %10 = load i32* %height14104, align 4, !dbg !920, !tbaa !896
  %cmp16106 = icmp sgt i32 %10, 3, !dbg !920
  br i1 %cmp16106, label %for.body18, label %for.inc68, !dbg !920

for.body18:                                       ; preds = %for.cond13.preheader, %for.inc65
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc65 ], [ 0, %for.cond13.preheader ]
  %11 = phi %struct.ImageParameters* [ %30, %for.inc65 ], [ %9, %for.cond13.preheader ]
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 9, !dbg !922
  %12 = load i32* %max_num_references, align 4, !dbg !922, !tbaa !896
  %conv19 = sext i32 %12 to i64, !dbg !922
  %call20 = tail call noalias i8* @calloc(i64 %conv19, i64 8) #6, !dbg !922
  %13 = bitcast i8* %call20 to i32***, !dbg !922
  %14 = load i32****** %mv, align 8, !dbg !922, !tbaa !895
  %arrayidx23 = getelementptr inbounds i32***** %14, i64 %indvars.iv123, !dbg !922
  %15 = load i32***** %arrayidx23, align 8, !dbg !922, !tbaa !895
  %arrayidx24 = getelementptr inbounds i32**** %15, i64 %indvars.iv118, !dbg !922
  store i32*** %13, i32**** %arrayidx24, align 8, !dbg !922, !tbaa !895
  %cmp25 = icmp eq i8* %call20, null, !dbg !922
  br i1 %cmp25, label %if.then27, label %for.cond29.preheader, !dbg !922

if.then27:                                        ; preds = %for.body18
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !924
  br label %for.cond29.preheader, !dbg !924

for.cond29.preheader:                             ; preds = %if.then27, %for.body18
  %16 = load %struct.ImageParameters** @img, align 8, !dbg !925, !tbaa !895
  %max_num_references30101 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 9, !dbg !925
  %17 = load i32* %max_num_references30101, align 4, !dbg !925, !tbaa !896
  %cmp31102 = icmp sgt i32 %17, 0, !dbg !925
  br i1 %cmp31102, label %for.body33, label %for.inc65, !dbg !925

for.body33:                                       ; preds = %for.cond29.preheader, %for.inc62
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.inc62 ], [ 0, %for.cond29.preheader ]
  %call34 = tail call noalias i8* @calloc(i64 9, i64 8) #6, !dbg !927
  %18 = bitcast i8* %call34 to i32**, !dbg !927
  %19 = load i32****** %mv, align 8, !dbg !927, !tbaa !895
  %arrayidx38 = getelementptr inbounds i32***** %19, i64 %indvars.iv123, !dbg !927
  %20 = load i32***** %arrayidx38, align 8, !dbg !927, !tbaa !895
  %arrayidx39 = getelementptr inbounds i32**** %20, i64 %indvars.iv118, !dbg !927
  %21 = load i32**** %arrayidx39, align 8, !dbg !927, !tbaa !895
  %arrayidx40 = getelementptr inbounds i32*** %21, i64 %indvars.iv116, !dbg !927
  store i32** %18, i32*** %arrayidx40, align 8, !dbg !927, !tbaa !895
  %cmp41 = icmp eq i8* %call34, null, !dbg !927
  br i1 %cmp41, label %if.then43, label %for.body48, !dbg !927

if.then43:                                        ; preds = %for.body33
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !929
  br label %for.body48, !dbg !929

for.body48:                                       ; preds = %for.body33, %if.then43, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then43 ], [ 0, %for.body33 ]
  %call49 = tail call noalias i8* @calloc(i64 3, i64 4) #6, !dbg !930
  %22 = bitcast i8* %call49 to i32*, !dbg !930
  %23 = load i32****** %mv, align 8, !dbg !930, !tbaa !895
  %arrayidx54 = getelementptr inbounds i32***** %23, i64 %indvars.iv123, !dbg !930
  %24 = load i32***** %arrayidx54, align 8, !dbg !930, !tbaa !895
  %arrayidx55 = getelementptr inbounds i32**** %24, i64 %indvars.iv118, !dbg !930
  %25 = load i32**** %arrayidx55, align 8, !dbg !930, !tbaa !895
  %arrayidx56 = getelementptr inbounds i32*** %25, i64 %indvars.iv116, !dbg !930
  %26 = load i32*** %arrayidx56, align 8, !dbg !930, !tbaa !895
  %arrayidx57 = getelementptr inbounds i32** %26, i64 %indvars.iv, !dbg !930
  store i32* %22, i32** %arrayidx57, align 8, !dbg !930, !tbaa !895
  %cmp58 = icmp eq i8* %call49, null, !dbg !930
  br i1 %cmp58, label %if.then60, label %for.inc, !dbg !930

if.then60:                                        ; preds = %for.body48
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !932
  br label %for.inc, !dbg !932

for.inc:                                          ; preds = %for.body48, %if.then60
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !933
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !933
  %exitcond = icmp eq i32 %lftr.wideiv, 9, !dbg !933
  br i1 %exitcond, label %for.inc62, label %for.body48, !dbg !933

for.inc62:                                        ; preds = %for.inc
  %indvars.iv.next117 = add i64 %indvars.iv116, 1, !dbg !925
  %27 = load %struct.ImageParameters** @img, align 8, !dbg !925, !tbaa !895
  %max_num_references30 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 9, !dbg !925
  %28 = load i32* %max_num_references30, align 4, !dbg !925, !tbaa !896
  %29 = trunc i64 %indvars.iv.next117 to i32, !dbg !925
  %cmp31 = icmp slt i32 %29, %28, !dbg !925
  br i1 %cmp31, label %for.body33, label %for.inc65, !dbg !925

for.inc65:                                        ; preds = %for.inc62, %for.cond29.preheader
  %30 = phi %struct.ImageParameters* [ %16, %for.cond29.preheader ], [ %27, %for.inc62 ]
  %indvars.iv.next119 = add i64 %indvars.iv118, 1, !dbg !920
  %height14 = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 15, !dbg !920
  %31 = load i32* %height14, align 4, !dbg !920, !tbaa !896
  %div15 = sdiv i32 %31, 4, !dbg !920
  %32 = trunc i64 %indvars.iv.next119 to i32, !dbg !920
  %cmp16 = icmp slt i32 %32, %div15, !dbg !920
  br i1 %cmp16, label %for.body18, label %for.inc68, !dbg !920

for.inc68:                                        ; preds = %for.inc65, %for.cond13.preheader
  %33 = phi i32 [ %10, %for.cond13.preheader ], [ %31, %for.inc65 ]
  %34 = phi %struct.ImageParameters* [ %9, %for.cond13.preheader ], [ %30, %for.inc65 ]
  %indvars.iv.next124 = add i64 %indvars.iv123, 1, !dbg !915
  %width2 = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 13, !dbg !915
  %35 = load i32* %width2, align 4, !dbg !915, !tbaa !896
  %div3 = sdiv i32 %35, 4, !dbg !915
  %36 = trunc i64 %indvars.iv.next124 to i32, !dbg !915
  %cmp4 = icmp slt i32 %36, %div3, !dbg !915
  br i1 %cmp4, label %for.body, label %for.end70, !dbg !915

for.end70:                                        ; preds = %for.inc68, %for.cond.preheader
  %.lcssa108 = phi i32 [ %5, %for.cond.preheader ], [ %33, %for.inc68 ]
  %div3.lcssa = phi i32 [ %div3110, %for.cond.preheader ], [ %div3, %for.inc68 ]
  %.lcssa = phi %struct.ImageParameters* [ %3, %for.cond.preheader ], [ %34, %for.inc68 ]
  %mul = mul nsw i32 %.lcssa108, %div3.lcssa, !dbg !934
  %div74 = sdiv i32 %mul, 4, !dbg !934
  %max_num_references75 = getelementptr inbounds %struct.ImageParameters* %.lcssa, i64 0, i32 9, !dbg !934
  %37 = load i32* %max_num_references75, align 4, !dbg !934, !tbaa !896
  %mul76 = mul i32 %div74, 108, !dbg !934
  %mul80 = mul i32 %mul76, %37, !dbg !934
  ret i32 %mul80, !dbg !934
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_bwmincost(i32****** nocapture %mv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32****** %mv}, i64 0, metadata !57), !dbg !935
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !936, !tbaa !895
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !936
  %1 = load i32* %width, align 4, !dbg !936, !tbaa !896
  %div = sdiv i32 %1, 4, !dbg !936
  %conv = sext i32 %div to i64, !dbg !936
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #6, !dbg !936
  %2 = bitcast i8* %call to i32*****, !dbg !936
  store i32***** %2, i32****** %mv, align 8, !dbg !936, !tbaa !895
  %cmp = icmp eq i8* %call, null, !dbg !936
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !936

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !937
  br label %for.cond.preheader, !dbg !937

for.cond.preheader:                               ; preds = %if.then, %entry
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !938, !tbaa !895
  %width2109 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 13, !dbg !938
  %4 = load i32* %width2109, align 4, !dbg !938, !tbaa !896
  %div3110 = sdiv i32 %4, 4, !dbg !938
  %cmp4111 = icmp sgt i32 %4, 3, !dbg !938
  %height112 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 15, !dbg !940
  %5 = load i32* %height112, align 4, !dbg !940, !tbaa !896
  br i1 %cmp4111, label %for.body, label %for.end70, !dbg !938

for.body:                                         ; preds = %for.inc68, %for.cond.preheader
  %indvars.iv123 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next124, %for.inc68 ]
  %6 = phi i32 [ %5, %for.cond.preheader ], [ %33, %for.inc68 ]
  %div6 = sdiv i32 %6, 4, !dbg !940
  %conv7 = sext i32 %div6 to i64, !dbg !940
  %call8 = tail call noalias i8* @calloc(i64 %conv7, i64 8) #6, !dbg !940
  %7 = bitcast i8* %call8 to i32****, !dbg !940
  %8 = load i32****** %mv, align 8, !dbg !940, !tbaa !895
  %arrayidx = getelementptr inbounds i32***** %8, i64 %indvars.iv123, !dbg !940
  store i32**** %7, i32***** %arrayidx, align 8, !dbg !940, !tbaa !895
  %cmp9 = icmp eq i8* %call8, null, !dbg !940
  br i1 %cmp9, label %if.then11, label %for.cond13.preheader, !dbg !940

if.then11:                                        ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !942
  br label %for.cond13.preheader, !dbg !942

for.cond13.preheader:                             ; preds = %if.then11, %for.body
  %9 = load %struct.ImageParameters** @img, align 8, !dbg !943, !tbaa !895
  %height14104 = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 15, !dbg !943
  %10 = load i32* %height14104, align 4, !dbg !943, !tbaa !896
  %cmp16106 = icmp sgt i32 %10, 3, !dbg !943
  br i1 %cmp16106, label %for.body18, label %for.inc68, !dbg !943

for.body18:                                       ; preds = %for.cond13.preheader, %for.inc65
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc65 ], [ 0, %for.cond13.preheader ]
  %11 = phi %struct.ImageParameters* [ %30, %for.inc65 ], [ %9, %for.cond13.preheader ]
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 9, !dbg !945
  %12 = load i32* %max_num_references, align 4, !dbg !945, !tbaa !896
  %conv19 = sext i32 %12 to i64, !dbg !945
  %call20 = tail call noalias i8* @calloc(i64 %conv19, i64 8) #6, !dbg !945
  %13 = bitcast i8* %call20 to i32***, !dbg !945
  %14 = load i32****** %mv, align 8, !dbg !945, !tbaa !895
  %arrayidx23 = getelementptr inbounds i32***** %14, i64 %indvars.iv123, !dbg !945
  %15 = load i32***** %arrayidx23, align 8, !dbg !945, !tbaa !895
  %arrayidx24 = getelementptr inbounds i32**** %15, i64 %indvars.iv118, !dbg !945
  store i32*** %13, i32**** %arrayidx24, align 8, !dbg !945, !tbaa !895
  %cmp25 = icmp eq i8* %call20, null, !dbg !945
  br i1 %cmp25, label %if.then27, label %for.cond29.preheader, !dbg !945

if.then27:                                        ; preds = %for.body18
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !947
  br label %for.cond29.preheader, !dbg !947

for.cond29.preheader:                             ; preds = %if.then27, %for.body18
  %16 = load %struct.ImageParameters** @img, align 8, !dbg !948, !tbaa !895
  %max_num_references30101 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 9, !dbg !948
  %17 = load i32* %max_num_references30101, align 4, !dbg !948, !tbaa !896
  %cmp31102 = icmp sgt i32 %17, 0, !dbg !948
  br i1 %cmp31102, label %for.body33, label %for.inc65, !dbg !948

for.body33:                                       ; preds = %for.cond29.preheader, %for.inc62
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.inc62 ], [ 0, %for.cond29.preheader ]
  %call34 = tail call noalias i8* @calloc(i64 9, i64 8) #6, !dbg !950
  %18 = bitcast i8* %call34 to i32**, !dbg !950
  %19 = load i32****** %mv, align 8, !dbg !950, !tbaa !895
  %arrayidx38 = getelementptr inbounds i32***** %19, i64 %indvars.iv123, !dbg !950
  %20 = load i32***** %arrayidx38, align 8, !dbg !950, !tbaa !895
  %arrayidx39 = getelementptr inbounds i32**** %20, i64 %indvars.iv118, !dbg !950
  %21 = load i32**** %arrayidx39, align 8, !dbg !950, !tbaa !895
  %arrayidx40 = getelementptr inbounds i32*** %21, i64 %indvars.iv116, !dbg !950
  store i32** %18, i32*** %arrayidx40, align 8, !dbg !950, !tbaa !895
  %cmp41 = icmp eq i8* %call34, null, !dbg !950
  br i1 %cmp41, label %if.then43, label %for.body48, !dbg !950

if.then43:                                        ; preds = %for.body33
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !952
  br label %for.body48, !dbg !952

for.body48:                                       ; preds = %for.body33, %if.then43, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then43 ], [ 0, %for.body33 ]
  %call49 = tail call noalias i8* @calloc(i64 3, i64 4) #6, !dbg !953
  %22 = bitcast i8* %call49 to i32*, !dbg !953
  %23 = load i32****** %mv, align 8, !dbg !953, !tbaa !895
  %arrayidx54 = getelementptr inbounds i32***** %23, i64 %indvars.iv123, !dbg !953
  %24 = load i32***** %arrayidx54, align 8, !dbg !953, !tbaa !895
  %arrayidx55 = getelementptr inbounds i32**** %24, i64 %indvars.iv118, !dbg !953
  %25 = load i32**** %arrayidx55, align 8, !dbg !953, !tbaa !895
  %arrayidx56 = getelementptr inbounds i32*** %25, i64 %indvars.iv116, !dbg !953
  %26 = load i32*** %arrayidx56, align 8, !dbg !953, !tbaa !895
  %arrayidx57 = getelementptr inbounds i32** %26, i64 %indvars.iv, !dbg !953
  store i32* %22, i32** %arrayidx57, align 8, !dbg !953, !tbaa !895
  %cmp58 = icmp eq i8* %call49, null, !dbg !953
  br i1 %cmp58, label %if.then60, label %for.inc, !dbg !953

if.then60:                                        ; preds = %for.body48
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #6, !dbg !955
  br label %for.inc, !dbg !955

for.inc:                                          ; preds = %for.body48, %if.then60
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !956
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !956
  %exitcond = icmp eq i32 %lftr.wideiv, 9, !dbg !956
  br i1 %exitcond, label %for.inc62, label %for.body48, !dbg !956

for.inc62:                                        ; preds = %for.inc
  %indvars.iv.next117 = add i64 %indvars.iv116, 1, !dbg !948
  %27 = load %struct.ImageParameters** @img, align 8, !dbg !948, !tbaa !895
  %max_num_references30 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 9, !dbg !948
  %28 = load i32* %max_num_references30, align 4, !dbg !948, !tbaa !896
  %29 = trunc i64 %indvars.iv.next117 to i32, !dbg !948
  %cmp31 = icmp slt i32 %29, %28, !dbg !948
  br i1 %cmp31, label %for.body33, label %for.inc65, !dbg !948

for.inc65:                                        ; preds = %for.inc62, %for.cond29.preheader
  %30 = phi %struct.ImageParameters* [ %16, %for.cond29.preheader ], [ %27, %for.inc62 ]
  %indvars.iv.next119 = add i64 %indvars.iv118, 1, !dbg !943
  %height14 = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 15, !dbg !943
  %31 = load i32* %height14, align 4, !dbg !943, !tbaa !896
  %div15 = sdiv i32 %31, 4, !dbg !943
  %32 = trunc i64 %indvars.iv.next119 to i32, !dbg !943
  %cmp16 = icmp slt i32 %32, %div15, !dbg !943
  br i1 %cmp16, label %for.body18, label %for.inc68, !dbg !943

for.inc68:                                        ; preds = %for.inc65, %for.cond13.preheader
  %33 = phi i32 [ %10, %for.cond13.preheader ], [ %31, %for.inc65 ]
  %34 = phi %struct.ImageParameters* [ %9, %for.cond13.preheader ], [ %30, %for.inc65 ]
  %indvars.iv.next124 = add i64 %indvars.iv123, 1, !dbg !938
  %width2 = getelementptr inbounds %struct.ImageParameters* %34, i64 0, i32 13, !dbg !938
  %35 = load i32* %width2, align 4, !dbg !938, !tbaa !896
  %div3 = sdiv i32 %35, 4, !dbg !938
  %36 = trunc i64 %indvars.iv.next124 to i32, !dbg !938
  %cmp4 = icmp slt i32 %36, %div3, !dbg !938
  br i1 %cmp4, label %for.body, label %for.end70, !dbg !938

for.end70:                                        ; preds = %for.inc68, %for.cond.preheader
  %.lcssa108 = phi i32 [ %5, %for.cond.preheader ], [ %33, %for.inc68 ]
  %div3.lcssa = phi i32 [ %div3110, %for.cond.preheader ], [ %div3, %for.inc68 ]
  %.lcssa = phi %struct.ImageParameters* [ %3, %for.cond.preheader ], [ %34, %for.inc68 ]
  %mul = mul nsw i32 %.lcssa108, %div3.lcssa, !dbg !957
  %div74 = sdiv i32 %mul, 4, !dbg !957
  %max_num_references75 = getelementptr inbounds %struct.ImageParameters* %.lcssa, i64 0, i32 9, !dbg !957
  %37 = load i32* %max_num_references75, align 4, !dbg !957, !tbaa !896
  %mul76 = mul i32 %div74, 108, !dbg !957
  %mul80 = mul i32 %mul76, %37, !dbg !957
  ret i32 %mul80, !dbg !957
}

; Function Attrs: nounwind optsize uwtable
define i32 @get_mem_FME() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !66), !dbg !958
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !959, !tbaa !895
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !959
  %1 = load i32* %width, align 4, !dbg !959, !tbaa !896
  %shr = ashr i32 %1, 4, !dbg !959
  %add = add nsw i32 %shr, 1, !dbg !959
  %conv = sext i32 %add to i64, !dbg !959
  %call = tail call noalias i8* @calloc(i64 %conv, i64 4) #6, !dbg !959
  %2 = bitcast i8* %call to i32*, !dbg !959
  store i32* %2, i32** @flag_intra, align 8, !dbg !959, !tbaa !895
  %cmp = icmp eq i8* %call, null, !dbg !959
  br i1 %cmp, label %if.then, label %if.end, !dbg !959

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !959
  br label %if.end, !dbg !959

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.InputParameters** @input, align 8, !dbg !960, !tbaa !895
  %search_range = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 8, !dbg !960
  %4 = load i32* %search_range, align 4, !dbg !960, !tbaa !896
  %mul = shl nsw i32 %4, 1, !dbg !960
  %add218 = or i32 %mul, 1, !dbg !960
  %call6 = tail call i32 @get_mem2Dint(i32*** @McostState, i32 %add218, i32 %add218) #6, !dbg !960
  tail call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !66), !dbg !960
  %call8 = tail call i32 @get_mem_mincost(i32****** @all_mincost) #5, !dbg !961
  %add9 = add nsw i32 %call8, %call6, !dbg !961
  tail call void @llvm.dbg.value(metadata !{i32 %add9}, i64 0, metadata !66), !dbg !961
  %call10 = tail call i32 @get_mem_bwmincost(i32****** @all_bwmincost) #5, !dbg !962
  %add11 = add nsw i32 %add9, %call10, !dbg !962
  tail call void @llvm.dbg.value(metadata !{i32 %add11}, i64 0, metadata !66), !dbg !962
  %call12 = tail call i32 @get_mem2D(i8*** @SearchState, i32 7, i32 7) #6, !dbg !963
  %add13 = add nsw i32 %add11, %call12, !dbg !963
  tail call void @llvm.dbg.value(metadata !{i32 %add13}, i64 0, metadata !66), !dbg !963
  ret i32 %add13, !dbg !964
}

; Function Attrs: optsize
declare i32 @get_mem2Dint(i32***, i32, i32) #3

; Function Attrs: optsize
declare i32 @get_mem2D(i8***, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @free_mem_mincost(i32***** nocapture %mv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32***** %mv}, i64 0, metadata !71), !dbg !965
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !72), !dbg !966
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !966, !tbaa !895
  %width64 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !966
  %1 = load i32* %width64, align 4, !dbg !966, !tbaa !896
  %cmp66 = icmp sgt i32 %1, 3, !dbg !966
  br i1 %cmp66, label %for.cond1.preheader, label %for.end37, !dbg !966

for.cond1.preheader:                              ; preds = %entry, %for.end32
  %2 = phi %struct.ImageParameters* [ %26, %for.end32 ], [ %0, %entry ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.end32 ], [ 0, %entry ]
  %height60 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 15, !dbg !968
  %3 = load i32* %height60, align 4, !dbg !968, !tbaa !896
  %cmp362 = icmp sgt i32 %3, 3, !dbg !968
  %arrayidx28 = getelementptr inbounds i32***** %mv, i64 %indvars.iv72, !dbg !971
  br i1 %cmp362, label %for.cond5.preheader, label %for.end32, !dbg !968

for.cond5.preheader:                              ; preds = %for.cond1.preheader, %for.end25
  %4 = phi %struct.ImageParameters* [ %21, %for.end25 ], [ %2, %for.cond1.preheader ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.end25 ], [ 0, %for.cond1.preheader ]
  %max_num_references57 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 9, !dbg !973
  %5 = load i32* %max_num_references57, align 4, !dbg !973, !tbaa !896
  %cmp658 = icmp sgt i32 %5, 0, !dbg !973
  br i1 %cmp658, label %for.cond8.preheader, label %for.end25, !dbg !973

for.cond8.preheader:                              ; preds = %for.cond5.preheader, %for.end
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.end ], [ 0, %for.cond5.preheader ]
  br label %for.body10, !dbg !975

for.body10:                                       ; preds = %for.body10, %for.cond8.preheader
  %indvars.iv = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next, %for.body10 ]
  %6 = load i32***** %arrayidx28, align 8, !dbg !978, !tbaa !895
  %arrayidx14 = getelementptr inbounds i32**** %6, i64 %indvars.iv70, !dbg !978
  %7 = load i32**** %arrayidx14, align 8, !dbg !978, !tbaa !895
  %arrayidx15 = getelementptr inbounds i32*** %7, i64 %indvars.iv68, !dbg !978
  %8 = load i32*** %arrayidx15, align 8, !dbg !978, !tbaa !895
  %arrayidx16 = getelementptr inbounds i32** %8, i64 %indvars.iv, !dbg !978
  %9 = load i32** %arrayidx16, align 8, !dbg !978, !tbaa !895
  %10 = bitcast i32* %9 to i8*, !dbg !978
  tail call void @free(i8* %10) #6, !dbg !978
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !975
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !975
  %exitcond = icmp eq i32 %lftr.wideiv, 9, !dbg !975
  br i1 %exitcond, label %for.end, label %for.body10, !dbg !975

for.end:                                          ; preds = %for.body10
  %11 = load i32***** %arrayidx28, align 8, !dbg !979, !tbaa !895
  %arrayidx21 = getelementptr inbounds i32**** %11, i64 %indvars.iv70, !dbg !979
  %12 = load i32**** %arrayidx21, align 8, !dbg !979, !tbaa !895
  %arrayidx22 = getelementptr inbounds i32*** %12, i64 %indvars.iv68, !dbg !979
  %13 = load i32*** %arrayidx22, align 8, !dbg !979, !tbaa !895
  %14 = bitcast i32** %13 to i8*, !dbg !979
  tail call void @free(i8* %14) #6, !dbg !979
  %indvars.iv.next69 = add i64 %indvars.iv68, 1, !dbg !973
  %15 = load %struct.ImageParameters** @img, align 8, !dbg !973, !tbaa !895
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 9, !dbg !973
  %16 = load i32* %max_num_references, align 4, !dbg !973, !tbaa !896
  %17 = trunc i64 %indvars.iv.next69 to i32, !dbg !973
  %cmp6 = icmp slt i32 %17, %16, !dbg !973
  br i1 %cmp6, label %for.cond8.preheader, label %for.end25, !dbg !973

for.end25:                                        ; preds = %for.end, %for.cond5.preheader
  %18 = load i32***** %arrayidx28, align 8, !dbg !971, !tbaa !895
  %arrayidx29 = getelementptr inbounds i32**** %18, i64 %indvars.iv70, !dbg !971
  %19 = load i32**** %arrayidx29, align 8, !dbg !971, !tbaa !895
  %20 = bitcast i32*** %19 to i8*, !dbg !971
  tail call void @free(i8* %20) #6, !dbg !971
  %indvars.iv.next71 = add i64 %indvars.iv70, 1, !dbg !968
  %21 = load %struct.ImageParameters** @img, align 8, !dbg !968, !tbaa !895
  %height = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 15, !dbg !968
  %22 = load i32* %height, align 4, !dbg !968, !tbaa !896
  %div2 = sdiv i32 %22, 4, !dbg !968
  %23 = trunc i64 %indvars.iv.next71 to i32, !dbg !968
  %cmp3 = icmp slt i32 %23, %div2, !dbg !968
  br i1 %cmp3, label %for.cond5.preheader, label %for.end32, !dbg !968

for.end32:                                        ; preds = %for.cond1.preheader, %for.end25
  %24 = load i32***** %arrayidx28, align 8, !dbg !980, !tbaa !895
  %25 = bitcast i32**** %24 to i8*, !dbg !980
  tail call void @free(i8* %25) #6, !dbg !980
  %indvars.iv.next73 = add i64 %indvars.iv72, 1, !dbg !966
  %26 = load %struct.ImageParameters** @img, align 8, !dbg !966, !tbaa !895
  %width = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 13, !dbg !966
  %27 = load i32* %width, align 4, !dbg !966, !tbaa !896
  %div = sdiv i32 %27, 4, !dbg !966
  %28 = trunc i64 %indvars.iv.next73 to i32, !dbg !966
  %cmp = icmp slt i32 %28, %div, !dbg !966
  br i1 %cmp, label %for.cond1.preheader, label %for.end37, !dbg !966

for.end37:                                        ; preds = %for.end32, %entry
  %29 = bitcast i32***** %mv to i8*, !dbg !981
  tail call void @free(i8* %29) #6, !dbg !981
  ret void, !dbg !982
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @free_mem_bwmincost(i32***** nocapture %mv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32***** %mv}, i64 0, metadata !78), !dbg !983
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !79), !dbg !984
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !984, !tbaa !895
  %width64 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !984
  %1 = load i32* %width64, align 4, !dbg !984, !tbaa !896
  %cmp66 = icmp sgt i32 %1, 3, !dbg !984
  br i1 %cmp66, label %for.cond1.preheader, label %for.end37, !dbg !984

for.cond1.preheader:                              ; preds = %entry, %for.end32
  %2 = phi %struct.ImageParameters* [ %26, %for.end32 ], [ %0, %entry ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.end32 ], [ 0, %entry ]
  %height60 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 15, !dbg !986
  %3 = load i32* %height60, align 4, !dbg !986, !tbaa !896
  %cmp362 = icmp sgt i32 %3, 3, !dbg !986
  %arrayidx28 = getelementptr inbounds i32***** %mv, i64 %indvars.iv72, !dbg !989
  br i1 %cmp362, label %for.cond5.preheader, label %for.end32, !dbg !986

for.cond5.preheader:                              ; preds = %for.cond1.preheader, %for.end25
  %4 = phi %struct.ImageParameters* [ %21, %for.end25 ], [ %2, %for.cond1.preheader ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.end25 ], [ 0, %for.cond1.preheader ]
  %max_num_references57 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 9, !dbg !991
  %5 = load i32* %max_num_references57, align 4, !dbg !991, !tbaa !896
  %cmp658 = icmp sgt i32 %5, 0, !dbg !991
  br i1 %cmp658, label %for.cond8.preheader, label %for.end25, !dbg !991

for.cond8.preheader:                              ; preds = %for.cond5.preheader, %for.end
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.end ], [ 0, %for.cond5.preheader ]
  br label %for.body10, !dbg !993

for.body10:                                       ; preds = %for.body10, %for.cond8.preheader
  %indvars.iv = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next, %for.body10 ]
  %6 = load i32***** %arrayidx28, align 8, !dbg !996, !tbaa !895
  %arrayidx14 = getelementptr inbounds i32**** %6, i64 %indvars.iv70, !dbg !996
  %7 = load i32**** %arrayidx14, align 8, !dbg !996, !tbaa !895
  %arrayidx15 = getelementptr inbounds i32*** %7, i64 %indvars.iv68, !dbg !996
  %8 = load i32*** %arrayidx15, align 8, !dbg !996, !tbaa !895
  %arrayidx16 = getelementptr inbounds i32** %8, i64 %indvars.iv, !dbg !996
  %9 = load i32** %arrayidx16, align 8, !dbg !996, !tbaa !895
  %10 = bitcast i32* %9 to i8*, !dbg !996
  tail call void @free(i8* %10) #6, !dbg !996
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !993
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !993
  %exitcond = icmp eq i32 %lftr.wideiv, 9, !dbg !993
  br i1 %exitcond, label %for.end, label %for.body10, !dbg !993

for.end:                                          ; preds = %for.body10
  %11 = load i32***** %arrayidx28, align 8, !dbg !997, !tbaa !895
  %arrayidx21 = getelementptr inbounds i32**** %11, i64 %indvars.iv70, !dbg !997
  %12 = load i32**** %arrayidx21, align 8, !dbg !997, !tbaa !895
  %arrayidx22 = getelementptr inbounds i32*** %12, i64 %indvars.iv68, !dbg !997
  %13 = load i32*** %arrayidx22, align 8, !dbg !997, !tbaa !895
  %14 = bitcast i32** %13 to i8*, !dbg !997
  tail call void @free(i8* %14) #6, !dbg !997
  %indvars.iv.next69 = add i64 %indvars.iv68, 1, !dbg !991
  %15 = load %struct.ImageParameters** @img, align 8, !dbg !991, !tbaa !895
  %max_num_references = getelementptr inbounds %struct.ImageParameters* %15, i64 0, i32 9, !dbg !991
  %16 = load i32* %max_num_references, align 4, !dbg !991, !tbaa !896
  %17 = trunc i64 %indvars.iv.next69 to i32, !dbg !991
  %cmp6 = icmp slt i32 %17, %16, !dbg !991
  br i1 %cmp6, label %for.cond8.preheader, label %for.end25, !dbg !991

for.end25:                                        ; preds = %for.end, %for.cond5.preheader
  %18 = load i32***** %arrayidx28, align 8, !dbg !989, !tbaa !895
  %arrayidx29 = getelementptr inbounds i32**** %18, i64 %indvars.iv70, !dbg !989
  %19 = load i32**** %arrayidx29, align 8, !dbg !989, !tbaa !895
  %20 = bitcast i32*** %19 to i8*, !dbg !989
  tail call void @free(i8* %20) #6, !dbg !989
  %indvars.iv.next71 = add i64 %indvars.iv70, 1, !dbg !986
  %21 = load %struct.ImageParameters** @img, align 8, !dbg !986, !tbaa !895
  %height = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 15, !dbg !986
  %22 = load i32* %height, align 4, !dbg !986, !tbaa !896
  %div2 = sdiv i32 %22, 4, !dbg !986
  %23 = trunc i64 %indvars.iv.next71 to i32, !dbg !986
  %cmp3 = icmp slt i32 %23, %div2, !dbg !986
  br i1 %cmp3, label %for.cond5.preheader, label %for.end32, !dbg !986

for.end32:                                        ; preds = %for.cond1.preheader, %for.end25
  %24 = load i32***** %arrayidx28, align 8, !dbg !998, !tbaa !895
  %25 = bitcast i32**** %24 to i8*, !dbg !998
  tail call void @free(i8* %25) #6, !dbg !998
  %indvars.iv.next73 = add i64 %indvars.iv72, 1, !dbg !984
  %26 = load %struct.ImageParameters** @img, align 8, !dbg !984, !tbaa !895
  %width = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 13, !dbg !984
  %27 = load i32* %width, align 4, !dbg !984, !tbaa !896
  %div = sdiv i32 %27, 4, !dbg !984
  %28 = trunc i64 %indvars.iv.next73 to i32, !dbg !984
  %cmp = icmp slt i32 %28, %div, !dbg !984
  br i1 %cmp, label %for.cond1.preheader, label %for.end37, !dbg !984

for.end37:                                        ; preds = %for.end32, %entry
  %29 = bitcast i32***** %mv to i8*, !dbg !999
  tail call void @free(i8* %29) #6, !dbg !999
  ret void, !dbg !1000
}

; Function Attrs: nounwind optsize uwtable
define void @free_mem_FME() #0 {
entry:
  %0 = load i32*** @McostState, align 8, !dbg !1001, !tbaa !895
  tail call void @free_mem2Dint(i32** %0) #6, !dbg !1001
  %1 = load i32****** @all_mincost, align 8, !dbg !1002, !tbaa !895
  tail call void @free_mem_mincost(i32***** %1) #5, !dbg !1002
  %2 = load i32****** @all_bwmincost, align 8, !dbg !1003, !tbaa !895
  tail call void @free_mem_bwmincost(i32***** %2) #5, !dbg !1003
  %3 = load i8*** @SearchState, align 8, !dbg !1004, !tbaa !895
  tail call void @free_mem2D(i8** %3) #6, !dbg !1004
  %4 = load i32** @flag_intra, align 8, !dbg !1005, !tbaa !895
  %5 = bitcast i32* %4 to i8*, !dbg !1005
  tail call void @free(i8* %5) #6, !dbg !1005
  ret void, !dbg !1006
}

; Function Attrs: optsize
declare void @free_mem2Dint(i32**) #3

; Function Attrs: optsize
declare void @free_mem2D(i8**) #3

; Function Attrs: nounwind optsize uwtable
define i32 @PartCalMad(i16* %ref_pic, i16** nocapture %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* nocapture %get_ref_line, i32 %blocksize_y, i32 %blocksize_x, i32 %blocksize_x4, i32 %mcost, i32 %min_mcost, i32 %cand_x, i32 %cand_y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16* %ref_pic}, i64 0, metadata !94), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i16** %orig_pic}, i64 0, metadata !95), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line}, i64 0, metadata !96), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %blocksize_y}, i64 0, metadata !97), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %blocksize_x}, i64 0, metadata !98), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %blocksize_x4}, i64 0, metadata !99), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %mcost}, i64 0, metadata !100), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %min_mcost}, i64 0, metadata !101), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %cand_x}, i64 0, metadata !102), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %cand_y}, i64 0, metadata !103), !dbg !1007
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1008, !tbaa !895
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90, !dbg !1008
  %1 = load i32* %MbaffFrameFlag, align 4, !dbg !1008, !tbaa !896
  %tobool = icmp eq i32 %1, 0, !dbg !1008
  br i1 %tobool, label %cond.false, label %land.lhs.true, !dbg !1008

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1008
  %2 = load i32* %current_mb_nr, align 4, !dbg !1008, !tbaa !896
  %idxprom = sext i32 %2 to i64, !dbg !1008
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1008
  %3 = load %struct.macroblock** %mb_data, align 8, !dbg !1008, !tbaa !895
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22, !dbg !1008
  %4 = load i32* %mb_field, align 4, !dbg !1008, !tbaa !896
  %tobool1 = icmp eq i32 %4, 0, !dbg !1008
  br i1 %tobool1, label %cond.false, label %cond.true, !dbg !1008

cond.true:                                        ; preds = %land.lhs.true
  %height2 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !1008
  %5 = load i32* %height2, align 4, !dbg !1008, !tbaa !896
  %div = sdiv i32 %5, 2, !dbg !1008
  br label %cond.end, !dbg !1008

cond.false:                                       ; preds = %land.lhs.true, %entry
  %height3 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !1008
  %6 = load i32* %height3, align 4, !dbg !1008, !tbaa !896
  br label %cond.end, !dbg !1008

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %6, %cond.false ], !dbg !1008
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !106), !dbg !1008
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !104), !dbg !1009
  %cmp63 = icmp sgt i32 %blocksize_y, 0, !dbg !1009
  br i1 %cmp63, label %for.body.lr.ph, label %for.end42, !dbg !1009

for.body.lr.ph:                                   ; preds = %cond.end
  %cmp758 = icmp sgt i32 %blocksize_x4, 0, !dbg !1011
  %7 = zext i32 %cand_y to i64, !dbg !1009
  br label %for.body, !dbg !1009

for.cond:                                         ; preds = %for.end
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !1009
  %cmp = icmp slt i32 %8, %blocksize_y, !dbg !1009
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.end42, !dbg !1009

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1014, !tbaa !895
  br label %for.body, !dbg !1009

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %9 = phi %struct.ImageParameters* [ %0, %for.body.lr.ph ], [ %.pre, %for.cond.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %mcost.addr.065 = phi i32 [ %mcost, %for.body.lr.ph ], [ %mcost.addr.1.lcssa, %for.cond.for.body_crit_edge ]
  %10 = add nsw i64 %indvars.iv, %7, !dbg !1014
  %width = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 13, !dbg !1014
  %11 = load i32* %width, align 4, !dbg !1014, !tbaa !896
  %12 = trunc i64 %10 to i32, !dbg !1014
  %call = tail call i16* %get_ref_line(i32 %blocksize_x, i16* %ref_pic, i32 %12, i32 %cand_x, i32 %cond, i32 %11) #6, !dbg !1014
  tail call void @llvm.dbg.value(metadata !{i16* %call}, i64 0, metadata !108), !dbg !1014
  tail call void @llvm.dbg.value(metadata !{i16* %13}, i64 0, metadata !107), !dbg !1015
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !105), !dbg !1011
  br i1 %cmp758, label %for.body8.lr.ph, label %for.end, !dbg !1011

for.body8.lr.ph:                                  ; preds = %for.body
  %arrayidx5 = getelementptr inbounds i16** %orig_pic, i64 %indvars.iv, !dbg !1015
  %13 = load i16** %arrayidx5, align 8, !dbg !1015, !tbaa !895
  %14 = load i32** @byte_abs, align 8, !dbg !1016, !tbaa !895
  br label %for.body8, !dbg !1011

for.body8:                                        ; preds = %for.body8, %for.body8.lr.ph
  %ref_line.062 = phi i16* [ %call, %for.body8.lr.ph ], [ %incdec.ptr32, %for.body8 ]
  %orig_line.061 = phi i16* [ %13, %for.body8.lr.ph ], [ %incdec.ptr30, %for.body8 ]
  %mcost.addr.160 = phi i32 [ %mcost.addr.065, %for.body8.lr.ph ], [ %add37, %for.body8 ]
  %x4.059 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.body8 ]
  %incdec.ptr = getelementptr inbounds i16* %orig_line.061, i64 1, !dbg !1016
  tail call void @llvm.dbg.value(metadata !{i16* %incdec.ptr}, i64 0, metadata !107), !dbg !1016
  %15 = load i16* %orig_line.061, align 2, !dbg !1016, !tbaa !1018
  %conv = zext i16 %15 to i64, !dbg !1016
  %incdec.ptr9 = getelementptr inbounds i16* %ref_line.062, i64 1, !dbg !1016
  tail call void @llvm.dbg.value(metadata !{i16* %incdec.ptr9}, i64 0, metadata !108), !dbg !1016
  %16 = load i16* %ref_line.062, align 2, !dbg !1016, !tbaa !1018
  %conv10 = zext i16 %16 to i64, !dbg !1016
  %sub = sub i64 %conv, %conv10, !dbg !1016
  %arrayidx12 = getelementptr inbounds i32* %14, i64 %sub, !dbg !1016
  %17 = load i32* %arrayidx12, align 4, !dbg !1016, !tbaa !896
  %add13 = add nsw i32 %17, %mcost.addr.160, !dbg !1016
  tail call void @llvm.dbg.value(metadata !{i32 %add13}, i64 0, metadata !100), !dbg !1016
  %incdec.ptr14 = getelementptr inbounds i16* %orig_line.061, i64 2, !dbg !1019
  tail call void @llvm.dbg.value(metadata !{i16* %incdec.ptr14}, i64 0, metadata !107), !dbg !1019
  %18 = load i16* %incdec.ptr, align 2, !dbg !1019, !tbaa !1018
  %conv15 = zext i16 %18 to i64, !dbg !1019
  %incdec.ptr16 = getelementptr inbounds i16* %ref_line.062, i64 2, !dbg !1019
  tail call void @llvm.dbg.value(metadata !{i16* %incdec.ptr16}, i64 0, metadata !108), !dbg !1019
  %19 = load i16* %incdec.ptr9, align 2, !dbg !1019, !tbaa !1018
  %conv17 = zext i16 %19 to i64, !dbg !1019
  %sub18 = sub i64 %conv15, %conv17, !dbg !1019
  %arrayidx20 = getelementptr inbounds i32* %14, i64 %sub18, !dbg !1019
  %20 = load i32* %arrayidx20, align 4, !dbg !1019, !tbaa !896
  %add21 = add nsw i32 %add13, %20, !dbg !1019
  tail call void @llvm.dbg.value(metadata !{i32 %add21}, i64 0, metadata !100), !dbg !1019
  %incdec.ptr22 = getelementptr inbounds i16* %orig_line.061, i64 3, !dbg !1020
  tail call void @llvm.dbg.value(metadata !{i16* %incdec.ptr22}, i64 0, metadata !107), !dbg !1020
  %21 = load i16* %incdec.ptr14, align 2, !dbg !1020, !tbaa !1018
  %conv23 = zext i16 %21 to i64, !dbg !1020
  %incdec.ptr24 = getelementptr inbounds i16* %ref_line.062, i64 3, !dbg !1020
  tail call void @llvm.dbg.value(metadata !{i16* %incdec.ptr24}, i64 0, metadata !108), !dbg !1020
  %22 = load i16* %incdec.ptr16, align 2, !dbg !1020, !tbaa !1018
  %conv25 = zext i16 %22 to i64, !dbg !1020
  %sub26 = sub i64 %conv23, %conv25, !dbg !1020
  %arrayidx28 = getelementptr inbounds i32* %14, i64 %sub26, !dbg !1020
  %23 = load i32* %arrayidx28, align 4, !dbg !1020, !tbaa !896
  %add29 = add nsw i32 %add21, %23, !dbg !1020
  tail call void @llvm.dbg.value(metadata !{i32 %add29}, i64 0, metadata !100), !dbg !1020
  %incdec.ptr30 = getelementptr inbounds i16* %orig_line.061, i64 4, !dbg !1021
  tail call void @llvm.dbg.value(metadata !{i16* %incdec.ptr30}, i64 0, metadata !107), !dbg !1021
  %24 = load i16* %incdec.ptr22, align 2, !dbg !1021, !tbaa !1018
  %conv31 = zext i16 %24 to i64, !dbg !1021
  %incdec.ptr32 = getelementptr inbounds i16* %ref_line.062, i64 4, !dbg !1021
  tail call void @llvm.dbg.value(metadata !{i16* %incdec.ptr32}, i64 0, metadata !108), !dbg !1021
  %25 = load i16* %incdec.ptr24, align 2, !dbg !1021, !tbaa !1018
  %conv33 = zext i16 %25 to i64, !dbg !1021
  %sub34 = sub i64 %conv31, %conv33, !dbg !1021
  %arrayidx36 = getelementptr inbounds i32* %14, i64 %sub34, !dbg !1021
  %26 = load i32* %arrayidx36, align 4, !dbg !1021, !tbaa !896
  %add37 = add nsw i32 %add29, %26, !dbg !1021
  tail call void @llvm.dbg.value(metadata !{i32 %add37}, i64 0, metadata !100), !dbg !1021
  %inc = add nsw i32 %x4.059, 1, !dbg !1011
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !105), !dbg !1011
  %exitcond = icmp eq i32 %inc, %blocksize_x4, !dbg !1011
  br i1 %exitcond, label %for.end, label %for.body8, !dbg !1011

for.end:                                          ; preds = %for.body8, %for.body
  %mcost.addr.1.lcssa = phi i32 [ %mcost.addr.065, %for.body ], [ %add37, %for.body8 ]
  %cmp38 = icmp slt i32 %mcost.addr.1.lcssa, %min_mcost, !dbg !1022
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1009
  br i1 %cmp38, label %for.cond, label %for.end42, !dbg !1022

for.end42:                                        ; preds = %for.cond, %for.end, %cond.end
  %mcost.addr.2 = phi i32 [ %mcost, %cond.end ], [ %mcost.addr.1.lcssa, %for.end ], [ %mcost.addr.1.lcssa, %for.cond ]
  ret i32 %mcost.addr.2, !dbg !1023
}

; Function Attrs: nounwind optsize uwtable
define i32 @FastIntegerPelBlockMotionSearch(i16** nocapture %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* nocapture %mv_x, i16* nocapture %mv_y, i32 %search_range, i32 %min_mcost, double %lambda) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16** %orig_pic}, i64 0, metadata !116), !dbg !1024
  tail call void @llvm.dbg.value(metadata !{i16 %ref}, i64 0, metadata !117), !dbg !1025
  tail call void @llvm.dbg.value(metadata !{i32 %list}, i64 0, metadata !118), !dbg !1026
  tail call void @llvm.dbg.value(metadata !{i32 %pic_pix_x}, i64 0, metadata !119), !dbg !1027
  tail call void @llvm.dbg.value(metadata !{i32 %pic_pix_y}, i64 0, metadata !120), !dbg !1028
  tail call void @llvm.dbg.value(metadata !{i32 %blocktype}, i64 0, metadata !121), !dbg !1029
  tail call void @llvm.dbg.value(metadata !{i16 %pred_mv_x}, i64 0, metadata !122), !dbg !1030
  tail call void @llvm.dbg.value(metadata !{i16 %pred_mv_y}, i64 0, metadata !123), !dbg !1031
  tail call void @llvm.dbg.value(metadata !{i16* %mv_x}, i64 0, metadata !124), !dbg !1032
  tail call void @llvm.dbg.value(metadata !{i16* %mv_y}, i64 0, metadata !125), !dbg !1033
  tail call void @llvm.dbg.value(metadata !{i32 %search_range}, i64 0, metadata !126), !dbg !1034
  tail call void @llvm.dbg.value(metadata !{i32 %min_mcost}, i64 0, metadata !127), !dbg !1035
  tail call void @llvm.dbg.value(metadata !{double %lambda}, i64 0, metadata !128), !dbg !1036
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1037, !tbaa !895
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90, !dbg !1037
  %1 = load i32* %MbaffFrameFlag, align 4, !dbg !1037, !tbaa !896
  %tobool = icmp eq i32 %1, 0, !dbg !1037
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !1037

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1037
  %2 = load i32* %current_mb_nr, align 4, !dbg !1037, !tbaa !896
  %idxprom = sext i32 %2 to i64, !dbg !1037
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1037
  %3 = load %struct.macroblock** %mb_data, align 8, !dbg !1037, !tbaa !895
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22, !dbg !1037
  %4 = load i32* %mb_field, align 4, !dbg !1037, !tbaa !896
  %tobool1 = icmp eq i32 %4, 0, !dbg !1037
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !1037

cond.true:                                        ; preds = %land.lhs.true
  %rem2330 = shl i32 %2, 1, !dbg !1037
  %5 = and i32 %rem2330, 2, !dbg !1037
  %6 = add i32 %5, 2, !dbg !1037
  br label %cond.end, !dbg !1037

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !1037
  tail call void @llvm.dbg.value(metadata !{i32 %cond4}, i64 0, metadata !134), !dbg !1037
  %idxprom5 = sext i16 %ref to i64, !dbg !1038
  %add = add nsw i32 %cond4, %list, !dbg !1038
  %idxprom6 = sext i32 %add to i64, !dbg !1038
  %arrayidx7 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom6, !dbg !1038
  %7 = load %struct.storable_picture*** %arrayidx7, align 8, !dbg !1038, !tbaa !895
  %arrayidx8 = getelementptr inbounds %struct.storable_picture** %7, i64 %idxprom5, !dbg !1038
  %8 = load %struct.storable_picture** %arrayidx8, align 8, !dbg !1038, !tbaa !895
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 26, !dbg !1038
  %9 = load i16** %imgY_11, align 8, !dbg !1038, !tbaa !895
  tail call void @llvm.dbg.value(metadata !{i16* %9}, i64 0, metadata !135), !dbg !1038
  %mul = fmul double %lambda, 6.553600e+04, !dbg !1039
  %add9 = fadd double %mul, 5.000000e-01, !dbg !1039
  %conv = fptosi double %add9 to i32, !dbg !1039
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !136), !dbg !1039
  tail call void @llvm.dbg.value(metadata !1040, i64 0, metadata !137), !dbg !1041
  %idxprom10 = sext i32 %blocktype to i64, !dbg !1042
  %10 = load %struct.InputParameters** @input, align 8, !dbg !1042, !tbaa !895
  %arrayidx12 = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 20, i64 %idxprom10, i64 1, !dbg !1042
  %11 = load i32* %arrayidx12, align 4, !dbg !1042, !tbaa !896
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !138), !dbg !1042
  %arrayidx16 = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 20, i64 %idxprom10, i64 0, !dbg !1043
  %12 = load i32* %arrayidx16, align 4, !dbg !1043, !tbaa !896
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !139), !dbg !1043
  %shr = ashr i32 %12, 2, !dbg !1044
  tail call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !140), !dbg !1044
  %shl = shl i32 %pic_pix_x, 2, !dbg !1045
  %conv17 = sext i16 %pred_mv_x to i32, !dbg !1045
  %add18 = add nsw i32 %conv17, %shl, !dbg !1045
  tail call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !141), !dbg !1045
  %shl19 = shl i32 %pic_pix_y, 2, !dbg !1046
  %conv20 = sext i16 %pred_mv_y to i32, !dbg !1046
  %add21 = add nsw i32 %conv20, %shl19, !dbg !1046
  tail call void @llvm.dbg.value(metadata !{i32 %add21}, i64 0, metadata !142), !dbg !1046
  %13 = load i16* %mv_x, align 2, !dbg !1047, !tbaa !1018
  %conv22 = sext i16 %13 to i32, !dbg !1047
  %add23 = add nsw i32 %conv22, %pic_pix_x, !dbg !1047
  tail call void @llvm.dbg.value(metadata !{i32 %add23}, i64 0, metadata !143), !dbg !1047
  %14 = load i16* %mv_y, align 2, !dbg !1048, !tbaa !1018
  %conv24 = sext i16 %14 to i32, !dbg !1048
  %add25 = add nsw i32 %conv24, %pic_pix_y, !dbg !1048
  tail call void @llvm.dbg.value(metadata !{i32 %add25}, i64 0, metadata !144), !dbg !1048
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !145), !dbg !1049
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !146), !dbg !1049
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 34, !dbg !1050
  %15 = load i32* %successive_Bframe, align 4, !dbg !1050, !tbaa !896
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !154), !dbg !1050
  br i1 %tobool, label %cond.false37, label %land.lhs.true28, !dbg !1051

land.lhs.true28:                                  ; preds = %cond.end
  %current_mb_nr29 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1051
  %16 = load i32* %current_mb_nr29, align 4, !dbg !1051, !tbaa !896
  %idxprom30 = sext i32 %16 to i64, !dbg !1051
  %mb_data31 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1051
  %17 = load %struct.macroblock** %mb_data31, align 8, !dbg !1051, !tbaa !895
  %mb_field33 = getelementptr inbounds %struct.macroblock* %17, i64 %idxprom30, i32 22, !dbg !1051
  %18 = load i32* %mb_field33, align 4, !dbg !1051, !tbaa !896
  %tobool34 = icmp eq i32 %18, 0, !dbg !1051
  br i1 %tobool34, label %cond.false37, label %cond.true35, !dbg !1051

cond.true35:                                      ; preds = %land.lhs.true28
  %height36 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !1051
  %19 = load i32* %height36, align 4, !dbg !1051, !tbaa !896
  %div = sdiv i32 %19, 2, !dbg !1051
  br label %cond.end39, !dbg !1051

cond.false37:                                     ; preds = %land.lhs.true28, %cond.end
  %height38 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !1051
  %20 = load i32* %height38, align 4, !dbg !1051, !tbaa !896
  br label %cond.end39, !dbg !1051

cond.end39:                                       ; preds = %cond.false37, %cond.true35
  %cond40 = phi i32 [ %div, %cond.true35 ], [ %20, %cond.false37 ], !dbg !1051
  tail call void @llvm.dbg.value(metadata !{i32 %cond40}, i64 0, metadata !158), !dbg !1051
  %cmp = icmp sgt i32 %add23, %search_range, !dbg !1052
  br i1 %cmp, label %land.lhs.true42, label %if.else, !dbg !1052

land.lhs.true42:                                  ; preds = %cond.end39
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !1052
  %21 = load i32* %width, align 4, !dbg !1052, !tbaa !896
  %sub = xor i32 %search_range, -1, !dbg !1052
  %sub43 = sub i32 %sub, %12, !dbg !1052
  %sub44 = add i32 %sub43, %21, !dbg !1052
  %cmp45 = icmp slt i32 %add23, %sub44, !dbg !1052
  %cmp48 = icmp sgt i32 %add25, %search_range, !dbg !1052
  %or.cond = and i1 %cmp45, %cmp48, !dbg !1052
  br i1 %or.cond, label %land.lhs.true50, label %if.else, !dbg !1052

land.lhs.true50:                                  ; preds = %land.lhs.true42
  %sub52 = sub i32 %sub, %11, !dbg !1052
  %sub53 = add i32 %sub52, %cond40, !dbg !1052
  %cmp54 = icmp slt i32 %add25, %sub53, !dbg !1052
  br i1 %cmp54, label %if.end, label %if.else, !dbg !1052

if.else:                                          ; preds = %land.lhs.true50, %land.lhs.true42, %cond.end39
  tail call void @llvm.dbg.value(metadata !1053, i64 0, metadata !133), !dbg !1054
  br label %if.end

if.end:                                           ; preds = %land.lhs.true50, %if.else
  %get_ref_line.0 = phi i16* (i32, i16*, i32, i32, i32, i32)* [ @UMVLineX, %if.else ], [ @FastLineX, %land.lhs.true50 ]
  %22 = load i32*** @McostState, align 8, !dbg !1056, !tbaa !895
  %23 = load i32** %22, align 8, !dbg !1056, !tbaa !895
  %24 = bitcast i32* %23 to i8*, !dbg !1056
  %mul57 = shl nsw i32 %search_range, 1, !dbg !1056
  %add582269 = or i32 %mul57, 1, !dbg !1056
  %mul61 = shl i32 %add582269, 2, !dbg !1056
  %mul62 = mul i32 %mul61, %add582269, !dbg !1056
  %conv63 = sext i32 %mul62 to i64, !dbg !1056
  tail call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 %conv63, i32 4, i1 false), !dbg !1056
  %conv64 = sext i16 %ref to i32, !dbg !1057
  %cmp65 = icmp sgt i16 %ref, 0, !dbg !1057
  br i1 %cmp65, label %if.then67, label %if.else89, !dbg !1057

if.then67:                                        ; preds = %if.end
  %25 = load i32* @pred_SAD_ref, align 4, !dbg !1058, !tbaa !896
  %cmp68 = icmp eq i32 %25, 0, !dbg !1058
  br i1 %cmp68, label %if.end137, label %if.then70, !dbg !1058

if.then70:                                        ; preds = %if.then67
  %arrayidx72 = getelementptr inbounds [8 x float]* @Bsize, i64 0, i64 %idxprom10, !dbg !1060
  %26 = load float* %arrayidx72, align 4, !dbg !1060, !tbaa !876
  %mul73 = mul nsw i32 %25, %25, !dbg !1060
  %conv74 = sitofp i32 %mul73 to float, !dbg !1060
  %div75 = fdiv float %26, %conv74, !dbg !1060
  %arrayidx77 = getelementptr inbounds [8 x float]* @AlphaSec, i64 0, i64 %idxprom10, !dbg !1060
  %27 = load float* %arrayidx77, align 4, !dbg !1060, !tbaa !876
  %sub78 = fsub float %div75, %27, !dbg !1060
  tail call void @llvm.dbg.value(metadata !{float %sub78}, i64 0, metadata !155), !dbg !1060
  %arrayidx85 = getelementptr inbounds [8 x float]* @AlphaThird, i64 0, i64 %idxprom10, !dbg !1062
  %28 = load float* %arrayidx85, align 4, !dbg !1062, !tbaa !876
  %sub86 = fsub float %div75, %28, !dbg !1062
  tail call void @llvm.dbg.value(metadata !{float %sub86}, i64 0, metadata !157), !dbg !1062
  br label %if.end137, !dbg !1063

if.else89:                                        ; preds = %if.end
  %cmp90 = icmp eq i32 %blocktype, 1, !dbg !1064
  br i1 %cmp90, label %if.then92, label %if.else114, !dbg !1064

if.then92:                                        ; preds = %if.else89
  %29 = load i32* @pred_SAD_space, align 4, !dbg !1066, !tbaa !896
  %cmp93 = icmp eq i32 %29, 0, !dbg !1066
  br i1 %cmp93, label %if.end137, label %if.then95, !dbg !1066

if.then95:                                        ; preds = %if.then92
  %arrayidx97 = getelementptr inbounds [8 x float]* @Bsize, i64 0, i64 %idxprom10, !dbg !1068
  %30 = load float* %arrayidx97, align 4, !dbg !1068, !tbaa !876
  %mul98 = mul nsw i32 %29, %29, !dbg !1068
  %conv99 = sitofp i32 %mul98 to float, !dbg !1068
  %div100 = fdiv float %30, %conv99, !dbg !1068
  %arrayidx102 = getelementptr inbounds [8 x float]* @AlphaSec, i64 0, i64 %idxprom10, !dbg !1068
  %31 = load float* %arrayidx102, align 4, !dbg !1068, !tbaa !876
  %sub103 = fsub float %div100, %31, !dbg !1068
  tail call void @llvm.dbg.value(metadata !{float %sub103}, i64 0, metadata !155), !dbg !1068
  %arrayidx110 = getelementptr inbounds [8 x float]* @AlphaThird, i64 0, i64 %idxprom10, !dbg !1070
  %32 = load float* %arrayidx110, align 4, !dbg !1070, !tbaa !876
  %sub111 = fsub float %div100, %32, !dbg !1070
  tail call void @llvm.dbg.value(metadata !{float %sub111}, i64 0, metadata !157), !dbg !1070
  br label %if.end137, !dbg !1071

if.else114:                                       ; preds = %if.else89
  %33 = load i32* @pred_SAD_uplayer, align 4, !dbg !1072, !tbaa !896
  %cmp115 = icmp eq i32 %33, 0, !dbg !1072
  br i1 %cmp115, label %if.end137, label %if.then117, !dbg !1072

if.then117:                                       ; preds = %if.else114
  %arrayidx119 = getelementptr inbounds [8 x float]* @Bsize, i64 0, i64 %idxprom10, !dbg !1074
  %34 = load float* %arrayidx119, align 4, !dbg !1074, !tbaa !876
  %mul120 = mul nsw i32 %33, %33, !dbg !1074
  %conv121 = sitofp i32 %mul120 to float, !dbg !1074
  %div122 = fdiv float %34, %conv121, !dbg !1074
  %arrayidx124 = getelementptr inbounds [8 x float]* @AlphaSec, i64 0, i64 %idxprom10, !dbg !1074
  %35 = load float* %arrayidx124, align 4, !dbg !1074, !tbaa !876
  %sub125 = fsub float %div122, %35, !dbg !1074
  tail call void @llvm.dbg.value(metadata !{float %sub125}, i64 0, metadata !155), !dbg !1074
  %arrayidx132 = getelementptr inbounds [8 x float]* @AlphaThird, i64 0, i64 %idxprom10, !dbg !1076
  %36 = load float* %arrayidx132, align 4, !dbg !1076, !tbaa !876
  %sub133 = fsub float %div122, %36, !dbg !1076
  tail call void @llvm.dbg.value(metadata !{float %sub133}, i64 0, metadata !157), !dbg !1076
  br label %if.end137, !dbg !1077

if.end137:                                        ; preds = %if.else114, %if.then92, %if.then67, %if.then95, %if.then117, %if.then70
  %betaSec.0 = phi float [ %sub78, %if.then70 ], [ %sub103, %if.then95 ], [ %sub125, %if.then117 ], [ 0.000000e+00, %if.then67 ], [ 0.000000e+00, %if.then92 ], [ 0.000000e+00, %if.else114 ]
  %betaThird.0 = phi float [ %sub86, %if.then70 ], [ %sub111, %if.then95 ], [ %sub133, %if.then117 ], [ 0.000000e+00, %if.then67 ], [ 0.000000e+00, %if.then92 ], [ 0.000000e+00, %if.else114 ]
  tail call void @llvm.dbg.value(metadata !{i32 %add23}, i64 0, metadata !130), !dbg !1078
  tail call void @llvm.dbg.value(metadata !{i32 %add25}, i64 0, metadata !131), !dbg !1079
  %shl138 = shl i32 %add23, 2, !dbg !1080
  %sub139 = sub nsw i32 %shl138, %add18, !dbg !1080
  %idxprom140 = sext i32 %sub139 to i64, !dbg !1080
  %37 = load i32** @mvbits, align 8, !dbg !1080, !tbaa !895
  %arrayidx141 = getelementptr inbounds i32* %37, i64 %idxprom140, !dbg !1080
  %38 = load i32* %arrayidx141, align 4, !dbg !1080, !tbaa !896
  %shl142 = shl i32 %add25, 2, !dbg !1080
  %sub143 = sub nsw i32 %shl142, %add21, !dbg !1080
  %idxprom144 = sext i32 %sub143 to i64, !dbg !1080
  %arrayidx145 = getelementptr inbounds i32* %37, i64 %idxprom144, !dbg !1080
  %39 = load i32* %arrayidx145, align 4, !dbg !1080, !tbaa !896
  %add146 = add nsw i32 %39, %38, !dbg !1080
  %mul147 = mul nsw i32 %add146, %conv, !dbg !1080
  %shr148 = ashr i32 %mul147, 16, !dbg !1080
  tail call void @llvm.dbg.value(metadata !{i32 %shr148}, i64 0, metadata !132), !dbg !1080
  %call = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr148, i32 %min_mcost, i32 %add23, i32 %add25) #5, !dbg !1081
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !132), !dbg !1081
  %idxprom149 = sext i32 %search_range to i64, !dbg !1082
  %40 = load i32*** @McostState, align 8, !dbg !1082, !tbaa !895
  %arrayidx151 = getelementptr inbounds i32** %40, i64 %idxprom149, !dbg !1082
  %41 = load i32** %arrayidx151, align 8, !dbg !1082, !tbaa !895
  %arrayidx152 = getelementptr inbounds i32* %41, i64 %idxprom149, !dbg !1082
  store i32 %call, i32* %arrayidx152, align 4, !dbg !1082, !tbaa !896
  %cmp153 = icmp slt i32 %call, %min_mcost, !dbg !1083
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !127), !dbg !1084
  tail call void @llvm.dbg.value(metadata !{i32 %add23}, i64 0, metadata !145), !dbg !1086
  tail call void @llvm.dbg.value(metadata !{i32 %add25}, i64 0, metadata !146), !dbg !1087
  %add23. = select i1 %cmp153, i32 %add23, i32 0, !dbg !1083
  %add25. = select i1 %cmp153, i32 %add25, i32 0, !dbg !1083
  %call.min_mcost = select i1 %cmp153, i32 %call, i32 %min_mcost, !dbg !1083
  tail call void @llvm.dbg.value(metadata !{i32 %add23.}, i64 0, metadata !149), !dbg !1088
  tail call void @llvm.dbg.value(metadata !{i32 %add25.}, i64 0, metadata !148), !dbg !1089
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !151), !dbg !1090
  br label %for.body, !dbg !1090

for.body:                                         ; preds = %for.inc, %if.end137
  %42 = phi i32** [ %40, %if.end137 ], [ %54, %for.inc ]
  %indvars.iv2461 = phi i64 [ 0, %if.end137 ], [ %indvars.iv.next2462, %for.inc ]
  %min_mcost.addr.12424 = phi i32 [ %call.min_mcost, %if.end137 ], [ %min_mcost.addr.2, %for.inc ]
  %best_y.12422 = phi i32 [ %add25., %if.end137 ], [ %best_y.2, %for.inc ]
  %best_x.12421 = phi i32 [ %add23., %if.end137 ], [ %best_x.2, %for.inc ]
  %arrayidx160 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %indvars.iv2461, !dbg !1092
  %43 = load i32* %arrayidx160, align 4, !dbg !1092, !tbaa !896
  %add161 = add nsw i32 %43, %add23., !dbg !1092
  tail call void @llvm.dbg.value(metadata !{i32 %add161}, i64 0, metadata !130), !dbg !1092
  %arrayidx163 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %indvars.iv2461, !dbg !1094
  %44 = load i32* %arrayidx163, align 4, !dbg !1094, !tbaa !896
  %add164 = add nsw i32 %44, %add25., !dbg !1094
  tail call void @llvm.dbg.value(metadata !{i32 %add164}, i64 0, metadata !131), !dbg !1094
  %sub165 = sub nsw i32 %add161, %add23, !dbg !1095
  %ispos2326 = icmp sgt i32 %sub165, -1, !dbg !1095
  %neg2327 = sub i32 0, %sub165, !dbg !1095
  %45 = select i1 %ispos2326, i32 %sub165, i32 %neg2327, !dbg !1095
  %cmp167 = icmp sgt i32 %45, %search_range, !dbg !1095
  br i1 %cmp167, label %for.inc, label %land.lhs.true169, !dbg !1095

land.lhs.true169:                                 ; preds = %for.body
  %sub170 = sub nsw i32 %add164, %add25, !dbg !1095
  %ispos2328 = icmp sgt i32 %sub170, -1, !dbg !1095
  %neg2329 = sub i32 0, %sub170, !dbg !1095
  %46 = select i1 %ispos2328, i32 %sub170, i32 %neg2329, !dbg !1095
  %cmp172 = icmp sgt i32 %46, %search_range, !dbg !1095
  br i1 %cmp172, label %for.inc, label %if.then174, !dbg !1095

if.then174:                                       ; preds = %land.lhs.true169
  %add176 = add nsw i32 %sub165, %search_range, !dbg !1096
  %idxprom177 = sext i32 %add176 to i64, !dbg !1096
  %add179 = add nsw i32 %sub170, %search_range, !dbg !1096
  %idxprom180 = sext i32 %add179 to i64, !dbg !1096
  %arrayidx181 = getelementptr inbounds i32** %42, i64 %idxprom180, !dbg !1096
  %47 = load i32** %arrayidx181, align 8, !dbg !1096, !tbaa !895
  %arrayidx182 = getelementptr inbounds i32* %47, i64 %idxprom177, !dbg !1096
  %48 = load i32* %arrayidx182, align 4, !dbg !1096, !tbaa !896
  %tobool183 = icmp eq i32 %48, 0, !dbg !1096
  br i1 %tobool183, label %if.then184, label %for.inc, !dbg !1096

if.then184:                                       ; preds = %if.then174
  %shl185 = shl i32 %add161, 2, !dbg !1098
  %sub186 = sub nsw i32 %shl185, %add18, !dbg !1098
  %idxprom187 = sext i32 %sub186 to i64, !dbg !1098
  %49 = load i32** @mvbits, align 8, !dbg !1098, !tbaa !895
  %arrayidx188 = getelementptr inbounds i32* %49, i64 %idxprom187, !dbg !1098
  %50 = load i32* %arrayidx188, align 4, !dbg !1098, !tbaa !896
  %shl189 = shl i32 %add164, 2, !dbg !1098
  %sub190 = sub nsw i32 %shl189, %add21, !dbg !1098
  %idxprom191 = sext i32 %sub190 to i64, !dbg !1098
  %arrayidx192 = getelementptr inbounds i32* %49, i64 %idxprom191, !dbg !1098
  %51 = load i32* %arrayidx192, align 4, !dbg !1098, !tbaa !896
  %add193 = add nsw i32 %51, %50, !dbg !1098
  %mul194 = mul nsw i32 %add193, %conv, !dbg !1098
  %shr195 = ashr i32 %mul194, 16, !dbg !1098
  tail call void @llvm.dbg.value(metadata !{i32 %shr195}, i64 0, metadata !132), !dbg !1098
  %call196 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr195, i32 %min_mcost.addr.12424, i32 %add161, i32 %add164) #5, !dbg !1098
  tail call void @llvm.dbg.value(metadata !{i32 %call196}, i64 0, metadata !132), !dbg !1098
  %52 = load i32*** @McostState, align 8, !dbg !1098, !tbaa !895
  %arrayidx203 = getelementptr inbounds i32** %52, i64 %idxprom180, !dbg !1098
  %53 = load i32** %arrayidx203, align 8, !dbg !1098, !tbaa !895
  %arrayidx204 = getelementptr inbounds i32* %53, i64 %idxprom177, !dbg !1098
  store i32 %call196, i32* %arrayidx204, align 4, !dbg !1098, !tbaa !896
  %cmp205 = icmp slt i32 %call196, %min_mcost.addr.12424, !dbg !1098
  tail call void @llvm.dbg.value(metadata !{i32 %add161}, i64 0, metadata !145), !dbg !1100
  tail call void @llvm.dbg.value(metadata !{i32 %add164}, i64 0, metadata !146), !dbg !1100
  tail call void @llvm.dbg.value(metadata !{i32 %call196}, i64 0, metadata !127), !dbg !1100
  %add161.best_x.1 = select i1 %cmp205, i32 %add161, i32 %best_x.12421, !dbg !1098
  %add164.best_y.1 = select i1 %cmp205, i32 %add164, i32 %best_y.12422, !dbg !1098
  %call196.min_mcost.addr.1 = select i1 %cmp205, i32 %call196, i32 %min_mcost.addr.12424, !dbg !1098
  br label %for.inc, !dbg !1098

for.inc:                                          ; preds = %if.then184, %if.then174, %land.lhs.true169, %for.body
  %54 = phi i32** [ %42, %if.then174 ], [ %42, %land.lhs.true169 ], [ %42, %for.body ], [ %52, %if.then184 ]
  %best_x.2 = phi i32 [ %best_x.12421, %if.then174 ], [ %best_x.12421, %land.lhs.true169 ], [ %best_x.12421, %for.body ], [ %add161.best_x.1, %if.then184 ]
  %best_y.2 = phi i32 [ %best_y.12422, %if.then174 ], [ %best_y.12422, %land.lhs.true169 ], [ %best_y.12422, %for.body ], [ %add164.best_y.1, %if.then184 ]
  %min_mcost.addr.2 = phi i32 [ %min_mcost.addr.12424, %if.then174 ], [ %min_mcost.addr.12424, %land.lhs.true169 ], [ %min_mcost.addr.12424, %for.body ], [ %call196.min_mcost.addr.1, %if.then184 ]
  %indvars.iv.next2462 = add i64 %indvars.iv2461, 1, !dbg !1090
  %lftr.wideiv2463 = trunc i64 %indvars.iv.next2462 to i32, !dbg !1090
  %exitcond2464 = icmp eq i32 %lftr.wideiv2463, 4, !dbg !1090
  br i1 %exitcond2464, label %for.end, label %for.body, !dbg !1090

for.end:                                          ; preds = %for.inc
  %55 = or i16 %14, %13, !dbg !1102
  %56 = icmp eq i16 %55, 0, !dbg !1102
  br i1 %56, label %if.end321, label %if.then215, !dbg !1102

if.then215:                                       ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !{i32 %pic_pix_x}, i64 0, metadata !130), !dbg !1103
  tail call void @llvm.dbg.value(metadata !{i32 %pic_pix_y}, i64 0, metadata !131), !dbg !1105
  %sub216 = sub i32 0, %conv22, !dbg !1106
  %ispos2318 = icmp sgt i32 %sub216, -1, !dbg !1106
  %57 = select i1 %ispos2318, i32 %sub216, i32 %conv22, !dbg !1106
  %cmp218 = icmp sgt i32 %57, %search_range, !dbg !1106
  br i1 %cmp218, label %if.end261, label %land.lhs.true220, !dbg !1106

land.lhs.true220:                                 ; preds = %if.then215
  %sub221 = sub i32 0, %conv24, !dbg !1106
  %ispos2324 = icmp sgt i32 %sub221, -1, !dbg !1106
  %58 = select i1 %ispos2324, i32 %sub221, i32 %conv24, !dbg !1106
  %cmp223 = icmp sgt i32 %58, %search_range, !dbg !1106
  br i1 %cmp223, label %if.end261, label %if.then225, !dbg !1106

if.then225:                                       ; preds = %land.lhs.true220
  %add227 = sub i32 %search_range, %conv22, !dbg !1107
  %idxprom228 = sext i32 %add227 to i64, !dbg !1107
  %add230 = sub i32 %search_range, %conv24, !dbg !1107
  %idxprom231 = sext i32 %add230 to i64, !dbg !1107
  %arrayidx232 = getelementptr inbounds i32** %54, i64 %idxprom231, !dbg !1107
  %59 = load i32** %arrayidx232, align 8, !dbg !1107, !tbaa !895
  %arrayidx233 = getelementptr inbounds i32* %59, i64 %idxprom228, !dbg !1107
  %60 = load i32* %arrayidx233, align 4, !dbg !1107, !tbaa !896
  %tobool234 = icmp eq i32 %60, 0, !dbg !1107
  br i1 %tobool234, label %if.then235, label %if.end261, !dbg !1107

if.then235:                                       ; preds = %if.then225
  %sub237 = sub i32 0, %conv17, !dbg !1109
  %idxprom238 = sext i32 %sub237 to i64, !dbg !1109
  %61 = load i32** @mvbits, align 8, !dbg !1109, !tbaa !895
  %arrayidx239 = getelementptr inbounds i32* %61, i64 %idxprom238, !dbg !1109
  %62 = load i32* %arrayidx239, align 4, !dbg !1109, !tbaa !896
  %sub241 = sub i32 0, %conv20, !dbg !1109
  %idxprom242 = sext i32 %sub241 to i64, !dbg !1109
  %arrayidx243 = getelementptr inbounds i32* %61, i64 %idxprom242, !dbg !1109
  %63 = load i32* %arrayidx243, align 4, !dbg !1109, !tbaa !896
  %add244 = add nsw i32 %63, %62, !dbg !1109
  %mul245 = mul nsw i32 %add244, %conv, !dbg !1109
  %shr246 = ashr i32 %mul245, 16, !dbg !1109
  tail call void @llvm.dbg.value(metadata !{i32 %shr246}, i64 0, metadata !132), !dbg !1109
  %call247 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr246, i32 %min_mcost.addr.2, i32 %pic_pix_x, i32 %pic_pix_y) #5, !dbg !1109
  tail call void @llvm.dbg.value(metadata !{i32 %call247}, i64 0, metadata !132), !dbg !1109
  %64 = load i32*** @McostState, align 8, !dbg !1109, !tbaa !895
  %arrayidx254 = getelementptr inbounds i32** %64, i64 %idxprom231, !dbg !1109
  %65 = load i32** %arrayidx254, align 8, !dbg !1109, !tbaa !895
  %arrayidx255 = getelementptr inbounds i32* %65, i64 %idxprom228, !dbg !1109
  store i32 %call247, i32* %arrayidx255, align 4, !dbg !1109, !tbaa !896
  %cmp256 = icmp slt i32 %call247, %min_mcost.addr.2, !dbg !1109
  tail call void @llvm.dbg.value(metadata !{i32 %pic_pix_x}, i64 0, metadata !145), !dbg !1111
  tail call void @llvm.dbg.value(metadata !{i32 %pic_pix_y}, i64 0, metadata !146), !dbg !1111
  tail call void @llvm.dbg.value(metadata !{i32 %call247}, i64 0, metadata !127), !dbg !1111
  %pic_pix_x.best_x.1 = select i1 %cmp256, i32 %pic_pix_x, i32 %best_x.2, !dbg !1109
  %pic_pix_y.best_y.1 = select i1 %cmp256, i32 %pic_pix_y, i32 %best_y.2, !dbg !1109
  %call247.min_mcost.addr.1 = select i1 %cmp256, i32 %call247, i32 %min_mcost.addr.2, !dbg !1109
  br label %if.end261, !dbg !1109

if.end261:                                        ; preds = %if.then235, %if.then225, %land.lhs.true220, %if.then215
  %66 = phi i32** [ %54, %if.then225 ], [ %54, %land.lhs.true220 ], [ %54, %if.then215 ], [ %64, %if.then235 ]
  %best_x.3 = phi i32 [ %best_x.2, %if.then225 ], [ %best_x.2, %land.lhs.true220 ], [ %best_x.2, %if.then215 ], [ %pic_pix_x.best_x.1, %if.then235 ]
  %best_y.3 = phi i32 [ %best_y.2, %if.then225 ], [ %best_y.2, %land.lhs.true220 ], [ %best_y.2, %if.then215 ], [ %pic_pix_y.best_y.1, %if.then235 ]
  %min_mcost.addr.3 = phi i32 [ %min_mcost.addr.2, %if.then225 ], [ %min_mcost.addr.2, %land.lhs.true220 ], [ %min_mcost.addr.2, %if.then215 ], [ %call247.min_mcost.addr.1, %if.then235 ]
  tail call void @llvm.dbg.value(metadata !{i32 %best_x.3}, i64 0, metadata !149), !dbg !1113
  tail call void @llvm.dbg.value(metadata !{i32 %best_y.3}, i64 0, metadata !148), !dbg !1114
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !151), !dbg !1115
  br label %for.body265, !dbg !1115

for.body265:                                      ; preds = %for.inc318, %if.end261
  %67 = phi i32** [ %66, %if.end261 ], [ %79, %for.inc318 ]
  %indvars.iv2457 = phi i64 [ 0, %if.end261 ], [ %indvars.iv.next2458, %for.inc318 ]
  %min_mcost.addr.42420 = phi i32 [ %min_mcost.addr.3, %if.end261 ], [ %min_mcost.addr.5, %for.inc318 ]
  %best_y.42418 = phi i32 [ %best_y.3, %if.end261 ], [ %best_y.5, %for.inc318 ]
  %best_x.42417 = phi i32 [ %best_x.3, %if.end261 ], [ %best_x.5, %for.inc318 ]
  %arrayidx267 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %indvars.iv2457, !dbg !1117
  %68 = load i32* %arrayidx267, align 4, !dbg !1117, !tbaa !896
  %add268 = add nsw i32 %68, %best_x.3, !dbg !1117
  tail call void @llvm.dbg.value(metadata !{i32 %add268}, i64 0, metadata !130), !dbg !1117
  %arrayidx270 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %indvars.iv2457, !dbg !1119
  %69 = load i32* %arrayidx270, align 4, !dbg !1119, !tbaa !896
  %add271 = add nsw i32 %69, %best_y.3, !dbg !1119
  tail call void @llvm.dbg.value(metadata !{i32 %add271}, i64 0, metadata !131), !dbg !1119
  %sub272 = sub nsw i32 %add268, %add23, !dbg !1120
  %ispos2320 = icmp sgt i32 %sub272, -1, !dbg !1120
  %neg2321 = sub i32 0, %sub272, !dbg !1120
  %70 = select i1 %ispos2320, i32 %sub272, i32 %neg2321, !dbg !1120
  %cmp274 = icmp sgt i32 %70, %search_range, !dbg !1120
  br i1 %cmp274, label %for.inc318, label %land.lhs.true276, !dbg !1120

land.lhs.true276:                                 ; preds = %for.body265
  %sub277 = sub nsw i32 %add271, %add25, !dbg !1120
  %ispos2322 = icmp sgt i32 %sub277, -1, !dbg !1120
  %neg2323 = sub i32 0, %sub277, !dbg !1120
  %71 = select i1 %ispos2322, i32 %sub277, i32 %neg2323, !dbg !1120
  %cmp279 = icmp sgt i32 %71, %search_range, !dbg !1120
  br i1 %cmp279, label %for.inc318, label %if.then281, !dbg !1120

if.then281:                                       ; preds = %land.lhs.true276
  %add283 = add nsw i32 %sub272, %search_range, !dbg !1121
  %idxprom284 = sext i32 %add283 to i64, !dbg !1121
  %add286 = add nsw i32 %sub277, %search_range, !dbg !1121
  %idxprom287 = sext i32 %add286 to i64, !dbg !1121
  %arrayidx288 = getelementptr inbounds i32** %67, i64 %idxprom287, !dbg !1121
  %72 = load i32** %arrayidx288, align 8, !dbg !1121, !tbaa !895
  %arrayidx289 = getelementptr inbounds i32* %72, i64 %idxprom284, !dbg !1121
  %73 = load i32* %arrayidx289, align 4, !dbg !1121, !tbaa !896
  %tobool290 = icmp eq i32 %73, 0, !dbg !1121
  br i1 %tobool290, label %if.then291, label %for.inc318, !dbg !1121

if.then291:                                       ; preds = %if.then281
  %shl292 = shl i32 %add268, 2, !dbg !1123
  %sub293 = sub nsw i32 %shl292, %add18, !dbg !1123
  %idxprom294 = sext i32 %sub293 to i64, !dbg !1123
  %74 = load i32** @mvbits, align 8, !dbg !1123, !tbaa !895
  %arrayidx295 = getelementptr inbounds i32* %74, i64 %idxprom294, !dbg !1123
  %75 = load i32* %arrayidx295, align 4, !dbg !1123, !tbaa !896
  %shl296 = shl i32 %add271, 2, !dbg !1123
  %sub297 = sub nsw i32 %shl296, %add21, !dbg !1123
  %idxprom298 = sext i32 %sub297 to i64, !dbg !1123
  %arrayidx299 = getelementptr inbounds i32* %74, i64 %idxprom298, !dbg !1123
  %76 = load i32* %arrayidx299, align 4, !dbg !1123, !tbaa !896
  %add300 = add nsw i32 %76, %75, !dbg !1123
  %mul301 = mul nsw i32 %add300, %conv, !dbg !1123
  %shr302 = ashr i32 %mul301, 16, !dbg !1123
  tail call void @llvm.dbg.value(metadata !{i32 %shr302}, i64 0, metadata !132), !dbg !1123
  %call303 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr302, i32 %min_mcost.addr.42420, i32 %add268, i32 %add271) #5, !dbg !1123
  tail call void @llvm.dbg.value(metadata !{i32 %call303}, i64 0, metadata !132), !dbg !1123
  %77 = load i32*** @McostState, align 8, !dbg !1123, !tbaa !895
  %arrayidx310 = getelementptr inbounds i32** %77, i64 %idxprom287, !dbg !1123
  %78 = load i32** %arrayidx310, align 8, !dbg !1123, !tbaa !895
  %arrayidx311 = getelementptr inbounds i32* %78, i64 %idxprom284, !dbg !1123
  store i32 %call303, i32* %arrayidx311, align 4, !dbg !1123, !tbaa !896
  %cmp312 = icmp slt i32 %call303, %min_mcost.addr.42420, !dbg !1123
  tail call void @llvm.dbg.value(metadata !{i32 %add268}, i64 0, metadata !145), !dbg !1125
  tail call void @llvm.dbg.value(metadata !{i32 %add271}, i64 0, metadata !146), !dbg !1125
  tail call void @llvm.dbg.value(metadata !{i32 %call303}, i64 0, metadata !127), !dbg !1125
  %add268.best_x.4 = select i1 %cmp312, i32 %add268, i32 %best_x.42417, !dbg !1123
  %add271.best_y.4 = select i1 %cmp312, i32 %add271, i32 %best_y.42418, !dbg !1123
  %call303.min_mcost.addr.4 = select i1 %cmp312, i32 %call303, i32 %min_mcost.addr.42420, !dbg !1123
  br label %for.inc318, !dbg !1123

for.inc318:                                       ; preds = %if.then291, %if.then281, %land.lhs.true276, %for.body265
  %79 = phi i32** [ %67, %if.then281 ], [ %67, %land.lhs.true276 ], [ %67, %for.body265 ], [ %77, %if.then291 ]
  %best_x.5 = phi i32 [ %best_x.42417, %if.then281 ], [ %best_x.42417, %land.lhs.true276 ], [ %best_x.42417, %for.body265 ], [ %add268.best_x.4, %if.then291 ]
  %best_y.5 = phi i32 [ %best_y.42418, %if.then281 ], [ %best_y.42418, %land.lhs.true276 ], [ %best_y.42418, %for.body265 ], [ %add271.best_y.4, %if.then291 ]
  %min_mcost.addr.5 = phi i32 [ %min_mcost.addr.42420, %if.then281 ], [ %min_mcost.addr.42420, %land.lhs.true276 ], [ %min_mcost.addr.42420, %for.body265 ], [ %call303.min_mcost.addr.4, %if.then291 ]
  %indvars.iv.next2458 = add i64 %indvars.iv2457, 1, !dbg !1115
  %lftr.wideiv2459 = trunc i64 %indvars.iv.next2458 to i32, !dbg !1115
  %exitcond2460 = icmp eq i32 %lftr.wideiv2459, 4, !dbg !1115
  br i1 %exitcond2460, label %if.end321, label %for.body265, !dbg !1115

if.end321:                                        ; preds = %for.inc318, %for.end
  %80 = phi i32** [ %54, %for.end ], [ %79, %for.inc318 ]
  %best_x.6 = phi i32 [ %best_x.2, %for.end ], [ %best_x.5, %for.inc318 ]
  %best_y.6 = phi i32 [ %best_y.2, %for.end ], [ %best_y.5, %for.inc318 ]
  %min_mcost.addr.6 = phi i32 [ %min_mcost.addr.2, %for.end ], [ %min_mcost.addr.5, %for.inc318 ]
  %cmp322 = icmp sgt i32 %blocktype, 1, !dbg !1127
  br i1 %cmp322, label %if.then324, label %if.end392, !dbg !1127

if.then324:                                       ; preds = %if.end321
  %81 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 0), align 4, !dbg !1128, !tbaa !896
  %div325 = sdiv i32 %81, 4, !dbg !1128
  %add326 = add nsw i32 %div325, %pic_pix_x, !dbg !1128
  tail call void @llvm.dbg.value(metadata !{i32 %add326}, i64 0, metadata !130), !dbg !1128
  %82 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_uplayer, i64 0, i64 1), align 4, !dbg !1130, !tbaa !896
  %div327 = sdiv i32 %82, 4, !dbg !1130
  %add328 = add nsw i32 %div327, %pic_pix_y, !dbg !1130
  tail call void @llvm.dbg.value(metadata !{i32 %add328}, i64 0, metadata !131), !dbg !1130
  %sub329 = sub nsw i32 %add326, %add23, !dbg !1131
  %ispos2314 = icmp sgt i32 %sub329, -1, !dbg !1131
  %neg2315 = sub i32 0, %sub329, !dbg !1131
  %83 = select i1 %ispos2314, i32 %sub329, i32 %neg2315, !dbg !1131
  %cmp331 = icmp sgt i32 %83, %search_range, !dbg !1131
  br i1 %cmp331, label %if.end374, label %land.lhs.true333, !dbg !1131

land.lhs.true333:                                 ; preds = %if.then324
  %sub334 = sub nsw i32 %add328, %add25, !dbg !1131
  %ispos2316 = icmp sgt i32 %sub334, -1, !dbg !1131
  %neg2317 = sub i32 0, %sub334, !dbg !1131
  %84 = select i1 %ispos2316, i32 %sub334, i32 %neg2317, !dbg !1131
  %cmp336 = icmp sgt i32 %84, %search_range, !dbg !1131
  br i1 %cmp336, label %if.end374, label %if.then338, !dbg !1131

if.then338:                                       ; preds = %land.lhs.true333
  %add340 = add nsw i32 %sub329, %search_range, !dbg !1132
  %idxprom341 = sext i32 %add340 to i64, !dbg !1132
  %add343 = add nsw i32 %sub334, %search_range, !dbg !1132
  %idxprom344 = sext i32 %add343 to i64, !dbg !1132
  %arrayidx345 = getelementptr inbounds i32** %80, i64 %idxprom344, !dbg !1132
  %85 = load i32** %arrayidx345, align 8, !dbg !1132, !tbaa !895
  %arrayidx346 = getelementptr inbounds i32* %85, i64 %idxprom341, !dbg !1132
  %86 = load i32* %arrayidx346, align 4, !dbg !1132, !tbaa !896
  %tobool347 = icmp eq i32 %86, 0, !dbg !1132
  br i1 %tobool347, label %if.then348, label %if.end374, !dbg !1132

if.then348:                                       ; preds = %if.then338
  %shl349 = shl i32 %add326, 2, !dbg !1134
  %sub350 = sub nsw i32 %shl349, %add18, !dbg !1134
  %idxprom351 = sext i32 %sub350 to i64, !dbg !1134
  %87 = load i32** @mvbits, align 8, !dbg !1134, !tbaa !895
  %arrayidx352 = getelementptr inbounds i32* %87, i64 %idxprom351, !dbg !1134
  %88 = load i32* %arrayidx352, align 4, !dbg !1134, !tbaa !896
  %shl353 = shl i32 %add328, 2, !dbg !1134
  %sub354 = sub nsw i32 %shl353, %add21, !dbg !1134
  %idxprom355 = sext i32 %sub354 to i64, !dbg !1134
  %arrayidx356 = getelementptr inbounds i32* %87, i64 %idxprom355, !dbg !1134
  %89 = load i32* %arrayidx356, align 4, !dbg !1134, !tbaa !896
  %add357 = add nsw i32 %89, %88, !dbg !1134
  %mul358 = mul nsw i32 %add357, %conv, !dbg !1134
  %shr359 = ashr i32 %mul358, 16, !dbg !1134
  tail call void @llvm.dbg.value(metadata !{i32 %shr359}, i64 0, metadata !132), !dbg !1134
  %call360 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr359, i32 %min_mcost.addr.6, i32 %add326, i32 %add328) #5, !dbg !1134
  tail call void @llvm.dbg.value(metadata !{i32 %call360}, i64 0, metadata !132), !dbg !1134
  %90 = load i32*** @McostState, align 8, !dbg !1134, !tbaa !895
  %arrayidx367 = getelementptr inbounds i32** %90, i64 %idxprom344, !dbg !1134
  %91 = load i32** %arrayidx367, align 8, !dbg !1134, !tbaa !895
  %arrayidx368 = getelementptr inbounds i32* %91, i64 %idxprom341, !dbg !1134
  store i32 %call360, i32* %arrayidx368, align 4, !dbg !1134, !tbaa !896
  %cmp369 = icmp slt i32 %call360, %min_mcost.addr.6, !dbg !1134
  tail call void @llvm.dbg.value(metadata !{i32 %add326}, i64 0, metadata !145), !dbg !1136
  tail call void @llvm.dbg.value(metadata !{i32 %add328}, i64 0, metadata !146), !dbg !1136
  tail call void @llvm.dbg.value(metadata !{i32 %call360}, i64 0, metadata !127), !dbg !1136
  %add326.best_x.6 = select i1 %cmp369, i32 %add326, i32 %best_x.6, !dbg !1134
  %add328.best_y.6 = select i1 %cmp369, i32 %add328, i32 %best_y.6, !dbg !1134
  %call360.min_mcost.addr.6 = select i1 %cmp369, i32 %call360, i32 %min_mcost.addr.6, !dbg !1134
  br label %if.end374, !dbg !1134

if.end374:                                        ; preds = %if.then348, %if.then338, %land.lhs.true333, %if.then324
  %92 = phi i32** [ %80, %if.then338 ], [ %80, %land.lhs.true333 ], [ %80, %if.then324 ], [ %90, %if.then348 ]
  %best_x.7 = phi i32 [ %best_x.6, %if.then338 ], [ %best_x.6, %land.lhs.true333 ], [ %best_x.6, %if.then324 ], [ %add326.best_x.6, %if.then348 ]
  %best_y.7 = phi i32 [ %best_y.6, %if.then338 ], [ %best_y.6, %land.lhs.true333 ], [ %best_y.6, %if.then324 ], [ %add328.best_y.6, %if.then348 ]
  %min_mcost.addr.7 = phi i32 [ %min_mcost.addr.6, %if.then338 ], [ %min_mcost.addr.6, %land.lhs.true333 ], [ %min_mcost.addr.6, %if.then324 ], [ %call360.min_mcost.addr.6, %if.then348 ]
  %93 = load i32* @pred_SAD_uplayer, align 4, !dbg !1138, !tbaa !896
  %sub375 = sub nsw i32 %min_mcost.addr.7, %93, !dbg !1138
  %conv376 = sitofp i32 %sub375 to float, !dbg !1138
  %conv377 = sitofp i32 %93 to float, !dbg !1138
  %mul378 = fmul float %betaThird.0, %conv377, !dbg !1138
  %cmp379 = fcmp olt float %conv376, %mul378, !dbg !1138
  br i1 %cmp379, label %for.cond1325.preheader, label %if.else382, !dbg !1138

for.cond1325.preheader:                           ; preds = %if.else1232, %if.then1214, %if.then1193, %for.end1318, %if.else1102, %if.then1084, %if.then1063, %if.else981, %if.then963, %if.then942, %if.else707, %if.then689, %if.then668, %if.end374
  %94 = phi i32** [ %92, %if.end374 ], [ %153, %if.then668 ], [ %153, %if.then689 ], [ %153, %if.else707 ], [ %199, %if.then942 ], [ %199, %if.then963 ], [ %199, %if.else981 ], [ %217, %if.then1063 ], [ %217, %if.then1084 ], [ %217, %if.else1102 ], [ %251, %for.end1318 ], [ %234, %if.then1193 ], [ %234, %if.then1214 ], [ %234, %if.else1232 ]
  %best_x.29.ph = phi i32 [ %best_x.7, %if.end374 ], [ %best_x.12, %if.then668 ], [ %best_x.12, %if.then689 ], [ %best_x.12, %if.else707 ], [ %best_x.16.lcssa, %if.then942 ], [ %best_x.16.lcssa, %if.then963 ], [ %best_x.16.lcssa, %if.else981 ], [ %best_x.20, %if.then1063 ], [ %best_x.20, %if.then1084 ], [ %best_x.20, %if.else1102 ], [ %best_x.27, %for.end1318 ], [ %best_x.23, %if.then1193 ], [ %best_x.23, %if.then1214 ], [ %best_x.23, %if.else1232 ]
  %best_y.29.ph = phi i32 [ %best_y.7, %if.end374 ], [ %best_y.12, %if.then668 ], [ %best_y.12, %if.then689 ], [ %best_y.12, %if.else707 ], [ %best_y.16.lcssa, %if.then942 ], [ %best_y.16.lcssa, %if.then963 ], [ %best_y.16.lcssa, %if.else981 ], [ %best_y.20, %if.then1063 ], [ %best_y.20, %if.then1084 ], [ %best_y.20, %if.else1102 ], [ %best_y.27, %for.end1318 ], [ %best_y.23, %if.then1193 ], [ %best_y.23, %if.then1214 ], [ %best_y.23, %if.else1232 ]
  %min_mcost.addr.29.ph = phi i32 [ %min_mcost.addr.7, %if.end374 ], [ %min_mcost.addr.12, %if.then668 ], [ %min_mcost.addr.12, %if.then689 ], [ %min_mcost.addr.12, %if.else707 ], [ %min_mcost.addr.16.lcssa, %if.then942 ], [ %min_mcost.addr.16.lcssa, %if.then963 ], [ %min_mcost.addr.16.lcssa, %if.else981 ], [ %min_mcost.addr.20, %if.then1063 ], [ %min_mcost.addr.20, %if.then1084 ], [ %min_mcost.addr.20, %if.else1102 ], [ %min_mcost.addr.27, %for.end1318 ], [ %min_mcost.addr.23, %if.then1193 ], [ %min_mcost.addr.23, %if.then1214 ], [ %min_mcost.addr.23, %if.else1232 ]
  %cmp13262357 = icmp sgt i32 %search_range, 0, !dbg !1139
  br i1 %cmp13262357, label %for.cond1329.preheader, label %for.end1393, !dbg !1139

if.else382:                                       ; preds = %if.end374
  %mul386 = fmul float %betaSec.0, %conv377, !dbg !1141
  %cmp387 = fcmp olt float %conv376, %mul386, !dbg !1141
  br i1 %cmp387, label %for.cond1256.preheader, label %if.end392, !dbg !1141

for.cond1256.preheader:                           ; preds = %for.cond1122.preheader, %if.else1240, %if.else1222, %if.else1201, %for.inc1253, %if.else1110, %if.else1092, %if.else1071, %if.else989, %if.else971, %if.else950, %if.else715, %if.else697, %if.else676, %if.else382
  %95 = phi i32** [ %92, %if.else382 ], [ %153, %if.else676 ], [ %153, %if.else697 ], [ %153, %if.else715 ], [ %199, %if.else950 ], [ %199, %if.else971 ], [ %199, %if.else989 ], [ %217, %if.else1071 ], [ %217, %if.else1092 ], [ %217, %if.else1110 ], [ %217, %for.cond1122.preheader ], [ %234, %if.else1240 ], [ %234, %if.else1222 ], [ %234, %if.else1201 ], [ %234, %for.inc1253 ]
  %best_x.25.ph = phi i32 [ %best_x.7, %if.else382 ], [ %best_x.12, %if.else676 ], [ %best_x.12, %if.else697 ], [ %best_x.12, %if.else715 ], [ %best_x.16.lcssa, %if.else950 ], [ %best_x.16.lcssa, %if.else971 ], [ %best_x.16.lcssa, %if.else989 ], [ %best_x.20, %if.else1071 ], [ %best_x.20, %if.else1092 ], [ %best_x.20, %if.else1110 ], [ %best_x.20, %for.cond1122.preheader ], [ %best_x.23, %if.else1240 ], [ %best_x.23, %if.else1222 ], [ %best_x.23, %if.else1201 ], [ %best_x.23, %for.inc1253 ]
  %best_y.25.ph = phi i32 [ %best_y.7, %if.else382 ], [ %best_y.12, %if.else676 ], [ %best_y.12, %if.else697 ], [ %best_y.12, %if.else715 ], [ %best_y.16.lcssa, %if.else950 ], [ %best_y.16.lcssa, %if.else971 ], [ %best_y.16.lcssa, %if.else989 ], [ %best_y.20, %if.else1071 ], [ %best_y.20, %if.else1092 ], [ %best_y.20, %if.else1110 ], [ %best_y.20, %for.cond1122.preheader ], [ %best_y.23, %if.else1240 ], [ %best_y.23, %if.else1222 ], [ %best_y.23, %if.else1201 ], [ %best_y.23, %for.inc1253 ]
  %min_mcost.addr.25.ph = phi i32 [ %min_mcost.addr.7, %if.else382 ], [ %min_mcost.addr.12, %if.else676 ], [ %min_mcost.addr.12, %if.else697 ], [ %min_mcost.addr.12, %if.else715 ], [ %min_mcost.addr.16.lcssa, %if.else950 ], [ %min_mcost.addr.16.lcssa, %if.else971 ], [ %min_mcost.addr.16.lcssa, %if.else989 ], [ %min_mcost.addr.20, %if.else1071 ], [ %min_mcost.addr.20, %if.else1092 ], [ %min_mcost.addr.20, %if.else1110 ], [ %min_mcost.addr.20, %for.cond1122.preheader ], [ %min_mcost.addr.23, %if.else1240 ], [ %min_mcost.addr.23, %if.else1222 ], [ %min_mcost.addr.23, %if.else1201 ], [ %min_mcost.addr.23, %for.inc1253 ]
  %cmp12572369 = icmp sgt i32 %search_range, 0, !dbg !1142
  br i1 %cmp12572369, label %for.cond1260.preheader, label %for.end1393, !dbg !1142

if.end392:                                        ; preds = %if.else382, %if.end321
  %96 = phi i32** [ %92, %if.else382 ], [ %80, %if.end321 ]
  %best_x.8 = phi i32 [ %best_x.7, %if.else382 ], [ %best_x.6, %if.end321 ]
  %best_y.8 = phi i32 [ %best_y.7, %if.else382 ], [ %best_y.6, %if.end321 ]
  %min_mcost.addr.8 = phi i32 [ %min_mcost.addr.7, %if.else382 ], [ %min_mcost.addr.6, %if.end321 ]
  %97 = load %struct.ImageParameters** @img, align 8, !dbg !1144, !tbaa !895
  %number = getelementptr inbounds %struct.ImageParameters* %97, i64 0, i32 0, !dbg !1144
  %98 = load i32* %number, align 4, !dbg !1144, !tbaa !896
  %add394 = add nsw i32 %conv64, 1, !dbg !1144
  %cmp395 = icmp sle i32 %98, %add394, !dbg !1144
  %cmp399 = icmp eq i16 %ref, -1, !dbg !1144
  %or.cond2332 = or i1 %cmp395, %cmp399, !dbg !1144
  br i1 %or.cond2332, label %lor.lhs.false401, label %if.then408, !dbg !1144

lor.lhs.false401:                                 ; preds = %if.end392
  %cmp402 = icmp eq i32 %list, 1, !dbg !1144
  br i1 %cmp402, label %land.lhs.true404, label %if.end459, !dbg !1144

land.lhs.true404:                                 ; preds = %lor.lhs.false401
  %99 = load i32* @Bframe_ctr, align 4, !dbg !1144, !tbaa !896
  %rem405 = srem i32 %99, %15, !dbg !1144
  %cmp406 = icmp sgt i32 %rem405, 1, !dbg !1144
  br i1 %cmp406, label %if.then408, label %if.end459, !dbg !1144

if.then408:                                       ; preds = %if.end392, %land.lhs.true404
  %100 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_time, i64 0, i64 0), align 4, !dbg !1145, !tbaa !896
  %div409 = sdiv i32 %100, 4, !dbg !1145
  %add410 = add nsw i32 %div409, %pic_pix_x, !dbg !1145
  tail call void @llvm.dbg.value(metadata !{i32 %add410}, i64 0, metadata !130), !dbg !1145
  %101 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_time, i64 0, i64 1), align 4, !dbg !1147, !tbaa !896
  %div411 = sdiv i32 %101, 4, !dbg !1147
  %add412 = add nsw i32 %div411, %pic_pix_y, !dbg !1147
  tail call void @llvm.dbg.value(metadata !{i32 %add412}, i64 0, metadata !131), !dbg !1147
  %sub413 = sub nsw i32 %add410, %add23, !dbg !1148
  %ispos2310 = icmp sgt i32 %sub413, -1, !dbg !1148
  %neg2311 = sub i32 0, %sub413, !dbg !1148
  %102 = select i1 %ispos2310, i32 %sub413, i32 %neg2311, !dbg !1148
  %cmp415 = icmp sgt i32 %102, %search_range, !dbg !1148
  br i1 %cmp415, label %if.end459, label %land.lhs.true417, !dbg !1148

land.lhs.true417:                                 ; preds = %if.then408
  %sub418 = sub nsw i32 %add412, %add25, !dbg !1148
  %ispos2312 = icmp sgt i32 %sub418, -1, !dbg !1148
  %neg2313 = sub i32 0, %sub418, !dbg !1148
  %103 = select i1 %ispos2312, i32 %sub418, i32 %neg2313, !dbg !1148
  %cmp420 = icmp sgt i32 %103, %search_range, !dbg !1148
  br i1 %cmp420, label %if.end459, label %if.then422, !dbg !1148

if.then422:                                       ; preds = %land.lhs.true417
  %add424 = add nsw i32 %sub413, %search_range, !dbg !1149
  %idxprom425 = sext i32 %add424 to i64, !dbg !1149
  %add427 = add nsw i32 %sub418, %search_range, !dbg !1149
  %idxprom428 = sext i32 %add427 to i64, !dbg !1149
  %arrayidx429 = getelementptr inbounds i32** %96, i64 %idxprom428, !dbg !1149
  %104 = load i32** %arrayidx429, align 8, !dbg !1149, !tbaa !895
  %arrayidx430 = getelementptr inbounds i32* %104, i64 %idxprom425, !dbg !1149
  %105 = load i32* %arrayidx430, align 4, !dbg !1149, !tbaa !896
  %tobool431 = icmp eq i32 %105, 0, !dbg !1149
  br i1 %tobool431, label %if.then432, label %if.end459, !dbg !1149

if.then432:                                       ; preds = %if.then422
  %shl433 = shl i32 %add410, 2, !dbg !1151
  %sub434 = sub nsw i32 %shl433, %add18, !dbg !1151
  %idxprom435 = sext i32 %sub434 to i64, !dbg !1151
  %106 = load i32** @mvbits, align 8, !dbg !1151, !tbaa !895
  %arrayidx436 = getelementptr inbounds i32* %106, i64 %idxprom435, !dbg !1151
  %107 = load i32* %arrayidx436, align 4, !dbg !1151, !tbaa !896
  %shl437 = shl i32 %add412, 2, !dbg !1151
  %sub438 = sub nsw i32 %shl437, %add21, !dbg !1151
  %idxprom439 = sext i32 %sub438 to i64, !dbg !1151
  %arrayidx440 = getelementptr inbounds i32* %106, i64 %idxprom439, !dbg !1151
  %108 = load i32* %arrayidx440, align 4, !dbg !1151, !tbaa !896
  %add441 = add nsw i32 %108, %107, !dbg !1151
  %mul442 = mul nsw i32 %add441, %conv, !dbg !1151
  %shr443 = ashr i32 %mul442, 16, !dbg !1151
  tail call void @llvm.dbg.value(metadata !{i32 %shr443}, i64 0, metadata !132), !dbg !1151
  %call444 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr443, i32 %min_mcost.addr.8, i32 %add410, i32 %add412) #5, !dbg !1151
  tail call void @llvm.dbg.value(metadata !{i32 %call444}, i64 0, metadata !132), !dbg !1151
  %109 = load i32*** @McostState, align 8, !dbg !1151, !tbaa !895
  %arrayidx451 = getelementptr inbounds i32** %109, i64 %idxprom428, !dbg !1151
  %110 = load i32** %arrayidx451, align 8, !dbg !1151, !tbaa !895
  %arrayidx452 = getelementptr inbounds i32* %110, i64 %idxprom425, !dbg !1151
  store i32 %call444, i32* %arrayidx452, align 4, !dbg !1151, !tbaa !896
  %cmp453 = icmp slt i32 %call444, %min_mcost.addr.8, !dbg !1151
  tail call void @llvm.dbg.value(metadata !{i32 %add410}, i64 0, metadata !145), !dbg !1153
  tail call void @llvm.dbg.value(metadata !{i32 %add412}, i64 0, metadata !146), !dbg !1153
  tail call void @llvm.dbg.value(metadata !{i32 %call444}, i64 0, metadata !127), !dbg !1153
  %add410.best_x.8 = select i1 %cmp453, i32 %add410, i32 %best_x.8, !dbg !1151
  %add412.best_y.8 = select i1 %cmp453, i32 %add412, i32 %best_y.8, !dbg !1151
  %call444.min_mcost.addr.8 = select i1 %cmp453, i32 %call444, i32 %min_mcost.addr.8, !dbg !1151
  br label %if.end459, !dbg !1151

if.end459:                                        ; preds = %if.then432, %if.then422, %land.lhs.true417, %if.then408, %land.lhs.true404, %lor.lhs.false401
  %111 = phi i32** [ %96, %if.then422 ], [ %96, %land.lhs.true417 ], [ %96, %if.then408 ], [ %96, %land.lhs.true404 ], [ %96, %lor.lhs.false401 ], [ %109, %if.then432 ]
  %best_x.9 = phi i32 [ %best_x.8, %if.then422 ], [ %best_x.8, %land.lhs.true417 ], [ %best_x.8, %if.then408 ], [ %best_x.8, %land.lhs.true404 ], [ %best_x.8, %lor.lhs.false401 ], [ %add410.best_x.8, %if.then432 ]
  %best_y.9 = phi i32 [ %best_y.8, %if.then422 ], [ %best_y.8, %land.lhs.true417 ], [ %best_y.8, %if.then408 ], [ %best_y.8, %land.lhs.true404 ], [ %best_y.8, %lor.lhs.false401 ], [ %add412.best_y.8, %if.then432 ]
  %min_mcost.addr.9 = phi i32 [ %min_mcost.addr.8, %if.then422 ], [ %min_mcost.addr.8, %land.lhs.true417 ], [ %min_mcost.addr.8, %if.then408 ], [ %min_mcost.addr.8, %land.lhs.true404 ], [ %min_mcost.addr.8, %lor.lhs.false401 ], [ %call444.min_mcost.addr.8, %if.then432 ]
  %112 = load %struct.InputParameters** @input, align 8, !dbg !1155, !tbaa !895
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %112, i64 0, i32 91, !dbg !1155
  %113 = load i32* %PicInterlace, align 4, !dbg !1155, !tbaa !896
  %cmp460 = icmp eq i32 %113, 1, !dbg !1155
  %cmp463.not = icmp ne i32 %list, 0, !dbg !1156
  %cmp65.not = xor i1 %cmp65, true, !dbg !1156
  %brmerge = or i1 %cmp463.not, %cmp65.not, !dbg !1156
  br i1 %cmp460, label %if.then462, label %if.else535, !dbg !1155

if.then462:                                       ; preds = %if.end459
  br i1 %brmerge, label %lor.lhs.false469, label %if.then483, !dbg !1156

lor.lhs.false469:                                 ; preds = %if.then462
  %114 = load %struct.ImageParameters** @img, align 8, !dbg !1156, !tbaa !895
  %type = getelementptr inbounds %struct.ImageParameters* %114, i64 0, i32 6, !dbg !1156
  %115 = load i32* %type, align 4, !dbg !1156, !tbaa !896
  %cmp470.not = icmp ne i32 %115, 1, !dbg !1156
  %brmerge2334 = or i1 %cmp470.not, %cmp463.not, !dbg !1156
  br i1 %brmerge2334, label %if.end605, label %land.lhs.true475, !dbg !1156

land.lhs.true475:                                 ; preds = %lor.lhs.false469
  switch i16 %ref, label %if.end605 [
    i16 0, label %if.then483
    i16 2, label %if.then483
  ], !dbg !1156

if.then483:                                       ; preds = %land.lhs.true475, %land.lhs.true475, %if.then462
  %116 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 0), align 4, !dbg !1158, !tbaa !896
  %div484 = sdiv i32 %116, 4, !dbg !1158
  %add485 = add nsw i32 %div484, %pic_pix_x, !dbg !1158
  tail call void @llvm.dbg.value(metadata !{i32 %add485}, i64 0, metadata !130), !dbg !1158
  %117 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 1), align 4, !dbg !1160, !tbaa !896
  %div486 = sdiv i32 %117, 4, !dbg !1160
  %add487 = add nsw i32 %div486, %pic_pix_y, !dbg !1160
  tail call void @llvm.dbg.value(metadata !{i32 %add487}, i64 0, metadata !131), !dbg !1160
  %sub488 = sub nsw i32 %add485, %add23, !dbg !1161
  %ispos2306 = icmp sgt i32 %sub488, -1, !dbg !1161
  %neg2307 = sub i32 0, %sub488, !dbg !1161
  %118 = select i1 %ispos2306, i32 %sub488, i32 %neg2307, !dbg !1161
  %cmp490 = icmp sgt i32 %118, %search_range, !dbg !1161
  br i1 %cmp490, label %if.end605, label %land.lhs.true492, !dbg !1161

land.lhs.true492:                                 ; preds = %if.then483
  %sub493 = sub nsw i32 %add487, %add25, !dbg !1161
  %ispos2308 = icmp sgt i32 %sub493, -1, !dbg !1161
  %neg2309 = sub i32 0, %sub493, !dbg !1161
  %119 = select i1 %ispos2308, i32 %sub493, i32 %neg2309, !dbg !1161
  %cmp495 = icmp sgt i32 %119, %search_range, !dbg !1161
  br i1 %cmp495, label %if.end605, label %if.then497, !dbg !1161

if.then497:                                       ; preds = %land.lhs.true492
  %add499 = add nsw i32 %sub488, %search_range, !dbg !1162
  %idxprom500 = sext i32 %add499 to i64, !dbg !1162
  %add502 = add nsw i32 %sub493, %search_range, !dbg !1162
  %idxprom503 = sext i32 %add502 to i64, !dbg !1162
  %arrayidx504 = getelementptr inbounds i32** %111, i64 %idxprom503, !dbg !1162
  %120 = load i32** %arrayidx504, align 8, !dbg !1162, !tbaa !895
  %arrayidx505 = getelementptr inbounds i32* %120, i64 %idxprom500, !dbg !1162
  %121 = load i32* %arrayidx505, align 4, !dbg !1162, !tbaa !896
  %tobool506 = icmp eq i32 %121, 0, !dbg !1162
  br i1 %tobool506, label %if.then507, label %if.end605, !dbg !1162

if.then507:                                       ; preds = %if.then497
  %shl508 = shl i32 %add485, 2, !dbg !1164
  %sub509 = sub nsw i32 %shl508, %add18, !dbg !1164
  %idxprom510 = sext i32 %sub509 to i64, !dbg !1164
  %122 = load i32** @mvbits, align 8, !dbg !1164, !tbaa !895
  %arrayidx511 = getelementptr inbounds i32* %122, i64 %idxprom510, !dbg !1164
  %123 = load i32* %arrayidx511, align 4, !dbg !1164, !tbaa !896
  %shl512 = shl i32 %add487, 2, !dbg !1164
  %sub513 = sub nsw i32 %shl512, %add21, !dbg !1164
  %idxprom514 = sext i32 %sub513 to i64, !dbg !1164
  %arrayidx515 = getelementptr inbounds i32* %122, i64 %idxprom514, !dbg !1164
  %124 = load i32* %arrayidx515, align 4, !dbg !1164, !tbaa !896
  %add516 = add nsw i32 %124, %123, !dbg !1164
  %mul517 = mul nsw i32 %add516, %conv, !dbg !1164
  %shr518 = ashr i32 %mul517, 16, !dbg !1164
  tail call void @llvm.dbg.value(metadata !{i32 %shr518}, i64 0, metadata !132), !dbg !1164
  %call519 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr518, i32 %min_mcost.addr.9, i32 %add485, i32 %add487) #5, !dbg !1164
  tail call void @llvm.dbg.value(metadata !{i32 %call519}, i64 0, metadata !132), !dbg !1164
  %125 = load i32*** @McostState, align 8, !dbg !1164, !tbaa !895
  %arrayidx526 = getelementptr inbounds i32** %125, i64 %idxprom503, !dbg !1164
  %126 = load i32** %arrayidx526, align 8, !dbg !1164, !tbaa !895
  %arrayidx527 = getelementptr inbounds i32* %126, i64 %idxprom500, !dbg !1164
  store i32 %call519, i32* %arrayidx527, align 4, !dbg !1164, !tbaa !896
  %cmp528 = icmp slt i32 %call519, %min_mcost.addr.9, !dbg !1164
  tail call void @llvm.dbg.value(metadata !{i32 %add485}, i64 0, metadata !145), !dbg !1166
  tail call void @llvm.dbg.value(metadata !{i32 %add487}, i64 0, metadata !146), !dbg !1166
  tail call void @llvm.dbg.value(metadata !{i32 %call519}, i64 0, metadata !127), !dbg !1166
  %add485.best_x.9 = select i1 %cmp528, i32 %add485, i32 %best_x.9, !dbg !1164
  %add487.best_y.9 = select i1 %cmp528, i32 %add487, i32 %best_y.9, !dbg !1164
  %call519.min_mcost.addr.9 = select i1 %cmp528, i32 %call519, i32 %min_mcost.addr.9, !dbg !1164
  br label %if.end605, !dbg !1164

if.else535:                                       ; preds = %if.end459
  br i1 %brmerge, label %lor.lhs.false542, label %if.then553, !dbg !1168

lor.lhs.false542:                                 ; preds = %if.else535
  %127 = load %struct.ImageParameters** @img, align 8, !dbg !1168, !tbaa !895
  %type543 = getelementptr inbounds %struct.ImageParameters* %127, i64 0, i32 6, !dbg !1168
  %128 = load i32* %type543, align 4, !dbg !1168, !tbaa !896
  %cmp544.not = icmp ne i32 %128, 1, !dbg !1168
  %brmerge2339 = or i1 %cmp544.not, %cmp463.not, !dbg !1168
  %brmerge2339.not = xor i1 %brmerge2339, true, !dbg !1168
  %cmp551 = icmp eq i16 %ref, 0, !dbg !1168
  %or.cond2340 = and i1 %cmp551, %brmerge2339.not, !dbg !1168
  br i1 %or.cond2340, label %if.then553, label %if.end605, !dbg !1168

if.then553:                                       ; preds = %lor.lhs.false542, %if.else535
  %129 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 0), align 4, !dbg !1170, !tbaa !896
  %div554 = sdiv i32 %129, 4, !dbg !1170
  %add555 = add nsw i32 %div554, %pic_pix_x, !dbg !1170
  tail call void @llvm.dbg.value(metadata !{i32 %add555}, i64 0, metadata !130), !dbg !1170
  %130 = load i32* getelementptr inbounds ([2 x i32]* @pred_MV_ref, i64 0, i64 1), align 4, !dbg !1172, !tbaa !896
  %div556 = sdiv i32 %130, 4, !dbg !1172
  %add557 = add nsw i32 %div556, %pic_pix_y, !dbg !1172
  tail call void @llvm.dbg.value(metadata !{i32 %add557}, i64 0, metadata !131), !dbg !1172
  %sub558 = sub nsw i32 %add555, %add23, !dbg !1173
  %ispos2302 = icmp sgt i32 %sub558, -1, !dbg !1173
  %neg2303 = sub i32 0, %sub558, !dbg !1173
  %131 = select i1 %ispos2302, i32 %sub558, i32 %neg2303, !dbg !1173
  %cmp560 = icmp sgt i32 %131, %search_range, !dbg !1173
  br i1 %cmp560, label %if.end605, label %land.lhs.true562, !dbg !1173

land.lhs.true562:                                 ; preds = %if.then553
  %sub563 = sub nsw i32 %add557, %add25, !dbg !1173
  %ispos2304 = icmp sgt i32 %sub563, -1, !dbg !1173
  %neg2305 = sub i32 0, %sub563, !dbg !1173
  %132 = select i1 %ispos2304, i32 %sub563, i32 %neg2305, !dbg !1173
  %cmp565 = icmp sgt i32 %132, %search_range, !dbg !1173
  br i1 %cmp565, label %if.end605, label %if.then567, !dbg !1173

if.then567:                                       ; preds = %land.lhs.true562
  %add569 = add nsw i32 %sub558, %search_range, !dbg !1174
  %idxprom570 = sext i32 %add569 to i64, !dbg !1174
  %add572 = add nsw i32 %sub563, %search_range, !dbg !1174
  %idxprom573 = sext i32 %add572 to i64, !dbg !1174
  %arrayidx574 = getelementptr inbounds i32** %111, i64 %idxprom573, !dbg !1174
  %133 = load i32** %arrayidx574, align 8, !dbg !1174, !tbaa !895
  %arrayidx575 = getelementptr inbounds i32* %133, i64 %idxprom570, !dbg !1174
  %134 = load i32* %arrayidx575, align 4, !dbg !1174, !tbaa !896
  %tobool576 = icmp eq i32 %134, 0, !dbg !1174
  br i1 %tobool576, label %if.then577, label %if.end605, !dbg !1174

if.then577:                                       ; preds = %if.then567
  %shl578 = shl i32 %add555, 2, !dbg !1176
  %sub579 = sub nsw i32 %shl578, %add18, !dbg !1176
  %idxprom580 = sext i32 %sub579 to i64, !dbg !1176
  %135 = load i32** @mvbits, align 8, !dbg !1176, !tbaa !895
  %arrayidx581 = getelementptr inbounds i32* %135, i64 %idxprom580, !dbg !1176
  %136 = load i32* %arrayidx581, align 4, !dbg !1176, !tbaa !896
  %shl582 = shl i32 %add557, 2, !dbg !1176
  %sub583 = sub nsw i32 %shl582, %add21, !dbg !1176
  %idxprom584 = sext i32 %sub583 to i64, !dbg !1176
  %arrayidx585 = getelementptr inbounds i32* %135, i64 %idxprom584, !dbg !1176
  %137 = load i32* %arrayidx585, align 4, !dbg !1176, !tbaa !896
  %add586 = add nsw i32 %137, %136, !dbg !1176
  %mul587 = mul nsw i32 %add586, %conv, !dbg !1176
  %shr588 = ashr i32 %mul587, 16, !dbg !1176
  tail call void @llvm.dbg.value(metadata !{i32 %shr588}, i64 0, metadata !132), !dbg !1176
  %call589 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr588, i32 %min_mcost.addr.9, i32 %add555, i32 %add557) #5, !dbg !1176
  tail call void @llvm.dbg.value(metadata !{i32 %call589}, i64 0, metadata !132), !dbg !1176
  %138 = load i32*** @McostState, align 8, !dbg !1176, !tbaa !895
  %arrayidx596 = getelementptr inbounds i32** %138, i64 %idxprom573, !dbg !1176
  %139 = load i32** %arrayidx596, align 8, !dbg !1176, !tbaa !895
  %arrayidx597 = getelementptr inbounds i32* %139, i64 %idxprom570, !dbg !1176
  store i32 %call589, i32* %arrayidx597, align 4, !dbg !1176, !tbaa !896
  %cmp598 = icmp slt i32 %call589, %min_mcost.addr.9, !dbg !1176
  tail call void @llvm.dbg.value(metadata !{i32 %add555}, i64 0, metadata !145), !dbg !1178
  tail call void @llvm.dbg.value(metadata !{i32 %add557}, i64 0, metadata !146), !dbg !1178
  tail call void @llvm.dbg.value(metadata !{i32 %call589}, i64 0, metadata !127), !dbg !1178
  %add555.best_x.9 = select i1 %cmp598, i32 %add555, i32 %best_x.9, !dbg !1176
  %add557.best_y.9 = select i1 %cmp598, i32 %add557, i32 %best_y.9, !dbg !1176
  %call589.min_mcost.addr.9 = select i1 %cmp598, i32 %call589, i32 %min_mcost.addr.9, !dbg !1176
  br label %if.end605, !dbg !1176

if.end605:                                        ; preds = %if.then577, %if.then507, %lor.lhs.false542, %land.lhs.true475, %lor.lhs.false469, %if.then497, %land.lhs.true492, %if.then483, %if.then567, %land.lhs.true562, %if.then553
  %140 = phi i32** [ %111, %if.then497 ], [ %111, %land.lhs.true492 ], [ %111, %if.then483 ], [ %111, %lor.lhs.false469 ], [ %111, %if.then567 ], [ %111, %land.lhs.true562 ], [ %111, %if.then553 ], [ %111, %lor.lhs.false542 ], [ %111, %land.lhs.true475 ], [ %125, %if.then507 ], [ %138, %if.then577 ]
  %best_x.10 = phi i32 [ %best_x.9, %if.then497 ], [ %best_x.9, %land.lhs.true492 ], [ %best_x.9, %if.then483 ], [ %best_x.9, %lor.lhs.false469 ], [ %best_x.9, %if.then567 ], [ %best_x.9, %land.lhs.true562 ], [ %best_x.9, %if.then553 ], [ %best_x.9, %lor.lhs.false542 ], [ %best_x.9, %land.lhs.true475 ], [ %add485.best_x.9, %if.then507 ], [ %add555.best_x.9, %if.then577 ]
  %best_y.10 = phi i32 [ %best_y.9, %if.then497 ], [ %best_y.9, %land.lhs.true492 ], [ %best_y.9, %if.then483 ], [ %best_y.9, %lor.lhs.false469 ], [ %best_y.9, %if.then567 ], [ %best_y.9, %land.lhs.true562 ], [ %best_y.9, %if.then553 ], [ %best_y.9, %lor.lhs.false542 ], [ %best_y.9, %land.lhs.true475 ], [ %add487.best_y.9, %if.then507 ], [ %add557.best_y.9, %if.then577 ]
  %min_mcost.addr.10 = phi i32 [ %min_mcost.addr.9, %if.then497 ], [ %min_mcost.addr.9, %land.lhs.true492 ], [ %min_mcost.addr.9, %if.then483 ], [ %min_mcost.addr.9, %lor.lhs.false469 ], [ %min_mcost.addr.9, %if.then567 ], [ %min_mcost.addr.9, %land.lhs.true562 ], [ %min_mcost.addr.9, %if.then553 ], [ %min_mcost.addr.9, %lor.lhs.false542 ], [ %min_mcost.addr.9, %land.lhs.true475 ], [ %call519.min_mcost.addr.9, %if.then507 ], [ %call589.min_mcost.addr.9, %if.then577 ]
  tail call void @llvm.dbg.value(metadata !{i32 %best_x.10}, i64 0, metadata !149), !dbg !1180
  tail call void @llvm.dbg.value(metadata !{i32 %best_y.10}, i64 0, metadata !148), !dbg !1181
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !151), !dbg !1182
  br label %for.body609, !dbg !1182

for.body609:                                      ; preds = %for.inc662, %if.end605
  %141 = phi i32** [ %140, %if.end605 ], [ %153, %for.inc662 ]
  %indvars.iv2453 = phi i64 [ 0, %if.end605 ], [ %indvars.iv.next2454, %for.inc662 ]
  %min_mcost.addr.112416 = phi i32 [ %min_mcost.addr.10, %if.end605 ], [ %min_mcost.addr.12, %for.inc662 ]
  %best_y.112414 = phi i32 [ %best_y.10, %if.end605 ], [ %best_y.12, %for.inc662 ]
  %best_x.112413 = phi i32 [ %best_x.10, %if.end605 ], [ %best_x.12, %for.inc662 ]
  %arrayidx611 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %indvars.iv2453, !dbg !1184
  %142 = load i32* %arrayidx611, align 4, !dbg !1184, !tbaa !896
  %add612 = add nsw i32 %142, %best_x.10, !dbg !1184
  tail call void @llvm.dbg.value(metadata !{i32 %add612}, i64 0, metadata !130), !dbg !1184
  %arrayidx614 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %indvars.iv2453, !dbg !1186
  %143 = load i32* %arrayidx614, align 4, !dbg !1186, !tbaa !896
  %add615 = add nsw i32 %143, %best_y.10, !dbg !1186
  tail call void @llvm.dbg.value(metadata !{i32 %add615}, i64 0, metadata !131), !dbg !1186
  %sub616 = sub nsw i32 %add612, %add23, !dbg !1187
  %ispos2298 = icmp sgt i32 %sub616, -1, !dbg !1187
  %neg2299 = sub i32 0, %sub616, !dbg !1187
  %144 = select i1 %ispos2298, i32 %sub616, i32 %neg2299, !dbg !1187
  %cmp618 = icmp sgt i32 %144, %search_range, !dbg !1187
  br i1 %cmp618, label %for.inc662, label %land.lhs.true620, !dbg !1187

land.lhs.true620:                                 ; preds = %for.body609
  %sub621 = sub nsw i32 %add615, %add25, !dbg !1187
  %ispos2300 = icmp sgt i32 %sub621, -1, !dbg !1187
  %neg2301 = sub i32 0, %sub621, !dbg !1187
  %145 = select i1 %ispos2300, i32 %sub621, i32 %neg2301, !dbg !1187
  %cmp623 = icmp sgt i32 %145, %search_range, !dbg !1187
  br i1 %cmp623, label %for.inc662, label %if.then625, !dbg !1187

if.then625:                                       ; preds = %land.lhs.true620
  %add627 = add nsw i32 %sub616, %search_range, !dbg !1188
  %idxprom628 = sext i32 %add627 to i64, !dbg !1188
  %add630 = add nsw i32 %sub621, %search_range, !dbg !1188
  %idxprom631 = sext i32 %add630 to i64, !dbg !1188
  %arrayidx632 = getelementptr inbounds i32** %141, i64 %idxprom631, !dbg !1188
  %146 = load i32** %arrayidx632, align 8, !dbg !1188, !tbaa !895
  %arrayidx633 = getelementptr inbounds i32* %146, i64 %idxprom628, !dbg !1188
  %147 = load i32* %arrayidx633, align 4, !dbg !1188, !tbaa !896
  %tobool634 = icmp eq i32 %147, 0, !dbg !1188
  br i1 %tobool634, label %if.then635, label %for.inc662, !dbg !1188

if.then635:                                       ; preds = %if.then625
  %shl636 = shl i32 %add612, 2, !dbg !1190
  %sub637 = sub nsw i32 %shl636, %add18, !dbg !1190
  %idxprom638 = sext i32 %sub637 to i64, !dbg !1190
  %148 = load i32** @mvbits, align 8, !dbg !1190, !tbaa !895
  %arrayidx639 = getelementptr inbounds i32* %148, i64 %idxprom638, !dbg !1190
  %149 = load i32* %arrayidx639, align 4, !dbg !1190, !tbaa !896
  %shl640 = shl i32 %add615, 2, !dbg !1190
  %sub641 = sub nsw i32 %shl640, %add21, !dbg !1190
  %idxprom642 = sext i32 %sub641 to i64, !dbg !1190
  %arrayidx643 = getelementptr inbounds i32* %148, i64 %idxprom642, !dbg !1190
  %150 = load i32* %arrayidx643, align 4, !dbg !1190, !tbaa !896
  %add644 = add nsw i32 %150, %149, !dbg !1190
  %mul645 = mul nsw i32 %add644, %conv, !dbg !1190
  %shr646 = ashr i32 %mul645, 16, !dbg !1190
  tail call void @llvm.dbg.value(metadata !{i32 %shr646}, i64 0, metadata !132), !dbg !1190
  %call647 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr646, i32 %min_mcost.addr.112416, i32 %add612, i32 %add615) #5, !dbg !1190
  tail call void @llvm.dbg.value(metadata !{i32 %call647}, i64 0, metadata !132), !dbg !1190
  %151 = load i32*** @McostState, align 8, !dbg !1190, !tbaa !895
  %arrayidx654 = getelementptr inbounds i32** %151, i64 %idxprom631, !dbg !1190
  %152 = load i32** %arrayidx654, align 8, !dbg !1190, !tbaa !895
  %arrayidx655 = getelementptr inbounds i32* %152, i64 %idxprom628, !dbg !1190
  store i32 %call647, i32* %arrayidx655, align 4, !dbg !1190, !tbaa !896
  %cmp656 = icmp slt i32 %call647, %min_mcost.addr.112416, !dbg !1190
  tail call void @llvm.dbg.value(metadata !{i32 %add612}, i64 0, metadata !145), !dbg !1192
  tail call void @llvm.dbg.value(metadata !{i32 %add615}, i64 0, metadata !146), !dbg !1192
  tail call void @llvm.dbg.value(metadata !{i32 %call647}, i64 0, metadata !127), !dbg !1192
  %add612.best_x.11 = select i1 %cmp656, i32 %add612, i32 %best_x.112413, !dbg !1190
  %add615.best_y.11 = select i1 %cmp656, i32 %add615, i32 %best_y.112414, !dbg !1190
  %call647.min_mcost.addr.11 = select i1 %cmp656, i32 %call647, i32 %min_mcost.addr.112416, !dbg !1190
  br label %for.inc662, !dbg !1190

for.inc662:                                       ; preds = %if.then635, %if.then625, %land.lhs.true620, %for.body609
  %153 = phi i32** [ %141, %if.then625 ], [ %141, %land.lhs.true620 ], [ %141, %for.body609 ], [ %151, %if.then635 ]
  %best_x.12 = phi i32 [ %best_x.112413, %if.then625 ], [ %best_x.112413, %land.lhs.true620 ], [ %best_x.112413, %for.body609 ], [ %add612.best_x.11, %if.then635 ]
  %best_y.12 = phi i32 [ %best_y.112414, %if.then625 ], [ %best_y.112414, %land.lhs.true620 ], [ %best_y.112414, %for.body609 ], [ %add615.best_y.11, %if.then635 ]
  %min_mcost.addr.12 = phi i32 [ %min_mcost.addr.112416, %if.then625 ], [ %min_mcost.addr.112416, %land.lhs.true620 ], [ %min_mcost.addr.112416, %for.body609 ], [ %call647.min_mcost.addr.11, %if.then635 ]
  %indvars.iv.next2454 = add i64 %indvars.iv2453, 1, !dbg !1182
  %lftr.wideiv2455 = trunc i64 %indvars.iv.next2454 to i32, !dbg !1182
  %exitcond2456 = icmp eq i32 %lftr.wideiv2455, 4, !dbg !1182
  br i1 %exitcond2456, label %for.end664, label %for.body609, !dbg !1182

for.end664:                                       ; preds = %for.inc662
  br i1 %cmp65, label %if.then668, label %if.else686, !dbg !1194

if.then668:                                       ; preds = %for.end664
  %154 = load i32* @pred_SAD_ref, align 4, !dbg !1195, !tbaa !896
  %sub669 = sub nsw i32 %min_mcost.addr.12, %154, !dbg !1195
  %conv670 = sitofp i32 %sub669 to float, !dbg !1195
  %conv671 = sitofp i32 %154 to float, !dbg !1195
  %mul672 = fmul float %betaThird.0, %conv671, !dbg !1195
  %cmp673 = fcmp olt float %conv670, %mul672, !dbg !1195
  br i1 %cmp673, label %for.cond1325.preheader, label %if.else676, !dbg !1195

if.else676:                                       ; preds = %if.then668
  %mul680 = fmul float %betaSec.0, %conv671, !dbg !1195
  %cmp681 = fcmp olt float %conv670, %mul680, !dbg !1195
  %cmp727.old.old = icmp sgt i32 %blocktype, 6, !dbg !1197
  %or.cond2343 = or i1 %cmp681, %cmp727.old.old, !dbg !1195
  br i1 %or.cond2343, label %for.cond1256.preheader, label %for.cond731.preheader, !dbg !1195

if.else686:                                       ; preds = %for.end664
  br i1 %cmp322, label %if.then689, label %if.else707, !dbg !1194

if.then689:                                       ; preds = %if.else686
  %155 = load i32* @pred_SAD_uplayer, align 4, !dbg !1198, !tbaa !896
  %sub690 = sub nsw i32 %min_mcost.addr.12, %155, !dbg !1198
  %conv691 = sitofp i32 %sub690 to float, !dbg !1198
  %conv692 = sitofp i32 %155 to float, !dbg !1198
  %mul693 = fmul float %betaThird.0, %conv692, !dbg !1198
  %cmp694 = fcmp olt float %conv691, %mul693, !dbg !1198
  br i1 %cmp694, label %for.cond1325.preheader, label %if.else697, !dbg !1198

if.else697:                                       ; preds = %if.then689
  %mul701 = fmul float %betaSec.0, %conv692, !dbg !1198
  %cmp702 = fcmp olt float %conv691, %mul701, !dbg !1198
  %cmp727 = icmp sgt i32 %blocktype, 6, !dbg !1197
  %or.cond2341 = or i1 %cmp702, %cmp727, !dbg !1198
  br i1 %or.cond2341, label %for.cond1256.preheader, label %for.cond731.preheader, !dbg !1198

if.else707:                                       ; preds = %if.else686
  %156 = load i32* @pred_SAD_space, align 4, !dbg !1200, !tbaa !896
  %sub708 = sub nsw i32 %min_mcost.addr.12, %156, !dbg !1200
  %conv709 = sitofp i32 %sub708 to float, !dbg !1200
  %conv710 = sitofp i32 %156 to float, !dbg !1200
  %mul711 = fmul float %betaThird.0, %conv710, !dbg !1200
  %cmp712 = fcmp olt float %conv709, %mul711, !dbg !1200
  br i1 %cmp712, label %for.cond1325.preheader, label %if.else715, !dbg !1200

if.else715:                                       ; preds = %if.else707
  %mul719 = fmul float %betaSec.0, %conv710, !dbg !1200
  %cmp720 = fcmp olt float %conv709, %mul719, !dbg !1200
  br i1 %cmp720, label %for.cond1256.preheader, label %for.cond731.preheader, !dbg !1200

for.cond731.preheader:                            ; preds = %if.else676, %if.else715, %if.else697
  %div732 = sdiv i32 %search_range, 2, !dbg !1202
  %cmp7332404 = icmp slt i32 %search_range, 2, !dbg !1202
  br i1 %cmp7332404, label %for.cond835.preheader.thread, label %for.body735.lr.ph, !dbg !1202

for.cond835.preheader.thread:                     ; preds = %for.cond731.preheader
  %div8362466 = sdiv i32 %search_range, 4, !dbg !1204
  br label %for.end938, !dbg !1204

for.body735.lr.ph:                                ; preds = %for.cond731.preheader
  %sub791 = sub nsw i32 %best_y.12, %add25, !dbg !1206
  %ispos2294 = icmp sgt i32 %sub791, -1, !dbg !1206
  %neg2295 = sub i32 0, %sub791, !dbg !1206
  %157 = select i1 %ispos2294, i32 %sub791, i32 %neg2295, !dbg !1206
  %cmp793 = icmp sgt i32 %157, %search_range, !dbg !1206
  %add800 = add nsw i32 %sub791, %search_range, !dbg !1208
  %idxprom801 = sext i32 %add800 to i64, !dbg !1208
  %shl810 = shl i32 %best_y.12, 2, !dbg !1210
  %sub811 = sub nsw i32 %shl810, %add21, !dbg !1210
  %idxprom812 = sext i32 %sub811 to i64, !dbg !1210
  br label %for.body735, !dbg !1202

for.cond835.preheader:                            ; preds = %for.inc832
  %div836 = sdiv i32 %search_range, 4, !dbg !1204
  %cmp8372395 = icmp slt i32 %search_range, 4, !dbg !1204
  br i1 %cmp8372395, label %for.end938, label %for.body839.lr.ph, !dbg !1204

for.body839.lr.ph:                                ; preds = %for.cond835.preheader
  %sub843 = sub nsw i32 %best_x.12, %add23, !dbg !1212
  %ispos2284 = icmp sgt i32 %sub843, -1, !dbg !1212
  %neg2285 = sub i32 0, %sub843, !dbg !1212
  %158 = select i1 %ispos2284, i32 %sub843, i32 %neg2285, !dbg !1212
  %cmp845 = icmp sgt i32 %158, %search_range, !dbg !1212
  %add901 = add nsw i32 %sub843, %search_range, !dbg !1214
  %idxprom902 = sext i32 %add901 to i64, !dbg !1214
  %shl910 = shl i32 %best_x.12, 2, !dbg !1216
  %sub911 = sub nsw i32 %shl910, %add18, !dbg !1216
  %idxprom912 = sext i32 %sub911 to i64, !dbg !1216
  br label %for.body839, !dbg !1204

for.body735:                                      ; preds = %for.inc832, %for.body735.lr.ph
  %159 = phi i32** [ %178, %for.inc832 ], [ %153, %for.body735.lr.ph ]
  %indvars.iv2451 = phi i64 [ %indvars.iv.next2452, %for.inc832 ], [ 1, %for.body735.lr.ph ]
  %min_mcost.addr.132408 = phi i32 [ %min_mcost.addr.15, %for.inc832 ], [ %min_mcost.addr.12, %for.body735.lr.ph ]
  %best_y.132406 = phi i32 [ %best_y.15, %for.inc832 ], [ %best_y.12, %for.body735.lr.ph ]
  %best_x.132405 = phi i32 [ %best_x.15, %for.inc832 ], [ %best_x.12, %for.body735.lr.ph ]
  %160 = trunc i64 %indvars.iv2451 to i32, !dbg !1218
  %mul736 = shl nsw i32 %160, 1, !dbg !1218
  %sub737 = add nsw i32 %mul736, -1, !dbg !1218
  tail call void @llvm.dbg.value(metadata !{i32 %sub737}, i64 0, metadata !147), !dbg !1218
  %add738 = add nsw i32 %sub737, %best_x.12, !dbg !1219
  tail call void @llvm.dbg.value(metadata !{i32 %add738}, i64 0, metadata !130), !dbg !1219
  tail call void @llvm.dbg.value(metadata !{i32 %best_y.12}, i64 0, metadata !131), !dbg !1220
  %sub739 = sub nsw i32 %add738, %add23, !dbg !1221
  %ispos2290 = icmp sgt i32 %sub739, -1, !dbg !1221
  %neg2291 = sub i32 0, %sub739, !dbg !1221
  %161 = select i1 %ispos2290, i32 %sub739, i32 %neg2291, !dbg !1221
  %cmp741 = icmp sgt i32 %161, %search_range, !dbg !1221
  br i1 %cmp741, label %if.end784, label %land.lhs.true743, !dbg !1221

land.lhs.true743:                                 ; preds = %for.body735
  br i1 %cmp793, label %if.end784, label %if.then748, !dbg !1221

if.then748:                                       ; preds = %land.lhs.true743
  %add750 = add nsw i32 %sub739, %search_range, !dbg !1222
  %idxprom751 = sext i32 %add750 to i64, !dbg !1222
  %arrayidx755 = getelementptr inbounds i32** %159, i64 %idxprom801, !dbg !1222
  %162 = load i32** %arrayidx755, align 8, !dbg !1222, !tbaa !895
  %arrayidx756 = getelementptr inbounds i32* %162, i64 %idxprom751, !dbg !1222
  %163 = load i32* %arrayidx756, align 4, !dbg !1222, !tbaa !896
  %tobool757 = icmp eq i32 %163, 0, !dbg !1222
  br i1 %tobool757, label %if.then758, label %if.end784, !dbg !1222

if.then758:                                       ; preds = %if.then748
  %shl759 = shl i32 %add738, 2, !dbg !1224
  %sub760 = sub nsw i32 %shl759, %add18, !dbg !1224
  %idxprom761 = sext i32 %sub760 to i64, !dbg !1224
  %164 = load i32** @mvbits, align 8, !dbg !1224, !tbaa !895
  %arrayidx762 = getelementptr inbounds i32* %164, i64 %idxprom761, !dbg !1224
  %165 = load i32* %arrayidx762, align 4, !dbg !1224, !tbaa !896
  %arrayidx766 = getelementptr inbounds i32* %164, i64 %idxprom812, !dbg !1224
  %166 = load i32* %arrayidx766, align 4, !dbg !1224, !tbaa !896
  %add767 = add nsw i32 %166, %165, !dbg !1224
  %mul768 = mul nsw i32 %add767, %conv, !dbg !1224
  %shr769 = ashr i32 %mul768, 16, !dbg !1224
  tail call void @llvm.dbg.value(metadata !{i32 %shr769}, i64 0, metadata !132), !dbg !1224
  %call770 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr769, i32 %min_mcost.addr.132408, i32 %add738, i32 %best_y.12) #5, !dbg !1224
  tail call void @llvm.dbg.value(metadata !{i32 %call770}, i64 0, metadata !132), !dbg !1224
  %167 = load i32*** @McostState, align 8, !dbg !1224, !tbaa !895
  %arrayidx777 = getelementptr inbounds i32** %167, i64 %idxprom801, !dbg !1224
  %168 = load i32** %arrayidx777, align 8, !dbg !1224, !tbaa !895
  %arrayidx778 = getelementptr inbounds i32* %168, i64 %idxprom751, !dbg !1224
  store i32 %call770, i32* %arrayidx778, align 4, !dbg !1224, !tbaa !896
  %cmp779 = icmp slt i32 %call770, %min_mcost.addr.132408, !dbg !1224
  tail call void @llvm.dbg.value(metadata !{i32 %add738}, i64 0, metadata !145), !dbg !1226
  tail call void @llvm.dbg.value(metadata !{i32 %best_y.12}, i64 0, metadata !146), !dbg !1226
  tail call void @llvm.dbg.value(metadata !{i32 %call770}, i64 0, metadata !127), !dbg !1226
  %add738.best_x.13 = select i1 %cmp779, i32 %add738, i32 %best_x.132405, !dbg !1224
  %best_y.11.best_y.13 = select i1 %cmp779, i32 %best_y.12, i32 %best_y.132406, !dbg !1224
  %call770.min_mcost.addr.13 = select i1 %cmp779, i32 %call770, i32 %min_mcost.addr.132408, !dbg !1224
  br label %if.end784, !dbg !1224

if.end784:                                        ; preds = %if.then758, %if.then748, %land.lhs.true743, %for.body735
  %169 = phi i32** [ %159, %if.then748 ], [ %159, %land.lhs.true743 ], [ %159, %for.body735 ], [ %167, %if.then758 ]
  %best_x.14 = phi i32 [ %best_x.132405, %if.then748 ], [ %best_x.132405, %land.lhs.true743 ], [ %best_x.132405, %for.body735 ], [ %add738.best_x.13, %if.then758 ]
  %best_y.14 = phi i32 [ %best_y.132406, %if.then748 ], [ %best_y.132406, %land.lhs.true743 ], [ %best_y.132406, %for.body735 ], [ %best_y.11.best_y.13, %if.then758 ]
  %min_mcost.addr.14 = phi i32 [ %min_mcost.addr.132408, %if.then748 ], [ %min_mcost.addr.132408, %land.lhs.true743 ], [ %min_mcost.addr.132408, %for.body735 ], [ %call770.min_mcost.addr.13, %if.then758 ]
  %sub785 = sub nsw i32 %best_x.12, %sub737, !dbg !1228
  tail call void @llvm.dbg.value(metadata !{i32 %sub785}, i64 0, metadata !130), !dbg !1228
  tail call void @llvm.dbg.value(metadata !{i32 %best_y.12}, i64 0, metadata !131), !dbg !1229
  %sub786 = sub nsw i32 %sub785, %add23, !dbg !1206
  %ispos2292 = icmp sgt i32 %sub786, -1, !dbg !1206
  %neg2293 = sub i32 0, %sub786, !dbg !1206
  %170 = select i1 %ispos2292, i32 %sub786, i32 %neg2293, !dbg !1206
  %cmp788 = icmp sgt i32 %170, %search_range, !dbg !1206
  br i1 %cmp788, label %for.inc832, label %land.lhs.true790, !dbg !1206

land.lhs.true790:                                 ; preds = %if.end784
  br i1 %cmp793, label %for.inc832, label %if.then795, !dbg !1206

if.then795:                                       ; preds = %land.lhs.true790
  %add797 = add nsw i32 %sub786, %search_range, !dbg !1208
  %idxprom798 = sext i32 %add797 to i64, !dbg !1208
  %arrayidx802 = getelementptr inbounds i32** %169, i64 %idxprom801, !dbg !1208
  %171 = load i32** %arrayidx802, align 8, !dbg !1208, !tbaa !895
  %arrayidx803 = getelementptr inbounds i32* %171, i64 %idxprom798, !dbg !1208
  %172 = load i32* %arrayidx803, align 4, !dbg !1208, !tbaa !896
  %tobool804 = icmp eq i32 %172, 0, !dbg !1208
  br i1 %tobool804, label %if.then805, label %for.inc832, !dbg !1208

if.then805:                                       ; preds = %if.then795
  %shl806 = shl i32 %sub785, 2, !dbg !1210
  %sub807 = sub nsw i32 %shl806, %add18, !dbg !1210
  %idxprom808 = sext i32 %sub807 to i64, !dbg !1210
  %173 = load i32** @mvbits, align 8, !dbg !1210, !tbaa !895
  %arrayidx809 = getelementptr inbounds i32* %173, i64 %idxprom808, !dbg !1210
  %174 = load i32* %arrayidx809, align 4, !dbg !1210, !tbaa !896
  %arrayidx813 = getelementptr inbounds i32* %173, i64 %idxprom812, !dbg !1210
  %175 = load i32* %arrayidx813, align 4, !dbg !1210, !tbaa !896
  %add814 = add nsw i32 %175, %174, !dbg !1210
  %mul815 = mul nsw i32 %add814, %conv, !dbg !1210
  %shr816 = ashr i32 %mul815, 16, !dbg !1210
  tail call void @llvm.dbg.value(metadata !{i32 %shr816}, i64 0, metadata !132), !dbg !1210
  %call817 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr816, i32 %min_mcost.addr.14, i32 %sub785, i32 %best_y.12) #5, !dbg !1210
  tail call void @llvm.dbg.value(metadata !{i32 %call817}, i64 0, metadata !132), !dbg !1210
  %176 = load i32*** @McostState, align 8, !dbg !1210, !tbaa !895
  %arrayidx824 = getelementptr inbounds i32** %176, i64 %idxprom801, !dbg !1210
  %177 = load i32** %arrayidx824, align 8, !dbg !1210, !tbaa !895
  %arrayidx825 = getelementptr inbounds i32* %177, i64 %idxprom798, !dbg !1210
  store i32 %call817, i32* %arrayidx825, align 4, !dbg !1210, !tbaa !896
  %cmp826 = icmp slt i32 %call817, %min_mcost.addr.14, !dbg !1210
  tail call void @llvm.dbg.value(metadata !{i32 %sub785}, i64 0, metadata !145), !dbg !1230
  tail call void @llvm.dbg.value(metadata !{i32 %best_y.12}, i64 0, metadata !146), !dbg !1230
  tail call void @llvm.dbg.value(metadata !{i32 %call817}, i64 0, metadata !127), !dbg !1230
  %sub785.best_x.14 = select i1 %cmp826, i32 %sub785, i32 %best_x.14, !dbg !1210
  %best_y.11.best_y.14 = select i1 %cmp826, i32 %best_y.12, i32 %best_y.14, !dbg !1210
  %call817.min_mcost.addr.14 = select i1 %cmp826, i32 %call817, i32 %min_mcost.addr.14, !dbg !1210
  br label %for.inc832, !dbg !1210

for.inc832:                                       ; preds = %if.then805, %if.then795, %land.lhs.true790, %if.end784
  %178 = phi i32** [ %169, %if.then795 ], [ %169, %land.lhs.true790 ], [ %169, %if.end784 ], [ %176, %if.then805 ]
  %best_x.15 = phi i32 [ %best_x.14, %if.then795 ], [ %best_x.14, %land.lhs.true790 ], [ %best_x.14, %if.end784 ], [ %sub785.best_x.14, %if.then805 ]
  %best_y.15 = phi i32 [ %best_y.14, %if.then795 ], [ %best_y.14, %land.lhs.true790 ], [ %best_y.14, %if.end784 ], [ %best_y.11.best_y.14, %if.then805 ]
  %min_mcost.addr.15 = phi i32 [ %min_mcost.addr.14, %if.then795 ], [ %min_mcost.addr.14, %land.lhs.true790 ], [ %min_mcost.addr.14, %if.end784 ], [ %call817.min_mcost.addr.14, %if.then805 ]
  %indvars.iv.next2452 = add i64 %indvars.iv2451, 1, !dbg !1202
  %cmp733 = icmp slt i32 %160, %div732, !dbg !1202
  br i1 %cmp733, label %for.body735, label %for.cond835.preheader, !dbg !1202

for.body839:                                      ; preds = %for.inc936, %for.body839.lr.ph
  %179 = phi i32** [ %198, %for.inc936 ], [ %178, %for.body839.lr.ph ]
  %indvars.iv2449 = phi i64 [ %indvars.iv.next2450, %for.inc936 ], [ 1, %for.body839.lr.ph ]
  %min_mcost.addr.162399 = phi i32 [ %min_mcost.addr.18, %for.inc936 ], [ %min_mcost.addr.15, %for.body839.lr.ph ]
  %best_y.162397 = phi i32 [ %best_y.18, %for.inc936 ], [ %best_y.15, %for.body839.lr.ph ]
  %best_x.162396 = phi i32 [ %best_x.18, %for.inc936 ], [ %best_x.15, %for.body839.lr.ph ]
  %180 = trunc i64 %indvars.iv2449 to i32, !dbg !1232
  %mul840 = shl nsw i32 %180, 1, !dbg !1232
  %sub841 = add nsw i32 %mul840, -1, !dbg !1232
  tail call void @llvm.dbg.value(metadata !{i32 %sub841}, i64 0, metadata !147), !dbg !1232
  tail call void @llvm.dbg.value(metadata !{i32 %best_x.12}, i64 0, metadata !130), !dbg !1233
  %add842 = add nsw i32 %sub841, %best_y.12, !dbg !1234
  tail call void @llvm.dbg.value(metadata !{i32 %add842}, i64 0, metadata !131), !dbg !1234
  br i1 %cmp845, label %for.inc936, label %land.lhs.true847, !dbg !1212

land.lhs.true847:                                 ; preds = %for.body839
  %sub848 = sub nsw i32 %add842, %add25, !dbg !1212
  %ispos2288 = icmp sgt i32 %sub848, -1, !dbg !1212
  %neg2289 = sub i32 0, %sub848, !dbg !1212
  %181 = select i1 %ispos2288, i32 %sub848, i32 %neg2289, !dbg !1212
  %cmp850 = icmp sgt i32 %181, %search_range, !dbg !1212
  br i1 %cmp850, label %land.lhs.true894, label %if.then852, !dbg !1212

if.then852:                                       ; preds = %land.lhs.true847
  %add857 = add nsw i32 %sub848, %search_range, !dbg !1235
  %idxprom858 = sext i32 %add857 to i64, !dbg !1235
  %arrayidx859 = getelementptr inbounds i32** %179, i64 %idxprom858, !dbg !1235
  %182 = load i32** %arrayidx859, align 8, !dbg !1235, !tbaa !895
  %arrayidx860 = getelementptr inbounds i32* %182, i64 %idxprom902, !dbg !1235
  %183 = load i32* %arrayidx860, align 4, !dbg !1235, !tbaa !896
  %tobool861 = icmp eq i32 %183, 0, !dbg !1235
  br i1 %tobool861, label %if.then862, label %land.lhs.true894, !dbg !1235

if.then862:                                       ; preds = %if.then852
  %184 = load i32** @mvbits, align 8, !dbg !1237, !tbaa !895
  %arrayidx866 = getelementptr inbounds i32* %184, i64 %idxprom912, !dbg !1237
  %185 = load i32* %arrayidx866, align 4, !dbg !1237, !tbaa !896
  %shl867 = shl i32 %add842, 2, !dbg !1237
  %sub868 = sub nsw i32 %shl867, %add21, !dbg !1237
  %idxprom869 = sext i32 %sub868 to i64, !dbg !1237
  %arrayidx870 = getelementptr inbounds i32* %184, i64 %idxprom869, !dbg !1237
  %186 = load i32* %arrayidx870, align 4, !dbg !1237, !tbaa !896
  %add871 = add nsw i32 %186, %185, !dbg !1237
  %mul872 = mul nsw i32 %add871, %conv, !dbg !1237
  %shr873 = ashr i32 %mul872, 16, !dbg !1237
  tail call void @llvm.dbg.value(metadata !{i32 %shr873}, i64 0, metadata !132), !dbg !1237
  %call874 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr873, i32 %min_mcost.addr.162399, i32 %best_x.12, i32 %add842) #5, !dbg !1237
  tail call void @llvm.dbg.value(metadata !{i32 %call874}, i64 0, metadata !132), !dbg !1237
  %187 = load i32*** @McostState, align 8, !dbg !1237, !tbaa !895
  %arrayidx881 = getelementptr inbounds i32** %187, i64 %idxprom858, !dbg !1237
  %188 = load i32** %arrayidx881, align 8, !dbg !1237, !tbaa !895
  %arrayidx882 = getelementptr inbounds i32* %188, i64 %idxprom902, !dbg !1237
  store i32 %call874, i32* %arrayidx882, align 4, !dbg !1237, !tbaa !896
  %cmp883 = icmp slt i32 %call874, %min_mcost.addr.162399, !dbg !1237
  tail call void @llvm.dbg.value(metadata !{i32 %best_x.12}, i64 0, metadata !145), !dbg !1239
  tail call void @llvm.dbg.value(metadata !{i32 %add842}, i64 0, metadata !146), !dbg !1239
  tail call void @llvm.dbg.value(metadata !{i32 %call874}, i64 0, metadata !127), !dbg !1239
  %best_x.11.best_x.16 = select i1 %cmp883, i32 %best_x.12, i32 %best_x.162396, !dbg !1237
  %add842.best_y.16 = select i1 %cmp883, i32 %add842, i32 %best_y.162397, !dbg !1237
  %call874.min_mcost.addr.16 = select i1 %cmp883, i32 %call874, i32 %min_mcost.addr.162399, !dbg !1237
  br label %land.lhs.true894, !dbg !1237

land.lhs.true894:                                 ; preds = %if.then852, %if.then862, %land.lhs.true847
  %189 = phi i32** [ %179, %land.lhs.true847 ], [ %179, %if.then852 ], [ %187, %if.then862 ]
  %min_mcost.addr.172347 = phi i32 [ %min_mcost.addr.162399, %land.lhs.true847 ], [ %min_mcost.addr.162399, %if.then852 ], [ %call874.min_mcost.addr.16, %if.then862 ]
  %best_y.172346 = phi i32 [ %best_y.162397, %land.lhs.true847 ], [ %best_y.162397, %if.then852 ], [ %add842.best_y.16, %if.then862 ]
  %best_x.172345 = phi i32 [ %best_x.162396, %land.lhs.true847 ], [ %best_x.162396, %if.then852 ], [ %best_x.11.best_x.16, %if.then862 ]
  %sub8892348 = sub nsw i32 %best_y.12, %sub841, !dbg !1241
  %sub895 = sub nsw i32 %sub8892348, %add25, !dbg !1242
  %ispos2286 = icmp sgt i32 %sub895, -1, !dbg !1242
  %neg2287 = sub i32 0, %sub895, !dbg !1242
  %190 = select i1 %ispos2286, i32 %sub895, i32 %neg2287, !dbg !1242
  %cmp897 = icmp sgt i32 %190, %search_range, !dbg !1242
  br i1 %cmp897, label %for.inc936, label %if.then899, !dbg !1242

if.then899:                                       ; preds = %land.lhs.true894
  %add904 = add nsw i32 %sub895, %search_range, !dbg !1214
  %idxprom905 = sext i32 %add904 to i64, !dbg !1214
  %arrayidx906 = getelementptr inbounds i32** %189, i64 %idxprom905, !dbg !1214
  %191 = load i32** %arrayidx906, align 8, !dbg !1214, !tbaa !895
  %arrayidx907 = getelementptr inbounds i32* %191, i64 %idxprom902, !dbg !1214
  %192 = load i32* %arrayidx907, align 4, !dbg !1214, !tbaa !896
  %tobool908 = icmp eq i32 %192, 0, !dbg !1214
  br i1 %tobool908, label %if.then909, label %for.inc936, !dbg !1214

if.then909:                                       ; preds = %if.then899
  %193 = load i32** @mvbits, align 8, !dbg !1216, !tbaa !895
  %arrayidx913 = getelementptr inbounds i32* %193, i64 %idxprom912, !dbg !1216
  %194 = load i32* %arrayidx913, align 4, !dbg !1216, !tbaa !896
  %shl914 = shl i32 %sub8892348, 2, !dbg !1216
  %sub915 = sub nsw i32 %shl914, %add21, !dbg !1216
  %idxprom916 = sext i32 %sub915 to i64, !dbg !1216
  %arrayidx917 = getelementptr inbounds i32* %193, i64 %idxprom916, !dbg !1216
  %195 = load i32* %arrayidx917, align 4, !dbg !1216, !tbaa !896
  %add918 = add nsw i32 %195, %194, !dbg !1216
  %mul919 = mul nsw i32 %add918, %conv, !dbg !1216
  %shr920 = ashr i32 %mul919, 16, !dbg !1216
  tail call void @llvm.dbg.value(metadata !{i32 %shr920}, i64 0, metadata !132), !dbg !1216
  %call921 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr920, i32 %min_mcost.addr.172347, i32 %best_x.12, i32 %sub8892348) #5, !dbg !1216
  tail call void @llvm.dbg.value(metadata !{i32 %call921}, i64 0, metadata !132), !dbg !1216
  %196 = load i32*** @McostState, align 8, !dbg !1216, !tbaa !895
  %arrayidx928 = getelementptr inbounds i32** %196, i64 %idxprom905, !dbg !1216
  %197 = load i32** %arrayidx928, align 8, !dbg !1216, !tbaa !895
  %arrayidx929 = getelementptr inbounds i32* %197, i64 %idxprom902, !dbg !1216
  store i32 %call921, i32* %arrayidx929, align 4, !dbg !1216, !tbaa !896
  %cmp930 = icmp slt i32 %call921, %min_mcost.addr.172347, !dbg !1216
  tail call void @llvm.dbg.value(metadata !{i32 %best_x.12}, i64 0, metadata !145), !dbg !1243
  tail call void @llvm.dbg.value(metadata !{i32 %sub8892348}, i64 0, metadata !146), !dbg !1243
  tail call void @llvm.dbg.value(metadata !{i32 %call921}, i64 0, metadata !127), !dbg !1243
  %best_x.11.best_x.17 = select i1 %cmp930, i32 %best_x.12, i32 %best_x.172345, !dbg !1216
  %sub889.best_y.17 = select i1 %cmp930, i32 %sub8892348, i32 %best_y.172346, !dbg !1216
  %call921.min_mcost.addr.17 = select i1 %cmp930, i32 %call921, i32 %min_mcost.addr.172347, !dbg !1216
  br label %for.inc936, !dbg !1216

for.inc936:                                       ; preds = %for.body839, %if.then909, %if.then899, %land.lhs.true894
  %198 = phi i32** [ %189, %if.then899 ], [ %189, %land.lhs.true894 ], [ %196, %if.then909 ], [ %179, %for.body839 ]
  %best_x.18 = phi i32 [ %best_x.172345, %if.then899 ], [ %best_x.172345, %land.lhs.true894 ], [ %best_x.11.best_x.17, %if.then909 ], [ %best_x.162396, %for.body839 ]
  %best_y.18 = phi i32 [ %best_y.172346, %if.then899 ], [ %best_y.172346, %land.lhs.true894 ], [ %sub889.best_y.17, %if.then909 ], [ %best_y.162397, %for.body839 ]
  %min_mcost.addr.18 = phi i32 [ %min_mcost.addr.172347, %if.then899 ], [ %min_mcost.addr.172347, %land.lhs.true894 ], [ %call921.min_mcost.addr.17, %if.then909 ], [ %min_mcost.addr.162399, %for.body839 ]
  %indvars.iv.next2450 = add i64 %indvars.iv2449, 1, !dbg !1204
  %cmp837 = icmp slt i32 %180, %div836, !dbg !1204
  br i1 %cmp837, label %for.body839, label %for.end938, !dbg !1204

for.end938:                                       ; preds = %for.inc936, %for.cond835.preheader.thread, %for.cond835.preheader
  %cmp83723952469 = phi i1 [ true, %for.cond835.preheader ], [ true, %for.cond835.preheader.thread ], [ %cmp8372395, %for.inc936 ]
  %div8362468 = phi i32 [ %div836, %for.cond835.preheader ], [ %div8362466, %for.cond835.preheader.thread ], [ %div836, %for.inc936 ]
  %199 = phi i32** [ %178, %for.cond835.preheader ], [ %153, %for.cond835.preheader.thread ], [ %198, %for.inc936 ]
  %min_mcost.addr.16.lcssa = phi i32 [ %min_mcost.addr.15, %for.cond835.preheader ], [ %min_mcost.addr.12, %for.cond835.preheader.thread ], [ %min_mcost.addr.18, %for.inc936 ]
  %best_y.16.lcssa = phi i32 [ %best_y.15, %for.cond835.preheader ], [ %best_y.12, %for.cond835.preheader.thread ], [ %best_y.18, %for.inc936 ]
  %best_x.16.lcssa = phi i32 [ %best_x.15, %for.cond835.preheader ], [ %best_x.12, %for.cond835.preheader.thread ], [ %best_x.18, %for.inc936 ]
  br i1 %cmp65, label %if.then942, label %if.else960, !dbg !1245

if.then942:                                       ; preds = %for.end938
  %200 = load i32* @pred_SAD_ref, align 4, !dbg !1246, !tbaa !896
  %sub943 = sub nsw i32 %min_mcost.addr.16.lcssa, %200, !dbg !1246
  %conv944 = sitofp i32 %sub943 to float, !dbg !1246
  %conv945 = sitofp i32 %200 to float, !dbg !1246
  %mul946 = fmul float %betaThird.0, %conv945, !dbg !1246
  %cmp947 = fcmp olt float %conv944, %mul946, !dbg !1246
  br i1 %cmp947, label %for.cond1325.preheader, label %if.else950, !dbg !1246

if.else950:                                       ; preds = %if.then942
  %mul954 = fmul float %betaSec.0, %conv945, !dbg !1246
  %cmp955 = fcmp olt float %conv944, %mul954, !dbg !1246
  br i1 %cmp955, label %for.cond1256.preheader, label %for.body1004, !dbg !1246

if.else960:                                       ; preds = %for.end938
  br i1 %cmp322, label %if.then963, label %if.else981, !dbg !1245

if.then963:                                       ; preds = %if.else960
  %201 = load i32* @pred_SAD_uplayer, align 4, !dbg !1248, !tbaa !896
  %sub964 = sub nsw i32 %min_mcost.addr.16.lcssa, %201, !dbg !1248
  %conv965 = sitofp i32 %sub964 to float, !dbg !1248
  %conv966 = sitofp i32 %201 to float, !dbg !1248
  %mul967 = fmul float %betaThird.0, %conv966, !dbg !1248
  %cmp968 = fcmp olt float %conv965, %mul967, !dbg !1248
  br i1 %cmp968, label %for.cond1325.preheader, label %if.else971, !dbg !1248

if.else971:                                       ; preds = %if.then963
  %mul975 = fmul float %betaSec.0, %conv966, !dbg !1248
  %cmp976 = fcmp olt float %conv965, %mul975, !dbg !1248
  br i1 %cmp976, label %for.cond1256.preheader, label %for.body1004, !dbg !1248

if.else981:                                       ; preds = %if.else960
  %202 = load i32* @pred_SAD_space, align 4, !dbg !1250, !tbaa !896
  %sub982 = sub nsw i32 %min_mcost.addr.16.lcssa, %202, !dbg !1250
  %conv983 = sitofp i32 %sub982 to float, !dbg !1250
  %conv984 = sitofp i32 %202 to float, !dbg !1250
  %mul985 = fmul float %betaThird.0, %conv984, !dbg !1250
  %cmp986 = fcmp olt float %conv983, %mul985, !dbg !1250
  br i1 %cmp986, label %for.cond1325.preheader, label %if.else989, !dbg !1250

if.else989:                                       ; preds = %if.else981
  %mul993 = fmul float %betaSec.0, %conv984, !dbg !1250
  %cmp994 = fcmp olt float %conv983, %mul993, !dbg !1250
  br i1 %cmp994, label %for.cond1256.preheader, label %for.body1004, !dbg !1250

for.body1004:                                     ; preds = %for.inc1057, %if.else950, %if.else989, %if.else971
  %203 = phi i32** [ %199, %if.else971 ], [ %199, %if.else989 ], [ %199, %if.else950 ], [ %217, %for.inc1057 ]
  %indvars.iv2445 = phi i64 [ 1, %if.else971 ], [ 1, %if.else989 ], [ 1, %if.else950 ], [ %indvars.iv.next2446, %for.inc1057 ]
  %min_mcost.addr.192394 = phi i32 [ %min_mcost.addr.16.lcssa, %if.else971 ], [ %min_mcost.addr.16.lcssa, %if.else989 ], [ %min_mcost.addr.16.lcssa, %if.else950 ], [ %min_mcost.addr.20, %for.inc1057 ]
  %best_y.192392 = phi i32 [ %best_y.16.lcssa, %if.else971 ], [ %best_y.16.lcssa, %if.else989 ], [ %best_y.16.lcssa, %if.else950 ], [ %best_y.20, %for.inc1057 ]
  %best_x.192391 = phi i32 [ %best_x.16.lcssa, %if.else971 ], [ %best_x.16.lcssa, %if.else989 ], [ %best_x.16.lcssa, %if.else950 ], [ %best_x.20, %for.inc1057 ]
  %204 = load i32** @spiral_search_x, align 8, !dbg !1252, !tbaa !895
  %arrayidx1006 = getelementptr inbounds i32* %204, i64 %indvars.iv2445, !dbg !1252
  %205 = load i32* %arrayidx1006, align 4, !dbg !1252, !tbaa !896
  %add1007 = add nsw i32 %205, %best_x.16.lcssa, !dbg !1252
  tail call void @llvm.dbg.value(metadata !{i32 %add1007}, i64 0, metadata !130), !dbg !1252
  %206 = load i32** @spiral_search_y, align 8, !dbg !1255, !tbaa !895
  %arrayidx1009 = getelementptr inbounds i32* %206, i64 %indvars.iv2445, !dbg !1255
  %207 = load i32* %arrayidx1009, align 4, !dbg !1255, !tbaa !896
  %add1010 = add nsw i32 %207, %best_y.16.lcssa, !dbg !1255
  tail call void @llvm.dbg.value(metadata !{i32 %add1010}, i64 0, metadata !131), !dbg !1255
  %sub1011 = sub nsw i32 %add1007, %add23, !dbg !1256
  %ispos2280 = icmp sgt i32 %sub1011, -1, !dbg !1256
  %neg2281 = sub i32 0, %sub1011, !dbg !1256
  %208 = select i1 %ispos2280, i32 %sub1011, i32 %neg2281, !dbg !1256
  %cmp1013 = icmp sgt i32 %208, %search_range, !dbg !1256
  br i1 %cmp1013, label %for.inc1057, label %land.lhs.true1015, !dbg !1256

land.lhs.true1015:                                ; preds = %for.body1004
  %sub1016 = sub nsw i32 %add1010, %add25, !dbg !1256
  %ispos2282 = icmp sgt i32 %sub1016, -1, !dbg !1256
  %neg2283 = sub i32 0, %sub1016, !dbg !1256
  %209 = select i1 %ispos2282, i32 %sub1016, i32 %neg2283, !dbg !1256
  %cmp1018 = icmp sgt i32 %209, %search_range, !dbg !1256
  br i1 %cmp1018, label %for.inc1057, label %if.then1020, !dbg !1256

if.then1020:                                      ; preds = %land.lhs.true1015
  %add1022 = add nsw i32 %sub1011, %search_range, !dbg !1257
  %idxprom1023 = sext i32 %add1022 to i64, !dbg !1257
  %add1025 = add nsw i32 %sub1016, %search_range, !dbg !1257
  %idxprom1026 = sext i32 %add1025 to i64, !dbg !1257
  %arrayidx1027 = getelementptr inbounds i32** %203, i64 %idxprom1026, !dbg !1257
  %210 = load i32** %arrayidx1027, align 8, !dbg !1257, !tbaa !895
  %arrayidx1028 = getelementptr inbounds i32* %210, i64 %idxprom1023, !dbg !1257
  %211 = load i32* %arrayidx1028, align 4, !dbg !1257, !tbaa !896
  %tobool1029 = icmp eq i32 %211, 0, !dbg !1257
  br i1 %tobool1029, label %if.then1030, label %for.inc1057, !dbg !1257

if.then1030:                                      ; preds = %if.then1020
  %shl1031 = shl i32 %add1007, 2, !dbg !1259
  %sub1032 = sub nsw i32 %shl1031, %add18, !dbg !1259
  %idxprom1033 = sext i32 %sub1032 to i64, !dbg !1259
  %212 = load i32** @mvbits, align 8, !dbg !1259, !tbaa !895
  %arrayidx1034 = getelementptr inbounds i32* %212, i64 %idxprom1033, !dbg !1259
  %213 = load i32* %arrayidx1034, align 4, !dbg !1259, !tbaa !896
  %shl1035 = shl i32 %add1010, 2, !dbg !1259
  %sub1036 = sub nsw i32 %shl1035, %add21, !dbg !1259
  %idxprom1037 = sext i32 %sub1036 to i64, !dbg !1259
  %arrayidx1038 = getelementptr inbounds i32* %212, i64 %idxprom1037, !dbg !1259
  %214 = load i32* %arrayidx1038, align 4, !dbg !1259, !tbaa !896
  %add1039 = add nsw i32 %214, %213, !dbg !1259
  %mul1040 = mul nsw i32 %add1039, %conv, !dbg !1259
  %shr1041 = ashr i32 %mul1040, 16, !dbg !1259
  tail call void @llvm.dbg.value(metadata !{i32 %shr1041}, i64 0, metadata !132), !dbg !1259
  %call1042 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr1041, i32 %min_mcost.addr.192394, i32 %add1007, i32 %add1010) #5, !dbg !1259
  tail call void @llvm.dbg.value(metadata !{i32 %call1042}, i64 0, metadata !132), !dbg !1259
  %215 = load i32*** @McostState, align 8, !dbg !1259, !tbaa !895
  %arrayidx1049 = getelementptr inbounds i32** %215, i64 %idxprom1026, !dbg !1259
  %216 = load i32** %arrayidx1049, align 8, !dbg !1259, !tbaa !895
  %arrayidx1050 = getelementptr inbounds i32* %216, i64 %idxprom1023, !dbg !1259
  store i32 %call1042, i32* %arrayidx1050, align 4, !dbg !1259, !tbaa !896
  %cmp1051 = icmp slt i32 %call1042, %min_mcost.addr.192394, !dbg !1259
  tail call void @llvm.dbg.value(metadata !{i32 %add1007}, i64 0, metadata !145), !dbg !1261
  tail call void @llvm.dbg.value(metadata !{i32 %add1010}, i64 0, metadata !146), !dbg !1261
  tail call void @llvm.dbg.value(metadata !{i32 %call1042}, i64 0, metadata !127), !dbg !1261
  %add1007.best_x.19 = select i1 %cmp1051, i32 %add1007, i32 %best_x.192391, !dbg !1259
  %add1010.best_y.19 = select i1 %cmp1051, i32 %add1010, i32 %best_y.192392, !dbg !1259
  %call1042.min_mcost.addr.19 = select i1 %cmp1051, i32 %call1042, i32 %min_mcost.addr.192394, !dbg !1259
  br label %for.inc1057, !dbg !1259

for.inc1057:                                      ; preds = %if.then1030, %if.then1020, %land.lhs.true1015, %for.body1004
  %217 = phi i32** [ %203, %if.then1020 ], [ %203, %land.lhs.true1015 ], [ %203, %for.body1004 ], [ %215, %if.then1030 ]
  %best_x.20 = phi i32 [ %best_x.192391, %if.then1020 ], [ %best_x.192391, %land.lhs.true1015 ], [ %best_x.192391, %for.body1004 ], [ %add1007.best_x.19, %if.then1030 ]
  %best_y.20 = phi i32 [ %best_y.192392, %if.then1020 ], [ %best_y.192392, %land.lhs.true1015 ], [ %best_y.192392, %for.body1004 ], [ %add1010.best_y.19, %if.then1030 ]
  %min_mcost.addr.20 = phi i32 [ %min_mcost.addr.192394, %if.then1020 ], [ %min_mcost.addr.192394, %land.lhs.true1015 ], [ %min_mcost.addr.192394, %for.body1004 ], [ %call1042.min_mcost.addr.19, %if.then1030 ]
  %indvars.iv.next2446 = add i64 %indvars.iv2445, 1, !dbg !1263
  %lftr.wideiv2447 = trunc i64 %indvars.iv.next2446 to i32, !dbg !1263
  %exitcond2448 = icmp eq i32 %lftr.wideiv2447, 25, !dbg !1263
  br i1 %exitcond2448, label %for.end1059, label %for.body1004, !dbg !1263

for.end1059:                                      ; preds = %for.inc1057
  br i1 %cmp65, label %if.then1063, label %if.else1081, !dbg !1264

if.then1063:                                      ; preds = %for.end1059
  %218 = load i32* @pred_SAD_ref, align 4, !dbg !1265, !tbaa !896
  %sub1064 = sub nsw i32 %min_mcost.addr.20, %218, !dbg !1265
  %conv1065 = sitofp i32 %sub1064 to float, !dbg !1265
  %conv1066 = sitofp i32 %218 to float, !dbg !1265
  %mul1067 = fmul float %betaThird.0, %conv1066, !dbg !1265
  %cmp1068 = fcmp olt float %conv1065, %mul1067, !dbg !1265
  br i1 %cmp1068, label %for.cond1325.preheader, label %if.else1071, !dbg !1265

if.else1071:                                      ; preds = %if.then1063
  %mul1075 = fmul float %betaSec.0, %conv1066, !dbg !1265
  %cmp1076 = fcmp olt float %conv1065, %mul1075, !dbg !1265
  br i1 %cmp1076, label %for.cond1256.preheader, label %for.cond1122.preheader, !dbg !1265

if.else1081:                                      ; preds = %for.end1059
  br i1 %cmp322, label %if.then1084, label %if.else1102, !dbg !1264

if.then1084:                                      ; preds = %if.else1081
  %219 = load i32* @pred_SAD_uplayer, align 4, !dbg !1267, !tbaa !896
  %sub1085 = sub nsw i32 %min_mcost.addr.20, %219, !dbg !1267
  %conv1086 = sitofp i32 %sub1085 to float, !dbg !1267
  %conv1087 = sitofp i32 %219 to float, !dbg !1267
  %mul1088 = fmul float %betaThird.0, %conv1087, !dbg !1267
  %cmp1089 = fcmp olt float %conv1086, %mul1088, !dbg !1267
  br i1 %cmp1089, label %for.cond1325.preheader, label %if.else1092, !dbg !1267

if.else1092:                                      ; preds = %if.then1084
  %mul1096 = fmul float %betaSec.0, %conv1087, !dbg !1267
  %cmp1097 = fcmp olt float %conv1086, %mul1096, !dbg !1267
  br i1 %cmp1097, label %for.cond1256.preheader, label %for.cond1122.preheader, !dbg !1267

if.else1102:                                      ; preds = %if.else1081
  %220 = load i32* @pred_SAD_space, align 4, !dbg !1269, !tbaa !896
  %sub1103 = sub nsw i32 %min_mcost.addr.20, %220, !dbg !1269
  %conv1104 = sitofp i32 %sub1103 to float, !dbg !1269
  %conv1105 = sitofp i32 %220 to float, !dbg !1269
  %mul1106 = fmul float %betaThird.0, %conv1105, !dbg !1269
  %cmp1107 = fcmp olt float %conv1104, %mul1106, !dbg !1269
  br i1 %cmp1107, label %for.cond1325.preheader, label %if.else1110, !dbg !1269

if.else1110:                                      ; preds = %if.else1102
  %mul1114 = fmul float %betaSec.0, %conv1105, !dbg !1269
  %cmp1115 = fcmp olt float %conv1104, %mul1114, !dbg !1269
  br i1 %cmp1115, label %for.cond1256.preheader, label %for.cond1122.preheader, !dbg !1269

for.cond1122.preheader:                           ; preds = %if.else1092, %if.else1110, %if.else1071
  br i1 %cmp83723952469, label %for.cond1256.preheader, label %for.cond1127.preheader, !dbg !1271

for.cond1127.preheader:                           ; preds = %for.cond1122.preheader, %for.inc1253
  %221 = phi i32** [ %234, %for.inc1253 ], [ %217, %for.cond1122.preheader ]
  %min_mcost.addr.212387 = phi i32 [ %min_mcost.addr.23, %for.inc1253 ], [ %min_mcost.addr.20, %for.cond1122.preheader ]
  %i.22386 = phi i32 [ %inc1254, %for.inc1253 ], [ 1, %for.cond1122.preheader ]
  %best_y.212385 = phi i32 [ %best_y.23, %for.inc1253 ], [ %best_y.20, %for.cond1122.preheader ]
  %best_x.212384 = phi i32 [ %best_x.23, %for.inc1253 ], [ %best_x.20, %for.cond1122.preheader ]
  br label %for.body1130, !dbg !1273

for.body1130:                                     ; preds = %for.inc1185, %for.cond1127.preheader
  %222 = phi i32** [ %221, %for.cond1127.preheader ], [ %234, %for.inc1185 ]
  %indvars.iv2435 = phi i64 [ 0, %for.cond1127.preheader ], [ %indvars.iv.next2436, %for.inc1185 ]
  %min_mcost.addr.222381 = phi i32 [ %min_mcost.addr.212387, %for.cond1127.preheader ], [ %min_mcost.addr.23, %for.inc1185 ]
  %iAbort.02380 = phi i32 [ 0, %for.cond1127.preheader ], [ %iAbort.1, %for.inc1185 ]
  %best_y.222378 = phi i32 [ %best_y.212385, %for.cond1127.preheader ], [ %best_y.23, %for.inc1185 ]
  %best_x.222377 = phi i32 [ %best_x.212384, %for.cond1127.preheader ], [ %best_x.23, %for.inc1185 ]
  %arrayidx1132 = getelementptr inbounds [16 x i32]* @FastIntegerPelBlockMotionSearch.Big_Hexagon_x, i64 0, i64 %indvars.iv2435, !dbg !1276
  %223 = load i32* %arrayidx1132, align 4, !dbg !1276, !tbaa !896
  %mul1133 = mul nsw i32 %223, %i.22386, !dbg !1276
  %add1134 = add nsw i32 %mul1133, %best_x.16.lcssa, !dbg !1276
  tail call void @llvm.dbg.value(metadata !{i32 %add1134}, i64 0, metadata !130), !dbg !1276
  %arrayidx1136 = getelementptr inbounds [16 x i32]* @FastIntegerPelBlockMotionSearch.Big_Hexagon_y, i64 0, i64 %indvars.iv2435, !dbg !1278
  %224 = load i32* %arrayidx1136, align 4, !dbg !1278, !tbaa !896
  %mul1137 = mul nsw i32 %224, %i.22386, !dbg !1278
  %add1138 = add nsw i32 %mul1137, %best_y.16.lcssa, !dbg !1278
  tail call void @llvm.dbg.value(metadata !{i32 %add1138}, i64 0, metadata !131), !dbg !1278
  %sub1139 = sub nsw i32 %add1134, %add23, !dbg !1279
  %ispos2276 = icmp sgt i32 %sub1139, -1, !dbg !1279
  %neg2277 = sub i32 0, %sub1139, !dbg !1279
  %225 = select i1 %ispos2276, i32 %sub1139, i32 %neg2277, !dbg !1279
  %cmp1141 = icmp sgt i32 %225, %search_range, !dbg !1279
  br i1 %cmp1141, label %for.inc1185, label %land.lhs.true1143, !dbg !1279

land.lhs.true1143:                                ; preds = %for.body1130
  %sub1144 = sub nsw i32 %add1138, %add25, !dbg !1279
  %ispos2278 = icmp sgt i32 %sub1144, -1, !dbg !1279
  %neg2279 = sub i32 0, %sub1144, !dbg !1279
  %226 = select i1 %ispos2278, i32 %sub1144, i32 %neg2279, !dbg !1279
  %cmp1146 = icmp sgt i32 %226, %search_range, !dbg !1279
  br i1 %cmp1146, label %for.inc1185, label %if.then1148, !dbg !1279

if.then1148:                                      ; preds = %land.lhs.true1143
  %add1150 = add nsw i32 %sub1139, %search_range, !dbg !1280
  %idxprom1151 = sext i32 %add1150 to i64, !dbg !1280
  %add1153 = add nsw i32 %sub1144, %search_range, !dbg !1280
  %idxprom1154 = sext i32 %add1153 to i64, !dbg !1280
  %arrayidx1155 = getelementptr inbounds i32** %222, i64 %idxprom1154, !dbg !1280
  %227 = load i32** %arrayidx1155, align 8, !dbg !1280, !tbaa !895
  %arrayidx1156 = getelementptr inbounds i32* %227, i64 %idxprom1151, !dbg !1280
  %228 = load i32* %arrayidx1156, align 4, !dbg !1280, !tbaa !896
  %tobool1157 = icmp eq i32 %228, 0, !dbg !1280
  br i1 %tobool1157, label %if.then1158, label %for.inc1185, !dbg !1280

if.then1158:                                      ; preds = %if.then1148
  %shl1159 = shl i32 %add1134, 2, !dbg !1282
  %sub1160 = sub nsw i32 %shl1159, %add18, !dbg !1282
  %idxprom1161 = sext i32 %sub1160 to i64, !dbg !1282
  %229 = load i32** @mvbits, align 8, !dbg !1282, !tbaa !895
  %arrayidx1162 = getelementptr inbounds i32* %229, i64 %idxprom1161, !dbg !1282
  %230 = load i32* %arrayidx1162, align 4, !dbg !1282, !tbaa !896
  %shl1163 = shl i32 %add1138, 2, !dbg !1282
  %sub1164 = sub nsw i32 %shl1163, %add21, !dbg !1282
  %idxprom1165 = sext i32 %sub1164 to i64, !dbg !1282
  %arrayidx1166 = getelementptr inbounds i32* %229, i64 %idxprom1165, !dbg !1282
  %231 = load i32* %arrayidx1166, align 4, !dbg !1282, !tbaa !896
  %add1167 = add nsw i32 %231, %230, !dbg !1282
  %mul1168 = mul nsw i32 %add1167, %conv, !dbg !1282
  %shr1169 = ashr i32 %mul1168, 16, !dbg !1282
  tail call void @llvm.dbg.value(metadata !{i32 %shr1169}, i64 0, metadata !132), !dbg !1282
  %call1170 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr1169, i32 %min_mcost.addr.222381, i32 %add1134, i32 %add1138) #5, !dbg !1282
  tail call void @llvm.dbg.value(metadata !{i32 %call1170}, i64 0, metadata !132), !dbg !1282
  %232 = load i32*** @McostState, align 8, !dbg !1282, !tbaa !895
  %arrayidx1177 = getelementptr inbounds i32** %232, i64 %idxprom1154, !dbg !1282
  %233 = load i32** %arrayidx1177, align 8, !dbg !1282, !tbaa !895
  %arrayidx1178 = getelementptr inbounds i32* %233, i64 %idxprom1151, !dbg !1282
  store i32 %call1170, i32* %arrayidx1178, align 4, !dbg !1282, !tbaa !896
  %cmp1179 = icmp slt i32 %call1170, %min_mcost.addr.222381, !dbg !1282
  tail call void @llvm.dbg.value(metadata !{i32 %add1134}, i64 0, metadata !145), !dbg !1284
  tail call void @llvm.dbg.value(metadata !{i32 %add1138}, i64 0, metadata !146), !dbg !1284
  tail call void @llvm.dbg.value(metadata !{i32 %call1170}, i64 0, metadata !127), !dbg !1284
  tail call void @llvm.dbg.value(metadata !1286, i64 0, metadata !153), !dbg !1284
  %add1134.best_x.22 = select i1 %cmp1179, i32 %add1134, i32 %best_x.222377, !dbg !1282
  %add1138.best_y.22 = select i1 %cmp1179, i32 %add1138, i32 %best_y.222378, !dbg !1282
  %.iAbort.0 = select i1 %cmp1179, i32 1, i32 %iAbort.02380, !dbg !1282
  %call1170.min_mcost.addr.22 = select i1 %cmp1179, i32 %call1170, i32 %min_mcost.addr.222381, !dbg !1282
  br label %for.inc1185, !dbg !1282

for.inc1185:                                      ; preds = %if.then1158, %if.then1148, %land.lhs.true1143, %for.body1130
  %234 = phi i32** [ %222, %if.then1148 ], [ %222, %land.lhs.true1143 ], [ %222, %for.body1130 ], [ %232, %if.then1158 ]
  %best_x.23 = phi i32 [ %best_x.222377, %if.then1148 ], [ %best_x.222377, %land.lhs.true1143 ], [ %best_x.222377, %for.body1130 ], [ %add1134.best_x.22, %if.then1158 ]
  %best_y.23 = phi i32 [ %best_y.222378, %if.then1148 ], [ %best_y.222378, %land.lhs.true1143 ], [ %best_y.222378, %for.body1130 ], [ %add1138.best_y.22, %if.then1158 ]
  %iAbort.1 = phi i32 [ %iAbort.02380, %if.then1148 ], [ %iAbort.02380, %land.lhs.true1143 ], [ %iAbort.02380, %for.body1130 ], [ %.iAbort.0, %if.then1158 ]
  %min_mcost.addr.23 = phi i32 [ %min_mcost.addr.222381, %if.then1148 ], [ %min_mcost.addr.222381, %land.lhs.true1143 ], [ %min_mcost.addr.222381, %for.body1130 ], [ %call1170.min_mcost.addr.22, %if.then1158 ]
  %indvars.iv.next2436 = add i64 %indvars.iv2435, 1, !dbg !1273
  %lftr.wideiv2437 = trunc i64 %indvars.iv.next2436 to i32, !dbg !1273
  %exitcond2438 = icmp eq i32 %lftr.wideiv2437, 16, !dbg !1273
  br i1 %exitcond2438, label %for.end1187, label %for.body1130, !dbg !1273

for.end1187:                                      ; preds = %for.inc1185
  %tobool1188 = icmp eq i32 %iAbort.1, 0, !dbg !1287
  br i1 %tobool1188, label %for.inc1253, label %if.then1189, !dbg !1287

if.then1189:                                      ; preds = %for.end1187
  br i1 %cmp65, label %if.then1193, label %if.else1211, !dbg !1288

if.then1193:                                      ; preds = %if.then1189
  %235 = load i32* @pred_SAD_ref, align 4, !dbg !1290, !tbaa !896
  %sub1194 = sub nsw i32 %min_mcost.addr.23, %235, !dbg !1290
  %conv1195 = sitofp i32 %sub1194 to float, !dbg !1290
  %conv1196 = sitofp i32 %235 to float, !dbg !1290
  %mul1197 = fmul float %betaThird.0, %conv1196, !dbg !1290
  %cmp1198 = fcmp olt float %conv1195, %mul1197, !dbg !1290
  br i1 %cmp1198, label %for.cond1325.preheader, label %if.else1201, !dbg !1290

if.else1201:                                      ; preds = %if.then1193
  %mul1205 = fmul float %betaSec.0, %conv1196, !dbg !1290
  %cmp1206 = fcmp olt float %conv1195, %mul1205, !dbg !1290
  br i1 %cmp1206, label %for.cond1256.preheader, label %for.inc1253, !dbg !1290

if.else1211:                                      ; preds = %if.then1189
  br i1 %cmp322, label %if.then1214, label %if.else1232, !dbg !1288

if.then1214:                                      ; preds = %if.else1211
  %236 = load i32* @pred_SAD_uplayer, align 4, !dbg !1292, !tbaa !896
  %sub1215 = sub nsw i32 %min_mcost.addr.23, %236, !dbg !1292
  %conv1216 = sitofp i32 %sub1215 to float, !dbg !1292
  %conv1217 = sitofp i32 %236 to float, !dbg !1292
  %mul1218 = fmul float %betaThird.0, %conv1217, !dbg !1292
  %cmp1219 = fcmp olt float %conv1216, %mul1218, !dbg !1292
  br i1 %cmp1219, label %for.cond1325.preheader, label %if.else1222, !dbg !1292

if.else1222:                                      ; preds = %if.then1214
  %mul1226 = fmul float %betaSec.0, %conv1217, !dbg !1292
  %cmp1227 = fcmp olt float %conv1216, %mul1226, !dbg !1292
  br i1 %cmp1227, label %for.cond1256.preheader, label %for.inc1253, !dbg !1292

if.else1232:                                      ; preds = %if.else1211
  %237 = load i32* @pred_SAD_space, align 4, !dbg !1294, !tbaa !896
  %sub1233 = sub nsw i32 %min_mcost.addr.23, %237, !dbg !1294
  %conv1234 = sitofp i32 %sub1233 to float, !dbg !1294
  %conv1235 = sitofp i32 %237 to float, !dbg !1294
  %mul1236 = fmul float %betaThird.0, %conv1235, !dbg !1294
  %cmp1237 = fcmp olt float %conv1234, %mul1236, !dbg !1294
  br i1 %cmp1237, label %for.cond1325.preheader, label %if.else1240, !dbg !1294

if.else1240:                                      ; preds = %if.else1232
  %mul1244 = fmul float %betaSec.0, %conv1235, !dbg !1294
  %cmp1245 = fcmp olt float %conv1234, %mul1244, !dbg !1294
  br i1 %cmp1245, label %for.cond1256.preheader, label %for.inc1253, !dbg !1294

for.inc1253:                                      ; preds = %for.end1187, %if.else1222, %if.else1240, %if.else1201
  %inc1254 = add nsw i32 %i.22386, 1, !dbg !1271
  tail call void @llvm.dbg.value(metadata !{i32 %inc1254}, i64 0, metadata !150), !dbg !1271
  %cmp1124 = icmp slt i32 %i.22386, %div8362468, !dbg !1271
  br i1 %cmp1124, label %for.cond1127.preheader, label %for.cond1256.preheader, !dbg !1271

for.cond1260.preheader:                           ; preds = %for.end1318, %for.cond1256.preheader
  %238 = phi i32** [ %95, %for.cond1256.preheader ], [ %251, %for.end1318 ]
  %min_mcost.addr.252373 = phi i32 [ %min_mcost.addr.25.ph, %for.cond1256.preheader ], [ %min_mcost.addr.27, %for.end1318 ]
  %i.32372 = phi i32 [ 0, %for.cond1256.preheader ], [ %inc1323, %for.end1318 ]
  %best_y.252371 = phi i32 [ %best_y.25.ph, %for.cond1256.preheader ], [ %best_y.27, %for.end1318 ]
  %best_x.252370 = phi i32 [ %best_x.25.ph, %for.cond1256.preheader ], [ %best_x.27, %for.end1318 ]
  br label %for.body1263, !dbg !1296

for.body1263:                                     ; preds = %for.inc1316, %for.cond1260.preheader
  %239 = phi i32** [ %238, %for.cond1260.preheader ], [ %251, %for.inc1316 ]
  %indvars.iv2428 = phi i64 [ 0, %for.cond1260.preheader ], [ %indvars.iv.next2429, %for.inc1316 ]
  %min_mcost.addr.262368 = phi i32 [ %min_mcost.addr.252373, %for.cond1260.preheader ], [ %min_mcost.addr.27, %for.inc1316 ]
  %iAbort.22367 = phi i32 [ 1, %for.cond1260.preheader ], [ %iAbort.3, %for.inc1316 ]
  %best_y.262365 = phi i32 [ %best_y.252371, %for.cond1260.preheader ], [ %best_y.27, %for.inc1316 ]
  %best_x.262364 = phi i32 [ %best_x.252370, %for.cond1260.preheader ], [ %best_x.27, %for.inc1316 ]
  %arrayidx1265 = getelementptr inbounds [6 x i32]* @FastIntegerPelBlockMotionSearch.Hexagon_x, i64 0, i64 %indvars.iv2428, !dbg !1299
  %240 = load i32* %arrayidx1265, align 4, !dbg !1299, !tbaa !896
  %add1266 = add nsw i32 %240, %best_x.252370, !dbg !1299
  tail call void @llvm.dbg.value(metadata !{i32 %add1266}, i64 0, metadata !130), !dbg !1299
  %arrayidx1268 = getelementptr inbounds [6 x i32]* @FastIntegerPelBlockMotionSearch.Hexagon_y, i64 0, i64 %indvars.iv2428, !dbg !1301
  %241 = load i32* %arrayidx1268, align 4, !dbg !1301, !tbaa !896
  %add1269 = add nsw i32 %241, %best_y.252371, !dbg !1301
  tail call void @llvm.dbg.value(metadata !{i32 %add1269}, i64 0, metadata !131), !dbg !1301
  %sub1270 = sub nsw i32 %add1266, %add23, !dbg !1302
  %ispos2272 = icmp sgt i32 %sub1270, -1, !dbg !1302
  %neg2273 = sub i32 0, %sub1270, !dbg !1302
  %242 = select i1 %ispos2272, i32 %sub1270, i32 %neg2273, !dbg !1302
  %cmp1272 = icmp sgt i32 %242, %search_range, !dbg !1302
  br i1 %cmp1272, label %for.inc1316, label %land.lhs.true1274, !dbg !1302

land.lhs.true1274:                                ; preds = %for.body1263
  %sub1275 = sub nsw i32 %add1269, %add25, !dbg !1302
  %ispos2274 = icmp sgt i32 %sub1275, -1, !dbg !1302
  %neg2275 = sub i32 0, %sub1275, !dbg !1302
  %243 = select i1 %ispos2274, i32 %sub1275, i32 %neg2275, !dbg !1302
  %cmp1277 = icmp sgt i32 %243, %search_range, !dbg !1302
  br i1 %cmp1277, label %for.inc1316, label %if.then1279, !dbg !1302

if.then1279:                                      ; preds = %land.lhs.true1274
  %add1281 = add nsw i32 %sub1270, %search_range, !dbg !1303
  %idxprom1282 = sext i32 %add1281 to i64, !dbg !1303
  %add1284 = add nsw i32 %sub1275, %search_range, !dbg !1303
  %idxprom1285 = sext i32 %add1284 to i64, !dbg !1303
  %arrayidx1286 = getelementptr inbounds i32** %239, i64 %idxprom1285, !dbg !1303
  %244 = load i32** %arrayidx1286, align 8, !dbg !1303, !tbaa !895
  %arrayidx1287 = getelementptr inbounds i32* %244, i64 %idxprom1282, !dbg !1303
  %245 = load i32* %arrayidx1287, align 4, !dbg !1303, !tbaa !896
  %tobool1288 = icmp eq i32 %245, 0, !dbg !1303
  br i1 %tobool1288, label %if.then1289, label %for.inc1316, !dbg !1303

if.then1289:                                      ; preds = %if.then1279
  %shl1290 = shl i32 %add1266, 2, !dbg !1305
  %sub1291 = sub nsw i32 %shl1290, %add18, !dbg !1305
  %idxprom1292 = sext i32 %sub1291 to i64, !dbg !1305
  %246 = load i32** @mvbits, align 8, !dbg !1305, !tbaa !895
  %arrayidx1293 = getelementptr inbounds i32* %246, i64 %idxprom1292, !dbg !1305
  %247 = load i32* %arrayidx1293, align 4, !dbg !1305, !tbaa !896
  %shl1294 = shl i32 %add1269, 2, !dbg !1305
  %sub1295 = sub nsw i32 %shl1294, %add21, !dbg !1305
  %idxprom1296 = sext i32 %sub1295 to i64, !dbg !1305
  %arrayidx1297 = getelementptr inbounds i32* %246, i64 %idxprom1296, !dbg !1305
  %248 = load i32* %arrayidx1297, align 4, !dbg !1305, !tbaa !896
  %add1298 = add nsw i32 %248, %247, !dbg !1305
  %mul1299 = mul nsw i32 %add1298, %conv, !dbg !1305
  %shr1300 = ashr i32 %mul1299, 16, !dbg !1305
  tail call void @llvm.dbg.value(metadata !{i32 %shr1300}, i64 0, metadata !132), !dbg !1305
  %call1301 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr1300, i32 %min_mcost.addr.262368, i32 %add1266, i32 %add1269) #5, !dbg !1305
  tail call void @llvm.dbg.value(metadata !{i32 %call1301}, i64 0, metadata !132), !dbg !1305
  %249 = load i32*** @McostState, align 8, !dbg !1305, !tbaa !895
  %arrayidx1308 = getelementptr inbounds i32** %249, i64 %idxprom1285, !dbg !1305
  %250 = load i32** %arrayidx1308, align 8, !dbg !1305, !tbaa !895
  %arrayidx1309 = getelementptr inbounds i32* %250, i64 %idxprom1282, !dbg !1305
  store i32 %call1301, i32* %arrayidx1309, align 4, !dbg !1305, !tbaa !896
  %cmp1310 = icmp slt i32 %call1301, %min_mcost.addr.262368, !dbg !1305
  tail call void @llvm.dbg.value(metadata !{i32 %add1266}, i64 0, metadata !145), !dbg !1307
  tail call void @llvm.dbg.value(metadata !{i32 %add1269}, i64 0, metadata !146), !dbg !1307
  tail call void @llvm.dbg.value(metadata !{i32 %call1301}, i64 0, metadata !127), !dbg !1307
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !153), !dbg !1307
  %add1266.best_x.26 = select i1 %cmp1310, i32 %add1266, i32 %best_x.262364, !dbg !1305
  %add1269.best_y.26 = select i1 %cmp1310, i32 %add1269, i32 %best_y.262365, !dbg !1305
  %.iAbort.2 = select i1 %cmp1310, i32 0, i32 %iAbort.22367, !dbg !1305
  %call1301.min_mcost.addr.26 = select i1 %cmp1310, i32 %call1301, i32 %min_mcost.addr.262368, !dbg !1305
  br label %for.inc1316, !dbg !1305

for.inc1316:                                      ; preds = %if.then1289, %if.then1279, %land.lhs.true1274, %for.body1263
  %251 = phi i32** [ %239, %if.then1279 ], [ %239, %land.lhs.true1274 ], [ %239, %for.body1263 ], [ %249, %if.then1289 ]
  %best_x.27 = phi i32 [ %best_x.262364, %if.then1279 ], [ %best_x.262364, %land.lhs.true1274 ], [ %best_x.262364, %for.body1263 ], [ %add1266.best_x.26, %if.then1289 ]
  %best_y.27 = phi i32 [ %best_y.262365, %if.then1279 ], [ %best_y.262365, %land.lhs.true1274 ], [ %best_y.262365, %for.body1263 ], [ %add1269.best_y.26, %if.then1289 ]
  %iAbort.3 = phi i32 [ %iAbort.22367, %if.then1279 ], [ %iAbort.22367, %land.lhs.true1274 ], [ %iAbort.22367, %for.body1263 ], [ %.iAbort.2, %if.then1289 ]
  %min_mcost.addr.27 = phi i32 [ %min_mcost.addr.262368, %if.then1279 ], [ %min_mcost.addr.262368, %land.lhs.true1274 ], [ %min_mcost.addr.262368, %for.body1263 ], [ %call1301.min_mcost.addr.26, %if.then1289 ]
  %indvars.iv.next2429 = add i64 %indvars.iv2428, 1, !dbg !1296
  %lftr.wideiv2430 = trunc i64 %indvars.iv.next2429 to i32, !dbg !1296
  %exitcond2431 = icmp eq i32 %lftr.wideiv2430, 6, !dbg !1296
  br i1 %exitcond2431, label %for.end1318, label %for.body1263, !dbg !1296

for.end1318:                                      ; preds = %for.inc1316
  %tobool1319 = icmp eq i32 %iAbort.3, 0, !dbg !1309
  tail call void @llvm.dbg.value(metadata !{i32 %best_x.27}, i64 0, metadata !149), !dbg !1310
  tail call void @llvm.dbg.value(metadata !{i32 %best_y.27}, i64 0, metadata !148), !dbg !1311
  %inc1323 = add nsw i32 %i.32372, 1, !dbg !1142
  tail call void @llvm.dbg.value(metadata !{i32 %inc1323}, i64 0, metadata !150), !dbg !1142
  %cmp1257 = icmp slt i32 %inc1323, %search_range, !dbg !1142
  %or.cond2470 = and i1 %tobool1319, %cmp1257, !dbg !1309
  br i1 %or.cond2470, label %for.cond1260.preheader, label %for.cond1325.preheader, !dbg !1309

for.cond1329.preheader:                           ; preds = %for.end1387, %for.cond1325.preheader
  %252 = phi i32** [ %94, %for.cond1325.preheader ], [ %265, %for.end1387 ]
  %min_mcost.addr.292361 = phi i32 [ %min_mcost.addr.29.ph, %for.cond1325.preheader ], [ %min_mcost.addr.31, %for.end1387 ]
  %i.42360 = phi i32 [ 0, %for.cond1325.preheader ], [ %inc1392, %for.end1387 ]
  %best_y.292359 = phi i32 [ %best_y.29.ph, %for.cond1325.preheader ], [ %best_y.31, %for.end1387 ]
  %best_x.292358 = phi i32 [ %best_x.29.ph, %for.cond1325.preheader ], [ %best_x.31, %for.end1387 ]
  br label %for.body1332, !dbg !1312

for.body1332:                                     ; preds = %for.inc1385, %for.cond1329.preheader
  %253 = phi i32** [ %252, %for.cond1329.preheader ], [ %265, %for.inc1385 ]
  %indvars.iv = phi i64 [ 0, %for.cond1329.preheader ], [ %indvars.iv.next, %for.inc1385 ]
  %min_mcost.addr.302356 = phi i32 [ %min_mcost.addr.292361, %for.cond1329.preheader ], [ %min_mcost.addr.31, %for.inc1385 ]
  %iAbort.42355 = phi i32 [ 1, %for.cond1329.preheader ], [ %iAbort.5, %for.inc1385 ]
  %best_y.302353 = phi i32 [ %best_y.292359, %for.cond1329.preheader ], [ %best_y.31, %for.inc1385 ]
  %best_x.302352 = phi i32 [ %best_x.292358, %for.cond1329.preheader ], [ %best_x.31, %for.inc1385 ]
  %arrayidx1334 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %indvars.iv, !dbg !1315
  %254 = load i32* %arrayidx1334, align 4, !dbg !1315, !tbaa !896
  %add1335 = add nsw i32 %254, %best_x.292358, !dbg !1315
  tail call void @llvm.dbg.value(metadata !{i32 %add1335}, i64 0, metadata !130), !dbg !1315
  %arrayidx1337 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %indvars.iv, !dbg !1317
  %255 = load i32* %arrayidx1337, align 4, !dbg !1317, !tbaa !896
  %add1338 = add nsw i32 %255, %best_y.292359, !dbg !1317
  tail call void @llvm.dbg.value(metadata !{i32 %add1338}, i64 0, metadata !131), !dbg !1317
  %sub1339 = sub nsw i32 %add1335, %add23, !dbg !1318
  %ispos = icmp sgt i32 %sub1339, -1, !dbg !1318
  %neg = sub i32 0, %sub1339, !dbg !1318
  %256 = select i1 %ispos, i32 %sub1339, i32 %neg, !dbg !1318
  %cmp1341 = icmp sgt i32 %256, %search_range, !dbg !1318
  br i1 %cmp1341, label %for.inc1385, label %land.lhs.true1343, !dbg !1318

land.lhs.true1343:                                ; preds = %for.body1332
  %sub1344 = sub nsw i32 %add1338, %add25, !dbg !1318
  %ispos2270 = icmp sgt i32 %sub1344, -1, !dbg !1318
  %neg2271 = sub i32 0, %sub1344, !dbg !1318
  %257 = select i1 %ispos2270, i32 %sub1344, i32 %neg2271, !dbg !1318
  %cmp1346 = icmp sgt i32 %257, %search_range, !dbg !1318
  br i1 %cmp1346, label %for.inc1385, label %if.then1348, !dbg !1318

if.then1348:                                      ; preds = %land.lhs.true1343
  %add1350 = add nsw i32 %sub1339, %search_range, !dbg !1319
  %idxprom1351 = sext i32 %add1350 to i64, !dbg !1319
  %add1353 = add nsw i32 %sub1344, %search_range, !dbg !1319
  %idxprom1354 = sext i32 %add1353 to i64, !dbg !1319
  %arrayidx1355 = getelementptr inbounds i32** %253, i64 %idxprom1354, !dbg !1319
  %258 = load i32** %arrayidx1355, align 8, !dbg !1319, !tbaa !895
  %arrayidx1356 = getelementptr inbounds i32* %258, i64 %idxprom1351, !dbg !1319
  %259 = load i32* %arrayidx1356, align 4, !dbg !1319, !tbaa !896
  %tobool1357 = icmp eq i32 %259, 0, !dbg !1319
  br i1 %tobool1357, label %if.then1358, label %for.inc1385, !dbg !1319

if.then1358:                                      ; preds = %if.then1348
  %shl1359 = shl i32 %add1335, 2, !dbg !1321
  %sub1360 = sub nsw i32 %shl1359, %add18, !dbg !1321
  %idxprom1361 = sext i32 %sub1360 to i64, !dbg !1321
  %260 = load i32** @mvbits, align 8, !dbg !1321, !tbaa !895
  %arrayidx1362 = getelementptr inbounds i32* %260, i64 %idxprom1361, !dbg !1321
  %261 = load i32* %arrayidx1362, align 4, !dbg !1321, !tbaa !896
  %shl1363 = shl i32 %add1338, 2, !dbg !1321
  %sub1364 = sub nsw i32 %shl1363, %add21, !dbg !1321
  %idxprom1365 = sext i32 %sub1364 to i64, !dbg !1321
  %arrayidx1366 = getelementptr inbounds i32* %260, i64 %idxprom1365, !dbg !1321
  %262 = load i32* %arrayidx1366, align 4, !dbg !1321, !tbaa !896
  %add1367 = add nsw i32 %262, %261, !dbg !1321
  %mul1368 = mul nsw i32 %add1367, %conv, !dbg !1321
  %shr1369 = ashr i32 %mul1368, 16, !dbg !1321
  tail call void @llvm.dbg.value(metadata !{i32 %shr1369}, i64 0, metadata !132), !dbg !1321
  %call1370 = tail call i32 @PartCalMad(i16* %9, i16** %orig_pic, i16* (i32, i16*, i32, i32, i32, i32)* %get_ref_line.0, i32 %11, i32 %12, i32 %shr, i32 %shr1369, i32 %min_mcost.addr.302356, i32 %add1335, i32 %add1338) #5, !dbg !1321
  tail call void @llvm.dbg.value(metadata !{i32 %call1370}, i64 0, metadata !132), !dbg !1321
  %263 = load i32*** @McostState, align 8, !dbg !1321, !tbaa !895
  %arrayidx1377 = getelementptr inbounds i32** %263, i64 %idxprom1354, !dbg !1321
  %264 = load i32** %arrayidx1377, align 8, !dbg !1321, !tbaa !895
  %arrayidx1378 = getelementptr inbounds i32* %264, i64 %idxprom1351, !dbg !1321
  store i32 %call1370, i32* %arrayidx1378, align 4, !dbg !1321, !tbaa !896
  %cmp1379 = icmp slt i32 %call1370, %min_mcost.addr.302356, !dbg !1321
  tail call void @llvm.dbg.value(metadata !{i32 %add1335}, i64 0, metadata !145), !dbg !1323
  tail call void @llvm.dbg.value(metadata !{i32 %add1338}, i64 0, metadata !146), !dbg !1323
  tail call void @llvm.dbg.value(metadata !{i32 %call1370}, i64 0, metadata !127), !dbg !1323
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !153), !dbg !1323
  %add1335.best_x.30 = select i1 %cmp1379, i32 %add1335, i32 %best_x.302352, !dbg !1321
  %add1338.best_y.30 = select i1 %cmp1379, i32 %add1338, i32 %best_y.302353, !dbg !1321
  %.iAbort.4 = select i1 %cmp1379, i32 0, i32 %iAbort.42355, !dbg !1321
  %call1370.min_mcost.addr.30 = select i1 %cmp1379, i32 %call1370, i32 %min_mcost.addr.302356, !dbg !1321
  br label %for.inc1385, !dbg !1321

for.inc1385:                                      ; preds = %if.then1358, %if.then1348, %land.lhs.true1343, %for.body1332
  %265 = phi i32** [ %253, %if.then1348 ], [ %253, %land.lhs.true1343 ], [ %253, %for.body1332 ], [ %263, %if.then1358 ]
  %best_x.31 = phi i32 [ %best_x.302352, %if.then1348 ], [ %best_x.302352, %land.lhs.true1343 ], [ %best_x.302352, %for.body1332 ], [ %add1335.best_x.30, %if.then1358 ]
  %best_y.31 = phi i32 [ %best_y.302353, %if.then1348 ], [ %best_y.302353, %land.lhs.true1343 ], [ %best_y.302353, %for.body1332 ], [ %add1338.best_y.30, %if.then1358 ]
  %iAbort.5 = phi i32 [ %iAbort.42355, %if.then1348 ], [ %iAbort.42355, %land.lhs.true1343 ], [ %iAbort.42355, %for.body1332 ], [ %.iAbort.4, %if.then1358 ]
  %min_mcost.addr.31 = phi i32 [ %min_mcost.addr.302356, %if.then1348 ], [ %min_mcost.addr.302356, %land.lhs.true1343 ], [ %min_mcost.addr.302356, %for.body1332 ], [ %call1370.min_mcost.addr.30, %if.then1358 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1312
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1312
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !1312
  br i1 %exitcond, label %for.end1387, label %for.body1332, !dbg !1312

for.end1387:                                      ; preds = %for.inc1385
  %tobool1388 = icmp eq i32 %iAbort.5, 0, !dbg !1325
  tail call void @llvm.dbg.value(metadata !{i32 %best_x.31}, i64 0, metadata !149), !dbg !1326
  tail call void @llvm.dbg.value(metadata !{i32 %best_y.31}, i64 0, metadata !148), !dbg !1327
  %inc1392 = add nsw i32 %i.42360, 1, !dbg !1139
  tail call void @llvm.dbg.value(metadata !{i32 %inc1392}, i64 0, metadata !150), !dbg !1139
  %cmp1326 = icmp slt i32 %inc1392, %search_range, !dbg !1139
  %or.cond2471 = and i1 %tobool1388, %cmp1326, !dbg !1325
  br i1 %or.cond2471, label %for.cond1329.preheader, label %for.end1393, !dbg !1325

for.end1393:                                      ; preds = %for.end1387, %for.cond1256.preheader, %for.cond1325.preheader
  %best_x.32 = phi i32 [ %best_x.29.ph, %for.cond1325.preheader ], [ %best_x.25.ph, %for.cond1256.preheader ], [ %best_x.31, %for.end1387 ]
  %best_y.32 = phi i32 [ %best_y.29.ph, %for.cond1325.preheader ], [ %best_y.25.ph, %for.cond1256.preheader ], [ %best_y.31, %for.end1387 ]
  %min_mcost.addr.32 = phi i32 [ %min_mcost.addr.29.ph, %for.cond1325.preheader ], [ %min_mcost.addr.25.ph, %for.cond1256.preheader ], [ %min_mcost.addr.31, %for.end1387 ]
  %sub1394 = sub nsw i32 %best_x.32, %pic_pix_x, !dbg !1328
  %conv1395 = trunc i32 %sub1394 to i16, !dbg !1328
  store i16 %conv1395, i16* %mv_x, align 2, !dbg !1328, !tbaa !1018
  %sub1396 = sub nsw i32 %best_y.32, %pic_pix_y, !dbg !1329
  %conv1397 = trunc i32 %sub1396 to i16, !dbg !1329
  store i16 %conv1397, i16* %mv_y, align 2, !dbg !1329, !tbaa !1018
  ret i32 %min_mcost.addr.32, !dbg !1330
}

; Function Attrs: optsize
declare i16* @FastLineX(i32, i16*, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare i16* @UMVLineX(i32, i16*, i32, i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define i32 @AddUpSADQuarter(i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocksize_x, i32 %blocksize_y, i32 %cand_mv_x, i32 %cand_mv_y, %struct.storable_picture* nocapture %ref_picture, i16** nocapture %orig_pic, i32 %Mvmcost, i32 %min_mcost, i32 %useABT) #0 {
entry:
  %diff = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata !{i32 %pic_pix_x}, i64 0, metadata !237), !dbg !1331
  call void @llvm.dbg.value(metadata !{i32 %pic_pix_y}, i64 0, metadata !238), !dbg !1331
  call void @llvm.dbg.value(metadata !{i32 %blocksize_x}, i64 0, metadata !239), !dbg !1331
  call void @llvm.dbg.value(metadata !{i32 %blocksize_y}, i64 0, metadata !240), !dbg !1331
  call void @llvm.dbg.value(metadata !{i32 %cand_mv_x}, i64 0, metadata !241), !dbg !1332
  call void @llvm.dbg.value(metadata !{i32 %cand_mv_y}, i64 0, metadata !242), !dbg !1332
  call void @llvm.dbg.value(metadata !{%struct.storable_picture* %ref_picture}, i64 0, metadata !243), !dbg !1332
  call void @llvm.dbg.value(metadata !{i16** %orig_pic}, i64 0, metadata !244), !dbg !1332
  call void @llvm.dbg.value(metadata !{i32 %Mvmcost}, i64 0, metadata !245), !dbg !1333
  call void @llvm.dbg.value(metadata !{i32 %min_mcost}, i64 0, metadata !246), !dbg !1333
  call void @llvm.dbg.value(metadata !{i32 %useABT}, i64 0, metadata !247), !dbg !1333
  %0 = bitcast [16 x i32]* %diff to i8*, !dbg !1334
  call void @llvm.lifetime.start(i64 64, i8* %0) #4, !dbg !1334
  call void @llvm.dbg.declare(metadata !{[16 x i32]* %diff}, metadata !255), !dbg !1334
  call void @llvm.dbg.value(metadata !{i32 %Mvmcost}, i64 0, metadata !260), !dbg !1335
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %ref_picture, i64 0, i32 28, !dbg !1336
  %1 = load i16*** %imgY_ups, align 8, !dbg !1336, !tbaa !895
  call void @llvm.dbg.value(metadata !{i16** %1}, i64 0, metadata !267), !dbg !1336
  %size_x = getelementptr inbounds %struct.storable_picture* %ref_picture, i64 0, i32 18, !dbg !1337
  %2 = load i32* %size_x, align 4, !dbg !1337, !tbaa !896
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !268), !dbg !1337
  %size_y = getelementptr inbounds %struct.storable_picture* %ref_picture, i64 0, i32 19, !dbg !1338
  %3 = load i32* %size_y, align 4, !dbg !1338, !tbaa !896
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !269), !dbg !1338
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !249), !dbg !1339
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !248), !dbg !1339
  %cmp347 = icmp sgt i32 %blocksize_y, 0, !dbg !1339
  br i1 %cmp347, label %for.body.lr.ph, label %for.end184, !dbg !1339

for.body.lr.ph:                                   ; preds = %entry
  %cmp3342 = icmp sgt i32 %blocksize_x, 0, !dbg !1341
  %arraydecay = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 0, !dbg !1344
  %incdec.ptr = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 1, !dbg !1346
  %incdec.ptr19 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 2, !dbg !1347
  %incdec.ptr28 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 3, !dbg !1348
  %incdec.ptr37 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 4, !dbg !1349
  %incdec.ptr48 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 5, !dbg !1350
  %incdec.ptr57 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 6, !dbg !1351
  %incdec.ptr66 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 7, !dbg !1352
  %incdec.ptr75 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 8, !dbg !1353
  %incdec.ptr86 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 9, !dbg !1354
  %incdec.ptr95 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 10, !dbg !1355
  %incdec.ptr104 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 11, !dbg !1356
  %incdec.ptr113 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 12, !dbg !1357
  %incdec.ptr124 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 13, !dbg !1358
  %incdec.ptr133 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 14, !dbg !1359
  %incdec.ptr142 = getelementptr inbounds [16 x i32]* %diff, i64 0, i64 15, !dbg !1360
  %tobool151 = icmp eq i32 %useABT, 0, !dbg !1361
  %4 = zext i32 %pic_pix_x to i64, !dbg !1339
  %5 = zext i32 %pic_pix_y to i64, !dbg !1339
  br label %for.body, !dbg !1339

for.body:                                         ; preds = %for.body.lr.ph, %for.inc182
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc182 ]
  %mcost.0348 = phi i32 [ %Mvmcost, %for.body.lr.ph ], [ %mcost.3, %for.inc182 ]
  %6 = add nsw i64 %indvars.iv, %5, !dbg !1362
  %7 = trunc i64 %6 to i32, !dbg !1362
  %shl = shl i32 %7, 2, !dbg !1362
  %add1 = add nsw i32 %shl, %cand_mv_y, !dbg !1362
  call void @llvm.dbg.value(metadata !{i32 %add1}, i64 0, metadata !252), !dbg !1362
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !250), !dbg !1341
  br i1 %cmp3342, label %for.body4.lr.ph, label %for.inc182, !dbg !1341

for.body4.lr.ph:                                  ; preds = %for.body
  %arrayidx = getelementptr inbounds i16** %orig_pic, i64 %indvars.iv, !dbg !1363
  %8 = or i64 %indvars.iv, 1, !dbg !1364
  %arrayidx40 = getelementptr inbounds i16** %orig_pic, i64 %8, !dbg !1364
  %add41 = add nsw i32 %add1, 4, !dbg !1364
  %9 = or i64 %indvars.iv, 2, !dbg !1365
  %arrayidx78 = getelementptr inbounds i16** %orig_pic, i64 %9, !dbg !1365
  %add79 = add nsw i32 %add1, 8, !dbg !1365
  %10 = or i64 %indvars.iv, 3, !dbg !1366
  %arrayidx116 = getelementptr inbounds i16** %orig_pic, i64 %10, !dbg !1366
  %add117 = add nsw i32 %add1, 12, !dbg !1366
  br label %for.body4, !dbg !1341

for.body4:                                        ; preds = %for.body4.lr.ph, %for.inc179
  %indvars.iv357 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next358, %for.inc179 ]
  %mcost.1343 = phi i32 [ %mcost.0348, %for.body4.lr.ph ], [ %mcost.2, %for.inc179 ]
  %11 = add nsw i64 %indvars.iv357, %4, !dbg !1367
  %12 = trunc i64 %11 to i32, !dbg !1367
  %shl6 = shl i32 %12, 2, !dbg !1367
  %add7 = add nsw i32 %shl6, %cand_mv_x, !dbg !1367
  call void @llvm.dbg.value(metadata !{i32 %add7}, i64 0, metadata !251), !dbg !1367
  call void @llvm.dbg.value(metadata !{i32* %arraydecay}, i64 0, metadata !259), !dbg !1344
  %13 = load i16** %arrayidx, align 8, !dbg !1363, !tbaa !895
  call void @llvm.dbg.value(metadata !{i16* %13}, i64 0, metadata !254), !dbg !1363
  call void @llvm.dbg.value(metadata !{i32 %add1}, i64 0, metadata !253), !dbg !1363
  %arrayidx9 = getelementptr inbounds i16* %13, i64 %indvars.iv357, !dbg !1346
  %14 = load i16* %arrayidx9, align 2, !dbg !1346, !tbaa !1018
  %conv = zext i16 %14 to i32, !dbg !1346
  %15 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1346, !tbaa !895
  %call = call zeroext i16 %15(i16** %1, i32 %add1, i32 %add7, i32 %3, i32 %2) #6, !dbg !1346
  %conv10 = zext i16 %call to i32, !dbg !1346
  %sub = sub nsw i32 %conv, %conv10, !dbg !1346
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr}, i64 0, metadata !259), !dbg !1346
  store i32 %sub, i32* %arraydecay, align 16, !dbg !1346, !tbaa !896
  %16 = or i64 %indvars.iv357, 1, !dbg !1347
  %arrayidx13 = getelementptr inbounds i16* %13, i64 %16, !dbg !1347
  %17 = load i16* %arrayidx13, align 2, !dbg !1347, !tbaa !1018
  %conv14 = zext i16 %17 to i32, !dbg !1347
  %18 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1347, !tbaa !895
  %add15 = add nsw i32 %add7, 4, !dbg !1347
  %call16 = call zeroext i16 %18(i16** %1, i32 %add1, i32 %add15, i32 %3, i32 %2) #6, !dbg !1347
  %conv17 = zext i16 %call16 to i32, !dbg !1347
  %sub18 = sub nsw i32 %conv14, %conv17, !dbg !1347
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr19}, i64 0, metadata !259), !dbg !1347
  store i32 %sub18, i32* %incdec.ptr, align 4, !dbg !1347, !tbaa !896
  %19 = or i64 %indvars.iv357, 2, !dbg !1348
  %arrayidx22 = getelementptr inbounds i16* %13, i64 %19, !dbg !1348
  %20 = load i16* %arrayidx22, align 2, !dbg !1348, !tbaa !1018
  %conv23 = zext i16 %20 to i32, !dbg !1348
  %21 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1348, !tbaa !895
  %add24 = add nsw i32 %add7, 8, !dbg !1348
  %call25 = call zeroext i16 %21(i16** %1, i32 %add1, i32 %add24, i32 %3, i32 %2) #6, !dbg !1348
  %conv26 = zext i16 %call25 to i32, !dbg !1348
  %sub27 = sub nsw i32 %conv23, %conv26, !dbg !1348
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr28}, i64 0, metadata !259), !dbg !1348
  store i32 %sub27, i32* %incdec.ptr19, align 8, !dbg !1348, !tbaa !896
  %22 = or i64 %indvars.iv357, 3, !dbg !1349
  %arrayidx31 = getelementptr inbounds i16* %13, i64 %22, !dbg !1349
  %23 = load i16* %arrayidx31, align 2, !dbg !1349, !tbaa !1018
  %conv32 = zext i16 %23 to i32, !dbg !1349
  %24 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1349, !tbaa !895
  %add33 = add nsw i32 %add7, 12, !dbg !1349
  %call34 = call zeroext i16 %24(i16** %1, i32 %add1, i32 %add33, i32 %3, i32 %2) #6, !dbg !1349
  %conv35 = zext i16 %call34 to i32, !dbg !1349
  %sub36 = sub nsw i32 %conv32, %conv35, !dbg !1349
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr37}, i64 0, metadata !259), !dbg !1349
  store i32 %sub36, i32* %incdec.ptr28, align 4, !dbg !1349, !tbaa !896
  %25 = load i16** %arrayidx40, align 8, !dbg !1364, !tbaa !895
  call void @llvm.dbg.value(metadata !{i16* %25}, i64 0, metadata !254), !dbg !1364
  call void @llvm.dbg.value(metadata !{i32 %add41}, i64 0, metadata !253), !dbg !1364
  %arrayidx43 = getelementptr inbounds i16* %25, i64 %indvars.iv357, !dbg !1350
  %26 = load i16* %arrayidx43, align 2, !dbg !1350, !tbaa !1018
  %conv44 = zext i16 %26 to i32, !dbg !1350
  %27 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1350, !tbaa !895
  %call45 = call zeroext i16 %27(i16** %1, i32 %add41, i32 %add7, i32 %3, i32 %2) #6, !dbg !1350
  %conv46 = zext i16 %call45 to i32, !dbg !1350
  %sub47 = sub nsw i32 %conv44, %conv46, !dbg !1350
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr48}, i64 0, metadata !259), !dbg !1350
  store i32 %sub47, i32* %incdec.ptr37, align 16, !dbg !1350, !tbaa !896
  %arrayidx51 = getelementptr inbounds i16* %25, i64 %16, !dbg !1351
  %28 = load i16* %arrayidx51, align 2, !dbg !1351, !tbaa !1018
  %conv52 = zext i16 %28 to i32, !dbg !1351
  %29 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1351, !tbaa !895
  %call54 = call zeroext i16 %29(i16** %1, i32 %add41, i32 %add15, i32 %3, i32 %2) #6, !dbg !1351
  %conv55 = zext i16 %call54 to i32, !dbg !1351
  %sub56 = sub nsw i32 %conv52, %conv55, !dbg !1351
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr57}, i64 0, metadata !259), !dbg !1351
  store i32 %sub56, i32* %incdec.ptr48, align 4, !dbg !1351, !tbaa !896
  %arrayidx60 = getelementptr inbounds i16* %25, i64 %19, !dbg !1352
  %30 = load i16* %arrayidx60, align 2, !dbg !1352, !tbaa !1018
  %conv61 = zext i16 %30 to i32, !dbg !1352
  %31 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1352, !tbaa !895
  %call63 = call zeroext i16 %31(i16** %1, i32 %add41, i32 %add24, i32 %3, i32 %2) #6, !dbg !1352
  %conv64 = zext i16 %call63 to i32, !dbg !1352
  %sub65 = sub nsw i32 %conv61, %conv64, !dbg !1352
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr66}, i64 0, metadata !259), !dbg !1352
  store i32 %sub65, i32* %incdec.ptr57, align 8, !dbg !1352, !tbaa !896
  %arrayidx69 = getelementptr inbounds i16* %25, i64 %22, !dbg !1353
  %32 = load i16* %arrayidx69, align 2, !dbg !1353, !tbaa !1018
  %conv70 = zext i16 %32 to i32, !dbg !1353
  %33 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1353, !tbaa !895
  %call72 = call zeroext i16 %33(i16** %1, i32 %add41, i32 %add33, i32 %3, i32 %2) #6, !dbg !1353
  %conv73 = zext i16 %call72 to i32, !dbg !1353
  %sub74 = sub nsw i32 %conv70, %conv73, !dbg !1353
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr75}, i64 0, metadata !259), !dbg !1353
  store i32 %sub74, i32* %incdec.ptr66, align 4, !dbg !1353, !tbaa !896
  %34 = load i16** %arrayidx78, align 8, !dbg !1365, !tbaa !895
  call void @llvm.dbg.value(metadata !{i16* %34}, i64 0, metadata !254), !dbg !1365
  call void @llvm.dbg.value(metadata !{i32 %add79}, i64 0, metadata !253), !dbg !1365
  %arrayidx81 = getelementptr inbounds i16* %34, i64 %indvars.iv357, !dbg !1354
  %35 = load i16* %arrayidx81, align 2, !dbg !1354, !tbaa !1018
  %conv82 = zext i16 %35 to i32, !dbg !1354
  %36 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1354, !tbaa !895
  %call83 = call zeroext i16 %36(i16** %1, i32 %add79, i32 %add7, i32 %3, i32 %2) #6, !dbg !1354
  %conv84 = zext i16 %call83 to i32, !dbg !1354
  %sub85 = sub nsw i32 %conv82, %conv84, !dbg !1354
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr86}, i64 0, metadata !259), !dbg !1354
  store i32 %sub85, i32* %incdec.ptr75, align 16, !dbg !1354, !tbaa !896
  %arrayidx89 = getelementptr inbounds i16* %34, i64 %16, !dbg !1355
  %37 = load i16* %arrayidx89, align 2, !dbg !1355, !tbaa !1018
  %conv90 = zext i16 %37 to i32, !dbg !1355
  %38 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1355, !tbaa !895
  %call92 = call zeroext i16 %38(i16** %1, i32 %add79, i32 %add15, i32 %3, i32 %2) #6, !dbg !1355
  %conv93 = zext i16 %call92 to i32, !dbg !1355
  %sub94 = sub nsw i32 %conv90, %conv93, !dbg !1355
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr95}, i64 0, metadata !259), !dbg !1355
  store i32 %sub94, i32* %incdec.ptr86, align 4, !dbg !1355, !tbaa !896
  %arrayidx98 = getelementptr inbounds i16* %34, i64 %19, !dbg !1356
  %39 = load i16* %arrayidx98, align 2, !dbg !1356, !tbaa !1018
  %conv99 = zext i16 %39 to i32, !dbg !1356
  %40 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1356, !tbaa !895
  %call101 = call zeroext i16 %40(i16** %1, i32 %add79, i32 %add24, i32 %3, i32 %2) #6, !dbg !1356
  %conv102 = zext i16 %call101 to i32, !dbg !1356
  %sub103 = sub nsw i32 %conv99, %conv102, !dbg !1356
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr104}, i64 0, metadata !259), !dbg !1356
  store i32 %sub103, i32* %incdec.ptr95, align 8, !dbg !1356, !tbaa !896
  %arrayidx107 = getelementptr inbounds i16* %34, i64 %22, !dbg !1357
  %41 = load i16* %arrayidx107, align 2, !dbg !1357, !tbaa !1018
  %conv108 = zext i16 %41 to i32, !dbg !1357
  %42 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1357, !tbaa !895
  %call110 = call zeroext i16 %42(i16** %1, i32 %add79, i32 %add33, i32 %3, i32 %2) #6, !dbg !1357
  %conv111 = zext i16 %call110 to i32, !dbg !1357
  %sub112 = sub nsw i32 %conv108, %conv111, !dbg !1357
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr113}, i64 0, metadata !259), !dbg !1357
  store i32 %sub112, i32* %incdec.ptr104, align 4, !dbg !1357, !tbaa !896
  %43 = load i16** %arrayidx116, align 8, !dbg !1366, !tbaa !895
  call void @llvm.dbg.value(metadata !{i16* %43}, i64 0, metadata !254), !dbg !1366
  call void @llvm.dbg.value(metadata !{i32 %add117}, i64 0, metadata !253), !dbg !1366
  %arrayidx119 = getelementptr inbounds i16* %43, i64 %indvars.iv357, !dbg !1358
  %44 = load i16* %arrayidx119, align 2, !dbg !1358, !tbaa !1018
  %conv120 = zext i16 %44 to i32, !dbg !1358
  %45 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1358, !tbaa !895
  %call121 = call zeroext i16 %45(i16** %1, i32 %add117, i32 %add7, i32 %3, i32 %2) #6, !dbg !1358
  %conv122 = zext i16 %call121 to i32, !dbg !1358
  %sub123 = sub nsw i32 %conv120, %conv122, !dbg !1358
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr124}, i64 0, metadata !259), !dbg !1358
  store i32 %sub123, i32* %incdec.ptr113, align 16, !dbg !1358, !tbaa !896
  %arrayidx127 = getelementptr inbounds i16* %43, i64 %16, !dbg !1359
  %46 = load i16* %arrayidx127, align 2, !dbg !1359, !tbaa !1018
  %conv128 = zext i16 %46 to i32, !dbg !1359
  %47 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1359, !tbaa !895
  %call130 = call zeroext i16 %47(i16** %1, i32 %add117, i32 %add15, i32 %3, i32 %2) #6, !dbg !1359
  %conv131 = zext i16 %call130 to i32, !dbg !1359
  %sub132 = sub nsw i32 %conv128, %conv131, !dbg !1359
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr133}, i64 0, metadata !259), !dbg !1359
  store i32 %sub132, i32* %incdec.ptr124, align 4, !dbg !1359, !tbaa !896
  %arrayidx136 = getelementptr inbounds i16* %43, i64 %19, !dbg !1360
  %48 = load i16* %arrayidx136, align 2, !dbg !1360, !tbaa !1018
  %conv137 = zext i16 %48 to i32, !dbg !1360
  %49 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1360, !tbaa !895
  %call139 = call zeroext i16 %49(i16** %1, i32 %add117, i32 %add24, i32 %3, i32 %2) #6, !dbg !1360
  %conv140 = zext i16 %call139 to i32, !dbg !1360
  %sub141 = sub nsw i32 %conv137, %conv140, !dbg !1360
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr142}, i64 0, metadata !259), !dbg !1360
  store i32 %sub141, i32* %incdec.ptr133, align 8, !dbg !1360, !tbaa !896
  %arrayidx145 = getelementptr inbounds i16* %43, i64 %22, !dbg !1368
  %50 = load i16* %arrayidx145, align 2, !dbg !1368, !tbaa !1018
  %conv146 = zext i16 %50 to i32, !dbg !1368
  %51 = load i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1368, !tbaa !895
  %call148 = call zeroext i16 %51(i16** %1, i32 %add117, i32 %add33, i32 %3, i32 %2) #6, !dbg !1368
  %conv149 = zext i16 %call148 to i32, !dbg !1368
  %sub150 = sub nsw i32 %conv146, %conv149, !dbg !1368
  store i32 %sub150, i32* %incdec.ptr142, align 4, !dbg !1368, !tbaa !896
  br i1 %tobool151, label %if.then, label %for.inc179, !dbg !1361

if.then:                                          ; preds = %for.body4
  %52 = load %struct.InputParameters** @input, align 8, !dbg !1369, !tbaa !895
  %hadamard = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 6, !dbg !1369
  %53 = load i32* %hadamard, align 4, !dbg !1369, !tbaa !896
  %call153 = call i32 @SATD(i32* %arraydecay, i32 %53) #6, !dbg !1369
  %add154 = add nsw i32 %call153, %mcost.1343, !dbg !1369
  call void @llvm.dbg.value(metadata !{i32 %add154}, i64 0, metadata !260), !dbg !1369
  %cmp155 = icmp sgt i32 %add154, %min_mcost, !dbg !1369
  br i1 %cmp155, label %for.end184, label %for.inc179, !dbg !1369

for.inc179:                                       ; preds = %for.body4, %if.then
  %mcost.2 = phi i32 [ %add154, %if.then ], [ %mcost.1343, %for.body4 ]
  %indvars.iv.next358 = add i64 %indvars.iv357, 4, !dbg !1341
  %54 = trunc i64 %indvars.iv.next358 to i32, !dbg !1341
  %cmp3 = icmp slt i32 %54, %blocksize_x, !dbg !1341
  br i1 %cmp3, label %for.body4, label %for.inc182, !dbg !1341

for.inc182:                                       ; preds = %for.inc179, %for.body
  %mcost.3 = phi i32 [ %mcost.0348, %for.body ], [ %mcost.2, %for.inc179 ]
  %indvars.iv.next = add i64 %indvars.iv, 4, !dbg !1339
  %55 = trunc i64 %indvars.iv.next to i32, !dbg !1339
  %cmp = icmp slt i32 %55, %blocksize_y, !dbg !1339
  br i1 %cmp, label %for.body, label %for.end184, !dbg !1339

for.end184:                                       ; preds = %if.then, %for.inc182, %entry
  %mcost.0.lcssa = phi i32 [ %Mvmcost, %entry ], [ %mcost.3, %for.inc182 ], [ %add154, %if.then ]
  call void @llvm.lifetime.end(i64 64, i8* %0) #4, !dbg !1371
  ret i32 %mcost.0.lcssa, !dbg !1371
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @SATD(i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @FastSubPelBlockMotionSearch(i16** nocapture %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16 signext %pred_mv_x, i16 signext %pred_mv_y, i16* nocapture %mv_x, i16* nocapture %mv_y, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, double %lambda, i32 %useABT) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16** %orig_pic}, i64 0, metadata !274), !dbg !1372
  tail call void @llvm.dbg.value(metadata !{i16 %ref}, i64 0, metadata !275), !dbg !1373
  tail call void @llvm.dbg.value(metadata !{i32 %list}, i64 0, metadata !276), !dbg !1374
  tail call void @llvm.dbg.value(metadata !{i32 %pic_pix_x}, i64 0, metadata !277), !dbg !1375
  tail call void @llvm.dbg.value(metadata !{i32 %pic_pix_y}, i64 0, metadata !278), !dbg !1376
  tail call void @llvm.dbg.value(metadata !{i32 %blocktype}, i64 0, metadata !279), !dbg !1377
  tail call void @llvm.dbg.value(metadata !{i16 %pred_mv_x}, i64 0, metadata !280), !dbg !1378
  tail call void @llvm.dbg.value(metadata !{i16 %pred_mv_y}, i64 0, metadata !281), !dbg !1379
  tail call void @llvm.dbg.value(metadata !{i16* %mv_x}, i64 0, metadata !282), !dbg !1380
  tail call void @llvm.dbg.value(metadata !{i16* %mv_y}, i64 0, metadata !283), !dbg !1381
  tail call void @llvm.dbg.value(metadata !{i32 %search_pos2}, i64 0, metadata !284), !dbg !1382
  tail call void @llvm.dbg.value(metadata !{i32 %search_pos4}, i64 0, metadata !285), !dbg !1383
  tail call void @llvm.dbg.value(metadata !{i32 %min_mcost}, i64 0, metadata !286), !dbg !1384
  tail call void @llvm.dbg.value(metadata !{double %lambda}, i64 0, metadata !287), !dbg !1385
  tail call void @llvm.dbg.value(metadata !{i32 %useABT}, i64 0, metadata !288), !dbg !1386
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1387, !tbaa !895
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90, !dbg !1387
  %1 = load i32* %MbaffFrameFlag, align 4, !dbg !1387, !tbaa !896
  %tobool = icmp eq i32 %1, 0, !dbg !1387
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !1387

land.lhs.true:                                    ; preds = %entry
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1387
  %2 = load i32* %current_mb_nr, align 4, !dbg !1387, !tbaa !896
  %idxprom = sext i32 %2 to i64, !dbg !1387
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1387
  %3 = load %struct.macroblock** %mb_data, align 8, !dbg !1387, !tbaa !895
  %mb_field = getelementptr inbounds %struct.macroblock* %3, i64 %idxprom, i32 22, !dbg !1387
  %4 = load i32* %mb_field, align 4, !dbg !1387, !tbaa !896
  %tobool1 = icmp eq i32 %4, 0, !dbg !1387
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !1387

cond.true:                                        ; preds = %land.lhs.true
  %rem341 = shl i32 %2, 1, !dbg !1387
  %5 = and i32 %rem341, 2, !dbg !1387
  %6 = add i32 %5, 2, !dbg !1387
  br label %cond.end, !dbg !1387

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %6, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !1387
  tail call void @llvm.dbg.value(metadata !{i32 %cond4}, i64 0, metadata !292), !dbg !1387
  %idxprom5 = sext i16 %ref to i64, !dbg !1388
  %add = add nsw i32 %cond4, %list, !dbg !1388
  %idxprom6 = sext i32 %add to i64, !dbg !1388
  %arrayidx7 = getelementptr inbounds [6 x %struct.storable_picture**]* @listX, i64 0, i64 %idxprom6, !dbg !1388
  %7 = load %struct.storable_picture*** %arrayidx7, align 8, !dbg !1388, !tbaa !895
  %arrayidx8 = getelementptr inbounds %struct.storable_picture** %7, i64 %idxprom5, !dbg !1388
  %8 = load %struct.storable_picture** %arrayidx8, align 8, !dbg !1388, !tbaa !895
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %8}, i64 0, metadata !293), !dbg !1388
  %mul = fmul double %lambda, 6.553600e+04, !dbg !1389
  %add9 = fadd double %mul, 5.000000e-01, !dbg !1389
  %conv = fptosi double %add9 to i32, !dbg !1389
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !294), !dbg !1389
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !295), !dbg !1390
  %idxprom10 = sext i32 %blocktype to i64, !dbg !1391
  %9 = load %struct.InputParameters** @input, align 8, !dbg !1391, !tbaa !895
  %arrayidx12 = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 20, i64 %idxprom10, i64 0, !dbg !1391
  %10 = load i32* %arrayidx12, align 4, !dbg !1391, !tbaa !896
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !296), !dbg !1391
  %arrayidx16 = getelementptr inbounds %struct.InputParameters* %9, i64 0, i32 20, i64 %idxprom10, i64 1, !dbg !1392
  %11 = load i32* %arrayidx16, align 4, !dbg !1392, !tbaa !896
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !297), !dbg !1392
  %shl = shl i32 %pic_pix_x, 2, !dbg !1393
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !298), !dbg !1393
  %shl17 = shl i32 %pic_pix_y, 2, !dbg !1394
  tail call void @llvm.dbg.value(metadata !{i32 %shl17}, i64 0, metadata !299), !dbg !1394
  %size_x = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 18, !dbg !1395
  %12 = load i32* %size_x, align 4, !dbg !1395, !tbaa !896
  %size_y = getelementptr inbounds %struct.storable_picture* %8, i64 0, i32 19, !dbg !1396
  %13 = load i32* %size_y, align 4, !dbg !1396, !tbaa !896
  %sub20 = sub nsw i32 %13, %11, !dbg !1396
  %add21 = shl i32 %sub20, 2, !dbg !1396
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !308), !dbg !1397
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !309), !dbg !1397
  %14 = load i16* %mv_x, align 2, !dbg !1398, !tbaa !1018
  %shl24 = shl i16 %14, 2, !dbg !1398
  store i16 %shl24, i16* %mv_x, align 2, !dbg !1398, !tbaa !1018
  %15 = load i16* %mv_y, align 2, !dbg !1399, !tbaa !1018
  %shl27 = shl i16 %15, 2, !dbg !1399
  store i16 %shl27, i16* %mv_y, align 2, !dbg !1399, !tbaa !1018
  %16 = load i16* %mv_x, align 2, !dbg !1400, !tbaa !1018
  %conv29 = sext i16 %16 to i32, !dbg !1400
  %add30 = add nsw i32 %conv29, %shl, !dbg !1400
  %cmp = icmp sgt i32 %add30, 1, !dbg !1400
  br i1 %cmp, label %land.lhs.true32, label %if.else, !dbg !1400

land.lhs.true32:                                  ; preds = %cond.end
  %sub = sub nsw i32 %12, %10, !dbg !1395
  %add18 = shl i32 %sub, 2, !dbg !1395
  %sub35339 = or i32 %add18, 2, !dbg !1400
  %cmp36 = icmp slt i32 %add30, %sub35339, !dbg !1400
  br i1 %cmp36, label %land.lhs.true38, label %if.else, !dbg !1400

land.lhs.true38:                                  ; preds = %land.lhs.true32
  %conv39 = sext i16 %shl27 to i32, !dbg !1400
  %add40 = add nsw i32 %conv39, %shl17, !dbg !1400
  %cmp41 = icmp sgt i32 %add40, 1, !dbg !1400
  br i1 %cmp41, label %land.lhs.true43, label %if.else, !dbg !1400

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %sub46340 = or i32 %add21, 2, !dbg !1400
  %cmp47 = icmp slt i32 %add40, %sub46340, !dbg !1400
  br i1 %cmp47, label %if.end, label %if.else, !dbg !1400

if.else:                                          ; preds = %land.lhs.true43, %land.lhs.true38, %land.lhs.true32, %cond.end
  %conv54.pre = sext i16 %shl27 to i32, !dbg !1401
  br label %if.end

if.end:                                           ; preds = %land.lhs.true43, %if.else
  %conv54.pre-phi = phi i32 [ %conv39, %land.lhs.true43 ], [ %conv54.pre, %if.else ], !dbg !1401
  %storemerge = phi i16 (i16**, i32, i32, i32, i32)* [ @FastPelY_14, %land.lhs.true43 ], [ @UMVPelY_14, %if.else ]
  store i16 (i16**, i32, i32, i32, i32)* %storemerge, i16 (i16**, i32, i32, i32, i32)** @PelY_14, align 8, !dbg !1402, !tbaa !895
  tail call void @llvm.dbg.value(metadata !1404, i64 0, metadata !302), !dbg !1405
  %conv49 = sext i16 %pred_mv_x to i32, !dbg !1406
  %sub51 = sub nsw i32 %conv49, %conv29, !dbg !1406
  %rem52 = srem i32 %sub51, 4, !dbg !1406
  tail call void @llvm.dbg.value(metadata !{i32 %rem52}, i64 0, metadata !311), !dbg !1406
  %conv53 = sext i16 %pred_mv_y to i32, !dbg !1401
  %sub55 = sub nsw i32 %conv53, %conv54.pre-phi, !dbg !1401
  %rem56 = srem i32 %sub55, 4, !dbg !1401
  tail call void @llvm.dbg.value(metadata !{i32 %rem56}, i64 0, metadata !312), !dbg !1401
  %17 = load i8*** @SearchState, align 8, !dbg !1407, !tbaa !895
  %18 = load i8** %17, align 8, !dbg !1407, !tbaa !895
  tail call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 49, i32 1, i1 false), !dbg !1407
  %19 = load %struct.InputParameters** @input, align 8, !dbg !1408, !tbaa !895
  %hadamard = getelementptr inbounds %struct.InputParameters* %19, i64 0, i32 6, !dbg !1408
  %20 = load i32* %hadamard, align 4, !dbg !1408, !tbaa !896
  %tobool70 = icmp eq i32 %20, 0, !dbg !1408
  br i1 %tobool70, label %if.else94, label %if.then71, !dbg !1408

if.then71:                                        ; preds = %if.end
  %21 = load i16* %mv_x, align 2, !dbg !1409, !tbaa !1018
  %conv72 = sext i16 %21 to i32, !dbg !1409
  tail call void @llvm.dbg.value(metadata !{i32 %conv72}, i64 0, metadata !290), !dbg !1409
  %22 = load i16* %mv_y, align 2, !dbg !1411, !tbaa !1018
  %conv73 = sext i16 %22 to i32, !dbg !1411
  tail call void @llvm.dbg.value(metadata !{i32 %conv73}, i64 0, metadata !291), !dbg !1411
  %sub76 = sub nsw i32 %conv72, %conv49, !dbg !1412
  %idxprom77 = sext i32 %sub76 to i64, !dbg !1412
  %23 = load i32** @mvbits, align 8, !dbg !1412, !tbaa !895
  %arrayidx78 = getelementptr inbounds i32* %23, i64 %idxprom77, !dbg !1412
  %24 = load i32* %arrayidx78, align 4, !dbg !1412, !tbaa !896
  %sub81 = sub nsw i32 %conv73, %conv53, !dbg !1412
  %idxprom82 = sext i32 %sub81 to i64, !dbg !1412
  %arrayidx83 = getelementptr inbounds i32* %23, i64 %idxprom82, !dbg !1412
  %25 = load i32* %arrayidx83, align 4, !dbg !1412, !tbaa !896
  %add84 = add nsw i32 %25, %24, !dbg !1412
  %mul85 = mul nsw i32 %add84, %conv, !dbg !1412
  %shr = ashr i32 %mul85, 16, !dbg !1412
  tail call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !314), !dbg !1412
  %call = tail call i32 @AddUpSADQuarter(i32 %pic_pix_x, i32 %pic_pix_y, i32 %10, i32 %11, i32 %conv72, i32 %conv73, %struct.storable_picture* %8, i16** %orig_pic, i32 %shr, i32 %min_mcost, i32 %useABT) #5, !dbg !1413
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !289), !dbg !1413
  %26 = load i8*** @SearchState, align 8, !dbg !1414, !tbaa !895
  %arrayidx88 = getelementptr inbounds i8** %26, i64 3, !dbg !1414
  %27 = load i8** %arrayidx88, align 8, !dbg !1414, !tbaa !895
  %arrayidx89 = getelementptr inbounds i8* %27, i64 3, !dbg !1414
  store i8 1, i8* %arrayidx89, align 1, !dbg !1414, !tbaa !877
  %cmp90 = icmp slt i32 %call, %min_mcost, !dbg !1415
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !286), !dbg !1416
  tail call void @llvm.dbg.value(metadata !{i32 %conv72}, i64 0, metadata !308), !dbg !1418
  tail call void @llvm.dbg.value(metadata !{i32 %conv73}, i64 0, metadata !309), !dbg !1419
  %conv72. = select i1 %cmp90, i32 %conv72, i32 0, !dbg !1415
  %conv73. = select i1 %cmp90, i32 %conv73, i32 0, !dbg !1415
  %call.min_mcost = select i1 %cmp90, i32 %call, i32 %min_mcost, !dbg !1415
  br label %if.end101, !dbg !1415

if.else94:                                        ; preds = %if.end
  %28 = load i8*** @SearchState, align 8, !dbg !1420, !tbaa !895
  %arrayidx97 = getelementptr inbounds i8** %28, i64 3, !dbg !1420
  %29 = load i8** %arrayidx97, align 8, !dbg !1420, !tbaa !895
  %arrayidx98 = getelementptr inbounds i8* %29, i64 3, !dbg !1420
  store i8 1, i8* %arrayidx98, align 1, !dbg !1420, !tbaa !877
  %30 = load i16* %mv_x, align 2, !dbg !1422, !tbaa !1018
  %conv99 = sext i16 %30 to i32, !dbg !1422
  tail call void @llvm.dbg.value(metadata !{i32 %conv99}, i64 0, metadata !308), !dbg !1422
  %31 = load i16* %mv_y, align 2, !dbg !1423, !tbaa !1018
  %conv100 = sext i16 %31 to i32, !dbg !1423
  tail call void @llvm.dbg.value(metadata !{i32 %conv100}, i64 0, metadata !309), !dbg !1423
  br label %if.end101

if.end101:                                        ; preds = %if.then71, %if.else94
  %currmv_x.0 = phi i32 [ %conv99, %if.else94 ], [ %conv72., %if.then71 ]
  %currmv_y.0 = phi i32 [ %conv100, %if.else94 ], [ %conv73., %if.then71 ]
  %min_mcost.addr.0 = phi i32 [ %min_mcost, %if.else94 ], [ %call.min_mcost, %if.then71 ]
  %32 = or i32 %rem56, %rem52, !dbg !1424
  %33 = icmp eq i32 %32, 0, !dbg !1424
  br i1 %33, label %for.cond144.preheader, label %if.then106, !dbg !1424

if.then106:                                       ; preds = %if.end101
  %34 = load i16* %mv_x, align 2, !dbg !1425, !tbaa !1018
  %conv107 = sext i16 %34 to i32, !dbg !1425
  %add108 = add nsw i32 %conv107, %rem52, !dbg !1425
  tail call void @llvm.dbg.value(metadata !{i32 %add108}, i64 0, metadata !290), !dbg !1425
  %35 = load i16* %mv_y, align 2, !dbg !1427, !tbaa !1018
  %conv109 = sext i16 %35 to i32, !dbg !1427
  %add110 = add nsw i32 %conv109, %rem56, !dbg !1427
  tail call void @llvm.dbg.value(metadata !{i32 %add110}, i64 0, metadata !291), !dbg !1427
  %sub113 = sub nsw i32 %add108, %conv49, !dbg !1428
  %idxprom114 = sext i32 %sub113 to i64, !dbg !1428
  %36 = load i32** @mvbits, align 8, !dbg !1428, !tbaa !895
  %arrayidx115 = getelementptr inbounds i32* %36, i64 %idxprom114, !dbg !1428
  %37 = load i32* %arrayidx115, align 4, !dbg !1428, !tbaa !896
  %sub118 = sub nsw i32 %add110, %conv53, !dbg !1428
  %idxprom119 = sext i32 %sub118 to i64, !dbg !1428
  %arrayidx120 = getelementptr inbounds i32* %36, i64 %idxprom119, !dbg !1428
  %38 = load i32* %arrayidx120, align 4, !dbg !1428, !tbaa !896
  %add121 = add nsw i32 %38, %37, !dbg !1428
  %mul122 = mul nsw i32 %add121, %conv, !dbg !1428
  %shr123 = ashr i32 %mul122, 16, !dbg !1428
  tail call void @llvm.dbg.value(metadata !{i32 %shr123}, i64 0, metadata !314), !dbg !1428
  %call124 = tail call i32 @AddUpSADQuarter(i32 %pic_pix_x, i32 %pic_pix_y, i32 %10, i32 %11, i32 %add108, i32 %add110, %struct.storable_picture* %8, i16** %orig_pic, i32 %shr123, i32 %min_mcost.addr.0, i32 %useABT) #5, !dbg !1429
  tail call void @llvm.dbg.value(metadata !{i32 %call124}, i64 0, metadata !289), !dbg !1429
  %39 = load i16* %mv_x, align 2, !dbg !1430, !tbaa !1018
  %conv125 = sext i16 %39 to i32, !dbg !1430
  %sub126 = add i32 %add108, 3, !dbg !1430
  %add127 = sub i32 %sub126, %conv125, !dbg !1430
  %idxprom128 = sext i32 %add127 to i64, !dbg !1430
  %40 = load i16* %mv_y, align 2, !dbg !1430, !tbaa !1018
  %conv129 = sext i16 %40 to i32, !dbg !1430
  %sub130 = add i32 %add110, 3, !dbg !1430
  %add131 = sub i32 %sub130, %conv129, !dbg !1430
  %idxprom132 = sext i32 %add131 to i64, !dbg !1430
  %41 = load i8*** @SearchState, align 8, !dbg !1430, !tbaa !895
  %arrayidx133 = getelementptr inbounds i8** %41, i64 %idxprom132, !dbg !1430
  %42 = load i8** %arrayidx133, align 8, !dbg !1430, !tbaa !895
  %arrayidx134 = getelementptr inbounds i8* %42, i64 %idxprom128, !dbg !1430
  store i8 1, i8* %arrayidx134, align 1, !dbg !1430, !tbaa !877
  %cmp135 = icmp slt i32 %call124, %min_mcost.addr.0, !dbg !1431
  tail call void @llvm.dbg.value(metadata !{i32 %call124}, i64 0, metadata !286), !dbg !1432
  tail call void @llvm.dbg.value(metadata !{i32 %add108}, i64 0, metadata !308), !dbg !1434
  tail call void @llvm.dbg.value(metadata !{i32 %add110}, i64 0, metadata !309), !dbg !1435
  %add108.currmv_x.0 = select i1 %cmp135, i32 %add108, i32 %currmv_x.0, !dbg !1431
  %add110.currmv_y.0 = select i1 %cmp135, i32 %add110, i32 %currmv_y.0, !dbg !1431
  %call124.min_mcost.addr.0 = select i1 %cmp135, i32 %call124, i32 %min_mcost.addr.0, !dbg !1431
  br label %for.cond144.preheader, !dbg !1431

for.cond144.preheader:                            ; preds = %if.then106, %if.end101, %for.end
  %min_mcost.addr.2350 = phi i32 [ %min_mcost.addr.4, %for.end ], [ %call124.min_mcost.addr.0, %if.then106 ], [ %min_mcost.addr.0, %if.end101 ]
  %currmv_x.2349 = phi i32 [ %currmv_x.4, %for.end ], [ %add108.currmv_x.0, %if.then106 ], [ %currmv_x.0, %if.end101 ]
  %iYMinNow.0348 = phi i32 [ %currmv_y.4, %for.end ], [ %add110.currmv_y.0, %if.then106 ], [ %currmv_y.0, %if.end101 ]
  %i.0347 = phi i32 [ %inc212, %for.end ], [ 0, %if.then106 ], [ 0, %if.end101 ]
  br label %for.body147, !dbg !1436

for.body147:                                      ; preds = %for.inc, %for.cond144.preheader
  %indvars.iv = phi i64 [ 0, %for.cond144.preheader ], [ %indvars.iv.next, %for.inc ]
  %min_mcost.addr.3346 = phi i32 [ %min_mcost.addr.2350, %for.cond144.preheader ], [ %min_mcost.addr.4, %for.inc ]
  %abort_search.0345 = phi i32 [ 1, %for.cond144.preheader ], [ %abort_search.1, %for.inc ]
  %currmv_y.3344 = phi i32 [ %iYMinNow.0348, %for.cond144.preheader ], [ %currmv_y.4, %for.inc ]
  %currmv_x.3343 = phi i32 [ %currmv_x.2349, %for.cond144.preheader ], [ %currmv_x.4, %for.inc ]
  %arrayidx149 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, i64 0, i64 %indvars.iv, !dbg !1440
  %43 = load i32* %arrayidx149, align 4, !dbg !1440, !tbaa !896
  %add150 = add nsw i32 %43, %currmv_x.2349, !dbg !1440
  tail call void @llvm.dbg.value(metadata !{i32 %add150}, i64 0, metadata !290), !dbg !1440
  %arrayidx152 = getelementptr inbounds [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, i64 0, i64 %indvars.iv, !dbg !1442
  %44 = load i32* %arrayidx152, align 4, !dbg !1442, !tbaa !896
  %add153 = add nsw i32 %44, %iYMinNow.0348, !dbg !1442
  tail call void @llvm.dbg.value(metadata !{i32 %add153}, i64 0, metadata !291), !dbg !1442
  %45 = load i16* %mv_x, align 2, !dbg !1443, !tbaa !1018
  %conv154 = sext i16 %45 to i32, !dbg !1443
  %sub155 = sub nsw i32 %add150, %conv154, !dbg !1443
  %ispos = icmp sgt i32 %sub155, -1, !dbg !1443
  %neg = sub i32 0, %sub155, !dbg !1443
  %46 = select i1 %ispos, i32 %sub155, i32 %neg, !dbg !1443
  %cmp157 = icmp slt i32 %46, 4, !dbg !1443
  br i1 %cmp157, label %land.lhs.true159, label %for.inc, !dbg !1443

land.lhs.true159:                                 ; preds = %for.body147
  %47 = load i16* %mv_y, align 2, !dbg !1443, !tbaa !1018
  %conv160 = sext i16 %47 to i32, !dbg !1443
  %sub161 = sub nsw i32 %add153, %conv160, !dbg !1443
  %ispos337 = icmp sgt i32 %sub161, -1, !dbg !1443
  %neg338 = sub i32 0, %sub161, !dbg !1443
  %48 = select i1 %ispos337, i32 %sub161, i32 %neg338, !dbg !1443
  %cmp163 = icmp slt i32 %48, 4, !dbg !1443
  br i1 %cmp163, label %if.then165, label %for.inc, !dbg !1443

if.then165:                                       ; preds = %land.lhs.true159
  %add168 = add nsw i32 %sub155, 3, !dbg !1444
  %idxprom169 = sext i32 %add168 to i64, !dbg !1444
  %add172 = add nsw i32 %sub161, 3, !dbg !1444
  %idxprom173 = sext i32 %add172 to i64, !dbg !1444
  %49 = load i8*** @SearchState, align 8, !dbg !1444, !tbaa !895
  %arrayidx174 = getelementptr inbounds i8** %49, i64 %idxprom173, !dbg !1444
  %50 = load i8** %arrayidx174, align 8, !dbg !1444, !tbaa !895
  %arrayidx175 = getelementptr inbounds i8* %50, i64 %idxprom169, !dbg !1444
  %51 = load i8* %arrayidx175, align 1, !dbg !1444, !tbaa !877
  %tobool176 = icmp eq i8 %51, 0, !dbg !1444
  br i1 %tobool176, label %if.then177, label %for.inc, !dbg !1444

if.then177:                                       ; preds = %if.then165
  %sub180 = sub nsw i32 %add150, %conv49, !dbg !1446
  %idxprom181 = sext i32 %sub180 to i64, !dbg !1446
  %52 = load i32** @mvbits, align 8, !dbg !1446, !tbaa !895
  %arrayidx182 = getelementptr inbounds i32* %52, i64 %idxprom181, !dbg !1446
  %53 = load i32* %arrayidx182, align 4, !dbg !1446, !tbaa !896
  %sub185 = sub nsw i32 %add153, %conv53, !dbg !1446
  %idxprom186 = sext i32 %sub185 to i64, !dbg !1446
  %arrayidx187 = getelementptr inbounds i32* %52, i64 %idxprom186, !dbg !1446
  %54 = load i32* %arrayidx187, align 4, !dbg !1446, !tbaa !896
  %add188 = add nsw i32 %54, %53, !dbg !1446
  %mul189 = mul nsw i32 %add188, %conv, !dbg !1446
  %shr190 = ashr i32 %mul189, 16, !dbg !1446
  tail call void @llvm.dbg.value(metadata !{i32 %shr190}, i64 0, metadata !314), !dbg !1446
  %call191 = tail call i32 @AddUpSADQuarter(i32 %pic_pix_x, i32 %pic_pix_y, i32 %10, i32 %11, i32 %add150, i32 %add153, %struct.storable_picture* %8, i16** %orig_pic, i32 %shr190, i32 %min_mcost.addr.3346, i32 %useABT) #5, !dbg !1448
  tail call void @llvm.dbg.value(metadata !{i32 %call191}, i64 0, metadata !289), !dbg !1448
  %55 = load i16* %mv_x, align 2, !dbg !1449, !tbaa !1018
  %conv192 = sext i16 %55 to i32, !dbg !1449
  %sub193 = add i32 %add150, 3, !dbg !1449
  %add194 = sub i32 %sub193, %conv192, !dbg !1449
  %idxprom195 = sext i32 %add194 to i64, !dbg !1449
  %56 = load i16* %mv_y, align 2, !dbg !1449, !tbaa !1018
  %conv196 = sext i16 %56 to i32, !dbg !1449
  %sub197 = add i32 %add153, 3, !dbg !1449
  %add198 = sub i32 %sub197, %conv196, !dbg !1449
  %idxprom199 = sext i32 %add198 to i64, !dbg !1449
  %57 = load i8*** @SearchState, align 8, !dbg !1449, !tbaa !895
  %arrayidx200 = getelementptr inbounds i8** %57, i64 %idxprom199, !dbg !1449
  %58 = load i8** %arrayidx200, align 8, !dbg !1449, !tbaa !895
  %arrayidx201 = getelementptr inbounds i8* %58, i64 %idxprom195, !dbg !1449
  store i8 1, i8* %arrayidx201, align 1, !dbg !1449, !tbaa !877
  %cmp202 = icmp slt i32 %call191, %min_mcost.addr.3346, !dbg !1450
  tail call void @llvm.dbg.value(metadata !{i32 %call191}, i64 0, metadata !286), !dbg !1451
  tail call void @llvm.dbg.value(metadata !{i32 %add150}, i64 0, metadata !308), !dbg !1453
  tail call void @llvm.dbg.value(metadata !{i32 %add153}, i64 0, metadata !309), !dbg !1454
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !313), !dbg !1455
  %add150.currmv_x.3 = select i1 %cmp202, i32 %add150, i32 %currmv_x.3343, !dbg !1450
  %add153.currmv_y.3 = select i1 %cmp202, i32 %add153, i32 %currmv_y.3344, !dbg !1450
  %.abort_search.0 = select i1 %cmp202, i32 0, i32 %abort_search.0345, !dbg !1450
  %call191.min_mcost.addr.3 = select i1 %cmp202, i32 %call191, i32 %min_mcost.addr.3346, !dbg !1450
  br label %for.inc, !dbg !1450

for.inc:                                          ; preds = %if.then177, %if.then165, %for.body147, %land.lhs.true159
  %currmv_x.4 = phi i32 [ %currmv_x.3343, %if.then165 ], [ %currmv_x.3343, %land.lhs.true159 ], [ %currmv_x.3343, %for.body147 ], [ %add150.currmv_x.3, %if.then177 ]
  %currmv_y.4 = phi i32 [ %currmv_y.3344, %if.then165 ], [ %currmv_y.3344, %land.lhs.true159 ], [ %currmv_y.3344, %for.body147 ], [ %add153.currmv_y.3, %if.then177 ]
  %abort_search.1 = phi i32 [ %abort_search.0345, %if.then165 ], [ %abort_search.0345, %land.lhs.true159 ], [ %abort_search.0345, %for.body147 ], [ %.abort_search.0, %if.then177 ]
  %min_mcost.addr.4 = phi i32 [ %min_mcost.addr.3346, %if.then165 ], [ %min_mcost.addr.3346, %land.lhs.true159 ], [ %min_mcost.addr.3346, %for.body147 ], [ %call191.min_mcost.addr.3, %if.then177 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1436
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1436
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !1436
  br i1 %exitcond, label %for.end, label %for.body147, !dbg !1436

for.end:                                          ; preds = %for.inc
  tail call void @llvm.dbg.value(metadata !{i32 %currmv_x.4}, i64 0, metadata !303), !dbg !1456
  tail call void @llvm.dbg.value(metadata !{i32 %currmv_y.4}, i64 0, metadata !304), !dbg !1457
  %tobool208 = icmp eq i32 %abort_search.1, 0, !dbg !1458
  %inc212 = add nsw i32 %i.0347, 1, !dbg !1459
  tail call void @llvm.dbg.value(metadata !{i32 %inc212}, i64 0, metadata !305), !dbg !1459
  %cmp142 = icmp slt i32 %inc212, 7, !dbg !1459
  %or.cond = and i1 %tobool208, %cmp142, !dbg !1458
  br i1 %or.cond, label %for.cond144.preheader, label %for.end213, !dbg !1458

for.end213:                                       ; preds = %for.end
  %conv214 = trunc i32 %currmv_x.4 to i16, !dbg !1460
  store i16 %conv214, i16* %mv_x, align 2, !dbg !1460, !tbaa !1018
  %conv215 = trunc i32 %currmv_y.4 to i16, !dbg !1461
  store i16 %conv215, i16* %mv_y, align 2, !dbg !1461, !tbaa !1018
  ret i32 %min_mcost.addr.4, !dbg !1462
}

; Function Attrs: optsize
declare zeroext i16 @FastPelY_14(i16**, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare zeroext i16 @UMVPelY_14(i16**, i32, i32, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @decide_intrabk_SAD() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1463, !tbaa !895
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1463
  %1 = load i32* %type, align 4, !dbg !1463, !tbaa !896
  %cmp = icmp eq i32 %1, 0, !dbg !1463
  br i1 %cmp, label %if.end34, label %if.then, !dbg !1463

if.then:                                          ; preds = %entry
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33, !dbg !1464
  %2 = load i32* %pix_x, align 4, !dbg !1464, !tbaa !896
  %cmp1 = icmp eq i32 %2, 0, !dbg !1464
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34, !dbg !1464
  %3 = load i32* %pix_y, align 4, !dbg !1464, !tbaa !896
  %cmp2 = icmp eq i32 %3, 0, !dbg !1464
  br i1 %cmp1, label %land.lhs.true, label %if.else8, !dbg !1464

land.lhs.true:                                    ; preds = %if.then
  br i1 %cmp2, label %if.then3, label %if.then6, !dbg !1464

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, i32* @flag_intra_SAD, align 4, !dbg !1466, !tbaa !896
  br label %if.end34, !dbg !1468

if.then6:                                         ; preds = %land.lhs.true
  %4 = load i32** @flag_intra, align 8, !dbg !1469, !tbaa !895
  %5 = load i32* %4, align 4, !dbg !1469, !tbaa !896
  store i32 %5, i32* @flag_intra_SAD, align 4, !dbg !1469, !tbaa !896
  br label %if.end34, !dbg !1471

if.else8:                                         ; preds = %if.then
  %shr13 = ashr i32 %2, 4, !dbg !1472
  br i1 %cmp2, label %if.then11, label %if.else16, !dbg !1474

if.then11:                                        ; preds = %if.else8
  %sub = add nsw i32 %shr13, -1, !dbg !1472
  %idxprom14 = sext i32 %sub to i64, !dbg !1472
  %6 = load i32** @flag_intra, align 8, !dbg !1472, !tbaa !895
  %arrayidx15 = getelementptr inbounds i32* %6, i64 %idxprom14, !dbg !1472
  %7 = load i32* %arrayidx15, align 4, !dbg !1472, !tbaa !896
  store i32 %7, i32* @flag_intra_SAD, align 4, !dbg !1472, !tbaa !896
  br label %if.end34, !dbg !1475

if.else16:                                        ; preds = %if.else8
  %idxprom19 = sext i32 %shr13 to i64, !dbg !1476
  %8 = load i32** @flag_intra, align 8, !dbg !1476, !tbaa !895
  %arrayidx20 = getelementptr inbounds i32* %8, i64 %idxprom19, !dbg !1476
  %9 = load i32* %arrayidx20, align 4, !dbg !1476, !tbaa !896
  %tobool = icmp eq i32 %9, 0, !dbg !1476
  br i1 %tobool, label %lor.lhs.false, label %lor.end, !dbg !1476

lor.lhs.false:                                    ; preds = %if.else16
  %sub23 = add nsw i32 %shr13, -1, !dbg !1476
  %idxprom24 = sext i32 %sub23 to i64, !dbg !1476
  %arrayidx25 = getelementptr inbounds i32* %8, i64 %idxprom24, !dbg !1476
  %10 = load i32* %arrayidx25, align 4, !dbg !1476, !tbaa !896
  %tobool26 = icmp eq i32 %10, 0, !dbg !1476
  br i1 %tobool26, label %lor.rhs, label %lor.end, !dbg !1476

lor.rhs:                                          ; preds = %lor.lhs.false
  %add = add nsw i32 %shr13, 1, !dbg !1476
  %idxprom29 = sext i32 %add to i64, !dbg !1476
  %arrayidx30 = getelementptr inbounds i32* %8, i64 %idxprom29, !dbg !1476
  %11 = load i32* %arrayidx30, align 4, !dbg !1476, !tbaa !896
  %tobool31 = icmp ne i32 %11, 0, !dbg !1476
  br label %lor.end, !dbg !1476

lor.end:                                          ; preds = %lor.lhs.false, %if.else16, %lor.rhs
  %12 = phi i1 [ true, %lor.lhs.false ], [ true, %if.else16 ], [ %tobool31, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32, !dbg !1476
  store i32 %lor.ext, i32* @flag_intra_SAD, align 4, !dbg !1476, !tbaa !896
  br label %if.end34

if.end34:                                         ; preds = %entry, %if.then3, %if.then11, %lor.end, %if.then6
  ret void, !dbg !1478
}

; Function Attrs: nounwind optsize uwtable
define void @skip_intrabk_SAD(i32 %best_mode, i32 %ref_max) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %best_mode}, i64 0, metadata !322), !dbg !1479
  tail call void @llvm.dbg.value(metadata !{i32 %ref_max}, i64 0, metadata !323), !dbg !1479
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1480, !tbaa !895
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0, !dbg !1480
  %1 = load i32* %number, align 4, !dbg !1480, !tbaa !896
  %cmp = icmp sgt i32 %1, 0, !dbg !1480
  br i1 %cmp, label %if.then, label %if.end, !dbg !1480

if.then:                                          ; preds = %entry
  %best_mode.off50 = add i32 %best_mode, -9, !dbg !1481
  %2 = icmp ult i32 %best_mode.off50, 2, !dbg !1481
  %cond = zext i1 %2 to i32, !dbg !1481
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33, !dbg !1481
  %3 = load i32* %pix_x, align 4, !dbg !1481, !tbaa !896
  %shr = ashr i32 %3, 4, !dbg !1481
  %idxprom = sext i32 %shr to i64, !dbg !1481
  %4 = load i32** @flag_intra, align 8, !dbg !1481, !tbaa !895
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !1481
  store i32 %cond, i32* %arrayidx, align 4, !dbg !1481, !tbaa !896
  br label %if.end, !dbg !1481

if.end:                                           ; preds = %if.then, %entry
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1482
  %5 = load i32* %type, align 4, !dbg !1482, !tbaa !896
  %cmp3 = icmp eq i32 %5, 0, !dbg !1482
  br i1 %cmp3, label %if.end39, label %land.lhs.true, !dbg !1482

land.lhs.true:                                    ; preds = %if.end
  %best_mode.off = add i32 %best_mode, -9, !dbg !1482
  %6 = icmp ult i32 %best_mode.off, 2, !dbg !1482
  br i1 %6, label %for.cond.preheader, label %if.end39, !dbg !1482

for.cond.preheader:                               ; preds = %land.lhs.true
  %cmp1551 = icmp sgt i32 %ref_max, 0, !dbg !1483
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34, !dbg !1492
  %pix_x21 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33, !dbg !1492
  %7 = load i32****** @all_mincost, align 8, !dbg !1492, !tbaa !895
  br label %for.cond8.preheader, !dbg !1494

for.cond8.preheader:                              ; preds = %for.inc36, %for.cond.preheader
  %i.055 = phi i32 [ 0, %for.cond.preheader ], [ %inc37, %for.inc36 ]
  br label %for.cond11.preheader, !dbg !1495

for.cond11.preheader:                             ; preds = %for.inc33, %for.cond8.preheader
  %j.054 = phi i32 [ 0, %for.cond8.preheader ], [ %inc34, %for.inc33 ]
  br label %for.cond14.preheader, !dbg !1496

for.cond14.preheader:                             ; preds = %for.inc30, %for.cond11.preheader
  %indvars.iv56 = phi i64 [ 1, %for.cond11.preheader ], [ %indvars.iv.next57, %for.inc30 ]
  br i1 %cmp1551, label %for.body16, label %for.inc30, !dbg !1483

for.body16:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body16 ], [ 0, %for.cond14.preheader ]
  %8 = load i32* %pix_y, align 4, !dbg !1492, !tbaa !896
  %shr19 = ashr i32 %8, 2, !dbg !1492
  %add = add nsw i32 %shr19, %j.054, !dbg !1492
  %idxprom20 = sext i32 %add to i64, !dbg !1492
  %9 = load i32* %pix_x21, align 4, !dbg !1492, !tbaa !896
  %shr22 = ashr i32 %9, 2, !dbg !1492
  %add23 = add nsw i32 %shr22, %i.055, !dbg !1492
  %idxprom24 = sext i32 %add23 to i64, !dbg !1492
  %arrayidx25 = getelementptr inbounds i32***** %7, i64 %idxprom24, !dbg !1492
  %10 = load i32***** %arrayidx25, align 8, !dbg !1492, !tbaa !895
  %arrayidx26 = getelementptr inbounds i32**** %10, i64 %idxprom20, !dbg !1492
  %11 = load i32**** %arrayidx26, align 8, !dbg !1492, !tbaa !895
  %arrayidx27 = getelementptr inbounds i32*** %11, i64 %indvars.iv, !dbg !1492
  %12 = load i32*** %arrayidx27, align 8, !dbg !1492, !tbaa !895
  %arrayidx28 = getelementptr inbounds i32** %12, i64 %indvars.iv56, !dbg !1492
  %13 = load i32** %arrayidx28, align 8, !dbg !1492, !tbaa !895
  store i32 0, i32* %13, align 4, !dbg !1492, !tbaa !896
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1483
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1483
  %exitcond = icmp eq i32 %lftr.wideiv, %ref_max, !dbg !1483
  br i1 %exitcond, label %for.inc30, label %for.body16, !dbg !1483

for.inc30:                                        ; preds = %for.body16, %for.cond14.preheader
  %indvars.iv.next57 = add i64 %indvars.iv56, 1, !dbg !1496
  %lftr.wideiv58 = trunc i64 %indvars.iv.next57 to i32, !dbg !1496
  %exitcond59 = icmp eq i32 %lftr.wideiv58, 8, !dbg !1496
  br i1 %exitcond59, label %for.inc33, label %for.cond14.preheader, !dbg !1496

for.inc33:                                        ; preds = %for.inc30
  %inc34 = add nsw i32 %j.054, 1, !dbg !1495
  tail call void @llvm.dbg.value(metadata !{i32 %inc34}, i64 0, metadata !325), !dbg !1495
  %exitcond60 = icmp eq i32 %inc34, 4, !dbg !1495
  br i1 %exitcond60, label %for.inc36, label %for.cond11.preheader, !dbg !1495

for.inc36:                                        ; preds = %for.inc33
  %inc37 = add nsw i32 %i.055, 1, !dbg !1494
  tail call void @llvm.dbg.value(metadata !{i32 %inc37}, i64 0, metadata !324), !dbg !1494
  %exitcond61 = icmp eq i32 %inc37, 4, !dbg !1494
  br i1 %exitcond61, label %if.end39, label %for.cond8.preheader, !dbg !1494

if.end39:                                         ; preds = %for.inc36, %if.end, %land.lhs.true
  ret void, !dbg !1497
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !26, metadata !27, metadata !328, metadata !26, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8, metadata !16, metadata !21}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 192, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 192, size 32, align 32, offset 0] [from ]
!9 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!10 = metadata !{metadata !11, metadata !12, metadata !13, metadata !14, metadata !15}
!11 = metadata !{i32 786472, metadata !"P_SLICE", i64 0} ; [ DW_TAG_enumerator ] [P_SLICE :: 0]
!12 = metadata !{i32 786472, metadata !"B_SLICE", i64 1} ; [ DW_TAG_enumerator ] [B_SLICE :: 1]
!13 = metadata !{i32 786472, metadata !"I_SLICE", i64 2} ; [ DW_TAG_enumerator ] [I_SLICE :: 2]
!14 = metadata !{i32 786472, metadata !"SP_SLICE", i64 3} ; [ DW_TAG_enumerator ] [SP_SLICE :: 3]
!15 = metadata !{i32 786472, metadata !"SI_SLICE", i64 4} ; [ DW_TAG_enumerator ] [SI_SLICE :: 4]
!16 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 185, size 32, align 32, offset 0] [from ]
!17 = metadata !{metadata !18, metadata !19, metadata !20}
!18 = metadata !{i32 786472, metadata !"FRAME", i64 0} ; [ DW_TAG_enumerator ] [FRAME :: 0]
!19 = metadata !{i32 786472, metadata !"TOP_FIELD", i64 1} ; [ DW_TAG_enumerator ] [TOP_FIELD :: 1]
!20 = metadata !{i32 786472, metadata !"BOTTOM_FIELD", i64 2} ; [ DW_TAG_enumerator ] [BOTTOM_FIELD :: 2]
!21 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 111, i64 32, i64 32, i32 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 111, size 32, align 32, offset 0] [from ]
!22 = metadata !{metadata !23, metadata !24, metadata !25}
!23 = metadata !{i32 786472, metadata !"FRAME_CODING", i64 0} ; [ DW_TAG_enumerator ] [FRAME_CODING :: 0]
!24 = metadata !{i32 786472, metadata !"FIELD_CODING", i64 1} ; [ DW_TAG_enumerator ] [FIELD_CODING :: 1]
!25 = metadata !{i32 786472, metadata !"ADAPTIVE_CODING", i64 2} ; [ DW_TAG_enumerator ] [ADAPTIVE_CODING :: 2]
!26 = metadata !{i32 0}
!27 = metadata !{metadata !28, metadata !32, metadata !40, metadata !55, metadata !62, metadata !67, metadata !76, metadata !83, metadata !84, metadata !109, metadata !159, metadata !270, metadata !317, metadata !318}
!28 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"DefineThreshold", metadata !"DefineThreshold", metadata !"", i32 74, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @DefineThreshold, null, null, metadata !26, i32 75} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 75] [DefineThreshold]
!29 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!30 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null}
!32 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"DefineThresholdMB", metadata !"DefineThresholdMB", metadata !"", i32 96, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @DefineThresholdMB, null, null, metadata !33, i32 97} ; [ DW_TAG_subprogram ] [line 96] [def] [scope 97] [DefineThresholdMB]
!33 = metadata !{metadata !34, metadata !36, metadata !37, metadata !38, metadata !39}
!34 = metadata !{i32 786688, metadata !32, metadata !"gb_qp_per", metadata !29, i32 98, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gb_qp_per] [line 98]
!35 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!36 = metadata !{i32 786688, metadata !32, metadata !"gb_qp_rem", metadata !29, i32 99, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gb_qp_rem] [line 99]
!37 = metadata !{i32 786688, metadata !32, metadata !"gb_q_bits", metadata !29, i32 101, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gb_q_bits] [line 101]
!38 = metadata !{i32 786688, metadata !32, metadata !"gb_qp_const", metadata !29, i32 102, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gb_qp_const] [line 102]
!39 = metadata !{i32 786688, metadata !32, metadata !"Thresh4x4", metadata !29, i32 102, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Thresh4x4] [line 102]
!40 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"get_mem_mincost", metadata !"get_mem_mincost", metadata !"", i32 132, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32******)* @get_mem_mincost, null, null, metadata !49, i32 133} ; [ DW_TAG_subprogram ] [line 132] [def] [scope 133] [get_mem_mincost]
!41 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !35, metadata !43}
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!50 = metadata !{i32 786689, metadata !40, metadata !"mv", metadata !29, i32 16777348, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mv] [line 132]
!51 = metadata !{i32 786688, metadata !40, metadata !"i", metadata !29, i32 134, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 134]
!52 = metadata !{i32 786688, metadata !40, metadata !"j", metadata !29, i32 134, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 134]
!53 = metadata !{i32 786688, metadata !40, metadata !"k", metadata !29, i32 134, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 134]
!54 = metadata !{i32 786688, metadata !40, metadata !"l", metadata !29, i32 134, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 134]
!55 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"get_mem_bwmincost", metadata !"get_mem_bwmincost", metadata !"", i32 169, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32******)* @get_mem_bwmincost, null, null, metadata !56, i32 170} ; [ DW_TAG_subprogram ] [line 169] [def] [scope 170] [get_mem_bwmincost]
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61}
!57 = metadata !{i32 786689, metadata !55, metadata !"mv", metadata !29, i32 16777385, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mv] [line 169]
!58 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !29, i32 171, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 171]
!59 = metadata !{i32 786688, metadata !55, metadata !"j", metadata !29, i32 171, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 171]
!60 = metadata !{i32 786688, metadata !55, metadata !"k", metadata !29, i32 171, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 171]
!61 = metadata !{i32 786688, metadata !55, metadata !"l", metadata !29, i32 171, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 171]
!62 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"get_mem_FME", metadata !"get_mem_FME", metadata !"", i32 198, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @get_mem_FME, null, null, metadata !65, i32 199} ; [ DW_TAG_subprogram ] [line 198] [def] [scope 199] [get_mem_FME]
!63 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{metadata !35}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786688, metadata !62, metadata !"memory_size", metadata !29, i32 200, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [memory_size] [line 200]
!67 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"free_mem_mincost", metadata !"free_mem_mincost", metadata !"", i32 219, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*****)* @free_mem_mincost, null, null, metadata !70, i32 220} ; [ DW_TAG_subprogram ] [line 219] [def] [scope 220] [free_mem_mincost]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{null, metadata !44}
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!71 = metadata !{i32 786689, metadata !67, metadata !"mv", metadata !29, i32 16777435, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mv] [line 219]
!72 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !29, i32 221, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 221]
!73 = metadata !{i32 786688, metadata !67, metadata !"j", metadata !29, i32 221, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 221]
!74 = metadata !{i32 786688, metadata !67, metadata !"k", metadata !29, i32 221, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 221]
!75 = metadata !{i32 786688, metadata !67, metadata !"l", metadata !29, i32 221, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 221]
!76 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"free_mem_bwmincost", metadata !"free_mem_bwmincost", metadata !"", i32 248, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*****)* @free_mem_bwmincost, null, null, metadata !77, i32 249} ; [ DW_TAG_subprogram ] [line 248] [def] [scope 249] [free_mem_bwmincost]
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81, metadata !82}
!78 = metadata !{i32 786689, metadata !76, metadata !"mv", metadata !29, i32 16777464, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mv] [line 248]
!79 = metadata !{i32 786688, metadata !76, metadata !"i", metadata !29, i32 250, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 250]
!80 = metadata !{i32 786688, metadata !76, metadata !"j", metadata !29, i32 250, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 250]
!81 = metadata !{i32 786688, metadata !76, metadata !"k", metadata !29, i32 250, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 250]
!82 = metadata !{i32 786688, metadata !76, metadata !"l", metadata !29, i32 250, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 250]
!83 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"free_mem_FME", metadata !"free_mem_FME", metadata !"", i32 269, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @free_mem_FME, null, null, metadata !26, i32 270} ; [ DW_TAG_subprogram ] [line 269] [def] [scope 270] [free_mem_FME]
!84 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"PartCalMad", metadata !"PartCalMad", metadata !"", i32 281, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i16*, i16**, i16* (i32, i16*, i32, i32, i32, i32)*, i32, i32, i32, i32, i32, i32, i32)* @PartCalMad, null, null, metadata !93, i32 282} ; [ DW_TAG_subprogram ] [line 281] [def] [scope 282] [PartCalMad]
!85 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !35, metadata !87, metadata !89, metadata !90, metadata !35, metadata !35, metadata !35, metadata !35, metadata !35, metadata !35, metadata !35}
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!88 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!91 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{metadata !87, metadata !35, metadata !87, metadata !35, metadata !35, metadata !35, metadata !35}
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!94 = metadata !{i32 786689, metadata !84, metadata !"ref_pic", metadata !29, i32 16777497, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ref_pic] [line 281]
!95 = metadata !{i32 786689, metadata !84, metadata !"orig_pic", metadata !29, i32 33554713, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [orig_pic] [line 281]
!96 = metadata !{i32 786689, metadata !84, metadata !"get_ref_line", metadata !29, i32 50331929, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [get_ref_line] [line 281]
!97 = metadata !{i32 786689, metadata !84, metadata !"blocksize_y", metadata !29, i32 67109145, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blocksize_y] [line 281]
!98 = metadata !{i32 786689, metadata !84, metadata !"blocksize_x", metadata !29, i32 83886361, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blocksize_x] [line 281]
!99 = metadata !{i32 786689, metadata !84, metadata !"blocksize_x4", metadata !29, i32 100663577, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blocksize_x4] [line 281]
!100 = metadata !{i32 786689, metadata !84, metadata !"mcost", metadata !29, i32 117440793, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mcost] [line 281]
!101 = metadata !{i32 786689, metadata !84, metadata !"min_mcost", metadata !29, i32 134218009, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min_mcost] [line 281]
!102 = metadata !{i32 786689, metadata !84, metadata !"cand_x", metadata !29, i32 150995225, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cand_x] [line 281]
!103 = metadata !{i32 786689, metadata !84, metadata !"cand_y", metadata !29, i32 167772441, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cand_y] [line 281]
!104 = metadata !{i32 786688, metadata !84, metadata !"y", metadata !29, i32 283, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 283]
!105 = metadata !{i32 786688, metadata !84, metadata !"x4", metadata !29, i32 283, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x4] [line 283]
!106 = metadata !{i32 786688, metadata !84, metadata !"height", metadata !29, i32 284, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [height] [line 284]
!107 = metadata !{i32 786688, metadata !84, metadata !"orig_line", metadata !29, i32 285, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [orig_line] [line 285]
!108 = metadata !{i32 786688, metadata !84, metadata !"ref_line", metadata !29, i32 285, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_line] [line 285]
!109 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"FastIntegerPelBlockMotionSearch", metadata !"FastIntegerPelBlockMotionSearch", metadata !"", i32 340, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i16**, i16, i32, i32, i32, i32, i16, i16, i16*, i16*, i32, i32, double)* @FastIntegerPelBlockMotionSearch, null, null, metadata !115, i32 353} ; [ DW_TAG_subprogram ] [line 340] [def] [scope 353] [FastIntegerPelBlockMotionSearch]
!110 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{metadata !35, metadata !89, metadata !112, metadata !35, metadata !35, metadata !35, metadata !35, metadata !112, metadata !112, metadata !113, metadata !113, metadata !35, metadata !35, metadata !114}
!112 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!114 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!115 = metadata !{metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !157, metadata !158}
!116 = metadata !{i32 786689, metadata !109, metadata !"orig_pic", metadata !29, i32 16777556, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [orig_pic] [line 340]
!117 = metadata !{i32 786689, metadata !109, metadata !"ref", metadata !29, i32 33554773, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ref] [line 341]
!118 = metadata !{i32 786689, metadata !109, metadata !"list", metadata !29, i32 50331990, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 342]
!119 = metadata !{i32 786689, metadata !109, metadata !"pic_pix_x", metadata !29, i32 67109207, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pic_pix_x] [line 343]
!120 = metadata !{i32 786689, metadata !109, metadata !"pic_pix_y", metadata !29, i32 83886424, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pic_pix_y] [line 344]
!121 = metadata !{i32 786689, metadata !109, metadata !"blocktype", metadata !29, i32 100663641, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blocktype] [line 345]
!122 = metadata !{i32 786689, metadata !109, metadata !"pred_mv_x", metadata !29, i32 117440858, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pred_mv_x] [line 346]
!123 = metadata !{i32 786689, metadata !109, metadata !"pred_mv_y", metadata !29, i32 134218075, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pred_mv_y] [line 347]
!124 = metadata !{i32 786689, metadata !109, metadata !"mv_x", metadata !29, i32 150995292, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mv_x] [line 348]
!125 = metadata !{i32 786689, metadata !109, metadata !"mv_y", metadata !29, i32 167772509, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mv_y] [line 349]
!126 = metadata !{i32 786689, metadata !109, metadata !"search_range", metadata !29, i32 184549726, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [search_range] [line 350]
!127 = metadata !{i32 786689, metadata !109, metadata !"min_mcost", metadata !29, i32 201326943, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min_mcost] [line 351]
!128 = metadata !{i32 786689, metadata !109, metadata !"lambda", metadata !29, i32 218104160, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 352]
!129 = metadata !{i32 786688, metadata !109, metadata !"pos", metadata !29, i32 361, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 361]
!130 = metadata !{i32 786688, metadata !109, metadata !"cand_x", metadata !29, i32 361, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cand_x] [line 361]
!131 = metadata !{i32 786688, metadata !109, metadata !"cand_y", metadata !29, i32 361, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cand_y] [line 361]
!132 = metadata !{i32 786688, metadata !109, metadata !"mcost", metadata !29, i32 361, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcost] [line 361]
!133 = metadata !{i32 786688, metadata !109, metadata !"get_ref_line", metadata !29, i32 362, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [get_ref_line] [line 362]
!134 = metadata !{i32 786688, metadata !109, metadata !"list_offset", metadata !29, i32 363, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list_offset] [line 363]
!135 = metadata !{i32 786688, metadata !109, metadata !"ref_pic", metadata !29, i32 364, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_pic] [line 364]
!136 = metadata !{i32 786688, metadata !109, metadata !"lambda_factor", metadata !29, i32 365, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda_factor] [line 365]
!137 = metadata !{i32 786688, metadata !109, metadata !"mvshift", metadata !29, i32 366, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mvshift] [line 366]
!138 = metadata !{i32 786688, metadata !109, metadata !"blocksize_y", metadata !29, i32 367, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blocksize_y] [line 367]
!139 = metadata !{i32 786688, metadata !109, metadata !"blocksize_x", metadata !29, i32 368, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blocksize_x] [line 368]
!140 = metadata !{i32 786688, metadata !109, metadata !"blocksize_x4", metadata !29, i32 369, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blocksize_x4] [line 369]
!141 = metadata !{i32 786688, metadata !109, metadata !"pred_x", metadata !29, i32 370, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pred_x] [line 370]
!142 = metadata !{i32 786688, metadata !109, metadata !"pred_y", metadata !29, i32 371, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pred_y] [line 371]
!143 = metadata !{i32 786688, metadata !109, metadata !"center_x", metadata !29, i32 372, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [center_x] [line 372]
!144 = metadata !{i32 786688, metadata !109, metadata !"center_y", metadata !29, i32 373, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [center_y] [line 373]
!145 = metadata !{i32 786688, metadata !109, metadata !"best_x", metadata !29, i32 374, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best_x] [line 374]
!146 = metadata !{i32 786688, metadata !109, metadata !"best_y", metadata !29, i32 374, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best_y] [line 374]
!147 = metadata !{i32 786688, metadata !109, metadata !"search_step", metadata !29, i32 375, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [search_step] [line 375]
!148 = metadata !{i32 786688, metadata !109, metadata !"iYMinNow", metadata !29, i32 375, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iYMinNow] [line 375]
!149 = metadata !{i32 786688, metadata !109, metadata !"iXMinNow", metadata !29, i32 375, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iXMinNow] [line 375]
!150 = metadata !{i32 786688, metadata !109, metadata !"i", metadata !29, i32 376, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 376]
!151 = metadata !{i32 786688, metadata !109, metadata !"m", metadata !29, i32 376, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 376]
!152 = metadata !{i32 786688, metadata !109, metadata !"iSADLayer", metadata !29, i32 376, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iSADLayer] [line 376]
!153 = metadata !{i32 786688, metadata !109, metadata !"iAbort", metadata !29, i32 377, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iAbort] [line 377]
!154 = metadata !{i32 786688, metadata !109, metadata !"N_Bframe", metadata !29, i32 378, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N_Bframe] [line 378]
!155 = metadata !{i32 786688, metadata !109, metadata !"betaSec", metadata !29, i32 379, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betaSec] [line 379]
!156 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!157 = metadata !{i32 786688, metadata !109, metadata !"betaThird", metadata !29, i32 379, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [betaThird] [line 379]
!158 = metadata !{i32 786688, metadata !109, metadata !"height", metadata !29, i32 380, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [height] [line 380]
!159 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"AddUpSADQuarter", metadata !"AddUpSADQuarter", metadata !"", i32 648, metadata !160, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32, i32, i32, i32, %struct.storable_picture*, i16**, i32, i32, i32)* @AddUpSADQuarter, null, null, metadata !236, i32 651} ; [ DW_TAG_subprogram ] [line 648] [def] [scope 651] [AddUpSADQuarter]
!160 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!161 = metadata !{metadata !35, metadata !35, metadata !35, metadata !35, metadata !35, metadata !35, metadata !35, metadata !162, metadata !89, metadata !35, metadata !35, metadata !35}
!162 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from StorablePicture]
!163 = metadata !{i32 786454, metadata !164, null, metadata !"StorablePicture", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !165} ; [ DW_TAG_typedef ] [StorablePicture] [line 82, size 0, align 0, offset 0] [from storable_picture]
!164 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/mbuffer.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!165 = metadata !{i32 786451, metadata !164, null, metadata !"storable_picture", i32 21, i64 52672, i64 64, i32 0, i32 0, null, metadata !166, i32 0, null, null} ; [ DW_TAG_structure_type ] [storable_picture] [line 21, size 52672, align 64, offset 0] [from ]
!166 = metadata !{metadata !167, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !182, metadata !183, metadata !184, metadata !185, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !208, metadata !212, metadata !215, metadata !219, metadata !220, metadata !222, metadata !224, metadata !225, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235}
!167 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"structure", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !168} ; [ DW_TAG_member ] [structure] [line 23, size 32, align 32, offset 0] [from PictureStructure]
!168 = metadata !{i32 786454, metadata !164, null, metadata !"PictureStructure", i32 190, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [PictureStructure] [line 190, size 0, align 0, offset 0] [from ]
!169 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"poc", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [poc] [line 25, size 32, align 32, offset 32] [from int]
!170 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"top_poc", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [top_poc] [line 26, size 32, align 32, offset 64] [from int]
!171 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"bottom_poc", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [bottom_poc] [line 27, size 32, align 32, offset 96] [from int]
!172 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"frame_poc", i32 28, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [frame_poc] [line 28, size 32, align 32, offset 128] [from int]
!173 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"order_num", i32 29, i64 32, i64 32, i64 160, i32 0, metadata !35} ; [ DW_TAG_member ] [order_num] [line 29, size 32, align 32, offset 160] [from int]
!174 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"ref_pic_num", i32 30, i64 12672, i64 64, i64 192, i32 0, metadata !175} ; [ DW_TAG_member ] [ref_pic_num] [line 30, size 12672, align 64, offset 192] [from ]
!175 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 12672, i64 64, i32 0, i32 0, metadata !176, metadata !179, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 12672, align 64, offset 0] [from int64]
!176 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !177} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!177 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!178 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!179 = metadata !{metadata !180, metadata !181}
!180 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!181 = metadata !{i32 786465, i64 0, i64 33}      ; [ DW_TAG_subrange_type ] [0, 32]
!182 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"frm_ref_pic_num", i32 31, i64 12672, i64 64, i64 12864, i32 0, metadata !175} ; [ DW_TAG_member ] [frm_ref_pic_num] [line 31, size 12672, align 64, offset 12864] [from ]
!183 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"top_ref_pic_num", i32 32, i64 12672, i64 64, i64 25536, i32 0, metadata !175} ; [ DW_TAG_member ] [top_ref_pic_num] [line 32, size 12672, align 64, offset 25536] [from ]
!184 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"bottom_ref_pic_num", i32 33, i64 12672, i64 64, i64 38208, i32 0, metadata !175} ; [ DW_TAG_member ] [bottom_ref_pic_num] [line 33, size 12672, align 64, offset 38208] [from ]
!185 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"frame_num", i32 34, i64 32, i64 32, i64 50880, i32 0, metadata !186} ; [ DW_TAG_member ] [frame_num] [line 34, size 32, align 32, offset 50880] [from unsigned int]
!186 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!187 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"pic_num", i32 35, i64 32, i64 32, i64 50912, i32 0, metadata !35} ; [ DW_TAG_member ] [pic_num] [line 35, size 32, align 32, offset 50912] [from int]
!188 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"long_term_pic_num", i32 36, i64 32, i64 32, i64 50944, i32 0, metadata !35} ; [ DW_TAG_member ] [long_term_pic_num] [line 36, size 32, align 32, offset 50944] [from int]
!189 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"long_term_frame_idx", i32 37, i64 32, i64 32, i64 50976, i32 0, metadata !35} ; [ DW_TAG_member ] [long_term_frame_idx] [line 37, size 32, align 32, offset 50976] [from int]
!190 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"is_long_term", i32 39, i64 32, i64 32, i64 51008, i32 0, metadata !35} ; [ DW_TAG_member ] [is_long_term] [line 39, size 32, align 32, offset 51008] [from int]
!191 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"used_for_reference", i32 40, i64 32, i64 32, i64 51040, i32 0, metadata !35} ; [ DW_TAG_member ] [used_for_reference] [line 40, size 32, align 32, offset 51040] [from int]
!192 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"is_output", i32 41, i64 32, i64 32, i64 51072, i32 0, metadata !35} ; [ DW_TAG_member ] [is_output] [line 41, size 32, align 32, offset 51072] [from int]
!193 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"non_existing", i32 42, i64 32, i64 32, i64 51104, i32 0, metadata !35} ; [ DW_TAG_member ] [non_existing] [line 42, size 32, align 32, offset 51104] [from int]
!194 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"size_x", i32 44, i64 32, i64 32, i64 51136, i32 0, metadata !35} ; [ DW_TAG_member ] [size_x] [line 44, size 32, align 32, offset 51136] [from int]
!195 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"size_y", i32 44, i64 32, i64 32, i64 51168, i32 0, metadata !35} ; [ DW_TAG_member ] [size_y] [line 44, size 32, align 32, offset 51168] [from int]
!196 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"size_x_cr", i32 44, i64 32, i64 32, i64 51200, i32 0, metadata !35} ; [ DW_TAG_member ] [size_x_cr] [line 44, size 32, align 32, offset 51200] [from int]
!197 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"size_y_cr", i32 44, i64 32, i64 32, i64 51232, i32 0, metadata !35} ; [ DW_TAG_member ] [size_y_cr] [line 44, size 32, align 32, offset 51232] [from int]
!198 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"chroma_vector_adjustment", i32 45, i64 32, i64 32, i64 51264, i32 0, metadata !35} ; [ DW_TAG_member ] [chroma_vector_adjustment] [line 45, size 32, align 32, offset 51264] [from int]
!199 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"coded_frame", i32 46, i64 32, i64 32, i64 51296, i32 0, metadata !35} ; [ DW_TAG_member ] [coded_frame] [line 46, size 32, align 32, offset 51296] [from int]
!200 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"MbaffFrameFlag", i32 47, i64 32, i64 32, i64 51328, i32 0, metadata !35} ; [ DW_TAG_member ] [MbaffFrameFlag] [line 47, size 32, align 32, offset 51328] [from int]
!201 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"imgY", i32 49, i64 64, i64 64, i64 51392, i32 0, metadata !89} ; [ DW_TAG_member ] [imgY] [line 49, size 64, align 64, offset 51392] [from ]
!202 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"imgY_11", i32 50, i64 64, i64 64, i64 51456, i32 0, metadata !87} ; [ DW_TAG_member ] [imgY_11] [line 50, size 64, align 64, offset 51456] [from ]
!203 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"imgY_11_w", i32 51, i64 64, i64 64, i64 51520, i32 0, metadata !87} ; [ DW_TAG_member ] [imgY_11_w] [line 51, size 64, align 64, offset 51520] [from ]
!204 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"imgY_ups", i32 52, i64 64, i64 64, i64 51584, i32 0, metadata !89} ; [ DW_TAG_member ] [imgY_ups] [line 52, size 64, align 64, offset 51584] [from ]
!205 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"imgY_ups_w", i32 53, i64 64, i64 64, i64 51648, i32 0, metadata !89} ; [ DW_TAG_member ] [imgY_ups_w] [line 53, size 64, align 64, offset 51648] [from ]
!206 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"imgUV", i32 54, i64 64, i64 64, i64 51712, i32 0, metadata !207} ; [ DW_TAG_member ] [imgUV] [line 54, size 64, align 64, offset 51712] [from ]
!207 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!208 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"mb_field", i32 56, i64 64, i64 64, i64 51776, i32 0, metadata !209} ; [ DW_TAG_member ] [mb_field] [line 56, size 64, align 64, offset 51776] [from ]
!209 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !210} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!210 = metadata !{i32 786454, metadata !9, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !211} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!211 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!212 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"ref_idx", i32 58, i64 64, i64 64, i64 51840, i32 0, metadata !213} ; [ DW_TAG_member ] [ref_idx] [line 58, size 64, align 64, offset 51840] [from ]
!213 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!215 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"ref_pic_id", i32 60, i64 64, i64 64, i64 51904, i32 0, metadata !216} ; [ DW_TAG_member ] [ref_pic_id] [line 60, size 64, align 64, offset 51904] [from ]
!216 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!218 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int64]
!219 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"ref_id", i32 63, i64 64, i64 64, i64 51968, i32 0, metadata !216} ; [ DW_TAG_member ] [ref_id] [line 63, size 64, align 64, offset 51968] [from ]
!220 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"mv", i32 66, i64 64, i64 64, i64 52032, i32 0, metadata !221} ; [ DW_TAG_member ] [mv] [line 66, size 64, align 64, offset 52032] [from ]
!221 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !213} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!222 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"moving_block", i32 68, i64 64, i64 64, i64 52096, i32 0, metadata !223} ; [ DW_TAG_member ] [moving_block] [line 68, size 64, align 64, offset 52096] [from ]
!223 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !209} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!224 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"field_frame", i32 69, i64 64, i64 64, i64 52160, i32 0, metadata !223} ; [ DW_TAG_member ] [field_frame] [line 69, size 64, align 64, offset 52160] [from ]
!225 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"top_field", i32 71, i64 64, i64 64, i64 52224, i32 0, metadata !226} ; [ DW_TAG_member ] [top_field] [line 71, size 64, align 64, offset 52224] [from ]
!226 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from storable_picture]
!227 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"bottom_field", i32 72, i64 64, i64 64, i64 52288, i32 0, metadata !226} ; [ DW_TAG_member ] [bottom_field] [line 72, size 64, align 64, offset 52288] [from ]
!228 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"frame", i32 73, i64 64, i64 64, i64 52352, i32 0, metadata !226} ; [ DW_TAG_member ] [frame] [line 73, size 64, align 64, offset 52352] [from ]
!229 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"chroma_format_idc", i32 75, i64 32, i64 32, i64 52416, i32 0, metadata !35} ; [ DW_TAG_member ] [chroma_format_idc] [line 75, size 32, align 32, offset 52416] [from int]
!230 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"frame_mbs_only_flag", i32 76, i64 32, i64 32, i64 52448, i32 0, metadata !35} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 76, size 32, align 32, offset 52448] [from int]
!231 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"frame_cropping_flag", i32 77, i64 32, i64 32, i64 52480, i32 0, metadata !35} ; [ DW_TAG_member ] [frame_cropping_flag] [line 77, size 32, align 32, offset 52480] [from int]
!232 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"frame_cropping_rect_left_offset", i32 78, i64 32, i64 32, i64 52512, i32 0, metadata !35} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 78, size 32, align 32, offset 52512] [from int]
!233 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"frame_cropping_rect_right_offset", i32 79, i64 32, i64 32, i64 52544, i32 0, metadata !35} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 79, size 32, align 32, offset 52544] [from int]
!234 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"frame_cropping_rect_top_offset", i32 80, i64 32, i64 32, i64 52576, i32 0, metadata !35} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 80, size 32, align 32, offset 52576] [from int]
!235 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"frame_cropping_rect_bottom_offset", i32 81, i64 32, i64 32, i64 52608, i32 0, metadata !35} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 81, size 32, align 32, offset 52608] [from int]
!236 = metadata !{metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !267, metadata !268, metadata !269}
!237 = metadata !{i32 786689, metadata !159, metadata !"pic_pix_x", metadata !29, i32 16777864, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pic_pix_x] [line 648]
!238 = metadata !{i32 786689, metadata !159, metadata !"pic_pix_y", metadata !29, i32 33555080, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pic_pix_y] [line 648]
!239 = metadata !{i32 786689, metadata !159, metadata !"blocksize_x", metadata !29, i32 50332296, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blocksize_x] [line 648]
!240 = metadata !{i32 786689, metadata !159, metadata !"blocksize_y", metadata !29, i32 67109512, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blocksize_y] [line 648]
!241 = metadata !{i32 786689, metadata !159, metadata !"cand_mv_x", metadata !29, i32 83886729, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cand_mv_x] [line 649]
!242 = metadata !{i32 786689, metadata !159, metadata !"cand_mv_y", metadata !29, i32 100663945, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cand_mv_y] [line 649]
!243 = metadata !{i32 786689, metadata !159, metadata !"ref_picture", metadata !29, i32 117441161, metadata !162, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ref_picture] [line 649]
!244 = metadata !{i32 786689, metadata !159, metadata !"orig_pic", metadata !29, i32 134218377, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [orig_pic] [line 649]
!245 = metadata !{i32 786689, metadata !159, metadata !"Mvmcost", metadata !29, i32 150995594, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Mvmcost] [line 650]
!246 = metadata !{i32 786689, metadata !159, metadata !"min_mcost", metadata !29, i32 167772810, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min_mcost] [line 650]
!247 = metadata !{i32 786689, metadata !159, metadata !"useABT", metadata !29, i32 184550026, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [useABT] [line 650]
!248 = metadata !{i32 786688, metadata !159, metadata !"abort_search", metadata !29, i32 652, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [abort_search] [line 652]
!249 = metadata !{i32 786688, metadata !159, metadata !"y0", metadata !29, i32 652, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y0] [line 652]
!250 = metadata !{i32 786688, metadata !159, metadata !"x0", metadata !29, i32 652, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x0] [line 652]
!251 = metadata !{i32 786688, metadata !159, metadata !"rx0", metadata !29, i32 652, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rx0] [line 652]
!252 = metadata !{i32 786688, metadata !159, metadata !"ry0", metadata !29, i32 652, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ry0] [line 652]
!253 = metadata !{i32 786688, metadata !159, metadata !"ry", metadata !29, i32 652, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ry] [line 652]
!254 = metadata !{i32 786688, metadata !159, metadata !"orig_line", metadata !29, i32 653, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [orig_line] [line 653]
!255 = metadata !{i32 786688, metadata !159, metadata !"diff", metadata !29, i32 654, metadata !256, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff] [line 654]
!256 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !35, metadata !257, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!257 = metadata !{metadata !258}
!258 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!259 = metadata !{i32 786688, metadata !159, metadata !"d", metadata !29, i32 654, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 654]
!260 = metadata !{i32 786688, metadata !159, metadata !"mcost", metadata !29, i32 655, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcost] [line 655]
!261 = metadata !{i32 786688, metadata !159, metadata !"yy", metadata !29, i32 656, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yy] [line 656]
!262 = metadata !{i32 786688, metadata !159, metadata !"kk", metadata !29, i32 656, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 656]
!263 = metadata !{i32 786688, metadata !159, metadata !"xx", metadata !29, i32 656, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx] [line 656]
!264 = metadata !{i32 786688, metadata !159, metadata !"curr_diff", metadata !29, i32 657, metadata !265, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr_diff] [line 657]
!265 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !35, metadata !266, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!266 = metadata !{metadata !258, metadata !258}
!267 = metadata !{i32 786688, metadata !159, metadata !"ref_pic", metadata !29, i32 659, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_pic] [line 659]
!268 = metadata !{i32 786688, metadata !159, metadata !"img_width", metadata !29, i32 660, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [img_width] [line 660]
!269 = metadata !{i32 786688, metadata !159, metadata !"img_height", metadata !29, i32 661, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [img_height] [line 661]
!270 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"FastSubPelBlockMotionSearch", metadata !"FastSubPelBlockMotionSearch", metadata !"", i32 719, metadata !271, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i16**, i16, i32, i32, i32, i32, i16, i16, i16*, i16*, i32, i32, i32, double, i32)* @FastSubPelBlockMotionSearch, null, null, metadata !273, i32 734} ; [ DW_TAG_subprogram ] [line 719] [def] [scope 734] [FastSubPelBlockMotionSearch]
!271 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!272 = metadata !{metadata !35, metadata !89, metadata !112, metadata !35, metadata !35, metadata !35, metadata !35, metadata !112, metadata !112, metadata !113, metadata !113, metadata !35, metadata !35, metadata !35, metadata !114, metadata !35}
!273 = metadata !{metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316}
!274 = metadata !{i32 786689, metadata !270, metadata !"orig_pic", metadata !29, i32 16777935, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [orig_pic] [line 719]
!275 = metadata !{i32 786689, metadata !270, metadata !"ref", metadata !29, i32 33555152, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ref] [line 720]
!276 = metadata !{i32 786689, metadata !270, metadata !"list", metadata !29, i32 50332369, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 721]
!277 = metadata !{i32 786689, metadata !270, metadata !"pic_pix_x", metadata !29, i32 67109586, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pic_pix_x] [line 722]
!278 = metadata !{i32 786689, metadata !270, metadata !"pic_pix_y", metadata !29, i32 83886803, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pic_pix_y] [line 723]
!279 = metadata !{i32 786689, metadata !270, metadata !"blocktype", metadata !29, i32 100664020, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blocktype] [line 724]
!280 = metadata !{i32 786689, metadata !270, metadata !"pred_mv_x", metadata !29, i32 117441237, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pred_mv_x] [line 725]
!281 = metadata !{i32 786689, metadata !270, metadata !"pred_mv_y", metadata !29, i32 134218454, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pred_mv_y] [line 726]
!282 = metadata !{i32 786689, metadata !270, metadata !"mv_x", metadata !29, i32 150995671, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mv_x] [line 727]
!283 = metadata !{i32 786689, metadata !270, metadata !"mv_y", metadata !29, i32 167772888, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mv_y] [line 728]
!284 = metadata !{i32 786689, metadata !270, metadata !"search_pos2", metadata !29, i32 184550105, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [search_pos2] [line 729]
!285 = metadata !{i32 786689, metadata !270, metadata !"search_pos4", metadata !29, i32 201327322, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [search_pos4] [line 730]
!286 = metadata !{i32 786689, metadata !270, metadata !"min_mcost", metadata !29, i32 218104539, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min_mcost] [line 731]
!287 = metadata !{i32 786689, metadata !270, metadata !"lambda", metadata !29, i32 234881756, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 732]
!288 = metadata !{i32 786689, metadata !270, metadata !"useABT", metadata !29, i32 251658973, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [useABT] [line 733]
!289 = metadata !{i32 786688, metadata !270, metadata !"mcost", metadata !29, i32 737, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcost] [line 737]
!290 = metadata !{i32 786688, metadata !270, metadata !"cand_mv_x", metadata !29, i32 738, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cand_mv_x] [line 738]
!291 = metadata !{i32 786688, metadata !270, metadata !"cand_mv_y", metadata !29, i32 738, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cand_mv_y] [line 738]
!292 = metadata !{i32 786688, metadata !270, metadata !"list_offset", metadata !29, i32 740, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list_offset] [line 740]
!293 = metadata !{i32 786688, metadata !270, metadata !"ref_picture", metadata !29, i32 741, metadata !162, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref_picture] [line 741]
!294 = metadata !{i32 786688, metadata !270, metadata !"lambda_factor", metadata !29, i32 743, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda_factor] [line 743]
!295 = metadata !{i32 786688, metadata !270, metadata !"mv_shift", metadata !29, i32 744, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mv_shift] [line 744]
!296 = metadata !{i32 786688, metadata !270, metadata !"blocksize_x", metadata !29, i32 745, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blocksize_x] [line 745]
!297 = metadata !{i32 786688, metadata !270, metadata !"blocksize_y", metadata !29, i32 746, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blocksize_y] [line 746]
!298 = metadata !{i32 786688, metadata !270, metadata !"pic4_pix_x", metadata !29, i32 747, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic4_pix_x] [line 747]
!299 = metadata !{i32 786688, metadata !270, metadata !"pic4_pix_y", metadata !29, i32 748, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic4_pix_y] [line 748]
!300 = metadata !{i32 786688, metadata !270, metadata !"max_pos_x4", metadata !29, i32 749, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_pos_x4] [line 749]
!301 = metadata !{i32 786688, metadata !270, metadata !"max_pos_y4", metadata !29, i32 750, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_pos_y4] [line 750]
!302 = metadata !{i32 786688, metadata !270, metadata !"search_range_dynamic", metadata !29, i32 752, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [search_range_dynamic] [line 752]
!303 = metadata !{i32 786688, metadata !270, metadata !"iXMinNow", metadata !29, i32 752, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iXMinNow] [line 752]
!304 = metadata !{i32 786688, metadata !270, metadata !"iYMinNow", metadata !29, i32 752, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iYMinNow] [line 752]
!305 = metadata !{i32 786688, metadata !270, metadata !"i", metadata !29, i32 752, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 752]
!306 = metadata !{i32 786688, metadata !270, metadata !"iSADLayer", metadata !29, i32 753, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iSADLayer] [line 753]
!307 = metadata !{i32 786688, metadata !270, metadata !"m", metadata !29, i32 753, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 753]
!308 = metadata !{i32 786688, metadata !270, metadata !"currmv_x", metadata !29, i32 753, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currmv_x] [line 753]
!309 = metadata !{i32 786688, metadata !270, metadata !"currmv_y", metadata !29, i32 753, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currmv_y] [line 753]
!310 = metadata !{i32 786688, metadata !270, metadata !"iCurrSearchRange", metadata !29, i32 753, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iCurrSearchRange] [line 753]
!311 = metadata !{i32 786688, metadata !270, metadata !"pred_frac_mv_x", metadata !29, i32 754, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pred_frac_mv_x] [line 754]
!312 = metadata !{i32 786688, metadata !270, metadata !"pred_frac_mv_y", metadata !29, i32 754, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pred_frac_mv_y] [line 754]
!313 = metadata !{i32 786688, metadata !270, metadata !"abort_search", metadata !29, i32 754, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [abort_search] [line 754]
!314 = metadata !{i32 786688, metadata !270, metadata !"mv_cost", metadata !29, i32 755, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mv_cost] [line 755]
!315 = metadata !{i32 786688, metadata !270, metadata !"pred_frac_up_mv_x", metadata !29, i32 757, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pred_frac_up_mv_x] [line 757]
!316 = metadata !{i32 786688, metadata !270, metadata !"pred_frac_up_mv_y", metadata !29, i32 757, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pred_frac_up_mv_y] [line 757]
!317 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"decide_intrabk_SAD", metadata !"decide_intrabk_SAD", metadata !"", i32 873, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @decide_intrabk_SAD, null, null, metadata !26, i32 874} ; [ DW_TAG_subprogram ] [line 873] [def] [scope 874] [decide_intrabk_SAD]
!318 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"skip_intrabk_SAD", metadata !"skip_intrabk_SAD", metadata !"", i32 897, metadata !319, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @skip_intrabk_SAD, null, null, metadata !321, i32 898} ; [ DW_TAG_subprogram ] [line 897] [def] [scope 898] [skip_intrabk_SAD]
!319 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!320 = metadata !{null, metadata !35, metadata !35}
!321 = metadata !{metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327}
!322 = metadata !{i32 786689, metadata !318, metadata !"best_mode", metadata !29, i32 16778113, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [best_mode] [line 897]
!323 = metadata !{i32 786689, metadata !318, metadata !"ref_max", metadata !29, i32 33555329, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ref_max] [line 897]
!324 = metadata !{i32 786688, metadata !318, metadata !"i", metadata !29, i32 899, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 899]
!325 = metadata !{i32 786688, metadata !318, metadata !"j", metadata !29, i32 899, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 899]
!326 = metadata !{i32 786688, metadata !318, metadata !"k", metadata !29, i32 899, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 899]
!327 = metadata !{i32 786688, metadata !318, metadata !"ref", metadata !29, i32 899, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref] [line 899]
!328 = metadata !{metadata !329, metadata !333, metadata !334, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !578, metadata !673, metadata !674, metadata !675, metadata !676, metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !707, metadata !708, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713, metadata !716, metadata !719, metadata !720, metadata !721, metadata !722, metadata !725, metadata !726, metadata !737, metadata !772, metadata !773, metadata !774, metadata !775, metadata !776, metadata !830, metadata !831, metadata !832, metadata !833, metadata !834, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !847, metadata !848, metadata !849, metadata !850, metadata !851, metadata !852, metadata !853, metadata !854, metadata !856, metadata !857, metadata !858, metadata !859, metadata !861, metadata !862, metadata !863, metadata !864, metadata !865, metadata !866, metadata !867, metadata !871}
!329 = metadata !{i32 786484, i32 0, metadata !109, metadata !"Diamond_x", metadata !"Diamond_x", metadata !"", metadata !29, i32 354, metadata !330, i32 1, i32 1, [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, null} ; [ DW_TAG_variable ] [Diamond_x] [line 354] [local] [def]
!330 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !35, metadata !331, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!331 = metadata !{metadata !332}
!332 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!333 = metadata !{i32 786484, i32 0, metadata !109, metadata !"Diamond_y", metadata !"Diamond_y", metadata !"", metadata !29, i32 355, metadata !330, i32 1, i32 1, [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, null} ; [ DW_TAG_variable ] [Diamond_y] [line 355] [local] [def]
!334 = metadata !{i32 786484, i32 0, metadata !109, metadata !"Hexagon_x", metadata !"Hexagon_x", metadata !"", metadata !29, i32 356, metadata !335, i32 1, i32 1, [6 x i32]* @FastIntegerPelBlockMotionSearch.Hexagon_x, null} ; [ DW_TAG_variable ] [Hexagon_x] [line 356] [local] [def]
!335 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !35, metadata !336, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!336 = metadata !{metadata !180}
!337 = metadata !{i32 786484, i32 0, metadata !109, metadata !"Hexagon_y", metadata !"Hexagon_y", metadata !"", metadata !29, i32 357, metadata !335, i32 1, i32 1, [6 x i32]* @FastIntegerPelBlockMotionSearch.Hexagon_y, null} ; [ DW_TAG_variable ] [Hexagon_y] [line 357] [local] [def]
!338 = metadata !{i32 786484, i32 0, metadata !109, metadata !"Big_Hexagon_x", metadata !"Big_Hexagon_x", metadata !"", metadata !29, i32 358, metadata !256, i32 1, i32 1, [16 x i32]* @FastIntegerPelBlockMotionSearch.Big_Hexagon_x, null} ; [ DW_TAG_variable ] [Big_Hexagon_x] [line 358] [local] [def]
!339 = metadata !{i32 786484, i32 0, metadata !109, metadata !"Big_Hexagon_y", metadata !"Big_Hexagon_y", metadata !"", metadata !29, i32 359, metadata !256, i32 1, i32 1, [16 x i32]* @FastIntegerPelBlockMotionSearch.Big_Hexagon_y, null} ; [ DW_TAG_variable ] [Big_Hexagon_y] [line 359] [local] [def]
!340 = metadata !{i32 786484, i32 0, metadata !270, metadata !"Diamond_x", metadata !"Diamond_x", metadata !"", metadata !29, i32 735, metadata !330, i32 1, i32 1, [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_x, null} ; [ DW_TAG_variable ] [Diamond_x] [line 735] [local] [def]
!341 = metadata !{i32 786484, i32 0, metadata !270, metadata !"Diamond_y", metadata !"Diamond_y", metadata !"", metadata !29, i32 736, metadata !330, i32 1, i32 1, [4 x i32]* @FastSubPelBlockMotionSearch.Diamond_y, null} ; [ DW_TAG_variable ] [Diamond_y] [line 736] [local] [def]
!342 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !343, i32 558, metadata !344, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!343 = metadata !{i32 786473, metadata !9}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!344 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !345} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!345 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !346} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!346 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !347, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!347 = metadata !{metadata !348, metadata !349, metadata !350, metadata !524, metadata !525, metadata !526, metadata !527}
!348 = metadata !{i32 786445, metadata !9, metadata !346, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!349 = metadata !{i32 786445, metadata !9, metadata !346, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!350 = metadata !{i32 786445, metadata !9, metadata !346, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !351} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!351 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !352, metadata !522, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!352 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !353} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!353 = metadata !{i32 786454, metadata !9, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !354} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!354 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !355, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!355 = metadata !{metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !435, metadata !470, metadata !497, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !519}
!356 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!357 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!358 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!359 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!360 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!361 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !35} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!362 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !363} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!363 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !364} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!364 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !365} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!365 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !366, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!366 = metadata !{metadata !367, metadata !383, metadata !407}
!367 = metadata !{i32 786445, metadata !9, metadata !365, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !368} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!368 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !369} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!369 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !370} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!370 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !371, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!371 = metadata !{metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382}
!372 = metadata !{i32 786445, metadata !9, metadata !370, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!373 = metadata !{i32 786445, metadata !9, metadata !370, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!374 = metadata !{i32 786445, metadata !9, metadata !370, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !210} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!375 = metadata !{i32 786445, metadata !9, metadata !370, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!376 = metadata !{i32 786445, metadata !9, metadata !370, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!377 = metadata !{i32 786445, metadata !9, metadata !370, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !210} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!378 = metadata !{i32 786445, metadata !9, metadata !370, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !210} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!379 = metadata !{i32 786445, metadata !9, metadata !370, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!380 = metadata !{i32 786445, metadata !9, metadata !370, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !35} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!381 = metadata !{i32 786445, metadata !9, metadata !370, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !209} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!382 = metadata !{i32 786445, metadata !9, metadata !370, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !35} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!383 = metadata !{i32 786445, metadata !9, metadata !365, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !384} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!384 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !385} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!385 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !386, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!386 = metadata !{metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406}
!387 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !186} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!388 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !186} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!389 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !186} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!390 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !186} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!391 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !186} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!392 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !209} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!393 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !48} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!394 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !186} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!395 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !186} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!396 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !186} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!397 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !186} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!398 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !186} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!399 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !209} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!400 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !48} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!401 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !35} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!402 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !35} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!403 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !35} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!404 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !35} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!405 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !35} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!406 = metadata !{i32 786445, metadata !9, metadata !385, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !35} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!407 = metadata !{i32 786445, metadata !9, metadata !365, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !408} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!408 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !409} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!409 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!410 = metadata !{metadata !35, metadata !411, metadata !434}
!411 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !412} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!412 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !413} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!413 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !414, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!414 = metadata !{metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !427}
!415 = metadata !{i32 786445, metadata !9, metadata !413, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!416 = metadata !{i32 786445, metadata !9, metadata !413, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!417 = metadata !{i32 786445, metadata !9, metadata !413, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!418 = metadata !{i32 786445, metadata !9, metadata !413, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!419 = metadata !{i32 786445, metadata !9, metadata !413, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!420 = metadata !{i32 786445, metadata !9, metadata !413, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !186} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!421 = metadata !{i32 786445, metadata !9, metadata !413, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!422 = metadata !{i32 786445, metadata !9, metadata !413, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !35} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!423 = metadata !{i32 786445, metadata !9, metadata !413, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !424} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!424 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !425} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!425 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!426 = metadata !{null, metadata !35, metadata !35, metadata !48, metadata !48}
!427 = metadata !{i32 786445, metadata !9, metadata !413, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !428} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!428 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !429} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!429 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!430 = metadata !{null, metadata !431, metadata !432}
!431 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !413} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!432 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !433} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!433 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !384} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!434 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !365} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!435 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !436} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!436 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !437} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!437 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !438} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!438 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !439, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!439 = metadata !{metadata !440, metadata !452, metadata !457, metadata !461, metadata !464, metadata !466, metadata !467}
!440 = metadata !{i32 786445, metadata !9, metadata !438, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !441} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!441 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !442, metadata !449, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!442 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !443} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!443 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !444, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!444 = metadata !{metadata !445, metadata !446, metadata !447}
!445 = metadata !{i32 786445, metadata !9, metadata !443, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!446 = metadata !{i32 786445, metadata !9, metadata !443, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !211} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!447 = metadata !{i32 786445, metadata !9, metadata !443, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !448} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!448 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!449 = metadata !{metadata !450, metadata !451}
!450 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!451 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!452 = metadata !{i32 786445, metadata !9, metadata !438, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !453} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!453 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !442, metadata !454, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!454 = metadata !{metadata !455, metadata !456}
!455 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!456 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!457 = metadata !{i32 786445, metadata !9, metadata !438, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !458} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!458 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !442, metadata !459, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!459 = metadata !{metadata !455, metadata !460}
!460 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!461 = metadata !{i32 786445, metadata !9, metadata !438, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !462} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!462 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !442, metadata !463, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!463 = metadata !{metadata !455, metadata !180}
!464 = metadata !{i32 786445, metadata !9, metadata !438, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !465} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!465 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !442, metadata !331, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!466 = metadata !{i32 786445, metadata !9, metadata !438, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !465} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!467 = metadata !{i32 786445, metadata !9, metadata !438, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !468} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!468 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !442, metadata !469, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!469 = metadata !{metadata !450}
!470 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !471} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!471 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !472} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!472 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !473} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!473 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !474, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!474 = metadata !{metadata !475, metadata !478, metadata !479, metadata !482, metadata !485, metadata !489, metadata !490, metadata !494, metadata !495, metadata !496}
!475 = metadata !{i32 786445, metadata !9, metadata !473, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !476} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!476 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !442, metadata !477, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!477 = metadata !{metadata !455}
!478 = metadata !{i32 786445, metadata !9, metadata !473, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !465} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!479 = metadata !{i32 786445, metadata !9, metadata !473, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !480} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!480 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !442, metadata !481, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!481 = metadata !{metadata !450, metadata !332}
!482 = metadata !{i32 786445, metadata !9, metadata !473, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !483} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!483 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !442, metadata !484, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!484 = metadata !{metadata !460, metadata !332}
!485 = metadata !{i32 786445, metadata !9, metadata !473, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !486} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!486 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !442, metadata !487, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!487 = metadata !{metadata !460, metadata !488}
!488 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!489 = metadata !{i32 786445, metadata !9, metadata !473, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !486} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!490 = metadata !{i32 786445, metadata !9, metadata !473, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !491} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!491 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !442, metadata !492, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!492 = metadata !{metadata !460, metadata !493}
!493 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!494 = metadata !{i32 786445, metadata !9, metadata !473, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !491} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!495 = metadata !{i32 786445, metadata !9, metadata !473, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !486} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!496 = metadata !{i32 786445, metadata !9, metadata !473, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !486} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!497 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !498} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!498 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !499} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!499 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !500} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!500 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !501, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!501 = metadata !{metadata !502, metadata !503, metadata !504}
!502 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!503 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!504 = metadata !{i32 786445, metadata !9, metadata !500, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !505} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!505 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !500} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!506 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !35} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!507 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !48} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!508 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !48} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!509 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !48} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!510 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !35} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!511 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !48} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!512 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !48} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!513 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !48} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!514 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !515} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!515 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !516} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!516 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !517, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!517 = metadata !{metadata !518, metadata !35}
!518 = metadata !{i32 786454, metadata !9, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!519 = metadata !{i32 786445, metadata !9, metadata !354, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !520} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!520 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !35, metadata !521, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!521 = metadata !{metadata !450, metadata !455}
!522 = metadata !{metadata !523}
!523 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!524 = metadata !{i32 786445, metadata !9, metadata !346, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !35} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!525 = metadata !{i32 786445, metadata !9, metadata !346, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !156} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!526 = metadata !{i32 786445, metadata !9, metadata !346, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !156} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!527 = metadata !{i32 786445, metadata !9, metadata !346, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !156} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!528 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !343, i32 559, metadata !344, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!529 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !343, i32 560, metadata !344, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!530 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !343, i32 561, metadata !344, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!531 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !343, i32 562, metadata !344, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!532 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !343, i32 565, metadata !89, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!533 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !343, i32 566, metadata !207, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!534 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !343, i32 567, metadata !47, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!535 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !343, i32 569, metadata !186, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!536 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !343, i32 570, metadata !186, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!537 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !343, i32 572, metadata !35, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!538 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !343, i32 572, metadata !35, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!539 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !343, i32 573, metadata !540, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!540 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !541} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!541 = metadata !{i32 786454, metadata !9, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !542} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!542 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !543, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!543 = metadata !{metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !554, metadata !555, metadata !556, metadata !557, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577}
!544 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !518} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!545 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !186} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!546 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !186} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!547 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !518} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!548 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !518} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!549 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !518} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!550 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !551} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!551 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !35, metadata !552, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!552 = metadata !{metadata !553}
!553 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!554 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !518} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!555 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !186} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!556 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !186} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!557 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !558} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!558 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !186, metadata !552, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!559 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !558} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!560 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !558} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!561 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !518} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!562 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !186} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!563 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !186} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!564 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !209} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!565 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !35} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!566 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !35} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!567 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !518} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!568 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !186} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!569 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !35} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!570 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !35} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!571 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !35} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!572 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !35} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!573 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !35} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!574 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !518} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!575 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !518} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!576 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !518} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!577 = metadata !{i32 786445, metadata !4, metadata !542, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !518} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!578 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !343, i32 574, metadata !579, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!579 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !580} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!580 = metadata !{i32 786454, metadata !9, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !581} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!581 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !582, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!582 = metadata !{metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620}
!583 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !518} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!584 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !186} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!585 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !518} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!586 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !518} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!587 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !518} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!588 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !518} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!589 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !186} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!590 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !186} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!591 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !186} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!592 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !518} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!593 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !551} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!594 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !186} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!595 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !186} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!596 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !186} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!597 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !186} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!598 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !186} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!599 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !518} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!600 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !35} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!601 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !35} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!602 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !186} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!603 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !604} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!604 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !35, metadata !605, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!605 = metadata !{metadata !606}
!606 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!607 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !186} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!608 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !518} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!609 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !186} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!610 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !186} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!611 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !518} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!612 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !518} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!613 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !518} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!614 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !518} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!615 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !186} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!616 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !186} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!617 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !186} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!618 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !186} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!619 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !518} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!620 = metadata !{i32 786445, metadata !4, metadata !581, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !621} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!621 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !622} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!622 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !623, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!623 = metadata !{metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644, metadata !645, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672}
!624 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !518} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!625 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !186} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!626 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !186} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!627 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !186} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!628 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !518} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!629 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !518} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!630 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !518} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!631 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !186} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!632 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !518} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!633 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !518} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!634 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !186} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!635 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !186} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!636 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !186} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!637 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !518} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!638 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !186} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!639 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !186} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!640 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !518} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!641 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !186} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!642 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !186} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!643 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !518} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!644 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !518} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!645 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !646} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!646 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !647} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!647 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !648, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!648 = metadata !{metadata !649, metadata !650, metadata !651, metadata !652, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !661}
!649 = metadata !{i32 786445, metadata !4, metadata !647, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !186} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!650 = metadata !{i32 786445, metadata !4, metadata !647, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !186} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!651 = metadata !{i32 786445, metadata !4, metadata !647, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !186} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!652 = metadata !{i32 786445, metadata !4, metadata !647, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !653} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!653 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !186, metadata !654, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!654 = metadata !{metadata !655}
!655 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!656 = metadata !{i32 786445, metadata !4, metadata !647, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !653} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!657 = metadata !{i32 786445, metadata !4, metadata !647, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !653} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!658 = metadata !{i32 786445, metadata !4, metadata !647, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !186} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!659 = metadata !{i32 786445, metadata !4, metadata !647, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !186} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!660 = metadata !{i32 786445, metadata !4, metadata !647, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !186} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!661 = metadata !{i32 786445, metadata !4, metadata !647, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !186} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!662 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !518} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!663 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !646} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!664 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !518} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!665 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !518} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!666 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !518} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!667 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !186} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!668 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !186} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!669 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !186} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!670 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !186} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!671 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !186} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!672 = metadata !{i32 786445, metadata !4, metadata !622, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !186} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!673 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !343, i32 578, metadata !35, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!674 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !343, i32 579, metadata !35, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!675 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !343, i32 583, metadata !46, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!676 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !343, i32 584, metadata !46, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!677 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !343, i32 585, metadata !45, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!678 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !343, i32 586, metadata !35, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!679 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !343, i32 587, metadata !35, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!680 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !343, i32 588, metadata !35, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!681 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !343, i32 589, metadata !35, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!682 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !343, i32 592, metadata !89, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!683 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !343, i32 593, metadata !89, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!684 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !343, i32 595, metadata !207, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!685 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !343, i32 596, metadata !207, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!686 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !343, i32 598, metadata !89, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!687 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !343, i32 599, metadata !207, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!688 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !343, i32 601, metadata !89, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!689 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !343, i32 602, metadata !207, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!690 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !343, i32 604, metadata !213, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!691 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !343, i32 605, metadata !214, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!692 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !343, i32 608, metadata !223, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!693 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !343, i32 609, metadata !223, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!694 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !343, i32 610, metadata !35, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!695 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !343, i32 612, metadata !35, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!696 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !343, i32 612, metadata !35, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!697 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !343, i32 612, metadata !35, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!698 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !343, i32 613, metadata !35, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!699 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !343, i32 613, metadata !35, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!700 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !343, i32 613, metadata !35, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!701 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !343, i32 614, metadata !35, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!702 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !343, i32 617, metadata !703, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!703 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !704, metadata !705, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!704 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!705 = metadata !{metadata !706}
!706 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!707 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !343, i32 620, metadata !265, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!708 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !343, i32 620, metadata !265, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!709 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !343, i32 620, metadata !265, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!710 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !343, i32 621, metadata !265, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!711 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !343, i32 621, metadata !265, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!712 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !343, i32 621, metadata !265, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!713 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !343, i32 622, metadata !714, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!714 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !35, metadata !715, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!715 = metadata !{metadata !450, metadata !258, metadata !258}
!716 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !343, i32 623, metadata !717, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!717 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !35, metadata !718, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!718 = metadata !{metadata !455, metadata !332, metadata !332}
!719 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !343, i32 623, metadata !717, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!720 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !343, i32 624, metadata !717, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!721 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !343, i32 624, metadata !717, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!722 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !343, i32 625, metadata !723, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!723 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !35, metadata !724, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!724 = metadata !{metadata !332, metadata !332}
!725 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !343, i32 625, metadata !256, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!726 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !343, i32 1201, metadata !727, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!727 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !728} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!728 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !729} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!729 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !730, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!730 = metadata !{metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736}
!731 = metadata !{i32 786445, metadata !9, metadata !729, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!732 = metadata !{i32 786445, metadata !9, metadata !729, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!733 = metadata !{i32 786445, metadata !9, metadata !729, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!734 = metadata !{i32 786445, metadata !9, metadata !729, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!735 = metadata !{i32 786445, metadata !9, metadata !729, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!736 = metadata !{i32 786445, metadata !9, metadata !729, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !35} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!737 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !343, i32 1202, metadata !738, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!738 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !739} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!739 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !740} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!740 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !741, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!741 = metadata !{metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !757, metadata !760, metadata !761, metadata !762, metadata !763, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771}
!742 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!743 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !265} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!744 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !265} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!745 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !265} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!746 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !45} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!747 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !46} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!748 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !35} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!749 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !35} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!750 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !330} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!751 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !330} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!752 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !47} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!753 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !256} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!754 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !35} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!755 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !176} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!756 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !35} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!757 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !758} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!758 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !759} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!759 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !221} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!760 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !758} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!761 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !758} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!762 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !758} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!763 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !764} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!764 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !112, metadata !718, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!765 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !35} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!766 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !35} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!767 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !35} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!768 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !35} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!769 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !35} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!770 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !35} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!771 = metadata !{i32 786445, metadata !9, metadata !740, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !35} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!772 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !343, i32 1203, metadata !739, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!773 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !343, i32 1203, metadata !739, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!774 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !343, i32 1204, metadata !739, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!775 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !343, i32 1204, metadata !739, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!776 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !343, i32 1230, metadata !777, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!777 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !778} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!778 = metadata !{i32 786454, metadata !9, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !779} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!779 = metadata !{i32 786451, metadata !780, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !781, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!780 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!781 = metadata !{metadata !782, metadata !783, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !803, metadata !804, metadata !805, metadata !806, metadata !808, metadata !809, metadata !811, metadata !815, metadata !817, metadata !819, metadata !820, metadata !821, metadata !822, metadata !823, metadata !825, metadata !826}
!782 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!783 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !784} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!784 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !704} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!785 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !784} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!786 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !784} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!787 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !784} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!788 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !784} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!789 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !784} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!790 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !784} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!791 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !784} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!792 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !784} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!793 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !784} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!794 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !784} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!795 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !796} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!796 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !797} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!797 = metadata !{i32 786451, metadata !780, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !798, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!798 = metadata !{metadata !799, metadata !800, metadata !802}
!799 = metadata !{i32 786445, metadata !780, metadata !797, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !796} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!800 = metadata !{i32 786445, metadata !780, metadata !797, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !801} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!801 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !779} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!802 = metadata !{i32 786445, metadata !780, metadata !797, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!803 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !801} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!804 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !35} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!805 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !35} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!806 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !807} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!807 = metadata !{i32 786454, metadata !780, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!808 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !88} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!809 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !810} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!810 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!811 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !812} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!812 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !704, metadata !813, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!813 = metadata !{metadata !814}
!814 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!815 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !816} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!816 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!817 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !818} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!818 = metadata !{i32 786454, metadata !780, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!819 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !816} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!820 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !816} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!821 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !816} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!822 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !816} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!823 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !824} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!824 = metadata !{i32 786454, metadata !780, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !448} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!825 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !35} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!826 = metadata !{i32 786445, metadata !780, metadata !779, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !827} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!827 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !704, metadata !828, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!828 = metadata !{metadata !829}
!829 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!830 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !343, i32 1231, metadata !777, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!831 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !343, i32 1232, metadata !777, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!832 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !343, i32 1233, metadata !35, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!833 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !343, i32 1234, metadata !35, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!834 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !343, i32 1237, metadata !835, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!835 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !35, metadata !828, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!836 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !343, i32 1238, metadata !835, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!837 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !343, i32 1239, metadata !835, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!838 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !343, i32 1240, metadata !835, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!839 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !343, i32 1241, metadata !835, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!840 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !343, i32 1242, metadata !835, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!841 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !343, i32 1456, metadata !35, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!842 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !343, i32 1465, metadata !35, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!843 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !343, i32 1466, metadata !35, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!844 = metadata !{i32 786484, i32 0, null, metadata !"McostState", metadata !"McostState", metadata !"", metadata !845, i32 107, metadata !47, i32 0, i32 1, i32*** @McostState, null} ; [ DW_TAG_variable ] [McostState] [line 107] [def]
!845 = metadata !{i32 786473, metadata !846}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.h]
!846 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!847 = metadata !{i32 786484, i32 0, null, metadata !"all_mincost", metadata !"all_mincost", metadata !"", metadata !845, i32 109, metadata !44, i32 0, i32 1, i32****** @all_mincost, null} ; [ DW_TAG_variable ] [all_mincost] [line 109] [def]
!848 = metadata !{i32 786484, i32 0, null, metadata !"all_bwmincost", metadata !"all_bwmincost", metadata !"", metadata !845, i32 110, metadata !44, i32 0, i32 1, i32****** @all_bwmincost, null} ; [ DW_TAG_variable ] [all_bwmincost] [line 110] [def]
!849 = metadata !{i32 786484, i32 0, null, metadata !"pred_SAD_space", metadata !"pred_SAD_space", metadata !"", metadata !845, i32 111, metadata !35, i32 0, i32 1, i32* @pred_SAD_space, null} ; [ DW_TAG_variable ] [pred_SAD_space] [line 111] [def]
!850 = metadata !{i32 786484, i32 0, null, metadata !"pred_SAD_time", metadata !"pred_SAD_time", metadata !"", metadata !845, i32 111, metadata !35, i32 0, i32 1, i32* @pred_SAD_time, null} ; [ DW_TAG_variable ] [pred_SAD_time] [line 111] [def]
!851 = metadata !{i32 786484, i32 0, null, metadata !"pred_SAD_ref", metadata !"pred_SAD_ref", metadata !"", metadata !845, i32 111, metadata !35, i32 0, i32 1, i32* @pred_SAD_ref, null} ; [ DW_TAG_variable ] [pred_SAD_ref] [line 111] [def]
!852 = metadata !{i32 786484, i32 0, null, metadata !"pred_SAD_uplayer", metadata !"pred_SAD_uplayer", metadata !"", metadata !845, i32 111, metadata !35, i32 0, i32 1, i32* @pred_SAD_uplayer, null} ; [ DW_TAG_variable ] [pred_SAD_uplayer] [line 111] [def]
!853 = metadata !{i32 786484, i32 0, null, metadata !"FME_blocktype", metadata !"FME_blocktype", metadata !"", metadata !845, i32 112, metadata !35, i32 0, i32 1, i32* @FME_blocktype, null} ; [ DW_TAG_variable ] [FME_blocktype] [line 112] [def]
!854 = metadata !{i32 786484, i32 0, null, metadata !"pred_MV_time", metadata !"pred_MV_time", metadata !"", metadata !845, i32 113, metadata !855, i32 0, i32 1, [2 x i32]* @pred_MV_time, null} ; [ DW_TAG_variable ] [pred_MV_time] [line 113] [def]
!855 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !35, metadata !477, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!856 = metadata !{i32 786484, i32 0, null, metadata !"pred_MV_ref", metadata !"pred_MV_ref", metadata !"", metadata !845, i32 113, metadata !855, i32 0, i32 1, [2 x i32]* @pred_MV_ref, null} ; [ DW_TAG_variable ] [pred_MV_ref] [line 113] [def]
!857 = metadata !{i32 786484, i32 0, null, metadata !"pred_MV_uplayer", metadata !"pred_MV_uplayer", metadata !"", metadata !845, i32 113, metadata !855, i32 0, i32 1, [2 x i32]* @pred_MV_uplayer, null} ; [ DW_TAG_variable ] [pred_MV_uplayer] [line 113] [def]
!858 = metadata !{i32 786484, i32 0, null, metadata !"Quantize_step", metadata !"Quantize_step", metadata !"", metadata !845, i32 116, metadata !156, i32 0, i32 1, float* @Quantize_step, null} ; [ DW_TAG_variable ] [Quantize_step] [line 116] [def]
!859 = metadata !{i32 786484, i32 0, null, metadata !"Bsize", metadata !"Bsize", metadata !"", metadata !845, i32 117, metadata !860, i32 0, i32 1, [8 x float]* @Bsize, null} ; [ DW_TAG_variable ] [Bsize] [line 117] [def]
!860 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !156, metadata !552, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!861 = metadata !{i32 786484, i32 0, null, metadata !"Thresh4x4", metadata !"Thresh4x4", metadata !"", metadata !845, i32 118, metadata !35, i32 0, i32 1, i32* @Thresh4x4, null} ; [ DW_TAG_variable ] [Thresh4x4] [line 118] [def]
!862 = metadata !{i32 786484, i32 0, null, metadata !"AlphaSec", metadata !"AlphaSec", metadata !"", metadata !845, i32 119, metadata !860, i32 0, i32 1, [8 x float]* @AlphaSec, null} ; [ DW_TAG_variable ] [AlphaSec] [line 119] [def]
!863 = metadata !{i32 786484, i32 0, null, metadata !"AlphaThird", metadata !"AlphaThird", metadata !"", metadata !845, i32 120, metadata !860, i32 0, i32 1, [8 x float]* @AlphaThird, null} ; [ DW_TAG_variable ] [AlphaThird] [line 120] [def]
!864 = metadata !{i32 786484, i32 0, null, metadata !"flag_intra", metadata !"flag_intra", metadata !"", metadata !845, i32 121, metadata !48, i32 0, i32 1, i32** @flag_intra, null} ; [ DW_TAG_variable ] [flag_intra] [line 121] [def]
!865 = metadata !{i32 786484, i32 0, null, metadata !"flag_intra_SAD", metadata !"flag_intra_SAD", metadata !"", metadata !845, i32 122, metadata !35, i32 0, i32 1, i32* @flag_intra_SAD, null} ; [ DW_TAG_variable ] [flag_intra_SAD] [line 122] [def]
!866 = metadata !{i32 786484, i32 0, null, metadata !"SearchState", metadata !"SearchState", metadata !"", metadata !845, i32 124, metadata !223, i32 0, i32 1, i8*** @SearchState, null} ; [ DW_TAG_variable ] [SearchState] [line 124] [def]
!867 = metadata !{i32 786484, i32 0, null, metadata !"PelY_14", metadata !"PelY_14", metadata !"", metadata !29, i32 62, metadata !868, i32 1, i32 1, i16 (i16**, i32, i32, i32, i32)** @PelY_14, null} ; [ DW_TAG_variable ] [PelY_14] [line 62] [local] [def]
!868 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !869} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!869 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !870, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!870 = metadata !{metadata !88, metadata !89, metadata !35, metadata !35, metadata !35, metadata !35}
!871 = metadata !{i32 786484, i32 0, null, metadata !"quant_coef", metadata !"quant_coef", metadata !"", metadata !29, i32 64, metadata !872, i32 1, i32 1, [6 x [4 x [4 x i32]]]* @quant_coef, null} ; [ DW_TAG_variable ] [quant_coef] [line 64] [local] [def]
!872 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3072, i64 32, i32 0, i32 0, metadata !873, metadata !874, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3072, align 32, offset 0] [from ]
!873 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!874 = metadata !{metadata !180, metadata !332, metadata !332}
!875 = metadata !{i32 76, i32 0, metadata !28, null}
!876 = metadata !{metadata !"float", metadata !877}
!877 = metadata !{metadata !"omnipotent char", metadata !878}
!878 = metadata !{metadata !"Simple C/C++ TBAA"}
!879 = metadata !{i32 77, i32 0, metadata !28, null}
!880 = metadata !{i32 78, i32 0, metadata !28, null}
!881 = metadata !{i32 79, i32 0, metadata !28, null}
!882 = metadata !{i32 80, i32 0, metadata !28, null}
!883 = metadata !{i32 81, i32 0, metadata !28, null}
!884 = metadata !{i32 82, i32 0, metadata !28, null}
!885 = metadata !{i32 84, i32 0, metadata !28, null}
!886 = metadata !{i32 85, i32 0, metadata !28, null}
!887 = metadata !{i32 86, i32 0, metadata !28, null}
!888 = metadata !{i32 87, i32 0, metadata !28, null}
!889 = metadata !{i32 88, i32 0, metadata !28, null}
!890 = metadata !{i32 89, i32 0, metadata !28, null}
!891 = metadata !{i32 90, i32 0, metadata !28, null}
!892 = metadata !{i32 92, i32 0, metadata !28, null}
!893 = metadata !{i32 93, i32 0, metadata !28, null}
!894 = metadata !{i32 98, i32 0, metadata !32, null}
!895 = metadata !{metadata !"any pointer", metadata !877}
!896 = metadata !{metadata !"int", metadata !877}
!897 = metadata !{i32 99, i32 0, metadata !32, null}
!898 = metadata !{i32 101, i32 0, metadata !32, null}
!899 = metadata !{i32 104, i32 0, metadata !32, null}
!900 = metadata !{i32 105, i32 0, metadata !32, null}
!901 = metadata !{i32 107, i32 0, metadata !32, null}
!902 = metadata !{i32 109, i32 0, metadata !32, null}
!903 = metadata !{i32 110, i32 0, metadata !32, null}
!904 = metadata !{i32 111, i32 0, metadata !32, null}
!905 = metadata !{i32 113, i32 0, metadata !32, null}
!906 = metadata !{i32 114, i32 0, metadata !32, null}
!907 = metadata !{i32 115, i32 0, metadata !32, null}
!908 = metadata !{i32 116, i32 0, metadata !32, null}
!909 = metadata !{i32 117, i32 0, metadata !32, null}
!910 = metadata !{i32 118, i32 0, metadata !32, null}
!911 = metadata !{i32 119, i32 0, metadata !32, null}
!912 = metadata !{i32 132, i32 0, metadata !40, null}
!913 = metadata !{i32 136, i32 0, metadata !40, null}
!914 = metadata !{i32 137, i32 0, metadata !40, null}
!915 = metadata !{i32 138, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !40, i32 138, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!917 = metadata !{i32 140, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !916, i32 139, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!919 = metadata !{i32 141, i32 0, metadata !918, null}
!920 = metadata !{i32 142, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !918, i32 142, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!922 = metadata !{i32 144, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !921, i32 143, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!924 = metadata !{i32 145, i32 0, metadata !923, null}
!925 = metadata !{i32 146, i32 0, metadata !926, null}
!926 = metadata !{i32 786443, metadata !1, metadata !923, i32 146, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!927 = metadata !{i32 148, i32 0, metadata !928, null}
!928 = metadata !{i32 786443, metadata !1, metadata !926, i32 147, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!929 = metadata !{i32 149, i32 0, metadata !928, null}
!930 = metadata !{i32 151, i32 0, metadata !931, null}
!931 = metadata !{i32 786443, metadata !1, metadata !928, i32 150, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!932 = metadata !{i32 152, i32 0, metadata !931, null}
!933 = metadata !{i32 150, i32 0, metadata !931, null}
!934 = metadata !{i32 157, i32 0, metadata !40, null}
!935 = metadata !{i32 169, i32 0, metadata !55, null}
!936 = metadata !{i32 174, i32 0, metadata !55, null}
!937 = metadata !{i32 175, i32 0, metadata !55, null}
!938 = metadata !{i32 176, i32 0, metadata !939, null}
!939 = metadata !{i32 786443, metadata !1, metadata !55, i32 176, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!940 = metadata !{i32 178, i32 0, metadata !941, null}
!941 = metadata !{i32 786443, metadata !1, metadata !939, i32 177, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!942 = metadata !{i32 179, i32 0, metadata !941, null}
!943 = metadata !{i32 180, i32 0, metadata !944, null}
!944 = metadata !{i32 786443, metadata !1, metadata !941, i32 180, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!945 = metadata !{i32 182, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !944, i32 181, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!947 = metadata !{i32 183, i32 0, metadata !946, null}
!948 = metadata !{i32 184, i32 0, metadata !949, null}
!949 = metadata !{i32 786443, metadata !1, metadata !946, i32 184, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!950 = metadata !{i32 186, i32 0, metadata !951, null}
!951 = metadata !{i32 786443, metadata !1, metadata !949, i32 185, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!952 = metadata !{i32 187, i32 0, metadata !951, null}
!953 = metadata !{i32 189, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !951, i32 188, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!955 = metadata !{i32 190, i32 0, metadata !954, null}
!956 = metadata !{i32 188, i32 0, metadata !954, null}
!957 = metadata !{i32 195, i32 0, metadata !55, null}
!958 = metadata !{i32 200, i32 0, metadata !62, null}
!959 = metadata !{i32 201, i32 0, metadata !62, null}
!960 = metadata !{i32 203, i32 0, metadata !62, null}
!961 = metadata !{i32 204, i32 0, metadata !62, null}
!962 = metadata !{i32 205, i32 0, metadata !62, null}
!963 = metadata !{i32 206, i32 0, metadata !62, null}
!964 = metadata !{i32 208, i32 0, metadata !62, null}
!965 = metadata !{i32 219, i32 0, metadata !67, null}
!966 = metadata !{i32 223, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !67, i32 223, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!968 = metadata !{i32 225, i32 0, metadata !969, null}
!969 = metadata !{i32 786443, metadata !1, metadata !970, i32 225, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!970 = metadata !{i32 786443, metadata !1, metadata !967, i32 224, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!971 = metadata !{i32 233, i32 0, metadata !972, null}
!972 = metadata !{i32 786443, metadata !1, metadata !969, i32 226, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!973 = metadata !{i32 227, i32 0, metadata !974, null}
!974 = metadata !{i32 786443, metadata !1, metadata !972, i32 227, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!975 = metadata !{i32 229, i32 0, metadata !976, null}
!976 = metadata !{i32 786443, metadata !1, metadata !977, i32 229, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!977 = metadata !{i32 786443, metadata !1, metadata !974, i32 228, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!978 = metadata !{i32 230, i32 0, metadata !976, null}
!979 = metadata !{i32 231, i32 0, metadata !977, null}
!980 = metadata !{i32 235, i32 0, metadata !970, null}
!981 = metadata !{i32 237, i32 0, metadata !67, null}
!982 = metadata !{i32 238, i32 0, metadata !67, null}
!983 = metadata !{i32 248, i32 0, metadata !76, null}
!984 = metadata !{i32 252, i32 0, metadata !985, null}
!985 = metadata !{i32 786443, metadata !1, metadata !76, i32 252, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!986 = metadata !{i32 254, i32 0, metadata !987, null}
!987 = metadata !{i32 786443, metadata !1, metadata !988, i32 254, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!988 = metadata !{i32 786443, metadata !1, metadata !985, i32 253, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!989 = metadata !{i32 262, i32 0, metadata !990, null}
!990 = metadata !{i32 786443, metadata !1, metadata !987, i32 255, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!991 = metadata !{i32 256, i32 0, metadata !992, null}
!992 = metadata !{i32 786443, metadata !1, metadata !990, i32 256, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!993 = metadata !{i32 258, i32 0, metadata !994, null}
!994 = metadata !{i32 786443, metadata !1, metadata !995, i32 258, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!995 = metadata !{i32 786443, metadata !1, metadata !992, i32 257, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!996 = metadata !{i32 259, i32 0, metadata !994, null}
!997 = metadata !{i32 260, i32 0, metadata !995, null}
!998 = metadata !{i32 264, i32 0, metadata !988, null}
!999 = metadata !{i32 266, i32 0, metadata !76, null}
!1000 = metadata !{i32 267, i32 0, metadata !76, null}
!1001 = metadata !{i32 271, i32 0, metadata !83, null}
!1002 = metadata !{i32 272, i32 0, metadata !83, null}
!1003 = metadata !{i32 273, i32 0, metadata !83, null}
!1004 = metadata !{i32 275, i32 0, metadata !83, null}
!1005 = metadata !{i32 277, i32 0, metadata !83, null}
!1006 = metadata !{i32 278, i32 0, metadata !83, null}
!1007 = metadata !{i32 281, i32 0, metadata !84, null}
!1008 = metadata !{i32 284, i32 0, metadata !84, null}
!1009 = metadata !{i32 286, i32 0, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !1, metadata !84, i32 286, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1011 = metadata !{i32 291, i32 0, metadata !1012, null}
!1012 = metadata !{i32 786443, metadata !1, metadata !1013, i32 291, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1013 = metadata !{i32 786443, metadata !1, metadata !1010, i32 287, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1014 = metadata !{i32 288, i32 0, metadata !1013, null}
!1015 = metadata !{i32 289, i32 0, metadata !1013, null}
!1016 = metadata !{i32 293, i32 0, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !1012, i32 292, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1018 = metadata !{metadata !"short", metadata !877}
!1019 = metadata !{i32 294, i32 0, metadata !1017, null}
!1020 = metadata !{i32 295, i32 0, metadata !1017, null}
!1021 = metadata !{i32 296, i32 0, metadata !1017, null}
!1022 = metadata !{i32 298, i32 0, metadata !1013, null}
!1023 = metadata !{i32 303, i32 0, metadata !84, null}
!1024 = metadata !{i32 340, i32 0, metadata !109, null}
!1025 = metadata !{i32 341, i32 0, metadata !109, null}
!1026 = metadata !{i32 342, i32 0, metadata !109, null}
!1027 = metadata !{i32 343, i32 0, metadata !109, null}
!1028 = metadata !{i32 344, i32 0, metadata !109, null}
!1029 = metadata !{i32 345, i32 0, metadata !109, null}
!1030 = metadata !{i32 346, i32 0, metadata !109, null}
!1031 = metadata !{i32 347, i32 0, metadata !109, null}
!1032 = metadata !{i32 348, i32 0, metadata !109, null}
!1033 = metadata !{i32 349, i32 0, metadata !109, null}
!1034 = metadata !{i32 350, i32 0, metadata !109, null}
!1035 = metadata !{i32 351, i32 0, metadata !109, null}
!1036 = metadata !{i32 352, i32 0, metadata !109, null}
!1037 = metadata !{i32 363, i32 0, metadata !109, null}
!1038 = metadata !{i32 364, i32 0, metadata !109, null}
!1039 = metadata !{i32 365, i32 0, metadata !109, null}
!1040 = metadata !{i32 2}
!1041 = metadata !{i32 366, i32 0, metadata !109, null}
!1042 = metadata !{i32 367, i32 0, metadata !109, null}
!1043 = metadata !{i32 368, i32 0, metadata !109, null}
!1044 = metadata !{i32 369, i32 0, metadata !109, null}
!1045 = metadata !{i32 370, i32 0, metadata !109, null}
!1046 = metadata !{i32 371, i32 0, metadata !109, null}
!1047 = metadata !{i32 372, i32 0, metadata !109, null}
!1048 = metadata !{i32 373, i32 0, metadata !109, null}
!1049 = metadata !{i32 374, i32 0, metadata !109, null}
!1050 = metadata !{i32 378, i32 0, metadata !109, null}
!1051 = metadata !{i32 380, i32 0, metadata !109, null}
!1052 = metadata !{i32 384, i32 0, metadata !109, null}
!1053 = metadata !{i16* (i32, i16*, i32, i32, i32, i32)* @UMVLineX}
!1054 = metadata !{i32 391, i32 0, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !1, metadata !109, i32 390, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1056 = metadata !{i32 395, i32 0, metadata !109, null}
!1057 = metadata !{i32 398, i32 0, metadata !109, null}
!1058 = metadata !{i32 400, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !109, i32 399, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1060 = metadata !{i32 402, i32 0, metadata !1061, null}
!1061 = metadata !{i32 786443, metadata !1, metadata !1059, i32 401, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1062 = metadata !{i32 403, i32 0, metadata !1061, null}
!1063 = metadata !{i32 404, i32 0, metadata !1061, null}
!1064 = metadata !{i32 413, i32 0, metadata !1065, null}
!1065 = metadata !{i32 786443, metadata !1, metadata !109, i32 412, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1066 = metadata !{i32 415, i32 0, metadata !1067, null}
!1067 = metadata !{i32 786443, metadata !1, metadata !1065, i32 414, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1068 = metadata !{i32 417, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !1067, i32 416, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1070 = metadata !{i32 418, i32 0, metadata !1069, null}
!1071 = metadata !{i32 419, i32 0, metadata !1069, null}
!1072 = metadata !{i32 428, i32 0, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !1, metadata !1065, i32 427, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1074 = metadata !{i32 430, i32 0, metadata !1075, null}
!1075 = metadata !{i32 786443, metadata !1, metadata !1073, i32 429, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1076 = metadata !{i32 431, i32 0, metadata !1075, null}
!1077 = metadata !{i32 432, i32 0, metadata !1075, null}
!1078 = metadata !{i32 443, i32 0, metadata !109, null}
!1079 = metadata !{i32 444, i32 0, metadata !109, null}
!1080 = metadata !{i32 445, i32 0, metadata !109, null}
!1081 = metadata !{i32 446, i32 0, metadata !109, null}
!1082 = metadata !{i32 447, i32 0, metadata !109, null}
!1083 = metadata !{i32 448, i32 0, metadata !109, null}
!1084 = metadata !{i32 450, i32 0, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !1, metadata !109, i32 449, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1086 = metadata !{i32 451, i32 0, metadata !1085, null}
!1087 = metadata !{i32 452, i32 0, metadata !1085, null}
!1088 = metadata !{i32 455, i32 0, metadata !109, null}
!1089 = metadata !{i32 456, i32 0, metadata !109, null}
!1090 = metadata !{i32 457, i32 0, metadata !1091, null}
!1091 = metadata !{i32 786443, metadata !1, metadata !109, i32 457, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1092 = metadata !{i32 459, i32 0, metadata !1093, null}
!1093 = metadata !{i32 786443, metadata !1, metadata !1091, i32 458, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1094 = metadata !{i32 460, i32 0, metadata !1093, null}
!1095 = metadata !{i32 461, i32 0, metadata !1093, null}
!1096 = metadata !{i32 461, i32 0, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !1, metadata !1093, i32 461, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1098 = metadata !{i32 461, i32 0, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !1, metadata !1097, i32 461, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1100 = metadata !{i32 461, i32 0, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !1, metadata !1099, i32 461, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1102 = metadata !{i32 464, i32 0, metadata !109, null}
!1103 = metadata !{i32 466, i32 0, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !1, metadata !109, i32 465, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1105 = metadata !{i32 467, i32 0, metadata !1104, null}
!1106 = metadata !{i32 468, i32 0, metadata !1104, null}
!1107 = metadata !{i32 468, i32 0, metadata !1108, null}
!1108 = metadata !{i32 786443, metadata !1, metadata !1104, i32 468, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1109 = metadata !{i32 468, i32 0, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !1, metadata !1108, i32 468, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1111 = metadata !{i32 468, i32 0, metadata !1112, null}
!1112 = metadata !{i32 786443, metadata !1, metadata !1110, i32 468, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1113 = metadata !{i32 470, i32 0, metadata !1104, null}
!1114 = metadata !{i32 471, i32 0, metadata !1104, null}
!1115 = metadata !{i32 472, i32 0, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !1, metadata !1104, i32 472, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1117 = metadata !{i32 474, i32 0, metadata !1118, null}
!1118 = metadata !{i32 786443, metadata !1, metadata !1116, i32 473, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1119 = metadata !{i32 475, i32 0, metadata !1118, null}
!1120 = metadata !{i32 476, i32 0, metadata !1118, null}
!1121 = metadata !{i32 476, i32 0, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !1, metadata !1118, i32 476, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1123 = metadata !{i32 476, i32 0, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !1, metadata !1122, i32 476, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1125 = metadata !{i32 476, i32 0, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !1, metadata !1124, i32 476, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1127 = metadata !{i32 480, i32 0, metadata !109, null}
!1128 = metadata !{i32 482, i32 0, metadata !1129, null}
!1129 = metadata !{i32 786443, metadata !1, metadata !109, i32 481, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1130 = metadata !{i32 483, i32 0, metadata !1129, null}
!1131 = metadata !{i32 484, i32 0, metadata !1129, null}
!1132 = metadata !{i32 484, i32 0, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !1, metadata !1129, i32 484, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1134 = metadata !{i32 484, i32 0, metadata !1135, null}
!1135 = metadata !{i32 786443, metadata !1, metadata !1133, i32 484, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1136 = metadata !{i32 484, i32 0, metadata !1137, null}
!1137 = metadata !{i32 786443, metadata !1, metadata !1135, i32 484, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1138 = metadata !{i32 485, i32 0, metadata !1129, null}
!1139 = metadata !{i32 613, i32 0, metadata !1140, null}
!1140 = metadata !{i32 786443, metadata !1, metadata !109, i32 613, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1141 = metadata !{i32 487, i32 0, metadata !1129, null}
!1142 = metadata !{i32 596, i32 0, metadata !1143, null}
!1143 = metadata !{i32 786443, metadata !1, metadata !109, i32 596, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1144 = metadata !{i32 492, i32 0, metadata !109, null}
!1145 = metadata !{i32 494, i32 0, metadata !1146, null}
!1146 = metadata !{i32 786443, metadata !1, metadata !109, i32 493, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1147 = metadata !{i32 495, i32 0, metadata !1146, null}
!1148 = metadata !{i32 496, i32 0, metadata !1146, null}
!1149 = metadata !{i32 496, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1, metadata !1146, i32 496, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1151 = metadata !{i32 496, i32 0, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1, metadata !1150, i32 496, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1153 = metadata !{i32 496, i32 0, metadata !1154, null}
!1154 = metadata !{i32 786443, metadata !1, metadata !1152, i32 496, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1155 = metadata !{i32 500, i32 0, metadata !109, null}
!1156 = metadata !{i32 502, i32 0, metadata !1157, null}
!1157 = metadata !{i32 786443, metadata !1, metadata !109, i32 501, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1158 = metadata !{i32 505, i32 0, metadata !1159, null}
!1159 = metadata !{i32 786443, metadata !1, metadata !1157, i32 504, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1160 = metadata !{i32 506, i32 0, metadata !1159, null}
!1161 = metadata !{i32 507, i32 0, metadata !1159, null}
!1162 = metadata !{i32 507, i32 0, metadata !1163, null}
!1163 = metadata !{i32 786443, metadata !1, metadata !1159, i32 507, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1164 = metadata !{i32 507, i32 0, metadata !1165, null}
!1165 = metadata !{i32 786443, metadata !1, metadata !1163, i32 507, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1166 = metadata !{i32 507, i32 0, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !1, metadata !1165, i32 507, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1168 = metadata !{i32 512, i32 0, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !1, metadata !109, i32 511, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1170 = metadata !{i32 515, i32 0, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !1, metadata !1169, i32 514, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1172 = metadata !{i32 516, i32 0, metadata !1171, null}
!1173 = metadata !{i32 517, i32 0, metadata !1171, null}
!1174 = metadata !{i32 517, i32 0, metadata !1175, null}
!1175 = metadata !{i32 786443, metadata !1, metadata !1171, i32 517, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1176 = metadata !{i32 517, i32 0, metadata !1177, null}
!1177 = metadata !{i32 786443, metadata !1, metadata !1175, i32 517, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1178 = metadata !{i32 517, i32 0, metadata !1179, null}
!1179 = metadata !{i32 786443, metadata !1, metadata !1177, i32 517, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1180 = metadata !{i32 521, i32 0, metadata !109, null}
!1181 = metadata !{i32 522, i32 0, metadata !109, null}
!1182 = metadata !{i32 523, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !109, i32 523, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1184 = metadata !{i32 525, i32 0, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !1, metadata !1183, i32 524, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1186 = metadata !{i32 526, i32 0, metadata !1185, null}
!1187 = metadata !{i32 527, i32 0, metadata !1185, null}
!1188 = metadata !{i32 527, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !1, metadata !1185, i32 527, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1190 = metadata !{i32 527, i32 0, metadata !1191, null}
!1191 = metadata !{i32 786443, metadata !1, metadata !1189, i32 527, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1192 = metadata !{i32 527, i32 0, metadata !1193, null}
!1193 = metadata !{i32 786443, metadata !1, metadata !1191, i32 527, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1194 = metadata !{i32 531, i32 0, metadata !109, null}
!1195 = metadata !{i32 531, i32 0, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !1, metadata !109, i32 531, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1197 = metadata !{i32 533, i32 0, metadata !109, null}
!1198 = metadata !{i32 531, i32 0, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !1, metadata !109, i32 531, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1200 = metadata !{i32 531, i32 0, metadata !1201, null}
!1201 = metadata !{i32 786443, metadata !1, metadata !109, i32 531, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1202 = metadata !{i32 542, i32 0, metadata !1203, null}
!1203 = metadata !{i32 786443, metadata !1, metadata !109, i32 542, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1204 = metadata !{i32 553, i32 0, metadata !1205, null}
!1205 = metadata !{i32 786443, metadata !1, metadata !109, i32 553, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1206 = metadata !{i32 550, i32 0, metadata !1207, null}
!1207 = metadata !{i32 786443, metadata !1, metadata !1203, i32 543, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1208 = metadata !{i32 550, i32 0, metadata !1209, null}
!1209 = metadata !{i32 786443, metadata !1, metadata !1207, i32 550, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1210 = metadata !{i32 550, i32 0, metadata !1211, null}
!1211 = metadata !{i32 786443, metadata !1, metadata !1209, i32 550, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1212 = metadata !{i32 558, i32 0, metadata !1213, null}
!1213 = metadata !{i32 786443, metadata !1, metadata !1205, i32 554, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1214 = metadata !{i32 561, i32 0, metadata !1215, null}
!1215 = metadata !{i32 786443, metadata !1, metadata !1213, i32 561, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1216 = metadata !{i32 561, i32 0, metadata !1217, null}
!1217 = metadata !{i32 786443, metadata !1, metadata !1215, i32 561, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1218 = metadata !{i32 544, i32 0, metadata !1207, null}
!1219 = metadata !{i32 545, i32 0, metadata !1207, null}
!1220 = metadata !{i32 546, i32 0, metadata !1207, null}
!1221 = metadata !{i32 547, i32 0, metadata !1207, null}
!1222 = metadata !{i32 547, i32 0, metadata !1223, null}
!1223 = metadata !{i32 786443, metadata !1, metadata !1207, i32 547, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1224 = metadata !{i32 547, i32 0, metadata !1225, null}
!1225 = metadata !{i32 786443, metadata !1, metadata !1223, i32 547, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1226 = metadata !{i32 547, i32 0, metadata !1227, null}
!1227 = metadata !{i32 786443, metadata !1, metadata !1225, i32 547, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1228 = metadata !{i32 548, i32 0, metadata !1207, null}
!1229 = metadata !{i32 549, i32 0, metadata !1207, null}
!1230 = metadata !{i32 550, i32 0, metadata !1231, null}
!1231 = metadata !{i32 786443, metadata !1, metadata !1211, i32 550, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1232 = metadata !{i32 555, i32 0, metadata !1213, null}
!1233 = metadata !{i32 556, i32 0, metadata !1213, null}
!1234 = metadata !{i32 557, i32 0, metadata !1213, null}
!1235 = metadata !{i32 558, i32 0, metadata !1236, null}
!1236 = metadata !{i32 786443, metadata !1, metadata !1213, i32 558, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1237 = metadata !{i32 558, i32 0, metadata !1238, null}
!1238 = metadata !{i32 786443, metadata !1, metadata !1236, i32 558, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1239 = metadata !{i32 558, i32 0, metadata !1240, null}
!1240 = metadata !{i32 786443, metadata !1, metadata !1238, i32 558, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1241 = metadata !{i32 560, i32 0, metadata !1213, null}
!1242 = metadata !{i32 561, i32 0, metadata !1213, null}
!1243 = metadata !{i32 561, i32 0, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !1, metadata !1217, i32 561, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1245 = metadata !{i32 564, i32 0, metadata !109, null}
!1246 = metadata !{i32 564, i32 0, metadata !1247, null}
!1247 = metadata !{i32 786443, metadata !1, metadata !109, i32 564, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1248 = metadata !{i32 564, i32 0, metadata !1249, null}
!1249 = metadata !{i32 786443, metadata !1, metadata !109, i32 564, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1250 = metadata !{i32 564, i32 0, metadata !1251, null}
!1251 = metadata !{i32 786443, metadata !1, metadata !109, i32 564, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1252 = metadata !{i32 571, i32 0, metadata !1253, null}
!1253 = metadata !{i32 786443, metadata !1, metadata !1254, i32 570, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1254 = metadata !{i32 786443, metadata !1, metadata !109, i32 569, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1255 = metadata !{i32 572, i32 0, metadata !1253, null}
!1256 = metadata !{i32 573, i32 0, metadata !1253, null}
!1257 = metadata !{i32 573, i32 0, metadata !1258, null}
!1258 = metadata !{i32 786443, metadata !1, metadata !1253, i32 573, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1259 = metadata !{i32 573, i32 0, metadata !1260, null}
!1260 = metadata !{i32 786443, metadata !1, metadata !1258, i32 573, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1261 = metadata !{i32 573, i32 0, metadata !1262, null}
!1262 = metadata !{i32 786443, metadata !1, metadata !1260, i32 573, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1263 = metadata !{i32 569, i32 0, metadata !1254, null}
!1264 = metadata !{i32 576, i32 0, metadata !109, null}
!1265 = metadata !{i32 576, i32 0, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !1, metadata !109, i32 576, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1267 = metadata !{i32 576, i32 0, metadata !1268, null}
!1268 = metadata !{i32 786443, metadata !1, metadata !109, i32 576, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1269 = metadata !{i32 576, i32 0, metadata !1270, null}
!1270 = metadata !{i32 786443, metadata !1, metadata !109, i32 576, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1271 = metadata !{i32 578, i32 0, metadata !1272, null}
!1272 = metadata !{i32 786443, metadata !1, metadata !109, i32 578, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1273 = metadata !{i32 581, i32 0, metadata !1274, null}
!1274 = metadata !{i32 786443, metadata !1, metadata !1275, i32 581, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1275 = metadata !{i32 786443, metadata !1, metadata !1272, i32 579, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1276 = metadata !{i32 583, i32 0, metadata !1277, null}
!1277 = metadata !{i32 786443, metadata !1, metadata !1274, i32 582, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1278 = metadata !{i32 584, i32 0, metadata !1277, null}
!1279 = metadata !{i32 585, i32 0, metadata !1277, null}
!1280 = metadata !{i32 585, i32 0, metadata !1281, null}
!1281 = metadata !{i32 786443, metadata !1, metadata !1277, i32 585, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1282 = metadata !{i32 585, i32 0, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !1, metadata !1281, i32 585, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1284 = metadata !{i32 585, i32 0, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !1, metadata !1283, i32 585, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1286 = metadata !{i32 1}
!1287 = metadata !{i32 587, i32 0, metadata !1275, null}
!1288 = metadata !{i32 590, i32 0, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !1, metadata !1275, i32 588, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1290 = metadata !{i32 590, i32 0, metadata !1291, null}
!1291 = metadata !{i32 786443, metadata !1, metadata !1289, i32 590, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1292 = metadata !{i32 590, i32 0, metadata !1293, null}
!1293 = metadata !{i32 786443, metadata !1, metadata !1289, i32 590, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1294 = metadata !{i32 590, i32 0, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !1, metadata !1289, i32 590, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1296 = metadata !{i32 599, i32 0, metadata !1297, null}
!1297 = metadata !{i32 786443, metadata !1, metadata !1298, i32 599, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1298 = metadata !{i32 786443, metadata !1, metadata !1143, i32 597, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1299 = metadata !{i32 601, i32 0, metadata !1300, null}
!1300 = metadata !{i32 786443, metadata !1, metadata !1297, i32 600, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1301 = metadata !{i32 602, i32 0, metadata !1300, null}
!1302 = metadata !{i32 603, i32 0, metadata !1300, null}
!1303 = metadata !{i32 603, i32 0, metadata !1304, null}
!1304 = metadata !{i32 786443, metadata !1, metadata !1300, i32 603, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1305 = metadata !{i32 603, i32 0, metadata !1306, null}
!1306 = metadata !{i32 786443, metadata !1, metadata !1304, i32 603, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1307 = metadata !{i32 603, i32 0, metadata !1308, null}
!1308 = metadata !{i32 786443, metadata !1, metadata !1306, i32 603, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1309 = metadata !{i32 605, i32 0, metadata !1298, null}
!1310 = metadata !{i32 607, i32 0, metadata !1298, null}
!1311 = metadata !{i32 608, i32 0, metadata !1298, null}
!1312 = metadata !{i32 617, i32 0, metadata !1313, null}
!1313 = metadata !{i32 786443, metadata !1, metadata !1314, i32 617, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1314 = metadata !{i32 786443, metadata !1, metadata !1140, i32 614, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1315 = metadata !{i32 619, i32 0, metadata !1316, null}
!1316 = metadata !{i32 786443, metadata !1, metadata !1313, i32 618, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1317 = metadata !{i32 620, i32 0, metadata !1316, null}
!1318 = metadata !{i32 621, i32 0, metadata !1316, null}
!1319 = metadata !{i32 621, i32 0, metadata !1320, null}
!1320 = metadata !{i32 786443, metadata !1, metadata !1316, i32 621, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1321 = metadata !{i32 621, i32 0, metadata !1322, null}
!1322 = metadata !{i32 786443, metadata !1, metadata !1320, i32 621, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1323 = metadata !{i32 621, i32 0, metadata !1324, null}
!1324 = metadata !{i32 786443, metadata !1, metadata !1322, i32 621, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1325 = metadata !{i32 623, i32 0, metadata !1314, null}
!1326 = metadata !{i32 625, i32 0, metadata !1314, null}
!1327 = metadata !{i32 626, i32 0, metadata !1314, null}
!1328 = metadata !{i32 629, i32 0, metadata !109, null}
!1329 = metadata !{i32 630, i32 0, metadata !109, null}
!1330 = metadata !{i32 631, i32 0, metadata !109, null}
!1331 = metadata !{i32 648, i32 0, metadata !159, null}
!1332 = metadata !{i32 649, i32 0, metadata !159, null}
!1333 = metadata !{i32 650, i32 0, metadata !159, null}
!1334 = metadata !{i32 654, i32 0, metadata !159, null}
!1335 = metadata !{i32 655, i32 0, metadata !159, null}
!1336 = metadata !{i32 659, i32 0, metadata !159, null}
!1337 = metadata !{i32 660, i32 0, metadata !159, null}
!1338 = metadata !{i32 661, i32 0, metadata !159, null}
!1339 = metadata !{i32 664, i32 0, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !1, metadata !159, i32 664, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1341 = metadata !{i32 668, i32 0, metadata !1342, null}
!1342 = metadata !{i32 786443, metadata !1, metadata !1343, i32 668, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1343 = metadata !{i32 786443, metadata !1, metadata !1340, i32 665, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1344 = metadata !{i32 671, i32 0, metadata !1345, null}
!1345 = metadata !{i32 786443, metadata !1, metadata !1342, i32 669, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1346 = metadata !{i32 674, i32 0, metadata !1345, null}
!1347 = metadata !{i32 675, i32 0, metadata !1345, null}
!1348 = metadata !{i32 676, i32 0, metadata !1345, null}
!1349 = metadata !{i32 677, i32 0, metadata !1345, null}
!1350 = metadata !{i32 680, i32 0, metadata !1345, null}
!1351 = metadata !{i32 681, i32 0, metadata !1345, null}
!1352 = metadata !{i32 682, i32 0, metadata !1345, null}
!1353 = metadata !{i32 683, i32 0, metadata !1345, null}
!1354 = metadata !{i32 686, i32 0, metadata !1345, null}
!1355 = metadata !{i32 687, i32 0, metadata !1345, null}
!1356 = metadata !{i32 688, i32 0, metadata !1345, null}
!1357 = metadata !{i32 689, i32 0, metadata !1345, null}
!1358 = metadata !{i32 692, i32 0, metadata !1345, null}
!1359 = metadata !{i32 693, i32 0, metadata !1345, null}
!1360 = metadata !{i32 694, i32 0, metadata !1345, null}
!1361 = metadata !{i32 697, i32 0, metadata !1345, null}
!1362 = metadata !{i32 666, i32 0, metadata !1343, null}
!1363 = metadata !{i32 673, i32 0, metadata !1345, null}
!1364 = metadata !{i32 679, i32 0, metadata !1345, null}
!1365 = metadata !{i32 685, i32 0, metadata !1345, null}
!1366 = metadata !{i32 691, i32 0, metadata !1345, null}
!1367 = metadata !{i32 670, i32 0, metadata !1345, null}
!1368 = metadata !{i32 695, i32 0, metadata !1345, null}
!1369 = metadata !{i32 699, i32 0, metadata !1370, null}
!1370 = metadata !{i32 786443, metadata !1, metadata !1345, i32 698, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1371 = metadata !{i32 715, i32 0, metadata !159, null}
!1372 = metadata !{i32 719, i32 0, metadata !270, null}
!1373 = metadata !{i32 720, i32 0, metadata !270, null}
!1374 = metadata !{i32 721, i32 0, metadata !270, null}
!1375 = metadata !{i32 722, i32 0, metadata !270, null}
!1376 = metadata !{i32 723, i32 0, metadata !270, null}
!1377 = metadata !{i32 724, i32 0, metadata !270, null}
!1378 = metadata !{i32 725, i32 0, metadata !270, null}
!1379 = metadata !{i32 726, i32 0, metadata !270, null}
!1380 = metadata !{i32 727, i32 0, metadata !270, null}
!1381 = metadata !{i32 728, i32 0, metadata !270, null}
!1382 = metadata !{i32 729, i32 0, metadata !270, null}
!1383 = metadata !{i32 730, i32 0, metadata !270, null}
!1384 = metadata !{i32 731, i32 0, metadata !270, null}
!1385 = metadata !{i32 732, i32 0, metadata !270, null}
!1386 = metadata !{i32 733, i32 0, metadata !270, null}
!1387 = metadata !{i32 740, i32 0, metadata !270, null}
!1388 = metadata !{i32 741, i32 0, metadata !270, null}
!1389 = metadata !{i32 743, i32 0, metadata !270, null}
!1390 = metadata !{i32 744, i32 0, metadata !270, null}
!1391 = metadata !{i32 745, i32 0, metadata !270, null}
!1392 = metadata !{i32 746, i32 0, metadata !270, null}
!1393 = metadata !{i32 747, i32 0, metadata !270, null}
!1394 = metadata !{i32 748, i32 0, metadata !270, null}
!1395 = metadata !{i32 749, i32 0, metadata !270, null}
!1396 = metadata !{i32 750, i32 0, metadata !270, null}
!1397 = metadata !{i32 753, i32 0, metadata !270, null}
!1398 = metadata !{i32 759, i32 0, metadata !270, null}
!1399 = metadata !{i32 760, i32 0, metadata !270, null}
!1400 = metadata !{i32 761, i32 0, metadata !270, null}
!1401 = metadata !{i32 773, i32 0, metadata !270, null}
!1402 = metadata !{i32 764, i32 0, metadata !1403, null}
!1403 = metadata !{i32 786443, metadata !1, metadata !270, i32 763, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1404 = metadata !{i32 3}
!1405 = metadata !{i32 771, i32 0, metadata !270, null}
!1406 = metadata !{i32 772, i32 0, metadata !270, null}
!1407 = metadata !{i32 779, i32 0, metadata !270, null}
!1408 = metadata !{i32 781, i32 0, metadata !270, null}
!1409 = metadata !{i32 783, i32 0, metadata !1410, null}
!1410 = metadata !{i32 786443, metadata !1, metadata !270, i32 782, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1411 = metadata !{i32 784, i32 0, metadata !1410, null}
!1412 = metadata !{i32 785, i32 0, metadata !1410, null}
!1413 = metadata !{i32 786, i32 0, metadata !1410, null}
!1414 = metadata !{i32 787, i32 0, metadata !1410, null}
!1415 = metadata !{i32 788, i32 0, metadata !1410, null}
!1416 = metadata !{i32 790, i32 0, metadata !1417, null}
!1417 = metadata !{i32 786443, metadata !1, metadata !1410, i32 789, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1418 = metadata !{i32 791, i32 0, metadata !1417, null}
!1419 = metadata !{i32 792, i32 0, metadata !1417, null}
!1420 = metadata !{i32 797, i32 0, metadata !1421, null}
!1421 = metadata !{i32 786443, metadata !1, metadata !270, i32 796, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1422 = metadata !{i32 798, i32 0, metadata !1421, null}
!1423 = metadata !{i32 799, i32 0, metadata !1421, null}
!1424 = metadata !{i32 802, i32 0, metadata !270, null}
!1425 = metadata !{i32 804, i32 0, metadata !1426, null}
!1426 = metadata !{i32 786443, metadata !1, metadata !270, i32 803, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1427 = metadata !{i32 805, i32 0, metadata !1426, null}
!1428 = metadata !{i32 806, i32 0, metadata !1426, null}
!1429 = metadata !{i32 807, i32 0, metadata !1426, null}
!1430 = metadata !{i32 808, i32 0, metadata !1426, null}
!1431 = metadata !{i32 809, i32 0, metadata !1426, null}
!1432 = metadata !{i32 811, i32 0, metadata !1433, null}
!1433 = metadata !{i32 786443, metadata !1, metadata !1426, i32 810, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1434 = metadata !{i32 812, i32 0, metadata !1433, null}
!1435 = metadata !{i32 813, i32 0, metadata !1433, null}
!1436 = metadata !{i32 825, i32 0, metadata !1437, null}
!1437 = metadata !{i32 786443, metadata !1, metadata !1438, i32 825, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1438 = metadata !{i32 786443, metadata !1, metadata !1439, i32 822, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1439 = metadata !{i32 786443, metadata !1, metadata !270, i32 821, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1440 = metadata !{i32 827, i32 0, metadata !1441, null}
!1441 = metadata !{i32 786443, metadata !1, metadata !1437, i32 826, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1442 = metadata !{i32 828, i32 0, metadata !1441, null}
!1443 = metadata !{i32 830, i32 0, metadata !1441, null}
!1444 = metadata !{i32 832, i32 0, metadata !1445, null}
!1445 = metadata !{i32 786443, metadata !1, metadata !1441, i32 831, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1446 = metadata !{i32 834, i32 0, metadata !1447, null}
!1447 = metadata !{i32 786443, metadata !1, metadata !1445, i32 833, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1448 = metadata !{i32 835, i32 0, metadata !1447, null}
!1449 = metadata !{i32 836, i32 0, metadata !1447, null}
!1450 = metadata !{i32 837, i32 0, metadata !1447, null}
!1451 = metadata !{i32 839, i32 0, metadata !1452, null}
!1452 = metadata !{i32 786443, metadata !1, metadata !1447, i32 838, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1453 = metadata !{i32 840, i32 0, metadata !1452, null}
!1454 = metadata !{i32 841, i32 0, metadata !1452, null}
!1455 = metadata !{i32 842, i32 0, metadata !1452, null}
!1456 = metadata !{i32 848, i32 0, metadata !1438, null}
!1457 = metadata !{i32 849, i32 0, metadata !1438, null}
!1458 = metadata !{i32 850, i32 0, metadata !1438, null}
!1459 = metadata !{i32 821, i32 0, metadata !1439, null}
!1460 = metadata !{i32 854, i32 0, metadata !270, null}
!1461 = metadata !{i32 855, i32 0, metadata !270, null}
!1462 = metadata !{i32 858, i32 0, metadata !270, null}
!1463 = metadata !{i32 875, i32 0, metadata !317, null}
!1464 = metadata !{i32 877, i32 0, metadata !1465, null}
!1465 = metadata !{i32 786443, metadata !1, metadata !317, i32 876, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1466 = metadata !{i32 879, i32 0, metadata !1467, null}
!1467 = metadata !{i32 786443, metadata !1, metadata !1465, i32 878, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1468 = metadata !{i32 880, i32 0, metadata !1467, null}
!1469 = metadata !{i32 883, i32 0, metadata !1470, null}
!1470 = metadata !{i32 786443, metadata !1, metadata !1465, i32 882, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1471 = metadata !{i32 884, i32 0, metadata !1470, null}
!1472 = metadata !{i32 887, i32 0, metadata !1473, null}
!1473 = metadata !{i32 786443, metadata !1, metadata !1465, i32 886, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1474 = metadata !{i32 885, i32 0, metadata !1465, null}
!1475 = metadata !{i32 888, i32 0, metadata !1473, null}
!1476 = metadata !{i32 891, i32 0, metadata !1477, null}
!1477 = metadata !{i32 786443, metadata !1, metadata !1465, i32 890, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1478 = metadata !{i32 894, i32 0, metadata !317, null}
!1479 = metadata !{i32 897, i32 0, metadata !318, null}
!1480 = metadata !{i32 900, i32 0, metadata !318, null}
!1481 = metadata !{i32 901, i32 0, metadata !318, null}
!1482 = metadata !{i32 902, i32 0, metadata !318, null}
!1483 = metadata !{i32 910, i32 0, metadata !1484, null}
!1484 = metadata !{i32 786443, metadata !1, metadata !1485, i32 910, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1485 = metadata !{i32 786443, metadata !1, metadata !1486, i32 909, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1486 = metadata !{i32 786443, metadata !1, metadata !1487, i32 908, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1487 = metadata !{i32 786443, metadata !1, metadata !1488, i32 907, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1488 = metadata !{i32 786443, metadata !1, metadata !1489, i32 906, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1489 = metadata !{i32 786443, metadata !1, metadata !1490, i32 905, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1490 = metadata !{i32 786443, metadata !1, metadata !1491, i32 904, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1491 = metadata !{i32 786443, metadata !1, metadata !318, i32 903, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1492 = metadata !{i32 912, i32 0, metadata !1493, null}
!1493 = metadata !{i32 786443, metadata !1, metadata !1484, i32 911, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/fast_me.c]
!1494 = metadata !{i32 904, i32 0, metadata !1490, null}
!1495 = metadata !{i32 906, i32 0, metadata !1488, null}
!1496 = metadata !{i32 908, i32 0, metadata !1486, null}
!1497 = metadata !{i32 919, i32 0, metadata !318, null}
