; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/cabac.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@last_dquant = global i32 0, align 4
@img = external global %struct.ImageParameters*
@.str = private unnamed_addr constant [37 x i8] c"create_contexts_MotionInfo: enco_ctx\00", align 1
@.str1 = private unnamed_addr constant [38 x i8] c"create_contexts_TextureInfo: enco_ctx\00", align 1
@enc_picture = external global %struct.storable_picture*
@type2ctx_bcbp = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@maxpos = internal unnamed_addr constant [10 x i32] [i32 16, i32 15, i32 64, i32 32, i32 32, i32 16, i32 4, i32 15, i32 8, i32 16], align 16
@type2ctx_last = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 6, i32 6], align 16
@pos2ctx_map_int = internal unnamed_addr constant [10 x i32*] [i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32]* @pos2ctx_map8x8i, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_map8x4i, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_map4x8i, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4c, i32 0, i32 0)], align 16
@pos2ctx_map = internal unnamed_addr constant [10 x i32*] [i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32]* @pos2ctx_map8x8, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_map8x4, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_map8x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_map4x4c, i32 0, i32 0)], align 16
@pos2ctx_last = internal unnamed_addr constant [10 x i32*] [i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32]* @pos2ctx_last8x8, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_last8x4, i32 0, i32 0), i32* getelementptr inbounds ([32 x i32]* @pos2ctx_last8x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last2x4c, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32]* @pos2ctx_last4x4c, i32 0, i32 0)], align 16
@max_c2 = internal unnamed_addr constant [10 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 4, i32 3, i32 3], align 16
@type2ctx_abs = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 5, i32 5], align 16
@writeRunLevel_CABAC.coeff = internal global [64 x i32] zeroinitializer, align 16
@writeRunLevel_CABAC.coeff_ctr = internal unnamed_addr global i32 0, align 4
@writeRunLevel_CABAC.pos = internal unnamed_addr global i32 0, align 4
@__func__.writeRunLevel_CABAC = private unnamed_addr constant [20 x i8] c"writeRunLevel_CABAC\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/cabac.c\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"pos < 65\00", align 1
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
@pos2ctx_map4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 14], align 16
@pos2ctx_map8x8i = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 8, i32 4, i32 5, i32 6, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14], align 16
@pos2ctx_map8x4i = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 7, i32 6, i32 8, i32 9, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 12, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 14], align 16
@pos2ctx_map4x8i = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 6, i32 2, i32 7, i32 7, i32 8, i32 8, i32 8, i32 5, i32 6, i32 9, i32 10, i32 10, i32 11, i32 11, i32 11, i32 12, i32 13, i32 13, i32 14, i32 14, i32 14], align 16
@pos2ctx_map2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 5, i32 4, i32 4, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 6, i32 7, i32 7, i32 7, i32 8, i32 9, i32 10, i32 9, i32 8, i32 7, i32 7, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 7, i32 8, i32 9, i32 14, i32 10, i32 9, i32 8, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 9, i32 14, i32 10, i32 9, i32 11, i32 12, i32 13, i32 11, i32 14, i32 10, i32 12, i32 14], align 16
@pos2ctx_map8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 12, i32 8, i32 9, i32 10, i32 11, i32 9, i32 13, i32 13, i32 14, i32 14], align 16
@pos2ctx_last4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@pos2ctx_last8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 8], align 16
@pos2ctx_last8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8], align 16
@pos2ctx_last2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_last4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@str = private unnamed_addr constant [47 x i8] c"Unsupported MB-MODE in writeMB_typeInfo_CABAC!\00"

; Function Attrs: nounwind optsize ssp uwtable
define void @cabac_new_slice() #0 {
  store i32 0, i32* @last_dquant, align 4, !dbg !994, !tbaa !995
  ret void, !dbg !999
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CheckAvailabilityOfNeighborsCABAC() #0 {
  %up = alloca %struct.pix_pos, align 4
  %left = alloca %struct.pix_pos, align 4
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1000, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !1003
  %3 = load i32* %2, align 4, !dbg !1003, !tbaa !1004
  %4 = sext i32 %3 to i64, !dbg !1008
  %5 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !1009
  %6 = load %struct.macroblock** %5, align 8, !dbg !1009, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct.pix_pos* %left, i64 0, metadata !197, metadata !1011), !dbg !1012
  call void @getNeighbour(i32 %3, i32 -1, i32 0, i32 1, %struct.pix_pos* %left) #6, !dbg !1013
  %7 = load %struct.ImageParameters** @img, align 8, !dbg !1014, !tbaa !1001
  %8 = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 3, !dbg !1015
  %9 = load i32* %8, align 4, !dbg !1015, !tbaa !1004
  call void @llvm.dbg.value(metadata %struct.pix_pos* %up, i64 0, metadata !187, metadata !1011), !dbg !1016
  call void @getNeighbour(i32 %9, i32 0, i32 -1, i32 1, %struct.pix_pos* %up) #6, !dbg !1017
  %10 = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 0, !dbg !1018
  %11 = load i32* %10, align 4, !dbg !1018, !tbaa !1020
  %12 = icmp eq i32 %11, 0, !dbg !1022
  br i1 %12, label %21, label %13, !dbg !1023

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 1, !dbg !1024
  %15 = load i32* %14, align 4, !dbg !1024, !tbaa !1025
  %16 = sext i32 %15 to i64, !dbg !1026
  %17 = load %struct.ImageParameters** @img, align 8, !dbg !1026, !tbaa !1001
  %18 = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 51, !dbg !1027
  %19 = load %struct.macroblock** %18, align 8, !dbg !1027, !tbaa !1010
  %20 = getelementptr inbounds %struct.macroblock* %19, i64 %16, !dbg !1026
  br label %21, !dbg !1028

; <label>:21                                      ; preds = %0, %13
  %.sink = phi %struct.macroblock* [ %20, %13 ], [ null, %0 ]
  %22 = getelementptr inbounds %struct.macroblock* %6, i64 %4, i32 6, !dbg !1029
  store %struct.macroblock* %.sink, %struct.macroblock** %22, align 8
  %23 = getelementptr inbounds %struct.pix_pos* %left, i64 0, i32 0, !dbg !1030
  %24 = load i32* %23, align 4, !dbg !1030, !tbaa !1020
  %25 = icmp eq i32 %24, 0, !dbg !1032
  br i1 %25, label %34, label %26, !dbg !1033

; <label>:26                                      ; preds = %21
  %27 = getelementptr inbounds %struct.pix_pos* %left, i64 0, i32 1, !dbg !1034
  %28 = load i32* %27, align 4, !dbg !1034, !tbaa !1025
  %29 = sext i32 %28 to i64, !dbg !1035
  %30 = load %struct.ImageParameters** @img, align 8, !dbg !1035, !tbaa !1001
  %31 = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 51, !dbg !1036
  %32 = load %struct.macroblock** %31, align 8, !dbg !1036, !tbaa !1010
  %33 = getelementptr inbounds %struct.macroblock* %32, i64 %29, !dbg !1035
  br label %34, !dbg !1037

; <label>:34                                      ; preds = %21, %26
  %.sink1 = phi %struct.macroblock* [ %33, %26 ], [ null, %21 ]
  %35 = getelementptr inbounds %struct.macroblock* %6, i64 %4, i32 7, !dbg !1038
  store %struct.macroblock* %.sink1, %struct.macroblock** %35, align 8
  ret void, !dbg !1039
}

; Function Attrs: optsize
declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.MotionInfoContexts* @create_contexts_MotionInfo() #0 {
  %1 = tail call i8* @calloc(i64 1, i64 1504) #6, !dbg !1040
  %2 = bitcast i8* %1 to %struct.MotionInfoContexts*, !dbg !1041
  tail call void @llvm.dbg.value(metadata %struct.MotionInfoContexts* %2, i64 0, metadata !202, metadata !1011), !dbg !1042
  %3 = icmp eq i8* %1, null, !dbg !1043
  br i1 %3, label %4, label %5, !dbg !1045

; <label>:4                                       ; preds = %0
  tail call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1046
  br label %5, !dbg !1046

; <label>:5                                       ; preds = %4, %0
  ret %struct.MotionInfoContexts* %2, !dbg !1047
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.TextureInfoContexts* @create_contexts_TextureInfo() #0 {
  %1 = tail call i8* @calloc(i64 1, i64 12128) #6, !dbg !1048
  %2 = bitcast i8* %1 to %struct.TextureInfoContexts*, !dbg !1049
  tail call void @llvm.dbg.value(metadata %struct.TextureInfoContexts* %2, i64 0, metadata !207, metadata !1011), !dbg !1050
  %3 = icmp eq i8* %1, null, !dbg !1051
  br i1 %3, label %4, label %5, !dbg !1053

; <label>:4                                       ; preds = %0
  tail call void @no_mem_exit(i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !1054
  br label %5, !dbg !1054

; <label>:5                                       ; preds = %4, %0
  ret %struct.TextureInfoContexts* %2, !dbg !1055
}

; Function Attrs: nounwind optsize ssp uwtable
define void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %enco_ctx) #0 {
  tail call void @llvm.dbg.value(metadata %struct.MotionInfoContexts* %enco_ctx, i64 0, metadata !212, metadata !1011), !dbg !1056
  %1 = icmp eq %struct.MotionInfoContexts* %enco_ctx, null, !dbg !1057
  br i1 %1, label %4, label %2, !dbg !1059

; <label>:2                                       ; preds = %0
  %3 = bitcast %struct.MotionInfoContexts* %enco_ctx to i8*, !dbg !1060
  tail call void @free(i8* %3) #7, !dbg !1061
  br label %4, !dbg !1062

; <label>:4                                       ; preds = %0, %2
  ret void, !dbg !1063
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %enco_ctx) #0 {
  tail call void @llvm.dbg.value(metadata %struct.TextureInfoContexts* %enco_ctx, i64 0, metadata !217, metadata !1011), !dbg !1064
  %1 = icmp eq %struct.TextureInfoContexts* %enco_ctx, null, !dbg !1065
  br i1 %1, label %4, label %2, !dbg !1067

; <label>:2                                       ; preds = %0
  %3 = bitcast %struct.TextureInfoContexts* %enco_ctx to i8*, !dbg !1068
  tail call void @free(i8* %3) #7, !dbg !1069
  br label %4, !dbg !1070

; <label>:4                                       ; preds = %0, %2
  ret void, !dbg !1071
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !298, metadata !1011), !dbg !1072
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !299, metadata !1011), !dbg !1073
  %1 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 1, !dbg !1074
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %1, i64 0, metadata !301, metadata !1011), !dbg !1075
  %2 = tail call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1) #6, !dbg !1076
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !300, metadata !1011), !dbg !1077
  %3 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 9, !dbg !1078
  %4 = load void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %3, align 8, !dbg !1078, !tbaa !1079
  tail call void %4(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %1) #6, !dbg !1081
  %5 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0, !dbg !1082
  %6 = load i32* %5, align 4, !dbg !1082, !tbaa !1084
  %7 = icmp eq i32 %6, 0, !dbg !1085
  br i1 %7, label %12, label %8, !dbg !1086

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1087
  %10 = load %struct.Bitstream** %9, align 8, !dbg !1087, !tbaa !1088
  %11 = getelementptr inbounds %struct.Bitstream* %10, i64 0, i32 10, !dbg !1091
  store i32 1, i32* %11, align 4, !dbg !1092, !tbaa !1093
  br label %12, !dbg !1095

; <label>:12                                      ; preds = %0, %8
  %13 = tail call i32 @arienco_bits_written(%struct.EncodingEnvironment* %1) #6, !dbg !1096
  %14 = sub nsw i32 %13, %2, !dbg !1097
  %15 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1098
  store i32 %14, i32* %15, align 4, !dbg !1099, !tbaa !1100
  ret i32 %14, !dbg !1101
}

; Function Attrs: optsize
declare i32 @arienco_bits_written(%struct.EncodingEnvironment*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @writeFieldModeInfo_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !306, metadata !1011), !dbg !1102
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !307, metadata !1011), !dbg !1103
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1104, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !1105
  %3 = load %struct.Slice** %2, align 8, !dbg !1105, !tbaa !1106
  %4 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 7, !dbg !1107
  %5 = load %struct.MotionInfoContexts** %4, align 8, !dbg !1107, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.MotionInfoContexts* %5, i64 0, metadata !311, metadata !1011), !dbg !1110
  %6 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !1111
  %7 = load i32* %6, align 4, !dbg !1111, !tbaa !1004
  %8 = sext i32 %7 to i64, !dbg !1112
  %9 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !1113
  %10 = load %struct.macroblock** %9, align 8, !dbg !1113, !tbaa !1010
  %11 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1114
  %12 = load i32* %11, align 4, !dbg !1114, !tbaa !1115
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !313, metadata !1011), !dbg !1116
  %13 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 27, !dbg !1117
  %14 = load i32* %13, align 4, !dbg !1117, !tbaa !1119
  %15 = icmp eq i32 %14, 0, !dbg !1123
  br i1 %15, label %22, label %16, !dbg !1124

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 23, !dbg !1125
  %18 = load i32* %17, align 4, !dbg !1125, !tbaa !1126
  %19 = sext i32 %18 to i64, !dbg !1127
  %20 = getelementptr inbounds %struct.macroblock* %10, i64 %19, i32 22, !dbg !1128
  %21 = load i32* %20, align 4, !dbg !1128, !tbaa !1129
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !308, metadata !1011), !dbg !1130
  br label %22, !dbg !1131

; <label>:22                                      ; preds = %0, %16
  %a.0 = phi i32 [ %21, %16 ], [ 0, %0 ]
  %23 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 28, !dbg !1132
  %24 = load i32* %23, align 4, !dbg !1132, !tbaa !1134
  %25 = icmp eq i32 %24, 0, !dbg !1135
  br i1 %25, label %32, label %26, !dbg !1136

; <label>:26                                      ; preds = %22
  %27 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 24, !dbg !1137
  %28 = load i32* %27, align 4, !dbg !1137, !tbaa !1138
  %29 = sext i32 %28 to i64, !dbg !1139
  %30 = getelementptr inbounds %struct.macroblock* %10, i64 %29, i32 22, !dbg !1140
  %31 = load i32* %30, align 4, !dbg !1140, !tbaa !1129
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !309, metadata !1011), !dbg !1141
  br label %32, !dbg !1142

; <label>:32                                      ; preds = %22, %26
  %b.0 = phi i32 [ %31, %26 ], [ 0, %22 ]
  %33 = add nsw i32 %b.0, %a.0, !dbg !1143
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !310, metadata !1011), !dbg !1144
  %34 = icmp eq i32 %12, 0, !dbg !1145
  %35 = sext i32 %33 to i64, !dbg !1147
  %36 = getelementptr inbounds %struct.MotionInfoContexts* %5, i64 0, i32 5, i64 %35, !dbg !1147
  br i1 %34, label %37, label %38, !dbg !1148

; <label>:37                                      ; preds = %32
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %36) #6, !dbg !1149
  br label %39, !dbg !1149

; <label>:38                                      ; preds = %32
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %36) #6, !dbg !1150
  br label %39

; <label>:39                                      ; preds = %38, %37
  %40 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1151
  store i32 %33, i32* %40, align 4, !dbg !1152, !tbaa !1153
  ret void, !dbg !1154
}

; Function Attrs: optsize
declare void @biari_encode_symbol(%struct.EncodingEnvironment*, i16 signext, %struct.BiContextType*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @writeMB_skip_flagInfo_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !316, metadata !1011), !dbg !1155
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !317, metadata !1011), !dbg !1156
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1157, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6, !dbg !1158
  %3 = load i32* %2, align 4, !dbg !1158, !tbaa !1159
  %4 = icmp eq i32 %3, 1, !dbg !1160
  %5 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !1161
  %6 = load %struct.Slice** %5, align 8, !dbg !1161, !tbaa !1106
  %7 = getelementptr inbounds %struct.Slice* %6, i64 0, i32 7, !dbg !1162
  %8 = load %struct.MotionInfoContexts** %7, align 8, !dbg !1162, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.MotionInfoContexts* %8, i64 0, metadata !322, metadata !1011), !dbg !1163
  %9 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !1164
  %10 = load i32* %9, align 4, !dbg !1164, !tbaa !1004
  %11 = sext i32 %10 to i64, !dbg !1165
  %12 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !1166
  %13 = load %struct.macroblock** %12, align 8, !dbg !1166, !tbaa !1010
  %14 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1167
  %15 = load i32* %14, align 4, !dbg !1167, !tbaa !1115
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !324, metadata !1011), !dbg !1168
  %16 = getelementptr inbounds %struct.macroblock* %13, i64 %11, i32 6, !dbg !1169
  %17 = load %struct.macroblock** %16, align 8, !dbg !1169, !tbaa !1173
  %18 = icmp eq %struct.macroblock* %17, null, !dbg !1174
  br i1 %4, label %19, label %56, !dbg !1175

; <label>:19                                      ; preds = %0
  br i1 %18, label %24, label %20, !dbg !1176

; <label>:20                                      ; preds = %19
  %21 = getelementptr inbounds %struct.macroblock* %17, i64 0, i32 44, !dbg !1177
  %22 = load i32* %21, align 4, !dbg !1177, !tbaa !1178
  %not. = icmp ne i32 %22, 0, !dbg !1179
  %23 = zext i1 %not. to i32, !dbg !1179
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !319, metadata !1011), !dbg !1180
  br label %24

; <label>:24                                      ; preds = %19, %20
  %b.0 = phi i32 [ %23, %20 ], [ 0, %19 ]
  %25 = getelementptr inbounds %struct.macroblock* %13, i64 %11, i32 7, !dbg !1181
  %26 = load %struct.macroblock** %25, align 8, !dbg !1181, !tbaa !1183
  %27 = icmp eq %struct.macroblock* %26, null, !dbg !1184
  br i1 %27, label %31, label %28, !dbg !1185

; <label>:28                                      ; preds = %24
  %29 = getelementptr inbounds %struct.macroblock* %26, i64 0, i32 44, !dbg !1186
  %30 = load i32* %29, align 4, !dbg !1186, !tbaa !1178
  %not.1 = icmp ne i32 %30, 0, !dbg !1187
  %phitmp = select i1 %not.1, i32 8, i32 7
  br label %31

; <label>:31                                      ; preds = %24, %28
  %a.0 = phi i32 [ %phitmp, %28 ], [ 7, %24 ]
  %32 = add nuw nsw i32 %a.0, %b.0, !dbg !1188
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !320, metadata !1011), !dbg !1189
  %33 = icmp eq i32 %15, 0, !dbg !1190
  br i1 %33, label %34, label %41, !dbg !1192

; <label>:34                                      ; preds = %31
  %35 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1193
  %36 = load i32* %35, align 4, !dbg !1193, !tbaa !1194
  %37 = icmp eq i32 %36, 0, !dbg !1195
  br i1 %37, label %38, label %41, !dbg !1196

; <label>:38                                      ; preds = %34
  %39 = zext i32 %32 to i64, !dbg !1197
  %40 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 0, i64 2, i64 %39, !dbg !1197
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %40) #6, !dbg !1198
  br label %44, !dbg !1198

; <label>:41                                      ; preds = %34, %31
  %42 = zext i32 %32 to i64, !dbg !1199
  %43 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 0, i64 2, i64 %42, !dbg !1199
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %43) #6, !dbg !1200
  br label %44

; <label>:44                                      ; preds = %41, %38
  %45 = load i32* %14, align 4, !dbg !1201, !tbaa !1115
  %46 = icmp eq i32 %45, 0, !dbg !1202
  br i1 %46, label %47, label %51, !dbg !1203

; <label>:47                                      ; preds = %44
  %48 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1204
  %49 = load i32* %48, align 4, !dbg !1204, !tbaa !1194
  %50 = icmp eq i32 %49, 0, !dbg !1205
  br label %51

; <label>:51                                      ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32, !dbg !1206
  %54 = xor i32 %53, 1, !dbg !1206
  %55 = getelementptr inbounds %struct.macroblock* %13, i64 %11, i32 44, !dbg !1207
  store i32 %54, i32* %55, align 4, !dbg !1208, !tbaa !1178
  br label %82, !dbg !1209

; <label>:56                                      ; preds = %0
  br i1 %18, label %62, label %57, !dbg !1210

; <label>:57                                      ; preds = %56
  %58 = getelementptr inbounds %struct.macroblock* %17, i64 0, i32 44, !dbg !1212
  %59 = load i32* %58, align 4, !dbg !1212, !tbaa !1178
  %60 = icmp ne i32 %59, 0, !dbg !1214
  %61 = zext i1 %60 to i32, !dbg !1215
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !319, metadata !1011), !dbg !1180
  br label %62

; <label>:62                                      ; preds = %56, %57
  %b.1 = phi i32 [ %61, %57 ], [ 0, %56 ]
  %63 = getelementptr inbounds %struct.macroblock* %13, i64 %11, i32 7, !dbg !1216
  %64 = load %struct.macroblock** %63, align 8, !dbg !1216, !tbaa !1183
  %65 = icmp eq %struct.macroblock* %64, null, !dbg !1218
  br i1 %65, label %71, label %66, !dbg !1219

; <label>:66                                      ; preds = %62
  %67 = getelementptr inbounds %struct.macroblock* %64, i64 0, i32 44, !dbg !1220
  %68 = load i32* %67, align 4, !dbg !1220, !tbaa !1178
  %69 = icmp ne i32 %68, 0, !dbg !1221
  %70 = zext i1 %69 to i32, !dbg !1222
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !318, metadata !1011), !dbg !1223
  br label %71

; <label>:71                                      ; preds = %62, %66
  %a.1 = phi i32 [ %70, %66 ], [ 0, %62 ]
  %72 = add nuw nsw i32 %a.1, %b.1, !dbg !1224
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !320, metadata !1011), !dbg !1189
  %73 = icmp eq i32 %15, 0, !dbg !1225
  %74 = zext i32 %72 to i64, !dbg !1227
  %75 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 0, i64 1, i64 %74, !dbg !1227
  br i1 %73, label %76, label %77, !dbg !1228

; <label>:76                                      ; preds = %71
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %75) #6, !dbg !1229
  br label %78, !dbg !1229

; <label>:77                                      ; preds = %71
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %75) #6, !dbg !1230
  br label %78

; <label>:78                                      ; preds = %77, %76
  %79 = zext i1 %73 to i32, !dbg !1231
  %80 = xor i32 %79, 1, !dbg !1231
  %81 = getelementptr inbounds %struct.macroblock* %13, i64 %11, i32 44, !dbg !1232
  store i32 %80, i32* %81, align 4, !dbg !1233, !tbaa !1178
  br label %82

; <label>:82                                      ; preds = %78, %51
  %act_ctx.0 = phi i32 [ %32, %51 ], [ %72, %78 ]
  %83 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1234
  store i32 %act_ctx.0, i32* %83, align 4, !dbg !1235, !tbaa !1153
  ret void, !dbg !1236
}

; Function Attrs: nounwind optsize ssp uwtable
define void @writeMB_transform_size_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !327, metadata !1011), !dbg !1237
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !328, metadata !1011), !dbg !1238
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !331, metadata !1011), !dbg !1239
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1240, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !1241
  %3 = load %struct.Slice** %2, align 8, !dbg !1241, !tbaa !1106
  %4 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 7, !dbg !1242
  %5 = load %struct.MotionInfoContexts** %4, align 8, !dbg !1242, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.MotionInfoContexts* %5, i64 0, metadata !333, metadata !1011), !dbg !1243
  %6 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !1244
  %7 = load i32* %6, align 4, !dbg !1244, !tbaa !1004
  %8 = sext i32 %7 to i64, !dbg !1245
  %9 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !1246
  %10 = load %struct.macroblock** %9, align 8, !dbg !1246, !tbaa !1010
  %11 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 6, !dbg !1247
  %12 = load %struct.macroblock** %11, align 8, !dbg !1247, !tbaa !1173
  %13 = icmp eq %struct.macroblock* %12, null, !dbg !1249
  br i1 %13, label %17, label %14, !dbg !1250

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %struct.macroblock* %12, i64 0, i32 32, !dbg !1251
  %16 = load i32* %15, align 4, !dbg !1251, !tbaa !1252
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !330, metadata !1011), !dbg !1253
  br label %17

; <label>:17                                      ; preds = %0, %14
  %b.0 = phi i32 [ %16, %14 ], [ 0, %0 ]
  %18 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 7, !dbg !1254
  %19 = load %struct.macroblock** %18, align 8, !dbg !1254, !tbaa !1183
  %20 = icmp eq %struct.macroblock* %19, null, !dbg !1256
  br i1 %20, label %24, label %21, !dbg !1257

; <label>:21                                      ; preds = %17
  %22 = getelementptr inbounds %struct.macroblock* %19, i64 0, i32 32, !dbg !1258
  %23 = load i32* %22, align 4, !dbg !1258, !tbaa !1252
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !329, metadata !1011), !dbg !1259
  br label %24

; <label>:24                                      ; preds = %17, %21
  %a.0 = phi i32 [ %23, %21 ], [ 0, %17 ]
  %25 = add nsw i32 %a.0, %b.0, !dbg !1260
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !331, metadata !1011), !dbg !1239
  %26 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 32, !dbg !1261
  %27 = load i32* %26, align 4, !dbg !1261, !tbaa !1252
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !332, metadata !1011), !dbg !1262
  %28 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1263
  store i32 %25, i32* %28, align 4, !dbg !1264, !tbaa !1153
  %29 = icmp eq i32 %27, 0, !dbg !1265
  %30 = sext i32 %25 to i64, !dbg !1267
  %31 = getelementptr inbounds %struct.MotionInfoContexts* %5, i64 0, i32 6, i64 %30, !dbg !1267
  br i1 %29, label %32, label %33, !dbg !1268

; <label>:32                                      ; preds = %24
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %31) #6, !dbg !1269
  br label %34, !dbg !1269

; <label>:33                                      ; preds = %24
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %31) #6, !dbg !1270
  br label %34

; <label>:34                                      ; preds = %33, %32
  ret void, !dbg !1271
}

; Function Attrs: nounwind optsize ssp uwtable
define void @writeMB_typeInfo_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !337, metadata !1011), !dbg !1272
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !338, metadata !1011), !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !341, metadata !1011), !dbg !1274
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1275, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6, !dbg !1276
  %3 = load i32* %2, align 4, !dbg !1276, !tbaa !1159
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !345, metadata !1011), !dbg !1277
  %4 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !1278
  %5 = load %struct.Slice** %4, align 8, !dbg !1278, !tbaa !1106
  %6 = getelementptr inbounds %struct.Slice* %5, i64 0, i32 7, !dbg !1279
  %7 = load %struct.MotionInfoContexts** %6, align 8, !dbg !1279, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.MotionInfoContexts* %7, i64 0, metadata !347, metadata !1011), !dbg !1280
  %8 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !1281
  %9 = load i32* %8, align 4, !dbg !1281, !tbaa !1004
  %10 = sext i32 %9 to i64, !dbg !1282
  %11 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !1283
  %12 = load %struct.macroblock** %11, align 8, !dbg !1283, !tbaa !1010
  %13 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1284
  %14 = load i32* %13, align 4, !dbg !1284, !tbaa !1115
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !349, metadata !1011), !dbg !1285
  switch i32 %3, label %89 [
    i32 2, label %15
    i32 1, label %71
  ], !dbg !1286

; <label>:15                                      ; preds = %0
  %16 = getelementptr inbounds %struct.macroblock* %12, i64 %10, i32 6, !dbg !1287
  %17 = load %struct.macroblock** %16, align 8, !dbg !1287, !tbaa !1173
  %18 = icmp eq %struct.macroblock* %17, null, !dbg !1291
  br i1 %18, label %24, label %19, !dbg !1292

; <label>:19                                      ; preds = %15
  %20 = getelementptr inbounds %struct.macroblock* %17, i64 0, i32 8, !dbg !1293
  %21 = load i32* %20, align 4, !dbg !1293, !tbaa !1294
  %22 = icmp ne i32 %21, 13, !dbg !1295
  %not. = icmp ne i32 %21, 9, !dbg !1296
  %. = and i1 %22, %not., !dbg !1296
  %23 = zext i1 %. to i32, !dbg !1297
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !340, metadata !1011), !dbg !1298
  br label %24

; <label>:24                                      ; preds = %15, %19
  %b.0 = phi i32 [ %23, %19 ], [ 0, %15 ]
  %25 = getelementptr inbounds %struct.macroblock* %12, i64 %10, i32 7, !dbg !1299
  %26 = load %struct.macroblock** %25, align 8, !dbg !1299, !tbaa !1183
  %27 = icmp eq %struct.macroblock* %26, null, !dbg !1301
  br i1 %27, label %33, label %28, !dbg !1302

; <label>:28                                      ; preds = %24
  %29 = getelementptr inbounds %struct.macroblock* %26, i64 0, i32 8, !dbg !1303
  %30 = load i32* %29, align 4, !dbg !1303, !tbaa !1294
  %31 = icmp ne i32 %30, 13, !dbg !1304
  %not.14 = icmp ne i32 %30, 9, !dbg !1305
  %.6 = and i1 %31, %not.14, !dbg !1305
  %32 = zext i1 %.6 to i32, !dbg !1306
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !339, metadata !1011), !dbg !1307
  br label %33

; <label>:33                                      ; preds = %24, %28
  %a.0 = phi i32 [ %32, %28 ], [ 0, %24 ]
  %34 = add nuw nsw i32 %a.0, %b.0, !dbg !1308
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !341, metadata !1011), !dbg !1274
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !342, metadata !1011), !dbg !1309
  %35 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1310
  store i32 %34, i32* %35, align 4, !dbg !1311, !tbaa !1153
  %36 = icmp eq i32 %14, 0, !dbg !1312
  br i1 %36, label %37, label %40, !dbg !1314

; <label>:37                                      ; preds = %33
  %38 = zext i32 %34 to i64, !dbg !1315
  %39 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 0, i64 %38, !dbg !1315
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %39) #6, !dbg !1317
  br label %.thread, !dbg !1318

; <label>:40                                      ; preds = %33
  %41 = icmp eq i32 %14, 25, !dbg !1319
  %42 = zext i32 %34 to i64, !dbg !1321
  %43 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 0, i64 %42, !dbg !1321
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %43) #6, !dbg !1323
  br i1 %41, label %44, label %45, !dbg !1324

; <label>:44                                      ; preds = %40
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 1) #6, !dbg !1325
  br label %.thread, !dbg !1326

; <label>:45                                      ; preds = %40
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 0) #6, !dbg !1327
  %46 = add nsw i32 %14, -1, !dbg !1329
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !345, metadata !1011), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !341, metadata !1011), !dbg !1274
  %47 = sdiv i32 %46, 12, !dbg !1330
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !342, metadata !1011), !dbg !1309
  %48 = trunc i32 %47 to i16, !dbg !1331
  %49 = and i16 %48, 255, !dbg !1331
  %50 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 0, i64 4, !dbg !1332
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %49, %struct.BiContextType* %50) #6, !dbg !1333
  %51 = srem i32 %46, 12, !dbg !1334
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !345, metadata !1011), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !341, metadata !1011), !dbg !1274
  %.off4 = add nsw i32 %51, 3, !dbg !1335
  %52 = icmp ult i32 %.off4, 7, !dbg !1335
  %53 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 0, i64 5, !dbg !1337
  br i1 %52, label %54, label %55, !dbg !1339

; <label>:54                                      ; preds = %45
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %53) #6, !dbg !1340
  br label %61, !dbg !1341

; <label>:55                                      ; preds = %45
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %53) #6, !dbg !1342
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !341, metadata !1011), !dbg !1274
  %56 = and i32 %51, -4, !dbg !1344
  %57 = icmp eq i32 %56, 4, !dbg !1344
  %58 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 0, i64 6, !dbg !1346
  br i1 %57, label %59, label %60, !dbg !1348

; <label>:59                                      ; preds = %55
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %58) #6, !dbg !1349
  br label %61, !dbg !1350

; <label>:60                                      ; preds = %55
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %58) #6, !dbg !1351
  br label %61

; <label>:61                                      ; preds = %59, %60, %54
  %62 = srem i32 %51, 4, !dbg !1353
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !345, metadata !1011), !dbg !1277
  %63 = sdiv i32 %62, 2, !dbg !1354
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !342, metadata !1011), !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !341, metadata !1011), !dbg !1274
  %64 = trunc i32 %63 to i16, !dbg !1355
  %65 = and i16 %64, 255, !dbg !1355
  %66 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 0, i64 7, !dbg !1356
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %65, %struct.BiContextType* %66) #6, !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !341, metadata !1011), !dbg !1274
  %67 = srem i32 %62, 2, !dbg !1358
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !342, metadata !1011), !dbg !1309
  %68 = trunc i32 %67 to i16, !dbg !1359
  %69 = and i16 %68, 255, !dbg !1359
  %70 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 0, i64 8, !dbg !1360
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %69, %struct.BiContextType* %70) #6, !dbg !1361
  br label %.thread

; <label>:71                                      ; preds = %0
  %72 = getelementptr inbounds %struct.macroblock* %12, i64 %10, i32 6, !dbg !1362
  %73 = load %struct.macroblock** %72, align 8, !dbg !1362, !tbaa !1173
  %74 = icmp eq %struct.macroblock* %73, null, !dbg !1367
  br i1 %74, label %80, label %75, !dbg !1368

; <label>:75                                      ; preds = %71
  %76 = getelementptr inbounds %struct.macroblock* %73, i64 0, i32 8, !dbg !1369
  %77 = load i32* %76, align 4, !dbg !1369, !tbaa !1294
  %78 = icmp ne i32 %77, 0, !dbg !1370
  %79 = zext i1 %78 to i32, !dbg !1371
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !340, metadata !1011), !dbg !1298
  br label %80

; <label>:80                                      ; preds = %71, %75
  %b.1 = phi i32 [ %79, %75 ], [ 0, %71 ]
  %81 = getelementptr inbounds %struct.macroblock* %12, i64 %10, i32 7, !dbg !1372
  %82 = load %struct.macroblock** %81, align 8, !dbg !1372, !tbaa !1183
  %83 = icmp eq %struct.macroblock* %82, null, !dbg !1374
  br i1 %83, label %114, label %84, !dbg !1375

; <label>:84                                      ; preds = %80
  %85 = getelementptr inbounds %struct.macroblock* %82, i64 0, i32 8, !dbg !1376
  %86 = load i32* %85, align 4, !dbg !1376, !tbaa !1294
  %87 = icmp ne i32 %86, 0, !dbg !1377
  %88 = zext i1 %87 to i32, !dbg !1378
  tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !339, metadata !1011), !dbg !1307
  br label %114

; <label>:89                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !342, metadata !1011), !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 24, i64 0, metadata !346, metadata !1011), !dbg !1379
  %90 = icmp slt i32 %14, 7, !dbg !1380
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !345, metadata !1011), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 24, i64 0, metadata !342, metadata !1011), !dbg !1309
  %.810 = select i1 %90, i32 %14, i32 7, !dbg !1382
  switch i32 %.810, label %113 [
    i32 0, label %.thread
    i32 1, label %91
    i32 2, label %95
    i32 3, label %99
    i32 4, label %103
    i32 5, label %103
    i32 6, label %107
    i32 7, label %.thread15
  ], !dbg !1383

; <label>:91                                      ; preds = %89
  %92 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 4, !dbg !1386
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %92) #6, !dbg !1388
  %93 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 5, !dbg !1389
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %93) #6, !dbg !1390
  %94 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 6, !dbg !1391
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %94) #6, !dbg !1392
  br label %.thread, !dbg !1393

; <label>:95                                      ; preds = %89
  %96 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 4, !dbg !1394
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %96) #6, !dbg !1395
  %97 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 5, !dbg !1396
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %97) #6, !dbg !1397
  %98 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 7, !dbg !1398
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %98) #6, !dbg !1399
  br label %.thread, !dbg !1400

; <label>:99                                      ; preds = %89
  %100 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 4, !dbg !1401
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %100) #6, !dbg !1402
  %101 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 5, !dbg !1403
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %101) #6, !dbg !1404
  %102 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 7, !dbg !1405
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %102) #6, !dbg !1406
  br label %.thread, !dbg !1407

; <label>:103                                     ; preds = %89, %89
  %104 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 4, !dbg !1408
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %104) #6, !dbg !1409
  %105 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 5, !dbg !1410
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %105) #6, !dbg !1411
  %106 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 6, !dbg !1412
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %106) #6, !dbg !1413
  br label %.thread, !dbg !1414

; <label>:107                                     ; preds = %89
  %108 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 4, !dbg !1415
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %108) #6, !dbg !1416
  %109 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 7, !dbg !1417
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %109) #6, !dbg !1418
  br label %.thread, !dbg !1419

.thread15:                                        ; preds = %89
  %110 = add nsw i32 %14, -7, !dbg !1420
  %.79 = select i1 %90, i32 0, i32 %110, !dbg !1382
  %111 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 4, !dbg !1422
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %111) #6, !dbg !1423
  %112 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 7, !dbg !1424
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %112) #6, !dbg !1425
  br label %193, !dbg !1426

; <label>:113                                     ; preds = %89
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str, i64 0, i64 0)), !dbg !1427
  tail call void @exit(i32 1) #8, !dbg !1428
  unreachable, !dbg !1428

; <label>:114                                     ; preds = %80, %84
  %a.1 = phi i32 [ %88, %84 ], [ 0, %80 ]
  %115 = add nuw nsw i32 %a.1, %b.1, !dbg !1429
  tail call void @llvm.dbg.value(metadata i32 %115, i64 0, metadata !341, metadata !1011), !dbg !1274
  %116 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1430
  store i32 %115, i32* %116, align 4, !dbg !1431, !tbaa !1153
  %phitmp3 = zext i32 %115 to i64, !dbg !1432
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !342, metadata !1011), !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 24, i64 0, metadata !346, metadata !1011), !dbg !1379
  %117 = icmp slt i32 %14, 24, !dbg !1380
  %118 = add nsw i32 %14, -24, !dbg !1420
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !345, metadata !1011), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 24, i64 0, metadata !342, metadata !1011), !dbg !1309
  %.7 = select i1 %117, i32 0, i32 %118, !dbg !1382
  %.8 = select i1 %117, i32 %14, i32 24, !dbg !1382
  %119 = icmp eq i32 %.8, 0, !dbg !1433
  br i1 %119, label %120, label %122, !dbg !1436

; <label>:120                                     ; preds = %114
  %121 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 %phitmp3, !dbg !1437
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %121) #6, !dbg !1439
  br label %.thread, !dbg !1440

; <label>:122                                     ; preds = %114
  %123 = icmp slt i32 %.8, 3, !dbg !1441
  br i1 %123, label %124, label %131, !dbg !1443

; <label>:124                                     ; preds = %122
  %125 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 %phitmp3, !dbg !1444
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %125) #6, !dbg !1446
  %126 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 4, !dbg !1447
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %126) #6, !dbg !1448
  %127 = icmp eq i32 %.8, 1, !dbg !1449
  %128 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 6, !dbg !1451
  br i1 %127, label %130, label %129, !dbg !1452

; <label>:129                                     ; preds = %124
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %128) #6, !dbg !1453
  br label %.thread, !dbg !1453

; <label>:130                                     ; preds = %124
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %128) #6, !dbg !1454
  br label %.thread

; <label>:131                                     ; preds = %122
  %132 = icmp slt i32 %.8, 11, !dbg !1455
  br i1 %132, label %133, label %153, !dbg !1457

; <label>:133                                     ; preds = %131
  %134 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 %phitmp3, !dbg !1458
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %134) #6, !dbg !1460
  %135 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 4, !dbg !1461
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %135) #6, !dbg !1462
  %136 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 5, !dbg !1463
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %136) #6, !dbg !1464
  %137 = add nsw i32 %.8, -3, !dbg !1465
  %138 = and i32 %137, 4, !dbg !1466
  tail call void @llvm.dbg.value(metadata i32 %138, i64 0, metadata !343, metadata !1011), !dbg !1467
  %139 = icmp eq i32 %138, 0, !dbg !1468
  %140 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 6, !dbg !1470
  br i1 %139, label %142, label %141, !dbg !1471

; <label>:141                                     ; preds = %133
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %140) #6, !dbg !1472
  br label %143, !dbg !1472

; <label>:142                                     ; preds = %133
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %140) #6, !dbg !1473
  br label %143

; <label>:143                                     ; preds = %142, %141
  %144 = and i32 %137, 2, !dbg !1474
  tail call void @llvm.dbg.value(metadata i32 %144, i64 0, metadata !343, metadata !1011), !dbg !1467
  %145 = icmp eq i32 %144, 0, !dbg !1475
  br i1 %145, label %147, label %146, !dbg !1477

; <label>:146                                     ; preds = %143
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %140) #6, !dbg !1478
  br label %148, !dbg !1478

; <label>:147                                     ; preds = %143
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %140) #6, !dbg !1479
  br label %148

; <label>:148                                     ; preds = %147, %146
  %149 = and i32 %137, 1, !dbg !1480
  tail call void @llvm.dbg.value(metadata i32 %149, i64 0, metadata !343, metadata !1011), !dbg !1467
  %150 = icmp eq i32 %149, 0, !dbg !1481
  br i1 %150, label %152, label %151, !dbg !1483

; <label>:151                                     ; preds = %148
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %140) #6, !dbg !1484
  br label %.thread, !dbg !1484

; <label>:152                                     ; preds = %148
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %140) #6, !dbg !1485
  br label %.thread

; <label>:153                                     ; preds = %131
  %154 = icmp eq i32 %.8, 11, !dbg !1486
  switch i32 %.8, label %162 [
    i32 22, label %155
    i32 11, label %155
  ], !dbg !1488

; <label>:155                                     ; preds = %153, %153
  %156 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 %phitmp3, !dbg !1489
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %156) #6, !dbg !1491
  %157 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 4, !dbg !1492
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %157) #6, !dbg !1493
  %158 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 5, !dbg !1494
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %158) #6, !dbg !1495
  %159 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 6, !dbg !1496
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %159) #6, !dbg !1497
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %159) #6, !dbg !1498
  br i1 %154, label %160, label %161, !dbg !1499

; <label>:160                                     ; preds = %155
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %159) #6, !dbg !1500
  br label %.thread, !dbg !1500

; <label>:161                                     ; preds = %155
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %159) #6, !dbg !1502
  br label %.thread

; <label>:162                                     ; preds = %153
  %163 = icmp sgt i32 %.8, 22, !dbg !1503
  %164 = sext i1 %163 to i32, !dbg !1506
  %..8 = add nsw i32 %164, %.8, !dbg !1506
  %165 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 %phitmp3, !dbg !1507
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %165) #6, !dbg !1508
  %166 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 4, !dbg !1509
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %166) #6, !dbg !1510
  %167 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 5, !dbg !1511
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %167) #6, !dbg !1512
  %168 = add nsw i32 %..8, -12, !dbg !1513
  %169 = and i32 %168, 8, !dbg !1514
  tail call void @llvm.dbg.value(metadata i32 %169, i64 0, metadata !343, metadata !1011), !dbg !1467
  %170 = icmp eq i32 %169, 0, !dbg !1515
  %171 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 2, i64 6, !dbg !1517
  br i1 %170, label %173, label %172, !dbg !1518

; <label>:172                                     ; preds = %162
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %171) #6, !dbg !1519
  br label %174, !dbg !1519

; <label>:173                                     ; preds = %162
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %171) #6, !dbg !1520
  br label %174

; <label>:174                                     ; preds = %173, %172
  %175 = and i32 %168, 4, !dbg !1521
  tail call void @llvm.dbg.value(metadata i32 %175, i64 0, metadata !343, metadata !1011), !dbg !1467
  %176 = icmp eq i32 %175, 0, !dbg !1522
  br i1 %176, label %178, label %177, !dbg !1524

; <label>:177                                     ; preds = %174
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %171) #6, !dbg !1525
  br label %179, !dbg !1525

; <label>:178                                     ; preds = %174
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %171) #6, !dbg !1526
  br label %179

; <label>:179                                     ; preds = %178, %177
  %180 = and i32 %168, 2, !dbg !1527
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !343, metadata !1011), !dbg !1467
  %181 = icmp eq i32 %180, 0, !dbg !1528
  br i1 %181, label %183, label %182, !dbg !1530

; <label>:182                                     ; preds = %179
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %171) #6, !dbg !1531
  br label %184, !dbg !1531

; <label>:183                                     ; preds = %179
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %171) #6, !dbg !1532
  br label %184

; <label>:184                                     ; preds = %183, %182
  %185 = and i32 %168, 1, !dbg !1533
  tail call void @llvm.dbg.value(metadata i32 %185, i64 0, metadata !343, metadata !1011), !dbg !1467
  %186 = icmp eq i32 %185, 0, !dbg !1534
  br i1 %186, label %188, label %187, !dbg !1536

; <label>:187                                     ; preds = %184
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %171) #6, !dbg !1537
  br label %189, !dbg !1537

; <label>:188                                     ; preds = %184
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %171) #6, !dbg !1538
  br label %189

; <label>:189                                     ; preds = %187, %188
  %190 = icmp sgt i32 %..8, 21, !dbg !1539
  %191 = zext i1 %190 to i32, !dbg !1541
  %...8 = add nsw i32 %191, %..8, !dbg !1541
  %192 = icmp eq i32 %...8, 24, !dbg !1542
  br i1 %192, label %193, label %.thread, !dbg !1426

; <label>:193                                     ; preds = %.thread15, %189
  %.71116 = phi i32 [ %.79, %.thread15 ], [ %.7, %189 ]
  %194 = icmp eq i32 %.71116, 25, !dbg !1544
  br i1 %194, label %195, label %196, !dbg !1547

; <label>:195                                     ; preds = %193
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 1) #6, !dbg !1548
  br label %.thread, !dbg !1550

; <label>:196                                     ; preds = %193
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 0) #6, !dbg !1551
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !341, metadata !1011), !dbg !1274
  %197 = sdiv i32 %.71116, 12, !dbg !1552
  tail call void @llvm.dbg.value(metadata i32 %197, i64 0, metadata !342, metadata !1011), !dbg !1309
  %198 = trunc i32 %197 to i16, !dbg !1553
  %199 = and i16 %198, 255, !dbg !1553
  %200 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 8, !dbg !1554
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %199, %struct.BiContextType* %200) #6, !dbg !1555
  %201 = srem i32 %.71116, 12, !dbg !1556
  tail call void @llvm.dbg.value(metadata i32 %201, i64 0, metadata !345, metadata !1011), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !341, metadata !1011), !dbg !1274
  %.off = add nsw i32 %201, 3, !dbg !1557
  %202 = icmp ult i32 %.off, 7, !dbg !1557
  %203 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 9, !dbg !1559
  br i1 %202, label %204, label %205, !dbg !1561

; <label>:204                                     ; preds = %196
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %203) #6, !dbg !1562
  br label %210, !dbg !1563

; <label>:205                                     ; preds = %196
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %203) #6, !dbg !1564
  %206 = and i32 %201, -4, !dbg !1566
  %207 = icmp eq i32 %206, 4, !dbg !1566
  br i1 %207, label %208, label %209, !dbg !1568

; <label>:208                                     ; preds = %205
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %203) #6, !dbg !1569
  br label %210, !dbg !1571

; <label>:209                                     ; preds = %205
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %203) #6, !dbg !1572
  br label %210

; <label>:210                                     ; preds = %208, %209, %204
  %211 = srem i32 %201, 4, !dbg !1574
  tail call void @llvm.dbg.value(metadata i32 %211, i64 0, metadata !345, metadata !1011), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !341, metadata !1011), !dbg !1274
  %212 = sdiv i32 %211, 2, !dbg !1575
  tail call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !342, metadata !1011), !dbg !1309
  %213 = trunc i32 %212 to i16, !dbg !1576
  %214 = and i16 %213, 255, !dbg !1576
  %215 = getelementptr inbounds %struct.MotionInfoContexts* %7, i64 0, i32 0, i64 1, i64 10, !dbg !1577
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %214, %struct.BiContextType* %215) #6, !dbg !1578
  %216 = srem i32 %211, 2, !dbg !1579
  tail call void @llvm.dbg.value(metadata i32 %216, i64 0, metadata !342, metadata !1011), !dbg !1309
  %217 = trunc i32 %216 to i16, !dbg !1580
  %218 = and i16 %217, 255, !dbg !1580
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %218, %struct.BiContextType* %215) #6, !dbg !1581
  br label %.thread, !dbg !1582

.thread:                                          ; preds = %89, %91, %95, %99, %103, %107, %161, %160, %152, %151, %130, %129, %120, %189, %210, %37, %61, %44, %195
  ret void, !dbg !1583
}

; Function Attrs: optsize
declare void @biari_encode_symbol_final(%struct.EncodingEnvironment*, i16 signext) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @writeB8_typeInfo_CABAC(%struct.syntaxelement* nocapture readonly %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !352, metadata !1011), !dbg !1584
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !353, metadata !1011), !dbg !1585
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1586, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6, !dbg !1587
  %3 = load i32* %2, align 4, !dbg !1587, !tbaa !1159
  %4 = icmp eq i32 %3, 1, !dbg !1588
  %5 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !1589
  %6 = load %struct.Slice** %5, align 8, !dbg !1589, !tbaa !1106
  %7 = getelementptr inbounds %struct.Slice* %6, i64 0, i32 7, !dbg !1590
  %8 = load %struct.MotionInfoContexts** %7, align 8, !dbg !1590, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.MotionInfoContexts* %8, i64 0, metadata !358, metadata !1011), !dbg !1591
  %9 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1592
  %10 = load i32* %9, align 4, !dbg !1592, !tbaa !1115
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !355, metadata !1011), !dbg !1593
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !354, metadata !1011), !dbg !1594
  br i1 %4, label %25, label %11, !dbg !1595

; <label>:11                                      ; preds = %0
  switch i32 %10, label %73 [
    i32 0, label %12
    i32 1, label %14
    i32 2, label %17
    i32 3, label %21
  ], !dbg !1596

; <label>:12                                      ; preds = %11
  %13 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 0, i64 1, !dbg !1599
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %13) #6, !dbg !1601
  br label %73, !dbg !1602

; <label>:14                                      ; preds = %11
  %15 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 0, i64 1, !dbg !1603
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %15) #6, !dbg !1604
  %16 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 0, i64 3, !dbg !1605
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %16) #6, !dbg !1606
  br label %73, !dbg !1607

; <label>:17                                      ; preds = %11
  %18 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 0, i64 1, !dbg !1608
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %18) #6, !dbg !1609
  %19 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 0, i64 3, !dbg !1610
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %19) #6, !dbg !1611
  %20 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 0, i64 4, !dbg !1612
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %20) #6, !dbg !1613
  br label %73, !dbg !1614

; <label>:21                                      ; preds = %11
  %22 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 0, i64 1, !dbg !1615
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %22) #6, !dbg !1616
  %23 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 0, i64 3, !dbg !1617
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %23) #6, !dbg !1618
  %24 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 0, i64 4, !dbg !1619
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %24) #6, !dbg !1620
  br label %73, !dbg !1621

; <label>:25                                      ; preds = %0
  %26 = icmp eq i32 %10, 0, !dbg !1622
  %27 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 1, i64 0, !dbg !1625
  br i1 %26, label %28, label %29, !dbg !1627

; <label>:28                                      ; preds = %25
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %27) #6, !dbg !1628
  br label %73, !dbg !1629

; <label>:29                                      ; preds = %25
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %27) #6, !dbg !1630
  %30 = icmp slt i32 %10, 3, !dbg !1632
  br i1 %30, label %31, label %37, !dbg !1634

; <label>:31                                      ; preds = %29
  %32 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 1, i64 1, !dbg !1635
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %32) #6, !dbg !1637
  %33 = icmp eq i32 %10, 1, !dbg !1638
  %34 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 1, i64 3, !dbg !1640
  br i1 %33, label %35, label %36, !dbg !1641

; <label>:35                                      ; preds = %31
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %34) #6, !dbg !1642
  br label %73, !dbg !1642

; <label>:36                                      ; preds = %31
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %34) #6, !dbg !1643
  br label %73

; <label>:37                                      ; preds = %29
  %38 = icmp slt i32 %10, 7, !dbg !1644
  %39 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 1, i64 1, !dbg !1646
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %39) #6, !dbg !1648
  %40 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 1, i64 2, !dbg !1649
  br i1 %38, label %41, label %53, !dbg !1650

; <label>:41                                      ; preds = %37
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %40) #6, !dbg !1651
  %42 = add nsw i32 %10, -3, !dbg !1652
  %43 = and i32 %42, 2, !dbg !1653
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !356, metadata !1011), !dbg !1654
  %44 = icmp eq i32 %43, 0, !dbg !1655
  %45 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 1, i64 3, !dbg !1657
  br i1 %44, label %47, label %46, !dbg !1658

; <label>:46                                      ; preds = %41
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %45) #6, !dbg !1659
  br label %48, !dbg !1659

; <label>:47                                      ; preds = %41
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %45) #6, !dbg !1660
  br label %48

; <label>:48                                      ; preds = %47, %46
  %49 = and i32 %42, 1, !dbg !1661
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !356, metadata !1011), !dbg !1654
  %50 = icmp eq i32 %49, 0, !dbg !1662
  br i1 %50, label %52, label %51, !dbg !1664

; <label>:51                                      ; preds = %48
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %45) #6, !dbg !1665
  br label %73, !dbg !1665

; <label>:52                                      ; preds = %48
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %45) #6, !dbg !1666
  br label %73

; <label>:53                                      ; preds = %37
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %40) #6, !dbg !1667
  %54 = add nsw i32 %10, -7, !dbg !1669
  %55 = and i32 %54, 4, !dbg !1670
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !356, metadata !1011), !dbg !1654
  %56 = icmp eq i32 %55, 0, !dbg !1671
  %57 = getelementptr inbounds %struct.MotionInfoContexts* %8, i64 0, i32 1, i64 1, i64 3, !dbg !1673
  br i1 %56, label %63, label %58, !dbg !1675

; <label>:58                                      ; preds = %53
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %57) #6, !dbg !1676
  %59 = and i32 %54, 1, !dbg !1677
  tail call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !356, metadata !1011), !dbg !1654
  %60 = icmp eq i32 %59, 0, !dbg !1678
  br i1 %60, label %62, label %61, !dbg !1680

; <label>:61                                      ; preds = %58
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %57) #6, !dbg !1681
  br label %73, !dbg !1681

; <label>:62                                      ; preds = %58
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %57) #6, !dbg !1682
  br label %73

; <label>:63                                      ; preds = %53
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %57) #6, !dbg !1683
  %64 = and i32 %54, 2, !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !356, metadata !1011), !dbg !1654
  %65 = icmp eq i32 %64, 0, !dbg !1686
  br i1 %65, label %67, label %66, !dbg !1688

; <label>:66                                      ; preds = %63
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %57) #6, !dbg !1689
  br label %68, !dbg !1689

; <label>:67                                      ; preds = %63
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %57) #6, !dbg !1690
  br label %68

; <label>:68                                      ; preds = %67, %66
  %69 = and i32 %54, 1, !dbg !1691
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !356, metadata !1011), !dbg !1654
  %70 = icmp eq i32 %69, 0, !dbg !1692
  br i1 %70, label %72, label %71, !dbg !1694

; <label>:71                                      ; preds = %68
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %57) #6, !dbg !1695
  br label %73, !dbg !1695

; <label>:72                                      ; preds = %68
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %57) #6, !dbg !1696
  br label %73

; <label>:73                                      ; preds = %36, %35, %62, %61, %72, %71, %51, %52, %12, %14, %17, %21, %11, %28
  ret void, !dbg !1697
}

; Function Attrs: nounwind optsize ssp uwtable
define void @writeIntraPredMode_CABAC(%struct.syntaxelement* nocapture readonly %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !361, metadata !1011), !dbg !1698
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !362, metadata !1011), !dbg !1699
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1700, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !1701
  %3 = load %struct.Slice** %2, align 8, !dbg !1701, !tbaa !1106
  %4 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 8, !dbg !1702
  %5 = load %struct.TextureInfoContexts** %4, align 8, !dbg !1702, !tbaa !1703
  tail call void @llvm.dbg.value(metadata %struct.TextureInfoContexts* %5, i64 0, metadata !363, metadata !1011), !dbg !1704
  %6 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1705
  %7 = load i32* %6, align 4, !dbg !1705, !tbaa !1115
  %8 = icmp eq i32 %7, -1, !dbg !1707
  %9 = getelementptr inbounds %struct.TextureInfoContexts* %5, i64 0, i32 0, i64 0, !dbg !1708
  br i1 %8, label %10, label %11, !dbg !1709

; <label>:10                                      ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %9) #6, !dbg !1710
  br label %21, !dbg !1710

; <label>:11                                      ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %9) #6, !dbg !1711
  %12 = load i32* %6, align 4, !dbg !1713, !tbaa !1115
  %.tr = trunc i32 %12 to i16, !dbg !1714
  %13 = and i16 %.tr, 1, !dbg !1714
  %14 = getelementptr inbounds %struct.TextureInfoContexts* %5, i64 0, i32 0, i64 1, !dbg !1715
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %13, %struct.BiContextType* %14) #6, !dbg !1716
  %15 = load i32* %6, align 4, !dbg !1717, !tbaa !1115
  %16 = lshr i32 %15, 1, !dbg !1718
  %.tr1 = trunc i32 %16 to i16, !dbg !1719
  %17 = and i16 %.tr1, 1, !dbg !1719
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %17, %struct.BiContextType* %14) #6, !dbg !1720
  %18 = load i32* %6, align 4, !dbg !1721, !tbaa !1115
  %19 = lshr i32 %18, 2, !dbg !1722
  %.tr2 = trunc i32 %19 to i16, !dbg !1723
  %20 = and i16 %.tr2, 1, !dbg !1723
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %20, %struct.BiContextType* %14) #6, !dbg !1724
  br label %21

; <label>:21                                      ; preds = %11, %10
  ret void, !dbg !1725
}

; Function Attrs: nounwind optsize ssp uwtable
define void @writeRefFrame_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !366, metadata !1011), !dbg !1726
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !367, metadata !1011), !dbg !1727
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1728, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !1729
  %3 = load %struct.Slice** %2, align 8, !dbg !1729, !tbaa !1106
  %4 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 7, !dbg !1730
  %5 = load %struct.MotionInfoContexts** %4, align 8, !dbg !1730, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.MotionInfoContexts* %5, i64 0, metadata !368, metadata !1011), !dbg !1731
  %6 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !1732
  %7 = load i32* %6, align 4, !dbg !1732, !tbaa !1004
  %8 = sext i32 %7 to i64, !dbg !1733
  %9 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !1734
  %10 = load %struct.macroblock** %9, align 8, !dbg !1734, !tbaa !1010
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !370, metadata !1011), !dbg !1735
  %11 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1736
  %12 = load i32* %11, align 4, !dbg !1736, !tbaa !1194
  %13 = sext i32 %12 to i64, !dbg !1737
  %14 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1737, !tbaa !1001
  %15 = getelementptr inbounds %struct.storable_picture* %14, i64 0, i32 32, !dbg !1738
  %16 = load i16**** %15, align 8, !dbg !1738, !tbaa !1739
  %17 = getelementptr inbounds i16*** %16, i64 %13, !dbg !1737
  %18 = load i16*** %17, align 8, !dbg !1737, !tbaa !1001
  tail call void @llvm.dbg.value(metadata i16** %18, i64 0, metadata !375, metadata !1011), !dbg !1741
  %19 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6, !dbg !1742
  %20 = load i32* %19, align 4, !dbg !1742, !tbaa !1159
  %21 = icmp eq i32 %20, 1, !dbg !1743
  %22 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 18, !dbg !1744
  %23 = load i32* %22, align 4, !dbg !1744, !tbaa !1745
  %24 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 19, !dbg !1746
  %25 = load i32* %24, align 4, !dbg !1746, !tbaa !1747
  tail call void @llvm.dbg.value(metadata %struct.pix_pos* %block_a, i64 0, metadata !381, metadata !1011), !dbg !1748
  call void @getLuma4x4Neighbour(i32 %7, i32 %23, i32 %25, i32 -1, i32 0, %struct.pix_pos* %block_a) #6, !dbg !1749
  %26 = load %struct.ImageParameters** @img, align 8, !dbg !1750, !tbaa !1001
  %27 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 3, !dbg !1751
  %28 = load i32* %27, align 4, !dbg !1751, !tbaa !1004
  %29 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 18, !dbg !1752
  %30 = load i32* %29, align 4, !dbg !1752, !tbaa !1745
  %31 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 19, !dbg !1753
  %32 = load i32* %31, align 4, !dbg !1753, !tbaa !1747
  call void @llvm.dbg.value(metadata %struct.pix_pos* %block_b, i64 0, metadata !382, metadata !1011), !dbg !1754
  call void @getLuma4x4Neighbour(i32 %28, i32 %30, i32 %32, i32 0, i32 -1, %struct.pix_pos* %block_b) #6, !dbg !1755
  %33 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2, !dbg !1756
  %34 = load i32* %33, align 4, !dbg !1756, !tbaa !1757
  %35 = sdiv i32 %34, 2, !dbg !1758
  %36 = srem i32 %35, 2, !dbg !1759
  %37 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3, !dbg !1760
  %38 = load i32* %37, align 4, !dbg !1760, !tbaa !1761
  %39 = sdiv i32 %38, 2, !dbg !1762
  %40 = srem i32 %39, 2, !dbg !1763
  %41 = shl nsw i32 %40, 1, !dbg !1764
  %42 = add nsw i32 %41, %36, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !379, metadata !1011), !dbg !1766
  %43 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2, !dbg !1767
  %44 = load i32* %43, align 4, !dbg !1767, !tbaa !1757
  %45 = sdiv i32 %44, 2, !dbg !1768
  %46 = srem i32 %45, 2, !dbg !1769
  %47 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3, !dbg !1770
  %48 = load i32* %47, align 4, !dbg !1770, !tbaa !1761
  %49 = sdiv i32 %48, 2, !dbg !1771
  %50 = srem i32 %49, 2, !dbg !1772
  %51 = shl nsw i32 %50, 1, !dbg !1773
  %52 = add nsw i32 %51, %46, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !380, metadata !1011), !dbg !1775
  %53 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0, !dbg !1776
  %54 = load i32* %53, align 4, !dbg !1776, !tbaa !1020
  %55 = icmp eq i32 %54, 0, !dbg !1778
  br i1 %55, label %113, label %56, !dbg !1779

; <label>:56                                      ; preds = %0
  %57 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1, !dbg !1780
  %58 = load i32* %57, align 4, !dbg !1780, !tbaa !1025
  %59 = sext i32 %58 to i64, !dbg !1780
  %60 = load %struct.ImageParameters** @img, align 8, !dbg !1780, !tbaa !1001
  %61 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 51, !dbg !1780
  %62 = load %struct.macroblock** %61, align 8, !dbg !1780, !tbaa !1010
  %63 = getelementptr inbounds %struct.macroblock* %62, i64 %59, i32 8, !dbg !1780
  %64 = load i32* %63, align 4, !dbg !1780, !tbaa !1294
  %65 = icmp eq i32 %64, 0, !dbg !1780
  br i1 %65, label %66, label %70, !dbg !1780

; <label>:66                                      ; preds = %56
  %67 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 6, !dbg !1780
  %68 = load i32* %67, align 4, !dbg !1780, !tbaa !1159
  %69 = icmp eq i32 %68, 1, !dbg !1780
  br i1 %69, label %113, label %70, !dbg !1782

; <label>:70                                      ; preds = %66, %56
  %71 = sext i32 %52 to i64, !dbg !1783
  %72 = getelementptr inbounds %struct.macroblock* %62, i64 %59, i32 14, i64 %71, !dbg !1783
  %73 = load i32* %72, align 4, !dbg !1783, !tbaa !995
  %74 = icmp eq i32 %73, 0, !dbg !1784
  %or.cond = and i1 %21, %74, !dbg !1785
  br i1 %or.cond, label %113, label %75, !dbg !1785

; <label>:75                                      ; preds = %70
  %76 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 90, !dbg !1786
  %77 = load i32* %76, align 4, !dbg !1786, !tbaa !1789
  %78 = icmp eq i32 %77, 0, !dbg !1790
  br i1 %78, label %100, label %79, !dbg !1791

; <label>:79                                      ; preds = %75
  %80 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 22, !dbg !1792
  %81 = load i32* %80, align 4, !dbg !1792, !tbaa !1129
  %82 = icmp eq i32 %81, 0, !dbg !1793
  br i1 %82, label %83, label %100, !dbg !1794

; <label>:83                                      ; preds = %79
  %84 = getelementptr inbounds %struct.macroblock* %62, i64 %59, i32 22, !dbg !1795
  %85 = load i32* %84, align 4, !dbg !1795, !tbaa !1129
  %86 = icmp eq i32 %85, 1, !dbg !1796
  br i1 %86, label %87, label %100, !dbg !1797

; <label>:87                                      ; preds = %83
  %88 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 5, !dbg !1798
  %89 = load i32* %88, align 4, !dbg !1798, !tbaa !1799
  %90 = sext i32 %89 to i64, !dbg !1800
  %91 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 4, !dbg !1801
  %92 = load i32* %91, align 4, !dbg !1801, !tbaa !1802
  %93 = sext i32 %92 to i64, !dbg !1800
  %94 = getelementptr inbounds i16** %18, i64 %93, !dbg !1800
  %95 = load i16** %94, align 8, !dbg !1800, !tbaa !1001
  %96 = getelementptr inbounds i16* %95, i64 %90, !dbg !1800
  %97 = load i16* %96, align 2, !dbg !1800, !tbaa !1803
  %98 = icmp sgt i16 %97, 1, !dbg !1805
  %99 = select i1 %98, i32 2, i32 0, !dbg !1800
  call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !372, metadata !1011), !dbg !1806
  br label %113, !dbg !1807

; <label>:100                                     ; preds = %75, %83, %79
  %101 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 5, !dbg !1808
  %102 = load i32* %101, align 4, !dbg !1808, !tbaa !1799
  %103 = sext i32 %102 to i64, !dbg !1809
  %104 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 4, !dbg !1810
  %105 = load i32* %104, align 4, !dbg !1810, !tbaa !1802
  %106 = sext i32 %105 to i64, !dbg !1809
  %107 = getelementptr inbounds i16** %18, i64 %106, !dbg !1809
  %108 = load i16** %107, align 8, !dbg !1809, !tbaa !1001
  %109 = getelementptr inbounds i16* %108, i64 %103, !dbg !1809
  %110 = load i16* %109, align 2, !dbg !1809, !tbaa !1803
  %111 = icmp sgt i16 %110, 0, !dbg !1811
  %112 = select i1 %111, i32 2, i32 0, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !372, metadata !1011), !dbg !1806
  br label %113

; <label>:113                                     ; preds = %66, %70, %0, %100, %87
  %b.0 = phi i32 [ %99, %87 ], [ %112, %100 ], [ 0, %0 ], [ 0, %70 ], [ 0, %66 ]
  %114 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !1812
  %115 = load i32* %114, align 4, !dbg !1812, !tbaa !1020
  %116 = icmp eq i32 %115, 0, !dbg !1814
  br i1 %116, label %174, label %117, !dbg !1815

; <label>:117                                     ; preds = %113
  %118 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1, !dbg !1816
  %119 = load i32* %118, align 4, !dbg !1816, !tbaa !1025
  %120 = sext i32 %119 to i64, !dbg !1816
  %121 = load %struct.ImageParameters** @img, align 8, !dbg !1816, !tbaa !1001
  %122 = getelementptr inbounds %struct.ImageParameters* %121, i64 0, i32 51, !dbg !1816
  %123 = load %struct.macroblock** %122, align 8, !dbg !1816, !tbaa !1010
  %124 = getelementptr inbounds %struct.macroblock* %123, i64 %120, i32 8, !dbg !1816
  %125 = load i32* %124, align 4, !dbg !1816, !tbaa !1294
  %126 = icmp eq i32 %125, 0, !dbg !1816
  br i1 %126, label %127, label %131, !dbg !1816

; <label>:127                                     ; preds = %117
  %128 = getelementptr inbounds %struct.ImageParameters* %121, i64 0, i32 6, !dbg !1816
  %129 = load i32* %128, align 4, !dbg !1816, !tbaa !1159
  %130 = icmp eq i32 %129, 1, !dbg !1816
  br i1 %130, label %174, label %131, !dbg !1818

; <label>:131                                     ; preds = %127, %117
  %132 = sext i32 %42 to i64, !dbg !1819
  %133 = getelementptr inbounds %struct.macroblock* %123, i64 %120, i32 14, i64 %132, !dbg !1819
  %134 = load i32* %133, align 4, !dbg !1819, !tbaa !995
  %135 = icmp eq i32 %134, 0, !dbg !1820
  %or.cond3 = and i1 %21, %135, !dbg !1821
  br i1 %or.cond3, label %174, label %136, !dbg !1821

; <label>:136                                     ; preds = %131
  %137 = getelementptr inbounds %struct.ImageParameters* %121, i64 0, i32 90, !dbg !1822
  %138 = load i32* %137, align 4, !dbg !1822, !tbaa !1789
  %139 = icmp eq i32 %138, 0, !dbg !1825
  br i1 %139, label %161, label %140, !dbg !1826

; <label>:140                                     ; preds = %136
  %141 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 22, !dbg !1827
  %142 = load i32* %141, align 4, !dbg !1827, !tbaa !1129
  %143 = icmp eq i32 %142, 0, !dbg !1828
  br i1 %143, label %144, label %161, !dbg !1829

; <label>:144                                     ; preds = %140
  %145 = getelementptr inbounds %struct.macroblock* %123, i64 %120, i32 22, !dbg !1830
  %146 = load i32* %145, align 4, !dbg !1830, !tbaa !1129
  %147 = icmp eq i32 %146, 1, !dbg !1831
  br i1 %147, label %148, label %161, !dbg !1832

; <label>:148                                     ; preds = %144
  %149 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 5, !dbg !1833
  %150 = load i32* %149, align 4, !dbg !1833, !tbaa !1799
  %151 = sext i32 %150 to i64, !dbg !1834
  %152 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 4, !dbg !1835
  %153 = load i32* %152, align 4, !dbg !1835, !tbaa !1802
  %154 = sext i32 %153 to i64, !dbg !1834
  %155 = getelementptr inbounds i16** %18, i64 %154, !dbg !1834
  %156 = load i16** %155, align 8, !dbg !1834, !tbaa !1001
  %157 = getelementptr inbounds i16* %156, i64 %151, !dbg !1834
  %158 = load i16* %157, align 2, !dbg !1834, !tbaa !1803
  %159 = icmp sgt i16 %158, 1, !dbg !1836
  %160 = zext i1 %159 to i32, !dbg !1834
  call void @llvm.dbg.value(metadata i32 %160, i64 0, metadata !371, metadata !1011), !dbg !1837
  br label %174, !dbg !1838

; <label>:161                                     ; preds = %136, %144, %140
  %162 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 5, !dbg !1839
  %163 = load i32* %162, align 4, !dbg !1839, !tbaa !1799
  %164 = sext i32 %163 to i64, !dbg !1840
  %165 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 4, !dbg !1841
  %166 = load i32* %165, align 4, !dbg !1841, !tbaa !1802
  %167 = sext i32 %166 to i64, !dbg !1840
  %168 = getelementptr inbounds i16** %18, i64 %167, !dbg !1840
  %169 = load i16** %168, align 8, !dbg !1840, !tbaa !1001
  %170 = getelementptr inbounds i16* %169, i64 %164, !dbg !1840
  %171 = load i16* %170, align 2, !dbg !1840, !tbaa !1803
  %172 = icmp sgt i16 %171, 0, !dbg !1842
  %173 = zext i1 %172 to i32, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %173, i64 0, metadata !371, metadata !1011), !dbg !1837
  br label %174

; <label>:174                                     ; preds = %127, %131, %113, %161, %148
  %a.0 = phi i32 [ %160, %148 ], [ %173, %161 ], [ 0, %113 ], [ 0, %131 ], [ 0, %127 ]
  %175 = or i32 %a.0, %b.0, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %175, i64 0, metadata !373, metadata !1011), !dbg !1844
  %176 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1845
  store i32 %175, i32* %176, align 4, !dbg !1846, !tbaa !1153
  %177 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1847
  %178 = load i32* %177, align 4, !dbg !1847, !tbaa !1115
  call void @llvm.dbg.value(metadata i32 %178, i64 0, metadata !374, metadata !1011), !dbg !1848
  %179 = icmp eq i32 %178, 0, !dbg !1849
  %180 = zext i32 %175 to i64, !dbg !1851
  %181 = getelementptr inbounds %struct.MotionInfoContexts* %5, i64 0, i32 3, i64 0, i64 %180, !dbg !1851
  br i1 %179, label %182, label %183, !dbg !1853

; <label>:182                                     ; preds = %174
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %181) #6, !dbg !1854
  br label %186, !dbg !1855

; <label>:183                                     ; preds = %174
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %181) #6, !dbg !1856
  %184 = add nsw i32 %178, -1, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %184, i64 0, metadata !374, metadata !1011), !dbg !1848
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !373, metadata !1011), !dbg !1844
  %185 = getelementptr inbounds %struct.MotionInfoContexts* %5, i64 0, i32 3, i64 0, i64 4, !dbg !1859
  call void @unary_bin_encode(%struct.EncodingEnvironment* %eep_dp, i32 %184, %struct.BiContextType* %185, i32 1) #7, !dbg !1860
  br label %186

; <label>:186                                     ; preds = %183, %182
  ret void, !dbg !1861
}

; Function Attrs: optsize
declare void @getLuma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @unary_bin_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %ctx_offset) #0 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !520, metadata !1011), !dbg !1862
  tail call void @llvm.dbg.value(metadata i32 %symbol, i64 0, metadata !521, metadata !1011), !dbg !1863
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %ctx, i64 0, metadata !522, metadata !1011), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32 %ctx_offset, i64 0, metadata !523, metadata !1011), !dbg !1865
  %1 = icmp eq i32 %symbol, 0, !dbg !1866
  br i1 %1, label %2, label %3, !dbg !1868

; <label>:2                                       ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #6, !dbg !1869
  br label %11, !dbg !1871

; <label>:3                                       ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #6, !dbg !1872
  tail call void @llvm.dbg.value(metadata i32 %symbol, i64 0, metadata !524, metadata !1011), !dbg !1874
  %4 = sext i32 %ctx_offset to i64, !dbg !1875
  %5 = getelementptr inbounds %struct.BiContextType* %ctx, i64 %4, !dbg !1875
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %5, i64 0, metadata !525, metadata !1011), !dbg !1876
  %6 = add i32 %symbol, -1, !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !524, metadata !1011), !dbg !1874
  %7 = icmp eq i32 %6, 0, !dbg !1878
  br i1 %7, label %._crit_edge, label %.lr.ph, !dbg !1879

.lr.ph:                                           ; preds = %3, %.lr.ph
  %8 = phi i32 [ %9, %.lr.ph ], [ %6, %3 ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %5) #6, !dbg !1880
  %9 = add i32 %8, -1, !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !524, metadata !1011), !dbg !1874
  %10 = icmp eq i32 %9, 0, !dbg !1878
  br i1 %10, label %._crit_edge, label %.lr.ph, !dbg !1879

._crit_edge:                                      ; preds = %.lr.ph, %3
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %5) #6, !dbg !1881
  br label %11, !dbg !1882

; <label>:11                                      ; preds = %._crit_edge, %2
  ret void, !dbg !1883
}

; Function Attrs: nounwind optsize ssp uwtable
define void @writeDquant_CABAC(%struct.syntaxelement* nocapture readonly %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !385, metadata !1011), !dbg !1884
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !386, metadata !1011), !dbg !1885
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1886, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !1887
  %3 = load %struct.Slice** %2, align 8, !dbg !1887, !tbaa !1106
  %4 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 7, !dbg !1888
  %5 = load %struct.MotionInfoContexts** %4, align 8, !dbg !1888, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.MotionInfoContexts* %5, i64 0, metadata !387, metadata !1011), !dbg !1889
  %6 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1890
  %7 = load i32* %6, align 4, !dbg !1890, !tbaa !1115
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !390, metadata !1011), !dbg !1891
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !391, metadata !1011), !dbg !1892
  %8 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !1893
  %9 = load i32* %8, align 4, !dbg !1893, !tbaa !1004
  %10 = sext i32 %9 to i64, !dbg !1894
  %11 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !1895
  %12 = load %struct.macroblock** %11, align 8, !dbg !1895, !tbaa !1010
  %13 = getelementptr inbounds %struct.macroblock* %12, i64 %10, i32 37, !dbg !1896
  %14 = load i32* %13, align 4, !dbg !1896, !tbaa !1897
  store i32 %14, i32* @last_dquant, align 4, !dbg !1898, !tbaa !995
  %15 = icmp slt i32 %7, 1, !dbg !1899
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !391, metadata !1011), !dbg !1892
  %. = zext i1 %15 to i32, !dbg !1901
  %ispos = icmp sgt i32 %7, -1, !dbg !1902
  %neg = sub i32 0, %7, !dbg !1902
  %16 = select i1 %ispos, i32 %7, i32 %neg, !dbg !1902
  %17 = shl i32 %16, 1, !dbg !1903
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !389, metadata !1011), !dbg !1904
  %18 = or i32 %17, %., !dbg !1905
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !389, metadata !1011), !dbg !1904
  %19 = icmp ne i32 %14, 0, !dbg !1906
  %20 = icmp eq i32 %18, 1, !dbg !1907
  %21 = zext i1 %19 to i64, !dbg !1909
  %22 = getelementptr inbounds %struct.MotionInfoContexts* %5, i64 0, i32 4, i64 %21, !dbg !1909
  br i1 %20, label %23, label %24, !dbg !1911

; <label>:23                                      ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %22) #6, !dbg !1912
  br label %27, !dbg !1913

; <label>:24                                      ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %22) #6, !dbg !1914
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !388, metadata !1011), !dbg !1916
  %25 = add nsw i32 %18, -2, !dbg !1917
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !389, metadata !1011), !dbg !1904
  %26 = getelementptr inbounds %struct.MotionInfoContexts* %5, i64 0, i32 4, i64 2, !dbg !1918
  tail call void @unary_bin_encode(%struct.EncodingEnvironment* %eep_dp, i32 %25, %struct.BiContextType* %26, i32 1) #7, !dbg !1919
  br label %27

; <label>:27                                      ; preds = %24, %23
  ret void, !dbg !1920
}

; Function Attrs: nounwind optsize ssp uwtable
define void @writeMVD_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !395, metadata !1011), !dbg !1921
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !396, metadata !1011), !dbg !1922
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1923, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 18, !dbg !1924
  %3 = load i32* %2, align 4, !dbg !1924, !tbaa !1745
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !397, metadata !1011), !dbg !1925
  %4 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 19, !dbg !1926
  %5 = load i32* %4, align 4, !dbg !1926, !tbaa !1747
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !398, metadata !1011), !dbg !1927
  %6 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1928
  %7 = load i32* %6, align 4, !dbg !1928, !tbaa !1194
  %8 = and i32 %7, 1, !dbg !1929
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !406, metadata !1011), !dbg !1930
  %9 = ashr i32 %7, 1, !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !407, metadata !1011), !dbg !1932
  %10 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !1933
  %11 = load %struct.Slice** %10, align 8, !dbg !1933, !tbaa !1106
  %12 = getelementptr inbounds %struct.Slice* %11, i64 0, i32 7, !dbg !1934
  %13 = load %struct.MotionInfoContexts** %12, align 8, !dbg !1934, !tbaa !1108
  tail call void @llvm.dbg.value(metadata %struct.MotionInfoContexts* %13, i64 0, metadata !410, metadata !1011), !dbg !1935
  %14 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !1936
  %15 = load i32* %14, align 4, !dbg !1936, !tbaa !1004
  %16 = sext i32 %15 to i64, !dbg !1937
  %17 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !1938
  %18 = load %struct.macroblock** %17, align 8, !dbg !1938, !tbaa !1010
  tail call void @llvm.dbg.value(metadata %struct.pix_pos* %block_a, i64 0, metadata !408, metadata !1011), !dbg !1939
  call void @getLuma4x4Neighbour(i32 %15, i32 %3, i32 %5, i32 -1, i32 0, %struct.pix_pos* %block_a) #6, !dbg !1940
  %19 = load %struct.ImageParameters** @img, align 8, !dbg !1941, !tbaa !1001
  %20 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 3, !dbg !1942
  %21 = load i32* %20, align 4, !dbg !1942, !tbaa !1004
  call void @llvm.dbg.value(metadata %struct.pix_pos* %block_b, i64 0, metadata !409, metadata !1011), !dbg !1943
  call void @getLuma4x4Neighbour(i32 %21, i32 %3, i32 %5, i32 0, i32 -1, %struct.pix_pos* %block_b) #6, !dbg !1944
  %22 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0, !dbg !1945
  %23 = load i32* %22, align 4, !dbg !1945, !tbaa !1020
  %24 = icmp eq i32 %23, 0, !dbg !1947
  br i1 %24, label %thread-pre-split.thread, label %25, !dbg !1948

; <label>:25                                      ; preds = %0
  %26 = sext i32 %9 to i64, !dbg !1949
  %27 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2, !dbg !1949
  %28 = load i32* %27, align 4, !dbg !1949, !tbaa !1757
  %29 = sext i32 %28 to i64, !dbg !1949
  %30 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3, !dbg !1949
  %31 = load i32* %30, align 4, !dbg !1949, !tbaa !1761
  %32 = sext i32 %31 to i64, !dbg !1949
  %33 = zext i32 %8 to i64, !dbg !1949
  %34 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1, !dbg !1949
  %35 = load i32* %34, align 4, !dbg !1949, !tbaa !1025
  %36 = sext i32 %35 to i64, !dbg !1949
  %37 = load %struct.ImageParameters** @img, align 8, !dbg !1949, !tbaa !1001
  %38 = getelementptr inbounds %struct.ImageParameters* %37, i64 0, i32 51, !dbg !1949
  %39 = load %struct.macroblock** %38, align 8, !dbg !1949, !tbaa !1010
  %40 = getelementptr inbounds %struct.macroblock* %39, i64 %36, i32 9, i64 %33, i64 %32, i64 %29, i64 %26, !dbg !1949
  %41 = load i32* %40, align 4, !dbg !1949, !tbaa !995
  %42 = icmp slt i32 %41, 0, !dbg !1949
  %43 = sub nsw i32 0, %41, !dbg !1949
  %44 = select i1 %42, i32 %43, i32 %41, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !400, metadata !1011), !dbg !1951
  %45 = getelementptr inbounds %struct.ImageParameters* %37, i64 0, i32 90, !dbg !1952
  %46 = load i32* %45, align 4, !dbg !1952, !tbaa !1789
  %47 = icmp ne i32 %46, 0, !dbg !1954
  %48 = icmp eq i32 %9, 1, !dbg !1955
  %or.cond = and i1 %48, %47, !dbg !1956
  br i1 %or.cond, label %49, label %thread-pre-split.thread, !dbg !1956

; <label>:49                                      ; preds = %25
  %50 = getelementptr inbounds %struct.macroblock* %18, i64 %16, i32 22, !dbg !1957
  %51 = load i32* %50, align 4, !dbg !1957, !tbaa !1129
  switch i32 %51, label %thread-pre-split.thread [
    i32 0, label %52
    i32 1, label %57
  ], !dbg !1960

; <label>:52                                      ; preds = %49
  %53 = getelementptr inbounds %struct.macroblock* %39, i64 %36, i32 22, !dbg !1961
  %54 = load i32* %53, align 4, !dbg !1961, !tbaa !1129
  %55 = icmp eq i32 %54, 1, !dbg !1962
  %56 = zext i1 %55 to i32, !dbg !1963
  %. = shl nsw i32 %44, %56, !dbg !1963
  br label %thread-pre-split.thread, !dbg !1963

; <label>:57                                      ; preds = %49
  %58 = getelementptr inbounds %struct.macroblock* %39, i64 %36, i32 22, !dbg !1964
  %59 = load i32* %58, align 4, !dbg !1964, !tbaa !1129
  %60 = icmp eq i32 %59, 0, !dbg !1966
  br i1 %60, label %61, label %thread-pre-split.thread, !dbg !1967

; <label>:61                                      ; preds = %57
  %62 = sdiv i32 %44, 2, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !400, metadata !1011), !dbg !1951
  br label %thread-pre-split.thread, !dbg !1969

thread-pre-split.thread:                          ; preds = %52, %49, %0, %25, %57, %61
  %b.0 = phi i32 [ %62, %61 ], [ %44, %57 ], [ %44, %25 ], [ 0, %0 ], [ %., %52 ], [ %44, %49 ]
  %63 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !1970
  %64 = load i32* %63, align 4, !dbg !1970, !tbaa !1020
  %65 = icmp eq i32 %64, 0, !dbg !1972
  br i1 %65, label %thread-pre-split4.thread, label %66, !dbg !1973

; <label>:66                                      ; preds = %thread-pre-split.thread
  %67 = sext i32 %9 to i64, !dbg !1974
  %68 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2, !dbg !1974
  %69 = load i32* %68, align 4, !dbg !1974, !tbaa !1757
  %70 = sext i32 %69 to i64, !dbg !1974
  %71 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3, !dbg !1974
  %72 = load i32* %71, align 4, !dbg !1974, !tbaa !1761
  %73 = sext i32 %72 to i64, !dbg !1974
  %74 = zext i32 %8 to i64, !dbg !1974
  %75 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1, !dbg !1974
  %76 = load i32* %75, align 4, !dbg !1974, !tbaa !1025
  %77 = sext i32 %76 to i64, !dbg !1974
  %78 = load %struct.ImageParameters** @img, align 8, !dbg !1974, !tbaa !1001
  %79 = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 51, !dbg !1974
  %80 = load %struct.macroblock** %79, align 8, !dbg !1974, !tbaa !1010
  %81 = getelementptr inbounds %struct.macroblock* %80, i64 %77, i32 9, i64 %74, i64 %73, i64 %70, i64 %67, !dbg !1974
  %82 = load i32* %81, align 4, !dbg !1974, !tbaa !995
  %83 = icmp slt i32 %82, 0, !dbg !1974
  %84 = sub nsw i32 0, %82, !dbg !1974
  %85 = select i1 %83, i32 %84, i32 %82, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !399, metadata !1011), !dbg !1976
  %86 = getelementptr inbounds %struct.ImageParameters* %78, i64 0, i32 90, !dbg !1977
  %87 = load i32* %86, align 4, !dbg !1977, !tbaa !1789
  %88 = icmp ne i32 %87, 0, !dbg !1979
  %89 = icmp eq i32 %9, 1, !dbg !1980
  %or.cond3 = and i1 %89, %88, !dbg !1981
  br i1 %or.cond3, label %90, label %thread-pre-split4.thread, !dbg !1981

; <label>:90                                      ; preds = %66
  %91 = getelementptr inbounds %struct.macroblock* %18, i64 %16, i32 22, !dbg !1982
  %92 = load i32* %91, align 4, !dbg !1982, !tbaa !1129
  switch i32 %92, label %thread-pre-split4.thread [
    i32 0, label %93
    i32 1, label %98
  ], !dbg !1985

; <label>:93                                      ; preds = %90
  %94 = getelementptr inbounds %struct.macroblock* %80, i64 %77, i32 22, !dbg !1986
  %95 = load i32* %94, align 4, !dbg !1986, !tbaa !1129
  %96 = icmp eq i32 %95, 1, !dbg !1987
  %97 = zext i1 %96 to i32, !dbg !1988
  %.6 = shl nsw i32 %85, %97, !dbg !1988
  br label %thread-pre-split4.thread, !dbg !1988

; <label>:98                                      ; preds = %90
  %99 = getelementptr inbounds %struct.macroblock* %80, i64 %77, i32 22, !dbg !1989
  %100 = load i32* %99, align 4, !dbg !1989, !tbaa !1129
  %101 = icmp eq i32 %100, 0, !dbg !1991
  br i1 %101, label %102, label %thread-pre-split4.thread, !dbg !1992

; <label>:102                                     ; preds = %98
  %103 = sdiv i32 %85, 2, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !399, metadata !1011), !dbg !1976
  br label %thread-pre-split4.thread, !dbg !1994

thread-pre-split4.thread:                         ; preds = %93, %90, %thread-pre-split.thread, %66, %98, %102
  %a.0 = phi i32 [ %103, %102 ], [ %85, %98 ], [ %85, %66 ], [ 0, %thread-pre-split.thread ], [ %.6, %93 ], [ %85, %90 ]
  %104 = add nsw i32 %a.0, %b.0, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %104, i64 0, metadata !404, metadata !1011), !dbg !1997
  %105 = icmp slt i32 %104, 3, !dbg !1998
  br i1 %105, label %106, label %108, !dbg !1999

; <label>:106                                     ; preds = %thread-pre-split4.thread
  %107 = mul nsw i32 %9, 5, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !401, metadata !1011), !dbg !2001
  br label %115, !dbg !2002

; <label>:108                                     ; preds = %thread-pre-split4.thread
  %109 = icmp sgt i32 %104, 32, !dbg !2003
  %110 = mul nsw i32 %9, 5, !dbg !2006
  br i1 %109, label %111, label %113, !dbg !2007

; <label>:111                                     ; preds = %108
  %112 = add nsw i32 %110, 3, !dbg !2008
  call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !401, metadata !1011), !dbg !2001
  br label %115, !dbg !2009

; <label>:113                                     ; preds = %108
  %114 = add nsw i32 %110, 2, !dbg !2010
  call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !401, metadata !1011), !dbg !2001
  br label %115

; <label>:115                                     ; preds = %111, %113, %106
  %act_ctx.0 = phi i32 [ %107, %106 ], [ %112, %111 ], [ %114, %113 ]
  %116 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !2011
  %117 = load i32* %116, align 4, !dbg !2011, !tbaa !1115
  call void @llvm.dbg.value(metadata i32 %117, i64 0, metadata !403, metadata !1011), !dbg !2012
  %118 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !2013
  store i32 %act_ctx.0, i32* %118, align 4, !dbg !2014, !tbaa !1153
  %119 = icmp slt i32 %117, 0, !dbg !2015
  %120 = sub nsw i32 0, %117, !dbg !2015
  %121 = select i1 %119, i32 %120, i32 %117, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !402, metadata !1011), !dbg !2016
  %122 = icmp eq i32 %121, 0, !dbg !2017
  %123 = sext i32 %act_ctx.0 to i64, !dbg !2019
  %124 = getelementptr inbounds %struct.MotionInfoContexts* %13, i64 0, i32 2, i64 0, i64 %123, !dbg !2019
  br i1 %122, label %125, label %126, !dbg !2020

; <label>:125                                     ; preds = %115
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %124) #6, !dbg !2021
  br label %132, !dbg !2021

; <label>:126                                     ; preds = %115
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %124) #6, !dbg !2022
  %127 = add nsw i32 %121, -1, !dbg !2024
  call void @llvm.dbg.value(metadata i32 %127, i64 0, metadata !402, metadata !1011), !dbg !2016
  %128 = mul nsw i32 %9, 5, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !401, metadata !1011), !dbg !2001
  %129 = sext i32 %128 to i64, !dbg !2026
  %130 = getelementptr inbounds %struct.MotionInfoContexts* %13, i64 0, i32 2, i64 1, i64 %129, !dbg !2026
  call void @unary_exp_golomb_mv_encode(%struct.EncodingEnvironment* %eep_dp, i32 %127, %struct.BiContextType* %130, i32 3) #7, !dbg !2027
  %.lobit = lshr i32 %117, 31, !dbg !2028
  %131 = trunc i32 %.lobit to i16, !dbg !2028
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext %131) #6, !dbg !2029
  br label %132

; <label>:132                                     ; preds = %126, %125
  ret void, !dbg !2030
}

; Function Attrs: nounwind optsize ssp uwtable
define void @unary_exp_golomb_mv_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %max_bin) #0 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !558, metadata !1011), !dbg !2031
  tail call void @llvm.dbg.value(metadata i32 %symbol, i64 0, metadata !559, metadata !1011), !dbg !2032
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %ctx, i64 0, metadata !560, metadata !1011), !dbg !2033
  tail call void @llvm.dbg.value(metadata i32 %max_bin, i64 0, metadata !561, metadata !1011), !dbg !2034
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !564, metadata !1011), !dbg !2035
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %ctx, i64 0, metadata !565, metadata !1011), !dbg !2036
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !566, metadata !1011), !dbg !2037
  %1 = icmp eq i32 %symbol, 0, !dbg !2038
  br i1 %1, label %2, label %3, !dbg !2040

; <label>:2                                       ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #6, !dbg !2041
  br label %21, !dbg !2043

; <label>:3                                       ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #6, !dbg !2044
  tail call void @llvm.dbg.value(metadata i32 %symbol, i64 0, metadata !562, metadata !1011), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !563, metadata !1011), !dbg !2047
  %4 = getelementptr inbounds %struct.BiContextType* %ctx, i64 1, !dbg !2048
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %4, i64 0, metadata !565, metadata !1011), !dbg !2036
  %5 = add i32 %symbol, -1, !dbg !2049
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !562, metadata !1011), !dbg !2046
  %6 = icmp eq i32 %5, 0, !dbg !2050
  br i1 %6, label %.critedge, label %.lr.ph, !dbg !2051

.lr.ph:                                           ; preds = %3, %10
  %7 = phi i32 [ %15, %10 ], [ %5, %3 ]
  %ictx.03 = phi %struct.BiContextType* [ %..ictx.0, %10 ], [ %4, %3 ]
  %bin.02 = phi i32 [ %8, %10 ], [ 1, %3 ]
  %8 = add nuw nsw i32 %bin.02, 1, !dbg !2052
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !563, metadata !1011), !dbg !2047
  %9 = icmp ult i32 %8, 9, !dbg !2055
  br i1 %9, label %10, label %.critedge, !dbg !2056

; <label>:10                                      ; preds = %.lr.ph
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ictx.03) #6, !dbg !2057
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !564, metadata !1011), !dbg !2035
  %11 = icmp eq i32 %8, 2, !dbg !2058
  %12 = getelementptr inbounds %struct.BiContextType* %ictx.03, i64 1, !dbg !2059
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %12, i64 0, metadata !565, metadata !1011), !dbg !2036
  %.ictx.0 = select i1 %11, %struct.BiContextType* %12, %struct.BiContextType* %ictx.03, !dbg !2060
  %13 = icmp eq i32 %8, %max_bin, !dbg !2061
  %14 = getelementptr inbounds %struct.BiContextType* %.ictx.0, i64 1, !dbg !2063
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %14, i64 0, metadata !565, metadata !1011), !dbg !2036
  %..ictx.0 = select i1 %13, %struct.BiContextType* %14, %struct.BiContextType* %.ictx.0, !dbg !2064
  %15 = add i32 %7, -1, !dbg !2049
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !562, metadata !1011), !dbg !2046
  %16 = icmp eq i32 %15, 0, !dbg !2050
  br i1 %16, label %.critedge, label %.lr.ph, !dbg !2051

.critedge:                                        ; preds = %.lr.ph, %10, %3
  %ictx.0.lcssa = phi %struct.BiContextType* [ %4, %3 ], [ %ictx.03, %.lr.ph ], [ %..ictx.0, %10 ]
  %17 = icmp ult i32 %symbol, 8, !dbg !2065
  br i1 %17, label %18, label %19, !dbg !2067

; <label>:18                                      ; preds = %.critedge
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ictx.0.lcssa) #6, !dbg !2068
  br label %21, !dbg !2068

; <label>:19                                      ; preds = %.critedge
  %20 = add i32 %symbol, -8, !dbg !2069
  tail call void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %eep_dp, i32 %20, i32 3) #7, !dbg !2070
  br label %21

; <label>:21                                      ; preds = %19, %18, %2
  ret void, !dbg !2071
}

; Function Attrs: optsize
declare void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment*, i16 signext) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @writeCIPredMode_CABAC(%struct.syntaxelement* nocapture readonly %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !414, metadata !1011), !dbg !2072
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !415, metadata !1011), !dbg !2073
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !2074, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !2075
  %3 = load %struct.Slice** %2, align 8, !dbg !2075, !tbaa !1106
  %4 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 8, !dbg !2076
  %5 = load %struct.TextureInfoContexts** %4, align 8, !dbg !2076, !tbaa !1703
  tail call void @llvm.dbg.value(metadata %struct.TextureInfoContexts* %5, i64 0, metadata !416, metadata !1011), !dbg !2077
  %6 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !2078
  %7 = load i32* %6, align 4, !dbg !2078, !tbaa !1004
  %8 = sext i32 %7 to i64, !dbg !2079
  %9 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !2080
  %10 = load %struct.macroblock** %9, align 8, !dbg !2080, !tbaa !1010
  %11 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !2081
  %12 = load i32* %11, align 4, !dbg !2081, !tbaa !1115
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !421, metadata !1011), !dbg !2082
  %13 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 6, !dbg !2083
  %14 = load %struct.macroblock** %13, align 8, !dbg !2083, !tbaa !1173
  %15 = icmp eq %struct.macroblock* %14, null, !dbg !2085
  br i1 %15, label %21, label %16, !dbg !2086

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.macroblock* %14, i64 0, i32 20, !dbg !2087
  %18 = load i32* %17, align 4, !dbg !2087, !tbaa !2088
  %19 = icmp ne i32 %18, 0, !dbg !2089
  %20 = zext i1 %19 to i64, !dbg !2090
  br label %21

; <label>:21                                      ; preds = %0, %16
  %b.0 = phi i64 [ %20, %16 ], [ 0, %0 ]
  %22 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 7, !dbg !2091
  %23 = load %struct.macroblock** %22, align 8, !dbg !2091, !tbaa !1183
  %24 = icmp eq %struct.macroblock* %23, null, !dbg !2093
  br i1 %24, label %30, label %25, !dbg !2094

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds %struct.macroblock* %23, i64 0, i32 20, !dbg !2095
  %27 = load i32* %26, align 4, !dbg !2095, !tbaa !2088
  %28 = icmp ne i32 %27, 0, !dbg !2096
  %29 = zext i1 %28 to i64, !dbg !2097
  br label %30

; <label>:30                                      ; preds = %21, %25
  %a.0 = phi i64 [ %29, %25 ], [ 0, %21 ]
  %31 = add nuw nsw i64 %a.0, %b.0, !dbg !2098
  %32 = icmp eq i32 %12, 0, !dbg !2099
  %33 = getelementptr inbounds %struct.TextureInfoContexts* %5, i64 0, i32 1, i64 %31, !dbg !2101
  br i1 %32, label %34, label %35, !dbg !2102

; <label>:34                                      ; preds = %30
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %33) #6, !dbg !2103
  br label %38, !dbg !2103

; <label>:35                                      ; preds = %30
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %33) #6, !dbg !2104
  %36 = add nsw i32 %12, -1, !dbg !2106
  %37 = getelementptr inbounds %struct.TextureInfoContexts* %5, i64 0, i32 1, i64 3, !dbg !2107
  tail call void @unary_bin_max_encode(%struct.EncodingEnvironment* %eep_dp, i32 %36, %struct.BiContextType* %37, i32 0, i32 2) #7, !dbg !2108
  br label %38

; <label>:38                                      ; preds = %35, %34
  ret void, !dbg !2109
}

; Function Attrs: nounwind optsize ssp uwtable
define void @unary_bin_max_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %ctx_offset, i32 %max_symbol) #0 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !530, metadata !1011), !dbg !2110
  tail call void @llvm.dbg.value(metadata i32 %symbol, i64 0, metadata !531, metadata !1011), !dbg !2111
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %ctx, i64 0, metadata !532, metadata !1011), !dbg !2112
  tail call void @llvm.dbg.value(metadata i32 %ctx_offset, i64 0, metadata !533, metadata !1011), !dbg !2113
  tail call void @llvm.dbg.value(metadata i32 %max_symbol, i64 0, metadata !534, metadata !1011), !dbg !2114
  %1 = icmp eq i32 %symbol, 0, !dbg !2115
  br i1 %1, label %2, label %3, !dbg !2117

; <label>:2                                       ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #6, !dbg !2118
  br label %13, !dbg !2120

; <label>:3                                       ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #6, !dbg !2121
  tail call void @llvm.dbg.value(metadata i32 %symbol, i64 0, metadata !535, metadata !1011), !dbg !2123
  %4 = sext i32 %ctx_offset to i64, !dbg !2124
  %5 = getelementptr inbounds %struct.BiContextType* %ctx, i64 %4, !dbg !2124
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %5, i64 0, metadata !536, metadata !1011), !dbg !2125
  %6 = add i32 %symbol, -1, !dbg !2126
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !535, metadata !1011), !dbg !2123
  %7 = icmp eq i32 %6, 0, !dbg !2127
  br i1 %7, label %._crit_edge, label %.lr.ph, !dbg !2128

.lr.ph:                                           ; preds = %3, %.lr.ph
  %8 = phi i32 [ %9, %.lr.ph ], [ %6, %3 ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %5) #6, !dbg !2129
  %9 = add i32 %8, -1, !dbg !2126
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !535, metadata !1011), !dbg !2123
  %10 = icmp eq i32 %9, 0, !dbg !2127
  br i1 %10, label %._crit_edge, label %.lr.ph, !dbg !2128

._crit_edge:                                      ; preds = %.lr.ph, %3
  %11 = icmp ult i32 %symbol, %max_symbol, !dbg !2130
  br i1 %11, label %12, label %13, !dbg !2132

; <label>:12                                      ; preds = %._crit_edge
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %5) #6, !dbg !2133
  br label %13, !dbg !2133

; <label>:13                                      ; preds = %12, %._crit_edge, %2
  ret void, !dbg !2134
}

; Function Attrs: nounwind optsize ssp uwtable
define void @writeCBP_BIT_CABAC(i32 %b8, i32 %bit, i32 %cbp, %struct.macroblock* nocapture readonly %currMB, i32 %inter, %struct.EncodingEnvironment* %eep_dp) #0 {
  %block_a = alloca %struct.pix_pos, align 4
  tail call void @llvm.dbg.value(metadata i32 %b8, i64 0, metadata !426, metadata !1011), !dbg !2135
  tail call void @llvm.dbg.value(metadata i32 %bit, i64 0, metadata !427, metadata !1011), !dbg !2136
  tail call void @llvm.dbg.value(metadata i32 %cbp, i64 0, metadata !428, metadata !1011), !dbg !2137
  tail call void @llvm.dbg.value(metadata %struct.macroblock* %currMB, i64 0, metadata !429, metadata !1011), !dbg !2138
  tail call void @llvm.dbg.value(metadata i32 %inter, i64 0, metadata !430, metadata !1011), !dbg !2139
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !431, metadata !1011), !dbg !2140
  %1 = srem i32 %b8, 2, !dbg !2141
  %2 = shl nsw i32 %1, 1, !dbg !2142
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !435, metadata !1011), !dbg !2143
  %3 = sdiv i32 %b8, 2, !dbg !2144
  %4 = shl nsw i32 %3, 1, !dbg !2145
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !436, metadata !1011), !dbg !2146
  %b8.off = add i32 %b8, 1, !dbg !2147
  %5 = icmp ult i32 %b8.off, 3, !dbg !2147
  br i1 %5, label %6, label %22, !dbg !2149

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 6, !dbg !2150
  %8 = load %struct.macroblock** %7, align 8, !dbg !2150, !tbaa !1173
  %9 = icmp eq %struct.macroblock* %8, null, !dbg !2153
  br i1 %9, label %27, label %10, !dbg !2154

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.macroblock* %8, i64 0, i32 8, !dbg !2155
  %12 = load i32* %11, align 4, !dbg !2155, !tbaa !1294
  %13 = icmp eq i32 %12, 14, !dbg !2158
  br i1 %13, label %27, label %14, !dbg !2159

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct.macroblock* %8, i64 0, i32 12, !dbg !2160
  %16 = load i32* %15, align 4, !dbg !2160, !tbaa !2161
  %17 = add nsw i32 %1, 2, !dbg !2162
  %18 = shl i32 1, %17, !dbg !2163
  %19 = and i32 %16, %18, !dbg !2164
  %20 = icmp eq i32 %19, 0, !dbg !2165
  %21 = zext i1 %20 to i64, !dbg !2166
  br label %27

; <label>:22                                      ; preds = %0
  %23 = shl i32 1, %1, !dbg !2167
  %24 = and i32 %23, %cbp, !dbg !2168
  %25 = icmp eq i32 %24, 0, !dbg !2169
  %26 = zext i1 %25 to i64, !dbg !2170
  br label %27

; <label>:27                                      ; preds = %10, %6, %14, %22
  %b.0 = phi i64 [ %21, %14 ], [ %26, %22 ], [ 0, %6 ], [ 0, %10 ]
  %28 = icmp eq i32 %1, 0, !dbg !2171
  br i1 %28, label %29, label %58, !dbg !2173

; <label>:29                                      ; preds = %27
  %30 = load %struct.ImageParameters** @img, align 8, !dbg !2174, !tbaa !1001
  %31 = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 3, !dbg !2176
  %32 = load i32* %31, align 4, !dbg !2176, !tbaa !1004
  tail call void @llvm.dbg.value(metadata %struct.pix_pos* %block_a, i64 0, metadata !432, metadata !1011), !dbg !2177
  call void @getLuma4x4Neighbour(i32 %32, i32 %2, i32 %4, i32 -1, i32 0, %struct.pix_pos* %block_a) #6, !dbg !2178
  %33 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !2179
  %34 = load i32* %33, align 4, !dbg !2179, !tbaa !1020
  %35 = icmp eq i32 %34, 0, !dbg !2181
  br i1 %35, label %63, label %36, !dbg !2182

; <label>:36                                      ; preds = %29
  %37 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1, !dbg !2183
  %38 = load i32* %37, align 4, !dbg !2183, !tbaa !1025
  %39 = sext i32 %38 to i64, !dbg !2187
  %40 = load %struct.ImageParameters** @img, align 8, !dbg !2187, !tbaa !1001
  %41 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 51, !dbg !2188
  %42 = load %struct.macroblock** %41, align 8, !dbg !2188, !tbaa !1010
  %43 = getelementptr inbounds %struct.macroblock* %42, i64 %39, i32 8, !dbg !2189
  %44 = load i32* %43, align 4, !dbg !2189, !tbaa !1294
  %45 = icmp eq i32 %44, 14, !dbg !2190
  br i1 %45, label %63, label %46, !dbg !2191

; <label>:46                                      ; preds = %36
  %47 = getelementptr inbounds %struct.macroblock* %42, i64 %39, i32 12, !dbg !2192
  %48 = load i32* %47, align 4, !dbg !2192, !tbaa !2161
  %49 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3, !dbg !2193
  %50 = load i32* %49, align 4, !dbg !2193, !tbaa !1761
  %51 = sdiv i32 %50, 2, !dbg !2194
  %52 = shl nsw i32 %51, 1, !dbg !2195
  %53 = or i32 %52, 1, !dbg !2196
  %54 = shl i32 1, %53, !dbg !2197
  %55 = and i32 %54, %48, !dbg !2198
  %56 = icmp eq i32 %55, 0, !dbg !2199
  %57 = zext i1 %56 to i64, !dbg !2200
  br label %63

; <label>:58                                      ; preds = %27
  %59 = shl i32 1, %4, !dbg !2201
  %60 = and i32 %59, %cbp, !dbg !2202
  %61 = icmp eq i32 %60, 0, !dbg !2203
  %62 = zext i1 %61 to i64, !dbg !2204
  br label %63

; <label>:63                                      ; preds = %29, %36, %46, %58
  %a.0 = phi i64 [ %57, %46 ], [ %62, %58 ], [ 0, %36 ], [ 0, %29 ]
  %64 = trunc i32 %bit to i16, !dbg !2205
  %65 = and i16 %64, 255, !dbg !2205
  %66 = load %struct.ImageParameters** @img, align 8, !dbg !2206, !tbaa !1001
  %67 = getelementptr inbounds %struct.ImageParameters* %66, i64 0, i32 50, !dbg !2207
  %68 = load %struct.Slice** %67, align 8, !dbg !2207, !tbaa !1106
  %69 = getelementptr inbounds %struct.Slice* %68, i64 0, i32 8, !dbg !2208
  %70 = load %struct.TextureInfoContexts** %69, align 8, !dbg !2208, !tbaa !1703
  %71 = shl nuw nsw i64 %b.0, 1, !dbg !2209
  %.sum = or i64 %a.0, %71, !dbg !2210
  %72 = getelementptr inbounds %struct.TextureInfoContexts* %70, i64 0, i32 2, i64 0, i64 %.sum, !dbg !2210
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %65, %struct.BiContextType* %72) #6, !dbg !2211
  ret void, !dbg !2212
}

; Function Attrs: nounwind optsize ssp uwtable
define void @writeCBP_CABAC(%struct.syntaxelement* nocapture readonly %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !439, metadata !1011), !dbg !2213
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !440, metadata !1011), !dbg !2214
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !2215, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !2216
  %3 = load %struct.Slice** %2, align 8, !dbg !2216, !tbaa !1106
  %4 = getelementptr inbounds %struct.Slice* %3, i64 0, i32 8, !dbg !2217
  %5 = load %struct.TextureInfoContexts** %4, align 8, !dbg !2217, !tbaa !1703
  tail call void @llvm.dbg.value(metadata %struct.TextureInfoContexts* %5, i64 0, metadata !441, metadata !1011), !dbg !2218
  %6 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !2219
  %7 = load i32* %6, align 4, !dbg !2219, !tbaa !1004
  %8 = sext i32 %7 to i64, !dbg !2220
  %9 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !2221
  %10 = load %struct.macroblock** %9, align 8, !dbg !2221, !tbaa !1010
  %11 = getelementptr inbounds %struct.macroblock* %10, i64 %8, !dbg !2220
  tail call void @llvm.dbg.value(metadata %struct.macroblock* %11, i64 0, metadata !442, metadata !1011), !dbg !2222
  %12 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !2223
  %13 = load i32* %12, align 4, !dbg !2223, !tbaa !1115
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !447, metadata !1011), !dbg !2224
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !449, metadata !1011), !dbg !2225
  br label %14, !dbg !2226

; <label>:14                                      ; preds = %14, %0
  %b8.03 = phi i32 [ 0, %0 ], [ %17, %14 ]
  %15 = shl i32 1, %b8.03, !dbg !2228
  %16 = and i32 %15, %13, !dbg !2231
  tail call void @writeCBP_BIT_CABAC(i32 %b8.03, i32 %16, i32 %13, %struct.macroblock* %11, i32 undef, %struct.EncodingEnvironment* %eep_dp) #7, !dbg !2232
  %17 = add nuw nsw i32 %b8.03, 1, !dbg !2233
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !449, metadata !1011), !dbg !2225
  %exitcond = icmp eq i32 %17, 4, !dbg !2226
  br i1 %exitcond, label %18, label %14, !dbg !2226

; <label>:18                                      ; preds = %14
  %19 = load %struct.ImageParameters** @img, align 8, !dbg !2234, !tbaa !1001
  %20 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 159, !dbg !2236
  %21 = load i32* %20, align 4, !dbg !2236, !tbaa !2237
  %22 = icmp eq i32 %21, 0, !dbg !2238
  br i1 %22, label %87, label %23, !dbg !2239

; <label>:23                                      ; preds = %18
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !444, metadata !1011), !dbg !2240
  %24 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 6, !dbg !2241
  %25 = load %struct.macroblock** %24, align 8, !dbg !2241, !tbaa !1173
  %26 = icmp eq %struct.macroblock* %25, null, !dbg !2244
  br i1 %26, label %36, label %27, !dbg !2245

; <label>:27                                      ; preds = %23
  %28 = getelementptr inbounds %struct.macroblock* %25, i64 0, i32 8, !dbg !2246
  %29 = load i32* %28, align 4, !dbg !2246, !tbaa !1294
  %30 = icmp eq i32 %29, 14, !dbg !2249
  br i1 %30, label %36, label %31, !dbg !2250

; <label>:31                                      ; preds = %27
  %32 = getelementptr inbounds %struct.macroblock* %25, i64 0, i32 12, !dbg !2251
  %33 = load i32* %32, align 4, !dbg !2251, !tbaa !2161
  %34 = icmp sgt i32 %33, 15, !dbg !2252
  %35 = select i1 %34, i64 2, i64 0, !dbg !2253
  br label %36

; <label>:36                                      ; preds = %27, %23, %31
  %b.0 = phi i64 [ %35, %31 ], [ 0, %23 ], [ 2, %27 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !443, metadata !1011), !dbg !2254
  %37 = getelementptr inbounds %struct.macroblock* %10, i64 %8, i32 7, !dbg !2255
  %38 = load %struct.macroblock** %37, align 8, !dbg !2255, !tbaa !1183
  %39 = icmp eq %struct.macroblock* %38, null, !dbg !2257
  br i1 %39, label %49, label %40, !dbg !2258

; <label>:40                                      ; preds = %36
  %41 = getelementptr inbounds %struct.macroblock* %38, i64 0, i32 8, !dbg !2259
  %42 = load i32* %41, align 4, !dbg !2259, !tbaa !1294
  %43 = icmp eq i32 %42, 14, !dbg !2262
  br i1 %43, label %49, label %44, !dbg !2263

; <label>:44                                      ; preds = %40
  %45 = getelementptr inbounds %struct.macroblock* %38, i64 0, i32 12, !dbg !2264
  %46 = load i32* %45, align 4, !dbg !2264, !tbaa !2161
  %47 = icmp sgt i32 %46, 15, !dbg !2265
  %48 = zext i1 %47 to i64, !dbg !2266
  br label %49

; <label>:49                                      ; preds = %40, %36, %44
  %a.0 = phi i64 [ %48, %44 ], [ 0, %36 ], [ 1, %40 ]
  %50 = or i64 %a.0, %b.0, !dbg !2267
  %51 = icmp sgt i32 %13, 15, !dbg !2268
  %52 = zext i1 %51 to i16, !dbg !2269
  %53 = getelementptr inbounds %struct.TextureInfoContexts* %5, i64 0, i32 2, i64 1, i64 %50, !dbg !2270
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %52, %struct.BiContextType* %53) #6, !dbg !2271
  br i1 %51, label %54, label %87, !dbg !2272

; <label>:54                                      ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !444, metadata !1011), !dbg !2240
  %55 = load %struct.macroblock** %24, align 8, !dbg !2273, !tbaa !1173
  %56 = icmp eq %struct.macroblock* %55, null, !dbg !2277
  br i1 %56, label %68, label %57, !dbg !2278

; <label>:57                                      ; preds = %54
  %58 = getelementptr inbounds %struct.macroblock* %55, i64 0, i32 8, !dbg !2279
  %59 = load i32* %58, align 4, !dbg !2279, !tbaa !1294
  %60 = icmp eq i32 %59, 14, !dbg !2282
  br i1 %60, label %68, label %61, !dbg !2283

; <label>:61                                      ; preds = %57
  %62 = getelementptr inbounds %struct.macroblock* %55, i64 0, i32 12, !dbg !2284
  %63 = load i32* %62, align 4, !dbg !2284, !tbaa !2161
  %64 = icmp sgt i32 %63, 15, !dbg !2286
  br i1 %64, label %65, label %68, !dbg !2287

; <label>:65                                      ; preds = %61
  %.mask2 = and i32 %63, -16, !dbg !2288
  %66 = icmp eq i32 %.mask2, 32, !dbg !2288
  %67 = select i1 %66, i64 2, i64 0, !dbg !2289
  br label %68, !dbg !2290

; <label>:68                                      ; preds = %57, %54, %65, %61
  %b.1 = phi i64 [ %67, %65 ], [ 0, %61 ], [ 0, %54 ], [ 2, %57 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !443, metadata !1011), !dbg !2254
  %69 = load %struct.macroblock** %37, align 8, !dbg !2291, !tbaa !1183
  %70 = icmp eq %struct.macroblock* %69, null, !dbg !2293
  br i1 %70, label %82, label %71, !dbg !2294

; <label>:71                                      ; preds = %68
  %72 = getelementptr inbounds %struct.macroblock* %69, i64 0, i32 8, !dbg !2295
  %73 = load i32* %72, align 4, !dbg !2295, !tbaa !1294
  %74 = icmp eq i32 %73, 14, !dbg !2298
  br i1 %74, label %82, label %75, !dbg !2299

; <label>:75                                      ; preds = %71
  %76 = getelementptr inbounds %struct.macroblock* %69, i64 0, i32 12, !dbg !2300
  %77 = load i32* %76, align 4, !dbg !2300, !tbaa !2161
  %78 = icmp sgt i32 %77, 15, !dbg !2302
  br i1 %78, label %79, label %82, !dbg !2303

; <label>:79                                      ; preds = %75
  %.mask1 = and i32 %77, -16, !dbg !2304
  %80 = icmp eq i32 %.mask1, 32, !dbg !2304
  %81 = zext i1 %80 to i64, !dbg !2305
  br label %82, !dbg !2306

; <label>:82                                      ; preds = %71, %68, %79, %75
  %a.1 = phi i64 [ %81, %79 ], [ 0, %75 ], [ 0, %68 ], [ 1, %71 ]
  %83 = or i64 %a.1, %b.1, !dbg !2307
  %.mask = and i32 %13, -16, !dbg !2308
  %84 = icmp eq i32 %.mask, 32, !dbg !2308
  %85 = zext i1 %84 to i16, !dbg !2309
  %86 = getelementptr inbounds %struct.TextureInfoContexts* %5, i64 0, i32 2, i64 2, i64 %83, !dbg !2310
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %85, %struct.BiContextType* %86) #6, !dbg !2311
  br label %87, !dbg !2312

; <label>:87                                      ; preds = %18, %49, %82
  ret void, !dbg !2313
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_and_store_CBP_block_bit(%struct.macroblock* nocapture %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32 %cbp_bit) #0 {
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  tail call void @llvm.dbg.value(metadata %struct.macroblock* %currMB, i64 0, metadata !454, metadata !1011), !dbg !2314
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !455, metadata !1011), !dbg !2315
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !456, metadata !1011), !dbg !2316
  tail call void @llvm.dbg.value(metadata i32 %cbp_bit, i64 0, metadata !457, metadata !1011), !dbg !2317
  %type.off = add i32 %type, -1, !dbg !2318
  %1 = icmp eq i32 %type, 4, !dbg !2319
  %2 = icmp ult i32 %type.off, 5, !dbg !2318
  %3 = icmp eq i32 %type, 0, !dbg !2320
  %4 = icmp eq i32 %type, 7, !dbg !2321
  br i1 %4, label %.thread, label %10, !dbg !2322

.thread:                                          ; preds = %0
  %5 = load %struct.ImageParameters** @img, align 8, !dbg !2323, !tbaa !1001
  %6 = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 21, !dbg !2324
  %7 = load i32* %6, align 4, !dbg !2324, !tbaa !2325
  %8 = icmp eq i32 %7, 0, !dbg !2326
  %9 = icmp ne i32 %7, 0, !dbg !2327
  br label %12, !dbg !2328

; <label>:10                                      ; preds = %0
  %switch.tableidx = add i32 %type, -6, !dbg !2328
  %11 = icmp ult i32 %switch.tableidx, 4, !dbg !2328
  br i1 %11, label %12, label %.thread32, !dbg !2328

; <label>:12                                      ; preds = %10, %.thread
  %switch.tableidx28 = phi i32 [ 1, %.thread ], [ %switch.tableidx, %10 ]
  %13 = phi i1 [ %9, %.thread ], [ false, %10 ]
  %14 = phi i1 [ %8, %.thread ], [ false, %10 ]
  %switch.cast = trunc i32 %switch.tableidx28 to i4, !dbg !2328
  %switch.downshift = lshr i4 -3, %switch.cast, !dbg !2328
  %15 = and i4 %switch.downshift, 1, !dbg !2328
  %switch.masked = icmp eq i4 %15, 0, !dbg !2328
  br i1 %switch.masked, label %.thread32, label %16, !dbg !2329

; <label>:16                                      ; preds = %12
  %17 = load %struct.ImageParameters** @img, align 8, !dbg !2330, !tbaa !1001
  %18 = getelementptr inbounds %struct.ImageParameters* %17, i64 0, i32 21, !dbg !2331
  %19 = load i32* %18, align 4, !dbg !2331, !tbaa !2325
  %20 = icmp eq i32 %19, 0, !dbg !2332
  %21 = icmp ne i32 %19, 0, !dbg !2333
  br label %.thread32

.thread32:                                        ; preds = %12, %10, %16
  %22 = phi i1 [ %20, %16 ], [ false, %12 ], [ false, %10 ]
  %23 = phi i1 [ %13, %16 ], [ %13, %12 ], [ false, %10 ]
  %24 = phi i1 [ %14, %16 ], [ %14, %12 ], [ false, %10 ]
  %25 = phi i1 [ %21, %16 ], [ false, %12 ], [ false, %10 ]
  %or.cond9 = or i1 %2, %24, !dbg !2334
  %or.cond11 = or i1 %23, %or.cond9, !dbg !2334
  %26 = load %struct.ImageParameters** @img, align 8, !dbg !2335, !tbaa !1001
  br i1 %or.cond11, label %27, label %.thread35, !dbg !2334

; <label>:27                                      ; preds = %.thread32
  %28 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 19, !dbg !2336
  %29 = load i32* %28, align 4, !dbg !2336, !tbaa !1747
  %30 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 18, !dbg !2337
  %31 = load i32* %30, align 4, !dbg !2337, !tbaa !1745
  br label %.thread35, !dbg !2338

.thread35:                                        ; preds = %.thread32, %27
  %32 = phi i32 [ %29, %27 ], [ 0, %.thread32 ]
  %33 = phi i32 [ %31, %27 ], [ 0, %.thread32 ], !dbg !2338
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !466, metadata !1011), !dbg !2339
  %brmerge = or i1 %3, %2, !dbg !2340
  %brmerge20 = or i1 %brmerge, %22, !dbg !2340
  %34 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 20, !dbg !2341
  %35 = load i32* %34, align 4, !dbg !2341, !tbaa !2342
  %36 = icmp ne i32 %35, 0, !dbg !2343
  %37 = zext i1 %36 to i32, !dbg !2343
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !468, metadata !1011), !dbg !2344
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !469, metadata !1011), !dbg !2345
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !470, metadata !1011), !dbg !2346
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !472, metadata !1011), !dbg !2347
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !473, metadata !1011), !dbg !2348
  %38 = getelementptr inbounds %struct.ImageParameters* %26, i64 0, i32 3, !dbg !2349
  %39 = load i32* %38, align 4, !dbg !2349, !tbaa !1004
  tail call void @llvm.dbg.value(metadata %struct.pix_pos* %block_a, i64 0, metadata !474, metadata !1011), !dbg !2352
  %switch = icmp ult i32 %type, 6, !dbg !2353
  br i1 %switch, label %40, label %66, !dbg !2353

; <label>:40                                      ; preds = %.thread35
  call void @getLuma4x4Neighbour(i32 %39, i32 %33, i32 %32, i32 -1, i32 0, %struct.pix_pos* %block_a) #6, !dbg !2354
  %41 = load %struct.ImageParameters** @img, align 8, !dbg !2355, !tbaa !1001
  %42 = getelementptr inbounds %struct.ImageParameters* %41, i64 0, i32 3, !dbg !2356
  %43 = load i32* %42, align 4, !dbg !2356, !tbaa !1004
  call void @llvm.dbg.value(metadata %struct.pix_pos* %block_b, i64 0, metadata !475, metadata !1011), !dbg !2357
  call void @getLuma4x4Neighbour(i32 %43, i32 %33, i32 %32, i32 0, i32 -1, %struct.pix_pos* %block_b) #6, !dbg !2358
  br i1 %2, label %44, label %92, !dbg !2359

; <label>:44                                      ; preds = %40
  %45 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !2360
  %46 = load i32* %45, align 4, !dbg !2360, !tbaa !1020
  %47 = icmp eq i32 %46, 0, !dbg !2364
  br i1 %47, label %55, label %48, !dbg !2365

; <label>:48                                      ; preds = %44
  %49 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3, !dbg !2366
  %50 = load i32* %49, align 4, !dbg !2366, !tbaa !1761
  %51 = shl i32 %50, 2, !dbg !2367
  %52 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2, !dbg !2368
  %53 = load i32* %52, align 4, !dbg !2368, !tbaa !1757
  %54 = add nsw i32 %51, %53, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !472, metadata !1011), !dbg !2347
  br label %55, !dbg !2370

; <label>:55                                      ; preds = %44, %48
  %bit_pos_a.0 = phi i32 [ %54, %48 ], [ 0, %44 ]
  %56 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0, !dbg !2371
  %57 = load i32* %56, align 4, !dbg !2371, !tbaa !1020
  %58 = icmp eq i32 %57, 0, !dbg !2373
  br i1 %58, label %92, label %59, !dbg !2374

; <label>:59                                      ; preds = %55
  %60 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3, !dbg !2375
  %61 = load i32* %60, align 4, !dbg !2375, !tbaa !1761
  %62 = shl i32 %61, 2, !dbg !2376
  %63 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2, !dbg !2377
  %64 = load i32* %63, align 4, !dbg !2377, !tbaa !1757
  %65 = add nsw i32 %62, %64, !dbg !2378
  call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !473, metadata !1011), !dbg !2348
  br label %92, !dbg !2379

; <label>:66                                      ; preds = %.thread35
  call void @getChroma4x4Neighbour(i32 %39, i32 %33, i32 %32, i32 -1, i32 0, %struct.pix_pos* %block_a) #6, !dbg !2380
  %67 = load %struct.ImageParameters** @img, align 8, !dbg !2382, !tbaa !1001
  %68 = getelementptr inbounds %struct.ImageParameters* %67, i64 0, i32 3, !dbg !2383
  %69 = load i32* %68, align 4, !dbg !2383, !tbaa !1004
  call void @llvm.dbg.value(metadata %struct.pix_pos* %block_b, i64 0, metadata !475, metadata !1011), !dbg !2357
  call void @getChroma4x4Neighbour(i32 %69, i32 %33, i32 %32, i32 0, i32 -1, %struct.pix_pos* %block_b) #6, !dbg !2384
  %or.cond19 = or i1 %23, %24, !dbg !2385
  br i1 %or.cond19, label %70, label %92, !dbg !2385

; <label>:70                                      ; preds = %66
  %71 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !2387
  %72 = load i32* %71, align 4, !dbg !2387, !tbaa !1020
  %73 = icmp eq i32 %72, 0, !dbg !2390
  br i1 %73, label %81, label %74, !dbg !2391

; <label>:74                                      ; preds = %70
  %75 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3, !dbg !2392
  %76 = load i32* %75, align 4, !dbg !2392, !tbaa !1761
  %77 = shl i32 %76, 1, !dbg !2393
  %78 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2, !dbg !2394
  %79 = load i32* %78, align 4, !dbg !2394, !tbaa !1757
  %80 = add nsw i32 %77, %79, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !472, metadata !1011), !dbg !2347
  br label %81, !dbg !2396

; <label>:81                                      ; preds = %70, %74
  %bit_pos_a.1 = phi i32 [ %80, %74 ], [ 0, %70 ]
  %82 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0, !dbg !2397
  %83 = load i32* %82, align 4, !dbg !2397, !tbaa !1020
  %84 = icmp eq i32 %83, 0, !dbg !2399
  br i1 %84, label %92, label %85, !dbg !2400

; <label>:85                                      ; preds = %81
  %86 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3, !dbg !2401
  %87 = load i32* %86, align 4, !dbg !2401, !tbaa !1761
  %88 = shl i32 %87, 1, !dbg !2402
  %89 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2, !dbg !2403
  %90 = load i32* %89, align 4, !dbg !2403, !tbaa !1757
  %91 = add nsw i32 %88, %90, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !473, metadata !1011), !dbg !2348
  br label %92, !dbg !2405

; <label>:92                                      ; preds = %55, %81, %66, %85, %40, %59
  %bit_pos_a.2 = phi i32 [ %bit_pos_a.0, %59 ], [ %bit_pos_a.0, %55 ], [ 0, %40 ], [ %bit_pos_a.1, %85 ], [ %bit_pos_a.1, %81 ], [ 0, %66 ]
  %bit_pos_b.0 = phi i32 [ %65, %59 ], [ 0, %55 ], [ 0, %40 ], [ %91, %85 ], [ 0, %81 ], [ 0, %66 ]
  br i1 %3, label %107, label %93, !dbg !2406

; <label>:93                                      ; preds = %92
  br i1 %2, label %94, label %98, !dbg !2407

; <label>:94                                      ; preds = %93
  %95 = shl nsw i32 %32, 2, !dbg !2408
  %96 = or i32 %95, 1, !dbg !2409
  %97 = add nsw i32 %96, %33, !dbg !2410
  br label %107, !dbg !2407

; <label>:98                                      ; preds = %93
  %brmerge22 = or i1 %22, %25, !dbg !2411
  %.mux = select i1 %22, i32 17, i32 18, !dbg !2411
  br i1 %brmerge22, label %107, label %99, !dbg !2411

; <label>:99                                      ; preds = %98
  %100 = shl nsw i32 %32, 1, !dbg !2412
  br i1 %24, label %101, label %104, !dbg !2413

; <label>:101                                     ; preds = %99
  %102 = add nsw i32 %100, 19, !dbg !2414
  %103 = add nsw i32 %102, %33, !dbg !2415
  br label %107, !dbg !2413

; <label>:104                                     ; preds = %99
  %105 = add nsw i32 %100, 23, !dbg !2416
  %106 = add nsw i32 %105, %33, !dbg !2417
  br label %107, !dbg !2413

; <label>:107                                     ; preds = %98, %94, %104, %101, %92
  %108 = phi i32 [ 0, %92 ], [ %97, %94 ], [ %.mux, %98 ], [ %103, %101 ], [ %106, %104 ], !dbg !2406
  call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !467, metadata !1011), !dbg !2418
  %109 = icmp eq i32 %cbp_bit, 0, !dbg !2419
  br i1 %109, label %146, label %110, !dbg !2421

; <label>:110                                     ; preds = %107
  switch i32 %type, label %135 [
    i32 2, label %111
    i32 3, label %126
  ], !dbg !2422

; <label>:111                                     ; preds = %110
  %112 = shl i32 1, %108, !dbg !2424
  %113 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 16, !dbg !2427
  %114 = load i64* %113, align 8, !dbg !2428, !tbaa !2429
  %115 = add nsw i32 %108, 1, !dbg !2430
  %116 = shl i32 1, %115, !dbg !2431
  %117 = add nsw i32 %108, 4, !dbg !2432
  %118 = shl i32 1, %117, !dbg !2433
  %119 = add nsw i32 %108, 5, !dbg !2434
  %120 = shl i32 1, %119, !dbg !2435
  %121 = or i32 %116, %112, !dbg !2428
  %122 = or i32 %121, %118, !dbg !2436
  %123 = or i32 %122, %120, !dbg !2437
  %124 = sext i32 %123 to i64, !dbg !2437
  %125 = or i64 %124, %114, !dbg !2438
  store i64 %125, i64* %113, align 8, !dbg !2438, !tbaa !2429
  br label %146, !dbg !2439

; <label>:126                                     ; preds = %110
  %127 = shl i32 1, %108, !dbg !2440
  %128 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 16, !dbg !2443
  %129 = load i64* %128, align 8, !dbg !2444, !tbaa !2429
  %130 = add nsw i32 %108, 1, !dbg !2445
  %131 = shl i32 1, %130, !dbg !2446
  %132 = or i32 %131, %127, !dbg !2444
  %133 = sext i32 %132 to i64, !dbg !2444
  %134 = or i64 %133, %129, !dbg !2447
  store i64 %134, i64* %128, align 8, !dbg !2447, !tbaa !2429
  br label %146, !dbg !2448

; <label>:135                                     ; preds = %110
  %136 = shl i32 1, %108, !dbg !2449
  %137 = sext i32 %136 to i64, !dbg !2452
  %138 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 16, !dbg !2453
  %139 = load i64* %138, align 8, !dbg !2454, !tbaa !2429
  %140 = or i64 %139, %137, !dbg !2454
  store i64 %140, i64* %138, align 8, !dbg !2454, !tbaa !2429
  br i1 %1, label %141, label %146, !dbg !2455

; <label>:141                                     ; preds = %135
  %142 = add nsw i32 %108, 4, !dbg !2456
  %143 = shl i32 1, %142, !dbg !2457
  %144 = sext i32 %143 to i64, !dbg !2458
  %145 = or i64 %140, %144, !dbg !2459
  store i64 %145, i64* %138, align 8, !dbg !2459, !tbaa !2429
  br label %146, !dbg !2460

; <label>:146                                     ; preds = %107, %111, %141, %135, %126
  %147 = zext i1 %3 to i32, !dbg !2461
  %.mux24 = xor i32 %147, 1, !dbg !2461
  %.mux24.mux = select i1 %brmerge, i32 %.mux24, i32 17, !dbg !2461
  %brmerge26 = or i1 %brmerge20, %25, !dbg !2461
  %.mux24.mux.mux = select i1 %brmerge20, i32 %.mux24.mux, i32 18, !dbg !2461
  br i1 %brmerge26, label %150, label %148, !dbg !2461

; <label>:148                                     ; preds = %146
  %149 = select i1 %24, i32 19, i32 23, !dbg !2462
  br label %150, !dbg !2463

; <label>:150                                     ; preds = %146, %148
  %151 = phi i32 [ %.mux24.mux.mux, %146 ], [ %149, %148 ], !dbg !2461
  call void @llvm.dbg.value(metadata i32 %151, i64 0, metadata !467, metadata !1011), !dbg !2418
  %152 = icmp eq i32 %type, 2, !dbg !2464
  br i1 %152, label %216, label %153, !dbg !2466

; <label>:153                                     ; preds = %150
  %154 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0, !dbg !2467
  %155 = load i32* %154, align 4, !dbg !2467, !tbaa !1020
  %156 = icmp eq i32 %155, 0, !dbg !2470
  br i1 %156, label %177, label %157, !dbg !2471

; <label>:157                                     ; preds = %153
  %158 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1, !dbg !2472
  %159 = load i32* %158, align 4, !dbg !2472, !tbaa !1025
  %160 = sext i32 %159 to i64, !dbg !2475
  %161 = load %struct.ImageParameters** @img, align 8, !dbg !2475, !tbaa !1001
  %162 = getelementptr inbounds %struct.ImageParameters* %161, i64 0, i32 51, !dbg !2476
  %163 = load %struct.macroblock** %162, align 8, !dbg !2476, !tbaa !1010
  %164 = getelementptr inbounds %struct.macroblock* %163, i64 %160, i32 8, !dbg !2477
  %165 = load i32* %164, align 4, !dbg !2477, !tbaa !1294
  %166 = icmp eq i32 %165, 14, !dbg !2478
  br i1 %166, label %177, label %167, !dbg !2479

; <label>:167                                     ; preds = %157
  %168 = getelementptr inbounds %struct.macroblock* %163, i64 %160, i32 16, !dbg !2480
  %169 = load i64* %168, align 8, !dbg !2480, !tbaa !2429
  %170 = add nsw i32 %151, %bit_pos_b.0, !dbg !2480
  %171 = shl i32 1, %170, !dbg !2480
  %172 = sext i32 %171 to i64, !dbg !2480
  %173 = and i64 %169, %172, !dbg !2480
  %174 = zext i32 %170 to i64, !dbg !2480
  %175 = lshr i64 %173, %174, !dbg !2480
  %176 = trunc i64 %175 to i32, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %176, i64 0, metadata !469, metadata !1011), !dbg !2345
  br label %177

; <label>:177                                     ; preds = %157, %153, %167
  %upper_bit.0 = phi i32 [ %176, %167 ], [ %37, %153 ], [ 1, %157 ]
  %178 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !2481
  %179 = load i32* %178, align 4, !dbg !2481, !tbaa !1020
  %180 = icmp eq i32 %179, 0, !dbg !2483
  br i1 %180, label %._crit_edge, label %181, !dbg !2484

._crit_edge:                                      ; preds = %177
  %.pre36 = load %struct.ImageParameters** @img, align 8, !dbg !2485, !tbaa !1001
  br label %201, !dbg !2484

; <label>:181                                     ; preds = %177
  %182 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1, !dbg !2486
  %183 = load i32* %182, align 4, !dbg !2486, !tbaa !1025
  %184 = sext i32 %183 to i64, !dbg !2489
  %185 = load %struct.ImageParameters** @img, align 8, !dbg !2489, !tbaa !1001
  %186 = getelementptr inbounds %struct.ImageParameters* %185, i64 0, i32 51, !dbg !2490
  %187 = load %struct.macroblock** %186, align 8, !dbg !2490, !tbaa !1010
  %188 = getelementptr inbounds %struct.macroblock* %187, i64 %184, i32 8, !dbg !2491
  %189 = load i32* %188, align 4, !dbg !2491, !tbaa !1294
  %190 = icmp eq i32 %189, 14, !dbg !2492
  br i1 %190, label %201, label %191, !dbg !2493

; <label>:191                                     ; preds = %181
  %192 = getelementptr inbounds %struct.macroblock* %187, i64 %184, i32 16, !dbg !2494
  %193 = load i64* %192, align 8, !dbg !2494, !tbaa !2429
  %194 = add nsw i32 %151, %bit_pos_a.2, !dbg !2494
  %195 = shl i32 1, %194, !dbg !2494
  %196 = sext i32 %195 to i64, !dbg !2494
  %197 = and i64 %193, %196, !dbg !2494
  %198 = zext i32 %194 to i64, !dbg !2494
  %199 = lshr i64 %197, %198, !dbg !2494
  %200 = trunc i64 %199 to i32, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %200, i64 0, metadata !470, metadata !1011), !dbg !2346
  br label %201

; <label>:201                                     ; preds = %._crit_edge, %181, %191
  %202 = phi %struct.ImageParameters* [ %185, %191 ], [ %.pre36, %._crit_edge ], [ %185, %181 ]
  %left_bit.0 = phi i32 [ %200, %191 ], [ %37, %._crit_edge ], [ 1, %181 ]
  %203 = shl i32 %upper_bit.0, 1, !dbg !2495
  %204 = add nsw i32 %left_bit.0, %203, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %204, i64 0, metadata !471, metadata !1011), !dbg !2497
  %205 = trunc i32 %cbp_bit to i16, !dbg !2498
  %206 = sext i32 %type to i64, !dbg !2499
  %207 = getelementptr inbounds [10 x i32]* @type2ctx_bcbp, i64 0, i64 %206, !dbg !2499
  %208 = load i32* %207, align 4, !dbg !2499, !tbaa !995
  %209 = sext i32 %208 to i64, !dbg !2485
  %210 = getelementptr inbounds %struct.ImageParameters* %202, i64 0, i32 50, !dbg !2500
  %211 = load %struct.Slice** %210, align 8, !dbg !2500, !tbaa !1106
  %212 = getelementptr inbounds %struct.Slice* %211, i64 0, i32 8, !dbg !2501
  %213 = load %struct.TextureInfoContexts** %212, align 8, !dbg !2501, !tbaa !1703
  %214 = sext i32 %204 to i64, !dbg !2502
  %215 = getelementptr inbounds %struct.TextureInfoContexts* %213, i64 0, i32 3, i64 %209, i64 %214, !dbg !2502
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %205, %struct.BiContextType* %215) #6, !dbg !2503
  br label %216, !dbg !2504

; <label>:216                                     ; preds = %150, %201
  ret void, !dbg !2505
}

; Function Attrs: optsize
declare void @getChroma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @write_significance_map(%struct.macroblock* nocapture readonly %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32* nocapture readonly %coeff, i32 %coeff_ctr) #0 {
  tail call void @llvm.dbg.value(metadata %struct.macroblock* %currMB, i64 0, metadata !480, metadata !1011), !dbg !2506
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !481, metadata !1011), !dbg !2507
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !482, metadata !1011), !dbg !2508
  tail call void @llvm.dbg.value(metadata i32* %coeff, i64 0, metadata !483, metadata !1011), !dbg !2509
  tail call void @llvm.dbg.value(metadata i32 %coeff_ctr, i64 0, metadata !484, metadata !1011), !dbg !2510
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !488, metadata !1011), !dbg !2511
  %1 = sext i32 %type to i64, !dbg !2512
  %2 = getelementptr inbounds [10 x i32]* @maxpos, i64 0, i64 %1, !dbg !2512
  %3 = load i32* %2, align 4, !dbg !2512, !tbaa !995
  %4 = add nsw i32 %3, -1, !dbg !2513
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !489, metadata !1011), !dbg !2514
  %5 = load %struct.ImageParameters** @img, align 8, !dbg !2515, !tbaa !1001
  %6 = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 7, !dbg !2516
  %7 = load i32* %6, align 4, !dbg !2516, !tbaa !2517
  %8 = icmp eq i32 %7, 0, !dbg !2518
  br i1 %8, label %9, label %13, !dbg !2519

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 22, !dbg !2520
  %11 = load i32* %10, align 4, !dbg !2520, !tbaa !1129
  %12 = icmp ne i32 %11, 0, !dbg !2519
  br label %13, !dbg !2519

; <label>:13                                      ; preds = %0, %9
  %14 = phi i1 [ true, %0 ], [ %12, %9 ]
  %15 = getelementptr inbounds [10 x i32]* @type2ctx_last, i64 0, i64 %1, !dbg !2521
  %16 = load i32* %15, align 4, !dbg !2521, !tbaa !995
  %17 = sext i32 %16 to i64, !dbg !2522
  %18 = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 50, !dbg !2523
  %19 = load %struct.Slice** %18, align 8, !dbg !2523, !tbaa !1106
  %20 = getelementptr inbounds %struct.Slice* %19, i64 0, i32 8, !dbg !2524
  %21 = load %struct.TextureInfoContexts** %20, align 8, !dbg !2524, !tbaa !1703
  %22 = getelementptr inbounds %struct.TextureInfoContexts* %21, i64 0, i32 8, !dbg !2525
  %23 = getelementptr inbounds %struct.TextureInfoContexts* %21, i64 0, i32 4, !dbg !2526
  %.sink1 = select i1 %14, [10 x [15 x %struct.BiContextType]]* %22, [10 x [15 x %struct.BiContextType]]* %23, !dbg !2527
  %24 = getelementptr inbounds [10 x i32]* @type2ctx_last, i64 0, i64 %1, !dbg !2528
  %25 = load i32* %24, align 4, !dbg !2528, !tbaa !995
  %26 = sext i32 %25 to i64, !dbg !2529
  %27 = getelementptr inbounds %struct.TextureInfoContexts* %21, i64 0, i32 9, !dbg !2530
  %28 = getelementptr inbounds %struct.TextureInfoContexts* %21, i64 0, i32 5, !dbg !2531
  %.sink2 = select i1 %14, [10 x [15 x %struct.BiContextType]]* %27, [10 x [15 x %struct.BiContextType]]* %28, !dbg !2532
  switch i32 %type, label %31 [
    i32 7, label %29
    i32 1, label %29
  ], !dbg !2533

; <label>:29                                      ; preds = %13, %13
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !488, metadata !1011), !dbg !2511
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !489, metadata !1011), !dbg !2514
  %30 = getelementptr inbounds i32* %coeff, i64 -1, !dbg !2534
  tail call void @llvm.dbg.value(metadata i32* %30, i64 0, metadata !483, metadata !1011), !dbg !2509
  br label %31, !dbg !2537

; <label>:31                                      ; preds = %13, %29
  %k0.0 = phi i16 [ 0, %13 ], [ 1, %29 ]
  %k1.0 = phi i32 [ %4, %13 ], [ %3, %29 ]
  %.0 = phi i32* [ %coeff, %13 ], [ %30, %29 ]
  tail call void @llvm.dbg.value(metadata i16 %k0.0, i64 0, metadata !485, metadata !1011), !dbg !2538
  %32 = zext i16 %k0.0 to i32, !dbg !2539
  %33 = icmp slt i32 %32, %k1.0, !dbg !2542
  br i1 %33, label %.lr.ph, label %._crit_edge, !dbg !2543

.lr.ph:                                           ; preds = %31
  %34 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 22, !dbg !2544
  %35 = getelementptr inbounds [10 x i32*]* @pos2ctx_map, i64 0, i64 %1, !dbg !2547
  %36 = getelementptr inbounds [10 x i32*]* @pos2ctx_last, i64 0, i64 %1, !dbg !2548
  %37 = getelementptr inbounds [10 x i32*]* @pos2ctx_map_int, i64 0, i64 %1, !dbg !2551
  br label %38, !dbg !2543

; <label>:38                                      ; preds = %._crit_edge7, %.lr.ph
  %39 = phi i32 [ %7, %.lr.ph ], [ %.pre8, %._crit_edge7 ]
  %.035 = phi i32 [ %coeff_ctr, %.lr.ph ], [ %.1, %._crit_edge7 ]
  %k.04 = phi i16 [ %k0.0, %.lr.ph ], [ %72, %._crit_edge7 ]
  %40 = sext i16 %k.04 to i64, !dbg !2552
  %41 = getelementptr inbounds i32* %.0, i64 %40, !dbg !2552
  %42 = load i32* %41, align 4, !dbg !2552, !tbaa !995
  %43 = icmp ne i32 %42, 0, !dbg !2553
  %44 = zext i1 %43 to i16, !dbg !2554
  tail call void @llvm.dbg.value(metadata i16 %44, i64 0, metadata !486, metadata !1011), !dbg !2555
  %45 = icmp eq i32 %39, 0, !dbg !2556
  br i1 %45, label %46, label %49, !dbg !2557

; <label>:46                                      ; preds = %38
  %47 = load i32* %34, align 4, !dbg !2544, !tbaa !1129
  %48 = icmp eq i32 %47, 0, !dbg !2558
  br i1 %48, label %55, label %49, !dbg !2559

; <label>:49                                      ; preds = %46, %38
  %50 = load i32** %37, align 8, !dbg !2551, !tbaa !1001
  %51 = getelementptr inbounds i32* %50, i64 %40, !dbg !2551
  %52 = load i32* %51, align 4, !dbg !2551, !tbaa !995
  %53 = sext i32 %52 to i64, !dbg !2560
  %54 = getelementptr inbounds [10 x [15 x %struct.BiContextType]]* %.sink1, i64 0, i64 %17, i64 %53, !dbg !2560
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %44, %struct.BiContextType* %54) #6, !dbg !2561
  br label %61, !dbg !2561

; <label>:55                                      ; preds = %46
  %56 = load i32** %35, align 8, !dbg !2547, !tbaa !1001
  %57 = getelementptr inbounds i32* %56, i64 %40, !dbg !2547
  %58 = load i32* %57, align 4, !dbg !2547, !tbaa !995
  %59 = sext i32 %58 to i64, !dbg !2562
  %60 = getelementptr inbounds [10 x [15 x %struct.BiContextType]]* %.sink1, i64 0, i64 %17, i64 %59, !dbg !2562
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %44, %struct.BiContextType* %60) #6, !dbg !2563
  br label %61

; <label>:61                                      ; preds = %55, %49
  br i1 %43, label %62, label %71, !dbg !2564

; <label>:62                                      ; preds = %61
  %63 = add nsw i32 %.035, -1, !dbg !2565
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !484, metadata !1011), !dbg !2510
  %64 = icmp eq i32 %63, 0, !dbg !2566
  %65 = zext i1 %64 to i16, !dbg !2567
  tail call void @llvm.dbg.value(metadata i16 %65, i64 0, metadata !487, metadata !1011), !dbg !2568
  %66 = load i32** %36, align 8, !dbg !2548, !tbaa !1001
  %67 = getelementptr inbounds i32* %66, i64 %40, !dbg !2548
  %68 = load i32* %67, align 4, !dbg !2548, !tbaa !995
  %69 = sext i32 %68 to i64, !dbg !2569
  %70 = getelementptr inbounds [10 x [15 x %struct.BiContextType]]* %.sink2, i64 0, i64 %26, i64 %69, !dbg !2569
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %65, %struct.BiContextType* %70) #6, !dbg !2570
  br i1 %64, label %._crit_edge, label %71, !dbg !2571

; <label>:71                                      ; preds = %61, %62
  %.1 = phi i32 [ %63, %62 ], [ %.035, %61 ]
  %72 = add i16 %k.04, 1, !dbg !2572
  tail call void @llvm.dbg.value(metadata i16 %72, i64 0, metadata !485, metadata !1011), !dbg !2538
  %73 = sext i16 %72 to i32, !dbg !2539
  %74 = icmp slt i32 %73, %k1.0, !dbg !2542
  br i1 %74, label %._crit_edge7, label %._crit_edge, !dbg !2543

._crit_edge7:                                     ; preds = %71
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !2573, !tbaa !1001
  %.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 7
  %.pre8 = load i32* %.phi.trans.insert, align 4, !dbg !2574, !tbaa !2517
  br label %38, !dbg !2543

._crit_edge:                                      ; preds = %71, %62, %31
  ret void, !dbg !2575
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_significant_coefficients(%struct.macroblock* nocapture readnone %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32* nocapture readonly %coeff) #0 {
  tail call void @llvm.dbg.value(metadata %struct.macroblock* %currMB, i64 0, metadata !499, metadata !1011), !dbg !2576
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !500, metadata !1011), !dbg !2577
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !501, metadata !1011), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32* %coeff, i64 0, metadata !502, metadata !1011), !dbg !2579
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !508, metadata !1011), !dbg !2580
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !509, metadata !1011), !dbg !2581
  %1 = sext i32 %type to i64, !dbg !2582
  %2 = getelementptr inbounds [10 x i32]* @maxpos, i64 0, i64 %1, !dbg !2582
  %3 = load i32* %2, align 4, !dbg !2582, !tbaa !995
  %4 = getelementptr inbounds [10 x i32]* @type2ctx_abs, i64 0, i64 %1, !dbg !2584
  %5 = getelementptr inbounds [10 x i32]* @max_c2, i64 0, i64 %1, !dbg !2589
  %6 = getelementptr inbounds [10 x i32]* @type2ctx_abs, i64 0, i64 %1, !dbg !2592
  br label %.outer, !dbg !2593

.outer:                                           ; preds = %49, %0
  %i.0.in.ph = phi i32 [ %i.0, %49 ], [ %3, %0 ]
  %c1.0.ph = phi i32 [ %c1.1, %49 ], [ 1, %0 ]
  %c2.0.ph = phi i32 [ %c2.1, %49 ], [ 0, %0 ]
  %7 = sext i32 %i.0.in.ph to i64
  br label %8

; <label>:8                                       ; preds = %.outer, %10
  %indvars.iv = phi i64 [ %7, %.outer ], [ %indvars.iv.next, %10 ]
  %i.0.in = phi i32 [ %i.0.in.ph, %.outer ], [ %i.0, %10 ]
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !2594
  %9 = icmp sgt i64 %indvars.iv, 0, !dbg !2595
  br i1 %9, label %10, label %50, !dbg !2596

; <label>:10                                      ; preds = %8
  %11 = sext i32 %i.0 to i64, !dbg !2597
  %12 = getelementptr inbounds i32* %coeff, i64 %11, !dbg !2597
  %13 = load i32* %12, align 4, !dbg !2597, !tbaa !995
  %14 = icmp eq i32 %13, 0, !dbg !2598
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2599
  br i1 %14, label %8, label %15, !dbg !2599

; <label>:15                                      ; preds = %10
  %16 = icmp sgt i32 %13, 0, !dbg !2600
  %17 = sub nsw i32 0, %13, !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !504, metadata !1011), !dbg !2604
  tail call void @llvm.dbg.value(metadata i16 1, i64 0, metadata !506, metadata !1011), !dbg !2605
  %absLevel.0 = select i1 %16, i32 %13, i32 %17, !dbg !2606
  %18 = zext i1 %16 to i16, !dbg !2606
  %sign.0 = xor i16 %18, 1, !dbg !2606
  %19 = icmp sgt i32 %absLevel.0, 1, !dbg !2607
  %20 = zext i1 %19 to i16, !dbg !2608
  tail call void @llvm.dbg.value(metadata i16 %20, i64 0, metadata !507, metadata !1011), !dbg !2609
  %21 = icmp slt i32 %c1.0.ph, 4, !dbg !2610
  %22 = load i32* %4, align 4, !dbg !2584, !tbaa !995
  %23 = sext i32 %22 to i64, !dbg !2611
  %24 = load %struct.ImageParameters** @img, align 8, !dbg !2611, !tbaa !1001
  %25 = getelementptr inbounds %struct.ImageParameters* %24, i64 0, i32 50, !dbg !2612
  %26 = load %struct.Slice** %25, align 8, !dbg !2612, !tbaa !1106
  %27 = getelementptr inbounds %struct.Slice* %26, i64 0, i32 8, !dbg !2613
  %28 = load %struct.TextureInfoContexts** %27, align 8, !dbg !2613, !tbaa !1703
  %29 = sext i32 %c1.0.ph to i64, !dbg !2614
  %30 = select i1 %21, i64 %29, i64 4, !dbg !2614
  %31 = getelementptr inbounds %struct.TextureInfoContexts* %28, i64 0, i32 6, i64 %23, i64 %30, !dbg !2614
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %20, %struct.BiContextType* %31) #6, !dbg !2615
  br i1 %19, label %32, label %46, !dbg !2616

; <label>:32                                      ; preds = %15
  %33 = load i32* %5, align 4, !dbg !2589, !tbaa !995
  %34 = icmp slt i32 %c2.0.ph, %33, !dbg !2589
  %c2.0. = select i1 %34, i32 %c2.0.ph, i32 %33, !dbg !2589
  tail call void @llvm.dbg.value(metadata i32 %c2.0., i64 0, metadata !505, metadata !1011), !dbg !2617
  %35 = add nsw i32 %absLevel.0, -2, !dbg !2618
  %36 = load i32* %6, align 4, !dbg !2592, !tbaa !995
  %37 = sext i32 %36 to i64, !dbg !2619
  %38 = load %struct.ImageParameters** @img, align 8, !dbg !2619, !tbaa !1001
  %39 = getelementptr inbounds %struct.ImageParameters* %38, i64 0, i32 50, !dbg !2620
  %40 = load %struct.Slice** %39, align 8, !dbg !2620, !tbaa !1106
  %41 = getelementptr inbounds %struct.Slice* %40, i64 0, i32 8, !dbg !2621
  %42 = load %struct.TextureInfoContexts** %41, align 8, !dbg !2621, !tbaa !1703
  %43 = sext i32 %c2.0. to i64, !dbg !2622
  %44 = getelementptr inbounds %struct.TextureInfoContexts* %42, i64 0, i32 7, i64 %37, i64 %43, !dbg !2622
  tail call void @unary_exp_golomb_level_encode(%struct.EncodingEnvironment* %eep_dp, i32 %35, %struct.BiContextType* %44) #7, !dbg !2623
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !508, metadata !1011), !dbg !2580
  %45 = add nsw i32 %c2.0.ph, 1, !dbg !2624
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !509, metadata !1011), !dbg !2581
  br label %49, !dbg !2625

; <label>:46                                      ; preds = %15
  %47 = icmp eq i32 %c1.0.ph, 0, !dbg !2626
  %48 = add nsw i32 %c1.0.ph, 1, !dbg !2628
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !508, metadata !1011), !dbg !2580
  %c1.0. = select i1 %47, i32 0, i32 %48, !dbg !2630
  br label %49, !dbg !2630

; <label>:49                                      ; preds = %46, %32
  %c1.1 = phi i32 [ 0, %32 ], [ %c1.0., %46 ]
  %c2.1 = phi i32 [ %45, %32 ], [ %c2.0.ph, %46 ]
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext %sign.0) #6, !dbg !2631
  br label %.outer, !dbg !2632

; <label>:50                                      ; preds = %8
  ret void, !dbg !2633
}

; Function Attrs: nounwind optsize ssp uwtable
define void @unary_exp_golomb_level_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx) #0 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !548, metadata !1011), !dbg !2634
  tail call void @llvm.dbg.value(metadata i32 %symbol, i64 0, metadata !549, metadata !1011), !dbg !2635
  tail call void @llvm.dbg.value(metadata %struct.BiContextType* %ctx, i64 0, metadata !550, metadata !1011), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 13, i64 0, metadata !553, metadata !1011), !dbg !2637
  %1 = icmp eq i32 %symbol, 0, !dbg !2638
  br i1 %1, label %2, label %3, !dbg !2640

; <label>:2                                       ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #6, !dbg !2641
  br label %16, !dbg !2643

; <label>:3                                       ; preds = %0
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #6, !dbg !2644
  tail call void @llvm.dbg.value(metadata i32 %symbol, i64 0, metadata !551, metadata !1011), !dbg !2646
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !552, metadata !1011), !dbg !2647
  %4 = add i32 %symbol, -1, !dbg !2648
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !551, metadata !1011), !dbg !2646
  %5 = icmp eq i32 %4, 0, !dbg !2649
  br i1 %5, label %.critedge, label %.lr.ph, !dbg !2650

.lr.ph:                                           ; preds = %3, %9
  %6 = phi i32 [ %10, %9 ], [ %4, %3 ]
  %k.01 = phi i32 [ %7, %9 ], [ 1, %3 ]
  %7 = add nuw nsw i32 %k.01, 1, !dbg !2651
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !552, metadata !1011), !dbg !2647
  %8 = icmp ult i32 %7, 14, !dbg !2652
  br i1 %8, label %9, label %.critedge, !dbg !2653

; <label>:9                                       ; preds = %.lr.ph
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #6, !dbg !2654
  %10 = add i32 %6, -1, !dbg !2648
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !551, metadata !1011), !dbg !2646
  %11 = icmp eq i32 %10, 0, !dbg !2649
  br i1 %11, label %.critedge, label %.lr.ph, !dbg !2650

.critedge:                                        ; preds = %.lr.ph, %9, %3
  %12 = icmp ult i32 %symbol, 13, !dbg !2655
  br i1 %12, label %13, label %14, !dbg !2657

; <label>:13                                      ; preds = %.critedge
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #6, !dbg !2658
  br label %16, !dbg !2658

; <label>:14                                      ; preds = %.critedge
  %15 = add i32 %symbol, -13, !dbg !2659
  tail call void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %eep_dp, i32 %15, i32 0) #7, !dbg !2660
  br label %16

; <label>:16                                      ; preds = %14, %13, %2
  ret void, !dbg !2661
}

; Function Attrs: nounwind optsize ssp uwtable
define void @writeRunLevel_CABAC(%struct.syntaxelement* nocapture readonly %se, %struct.EncodingEnvironment* %eep_dp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !512, metadata !1011), !dbg !2662
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !513, metadata !1011), !dbg !2663
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !2664, !tbaa !1001
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !2665
  %3 = load i32* %2, align 4, !dbg !2665, !tbaa !1004
  %4 = sext i32 %3 to i64, !dbg !2666
  %5 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 51, !dbg !2667
  %6 = load %struct.macroblock** %5, align 8, !dbg !2667, !tbaa !1010
  %7 = getelementptr inbounds %struct.macroblock* %6, i64 %4, !dbg !2666
  tail call void @llvm.dbg.value(metadata %struct.macroblock* %7, i64 0, metadata !514, metadata !1011), !dbg !2668
  %8 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !2669
  %9 = load i32* %8, align 4, !dbg !2669, !tbaa !1115
  %10 = icmp eq i32 %9, 0, !dbg !2671
  br i1 %10, label %thread-pre-split, label %.preheader, !dbg !2672

.preheader:                                       ; preds = %0
  %11 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !2673
  %12 = load i32* %11, align 4, !dbg !2673, !tbaa !1194
  %13 = icmp sgt i32 %12, 0, !dbg !2677
  %.pre = load i32* @writeRunLevel_CABAC.pos, align 4, !dbg !2678, !tbaa !995
  br i1 %13, label %.lr.ph3, label %.preheader._crit_edge, !dbg !2679

.lr.ph3:                                          ; preds = %.preheader, %.lr.ph3
  %14 = phi i32 [ %15, %.lr.ph3 ], [ %.pre, %.preheader ], !dbg !2678
  %i.02 = phi i32 [ %18, %.lr.ph3 ], [ 0, %.preheader ]
  %15 = add nsw i32 %14, 1, !dbg !2678
  store i32 %15, i32* @writeRunLevel_CABAC.pos, align 4, !dbg !2678, !tbaa !995
  %16 = sext i32 %14 to i64, !dbg !2680
  %17 = getelementptr inbounds [64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 %16, !dbg !2680
  store i32 0, i32* %17, align 4, !dbg !2681, !tbaa !995
  %18 = add nuw nsw i32 %i.02, 1, !dbg !2682
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !515, metadata !1011), !dbg !2683
  %19 = load i32* %11, align 4, !dbg !2673, !tbaa !1194
  %20 = icmp slt i32 %18, %19, !dbg !2677
  br i1 %20, label %.lr.ph3, label %._crit_edge4, !dbg !2679

._crit_edge4:                                     ; preds = %.lr.ph3
  %.pre6 = load i32* %8, align 4, !dbg !2684, !tbaa !1115
  br label %.preheader._crit_edge, !dbg !2679

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge4
  %21 = phi i32 [ %15, %._crit_edge4 ], [ %.pre, %.preheader ]
  %22 = phi i32 [ %.pre6, %._crit_edge4 ], [ %9, %.preheader ]
  %23 = add nsw i32 %21, 1, !dbg !2685
  store i32 %23, i32* @writeRunLevel_CABAC.pos, align 4, !dbg !2685, !tbaa !995
  %24 = sext i32 %21 to i64, !dbg !2686
  %25 = getelementptr inbounds [64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 %24, !dbg !2686
  store i32 %22, i32* %25, align 4, !dbg !2687, !tbaa !995
  %26 = load i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !dbg !2688, !tbaa !995
  %27 = add nsw i32 %26, 1, !dbg !2688
  store i32 %27, i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !dbg !2688, !tbaa !995
  br label %52, !dbg !2689

thread-pre-split:                                 ; preds = %0
  %.pr = load i32* @writeRunLevel_CABAC.pos, align 4, !dbg !2690, !tbaa !995
  %28 = icmp slt i32 %.pr, 64, !dbg !2694
  br i1 %28, label %.lr.ph, label %37, !dbg !2695

.lr.ph:                                           ; preds = %thread-pre-split
  %29 = add i32 %.pr, 1, !dbg !2695
  %30 = icmp sgt i32 %29, 64
  br label %31, !dbg !2695

; <label>:31                                      ; preds = %.lr.ph, %31
  %32 = phi i32 [ %.pr, %.lr.ph ], [ %35, %31 ], !dbg !2696
  %33 = sext i32 %32 to i64, !dbg !2696
  %34 = getelementptr inbounds [64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 %33, !dbg !2696
  store i32 0, i32* %34, align 4, !dbg !2697, !tbaa !995
  %35 = add nsw i32 %32, 1, !dbg !2698
  %36 = icmp slt i32 %35, 64, !dbg !2694
  br i1 %36, label %31, label %._crit_edge, !dbg !2695

._crit_edge:                                      ; preds = %31
  %smax = select i1 %30, i32 %29, i32 64
  store i32 %smax, i32* @writeRunLevel_CABAC.pos, align 4, !dbg !2698, !tbaa !995
  br label %37, !dbg !2695

; <label>:37                                      ; preds = %._crit_edge, %thread-pre-split
  %.lcssa = phi i32 [ %smax, %._crit_edge ], [ %.pr, %thread-pre-split ]
  %38 = icmp sgt i32 %.lcssa, 64, !dbg !2699
  br i1 %38, label %39, label %40, !dbg !2699, !prof !2700

; <label>:39                                      ; preds = %37
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.writeRunLevel_CABAC, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 1347, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !2699
  unreachable, !dbg !2699

; <label>:40                                      ; preds = %37
  %41 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !2701
  %42 = load i32* %41, align 4, !dbg !2701, !tbaa !1153
  %43 = load i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !dbg !2702, !tbaa !995
  %44 = icmp sgt i32 %43, 0, !dbg !2703
  %45 = zext i1 %44 to i32, !dbg !2702
  tail call void @write_and_store_CBP_block_bit(%struct.macroblock* %7, %struct.EncodingEnvironment* %eep_dp, i32 %42, i32 %45) #7, !dbg !2704
  %46 = load i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !dbg !2705, !tbaa !995
  %47 = icmp sgt i32 %46, 0, !dbg !2707
  br i1 %47, label %48, label %51, !dbg !2708

; <label>:48                                      ; preds = %40
  %49 = load i32* %41, align 4, !dbg !2709, !tbaa !1153
  tail call void @write_significance_map(%struct.macroblock* %7, %struct.EncodingEnvironment* %eep_dp, i32 %49, i32* getelementptr inbounds ([64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 0), i32 %46) #7, !dbg !2711
  %50 = load i32* %41, align 4, !dbg !2712, !tbaa !1153
  tail call void @write_significant_coefficients(%struct.macroblock* undef, %struct.EncodingEnvironment* %eep_dp, i32 %50, i32* getelementptr inbounds ([64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 0)) #7, !dbg !2713
  br label %51, !dbg !2714

; <label>:51                                      ; preds = %48, %40
  store i32 0, i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !dbg !2715, !tbaa !995
  store i32 0, i32* @writeRunLevel_CABAC.pos, align 4, !dbg !2716, !tbaa !995
  br label %52, !dbg !2717

; <label>:52                                      ; preds = %51, %.preheader._crit_edge
  ret void, !dbg !2717
}

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, i32 %k) #0 {
  tail call void @llvm.dbg.value(metadata %struct.EncodingEnvironment* %eep_dp, i64 0, metadata !541, metadata !1011), !dbg !2718
  tail call void @llvm.dbg.value(metadata i32 %symbol, i64 0, metadata !542, metadata !1011), !dbg !2719
  tail call void @llvm.dbg.value(metadata i32 %k, i64 0, metadata !543, metadata !1011), !dbg !2720
  %1 = shl i32 1, %k, !dbg !2721
  %2 = icmp ugt i32 %1, %symbol, !dbg !2724
  br i1 %2, label %._crit_edge6, label %.lr.ph5, !dbg !2725

.lr.ph5:                                          ; preds = %0, %.lr.ph5
  %3 = phi i32 [ %6, %.lr.ph5 ], [ %1, %0 ]
  %.03 = phi i32 [ %5, %.lr.ph5 ], [ %k, %0 ]
  %.012 = phi i32 [ %4, %.lr.ph5 ], [ %symbol, %0 ]
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext 1) #6, !dbg !2726
  %4 = sub i32 %.012, %3, !dbg !2728
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !542, metadata !1011), !dbg !2719
  %5 = add nsw i32 %.03, 1, !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !543, metadata !1011), !dbg !2720
  %6 = shl i32 1, %5, !dbg !2721
  %7 = icmp ult i32 %4, %6, !dbg !2724
  br i1 %7, label %._crit_edge6, label %.lr.ph5, !dbg !2725

._crit_edge6:                                     ; preds = %.lr.ph5, %0
  %.0.lcssa = phi i32 [ %k, %0 ], [ %5, %.lr.ph5 ]
  %.01.lcssa = phi i32 [ %symbol, %0 ], [ %4, %.lr.ph5 ]
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext 0) #6, !dbg !2730
  %8 = icmp eq i32 %.0.lcssa, 0, !dbg !2732
  br i1 %8, label %._crit_edge, label %.lr.ph, !dbg !2732

.lr.ph:                                           ; preds = %._crit_edge6, %.lr.ph
  %.in = phi i32 [ %9, %.lr.ph ], [ %.0.lcssa, %._crit_edge6 ]
  %9 = add nsw i32 %.in, -1, !dbg !2733
  %10 = lshr i32 %.01.lcssa, %9, !dbg !2734
  %.tr = trunc i32 %10 to i16, !dbg !2735
  %11 = and i16 %.tr, 1, !dbg !2735
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext %11) #6, !dbg !2736
  %12 = icmp eq i32 %9, 0, !dbg !2732
  br i1 %12, label %._crit_edge, label %.lr.ph, !dbg !2732

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge6
  ret void, !dbg !2737
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!990, !991, !992}
!llvm.ident = !{!993}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !45, subprograms: !115, globals: !567, imports: !119)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/cabac.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !28, !35, !40}
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
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 192, size: 32, align: 32, elements: !29)
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "P_SLICE", value: 0)
!31 = !DIEnumerator(name: "B_SLICE", value: 1)
!32 = !DIEnumerator(name: "I_SLICE", value: 2)
!33 = !DIEnumerator(name: "SP_SLICE", value: 3)
!34 = !DIEnumerator(name: "SI_SLICE", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 185, size: 32, align: 32, elements: !36)
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "FRAME", value: 0)
!38 = !DIEnumerator(name: "TOP_FIELD", value: 1)
!39 = !DIEnumerator(name: "BOTTOM_FIELD", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 42, size: 32, align: 32, elements: !42)
!41 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "FALSE", value: 0)
!44 = !DIEnumerator(name: "TRUE", value: 1)
!45 = !{!46, !85, !86, !58, !112, !113, !114}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !4, line: 268, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 258, size: 12032, align: 64, elements: !49)
!49 = !{!50, !64, !69, !73, !77, !81, !82}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !48, file: !4, line: 260, baseType: !51, size: 4224, align: 64)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 4224, align: 64, elements: !61)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !4, line: 238, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 231, size: 128, align: 64, elements: !54)
!54 = !{!55, !57, !59}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !53, file: !4, line: 233, baseType: !56, size: 16, align: 16)
!56 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !53, file: !4, line: 234, baseType: !58, size: 8, align: 8, offset: 16)
!58 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !53, file: !4, line: 236, baseType: !60, size: 64, align: 64, offset: 64)
!60 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!61 = !{!62, !63}
!62 = !DISubrange(count: 3)
!63 = !DISubrange(count: 11)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !48, file: !4, line: 261, baseType: !65, size: 2304, align: 64, offset: 4224)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2304, align: 64, elements: !66)
!66 = !{!67, !68}
!67 = !DISubrange(count: 2)
!68 = !DISubrange(count: 9)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !48, file: !4, line: 262, baseType: !70, size: 2560, align: 64, offset: 6528)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2560, align: 64, elements: !71)
!71 = !{!67, !72}
!72 = !DISubrange(count: 10)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !48, file: !4, line: 263, baseType: !74, size: 1536, align: 64, offset: 9088)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 1536, align: 64, elements: !75)
!75 = !{!67, !76}
!76 = !DISubrange(count: 6)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !48, file: !4, line: 264, baseType: !78, size: 512, align: 64, offset: 10624)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 512, align: 64, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 4)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !48, file: !4, line: 265, baseType: !78, size: 512, align: 64, offset: 11136)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !48, file: !4, line: 266, baseType: !83, size: 384, align: 64, offset: 11648)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 384, align: 64, elements: !84)
!84 = !{!62}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !4, line: 293, baseType: !88)
!88 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 281, size: 97024, align: 64, elements: !89)
!89 = !{!90, !93, !94, !97, !100, !104, !105, !109, !110, !111}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !88, file: !4, line: 283, baseType: !91, size: 256, align: 64)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 256, align: 64, elements: !92)
!92 = !{!67}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !88, file: !4, line: 284, baseType: !78, size: 512, align: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !88, file: !4, line: 285, baseType: !95, size: 1536, align: 64, offset: 768)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 1536, align: 64, elements: !96)
!96 = !{!62, !80}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !88, file: !4, line: 286, baseType: !98, size: 5120, align: 64, offset: 2304)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 5120, align: 64, elements: !99)
!99 = !{!72, !80}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !88, file: !4, line: 287, baseType: !101, size: 19200, align: 64, offset: 7424)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 19200, align: 64, elements: !102)
!102 = !{!72, !103}
!103 = !DISubrange(count: 15)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !88, file: !4, line: 288, baseType: !101, size: 19200, align: 64, offset: 26624)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !88, file: !4, line: 289, baseType: !106, size: 6400, align: 64, offset: 45824)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 6400, align: 64, elements: !107)
!107 = !{!72, !108}
!108 = !DISubrange(count: 5)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !88, file: !4, line: 290, baseType: !106, size: 6400, align: 64, offset: 52224)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !88, file: !4, line: 291, baseType: !101, size: 19200, align: 64, offset: 58624)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !88, file: !4, line: 292, baseType: !101, size: 19200, align: 64, offset: 77824)
!112 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!113 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!114 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!115 = !{!116, !120, !198, !203, !208, !213, !218, !302, !314, !325, !335, !350, !359, !364, !383, !393, !412, !422, !437, !450, !476, !495, !510, !516, !526, !537, !544, !554}
!116 = !DISubprogram(name: "cabac_new_slice", scope: !1, file: !1, line: 53, type: !117, isLocal: false, isDefinition: true, scopeLine: 54, isOptimized: true, function: void ()* @cabac_new_slice, variables: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{null}
!119 = !{}
!120 = !DISubprogram(name: "CheckAvailabilityOfNeighborsCABAC", scope: !1, file: !1, line: 66, type: !117, isLocal: false, isDefinition: true, scopeLine: 67, isOptimized: true, function: void ()* @CheckAvailabilityOfNeighborsCABAC, variables: !121)
!121 = !{!122, !187, !197}
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !120, file: !1, line: 68, type: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "Macroblock", file: !4, line: 406, baseType: !125)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "macroblock", file: !4, line: 351, size: 5056, align: 64, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !136, !138, !139, !140, !143, !147, !148, !149, !154, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "currSEnr", scope: !125, file: !4, line: 353, baseType: !114, size: 32, align: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "slice_nr", scope: !125, file: !4, line: 354, baseType: !114, size: 32, align: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp", scope: !125, file: !4, line: 355, baseType: !114, size: 32, align: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !125, file: !4, line: 356, baseType: !114, size: 32, align: 32, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "qpsp", scope: !125, file: !4, line: 357, baseType: !114, size: 32, align: 32, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "bitcounter", scope: !125, file: !4, line: 358, baseType: !133, size: 256, align: 32, offset: 160)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, align: 32, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "mb_available_up", scope: !125, file: !4, line: 360, baseType: !137, size: 64, align: 64, offset: 448)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mb_available_left", scope: !125, file: !4, line: 361, baseType: !137, size: 64, align: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !125, file: !4, line: 363, baseType: !114, size: 32, align: 32, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !125, file: !4, line: 364, baseType: !141, size: 2048, align: 32, offset: 608)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 2048, align: 32, elements: !142)
!142 = !{!67, !80, !80, !67}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !125, file: !4, line: 365, baseType: !144, size: 512, align: 32, offset: 2656)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 512, align: 32, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes8x8", scope: !125, file: !4, line: 366, baseType: !144, size: 512, align: 32, offset: 3168)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !125, file: !4, line: 367, baseType: !114, size: 32, align: 32, offset: 3680)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !125, file: !4, line: 368, baseType: !150, size: 64, align: 64, offset: 3712)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !4, line: 62, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !152, line: 30, baseType: !153)
!152 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!153 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !125, file: !4, line: 369, baseType: !155, size: 128, align: 32, offset: 3776)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 128, align: 32, elements: !79)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !125, file: !4, line: 370, baseType: !155, size: 128, align: 32, offset: 3904)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_bits", scope: !125, file: !4, line: 371, baseType: !60, size: 64, align: 64, offset: 4032)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "lf_disable", scope: !125, file: !4, line: 373, baseType: !114, size: 32, align: 32, offset: 4096)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "lf_alpha_c0_offset", scope: !125, file: !4, line: 374, baseType: !114, size: 32, align: 32, offset: 4128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "lf_beta_offset", scope: !125, file: !4, line: 375, baseType: !114, size: 32, align: 32, offset: 4160)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !125, file: !4, line: 377, baseType: !114, size: 32, align: 32, offset: 4192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "IntraChromaPredModeFlag", scope: !125, file: !4, line: 378, baseType: !114, size: 32, align: 32, offset: 4224)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mb_field", scope: !125, file: !4, line: 380, baseType: !114, size: 32, align: 32, offset: 4256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrA", scope: !125, file: !4, line: 382, baseType: !114, size: 32, align: 32, offset: 4288)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrB", scope: !125, file: !4, line: 382, baseType: !114, size: 32, align: 32, offset: 4320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrC", scope: !125, file: !4, line: 382, baseType: !114, size: 32, align: 32, offset: 4352)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "mbAddrD", scope: !125, file: !4, line: 382, baseType: !114, size: 32, align: 32, offset: 4384)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailA", scope: !125, file: !4, line: 383, baseType: !114, size: 32, align: 32, offset: 4416)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailB", scope: !125, file: !4, line: 383, baseType: !114, size: 32, align: 32, offset: 4448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailC", scope: !125, file: !4, line: 383, baseType: !114, size: 32, align: 32, offset: 4480)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "mbAvailD", scope: !125, file: !4, line: 383, baseType: !114, size: 32, align: 32, offset: 4512)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "all_blk_8x8", scope: !125, file: !4, line: 385, baseType: !114, size: 32, align: 32, offset: 4544)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !125, file: !4, line: 386, baseType: !114, size: 32, align: 32, offset: 4576)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !125, file: !4, line: 387, baseType: !114, size: 32, align: 32, offset: 4608)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !125, file: !4, line: 390, baseType: !114, size: 32, align: 32, offset: 4640)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "actj", scope: !125, file: !4, line: 394, baseType: !177, size: 64, align: 64, offset: 4672)
!177 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !125, file: !4, line: 395, baseType: !114, size: 32, align: 32, offset: 4736)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !125, file: !4, line: 396, baseType: !114, size: 32, align: 32, offset: 4768)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cbp", scope: !125, file: !4, line: 397, baseType: !114, size: 32, align: 32, offset: 4800)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "predict_qp", scope: !125, file: !4, line: 398, baseType: !114, size: 32, align: 32, offset: 4832)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "predict_error", scope: !125, file: !4, line: 399, baseType: !114, size: 32, align: 32, offset: 4864)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "LFDisableIdc", scope: !125, file: !4, line: 401, baseType: !114, size: 32, align: 32, offset: 4896)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "LFAlphaC0Offset", scope: !125, file: !4, line: 402, baseType: !114, size: 32, align: 32, offset: 4928)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "LFBetaOffset", scope: !125, file: !4, line: 403, baseType: !114, size: 32, align: 32, offset: 4960)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "skip_flag", scope: !125, file: !4, line: 405, baseType: !114, size: 32, align: 32, offset: 4992)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "up", scope: !120, file: !1, line: 69, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPos", file: !4, line: 305, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "pix_pos", file: !4, line: 297, size: 192, align: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !189, file: !4, line: 299, baseType: !114, size: 32, align: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mb_addr", scope: !189, file: !4, line: 300, baseType: !114, size: 32, align: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !189, file: !4, line: 301, baseType: !114, size: 32, align: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !189, file: !4, line: 302, baseType: !114, size: 32, align: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pos_x", scope: !189, file: !4, line: 303, baseType: !114, size: 32, align: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pos_y", scope: !189, file: !4, line: 304, baseType: !114, size: 32, align: 32, offset: 160)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "left", scope: !120, file: !1, line: 69, type: !188)
!198 = !DISubprogram(name: "create_contexts_MotionInfo", scope: !1, file: !1, line: 92, type: !199, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: %struct.MotionInfoContexts* ()* @create_contexts_MotionInfo, variables: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!46}
!201 = !{!202}
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enco_ctx", scope: !198, file: !1, line: 94, type: !46)
!203 = !DISubprogram(name: "create_contexts_TextureInfo", scope: !1, file: !1, line: 111, type: !204, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, function: %struct.TextureInfoContexts* ()* @create_contexts_TextureInfo, variables: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!86}
!206 = !{!207}
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enco_ctx", scope: !203, file: !1, line: 113, type: !86)
!208 = !DISubprogram(name: "delete_contexts_MotionInfo", scope: !1, file: !1, line: 132, type: !209, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.MotionInfoContexts*)* @delete_contexts_MotionInfo, variables: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !46}
!211 = !{!212}
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enco_ctx", arg: 1, scope: !208, file: !1, line: 132, type: !46)
!213 = !DISubprogram(name: "delete_contexts_TextureInfo", scope: !1, file: !1, line: 149, type: !214, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.TextureInfoContexts*)* @delete_contexts_TextureInfo, variables: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !86}
!216 = !{!217}
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enco_ctx", arg: 1, scope: !213, file: !1, line: 149, type: !86)
!218 = !DISubprogram(name: "writeSyntaxElement_CABAC", scope: !1, file: !1, line: 166, type: !219, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_CABAC, variables: !297)
!219 = !DISubroutineType(types: !220)
!220 = !{!114, !221, !271}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !4, line: 348, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !4, line: 327, size: 384, align: 64, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !238}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !223, file: !4, line: 329, baseType: !114, size: 32, align: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !223, file: !4, line: 330, baseType: !114, size: 32, align: 32, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !223, file: !4, line: 331, baseType: !114, size: 32, align: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !223, file: !4, line: 332, baseType: !114, size: 32, align: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !223, file: !4, line: 333, baseType: !114, size: 32, align: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !223, file: !4, line: 334, baseType: !113, size: 32, align: 32, offset: 160)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !223, file: !4, line: 335, baseType: !114, size: 32, align: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !223, file: !4, line: 336, baseType: !114, size: 32, align: 32, offset: 224)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !223, file: !4, line: 344, baseType: !234, size: 64, align: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !114, !114, !237, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !223, file: !4, line: 346, baseType: !239, size: 64, align: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !242, !243}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !4, line: 228, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !4, line: 226, baseType: !246)
!246 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 207, size: 832, align: 64, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !246, file: !4, line: 209, baseType: !113, size: 32, align: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !246, file: !4, line: 209, baseType: !113, size: 32, align: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !246, file: !4, line: 210, baseType: !113, size: 32, align: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !246, file: !4, line: 211, baseType: !113, size: 32, align: 32, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !246, file: !4, line: 212, baseType: !113, size: 32, align: 32, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !246, file: !4, line: 213, baseType: !254, size: 64, align: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !256, line: 30, baseType: !58)
!256 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!257 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !246, file: !4, line: 214, baseType: !237, size: 64, align: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !246, file: !4, line: 217, baseType: !113, size: 32, align: 32, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !246, file: !4, line: 217, baseType: !113, size: 32, align: 32, offset: 352)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !246, file: !4, line: 218, baseType: !113, size: 32, align: 32, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !246, file: !4, line: 219, baseType: !113, size: 32, align: 32, offset: 416)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !246, file: !4, line: 220, baseType: !113, size: 32, align: 32, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !246, file: !4, line: 221, baseType: !254, size: 64, align: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !246, file: !4, line: 222, baseType: !237, size: 64, align: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !246, file: !4, line: 223, baseType: !114, size: 32, align: 32, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !246, file: !4, line: 223, baseType: !114, size: 32, align: 32, offset: 672)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !246, file: !4, line: 224, baseType: !114, size: 32, align: 32, offset: 704)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !246, file: !4, line: 224, baseType: !114, size: 32, align: 32, offset: 736)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !246, file: !4, line: 225, baseType: !114, size: 32, align: 32, offset: 768)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !246, file: !4, line: 225, baseType: !114, size: 32, align: 32, offset: 800)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !4, line: 440, baseType: !273)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !4, line: 430, size: 960, align: 64, elements: !274)
!274 = !{!275, !291, !292}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !273, file: !4, line: 433, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !4, line: 427, baseType: !278)
!278 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 411, size: 384, align: 64, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !278, file: !4, line: 413, baseType: !114, size: 32, align: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !278, file: !4, line: 414, baseType: !114, size: 32, align: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !278, file: !4, line: 415, baseType: !255, size: 8, align: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !278, file: !4, line: 416, baseType: !114, size: 32, align: 32, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !278, file: !4, line: 417, baseType: !114, size: 32, align: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !278, file: !4, line: 418, baseType: !255, size: 8, align: 8, offset: 160)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !278, file: !4, line: 420, baseType: !255, size: 8, align: 8, offset: 168)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !278, file: !4, line: 421, baseType: !114, size: 32, align: 32, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !278, file: !4, line: 422, baseType: !114, size: 32, align: 32, offset: 224)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !278, file: !4, line: 424, baseType: !254, size: 64, align: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !278, file: !4, line: 425, baseType: !114, size: 32, align: 32, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !273, file: !4, line: 434, baseType: !245, size: 832, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !273, file: !4, line: 436, baseType: !293, size: 64, align: 64, offset: 896)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!114, !221, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!297 = !{!298, !299, !300, !301}
!298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !218, file: !1, line: 166, type: !221)
!299 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 2, scope: !218, file: !1, line: 166, type: !271)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curr_len", scope: !218, file: !1, line: 168, type: !114)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eep_dp", scope: !218, file: !1, line: 169, type: !243)
!302 = !DISubprogram(name: "writeFieldModeInfo_CABAC", scope: !1, file: !1, line: 189, type: !303, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeFieldModeInfo_CABAC, variables: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !221, !243}
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313}
!306 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !302, file: !1, line: 189, type: !221)
!307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !302, file: !1, line: 189, type: !243)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !302, file: !1, line: 191, type: !114)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !302, file: !1, line: 191, type: !114)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_ctx", scope: !302, file: !1, line: 191, type: !114)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !302, file: !1, line: 192, type: !46)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !302, file: !1, line: 193, type: !123)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mb_field", scope: !302, file: !1, line: 194, type: !114)
!314 = !DISubprogram(name: "writeMB_skip_flagInfo_CABAC", scope: !1, file: !1, line: 223, type: !303, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMB_skip_flagInfo_CABAC, variables: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324}
!316 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !314, file: !1, line: 223, type: !221)
!317 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !314, file: !1, line: 223, type: !243)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !314, file: !1, line: 225, type: !114)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !314, file: !1, line: 225, type: !114)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_ctx", scope: !314, file: !1, line: 225, type: !114)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bframe", scope: !314, file: !1, line: 226, type: !114)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !314, file: !1, line: 227, type: !46)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !314, file: !1, line: 228, type: !123)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curr_mb_type", scope: !314, file: !1, line: 229, type: !114)
!325 = !DISubprogram(name: "writeMB_transform_size_CABAC", scope: !1, file: !1, line: 284, type: !303, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMB_transform_size_CABAC, variables: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334}
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !325, file: !1, line: 284, type: !221)
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !325, file: !1, line: 284, type: !243)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !325, file: !1, line: 286, type: !114)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !325, file: !1, line: 286, type: !114)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_ctx", scope: !325, file: !1, line: 287, type: !114)
!332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_sym", scope: !325, file: !1, line: 288, type: !114)
!333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !325, file: !1, line: 290, type: !46)
!334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !325, file: !1, line: 291, type: !123)
!335 = !DISubprogram(name: "writeMB_typeInfo_CABAC", scope: !1, file: !1, line: 322, type: !303, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMB_typeInfo_CABAC, variables: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !335, file: !1, line: 322, type: !221)
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !335, file: !1, line: 322, type: !243)
!339 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !335, file: !1, line: 324, type: !114)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !335, file: !1, line: 324, type: !114)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_ctx", scope: !335, file: !1, line: 325, type: !114)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_sym", scope: !335, file: !1, line: 326, type: !114)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "csym", scope: !335, file: !1, line: 327, type: !114)
!344 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bframe", scope: !335, file: !1, line: 328, type: !114)
!345 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode_sym", scope: !335, file: !1, line: 329, type: !114)
!346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode16x16", scope: !335, file: !1, line: 330, type: !114)
!347 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !335, file: !1, line: 333, type: !46)
!348 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !335, file: !1, line: 334, type: !123)
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curr_mb_type", scope: !335, file: !1, line: 335, type: !114)
!350 = !DISubprogram(name: "writeB8_typeInfo_CABAC", scope: !1, file: !1, line: 580, type: !303, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeB8_typeInfo_CABAC, variables: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358}
!352 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !350, file: !1, line: 580, type: !221)
!353 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !350, file: !1, line: 580, type: !243)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_ctx", scope: !350, file: !1, line: 582, type: !114)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_sym", scope: !350, file: !1, line: 583, type: !114)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "csym", scope: !350, file: !1, line: 583, type: !114)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bframe", scope: !350, file: !1, line: 584, type: !114)
!358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !350, file: !1, line: 586, type: !46)
!359 = !DISubprogram(name: "writeIntraPredMode_CABAC", scope: !1, file: !1, line: 677, type: !303, isLocal: false, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeIntraPredMode_CABAC, variables: !360)
!360 = !{!361, !362, !363}
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !359, file: !1, line: 677, type: !221)
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !359, file: !1, line: 677, type: !243)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !359, file: !1, line: 679, type: !86)
!364 = !DISubprogram(name: "writeRefFrame_CABAC", scope: !1, file: !1, line: 701, type: !303, isLocal: false, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRefFrame_CABAC, variables: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !378, !379, !380, !381, !382}
!366 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !364, file: !1, line: 701, type: !221)
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !364, file: !1, line: 701, type: !243)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !364, file: !1, line: 703, type: !46)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !364, file: !1, line: 704, type: !123)
!370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "addctx", scope: !364, file: !1, line: 705, type: !114)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !364, file: !1, line: 707, type: !114)
!372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !364, file: !1, line: 707, type: !114)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_ctx", scope: !364, file: !1, line: 708, type: !114)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_sym", scope: !364, file: !1, line: 709, type: !114)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "refframe_array", scope: !364, file: !1, line: 710, type: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bslice", scope: !364, file: !1, line: 712, type: !114)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b8a", scope: !364, file: !1, line: 714, type: !114)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b8b", scope: !364, file: !1, line: 714, type: !114)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "block_a", scope: !364, file: !1, line: 716, type: !188)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "block_b", scope: !364, file: !1, line: 716, type: !188)
!383 = !DISubprogram(name: "writeDquant_CABAC", scope: !1, file: !1, line: 773, type: !303, isLocal: false, isDefinition: true, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeDquant_CABAC, variables: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392}
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !383, file: !1, line: 773, type: !221)
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !383, file: !1, line: 773, type: !243)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !383, file: !1, line: 775, type: !46)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_ctx", scope: !383, file: !1, line: 777, type: !114)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_sym", scope: !383, file: !1, line: 778, type: !114)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dquant", scope: !383, file: !1, line: 779, type: !114)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !383, file: !1, line: 780, type: !114)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !383, file: !1, line: 782, type: !123)
!393 = !DISubprogram(name: "writeMVD_CABAC", scope: !1, file: !1, line: 815, type: !303, isLocal: false, isDefinition: true, scopeLine: 816, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMVD_CABAC, variables: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !393, file: !1, line: 815, type: !221)
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !393, file: !1, line: 815, type: !243)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !393, file: !1, line: 817, type: !114)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !393, file: !1, line: 818, type: !114)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !393, file: !1, line: 819, type: !114)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !393, file: !1, line: 819, type: !114)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_ctx", scope: !393, file: !1, line: 820, type: !114)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_sym", scope: !393, file: !1, line: 821, type: !114)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mv_pred_res", scope: !393, file: !1, line: 822, type: !114)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mv_local_err", scope: !393, file: !1, line: 823, type: !114)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mv_sign", scope: !393, file: !1, line: 824, type: !114)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list_idx", scope: !393, file: !1, line: 825, type: !114)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !393, file: !1, line: 826, type: !114)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "block_a", scope: !393, file: !1, line: 828, type: !188)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "block_b", scope: !393, file: !1, line: 828, type: !188)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !393, file: !1, line: 830, type: !46)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !393, file: !1, line: 831, type: !123)
!412 = !DISubprogram(name: "writeCIPredMode_CABAC", scope: !1, file: !1, line: 899, type: !303, isLocal: false, isDefinition: true, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeCIPredMode_CABAC, variables: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421}
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !412, file: !1, line: 899, type: !221)
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !412, file: !1, line: 899, type: !243)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !412, file: !1, line: 901, type: !86)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !412, file: !1, line: 902, type: !123)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_ctx", scope: !412, file: !1, line: 903, type: !114)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !412, file: !1, line: 903, type: !114)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !412, file: !1, line: 903, type: !114)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "act_sym", scope: !412, file: !1, line: 904, type: !114)
!422 = !DISubprogram(name: "writeCBP_BIT_CABAC", scope: !1, file: !1, line: 930, type: !423, isLocal: false, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, %struct.macroblock*, i32, %struct.EncodingEnvironment*)* @writeCBP_BIT_CABAC, variables: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !114, !114, !114, !123, !114, !243}
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b8", arg: 1, scope: !422, file: !1, line: 930, type: !114)
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bit", arg: 2, scope: !422, file: !1, line: 930, type: !114)
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cbp", arg: 3, scope: !422, file: !1, line: 930, type: !114)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "currMB", arg: 4, scope: !422, file: !1, line: 930, type: !123)
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inter", arg: 5, scope: !422, file: !1, line: 930, type: !114)
!431 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 6, scope: !422, file: !1, line: 930, type: !243)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "block_a", scope: !422, file: !1, line: 932, type: !188)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !422, file: !1, line: 933, type: !114)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !422, file: !1, line: 933, type: !114)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mb_x", scope: !422, file: !1, line: 935, type: !114)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mb_y", scope: !422, file: !1, line: 936, type: !114)
!437 = !DISubprogram(name: "writeCBP_CABAC", scope: !1, file: !1, line: 985, type: !303, isLocal: false, isDefinition: true, scopeLine: 986, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeCBP_CABAC, variables: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !437, file: !1, line: 985, type: !221)
!440 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !437, file: !1, line: 985, type: !243)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !437, file: !1, line: 987, type: !86)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !437, file: !1, line: 988, type: !123)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !437, file: !1, line: 990, type: !114)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !437, file: !1, line: 990, type: !114)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curr_cbp_ctx", scope: !437, file: !1, line: 991, type: !114)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curr_cbp_idx", scope: !437, file: !1, line: 991, type: !114)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cbp", scope: !437, file: !1, line: 992, type: !114)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cbp_bit", scope: !437, file: !1, line: 993, type: !114)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b8", scope: !437, file: !1, line: 994, type: !114)
!450 = !DISubprogram(name: "write_and_store_CBP_block_bit", scope: !1, file: !1, line: 1076, type: !451, isLocal: false, isDefinition: true, scopeLine: 1077, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.macroblock*, %struct.EncodingEnvironment*, i32, i32)* @write_and_store_CBP_block_bit, variables: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !123, !243, !114, !114}
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!454 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "currMB", arg: 1, scope: !450, file: !1, line: 1076, type: !123)
!455 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !450, file: !1, line: 1076, type: !243)
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !450, file: !1, line: 1076, type: !114)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cbp_bit", arg: 4, scope: !450, file: !1, line: 1076, type: !114)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y_ac", scope: !450, file: !1, line: 1080, type: !114)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y_dc", scope: !450, file: !1, line: 1081, type: !114)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u_ac", scope: !450, file: !1, line: 1082, type: !114)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v_ac", scope: !450, file: !1, line: 1083, type: !114)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chroma_dc", scope: !450, file: !1, line: 1084, type: !114)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u_dc", scope: !450, file: !1, line: 1085, type: !114)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v_dc", scope: !450, file: !1, line: 1086, type: !114)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !450, file: !1, line: 1087, type: !114)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !450, file: !1, line: 1088, type: !114)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bit", scope: !450, file: !1, line: 1089, type: !114)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "default_bit", scope: !450, file: !1, line: 1090, type: !114)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "upper_bit", scope: !450, file: !1, line: 1091, type: !114)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "left_bit", scope: !450, file: !1, line: 1092, type: !114)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !450, file: !1, line: 1093, type: !114)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bit_pos_a", scope: !450, file: !1, line: 1095, type: !114)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bit_pos_b", scope: !450, file: !1, line: 1096, type: !114)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "block_a", scope: !450, file: !1, line: 1098, type: !188)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "block_b", scope: !450, file: !1, line: 1098, type: !188)
!476 = !DISubprogram(name: "write_significance_map", scope: !1, file: !1, line: 1235, type: !477, isLocal: false, isDefinition: true, scopeLine: 1236, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.macroblock*, %struct.EncodingEnvironment*, i32, i32*, i32)* @write_significance_map, variables: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !123, !243, !114, !237, !114}
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !494}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "currMB", arg: 1, scope: !476, file: !1, line: 1235, type: !123)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !476, file: !1, line: 1235, type: !243)
!482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !476, file: !1, line: 1235, type: !114)
!483 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coeff", arg: 4, scope: !476, file: !1, line: 1235, type: !237)
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coeff_ctr", arg: 5, scope: !476, file: !1, line: 1235, type: !114)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !476, file: !1, line: 1237, type: !112)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sig", scope: !476, file: !1, line: 1237, type: !112)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last", scope: !476, file: !1, line: 1237, type: !112)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k0", scope: !476, file: !1, line: 1238, type: !114)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k1", scope: !476, file: !1, line: 1239, type: !114)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fld", scope: !476, file: !1, line: 1241, type: !114)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map_ctx", scope: !476, file: !1, line: 1242, type: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextTypePtr", file: !4, line: 240, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last_ctx", scope: !476, file: !1, line: 1244, type: !492)
!495 = !DISubprogram(name: "write_significant_coefficients", scope: !1, file: !1, line: 1280, type: !496, isLocal: false, isDefinition: true, scopeLine: 1281, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.macroblock*, %struct.EncodingEnvironment*, i32, i32*)* @write_significant_coefficients, variables: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !123, !243, !114, !237}
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509}
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "currMB", arg: 1, scope: !495, file: !1, line: 1280, type: !123)
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !495, file: !1, line: 1280, type: !243)
!501 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !495, file: !1, line: 1280, type: !114)
!502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coeff", arg: 4, scope: !495, file: !1, line: 1280, type: !237)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !495, file: !1, line: 1282, type: !114)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "absLevel", scope: !495, file: !1, line: 1283, type: !114)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ctx", scope: !495, file: !1, line: 1284, type: !114)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !495, file: !1, line: 1285, type: !112)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "greater_one", scope: !495, file: !1, line: 1286, type: !112)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c1", scope: !495, file: !1, line: 1287, type: !114)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c2", scope: !495, file: !1, line: 1288, type: !114)
!510 = !DISubprogram(name: "writeRunLevel_CABAC", scope: !1, file: !1, line: 1327, type: !303, isLocal: false, isDefinition: true, scopeLine: 1328, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRunLevel_CABAC, variables: !511)
!511 = !{!512, !513, !514, !515}
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !510, file: !1, line: 1327, type: !221)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 2, scope: !510, file: !1, line: 1327, type: !243)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currMB", scope: !510, file: !1, line: 1333, type: !123)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !510, file: !1, line: 1334, type: !114)
!516 = !DISubprogram(name: "unary_bin_encode", scope: !1, file: !1, line: 1376, type: !517, isLocal: false, isDefinition: true, scopeLine: 1380, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.EncodingEnvironment*, i32, %struct.BiContextType*, i32)* @unary_bin_encode, variables: !519)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !243, !113, !492, !114}
!519 = !{!520, !521, !522, !523, !524, !525}
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 1, scope: !516, file: !1, line: 1376, type: !243)
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symbol", arg: 2, scope: !516, file: !1, line: 1377, type: !113)
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 3, scope: !516, file: !1, line: 1378, type: !492)
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx_offset", arg: 4, scope: !516, file: !1, line: 1379, type: !114)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !516, file: !1, line: 1381, type: !113)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ictx", scope: !516, file: !1, line: 1382, type: !492)
!526 = !DISubprogram(name: "unary_bin_max_encode", scope: !1, file: !1, line: 1410, type: !527, isLocal: false, isDefinition: true, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.EncodingEnvironment*, i32, %struct.BiContextType*, i32, i32)* @unary_bin_max_encode, variables: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !243, !113, !492, !114, !113}
!529 = !{!530, !531, !532, !533, !534, !535, !536}
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 1, scope: !526, file: !1, line: 1410, type: !243)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symbol", arg: 2, scope: !526, file: !1, line: 1411, type: !113)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 3, scope: !526, file: !1, line: 1412, type: !492)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx_offset", arg: 4, scope: !526, file: !1, line: 1413, type: !114)
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max_symbol", arg: 5, scope: !526, file: !1, line: 1414, type: !113)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !526, file: !1, line: 1416, type: !113)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ictx", scope: !526, file: !1, line: 1417, type: !492)
!537 = !DISubprogram(name: "exp_golomb_encode_eq_prob", scope: !1, file: !1, line: 1445, type: !538, isLocal: false, isDefinition: true, scopeLine: 1448, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.EncodingEnvironment*, i32, i32)* @exp_golomb_encode_eq_prob, variables: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !243, !113, !114}
!540 = !{!541, !542, !543}
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 1, scope: !537, file: !1, line: 1445, type: !243)
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symbol", arg: 2, scope: !537, file: !1, line: 1446, type: !113)
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "k", arg: 3, scope: !537, file: !1, line: 1447, type: !114)
!544 = !DISubprogram(name: "unary_exp_golomb_level_encode", scope: !1, file: !1, line: 1475, type: !545, isLocal: false, isDefinition: true, scopeLine: 1478, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.EncodingEnvironment*, i32, %struct.BiContextType*)* @unary_exp_golomb_level_encode, variables: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !243, !113, !492}
!547 = !{!548, !549, !550, !551, !552, !553}
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 1, scope: !544, file: !1, line: 1475, type: !243)
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symbol", arg: 2, scope: !544, file: !1, line: 1476, type: !113)
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 3, scope: !544, file: !1, line: 1477, type: !492)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !544, file: !1, line: 1479, type: !113)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !544, file: !1, line: 1479, type: !113)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exp_start", scope: !544, file: !1, line: 1480, type: !113)
!554 = !DISubprogram(name: "unary_exp_golomb_mv_encode", scope: !1, file: !1, line: 1508, type: !555, isLocal: false, isDefinition: true, scopeLine: 1512, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.EncodingEnvironment*, i32, %struct.BiContextType*, i32)* @unary_exp_golomb_mv_encode, variables: !557)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !243, !113, !492, !113}
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566}
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eep_dp", arg: 1, scope: !554, file: !1, line: 1508, type: !243)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symbol", arg: 2, scope: !554, file: !1, line: 1509, type: !113)
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 3, scope: !554, file: !1, line: 1510, type: !492)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max_bin", arg: 4, scope: !554, file: !1, line: 1511, type: !113)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !554, file: !1, line: 1513, type: !113)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !554, file: !1, line: 1513, type: !113)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bin", scope: !554, file: !1, line: 1514, type: !113)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ictx", scope: !554, file: !1, line: 1515, type: !492)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exp_start", scope: !554, file: !1, line: 1516, type: !113)
!567 = !{!568, !569, !573, !574, !575, !629, !630, !631, !632, !633, !636, !638, !640, !641, !642, !643, !644, !680, !775, !776, !777, !779, !780, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !796, !797, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !813, !816, !817, !818, !819, !820, !821, !824, !827, !828, !829, !830, !833, !834, !845, !881, !882, !883, !884, !885, !942, !943, !944, !945, !946, !950, !951, !952, !953, !954, !955, !956, !957, !958, !962, !963, !964, !965, !966, !969, !971, !973, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989}
!568 = !DIGlobalVariable(name: "last_dquant", scope: !0, file: !1, line: 24, type: !114, isLocal: false, isDefinition: true, variable: i32* @last_dquant)
!569 = !DIGlobalVariable(name: "coeff", scope: !510, file: !1, line: 1329, type: !570, isLocal: true, isDefinition: true, variable: [64 x i32]* @writeRunLevel_CABAC.coeff)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 2048, align: 32, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 64)
!573 = !DIGlobalVariable(name: "coeff_ctr", scope: !510, file: !1, line: 1330, type: !114, isLocal: true, isDefinition: true, variable: i32* @writeRunLevel_CABAC.coeff_ctr)
!574 = !DIGlobalVariable(name: "pos", scope: !510, file: !1, line: 1331, type: !114, isLocal: true, isDefinition: true, variable: i32* @writeRunLevel_CABAC.pos)
!575 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !4, line: 558, type: !576, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !4, line: 484, baseType: !578)
!578 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 475, size: 6592, align: 64, elements: !579)
!579 = !{!580, !581, !582, !624, !625, !627, !628}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !578, file: !4, line: 477, baseType: !114, size: 32, align: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !578, file: !4, line: 478, baseType: !114, size: 32, align: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !578, file: !4, line: 479, baseType: !583, size: 6400, align: 64, offset: 64)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 6400, align: 64, elements: !622)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !4, line: 471, baseType: !586)
!586 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 443, size: 1216, align: 64, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !606, !607, !608, !609, !610, !611, !612, !613, !614, !619}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !586, file: !4, line: 445, baseType: !114, size: 32, align: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !586, file: !4, line: 446, baseType: !114, size: 32, align: 32, offset: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !586, file: !4, line: 447, baseType: !114, size: 32, align: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !586, file: !4, line: 448, baseType: !114, size: 32, align: 32, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !586, file: !4, line: 449, baseType: !114, size: 32, align: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !586, file: !4, line: 450, baseType: !114, size: 32, align: 32, offset: 160)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !586, file: !4, line: 451, baseType: !271, size: 64, align: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !586, file: !4, line: 452, baseType: !46, size: 64, align: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !586, file: !4, line: 453, baseType: !86, size: 64, align: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !586, file: !4, line: 456, baseType: !598, size: 64, align: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !4, line: 313, baseType: !600)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !4, line: 308, size: 128, align: 64, elements: !601)
!601 = !{!602, !603, !604}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !600, file: !4, line: 310, baseType: !114, size: 32, align: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !600, file: !4, line: 311, baseType: !114, size: 32, align: 32, offset: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !600, file: !4, line: 312, baseType: !605, size: 64, align: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !586, file: !4, line: 458, baseType: !114, size: 32, align: 32, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !586, file: !4, line: 459, baseType: !237, size: 64, align: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !586, file: !4, line: 460, baseType: !237, size: 64, align: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !586, file: !4, line: 461, baseType: !237, size: 64, align: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !586, file: !4, line: 462, baseType: !114, size: 32, align: 32, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !586, file: !4, line: 463, baseType: !237, size: 64, align: 64, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !586, file: !4, line: 464, baseType: !237, size: 64, align: 64, offset: 832)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !586, file: !4, line: 465, baseType: !237, size: 64, align: 64, offset: 896)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !586, file: !4, line: 467, baseType: !615, size: 64, align: 64, offset: 960)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64, align: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!618, !114}
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !41, line: 45, baseType: !40)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !586, file: !4, line: 469, baseType: !620, size: 192, align: 32, offset: 1024)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 192, align: 32, elements: !621)
!621 = !{!62, !67}
!622 = !{!623}
!623 = !DISubrange(count: 100)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !578, file: !4, line: 480, baseType: !114, size: 32, align: 32, offset: 6464)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !578, file: !4, line: 481, baseType: !626, size: 32, align: 32, offset: 6496)
!626 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !578, file: !4, line: 482, baseType: !626, size: 32, align: 32, offset: 6528)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !578, file: !4, line: 483, baseType: !626, size: 32, align: 32, offset: 6560)
!629 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !4, line: 559, type: !576, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!630 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !4, line: 560, type: !576, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!631 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !4, line: 561, type: !576, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!632 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !4, line: 562, type: !576, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!633 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !4, line: 565, type: !634, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, align: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!636 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !4, line: 566, type: !637, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64, align: 64)
!638 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !4, line: 567, type: !639, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!640 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !4, line: 569, type: !113, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!641 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !4, line: 570, type: !113, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!642 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !4, line: 572, type: !114, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!643 = !DIGlobalVariable(name: "me_time", scope: !0, file: !4, line: 572, type: !114, isLocal: false, isDefinition: true, variable: i32* @me_time)
!644 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !4, line: 573, type: !645, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !41, line: 145, baseType: !647)
!647 = !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 103, size: 1920, align: 64, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !647, file: !41, line: 105, baseType: !618, size: 32, align: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !647, file: !41, line: 106, baseType: !113, size: 32, align: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !647, file: !41, line: 107, baseType: !113, size: 32, align: 32, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !647, file: !41, line: 108, baseType: !618, size: 32, align: 32, offset: 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !647, file: !41, line: 110, baseType: !618, size: 32, align: 32, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !647, file: !41, line: 111, baseType: !618, size: 32, align: 32, offset: 160)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !647, file: !41, line: 112, baseType: !133, size: 256, align: 32, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !647, file: !41, line: 115, baseType: !618, size: 32, align: 32, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !647, file: !41, line: 116, baseType: !113, size: 32, align: 32, offset: 480)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !647, file: !41, line: 117, baseType: !113, size: 32, align: 32, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !647, file: !41, line: 119, baseType: !660, size: 256, align: 32, offset: 544)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, align: 32, elements: !134)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !647, file: !41, line: 121, baseType: !660, size: 256, align: 32, offset: 800)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !647, file: !41, line: 122, baseType: !660, size: 256, align: 32, offset: 1056)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !647, file: !41, line: 124, baseType: !618, size: 32, align: 32, offset: 1312)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !647, file: !41, line: 125, baseType: !113, size: 32, align: 32, offset: 1344)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !647, file: !41, line: 127, baseType: !113, size: 32, align: 32, offset: 1376)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !647, file: !41, line: 128, baseType: !254, size: 64, align: 64, offset: 1408)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !647, file: !41, line: 130, baseType: !114, size: 32, align: 32, offset: 1472)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !647, file: !41, line: 131, baseType: !114, size: 32, align: 32, offset: 1504)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !647, file: !41, line: 132, baseType: !618, size: 32, align: 32, offset: 1536)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !647, file: !41, line: 133, baseType: !113, size: 32, align: 32, offset: 1568)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !647, file: !41, line: 134, baseType: !114, size: 32, align: 32, offset: 1600)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !647, file: !41, line: 135, baseType: !114, size: 32, align: 32, offset: 1632)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !647, file: !41, line: 136, baseType: !114, size: 32, align: 32, offset: 1664)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !647, file: !41, line: 138, baseType: !114, size: 32, align: 32, offset: 1696)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !647, file: !41, line: 139, baseType: !114, size: 32, align: 32, offset: 1728)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !647, file: !41, line: 141, baseType: !618, size: 32, align: 32, offset: 1760)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !647, file: !41, line: 142, baseType: !618, size: 32, align: 32, offset: 1792)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !647, file: !41, line: 143, baseType: !618, size: 32, align: 32, offset: 1824)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !647, file: !41, line: 144, baseType: !618, size: 32, align: 32, offset: 1856)
!680 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !4, line: 574, type: !681, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !41, line: 193, baseType: !683)
!683 = !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 149, size: 17056, align: 32, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !683, file: !41, line: 151, baseType: !618, size: 32, align: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !683, file: !41, line: 153, baseType: !113, size: 32, align: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !683, file: !41, line: 154, baseType: !618, size: 32, align: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !683, file: !41, line: 155, baseType: !618, size: 32, align: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !683, file: !41, line: 156, baseType: !618, size: 32, align: 32, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !683, file: !41, line: 157, baseType: !618, size: 32, align: 32, offset: 160)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !683, file: !41, line: 158, baseType: !113, size: 32, align: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !683, file: !41, line: 159, baseType: !113, size: 32, align: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !683, file: !41, line: 160, baseType: !113, size: 32, align: 32, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !683, file: !41, line: 162, baseType: !618, size: 32, align: 32, offset: 288)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !683, file: !41, line: 163, baseType: !133, size: 256, align: 32, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !683, file: !41, line: 165, baseType: !113, size: 32, align: 32, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !683, file: !41, line: 166, baseType: !113, size: 32, align: 32, offset: 608)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !683, file: !41, line: 167, baseType: !113, size: 32, align: 32, offset: 640)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !683, file: !41, line: 168, baseType: !113, size: 32, align: 32, offset: 672)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !683, file: !41, line: 170, baseType: !113, size: 32, align: 32, offset: 704)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !683, file: !41, line: 172, baseType: !618, size: 32, align: 32, offset: 736)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !683, file: !41, line: 173, baseType: !114, size: 32, align: 32, offset: 768)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !683, file: !41, line: 174, baseType: !114, size: 32, align: 32, offset: 800)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !683, file: !41, line: 175, baseType: !113, size: 32, align: 32, offset: 832)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !683, file: !41, line: 177, baseType: !706, size: 8192, align: 32, offset: 864)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 8192, align: 32, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !683, file: !41, line: 178, baseType: !113, size: 32, align: 32, offset: 9056)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !683, file: !41, line: 179, baseType: !618, size: 32, align: 32, offset: 9088)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !683, file: !41, line: 180, baseType: !113, size: 32, align: 32, offset: 9120)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !683, file: !41, line: 181, baseType: !113, size: 32, align: 32, offset: 9152)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !683, file: !41, line: 182, baseType: !618, size: 32, align: 32, offset: 9184)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !683, file: !41, line: 184, baseType: !618, size: 32, align: 32, offset: 9216)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !683, file: !41, line: 185, baseType: !618, size: 32, align: 32, offset: 9248)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !683, file: !41, line: 186, baseType: !618, size: 32, align: 32, offset: 9280)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !683, file: !41, line: 187, baseType: !113, size: 32, align: 32, offset: 9312)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !683, file: !41, line: 188, baseType: !113, size: 32, align: 32, offset: 9344)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !683, file: !41, line: 189, baseType: !113, size: 32, align: 32, offset: 9376)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !683, file: !41, line: 190, baseType: !113, size: 32, align: 32, offset: 9408)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !683, file: !41, line: 191, baseType: !618, size: 32, align: 32, offset: 9440)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !683, file: !41, line: 192, baseType: !723, size: 7584, align: 32, offset: 9472)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !41, line: 99, baseType: !724)
!724 = !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 63, size: 7584, align: 32, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !724, file: !41, line: 65, baseType: !618, size: 32, align: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !724, file: !41, line: 66, baseType: !113, size: 32, align: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !724, file: !41, line: 67, baseType: !113, size: 32, align: 32, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !724, file: !41, line: 68, baseType: !113, size: 32, align: 32, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !724, file: !41, line: 69, baseType: !618, size: 32, align: 32, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !724, file: !41, line: 70, baseType: !618, size: 32, align: 32, offset: 160)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !724, file: !41, line: 71, baseType: !618, size: 32, align: 32, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !724, file: !41, line: 72, baseType: !113, size: 32, align: 32, offset: 224)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !724, file: !41, line: 73, baseType: !618, size: 32, align: 32, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !724, file: !41, line: 74, baseType: !618, size: 32, align: 32, offset: 288)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !724, file: !41, line: 75, baseType: !113, size: 32, align: 32, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !724, file: !41, line: 76, baseType: !113, size: 32, align: 32, offset: 352)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !724, file: !41, line: 77, baseType: !113, size: 32, align: 32, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !724, file: !41, line: 78, baseType: !618, size: 32, align: 32, offset: 416)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !724, file: !41, line: 79, baseType: !113, size: 32, align: 32, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !724, file: !41, line: 80, baseType: !113, size: 32, align: 32, offset: 480)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !724, file: !41, line: 81, baseType: !618, size: 32, align: 32, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !724, file: !41, line: 82, baseType: !113, size: 32, align: 32, offset: 544)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !724, file: !41, line: 83, baseType: !113, size: 32, align: 32, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !724, file: !41, line: 84, baseType: !618, size: 32, align: 32, offset: 608)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !724, file: !41, line: 85, baseType: !618, size: 32, align: 32, offset: 640)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !724, file: !41, line: 86, baseType: !748, size: 3296, align: 32, offset: 672)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !41, line: 60, baseType: !749)
!749 = !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 48, size: 3296, align: 32, elements: !750)
!750 = !{!751, !752, !753, !754, !758, !759, !760, !761, !762, !763}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !749, file: !41, line: 50, baseType: !113, size: 32, align: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !749, file: !41, line: 51, baseType: !113, size: 32, align: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !749, file: !41, line: 52, baseType: !113, size: 32, align: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !749, file: !41, line: 53, baseType: !755, size: 1024, align: 32, offset: 96)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 1024, align: 32, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !749, file: !41, line: 54, baseType: !755, size: 1024, align: 32, offset: 1120)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !749, file: !41, line: 55, baseType: !755, size: 1024, align: 32, offset: 2144)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !749, file: !41, line: 56, baseType: !113, size: 32, align: 32, offset: 3168)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !749, file: !41, line: 57, baseType: !113, size: 32, align: 32, offset: 3200)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !749, file: !41, line: 58, baseType: !113, size: 32, align: 32, offset: 3232)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !749, file: !41, line: 59, baseType: !113, size: 32, align: 32, offset: 3264)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !724, file: !41, line: 87, baseType: !618, size: 32, align: 32, offset: 3968)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !724, file: !41, line: 88, baseType: !748, size: 3296, align: 32, offset: 4000)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !724, file: !41, line: 90, baseType: !618, size: 32, align: 32, offset: 7296)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !724, file: !41, line: 91, baseType: !618, size: 32, align: 32, offset: 7328)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !724, file: !41, line: 92, baseType: !618, size: 32, align: 32, offset: 7360)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !724, file: !41, line: 93, baseType: !113, size: 32, align: 32, offset: 7392)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !724, file: !41, line: 94, baseType: !113, size: 32, align: 32, offset: 7424)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !724, file: !41, line: 95, baseType: !113, size: 32, align: 32, offset: 7456)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !724, file: !41, line: 96, baseType: !113, size: 32, align: 32, offset: 7488)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !724, file: !41, line: 97, baseType: !113, size: 32, align: 32, offset: 7520)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !724, file: !41, line: 98, baseType: !113, size: 32, align: 32, offset: 7552)
!775 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !4, line: 578, type: !114, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!776 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !4, line: 579, type: !114, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!777 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !4, line: 583, type: !778, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!779 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !4, line: 584, type: !778, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!780 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !4, line: 585, type: !781, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64, align: 64)
!782 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !4, line: 586, type: !114, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!783 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !4, line: 587, type: !114, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!784 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !4, line: 588, type: !114, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!785 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !4, line: 589, type: !114, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!786 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !4, line: 592, type: !634, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!787 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !4, line: 593, type: !634, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!788 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !4, line: 595, type: !637, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!789 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !4, line: 596, type: !637, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!790 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !4, line: 598, type: !634, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!791 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !4, line: 599, type: !637, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!792 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !4, line: 601, type: !634, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!793 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !4, line: 602, type: !637, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!794 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !4, line: 604, type: !795, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!796 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !4, line: 605, type: !376, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!797 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !4, line: 608, type: !798, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!799 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !4, line: 609, type: !798, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!800 = !DIGlobalVariable(name: "intras", scope: !0, file: !4, line: 610, type: !114, isLocal: false, isDefinition: true, variable: i32* @intras)
!801 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !4, line: 612, type: !114, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!802 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !4, line: 612, type: !114, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!803 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !4, line: 612, type: !114, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!804 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !4, line: 613, type: !114, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!805 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !4, line: 613, type: !114, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!806 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !4, line: 613, type: !114, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!807 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !4, line: 614, type: !114, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!808 = !DIGlobalVariable(name: "errortext", scope: !0, file: !4, line: 617, type: !809, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 2400, align: 8, elements: !811)
!810 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!811 = !{!812}
!812 = !DISubrange(count: 300)
!813 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !4, line: 620, type: !814, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 8192, align: 32, elements: !815)
!815 = !{!146, !146}
!816 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !4, line: 620, type: !814, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!817 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !4, line: 620, type: !814, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!818 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !4, line: 621, type: !814, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!819 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !4, line: 621, type: !814, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!820 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !4, line: 621, type: !814, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!821 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !4, line: 622, type: !822, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 24576, align: 32, elements: !823)
!823 = !{!62, !146, !146}
!824 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !4, line: 623, type: !825, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 1024, align: 32, elements: !826)
!826 = !{!67, !80, !80}
!827 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !4, line: 623, type: !825, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!828 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !4, line: 624, type: !825, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!829 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !4, line: 624, type: !825, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!830 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !4, line: 625, type: !831, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 512, align: 32, elements: !832)
!832 = !{!80, !80}
!833 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !4, line: 625, type: !144, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!834 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !4, line: 1201, type: !835, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !4, line: 1190, baseType: !837)
!837 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1182, size: 192, align: 32, elements: !838)
!838 = !{!839, !840, !841, !842, !843, !844}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !837, file: !4, line: 1184, baseType: !114, size: 32, align: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !837, file: !4, line: 1185, baseType: !114, size: 32, align: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !837, file: !4, line: 1186, baseType: !114, size: 32, align: 32, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !837, file: !4, line: 1187, baseType: !114, size: 32, align: 32, offset: 96)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !837, file: !4, line: 1188, baseType: !114, size: 32, align: 32, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !837, file: !4, line: 1189, baseType: !114, size: 32, align: 32, offset: 160)
!845 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !4, line: 1202, type: !846, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64, align: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !4, line: 1177, baseType: !848)
!848 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1145, size: 26880, align: 64, elements: !849)
!849 = !{!850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !869, !870, !871, !872, !874, !875, !876, !877, !878, !879, !880}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !848, file: !4, line: 1147, baseType: !177, size: 64, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !848, file: !4, line: 1149, baseType: !814, size: 8192, align: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !848, file: !4, line: 1150, baseType: !814, size: 8192, align: 32, offset: 8256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !848, file: !4, line: 1150, baseType: !814, size: 8192, align: 32, offset: 16448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !848, file: !4, line: 1151, baseType: !781, size: 64, align: 64, offset: 24640)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !848, file: !4, line: 1152, baseType: !778, size: 64, align: 64, offset: 24704)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !848, file: !4, line: 1153, baseType: !114, size: 32, align: 32, offset: 24768)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !848, file: !4, line: 1155, baseType: !114, size: 32, align: 32, offset: 24800)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !848, file: !4, line: 1157, baseType: !155, size: 128, align: 32, offset: 24832)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !848, file: !4, line: 1157, baseType: !155, size: 128, align: 32, offset: 24960)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !848, file: !4, line: 1158, baseType: !639, size: 64, align: 64, offset: 25088)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !848, file: !4, line: 1159, baseType: !144, size: 512, align: 32, offset: 25152)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !848, file: !4, line: 1160, baseType: !114, size: 32, align: 32, offset: 25664)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !848, file: !4, line: 1161, baseType: !150, size: 64, align: 64, offset: 25728)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !848, file: !4, line: 1162, baseType: !114, size: 32, align: 32, offset: 25792)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !848, file: !4, line: 1163, baseType: !866, size: 64, align: 64, offset: 25856)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64, align: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64, align: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !848, file: !4, line: 1164, baseType: !866, size: 64, align: 64, offset: 25920)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !848, file: !4, line: 1165, baseType: !866, size: 64, align: 64, offset: 25984)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !848, file: !4, line: 1166, baseType: !866, size: 64, align: 64, offset: 26048)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !848, file: !4, line: 1167, baseType: !873, size: 512, align: 16, offset: 26112)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 512, align: 16, elements: !826)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !848, file: !4, line: 1168, baseType: !114, size: 32, align: 32, offset: 26624)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !848, file: !4, line: 1169, baseType: !114, size: 32, align: 32, offset: 26656)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !848, file: !4, line: 1171, baseType: !114, size: 32, align: 32, offset: 26688)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !848, file: !4, line: 1172, baseType: !114, size: 32, align: 32, offset: 26720)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !848, file: !4, line: 1174, baseType: !114, size: 32, align: 32, offset: 26752)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !848, file: !4, line: 1175, baseType: !114, size: 32, align: 32, offset: 26784)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !848, file: !4, line: 1176, baseType: !114, size: 32, align: 32, offset: 26816)
!881 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !4, line: 1203, type: !847, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!882 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !4, line: 1203, type: !847, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!883 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !4, line: 1204, type: !847, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!884 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !4, line: 1204, type: !847, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!885 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !4, line: 1230, type: !886, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64, align: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !888, line: 153, baseType: !889)
!888 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !888, line: 122, size: 1216, align: 64, elements: !890)
!890 = !{!891, !893, !894, !895, !896, !897, !902, !903, !904, !908, !913, !922, !928, !929, !932, !933, !935, !939, !940, !941}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !889, file: !888, line: 123, baseType: !892, size: 64, align: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !889, file: !888, line: 124, baseType: !114, size: 32, align: 32, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !889, file: !888, line: 125, baseType: !114, size: 32, align: 32, offset: 96)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !889, file: !888, line: 126, baseType: !112, size: 16, align: 16, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !889, file: !888, line: 127, baseType: !112, size: 16, align: 16, offset: 144)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !889, file: !888, line: 128, baseType: !898, size: 128, align: 64, offset: 192)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !888, line: 88, size: 128, align: 64, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !898, file: !888, line: 89, baseType: !892, size: 64, align: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !898, file: !888, line: 90, baseType: !114, size: 32, align: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !889, file: !888, line: 129, baseType: !114, size: 32, align: 32, offset: 320)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !889, file: !888, line: 132, baseType: !85, size: 64, align: 64, offset: 384)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !889, file: !888, line: 133, baseType: !905, size: 64, align: 64, offset: 448)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64, align: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!114, !85}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !889, file: !888, line: 134, baseType: !909, size: 64, align: 64, offset: 512)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64, align: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!114, !85, !912, !114}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64, align: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !889, file: !888, line: 135, baseType: !914, size: 64, align: 64, offset: 576)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64, align: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!917, !85, !917, !114}
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !888, line: 77, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !919, line: 71, baseType: !920)
!919 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !921, line: 46, baseType: !153)
!921 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !889, file: !888, line: 136, baseType: !923, size: 64, align: 64, offset: 640)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64, align: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!114, !85, !926, !114}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64, align: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !810)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !889, file: !888, line: 139, baseType: !898, size: 128, align: 64, offset: 704)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !889, file: !888, line: 140, baseType: !930, size: 64, align: 64, offset: 832)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64, align: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !888, line: 94, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !889, file: !888, line: 141, baseType: !114, size: 32, align: 32, offset: 896)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !889, file: !888, line: 144, baseType: !934, size: 24, align: 8, offset: 928)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 24, align: 8, elements: !84)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !889, file: !888, line: 145, baseType: !936, size: 8, align: 8, offset: 952)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 8, align: 8, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 1)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !889, file: !888, line: 148, baseType: !898, size: 128, align: 64, offset: 960)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !889, file: !888, line: 151, baseType: !114, size: 32, align: 32, offset: 1088)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !889, file: !888, line: 152, baseType: !917, size: 64, align: 64, offset: 1152)
!942 = !DIGlobalVariable(name: "p_log", scope: !0, file: !4, line: 1231, type: !886, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!943 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !4, line: 1232, type: !886, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!944 = !DIGlobalVariable(name: "p_in", scope: !0, file: !4, line: 1233, type: !114, isLocal: false, isDefinition: true, variable: i32* @p_in)
!945 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !4, line: 1234, type: !114, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!946 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !4, line: 1237, type: !947, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 640, align: 32, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 20)
!950 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !4, line: 1238, type: !947, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!951 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !4, line: 1239, type: !947, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!952 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !4, line: 1240, type: !947, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!953 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !4, line: 1241, type: !947, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!954 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !4, line: 1242, type: !947, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!955 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !4, line: 1456, type: !114, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!956 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !4, line: 1465, type: !114, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!957 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !4, line: 1466, type: !114, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!958 = !DIGlobalVariable(name: "type2ctx_bcbp", scope: !0, file: !1, line: 1061, type: !959, isLocal: true, isDefinition: true, variable: [10 x i32]* @type2ctx_bcbp)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 320, align: 32, elements: !961)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!961 = !{!72}
!962 = !DIGlobalVariable(name: "maxpos", scope: !0, file: !1, line: 1058, type: !959, isLocal: true, isDefinition: true, variable: [10 x i32]* @maxpos)
!963 = !DIGlobalVariable(name: "type2ctx_map", scope: !0, file: !1, line: 1062, type: !959, isLocal: true, isDefinition: true, variable: [10 x i32]* @type2ctx_last)
!964 = !DIGlobalVariable(name: "type2ctx_last", scope: !0, file: !1, line: 1063, type: !959, isLocal: true, isDefinition: true, variable: [10 x i32]* @type2ctx_last)
!965 = !DIGlobalVariable(name: "c1isdc", scope: !0, file: !1, line: 1059, type: !959, isLocal: true, isDefinition: true)
!966 = !DIGlobalVariable(name: "pos2ctx_map_int", scope: !0, file: !1, line: 1207, type: !967, isLocal: true, isDefinition: true, variable: [10 x i32*]* @pos2ctx_map_int)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 640, align: 64, elements: !961)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64, align: 64)
!969 = !DIGlobalVariable(name: "pos2ctx_map4x4", scope: !0, file: !1, line: 1189, type: !970, isLocal: true, isDefinition: true, variable: [16 x i32]* @pos2ctx_map4x4)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 512, align: 32, elements: !145)
!971 = !DIGlobalVariable(name: "pos2ctx_map8x8i", scope: !0, file: !1, line: 1198, type: !972, isLocal: true, isDefinition: true, variable: [64 x i32]* @pos2ctx_map8x8i)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 2048, align: 32, elements: !571)
!973 = !DIGlobalVariable(name: "pos2ctx_map8x4i", scope: !0, file: !1, line: 1203, type: !974, isLocal: true, isDefinition: true, variable: [32 x i32]* @pos2ctx_map8x4i)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 1024, align: 32, elements: !756)
!975 = !DIGlobalVariable(name: "pos2ctx_map4x8i", scope: !0, file: !1, line: 1205, type: !974, isLocal: true, isDefinition: true, variable: [32 x i32]* @pos2ctx_map4x8i)
!976 = !DIGlobalVariable(name: "pos2ctx_map2x4c", scope: !0, file: !1, line: 1190, type: !970, isLocal: true, isDefinition: true, variable: [16 x i32]* @pos2ctx_map2x4c)
!977 = !DIGlobalVariable(name: "pos2ctx_map4x4c", scope: !0, file: !1, line: 1191, type: !970, isLocal: true, isDefinition: true, variable: [16 x i32]* @pos2ctx_map4x4c)
!978 = !DIGlobalVariable(name: "pos2ctx_map", scope: !0, file: !1, line: 1192, type: !967, isLocal: true, isDefinition: true, variable: [10 x i32*]* @pos2ctx_map)
!979 = !DIGlobalVariable(name: "pos2ctx_map8x8", scope: !0, file: !1, line: 1183, type: !972, isLocal: true, isDefinition: true, variable: [64 x i32]* @pos2ctx_map8x8)
!980 = !DIGlobalVariable(name: "pos2ctx_map8x4", scope: !0, file: !1, line: 1187, type: !974, isLocal: true, isDefinition: true, variable: [32 x i32]* @pos2ctx_map8x4)
!981 = !DIGlobalVariable(name: "pos2ctx_last", scope: !0, file: !1, line: 1222, type: !967, isLocal: true, isDefinition: true, variable: [10 x i32*]* @pos2ctx_last)
!982 = !DIGlobalVariable(name: "pos2ctx_last4x4", scope: !0, file: !1, line: 1219, type: !970, isLocal: true, isDefinition: true, variable: [16 x i32]* @pos2ctx_last4x4)
!983 = !DIGlobalVariable(name: "pos2ctx_last8x8", scope: !0, file: !1, line: 1213, type: !972, isLocal: true, isDefinition: true, variable: [64 x i32]* @pos2ctx_last8x8)
!984 = !DIGlobalVariable(name: "pos2ctx_last8x4", scope: !0, file: !1, line: 1217, type: !974, isLocal: true, isDefinition: true, variable: [32 x i32]* @pos2ctx_last8x4)
!985 = !DIGlobalVariable(name: "pos2ctx_last2x4c", scope: !0, file: !1, line: 1220, type: !970, isLocal: true, isDefinition: true, variable: [16 x i32]* @pos2ctx_last2x4c)
!986 = !DIGlobalVariable(name: "pos2ctx_last4x4c", scope: !0, file: !1, line: 1221, type: !970, isLocal: true, isDefinition: true, variable: [16 x i32]* @pos2ctx_last4x4c)
!987 = !DIGlobalVariable(name: "type2ctx_one", scope: !0, file: !1, line: 1064, type: !959, isLocal: true, isDefinition: true, variable: [10 x i32]* @type2ctx_abs)
!988 = !DIGlobalVariable(name: "max_c2", scope: !0, file: !1, line: 1066, type: !959, isLocal: true, isDefinition: true, variable: [10 x i32]* @max_c2)
!989 = !DIGlobalVariable(name: "type2ctx_abs", scope: !0, file: !1, line: 1065, type: !959, isLocal: true, isDefinition: true, variable: [10 x i32]* @type2ctx_abs)
!990 = !{i32 2, !"Dwarf Version", i32 2}
!991 = !{i32 2, !"Debug Info Version", i32 700000003}
!992 = !{i32 1, !"PIC Level", i32 2}
!993 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!994 = !DILocation(line: 55, column: 14, scope: !116)
!995 = !{!996, !996, i64 0}
!996 = !{!"int", !997, i64 0}
!997 = !{!"omnipotent char", !998, i64 0}
!998 = !{!"Simple C/C++ TBAA"}
!999 = !DILocation(line: 56, column: 1, scope: !116)
!1000 = !DILocation(line: 68, column: 38, scope: !120)
!1001 = !{!1002, !1002, i64 0}
!1002 = !{!"any pointer", !997, i64 0}
!1003 = !DILocation(line: 68, column: 43, scope: !120)
!1004 = !{!1005, !996, i64 12}
!1005 = !{!"", !996, i64 0, !996, i64 4, !996, i64 8, !996, i64 12, !996, i64 16, !996, i64 20, !996, i64 24, !996, i64 28, !996, i64 32, !996, i64 36, !996, i64 40, !996, i64 44, !1006, i64 48, !996, i64 52, !996, i64 56, !996, i64 60, !996, i64 64, !996, i64 68, !996, i64 72, !996, i64 76, !996, i64 80, !996, i64 84, !996, i64 88, !996, i64 92, !996, i64 96, !1002, i64 104, !1002, i64 112, !996, i64 120, !1002, i64 128, !996, i64 136, !996, i64 140, !996, i64 144, !996, i64 148, !996, i64 152, !996, i64 156, !996, i64 160, !996, i64 164, !996, i64 168, !996, i64 172, !996, i64 176, !996, i64 180, !997, i64 184, !997, i64 4792, !997, i64 7352, !997, i64 8504, !997, i64 12600, !997, i64 13112, !1002, i64 14136, !1002, i64 14144, !1002, i64 14152, !1002, i64 14160, !1002, i64 14168, !997, i64 14176, !1002, i64 71776, !1002, i64 71784, !996, i64 71792, !996, i64 71796, !996, i64 71800, !996, i64 71804, !997, i64 71808, !996, i64 71872, !996, i64 71876, !996, i64 71880, !996, i64 71884, !996, i64 71888, !1007, i64 71896, !996, i64 71904, !996, i64 71908, !996, i64 71912, !996, i64 71916, !1002, i64 71920, !1002, i64 71928, !1002, i64 71936, !1002, i64 71944, !997, i64 71952, !996, i64 71984, !996, i64 71988, !996, i64 71992, !996, i64 71996, !996, i64 72000, !996, i64 72004, !996, i64 72008, !996, i64 72012, !997, i64 72016, !996, i64 72376, !996, i64 72380, !996, i64 72384, !996, i64 72388, !996, i64 72392, !996, i64 72396, !996, i64 72400, !996, i64 72404, !996, i64 72408, !996, i64 72412, !996, i64 72416, !996, i64 72420, !997, i64 72424, !996, i64 72428, !996, i64 72432, !997, i64 72436, !996, i64 72444, !996, i64 72448, !996, i64 72452, !996, i64 72456, !996, i64 72460, !996, i64 72464, !996, i64 72468, !996, i64 72472, !996, i64 72476, !996, i64 72480, !996, i64 72484, !996, i64 72488, !996, i64 72492, !996, i64 72496, !996, i64 72500, !996, i64 72504, !996, i64 72508, !1002, i64 72512, !996, i64 72520, !996, i64 72524, !996, i64 72528, !996, i64 72532, !996, i64 72536, !1007, i64 72544, !996, i64 72552, !996, i64 72556, !996, i64 72560, !996, i64 72564, !996, i64 72568, !996, i64 72572, !996, i64 72576, !1002, i64 72584, !996, i64 72592, !996, i64 72596, !996, i64 72600, !996, i64 72604, !996, i64 72608, !996, i64 72612, !996, i64 72616, !996, i64 72620, !996, i64 72624, !996, i64 72628, !996, i64 72632, !996, i64 72636, !996, i64 72640, !996, i64 72644, !996, i64 72648, !996, i64 72652, !996, i64 72656, !996, i64 72660, !996, i64 72664, !996, i64 72668, !996, i64 72672, !996, i64 72676, !996, i64 72680, !996, i64 72684, !996, i64 72688, !996, i64 72692, !996, i64 72696, !996, i64 72700, !996, i64 72704, !996, i64 72708, !996, i64 72712, !997, i64 72716, !996, i64 72724, !996, i64 72728, !996, i64 72732}
!1006 = !{!"float", !997, i64 0}
!1007 = !{!"double", !997, i64 0}
!1008 = !DILocation(line: 68, column: 25, scope: !120)
!1009 = !DILocation(line: 68, column: 30, scope: !120)
!1010 = !{!1005, !1002, i64 14168}
!1011 = !DIExpression()
!1012 = !DILocation(line: 69, column: 16, scope: !120)
!1013 = !DILocation(line: 71, column: 3, scope: !120)
!1014 = !DILocation(line: 72, column: 16, scope: !120)
!1015 = !DILocation(line: 72, column: 21, scope: !120)
!1016 = !DILocation(line: 69, column: 12, scope: !120)
!1017 = !DILocation(line: 72, column: 3, scope: !120)
!1018 = !DILocation(line: 74, column: 10, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !120, file: !1, line: 74, column: 7)
!1020 = !{!1021, !996, i64 0}
!1021 = !{!"pix_pos", !996, i64 0, !996, i64 4, !996, i64 8, !996, i64 12, !996, i64 16, !996, i64 20}
!1022 = !DILocation(line: 74, column: 7, scope: !1019)
!1023 = !DILocation(line: 74, column: 7, scope: !120)
!1024 = !DILocation(line: 75, column: 48, scope: !1019)
!1025 = !{!1021, !996, i64 4}
!1026 = !DILocation(line: 75, column: 32, scope: !1019)
!1027 = !DILocation(line: 75, column: 37, scope: !1019)
!1028 = !DILocation(line: 75, column: 5, scope: !1019)
!1029 = !DILocation(line: 77, column: 13, scope: !1019)
!1030 = !DILocation(line: 79, column: 12, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !120, file: !1, line: 79, column: 7)
!1032 = !DILocation(line: 79, column: 7, scope: !1031)
!1033 = !DILocation(line: 79, column: 7, scope: !120)
!1034 = !DILocation(line: 80, column: 52, scope: !1031)
!1035 = !DILocation(line: 80, column: 34, scope: !1031)
!1036 = !DILocation(line: 80, column: 39, scope: !1031)
!1037 = !DILocation(line: 80, column: 5, scope: !1031)
!1038 = !DILocation(line: 82, column: 13, scope: !1031)
!1039 = !DILocation(line: 83, column: 1, scope: !120)
!1040 = !DILocation(line: 96, column: 36, scope: !198)
!1041 = !DILocation(line: 96, column: 14, scope: !198)
!1042 = !DILocation(line: 94, column: 23, scope: !198)
!1043 = !DILocation(line: 97, column: 16, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !198, file: !1, line: 97, column: 7)
!1045 = !DILocation(line: 97, column: 7, scope: !198)
!1046 = !DILocation(line: 98, column: 5, scope: !1044)
!1047 = !DILocation(line: 100, column: 3, scope: !198)
!1048 = !DILocation(line: 115, column: 37, scope: !203)
!1049 = !DILocation(line: 115, column: 14, scope: !203)
!1050 = !DILocation(line: 113, column: 25, scope: !203)
!1051 = !DILocation(line: 116, column: 16, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !203, file: !1, line: 116, column: 7)
!1053 = !DILocation(line: 116, column: 7, scope: !203)
!1054 = !DILocation(line: 117, column: 5, scope: !1052)
!1055 = !DILocation(line: 119, column: 3, scope: !203)
!1056 = !DILocation(line: 132, column: 53, scope: !208)
!1057 = !DILocation(line: 134, column: 16, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !208, file: !1, line: 134, column: 7)
!1059 = !DILocation(line: 134, column: 7, scope: !208)
!1060 = !DILocation(line: 137, column: 9, scope: !208)
!1061 = !DILocation(line: 137, column: 3, scope: !208)
!1062 = !DILocation(line: 139, column: 3, scope: !208)
!1063 = !DILocation(line: 140, column: 1, scope: !208)
!1064 = !DILocation(line: 149, column: 55, scope: !213)
!1065 = !DILocation(line: 151, column: 16, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !213, file: !1, line: 151, column: 7)
!1067 = !DILocation(line: 151, column: 7, scope: !213)
!1068 = !DILocation(line: 154, column: 9, scope: !213)
!1069 = !DILocation(line: 154, column: 3, scope: !213)
!1070 = !DILocation(line: 156, column: 3, scope: !213)
!1071 = !DILocation(line: 157, column: 1, scope: !213)
!1072 = !DILocation(line: 166, column: 45, scope: !218)
!1073 = !DILocation(line: 166, column: 64, scope: !218)
!1074 = !DILocation(line: 169, column: 52, scope: !218)
!1075 = !DILocation(line: 169, column: 26, scope: !218)
!1076 = !DILocation(line: 171, column: 14, scope: !218)
!1077 = !DILocation(line: 168, column: 7, scope: !218)
!1078 = !DILocation(line: 174, column: 7, scope: !218)
!1079 = !{!1080, !1002, i64 40}
!1080 = !{!"syntaxelement", !996, i64 0, !996, i64 4, !996, i64 8, !996, i64 12, !996, i64 16, !996, i64 20, !996, i64 24, !996, i64 28, !1002, i64 32, !1002, i64 40}
!1081 = !DILocation(line: 174, column: 3, scope: !218)
!1082 = !DILocation(line: 176, column: 10, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !218, file: !1, line: 176, column: 6)
!1084 = !{!1080, !996, i64 0}
!1085 = !DILocation(line: 176, column: 15, scope: !1083)
!1086 = !DILocation(line: 176, column: 6, scope: !218)
!1087 = !DILocation(line: 177, column: 20, scope: !1083)
!1088 = !{!1089, !1002, i64 0}
!1089 = !{!"datapartition", !1002, i64 0, !1090, i64 8, !1002, i64 112}
!1090 = !{!"", !996, i64 0, !996, i64 4, !996, i64 8, !996, i64 12, !996, i64 16, !1002, i64 24, !1002, i64 32, !996, i64 40, !996, i64 44, !996, i64 48, !996, i64 52, !996, i64 56, !1002, i64 64, !1002, i64 72, !996, i64 80, !996, i64 84, !996, i64 88, !996, i64 92, !996, i64 96, !996, i64 100}
!1091 = !DILocation(line: 177, column: 31, scope: !1083)
!1092 = !DILocation(line: 177, column: 42, scope: !1083)
!1093 = !{!1094, !996, i64 40}
!1094 = !{!"", !996, i64 0, !996, i64 4, !997, i64 8, !996, i64 12, !996, i64 16, !997, i64 20, !997, i64 21, !996, i64 24, !996, i64 28, !1002, i64 32, !996, i64 40}
!1095 = !DILocation(line: 177, column: 5, scope: !1083)
!1096 = !DILocation(line: 179, column: 22, scope: !218)
!1097 = !DILocation(line: 179, column: 51, scope: !218)
!1098 = !DILocation(line: 179, column: 15, scope: !218)
!1099 = !DILocation(line: 179, column: 19, scope: !218)
!1100 = !{!1080, !996, i64 12}
!1101 = !DILocation(line: 179, column: 3, scope: !218)
!1102 = !DILocation(line: 189, column: 46, scope: !302)
!1103 = !DILocation(line: 189, column: 73, scope: !302)
!1104 = !DILocation(line: 192, column: 38, scope: !302)
!1105 = !DILocation(line: 192, column: 43, scope: !302)
!1106 = !{!1005, !1002, i64 14160}
!1107 = !DILocation(line: 192, column: 58, scope: !302)
!1108 = !{!1109, !1002, i64 32}
!1109 = !{!"", !996, i64 0, !996, i64 4, !996, i64 8, !996, i64 12, !996, i64 16, !996, i64 20, !1002, i64 24, !1002, i64 32, !1002, i64 40, !1002, i64 48, !996, i64 56, !1002, i64 64, !1002, i64 72, !1002, i64 80, !996, i64 88, !1002, i64 96, !1002, i64 104, !1002, i64 112, !1002, i64 120, !997, i64 128}
!1110 = !DILocation(line: 192, column: 23, scope: !302)
!1111 = !DILocation(line: 193, column: 56, scope: !302)
!1112 = !DILocation(line: 193, column: 38, scope: !302)
!1113 = !DILocation(line: 193, column: 43, scope: !302)
!1114 = !DILocation(line: 194, column: 37, scope: !302)
!1115 = !{!1080, !996, i64 4}
!1116 = !DILocation(line: 194, column: 22, scope: !302)
!1117 = !DILocation(line: 196, column: 15, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !302, file: !1, line: 196, column: 7)
!1119 = !{!1120, !996, i64 552}
!1120 = !{!"macroblock", !996, i64 0, !996, i64 4, !996, i64 8, !996, i64 12, !996, i64 16, !997, i64 20, !1002, i64 56, !1002, i64 64, !996, i64 72, !997, i64 76, !997, i64 332, !997, i64 396, !996, i64 460, !1121, i64 464, !997, i64 472, !997, i64 488, !1122, i64 504, !996, i64 512, !996, i64 516, !996, i64 520, !996, i64 524, !996, i64 528, !996, i64 532, !996, i64 536, !996, i64 540, !996, i64 544, !996, i64 548, !996, i64 552, !996, i64 556, !996, i64 560, !996, i64 564, !996, i64 568, !996, i64 572, !996, i64 576, !996, i64 580, !1007, i64 584, !996, i64 592, !996, i64 596, !996, i64 600, !996, i64 604, !996, i64 608, !996, i64 612, !996, i64 616, !996, i64 620, !996, i64 624}
!1121 = !{!"long long", !997, i64 0}
!1122 = !{!"long", !997, i64 0}
!1123 = !DILocation(line: 196, column: 7, scope: !1118)
!1124 = !DILocation(line: 196, column: 7, scope: !302)
!1125 = !DILocation(line: 197, column: 30, scope: !1118)
!1126 = !{!1120, !996, i64 536}
!1127 = !DILocation(line: 197, column: 9, scope: !1118)
!1128 = !DILocation(line: 197, column: 39, scope: !1118)
!1129 = !{!1120, !996, i64 532}
!1130 = !DILocation(line: 191, column: 7, scope: !302)
!1131 = !DILocation(line: 197, column: 5, scope: !1118)
!1132 = !DILocation(line: 200, column: 15, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !302, file: !1, line: 200, column: 7)
!1134 = !{!1120, !996, i64 556}
!1135 = !DILocation(line: 200, column: 7, scope: !1133)
!1136 = !DILocation(line: 200, column: 7, scope: !302)
!1137 = !DILocation(line: 201, column: 30, scope: !1133)
!1138 = !{!1120, !996, i64 540}
!1139 = !DILocation(line: 201, column: 9, scope: !1133)
!1140 = !DILocation(line: 201, column: 39, scope: !1133)
!1141 = !DILocation(line: 191, column: 9, scope: !302)
!1142 = !DILocation(line: 201, column: 5, scope: !1133)
!1143 = !DILocation(line: 205, column: 15, scope: !302)
!1144 = !DILocation(line: 191, column: 11, scope: !302)
!1145 = !DILocation(line: 207, column: 15, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !302, file: !1, line: 207, column: 7)
!1147 = !DILocation(line: 208, column: 36, scope: !1146)
!1148 = !DILocation(line: 207, column: 7, scope: !302)
!1149 = !DILocation(line: 208, column: 5, scope: !1146)
!1150 = !DILocation(line: 210, column: 5, scope: !1146)
!1151 = !DILocation(line: 212, column: 7, scope: !302)
!1152 = !DILocation(line: 212, column: 15, scope: !302)
!1153 = !{!1080, !996, i64 24}
!1154 = !DILocation(line: 214, column: 3, scope: !302)
!1155 = !DILocation(line: 223, column: 49, scope: !314)
!1156 = !DILocation(line: 223, column: 76, scope: !314)
!1157 = !DILocation(line: 226, column: 19, scope: !314)
!1158 = !DILocation(line: 226, column: 24, scope: !314)
!1159 = !{!1005, !996, i64 24}
!1160 = !DILocation(line: 226, column: 28, scope: !314)
!1161 = !DILocation(line: 227, column: 43, scope: !314)
!1162 = !DILocation(line: 227, column: 58, scope: !314)
!1163 = !DILocation(line: 227, column: 23, scope: !314)
!1164 = !DILocation(line: 228, column: 56, scope: !314)
!1165 = !DILocation(line: 228, column: 38, scope: !314)
!1166 = !DILocation(line: 228, column: 43, scope: !314)
!1167 = !DILocation(line: 229, column: 41, scope: !314)
!1168 = !DILocation(line: 229, column: 22, scope: !314)
!1169 = !DILocation(line: 233, column: 17, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 233, column: 9)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 232, column: 3)
!1172 = distinct !DILexicalBlock(scope: !314, file: !1, line: 231, column: 7)
!1173 = !{!1120, !1002, i64 56}
!1174 = !DILocation(line: 233, column: 33, scope: !1170)
!1175 = !DILocation(line: 231, column: 7, scope: !314)
!1176 = !DILocation(line: 233, column: 9, scope: !1171)
!1177 = !DILocation(line: 236, column: 37, scope: !1170)
!1178 = !{!1120, !996, i64 624}
!1179 = !DILocation(line: 236, column: 12, scope: !1170)
!1180 = !DILocation(line: 225, column: 9, scope: !314)
!1181 = !DILocation(line: 237, column: 17, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 237, column: 9)
!1183 = !{!1120, !1002, i64 64}
!1184 = !DILocation(line: 237, column: 35, scope: !1182)
!1185 = !DILocation(line: 237, column: 9, scope: !1171)
!1186 = !DILocation(line: 240, column: 39, scope: !1182)
!1187 = !DILocation(line: 240, column: 12, scope: !1182)
!1188 = !DILocation(line: 242, column: 21, scope: !1171)
!1189 = !DILocation(line: 225, column: 11, scope: !314)
!1190 = !DILocation(line: 244, column: 19, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 244, column: 9)
!1192 = !DILocation(line: 244, column: 23, scope: !1191)
!1193 = !DILocation(line: 244, column: 30, scope: !1191)
!1194 = !{!1080, !996, i64 8}
!1195 = !DILocation(line: 244, column: 36, scope: !1191)
!1196 = !DILocation(line: 244, column: 9, scope: !1171)
!1197 = !DILocation(line: 245, column: 40, scope: !1191)
!1198 = !DILocation(line: 245, column: 7, scope: !1191)
!1199 = !DILocation(line: 247, column: 40, scope: !1191)
!1200 = !DILocation(line: 247, column: 7, scope: !1191)
!1201 = !DILocation(line: 249, column: 30, scope: !1171)
!1202 = !DILocation(line: 249, column: 36, scope: !1171)
!1203 = !DILocation(line: 249, column: 40, scope: !1171)
!1204 = !DILocation(line: 249, column: 47, scope: !1171)
!1205 = !DILocation(line: 249, column: 53, scope: !1171)
!1206 = !DILocation(line: 249, column: 25, scope: !1171)
!1207 = !DILocation(line: 249, column: 13, scope: !1171)
!1208 = !DILocation(line: 249, column: 23, scope: !1171)
!1209 = !DILocation(line: 250, column: 3, scope: !1171)
!1210 = !DILocation(line: 253, column: 9, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 252, column: 3)
!1212 = !DILocation(line: 256, column: 41, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 253, column: 9)
!1214 = !DILocation(line: 256, column: 51, scope: !1213)
!1215 = !DILocation(line: 256, column: 12, scope: !1213)
!1216 = !DILocation(line: 257, column: 17, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 257, column: 9)
!1218 = !DILocation(line: 257, column: 35, scope: !1217)
!1219 = !DILocation(line: 257, column: 9, scope: !1211)
!1220 = !DILocation(line: 260, column: 43, scope: !1217)
!1221 = !DILocation(line: 260, column: 53, scope: !1217)
!1222 = !DILocation(line: 260, column: 12, scope: !1217)
!1223 = !DILocation(line: 225, column: 7, scope: !314)
!1224 = !DILocation(line: 262, column: 17, scope: !1211)
!1225 = !DILocation(line: 264, column: 21, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 264, column: 9)
!1227 = !DILocation(line: 265, column: 38, scope: !1226)
!1228 = !DILocation(line: 264, column: 9, scope: !1211)
!1229 = !DILocation(line: 265, column: 7, scope: !1226)
!1230 = !DILocation(line: 267, column: 7, scope: !1226)
!1231 = !DILocation(line: 269, column: 25, scope: !1211)
!1232 = !DILocation(line: 269, column: 13, scope: !1211)
!1233 = !DILocation(line: 269, column: 23, scope: !1211)
!1234 = !DILocation(line: 271, column: 7, scope: !314)
!1235 = !DILocation(line: 271, column: 15, scope: !314)
!1236 = !DILocation(line: 273, column: 3, scope: !314)
!1237 = !DILocation(line: 284, column: 50, scope: !325)
!1238 = !DILocation(line: 284, column: 77, scope: !325)
!1239 = !DILocation(line: 287, column: 7, scope: !325)
!1240 = !DILocation(line: 290, column: 38, scope: !325)
!1241 = !DILocation(line: 290, column: 43, scope: !325)
!1242 = !DILocation(line: 290, column: 58, scope: !325)
!1243 = !DILocation(line: 290, column: 23, scope: !325)
!1244 = !DILocation(line: 291, column: 56, scope: !325)
!1245 = !DILocation(line: 291, column: 38, scope: !325)
!1246 = !DILocation(line: 291, column: 43, scope: !325)
!1247 = !DILocation(line: 294, column: 15, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !325, file: !1, line: 294, column: 7)
!1249 = !DILocation(line: 294, column: 31, scope: !1248)
!1250 = !DILocation(line: 294, column: 7, scope: !325)
!1251 = !DILocation(line: 297, column: 34, scope: !1248)
!1252 = !{!1120, !996, i64 572}
!1253 = !DILocation(line: 286, column: 10, scope: !325)
!1254 = !DILocation(line: 299, column: 15, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !325, file: !1, line: 299, column: 7)
!1256 = !DILocation(line: 299, column: 33, scope: !1255)
!1257 = !DILocation(line: 299, column: 7, scope: !325)
!1258 = !DILocation(line: 302, column: 36, scope: !1255)
!1259 = !DILocation(line: 286, column: 7, scope: !325)
!1260 = !DILocation(line: 304, column: 19, scope: !325)
!1261 = !DILocation(line: 305, column: 25, scope: !325)
!1262 = !DILocation(line: 288, column: 7, scope: !325)
!1263 = !DILocation(line: 306, column: 7, scope: !325)
!1264 = !DILocation(line: 306, column: 15, scope: !325)
!1265 = !DILocation(line: 307, column: 14, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !325, file: !1, line: 307, column: 6)
!1267 = !DILocation(line: 308, column: 65, scope: !1266)
!1268 = !DILocation(line: 307, column: 6, scope: !325)
!1269 = !DILocation(line: 308, column: 5, scope: !1266)
!1270 = !DILocation(line: 310, column: 5, scope: !1266)
!1271 = !DILocation(line: 312, column: 1, scope: !325)
!1272 = !DILocation(line: 322, column: 44, scope: !335)
!1273 = !DILocation(line: 322, column: 71, scope: !335)
!1274 = !DILocation(line: 325, column: 7, scope: !335)
!1275 = !DILocation(line: 328, column: 19, scope: !335)
!1276 = !DILocation(line: 328, column: 24, scope: !335)
!1277 = !DILocation(line: 329, column: 7, scope: !335)
!1278 = !DILocation(line: 333, column: 43, scope: !335)
!1279 = !DILocation(line: 333, column: 58, scope: !335)
!1280 = !DILocation(line: 333, column: 23, scope: !335)
!1281 = !DILocation(line: 334, column: 56, scope: !335)
!1282 = !DILocation(line: 334, column: 38, scope: !335)
!1283 = !DILocation(line: 334, column: 43, scope: !335)
!1284 = !DILocation(line: 335, column: 41, scope: !335)
!1285 = !DILocation(line: 335, column: 22, scope: !335)
!1286 = !DILocation(line: 337, column: 6, scope: !335)
!1287 = !DILocation(line: 339, column: 17, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 339, column: 9)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 338, column: 3)
!1290 = distinct !DILexicalBlock(scope: !335, file: !1, line: 337, column: 6)
!1291 = !DILocation(line: 339, column: 33, scope: !1288)
!1292 = !DILocation(line: 339, column: 9, scope: !1289)
!1293 = !DILocation(line: 342, column: 38, scope: !1288)
!1294 = !{!1120, !996, i64 72}
!1295 = !DILocation(line: 342, column: 91, scope: !1288)
!1296 = !DILocation(line: 342, column: 54, scope: !1288)
!1297 = !DILocation(line: 342, column: 12, scope: !1288)
!1298 = !DILocation(line: 324, column: 10, scope: !335)
!1299 = !DILocation(line: 344, column: 17, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 344, column: 9)
!1301 = !DILocation(line: 344, column: 35, scope: !1300)
!1302 = !DILocation(line: 344, column: 9, scope: !1289)
!1303 = !DILocation(line: 347, column: 40, scope: !1300)
!1304 = !DILocation(line: 347, column: 95, scope: !1300)
!1305 = !DILocation(line: 347, column: 56, scope: !1300)
!1306 = !DILocation(line: 347, column: 12, scope: !1300)
!1307 = !DILocation(line: 324, column: 7, scope: !335)
!1308 = !DILocation(line: 349, column: 21, scope: !1289)
!1309 = !DILocation(line: 326, column: 7, scope: !335)
!1310 = !DILocation(line: 351, column: 9, scope: !1289)
!1311 = !DILocation(line: 351, column: 17, scope: !1289)
!1312 = !DILocation(line: 353, column: 16, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 353, column: 9)
!1314 = !DILocation(line: 353, column: 9, scope: !1289)
!1315 = !DILocation(line: 355, column: 63, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !1, line: 354, column: 5)
!1317 = !DILocation(line: 355, column: 7, scope: !1316)
!1318 = !DILocation(line: 356, column: 5, scope: !1316)
!1319 = !DILocation(line: 357, column: 22, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1313, file: !1, line: 357, column: 14)
!1321 = !DILocation(line: 359, column: 63, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 358, column: 5)
!1323 = !DILocation(line: 359, column: 7, scope: !1322)
!1324 = !DILocation(line: 357, column: 14, scope: !1313)
!1325 = !DILocation(line: 361, column: 7, scope: !1322)
!1326 = !DILocation(line: 362, column: 5, scope: !1322)
!1327 = !DILocation(line: 367, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 364, column: 5)
!1329 = !DILocation(line: 369, column: 25, scope: !1328)
!1330 = !DILocation(line: 371, column: 26, scope: !1328)
!1331 = !DILocation(line: 372, column: 35, scope: !1328)
!1332 = !DILocation(line: 372, column: 85, scope: !1328)
!1333 = !DILocation(line: 372, column: 7, scope: !1328)
!1334 = !DILocation(line: 373, column: 27, scope: !1328)
!1335 = !DILocation(line: 376, column: 18, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 376, column: 11)
!1337 = !DILocation(line: 378, column: 65, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 377, column: 7)
!1339 = !DILocation(line: 376, column: 11, scope: !1328)
!1340 = !DILocation(line: 378, column: 9, scope: !1338)
!1341 = !DILocation(line: 379, column: 7, scope: !1338)
!1342 = !DILocation(line: 382, column: 9, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 381, column: 7)
!1344 = !DILocation(line: 384, column: 20, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 384, column: 13)
!1346 = !DILocation(line: 386, column: 67, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 385, column: 9)
!1348 = !DILocation(line: 384, column: 13, scope: !1343)
!1349 = !DILocation(line: 386, column: 11, scope: !1347)
!1350 = !DILocation(line: 387, column: 9, scope: !1347)
!1351 = !DILocation(line: 390, column: 11, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 389, column: 9)
!1353 = !DILocation(line: 393, column: 27, scope: !1328)
!1354 = !DILocation(line: 394, column: 26, scope: !1328)
!1355 = !DILocation(line: 396, column: 35, scope: !1328)
!1356 = !DILocation(line: 396, column: 85, scope: !1328)
!1357 = !DILocation(line: 396, column: 7, scope: !1328)
!1358 = !DILocation(line: 398, column: 26, scope: !1328)
!1359 = !DILocation(line: 399, column: 35, scope: !1328)
!1360 = !DILocation(line: 399, column: 85, scope: !1328)
!1361 = !DILocation(line: 399, column: 7, scope: !1328)
!1362 = !DILocation(line: 407, column: 19, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 407, column: 11)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 406, column: 5)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 405, column: 9)
!1366 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 403, column: 3)
!1367 = !DILocation(line: 407, column: 35, scope: !1363)
!1368 = !DILocation(line: 407, column: 11, scope: !1364)
!1369 = !DILocation(line: 410, column: 41, scope: !1363)
!1370 = !DILocation(line: 410, column: 49, scope: !1363)
!1371 = !DILocation(line: 410, column: 14, scope: !1363)
!1372 = !DILocation(line: 411, column: 19, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 411, column: 11)
!1374 = !DILocation(line: 411, column: 37, scope: !1373)
!1375 = !DILocation(line: 411, column: 11, scope: !1364)
!1376 = !DILocation(line: 414, column: 43, scope: !1373)
!1377 = !DILocation(line: 414, column: 51, scope: !1373)
!1378 = !DILocation(line: 414, column: 14, scope: !1373)
!1379 = !DILocation(line: 330, column: 7, scope: !335)
!1380 = !DILocation(line: 420, column: 16, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 420, column: 9)
!1382 = !DILocation(line: 420, column: 9, scope: !1366)
!1383 = !DILocation(line: 430, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 429, column: 5)
!1385 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 428, column: 9)
!1386 = !DILocation(line: 435, column: 42, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 431, column: 7)
!1388 = !DILocation(line: 435, column: 9, scope: !1387)
!1389 = !DILocation(line: 436, column: 42, scope: !1387)
!1390 = !DILocation(line: 436, column: 9, scope: !1387)
!1391 = !DILocation(line: 437, column: 42, scope: !1387)
!1392 = !DILocation(line: 437, column: 9, scope: !1387)
!1393 = !DILocation(line: 438, column: 9, scope: !1387)
!1394 = !DILocation(line: 440, column: 42, scope: !1387)
!1395 = !DILocation(line: 440, column: 9, scope: !1387)
!1396 = !DILocation(line: 441, column: 42, scope: !1387)
!1397 = !DILocation(line: 441, column: 9, scope: !1387)
!1398 = !DILocation(line: 442, column: 42, scope: !1387)
!1399 = !DILocation(line: 442, column: 9, scope: !1387)
!1400 = !DILocation(line: 443, column: 9, scope: !1387)
!1401 = !DILocation(line: 445, column: 42, scope: !1387)
!1402 = !DILocation(line: 445, column: 9, scope: !1387)
!1403 = !DILocation(line: 446, column: 42, scope: !1387)
!1404 = !DILocation(line: 446, column: 9, scope: !1387)
!1405 = !DILocation(line: 447, column: 42, scope: !1387)
!1406 = !DILocation(line: 447, column: 9, scope: !1387)
!1407 = !DILocation(line: 448, column: 9, scope: !1387)
!1408 = !DILocation(line: 451, column: 42, scope: !1387)
!1409 = !DILocation(line: 451, column: 9, scope: !1387)
!1410 = !DILocation(line: 452, column: 42, scope: !1387)
!1411 = !DILocation(line: 452, column: 9, scope: !1387)
!1412 = !DILocation(line: 453, column: 42, scope: !1387)
!1413 = !DILocation(line: 453, column: 9, scope: !1387)
!1414 = !DILocation(line: 454, column: 9, scope: !1387)
!1415 = !DILocation(line: 456, column: 42, scope: !1387)
!1416 = !DILocation(line: 456, column: 9, scope: !1387)
!1417 = !DILocation(line: 457, column: 42, scope: !1387)
!1418 = !DILocation(line: 457, column: 9, scope: !1387)
!1419 = !DILocation(line: 458, column: 9, scope: !1387)
!1420 = !DILocation(line: 422, column: 25, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 421, column: 5)
!1422 = !DILocation(line: 460, column: 42, scope: !1387)
!1423 = !DILocation(line: 460, column: 9, scope: !1387)
!1424 = !DILocation(line: 461, column: 42, scope: !1387)
!1425 = !DILocation(line: 461, column: 9, scope: !1387)
!1426 = !DILocation(line: 529, column: 8, scope: !1366)
!1427 = !DILocation(line: 464, column: 9, scope: !1387)
!1428 = !DILocation(line: 465, column: 9, scope: !1387)
!1429 = !DILocation(line: 415, column: 19, scope: !1364)
!1430 = !DILocation(line: 416, column: 11, scope: !1364)
!1431 = !DILocation(line: 416, column: 19, scope: !1364)
!1432 = !DILocation(line: 417, column: 5, scope: !1364)
!1433 = !DILocation(line: 470, column: 18, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 470, column: 11)
!1435 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 469, column: 5)
!1436 = !DILocation(line: 470, column: 11, scope: !1435)
!1437 = !DILocation(line: 472, column: 42, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 471, column: 7)
!1439 = !DILocation(line: 472, column: 9, scope: !1438)
!1440 = !DILocation(line: 473, column: 7, scope: !1438)
!1441 = !DILocation(line: 474, column: 23, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1434, file: !1, line: 474, column: 16)
!1443 = !DILocation(line: 474, column: 16, scope: !1434)
!1444 = !DILocation(line: 476, column: 42, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !1, line: 475, column: 7)
!1446 = !DILocation(line: 476, column: 9, scope: !1445)
!1447 = !DILocation(line: 477, column: 42, scope: !1445)
!1448 = !DILocation(line: 477, column: 9, scope: !1445)
!1449 = !DILocation(line: 479, column: 13, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 479, column: 13)
!1451 = !DILocation(line: 479, column: 52, scope: !1450)
!1452 = !DILocation(line: 479, column: 13, scope: !1445)
!1453 = !DILocation(line: 479, column: 19, scope: !1450)
!1454 = !DILocation(line: 480, column: 19, scope: !1450)
!1455 = !DILocation(line: 482, column: 23, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1442, file: !1, line: 482, column: 16)
!1457 = !DILocation(line: 482, column: 16, scope: !1442)
!1458 = !DILocation(line: 484, column: 42, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !1, line: 483, column: 7)
!1460 = !DILocation(line: 484, column: 9, scope: !1459)
!1461 = !DILocation(line: 485, column: 42, scope: !1459)
!1462 = !DILocation(line: 485, column: 9, scope: !1459)
!1463 = !DILocation(line: 486, column: 42, scope: !1459)
!1464 = !DILocation(line: 486, column: 9, scope: !1459)
!1465 = !DILocation(line: 487, column: 24, scope: !1459)
!1466 = !DILocation(line: 487, column: 31, scope: !1459)
!1467 = !DILocation(line: 327, column: 7, scope: !335)
!1468 = !DILocation(line: 488, column: 13, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1459, file: !1, line: 488, column: 13)
!1470 = !DILocation(line: 488, column: 52, scope: !1469)
!1471 = !DILocation(line: 488, column: 13, scope: !1459)
!1472 = !DILocation(line: 488, column: 19, scope: !1469)
!1473 = !DILocation(line: 489, column: 19, scope: !1469)
!1474 = !DILocation(line: 490, column: 31, scope: !1459)
!1475 = !DILocation(line: 491, column: 13, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1459, file: !1, line: 491, column: 13)
!1477 = !DILocation(line: 491, column: 13, scope: !1459)
!1478 = !DILocation(line: 491, column: 19, scope: !1476)
!1479 = !DILocation(line: 492, column: 19, scope: !1476)
!1480 = !DILocation(line: 493, column: 26, scope: !1459)
!1481 = !DILocation(line: 494, column: 13, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1459, file: !1, line: 494, column: 13)
!1483 = !DILocation(line: 494, column: 13, scope: !1459)
!1484 = !DILocation(line: 494, column: 19, scope: !1482)
!1485 = !DILocation(line: 495, column: 19, scope: !1482)
!1486 = !DILocation(line: 497, column: 23, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1456, file: !1, line: 497, column: 16)
!1488 = !DILocation(line: 497, column: 28, scope: !1487)
!1489 = !DILocation(line: 499, column: 42, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 498, column: 7)
!1491 = !DILocation(line: 499, column: 9, scope: !1490)
!1492 = !DILocation(line: 500, column: 42, scope: !1490)
!1493 = !DILocation(line: 500, column: 9, scope: !1490)
!1494 = !DILocation(line: 501, column: 42, scope: !1490)
!1495 = !DILocation(line: 501, column: 9, scope: !1490)
!1496 = !DILocation(line: 502, column: 42, scope: !1490)
!1497 = !DILocation(line: 502, column: 9, scope: !1490)
!1498 = !DILocation(line: 503, column: 9, scope: !1490)
!1499 = !DILocation(line: 504, column: 13, scope: !1490)
!1500 = !DILocation(line: 504, column: 27, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 504, column: 13)
!1502 = !DILocation(line: 505, column: 27, scope: !1501)
!1503 = !DILocation(line: 509, column: 21, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 509, column: 13)
!1505 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 508, column: 7)
!1506 = !DILocation(line: 509, column: 13, scope: !1505)
!1507 = !DILocation(line: 510, column: 42, scope: !1505)
!1508 = !DILocation(line: 510, column: 9, scope: !1505)
!1509 = !DILocation(line: 511, column: 42, scope: !1505)
!1510 = !DILocation(line: 511, column: 9, scope: !1505)
!1511 = !DILocation(line: 512, column: 42, scope: !1505)
!1512 = !DILocation(line: 512, column: 9, scope: !1505)
!1513 = !DILocation(line: 513, column: 24, scope: !1505)
!1514 = !DILocation(line: 513, column: 32, scope: !1505)
!1515 = !DILocation(line: 514, column: 13, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 514, column: 13)
!1517 = !DILocation(line: 514, column: 52, scope: !1516)
!1518 = !DILocation(line: 514, column: 13, scope: !1505)
!1519 = !DILocation(line: 514, column: 19, scope: !1516)
!1520 = !DILocation(line: 515, column: 19, scope: !1516)
!1521 = !DILocation(line: 516, column: 32, scope: !1505)
!1522 = !DILocation(line: 517, column: 13, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 517, column: 13)
!1524 = !DILocation(line: 517, column: 13, scope: !1505)
!1525 = !DILocation(line: 517, column: 19, scope: !1523)
!1526 = !DILocation(line: 518, column: 19, scope: !1523)
!1527 = !DILocation(line: 519, column: 32, scope: !1505)
!1528 = !DILocation(line: 520, column: 13, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 520, column: 13)
!1530 = !DILocation(line: 520, column: 13, scope: !1505)
!1531 = !DILocation(line: 520, column: 19, scope: !1529)
!1532 = !DILocation(line: 521, column: 19, scope: !1529)
!1533 = !DILocation(line: 522, column: 27, scope: !1505)
!1534 = !DILocation(line: 523, column: 13, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 523, column: 13)
!1536 = !DILocation(line: 523, column: 13, scope: !1505)
!1537 = !DILocation(line: 523, column: 19, scope: !1535)
!1538 = !DILocation(line: 524, column: 19, scope: !1535)
!1539 = !DILocation(line: 525, column: 21, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 525, column: 13)
!1541 = !DILocation(line: 525, column: 13, scope: !1505)
!1542 = !DILocation(line: 529, column: 15, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 529, column: 8)
!1544 = !DILocation(line: 531, column: 19, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !1, line: 531, column: 11)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 530, column: 5)
!1547 = !DILocation(line: 531, column: 11, scope: !1546)
!1548 = !DILocation(line: 533, column: 9, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 532, column: 7)
!1550 = !DILocation(line: 534, column: 9, scope: !1549)
!1551 = !DILocation(line: 536, column: 7, scope: !1546)
!1552 = !DILocation(line: 539, column: 25, scope: !1546)
!1553 = !DILocation(line: 540, column: 35, scope: !1546)
!1554 = !DILocation(line: 540, column: 85, scope: !1546)
!1555 = !DILocation(line: 540, column: 7, scope: !1546)
!1556 = !DILocation(line: 541, column: 27, scope: !1546)
!1557 = !DILocation(line: 545, column: 18, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1546, file: !1, line: 545, column: 11)
!1559 = !DILocation(line: 547, column: 65, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 546, column: 7)
!1561 = !DILocation(line: 545, column: 11, scope: !1546)
!1562 = !DILocation(line: 547, column: 9, scope: !1560)
!1563 = !DILocation(line: 548, column: 7, scope: !1560)
!1564 = !DILocation(line: 551, column: 9, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 550, column: 7)
!1566 = !DILocation(line: 552, column: 20, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1565, file: !1, line: 552, column: 13)
!1568 = !DILocation(line: 552, column: 13, scope: !1565)
!1569 = !DILocation(line: 554, column: 11, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 553, column: 9)
!1571 = !DILocation(line: 555, column: 9, scope: !1570)
!1572 = !DILocation(line: 558, column: 11, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 557, column: 9)
!1574 = !DILocation(line: 562, column: 27, scope: !1546)
!1575 = !DILocation(line: 564, column: 26, scope: !1546)
!1576 = !DILocation(line: 565, column: 35, scope: !1546)
!1577 = !DILocation(line: 565, column: 85, scope: !1546)
!1578 = !DILocation(line: 565, column: 7, scope: !1546)
!1579 = !DILocation(line: 566, column: 26, scope: !1546)
!1580 = !DILocation(line: 567, column: 35, scope: !1546)
!1581 = !DILocation(line: 567, column: 7, scope: !1546)
!1582 = !DILocation(line: 568, column: 5, scope: !1546)
!1583 = !DILocation(line: 570, column: 1, scope: !335)
!1584 = !DILocation(line: 580, column: 44, scope: !350)
!1585 = !DILocation(line: 580, column: 71, scope: !350)
!1586 = !DILocation(line: 584, column: 15, scope: !350)
!1587 = !DILocation(line: 584, column: 20, scope: !350)
!1588 = !DILocation(line: 584, column: 24, scope: !350)
!1589 = !DILocation(line: 586, column: 38, scope: !350)
!1590 = !DILocation(line: 586, column: 53, scope: !350)
!1591 = !DILocation(line: 586, column: 23, scope: !350)
!1592 = !DILocation(line: 588, column: 17, scope: !350)
!1593 = !DILocation(line: 583, column: 7, scope: !350)
!1594 = !DILocation(line: 582, column: 7, scope: !350)
!1595 = !DILocation(line: 591, column: 7, scope: !350)
!1596 = !DILocation(line: 593, column: 5, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !1, line: 592, column: 3)
!1598 = distinct !DILexicalBlock(scope: !350, file: !1, line: 591, column: 7)
!1599 = !DILocation(line: 596, column: 40, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 594, column: 5)
!1601 = !DILocation(line: 596, column: 7, scope: !1600)
!1602 = !DILocation(line: 597, column: 7, scope: !1600)
!1603 = !DILocation(line: 599, column: 40, scope: !1600)
!1604 = !DILocation(line: 599, column: 7, scope: !1600)
!1605 = !DILocation(line: 600, column: 40, scope: !1600)
!1606 = !DILocation(line: 600, column: 7, scope: !1600)
!1607 = !DILocation(line: 601, column: 7, scope: !1600)
!1608 = !DILocation(line: 603, column: 40, scope: !1600)
!1609 = !DILocation(line: 603, column: 7, scope: !1600)
!1610 = !DILocation(line: 604, column: 40, scope: !1600)
!1611 = !DILocation(line: 604, column: 7, scope: !1600)
!1612 = !DILocation(line: 605, column: 40, scope: !1600)
!1613 = !DILocation(line: 605, column: 7, scope: !1600)
!1614 = !DILocation(line: 606, column: 7, scope: !1600)
!1615 = !DILocation(line: 608, column: 40, scope: !1600)
!1616 = !DILocation(line: 608, column: 7, scope: !1600)
!1617 = !DILocation(line: 609, column: 40, scope: !1600)
!1618 = !DILocation(line: 609, column: 7, scope: !1600)
!1619 = !DILocation(line: 610, column: 40, scope: !1600)
!1620 = !DILocation(line: 610, column: 7, scope: !1600)
!1621 = !DILocation(line: 611, column: 7, scope: !1600)
!1622 = !DILocation(line: 616, column: 16, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !1, line: 616, column: 9)
!1624 = distinct !DILexicalBlock(scope: !1598, file: !1, line: 615, column: 3)
!1625 = !DILocation(line: 618, column: 40, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 617, column: 5)
!1627 = !DILocation(line: 616, column: 9, scope: !1624)
!1628 = !DILocation(line: 618, column: 7, scope: !1626)
!1629 = !DILocation(line: 619, column: 7, scope: !1626)
!1630 = !DILocation(line: 623, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 622, column: 5)
!1632 = !DILocation(line: 626, column: 16, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1624, file: !1, line: 626, column: 9)
!1634 = !DILocation(line: 626, column: 9, scope: !1624)
!1635 = !DILocation(line: 628, column: 40, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 627, column: 5)
!1637 = !DILocation(line: 628, column: 7, scope: !1636)
!1638 = !DILocation(line: 629, column: 18, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 629, column: 11)
!1640 = !DILocation(line: 629, column: 58, scope: !1639)
!1641 = !DILocation(line: 629, column: 11, scope: !1636)
!1642 = !DILocation(line: 629, column: 25, scope: !1639)
!1643 = !DILocation(line: 630, column: 25, scope: !1639)
!1644 = !DILocation(line: 632, column: 21, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 632, column: 14)
!1646 = !DILocation(line: 634, column: 40, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 633, column: 5)
!1648 = !DILocation(line: 634, column: 7, scope: !1647)
!1649 = !DILocation(line: 635, column: 40, scope: !1647)
!1650 = !DILocation(line: 632, column: 14, scope: !1633)
!1651 = !DILocation(line: 635, column: 7, scope: !1647)
!1652 = !DILocation(line: 636, column: 22, scope: !1647)
!1653 = !DILocation(line: 636, column: 29, scope: !1647)
!1654 = !DILocation(line: 583, column: 16, scope: !350)
!1655 = !DILocation(line: 637, column: 11, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1647, file: !1, line: 637, column: 11)
!1657 = !DILocation(line: 637, column: 50, scope: !1656)
!1658 = !DILocation(line: 637, column: 11, scope: !1647)
!1659 = !DILocation(line: 637, column: 17, scope: !1656)
!1660 = !DILocation(line: 638, column: 17, scope: !1656)
!1661 = !DILocation(line: 639, column: 24, scope: !1647)
!1662 = !DILocation(line: 640, column: 11, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1647, file: !1, line: 640, column: 11)
!1664 = !DILocation(line: 640, column: 11, scope: !1647)
!1665 = !DILocation(line: 640, column: 17, scope: !1663)
!1666 = !DILocation(line: 641, column: 17, scope: !1663)
!1667 = !DILocation(line: 646, column: 7, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 644, column: 5)
!1669 = !DILocation(line: 647, column: 22, scope: !1668)
!1670 = !DILocation(line: 647, column: 29, scope: !1668)
!1671 = !DILocation(line: 648, column: 11, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !1, line: 648, column: 11)
!1673 = !DILocation(line: 650, column: 42, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 649, column: 7)
!1675 = !DILocation(line: 648, column: 11, scope: !1668)
!1676 = !DILocation(line: 650, column: 9, scope: !1674)
!1677 = !DILocation(line: 651, column: 26, scope: !1674)
!1678 = !DILocation(line: 652, column: 13, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1674, file: !1, line: 652, column: 13)
!1680 = !DILocation(line: 652, column: 13, scope: !1674)
!1681 = !DILocation(line: 652, column: 19, scope: !1679)
!1682 = !DILocation(line: 653, column: 19, scope: !1679)
!1683 = !DILocation(line: 657, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 656, column: 7)
!1685 = !DILocation(line: 658, column: 31, scope: !1684)
!1686 = !DILocation(line: 659, column: 13, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 659, column: 13)
!1688 = !DILocation(line: 659, column: 13, scope: !1684)
!1689 = !DILocation(line: 659, column: 19, scope: !1687)
!1690 = !DILocation(line: 660, column: 19, scope: !1687)
!1691 = !DILocation(line: 661, column: 26, scope: !1684)
!1692 = !DILocation(line: 662, column: 13, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 662, column: 13)
!1694 = !DILocation(line: 662, column: 13, scope: !1684)
!1695 = !DILocation(line: 662, column: 19, scope: !1693)
!1696 = !DILocation(line: 663, column: 19, scope: !1693)
!1697 = !DILocation(line: 667, column: 1, scope: !350)
!1698 = !DILocation(line: 677, column: 46, scope: !359)
!1699 = !DILocation(line: 677, column: 73, scope: !359)
!1700 = !DILocation(line: 679, column: 30, scope: !359)
!1701 = !DILocation(line: 679, column: 35, scope: !359)
!1702 = !DILocation(line: 679, column: 49, scope: !359)
!1703 = !{!1109, !1002, i64 40}
!1704 = !DILocation(line: 679, column: 24, scope: !359)
!1705 = !DILocation(line: 682, column: 11, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !359, file: !1, line: 682, column: 7)
!1707 = !DILocation(line: 682, column: 18, scope: !1706)
!1708 = !DILocation(line: 683, column: 36, scope: !1706)
!1709 = !DILocation(line: 682, column: 7, scope: !359)
!1710 = !DILocation(line: 683, column: 5, scope: !1706)
!1711 = !DILocation(line: 686, column: 5, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 685, column: 3)
!1713 = !DILocation(line: 689, column: 52, scope: !1712)
!1714 = !DILocation(line: 689, column: 32, scope: !1712)
!1715 = !DILocation(line: 689, column: 88, scope: !1712)
!1716 = !DILocation(line: 689, column: 5, scope: !1712)
!1717 = !DILocation(line: 690, column: 52, scope: !1712)
!1718 = !DILocation(line: 690, column: 65, scope: !1712)
!1719 = !DILocation(line: 690, column: 32, scope: !1712)
!1720 = !DILocation(line: 690, column: 5, scope: !1712)
!1721 = !DILocation(line: 691, column: 52, scope: !1712)
!1722 = !DILocation(line: 691, column: 65, scope: !1712)
!1723 = !DILocation(line: 691, column: 32, scope: !1712)
!1724 = !DILocation(line: 691, column: 5, scope: !1712)
!1725 = !DILocation(line: 693, column: 1, scope: !359)
!1726 = !DILocation(line: 701, column: 41, scope: !364)
!1727 = !DILocation(line: 701, column: 68, scope: !364)
!1728 = !DILocation(line: 703, column: 33, scope: !364)
!1729 = !DILocation(line: 703, column: 38, scope: !364)
!1730 = !DILocation(line: 703, column: 52, scope: !364)
!1731 = !DILocation(line: 703, column: 24, scope: !364)
!1732 = !DILocation(line: 704, column: 52, scope: !364)
!1733 = !DILocation(line: 704, column: 34, scope: !364)
!1734 = !DILocation(line: 704, column: 39, scope: !364)
!1735 = !DILocation(line: 705, column: 23, scope: !364)
!1736 = !DILocation(line: 710, column: 53, scope: !364)
!1737 = !DILocation(line: 710, column: 28, scope: !364)
!1738 = !DILocation(line: 710, column: 41, scope: !364)
!1739 = !{!1740, !1002, i64 6480}
!1740 = !{!"storable_picture", !997, i64 0, !996, i64 4, !996, i64 8, !996, i64 12, !996, i64 16, !996, i64 20, !997, i64 24, !997, i64 1608, !997, i64 3192, !997, i64 4776, !996, i64 6360, !996, i64 6364, !996, i64 6368, !996, i64 6372, !996, i64 6376, !996, i64 6380, !996, i64 6384, !996, i64 6388, !996, i64 6392, !996, i64 6396, !996, i64 6400, !996, i64 6404, !996, i64 6408, !996, i64 6412, !996, i64 6416, !1002, i64 6424, !1002, i64 6432, !1002, i64 6440, !1002, i64 6448, !1002, i64 6456, !1002, i64 6464, !1002, i64 6472, !1002, i64 6480, !1002, i64 6488, !1002, i64 6496, !1002, i64 6504, !1002, i64 6512, !1002, i64 6520, !1002, i64 6528, !1002, i64 6536, !1002, i64 6544, !996, i64 6552, !996, i64 6556, !996, i64 6560, !996, i64 6564, !996, i64 6568, !996, i64 6572, !996, i64 6576}
!1741 = !DILocation(line: 710, column: 11, scope: !364)
!1742 = !DILocation(line: 712, column: 22, scope: !364)
!1743 = !DILocation(line: 712, column: 26, scope: !364)
!1744 = !DILocation(line: 718, column: 48, scope: !364)
!1745 = !{!1005, !996, i64 72}
!1746 = !DILocation(line: 718, column: 65, scope: !364)
!1747 = !{!1005, !996, i64 76}
!1748 = !DILocation(line: 716, column: 12, scope: !364)
!1749 = !DILocation(line: 718, column: 3, scope: !364)
!1750 = !DILocation(line: 719, column: 23, scope: !364)
!1751 = !DILocation(line: 719, column: 28, scope: !364)
!1752 = !DILocation(line: 719, column: 48, scope: !364)
!1753 = !DILocation(line: 719, column: 65, scope: !364)
!1754 = !DILocation(line: 716, column: 21, scope: !364)
!1755 = !DILocation(line: 719, column: 3, scope: !364)
!1756 = !DILocation(line: 721, column: 17, scope: !364)
!1757 = !{!1021, !996, i64 8}
!1758 = !DILocation(line: 721, column: 18, scope: !364)
!1759 = !DILocation(line: 721, column: 21, scope: !364)
!1760 = !DILocation(line: 721, column: 37, scope: !364)
!1761 = !{!1021, !996, i64 12}
!1762 = !DILocation(line: 721, column: 38, scope: !364)
!1763 = !DILocation(line: 721, column: 41, scope: !364)
!1764 = !DILocation(line: 721, column: 26, scope: !364)
!1765 = !DILocation(line: 721, column: 24, scope: !364)
!1766 = !DILocation(line: 714, column: 9, scope: !364)
!1767 = !DILocation(line: 722, column: 17, scope: !364)
!1768 = !DILocation(line: 722, column: 18, scope: !364)
!1769 = !DILocation(line: 722, column: 21, scope: !364)
!1770 = !DILocation(line: 722, column: 37, scope: !364)
!1771 = !DILocation(line: 722, column: 38, scope: !364)
!1772 = !DILocation(line: 722, column: 41, scope: !364)
!1773 = !DILocation(line: 722, column: 26, scope: !364)
!1774 = !DILocation(line: 722, column: 24, scope: !364)
!1775 = !DILocation(line: 714, column: 14, scope: !364)
!1776 = !DILocation(line: 725, column: 16, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !364, file: !1, line: 725, column: 7)
!1778 = !DILocation(line: 725, column: 8, scope: !1777)
!1779 = !DILocation(line: 725, column: 7, scope: !364)
!1780 = !DILocation(line: 727, column: 12, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !1, line: 727, column: 12)
!1782 = !DILocation(line: 727, column: 54, scope: !1781)
!1783 = !DILocation(line: 727, column: 58, scope: !1781)
!1784 = !DILocation(line: 727, column: 99, scope: !1781)
!1785 = !DILocation(line: 727, column: 103, scope: !1781)
!1786 = !DILocation(line: 731, column: 14, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !1, line: 731, column: 9)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 730, column: 3)
!1789 = !{!1005, !996, i64 72400}
!1790 = !DILocation(line: 731, column: 9, scope: !1787)
!1791 = !DILocation(line: 731, column: 29, scope: !1787)
!1792 = !DILocation(line: 731, column: 41, scope: !1787)
!1793 = !DILocation(line: 731, column: 50, scope: !1787)
!1794 = !DILocation(line: 731, column: 56, scope: !1787)
!1795 = !DILocation(line: 731, column: 90, scope: !1787)
!1796 = !DILocation(line: 731, column: 99, scope: !1787)
!1797 = !DILocation(line: 731, column: 9, scope: !1788)
!1798 = !DILocation(line: 732, column: 50, scope: !1787)
!1799 = !{!1021, !996, i64 20}
!1800 = !DILocation(line: 732, column: 12, scope: !1787)
!1801 = !DILocation(line: 732, column: 35, scope: !1787)
!1802 = !{!1021, !996, i64 16}
!1803 = !{!1804, !1804, i64 0}
!1804 = !{!"short", !997, i64 0}
!1805 = !DILocation(line: 732, column: 57, scope: !1787)
!1806 = !DILocation(line: 707, column: 12, scope: !364)
!1807 = !DILocation(line: 732, column: 7, scope: !1787)
!1808 = !DILocation(line: 734, column: 50, scope: !1787)
!1809 = !DILocation(line: 734, column: 12, scope: !1787)
!1810 = !DILocation(line: 734, column: 35, scope: !1787)
!1811 = !DILocation(line: 734, column: 57, scope: !1787)
!1812 = !DILocation(line: 737, column: 16, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !364, file: !1, line: 737, column: 7)
!1814 = !DILocation(line: 737, column: 8, scope: !1813)
!1815 = !DILocation(line: 737, column: 7, scope: !364)
!1816 = !DILocation(line: 739, column: 12, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 739, column: 12)
!1818 = !DILocation(line: 739, column: 54, scope: !1817)
!1819 = !DILocation(line: 739, column: 58, scope: !1817)
!1820 = !DILocation(line: 739, column: 99, scope: !1817)
!1821 = !DILocation(line: 739, column: 103, scope: !1817)
!1822 = !DILocation(line: 743, column: 14, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !1, line: 743, column: 9)
!1824 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 742, column: 3)
!1825 = !DILocation(line: 743, column: 9, scope: !1823)
!1826 = !DILocation(line: 743, column: 29, scope: !1823)
!1827 = !DILocation(line: 743, column: 41, scope: !1823)
!1828 = !DILocation(line: 743, column: 50, scope: !1823)
!1829 = !DILocation(line: 743, column: 56, scope: !1823)
!1830 = !DILocation(line: 743, column: 90, scope: !1823)
!1831 = !DILocation(line: 743, column: 99, scope: !1823)
!1832 = !DILocation(line: 743, column: 9, scope: !1824)
!1833 = !DILocation(line: 744, column: 50, scope: !1823)
!1834 = !DILocation(line: 744, column: 12, scope: !1823)
!1835 = !DILocation(line: 744, column: 35, scope: !1823)
!1836 = !DILocation(line: 744, column: 57, scope: !1823)
!1837 = !DILocation(line: 707, column: 9, scope: !364)
!1838 = !DILocation(line: 744, column: 7, scope: !1823)
!1839 = !DILocation(line: 746, column: 50, scope: !1823)
!1840 = !DILocation(line: 746, column: 12, scope: !1823)
!1841 = !DILocation(line: 746, column: 35, scope: !1823)
!1842 = !DILocation(line: 746, column: 57, scope: !1823)
!1843 = !DILocation(line: 749, column: 19, scope: !364)
!1844 = !DILocation(line: 708, column: 9, scope: !364)
!1845 = !DILocation(line: 750, column: 7, scope: !364)
!1846 = !DILocation(line: 750, column: 15, scope: !364)
!1847 = !DILocation(line: 751, column: 21, scope: !364)
!1848 = !DILocation(line: 709, column: 9, scope: !364)
!1849 = !DILocation(line: 753, column: 14, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !364, file: !1, line: 753, column: 7)
!1851 = !DILocation(line: 755, column: 65, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 754, column: 3)
!1853 = !DILocation(line: 753, column: 7, scope: !364)
!1854 = !DILocation(line: 755, column: 5, scope: !1852)
!1855 = !DILocation(line: 756, column: 3, scope: !1852)
!1856 = !DILocation(line: 759, column: 5, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1850, file: !1, line: 758, column: 3)
!1858 = !DILocation(line: 760, column: 12, scope: !1857)
!1859 = !DILocation(line: 762, column: 66, scope: !1857)
!1860 = !DILocation(line: 762, column: 5, scope: !1857)
!1861 = !DILocation(line: 764, column: 1, scope: !364)
!1862 = !DILocation(line: 1376, column: 46, scope: !516)
!1863 = !DILocation(line: 1377, column: 36, scope: !516)
!1864 = !DILocation(line: 1378, column: 40, scope: !516)
!1865 = !DILocation(line: 1379, column: 27, scope: !516)
!1866 = !DILocation(line: 1384, column: 13, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !516, file: !1, line: 1384, column: 7)
!1868 = !DILocation(line: 1384, column: 7, scope: !516)
!1869 = !DILocation(line: 1386, column: 5, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1867, file: !1, line: 1385, column: 3)
!1871 = !DILocation(line: 1387, column: 5, scope: !1870)
!1872 = !DILocation(line: 1391, column: 5, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1867, file: !1, line: 1390, column: 3)
!1874 = !DILocation(line: 1381, column: 16, scope: !516)
!1875 = !DILocation(line: 1393, column: 13, scope: !1873)
!1876 = !DILocation(line: 1382, column: 20, scope: !516)
!1877 = !DILocation(line: 1394, column: 13, scope: !1873)
!1878 = !DILocation(line: 1394, column: 17, scope: !1873)
!1879 = !DILocation(line: 1394, column: 5, scope: !1873)
!1880 = !DILocation(line: 1395, column: 7, scope: !1873)
!1881 = !DILocation(line: 1396, column: 5, scope: !1873)
!1882 = !DILocation(line: 1398, column: 3, scope: !516)
!1883 = !DILocation(line: 1399, column: 1, scope: !516)
!1884 = !DILocation(line: 773, column: 39, scope: !383)
!1885 = !DILocation(line: 773, column: 66, scope: !383)
!1886 = !DILocation(line: 775, column: 29, scope: !383)
!1887 = !DILocation(line: 775, column: 34, scope: !383)
!1888 = !DILocation(line: 775, column: 48, scope: !383)
!1889 = !DILocation(line: 775, column: 23, scope: !383)
!1890 = !DILocation(line: 779, column: 20, scope: !383)
!1891 = !DILocation(line: 779, column: 7, scope: !383)
!1892 = !DILocation(line: 780, column: 7, scope: !383)
!1893 = !DILocation(line: 782, column: 53, scope: !383)
!1894 = !DILocation(line: 782, column: 35, scope: !383)
!1895 = !DILocation(line: 782, column: 40, scope: !383)
!1896 = !DILocation(line: 784, column: 23, scope: !383)
!1897 = !{!1120, !996, i64 596}
!1898 = !DILocation(line: 784, column: 14, scope: !383)
!1899 = !DILocation(line: 786, column: 14, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !383, file: !1, line: 786, column: 7)
!1901 = !DILocation(line: 786, column: 7, scope: !383)
!1902 = !DILocation(line: 788, column: 13, scope: !383)
!1903 = !DILocation(line: 788, column: 25, scope: !383)
!1904 = !DILocation(line: 778, column: 7, scope: !383)
!1905 = !DILocation(line: 790, column: 11, scope: !383)
!1906 = !DILocation(line: 793, column: 28, scope: !383)
!1907 = !DILocation(line: 795, column: 14, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !383, file: !1, line: 795, column: 7)
!1909 = !DILocation(line: 797, column: 59, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 796, column: 3)
!1911 = !DILocation(line: 795, column: 7, scope: !383)
!1912 = !DILocation(line: 797, column: 5, scope: !1910)
!1913 = !DILocation(line: 798, column: 3, scope: !1910)
!1914 = !DILocation(line: 801, column: 5, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 800, column: 3)
!1916 = !DILocation(line: 777, column: 7, scope: !383)
!1917 = !DILocation(line: 803, column: 12, scope: !1915)
!1918 = !DILocation(line: 804, column: 60, scope: !1915)
!1919 = !DILocation(line: 804, column: 5, scope: !1915)
!1920 = !DILocation(line: 806, column: 1, scope: !383)
!1921 = !DILocation(line: 815, column: 36, scope: !393)
!1922 = !DILocation(line: 815, column: 63, scope: !393)
!1923 = !DILocation(line: 817, column: 11, scope: !393)
!1924 = !DILocation(line: 817, column: 16, scope: !393)
!1925 = !DILocation(line: 817, column: 7, scope: !393)
!1926 = !DILocation(line: 818, column: 16, scope: !393)
!1927 = !DILocation(line: 818, column: 7, scope: !393)
!1928 = !DILocation(line: 825, column: 22, scope: !393)
!1929 = !DILocation(line: 825, column: 29, scope: !393)
!1930 = !DILocation(line: 825, column: 7, scope: !393)
!1931 = !DILocation(line: 826, column: 22, scope: !393)
!1932 = !DILocation(line: 826, column: 7, scope: !393)
!1933 = !DILocation(line: 830, column: 38, scope: !393)
!1934 = !DILocation(line: 830, column: 52, scope: !393)
!1935 = !DILocation(line: 830, column: 24, scope: !393)
!1936 = !DILocation(line: 831, column: 52, scope: !393)
!1937 = !DILocation(line: 831, column: 34, scope: !393)
!1938 = !DILocation(line: 831, column: 39, scope: !393)
!1939 = !DILocation(line: 828, column: 12, scope: !393)
!1940 = !DILocation(line: 833, column: 3, scope: !393)
!1941 = !DILocation(line: 834, column: 23, scope: !393)
!1942 = !DILocation(line: 834, column: 28, scope: !393)
!1943 = !DILocation(line: 828, column: 21, scope: !393)
!1944 = !DILocation(line: 834, column: 3, scope: !393)
!1945 = !DILocation(line: 836, column: 15, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !393, file: !1, line: 836, column: 7)
!1947 = !DILocation(line: 836, column: 7, scope: !1946)
!1948 = !DILocation(line: 836, column: 7, scope: !393)
!1949 = !DILocation(line: 838, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !1, line: 837, column: 3)
!1951 = !DILocation(line: 819, column: 10, scope: !393)
!1952 = !DILocation(line: 839, column: 14, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1950, file: !1, line: 839, column: 9)
!1954 = !DILocation(line: 839, column: 9, scope: !1953)
!1955 = !DILocation(line: 839, column: 34, scope: !1953)
!1956 = !DILocation(line: 839, column: 29, scope: !1953)
!1957 = !DILocation(line: 841, column: 20, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 841, column: 11)
!1959 = distinct !DILexicalBlock(scope: !1953, file: !1, line: 840, column: 5)
!1960 = !DILocation(line: 841, column: 33, scope: !1958)
!1961 = !DILocation(line: 841, column: 67, scope: !1958)
!1962 = !DILocation(line: 841, column: 75, scope: !1958)
!1963 = !DILocation(line: 841, column: 11, scope: !1959)
!1964 = !DILocation(line: 843, column: 72, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1958, file: !1, line: 843, column: 16)
!1966 = !DILocation(line: 843, column: 80, scope: !1965)
!1967 = !DILocation(line: 843, column: 16, scope: !1958)
!1968 = !DILocation(line: 844, column: 11, scope: !1965)
!1969 = !DILocation(line: 844, column: 9, scope: !1965)
!1970 = !DILocation(line: 850, column: 15, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !393, file: !1, line: 850, column: 7)
!1972 = !DILocation(line: 850, column: 7, scope: !1971)
!1973 = !DILocation(line: 850, column: 7, scope: !393)
!1974 = !DILocation(line: 852, column: 9, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !1, line: 851, column: 3)
!1976 = !DILocation(line: 819, column: 7, scope: !393)
!1977 = !DILocation(line: 853, column: 14, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 853, column: 9)
!1979 = !DILocation(line: 853, column: 9, scope: !1978)
!1980 = !DILocation(line: 853, column: 34, scope: !1978)
!1981 = !DILocation(line: 853, column: 29, scope: !1978)
!1982 = !DILocation(line: 855, column: 20, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !1, line: 855, column: 11)
!1984 = distinct !DILexicalBlock(scope: !1978, file: !1, line: 854, column: 5)
!1985 = !DILocation(line: 855, column: 33, scope: !1983)
!1986 = !DILocation(line: 855, column: 67, scope: !1983)
!1987 = !DILocation(line: 855, column: 75, scope: !1983)
!1988 = !DILocation(line: 855, column: 11, scope: !1984)
!1989 = !DILocation(line: 857, column: 72, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1983, file: !1, line: 857, column: 16)
!1991 = !DILocation(line: 857, column: 80, scope: !1990)
!1992 = !DILocation(line: 857, column: 16, scope: !1983)
!1993 = !DILocation(line: 858, column: 11, scope: !1990)
!1994 = !DILocation(line: 858, column: 9, scope: !1990)
!1995 = !DILocation(line: 864, column: 22, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !393, file: !1, line: 864, column: 7)
!1997 = !DILocation(line: 823, column: 7, scope: !393)
!1998 = !DILocation(line: 864, column: 25, scope: !1996)
!1999 = !DILocation(line: 864, column: 7, scope: !393)
!2000 = !DILocation(line: 865, column: 16, scope: !1996)
!2001 = !DILocation(line: 820, column: 7, scope: !393)
!2002 = !DILocation(line: 865, column: 5, scope: !1996)
!2003 = !DILocation(line: 868, column: 21, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !1, line: 868, column: 9)
!2005 = distinct !DILexicalBlock(scope: !1996, file: !1, line: 867, column: 3)
!2006 = !DILocation(line: 869, column: 16, scope: !2004)
!2007 = !DILocation(line: 868, column: 9, scope: !2005)
!2008 = !DILocation(line: 869, column: 18, scope: !2004)
!2009 = !DILocation(line: 869, column: 7, scope: !2004)
!2010 = !DILocation(line: 871, column: 18, scope: !2004)
!2011 = !DILocation(line: 873, column: 21, scope: !393)
!2012 = !DILocation(line: 822, column: 7, scope: !393)
!2013 = !DILocation(line: 874, column: 7, scope: !393)
!2014 = !DILocation(line: 874, column: 15, scope: !393)
!2015 = !DILocation(line: 876, column: 13, scope: !393)
!2016 = !DILocation(line: 821, column: 7, scope: !393)
!2017 = !DILocation(line: 878, column: 15, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !393, file: !1, line: 878, column: 7)
!2019 = !DILocation(line: 879, column: 37, scope: !2018)
!2020 = !DILocation(line: 878, column: 7, scope: !393)
!2021 = !DILocation(line: 879, column: 5, scope: !2018)
!2022 = !DILocation(line: 882, column: 5, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !1, line: 881, column: 3)
!2024 = !DILocation(line: 883, column: 12, scope: !2023)
!2025 = !DILocation(line: 884, column: 14, scope: !2023)
!2026 = !DILocation(line: 885, column: 70, scope: !2023)
!2027 = !DILocation(line: 885, column: 5, scope: !2023)
!2028 = !DILocation(line: 887, column: 41, scope: !2023)
!2029 = !DILocation(line: 887, column: 5, scope: !2023)
!2030 = !DILocation(line: 889, column: 1, scope: !393)
!2031 = !DILocation(line: 1508, column: 56, scope: !554)
!2032 = !DILocation(line: 1509, column: 46, scope: !554)
!2033 = !DILocation(line: 1510, column: 50, scope: !554)
!2034 = !DILocation(line: 1511, column: 46, scope: !554)
!2035 = !DILocation(line: 1514, column: 16, scope: !554)
!2036 = !DILocation(line: 1515, column: 20, scope: !554)
!2037 = !DILocation(line: 1516, column: 16, scope: !554)
!2038 = !DILocation(line: 1518, column: 13, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !554, file: !1, line: 1518, column: 7)
!2040 = !DILocation(line: 1518, column: 7, scope: !554)
!2041 = !DILocation(line: 1520, column: 5, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 1519, column: 3)
!2043 = !DILocation(line: 1521, column: 5, scope: !2042)
!2044 = !DILocation(line: 1525, column: 5, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 1524, column: 3)
!2046 = !DILocation(line: 1513, column: 16, scope: !554)
!2047 = !DILocation(line: 1513, column: 18, scope: !554)
!2048 = !DILocation(line: 1528, column: 9, scope: !2045)
!2049 = !DILocation(line: 1529, column: 14, scope: !2045)
!2050 = !DILocation(line: 1529, column: 18, scope: !2045)
!2051 = !DILocation(line: 1529, column: 22, scope: !2045)
!2052 = !DILocation(line: 1532, column: 12, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !1, line: 1532, column: 11)
!2054 = distinct !DILexicalBlock(scope: !2045, file: !1, line: 1530, column: 5)
!2055 = !DILocation(line: 1529, column: 30, scope: !2045)
!2056 = !DILocation(line: 1529, column: 5, scope: !2045)
!2057 = !DILocation(line: 1531, column: 7, scope: !2054)
!2058 = !DILocation(line: 1532, column: 18, scope: !2053)
!2059 = !DILocation(line: 1532, column: 27, scope: !2053)
!2060 = !DILocation(line: 1532, column: 11, scope: !2054)
!2061 = !DILocation(line: 1533, column: 14, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2054, file: !1, line: 1533, column: 11)
!2063 = !DILocation(line: 1533, column: 29, scope: !2062)
!2064 = !DILocation(line: 1533, column: 11, scope: !2054)
!2065 = !DILocation(line: 1535, column: 16, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2045, file: !1, line: 1535, column: 9)
!2067 = !DILocation(line: 1535, column: 9, scope: !2045)
!2068 = !DILocation(line: 1535, column: 29, scope: !2066)
!2069 = !DILocation(line: 1536, column: 49, scope: !2066)
!2070 = !DILocation(line: 1536, column: 10, scope: !2066)
!2071 = !DILocation(line: 1539, column: 1, scope: !554)
!2072 = !DILocation(line: 899, column: 43, scope: !412)
!2073 = !DILocation(line: 899, column: 70, scope: !412)
!2074 = !DILocation(line: 901, column: 34, scope: !412)
!2075 = !DILocation(line: 901, column: 39, scope: !412)
!2076 = !DILocation(line: 901, column: 53, scope: !412)
!2077 = !DILocation(line: 901, column: 24, scope: !412)
!2078 = !DILocation(line: 902, column: 53, scope: !412)
!2079 = !DILocation(line: 902, column: 35, scope: !412)
!2080 = !DILocation(line: 902, column: 40, scope: !412)
!2081 = !DILocation(line: 904, column: 38, scope: !412)
!2082 = !DILocation(line: 904, column: 23, scope: !412)
!2083 = !DILocation(line: 906, column: 15, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !412, file: !1, line: 906, column: 7)
!2085 = !DILocation(line: 906, column: 31, scope: !2084)
!2086 = !DILocation(line: 906, column: 7, scope: !412)
!2087 = !DILocation(line: 907, column: 43, scope: !2084)
!2088 = !{!1120, !996, i64 524}
!2089 = !DILocation(line: 907, column: 56, scope: !2084)
!2090 = !DILocation(line: 907, column: 15, scope: !2084)
!2091 = !DILocation(line: 909, column: 15, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !412, file: !1, line: 909, column: 7)
!2093 = !DILocation(line: 909, column: 33, scope: !2092)
!2094 = !DILocation(line: 909, column: 7, scope: !412)
!2095 = !DILocation(line: 910, column: 45, scope: !2092)
!2096 = !DILocation(line: 910, column: 58, scope: !2092)
!2097 = !DILocation(line: 910, column: 15, scope: !2092)
!2098 = !DILocation(line: 912, column: 14, scope: !412)
!2099 = !DILocation(line: 914, column: 14, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !412, file: !1, line: 914, column: 7)
!2101 = !DILocation(line: 914, column: 69, scope: !2100)
!2102 = !DILocation(line: 914, column: 7, scope: !412)
!2103 = !DILocation(line: 914, column: 19, scope: !2100)
!2104 = !DILocation(line: 917, column: 5, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !1, line: 916, column: 3)
!2106 = !DILocation(line: 918, column: 56, scope: !2105)
!2107 = !DILocation(line: 918, column: 78, scope: !2105)
!2108 = !DILocation(line: 918, column: 5, scope: !2105)
!2109 = !DILocation(line: 920, column: 1, scope: !412)
!2110 = !DILocation(line: 1410, column: 50, scope: !526)
!2111 = !DILocation(line: 1411, column: 40, scope: !526)
!2112 = !DILocation(line: 1412, column: 44, scope: !526)
!2113 = !DILocation(line: 1413, column: 31, scope: !526)
!2114 = !DILocation(line: 1414, column: 40, scope: !526)
!2115 = !DILocation(line: 1419, column: 13, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !526, file: !1, line: 1419, column: 7)
!2117 = !DILocation(line: 1419, column: 7, scope: !526)
!2118 = !DILocation(line: 1421, column: 5, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !1, line: 1420, column: 3)
!2120 = !DILocation(line: 1422, column: 5, scope: !2119)
!2121 = !DILocation(line: 1426, column: 5, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2116, file: !1, line: 1425, column: 3)
!2123 = !DILocation(line: 1416, column: 16, scope: !526)
!2124 = !DILocation(line: 1428, column: 13, scope: !2122)
!2125 = !DILocation(line: 1417, column: 20, scope: !526)
!2126 = !DILocation(line: 1429, column: 13, scope: !2122)
!2127 = !DILocation(line: 1429, column: 17, scope: !2122)
!2128 = !DILocation(line: 1429, column: 5, scope: !2122)
!2129 = !DILocation(line: 1430, column: 7, scope: !2122)
!2130 = !DILocation(line: 1431, column: 15, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2122, file: !1, line: 1431, column: 9)
!2132 = !DILocation(line: 1431, column: 9, scope: !2122)
!2133 = !DILocation(line: 1432, column: 9, scope: !2131)
!2134 = !DILocation(line: 1435, column: 1, scope: !526)
!2135 = !DILocation(line: 930, column: 30, scope: !422)
!2136 = !DILocation(line: 930, column: 38, scope: !422)
!2137 = !DILocation(line: 930, column: 47, scope: !422)
!2138 = !DILocation(line: 930, column: 64, scope: !422)
!2139 = !DILocation(line: 930, column: 76, scope: !422)
!2140 = !DILocation(line: 930, column: 106, scope: !422)
!2141 = !DILocation(line: 935, column: 15, scope: !422)
!2142 = !DILocation(line: 935, column: 18, scope: !422)
!2143 = !DILocation(line: 935, column: 7, scope: !422)
!2144 = !DILocation(line: 936, column: 15, scope: !422)
!2145 = !DILocation(line: 936, column: 18, scope: !422)
!2146 = !DILocation(line: 936, column: 7, scope: !422)
!2147 = !DILocation(line: 938, column: 12, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !422, file: !1, line: 938, column: 7)
!2149 = !DILocation(line: 938, column: 7, scope: !422)
!2150 = !DILocation(line: 940, column: 17, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !1, line: 940, column: 9)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 939, column: 3)
!2153 = !DILocation(line: 940, column: 33, scope: !2151)
!2154 = !DILocation(line: 940, column: 9, scope: !2152)
!2155 = !DILocation(line: 944, column: 37, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !1, line: 944, column: 10)
!2157 = distinct !DILexicalBlock(scope: !2151, file: !1, line: 943, column: 5)
!2158 = !DILocation(line: 944, column: 44, scope: !2156)
!2159 = !DILocation(line: 944, column: 10, scope: !2157)
!2160 = !DILocation(line: 947, column: 44, scope: !2156)
!2161 = !{!1120, !996, i64 460}
!2162 = !DILocation(line: 947, column: 56, scope: !2156)
!2163 = !DILocation(line: 947, column: 52, scope: !2156)
!2164 = !DILocation(line: 947, column: 48, scope: !2156)
!2165 = !DILocation(line: 947, column: 67, scope: !2156)
!2166 = !DILocation(line: 947, column: 14, scope: !2156)
!2167 = !DILocation(line: 952, column: 21, scope: !2148)
!2168 = !DILocation(line: 952, column: 17, scope: !2148)
!2169 = !DILocation(line: 952, column: 34, scope: !2148)
!2170 = !DILocation(line: 952, column: 11, scope: !2148)
!2171 = !DILocation(line: 954, column: 12, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !422, file: !1, line: 954, column: 7)
!2173 = !DILocation(line: 954, column: 7, scope: !422)
!2174 = !DILocation(line: 956, column: 25, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !1, line: 955, column: 3)
!2176 = !DILocation(line: 956, column: 30, scope: !2175)
!2177 = !DILocation(line: 932, column: 12, scope: !422)
!2178 = !DILocation(line: 956, column: 5, scope: !2175)
!2179 = !DILocation(line: 957, column: 17, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2175, file: !1, line: 957, column: 9)
!2181 = !DILocation(line: 957, column: 9, scope: !2180)
!2182 = !DILocation(line: 957, column: 9, scope: !2175)
!2183 = !DILocation(line: 960, column: 33, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !1, line: 960, column: 12)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !1, line: 959, column: 7)
!2186 = distinct !DILexicalBlock(scope: !2180, file: !1, line: 958, column: 5)
!2187 = !DILocation(line: 960, column: 12, scope: !2184)
!2188 = !DILocation(line: 960, column: 17, scope: !2184)
!2189 = !DILocation(line: 960, column: 42, scope: !2184)
!2190 = !DILocation(line: 960, column: 49, scope: !2184)
!2191 = !DILocation(line: 960, column: 12, scope: !2185)
!2192 = !DILocation(line: 963, column: 49, scope: !2184)
!2193 = !DILocation(line: 963, column: 71, scope: !2184)
!2194 = !DILocation(line: 963, column: 72, scope: !2184)
!2195 = !DILocation(line: 963, column: 61, scope: !2184)
!2196 = !DILocation(line: 963, column: 75, scope: !2184)
!2197 = !DILocation(line: 963, column: 57, scope: !2184)
!2198 = !DILocation(line: 963, column: 53, scope: !2184)
!2199 = !DILocation(line: 963, column: 81, scope: !2184)
!2200 = !DILocation(line: 963, column: 16, scope: !2184)
!2201 = !DILocation(line: 971, column: 21, scope: !2172)
!2202 = !DILocation(line: 971, column: 17, scope: !2172)
!2203 = !DILocation(line: 971, column: 30, scope: !2172)
!2204 = !DILocation(line: 971, column: 11, scope: !2172)
!2205 = !DILocation(line: 974, column: 32, scope: !422)
!2206 = !DILocation(line: 975, column: 5, scope: !422)
!2207 = !DILocation(line: 975, column: 10, scope: !422)
!2208 = !DILocation(line: 975, column: 24, scope: !422)
!2209 = !DILocation(line: 975, column: 54, scope: !422)
!2210 = !DILocation(line: 975, column: 52, scope: !422)
!2211 = !DILocation(line: 974, column: 3, scope: !422)
!2212 = !DILocation(line: 976, column: 1, scope: !422)
!2213 = !DILocation(line: 985, column: 36, scope: !437)
!2214 = !DILocation(line: 985, column: 63, scope: !437)
!2215 = !DILocation(line: 987, column: 30, scope: !437)
!2216 = !DILocation(line: 987, column: 35, scope: !437)
!2217 = !DILocation(line: 987, column: 49, scope: !437)
!2218 = !DILocation(line: 987, column: 24, scope: !437)
!2219 = !DILocation(line: 988, column: 43, scope: !437)
!2220 = !DILocation(line: 988, column: 25, scope: !437)
!2221 = !DILocation(line: 988, column: 30, scope: !437)
!2222 = !DILocation(line: 988, column: 15, scope: !437)
!2223 = !DILocation(line: 992, column: 17, scope: !437)
!2224 = !DILocation(line: 992, column: 7, scope: !437)
!2225 = !DILocation(line: 994, column: 7, scope: !437)
!2226 = !DILocation(line: 996, column: 3, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !437, file: !1, line: 996, column: 3)
!2228 = !DILocation(line: 999, column: 35, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !1, line: 997, column: 3)
!2230 = distinct !DILexicalBlock(scope: !2227, file: !1, line: 996, column: 3)
!2231 = !DILocation(line: 999, column: 32, scope: !2229)
!2232 = !DILocation(line: 999, column: 5, scope: !2229)
!2233 = !DILocation(line: 996, column: 22, scope: !2230)
!2234 = !DILocation(line: 1002, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !437, file: !1, line: 1002, column: 7)
!2236 = !DILocation(line: 1002, column: 12, scope: !2235)
!2237 = !{!1005, !996, i64 72700}
!2238 = !DILocation(line: 1002, column: 23, scope: !2235)
!2239 = !DILocation(line: 1002, column: 7, scope: !437)
!2240 = !DILocation(line: 990, column: 10, scope: !437)
!2241 = !DILocation(line: 1006, column: 17, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !1, line: 1006, column: 9)
!2243 = distinct !DILexicalBlock(scope: !2235, file: !1, line: 1003, column: 3)
!2244 = !DILocation(line: 1006, column: 33, scope: !2242)
!2245 = !DILocation(line: 1006, column: 9, scope: !2243)
!2246 = !DILocation(line: 1008, column: 37, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 1008, column: 10)
!2248 = distinct !DILexicalBlock(scope: !2242, file: !1, line: 1007, column: 5)
!2249 = !DILocation(line: 1008, column: 44, scope: !2247)
!2250 = !DILocation(line: 1008, column: 10, scope: !2248)
!2251 = !DILocation(line: 1011, column: 41, scope: !2247)
!2252 = !DILocation(line: 1011, column: 45, scope: !2247)
!2253 = !DILocation(line: 1011, column: 13, scope: !2247)
!2254 = !DILocation(line: 990, column: 7, scope: !437)
!2255 = !DILocation(line: 1016, column: 17, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2243, file: !1, line: 1016, column: 9)
!2257 = !DILocation(line: 1016, column: 35, scope: !2256)
!2258 = !DILocation(line: 1016, column: 9, scope: !2243)
!2259 = !DILocation(line: 1018, column: 39, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !1, line: 1018, column: 10)
!2261 = distinct !DILexicalBlock(scope: !2256, file: !1, line: 1017, column: 5)
!2262 = !DILocation(line: 1018, column: 46, scope: !2260)
!2263 = !DILocation(line: 1018, column: 10, scope: !2261)
!2264 = !DILocation(line: 1021, column: 43, scope: !2260)
!2265 = !DILocation(line: 1021, column: 47, scope: !2260)
!2266 = !DILocation(line: 1021, column: 13, scope: !2260)
!2267 = !DILocation(line: 1024, column: 21, scope: !2243)
!2268 = !DILocation(line: 1025, column: 20, scope: !2243)
!2269 = !DILocation(line: 1026, column: 33, scope: !2243)
!2270 = !DILocation(line: 1026, column: 79, scope: !2243)
!2271 = !DILocation(line: 1026, column: 5, scope: !2243)
!2272 = !DILocation(line: 1028, column: 9, scope: !2243)
!2273 = !DILocation(line: 1031, column: 19, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !1, line: 1031, column: 11)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !1, line: 1029, column: 5)
!2276 = distinct !DILexicalBlock(scope: !2243, file: !1, line: 1028, column: 9)
!2277 = !DILocation(line: 1031, column: 35, scope: !2274)
!2278 = !DILocation(line: 1031, column: 11, scope: !2275)
!2279 = !DILocation(line: 1033, column: 39, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !1, line: 1033, column: 12)
!2281 = distinct !DILexicalBlock(scope: !2274, file: !1, line: 1032, column: 7)
!2282 = !DILocation(line: 1033, column: 46, scope: !2280)
!2283 = !DILocation(line: 1033, column: 12, scope: !2281)
!2284 = !DILocation(line: 1036, column: 42, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2280, file: !1, line: 1036, column: 15)
!2286 = !DILocation(line: 1036, column: 46, scope: !2285)
!2287 = !DILocation(line: 1036, column: 15, scope: !2280)
!2288 = !DILocation(line: 1037, column: 58, scope: !2285)
!2289 = !DILocation(line: 1037, column: 18, scope: !2285)
!2290 = !DILocation(line: 1037, column: 13, scope: !2285)
!2291 = !DILocation(line: 1042, column: 19, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2275, file: !1, line: 1042, column: 11)
!2293 = !DILocation(line: 1042, column: 37, scope: !2292)
!2294 = !DILocation(line: 1042, column: 11, scope: !2275)
!2295 = !DILocation(line: 1044, column: 41, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 1044, column: 12)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !1, line: 1043, column: 7)
!2298 = !DILocation(line: 1044, column: 48, scope: !2296)
!2299 = !DILocation(line: 1044, column: 12, scope: !2297)
!2300 = !DILocation(line: 1047, column: 44, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !1, line: 1047, column: 15)
!2302 = !DILocation(line: 1047, column: 48, scope: !2301)
!2303 = !DILocation(line: 1047, column: 15, scope: !2296)
!2304 = !DILocation(line: 1048, column: 60, scope: !2301)
!2305 = !DILocation(line: 1048, column: 18, scope: !2301)
!2306 = !DILocation(line: 1048, column: 13, scope: !2301)
!2307 = !DILocation(line: 1051, column: 23, scope: !2275)
!2308 = !DILocation(line: 1052, column: 27, scope: !2275)
!2309 = !DILocation(line: 1053, column: 35, scope: !2275)
!2310 = !DILocation(line: 1053, column: 81, scope: !2275)
!2311 = !DILocation(line: 1053, column: 7, scope: !2275)
!2312 = !DILocation(line: 1054, column: 5, scope: !2275)
!2313 = !DILocation(line: 1056, column: 1, scope: !437)
!2314 = !DILocation(line: 1076, column: 49, scope: !450)
!2315 = !DILocation(line: 1076, column: 80, scope: !450)
!2316 = !DILocation(line: 1076, column: 92, scope: !450)
!2317 = !DILocation(line: 1076, column: 102, scope: !450)
!2318 = !DILocation(line: 1080, column: 38, scope: !450)
!2319 = !DILocation(line: 1080, column: 81, scope: !450)
!2320 = !DILocation(line: 1081, column: 26, scope: !450)
!2321 = !DILocation(line: 1082, column: 26, scope: !450)
!2322 = !DILocation(line: 1082, column: 38, scope: !450)
!2323 = !DILocation(line: 1082, column: 42, scope: !450)
!2324 = !DILocation(line: 1082, column: 47, scope: !450)
!2325 = !{!1005, !996, i64 84}
!2326 = !DILocation(line: 1082, column: 41, scope: !450)
!2327 = !DILocation(line: 1083, column: 38, scope: !450)
!2328 = !DILocation(line: 1084, column: 38, scope: !450)
!2329 = !DILocation(line: 1085, column: 32, scope: !450)
!2330 = !DILocation(line: 1085, column: 36, scope: !450)
!2331 = !DILocation(line: 1085, column: 41, scope: !450)
!2332 = !DILocation(line: 1085, column: 35, scope: !450)
!2333 = !DILocation(line: 1086, column: 32, scope: !450)
!2334 = !DILocation(line: 1087, column: 27, scope: !450)
!2335 = !DILocation(line: 1087, column: 45, scope: !450)
!2336 = !DILocation(line: 1087, column: 50, scope: !450)
!2337 = !DILocation(line: 1088, column: 50, scope: !450)
!2338 = !DILocation(line: 1088, column: 22, scope: !450)
!2339 = !DILocation(line: 1088, column: 7, scope: !450)
!2340 = !DILocation(line: 1089, column: 22, scope: !450)
!2341 = !DILocation(line: 1090, column: 27, scope: !450)
!2342 = !{!1005, !996, i64 80}
!2343 = !DILocation(line: 1090, column: 22, scope: !450)
!2344 = !DILocation(line: 1090, column: 7, scope: !450)
!2345 = !DILocation(line: 1091, column: 7, scope: !450)
!2346 = !DILocation(line: 1092, column: 7, scope: !450)
!2347 = !DILocation(line: 1095, column: 7, scope: !450)
!2348 = !DILocation(line: 1096, column: 7, scope: !450)
!2349 = !DILocation(line: 1101, column: 30, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !1, line: 1100, column: 3)
!2351 = distinct !DILexicalBlock(scope: !450, file: !1, line: 1099, column: 7)
!2352 = !DILocation(line: 1098, column: 12, scope: !450)
!2353 = !DILocation(line: 1099, column: 12, scope: !2351)
!2354 = !DILocation(line: 1101, column: 5, scope: !2350)
!2355 = !DILocation(line: 1102, column: 25, scope: !2350)
!2356 = !DILocation(line: 1102, column: 30, scope: !2350)
!2357 = !DILocation(line: 1098, column: 21, scope: !450)
!2358 = !DILocation(line: 1102, column: 5, scope: !2350)
!2359 = !DILocation(line: 1103, column: 9, scope: !2350)
!2360 = !DILocation(line: 1105, column: 19, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !1, line: 1105, column: 11)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !1, line: 1104, column: 5)
!2363 = distinct !DILexicalBlock(scope: !2350, file: !1, line: 1103, column: 9)
!2364 = !DILocation(line: 1105, column: 11, scope: !2361)
!2365 = !DILocation(line: 1105, column: 11, scope: !2362)
!2366 = !DILocation(line: 1106, column: 31, scope: !2361)
!2367 = !DILocation(line: 1106, column: 22, scope: !2361)
!2368 = !DILocation(line: 1106, column: 43, scope: !2361)
!2369 = !DILocation(line: 1106, column: 33, scope: !2361)
!2370 = !DILocation(line: 1106, column: 9, scope: !2361)
!2371 = !DILocation(line: 1107, column: 19, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2362, file: !1, line: 1107, column: 11)
!2373 = !DILocation(line: 1107, column: 11, scope: !2372)
!2374 = !DILocation(line: 1107, column: 11, scope: !2362)
!2375 = !DILocation(line: 1108, column: 31, scope: !2372)
!2376 = !DILocation(line: 1108, column: 22, scope: !2372)
!2377 = !DILocation(line: 1108, column: 43, scope: !2372)
!2378 = !DILocation(line: 1108, column: 33, scope: !2372)
!2379 = !DILocation(line: 1108, column: 9, scope: !2372)
!2380 = !DILocation(line: 1113, column: 5, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2351, file: !1, line: 1112, column: 3)
!2382 = !DILocation(line: 1114, column: 27, scope: !2381)
!2383 = !DILocation(line: 1114, column: 32, scope: !2381)
!2384 = !DILocation(line: 1114, column: 5, scope: !2381)
!2385 = !DILocation(line: 1115, column: 13, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2381, file: !1, line: 1115, column: 9)
!2387 = !DILocation(line: 1117, column: 19, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !1, line: 1117, column: 11)
!2389 = distinct !DILexicalBlock(scope: !2386, file: !1, line: 1116, column: 5)
!2390 = !DILocation(line: 1117, column: 11, scope: !2388)
!2391 = !DILocation(line: 1117, column: 11, scope: !2389)
!2392 = !DILocation(line: 1118, column: 31, scope: !2388)
!2393 = !DILocation(line: 1118, column: 22, scope: !2388)
!2394 = !DILocation(line: 1118, column: 43, scope: !2388)
!2395 = !DILocation(line: 1118, column: 33, scope: !2388)
!2396 = !DILocation(line: 1118, column: 9, scope: !2388)
!2397 = !DILocation(line: 1119, column: 19, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2389, file: !1, line: 1119, column: 11)
!2399 = !DILocation(line: 1119, column: 11, scope: !2398)
!2400 = !DILocation(line: 1119, column: 11, scope: !2389)
!2401 = !DILocation(line: 1120, column: 31, scope: !2398)
!2402 = !DILocation(line: 1120, column: 22, scope: !2398)
!2403 = !DILocation(line: 1120, column: 43, scope: !2398)
!2404 = !DILocation(line: 1120, column: 33, scope: !2398)
!2405 = !DILocation(line: 1120, column: 9, scope: !2398)
!2406 = !DILocation(line: 1124, column: 18, scope: !450)
!2407 = !DILocation(line: 1124, column: 29, scope: !450)
!2408 = !DILocation(line: 1124, column: 39, scope: !450)
!2409 = !DILocation(line: 1124, column: 37, scope: !450)
!2410 = !DILocation(line: 1124, column: 41, scope: !450)
!2411 = !DILocation(line: 1124, column: 46, scope: !450)
!2412 = !DILocation(line: 1124, column: 81, scope: !450)
!2413 = !DILocation(line: 1124, column: 70, scope: !450)
!2414 = !DILocation(line: 1124, column: 79, scope: !450)
!2415 = !DILocation(line: 1124, column: 83, scope: !450)
!2416 = !DILocation(line: 1124, column: 90, scope: !450)
!2417 = !DILocation(line: 1124, column: 94, scope: !450)
!2418 = !DILocation(line: 1089, column: 7, scope: !450)
!2419 = !DILocation(line: 1126, column: 7, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !450, file: !1, line: 1126, column: 7)
!2421 = !DILocation(line: 1126, column: 7, scope: !450)
!2422 = !DILocation(line: 1128, column: 9, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2420, file: !1, line: 1127, column: 3)
!2424 = !DILocation(line: 1130, column: 31, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !1, line: 1129, column: 5)
!2426 = distinct !DILexicalBlock(scope: !2423, file: !1, line: 1128, column: 9)
!2427 = !DILocation(line: 1130, column: 15, scope: !2425)
!2428 = !DILocation(line: 1130, column: 26, scope: !2425)
!2429 = !{!1120, !1122, i64 504}
!2430 = !DILocation(line: 1131, column: 37, scope: !2425)
!2431 = !DILocation(line: 1131, column: 31, scope: !2425)
!2432 = !DILocation(line: 1132, column: 37, scope: !2425)
!2433 = !DILocation(line: 1132, column: 31, scope: !2425)
!2434 = !DILocation(line: 1133, column: 37, scope: !2425)
!2435 = !DILocation(line: 1133, column: 31, scope: !2425)
!2436 = !DILocation(line: 1131, column: 26, scope: !2425)
!2437 = !DILocation(line: 1132, column: 26, scope: !2425)
!2438 = !DILocation(line: 1133, column: 26, scope: !2425)
!2439 = !DILocation(line: 1134, column: 5, scope: !2425)
!2440 = !DILocation(line: 1137, column: 31, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !1, line: 1136, column: 5)
!2442 = distinct !DILexicalBlock(scope: !2426, file: !1, line: 1135, column: 14)
!2443 = !DILocation(line: 1137, column: 15, scope: !2441)
!2444 = !DILocation(line: 1137, column: 26, scope: !2441)
!2445 = !DILocation(line: 1138, column: 37, scope: !2441)
!2446 = !DILocation(line: 1138, column: 31, scope: !2441)
!2447 = !DILocation(line: 1138, column: 26, scope: !2441)
!2448 = !DILocation(line: 1139, column: 5, scope: !2441)
!2449 = !DILocation(line: 1142, column: 31, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 1141, column: 5)
!2451 = distinct !DILexicalBlock(scope: !2442, file: !1, line: 1140, column: 14)
!2452 = !DILocation(line: 1142, column: 29, scope: !2450)
!2453 = !DILocation(line: 1142, column: 15, scope: !2450)
!2454 = !DILocation(line: 1142, column: 26, scope: !2450)
!2455 = !DILocation(line: 1140, column: 14, scope: !2442)
!2456 = !DILocation(line: 1143, column: 37, scope: !2450)
!2457 = !DILocation(line: 1143, column: 31, scope: !2450)
!2458 = !DILocation(line: 1143, column: 29, scope: !2450)
!2459 = !DILocation(line: 1143, column: 26, scope: !2450)
!2460 = !DILocation(line: 1144, column: 5, scope: !2450)
!2461 = !DILocation(line: 1151, column: 18, scope: !450)
!2462 = !DILocation(line: 1151, column: 64, scope: !450)
!2463 = !DILocation(line: 1151, column: 52, scope: !450)
!2464 = !DILocation(line: 1152, column: 11, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !450, file: !1, line: 1152, column: 7)
!2466 = !DILocation(line: 1152, column: 7, scope: !450)
!2467 = !DILocation(line: 1154, column: 17, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !1, line: 1154, column: 9)
!2469 = distinct !DILexicalBlock(scope: !2465, file: !1, line: 1153, column: 3)
!2470 = !DILocation(line: 1154, column: 9, scope: !2468)
!2471 = !DILocation(line: 1154, column: 9, scope: !2469)
!2472 = !DILocation(line: 1156, column: 31, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 1156, column: 10)
!2474 = distinct !DILexicalBlock(scope: !2468, file: !1, line: 1155, column: 5)
!2475 = !DILocation(line: 1156, column: 10, scope: !2473)
!2476 = !DILocation(line: 1156, column: 15, scope: !2473)
!2477 = !DILocation(line: 1156, column: 40, scope: !2473)
!2478 = !DILocation(line: 1156, column: 47, scope: !2473)
!2479 = !DILocation(line: 1156, column: 10, scope: !2474)
!2480 = !DILocation(line: 1159, column: 21, scope: !2473)
!2481 = !DILocation(line: 1163, column: 17, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2469, file: !1, line: 1163, column: 9)
!2483 = !DILocation(line: 1163, column: 9, scope: !2482)
!2484 = !DILocation(line: 1163, column: 9, scope: !2469)
!2485 = !DILocation(line: 1174, column: 50, scope: !2469)
!2486 = !DILocation(line: 1165, column: 31, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !1, line: 1165, column: 10)
!2488 = distinct !DILexicalBlock(scope: !2482, file: !1, line: 1164, column: 5)
!2489 = !DILocation(line: 1165, column: 10, scope: !2487)
!2490 = !DILocation(line: 1165, column: 15, scope: !2487)
!2491 = !DILocation(line: 1165, column: 40, scope: !2487)
!2492 = !DILocation(line: 1165, column: 47, scope: !2487)
!2493 = !DILocation(line: 1165, column: 10, scope: !2488)
!2494 = !DILocation(line: 1168, column: 20, scope: !2487)
!2495 = !DILocation(line: 1171, column: 12, scope: !2469)
!2496 = !DILocation(line: 1171, column: 22, scope: !2469)
!2497 = !DILocation(line: 1093, column: 7, scope: !450)
!2498 = !DILocation(line: 1174, column: 34, scope: !2469)
!2499 = !DILocation(line: 1174, column: 92, scope: !2469)
!2500 = !DILocation(line: 1174, column: 55, scope: !2469)
!2501 = !DILocation(line: 1174, column: 69, scope: !2469)
!2502 = !DILocation(line: 1174, column: 112, scope: !2469)
!2503 = !DILocation(line: 1174, column: 5, scope: !2469)
!2504 = !DILocation(line: 1175, column: 3, scope: !2469)
!2505 = !DILocation(line: 1176, column: 1, scope: !450)
!2506 = !DILocation(line: 1235, column: 42, scope: !476)
!2507 = !DILocation(line: 1235, column: 73, scope: !476)
!2508 = !DILocation(line: 1235, column: 85, scope: !476)
!2509 = !DILocation(line: 1235, column: 95, scope: !476)
!2510 = !DILocation(line: 1235, column: 108, scope: !476)
!2511 = !DILocation(line: 1238, column: 9, scope: !476)
!2512 = !DILocation(line: 1239, column: 19, scope: !476)
!2513 = !DILocation(line: 1239, column: 31, scope: !476)
!2514 = !DILocation(line: 1239, column: 9, scope: !476)
!2515 = !DILocation(line: 1241, column: 35, scope: !476)
!2516 = !DILocation(line: 1241, column: 40, scope: !476)
!2517 = !{!1005, !996, i64 28}
!2518 = !DILocation(line: 1241, column: 49, scope: !476)
!2519 = !DILocation(line: 1241, column: 57, scope: !476)
!2520 = !DILocation(line: 1241, column: 68, scope: !476)
!2521 = !DILocation(line: 1242, column: 87, scope: !476)
!2522 = !DILocation(line: 1242, column: 41, scope: !476)
!2523 = !DILocation(line: 1242, column: 46, scope: !476)
!2524 = !DILocation(line: 1242, column: 60, scope: !476)
!2525 = !DILocation(line: 1242, column: 70, scope: !476)
!2526 = !DILocation(line: 1243, column: 40, scope: !476)
!2527 = !DILocation(line: 1242, column: 35, scope: !476)
!2528 = !DILocation(line: 1244, column: 87, scope: !476)
!2529 = !DILocation(line: 1244, column: 41, scope: !476)
!2530 = !DILocation(line: 1244, column: 69, scope: !476)
!2531 = !DILocation(line: 1245, column: 39, scope: !476)
!2532 = !DILocation(line: 1244, column: 35, scope: !476)
!2533 = !DILocation(line: 1247, column: 7, scope: !476)
!2534 = !DILocation(line: 1249, column: 22, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !1, line: 1248, column: 3)
!2536 = distinct !DILexicalBlock(scope: !476, file: !1, line: 1247, column: 7)
!2537 = !DILocation(line: 1250, column: 3, scope: !2535)
!2538 = !DILocation(line: 1237, column: 9, scope: !476)
!2539 = !DILocation(line: 1252, column: 14, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !1, line: 1252, column: 3)
!2541 = distinct !DILexicalBlock(scope: !476, file: !1, line: 1252, column: 3)
!2542 = !DILocation(line: 1252, column: 15, scope: !2540)
!2543 = !DILocation(line: 1252, column: 3, scope: !2541)
!2544 = !DILocation(line: 1256, column: 42, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !1, line: 1256, column: 9)
!2546 = distinct !DILexicalBlock(scope: !2540, file: !1, line: 1253, column: 3)
!2547 = !DILocation(line: 1259, column: 52, scope: !2545)
!2548 = !DILocation(line: 1264, column: 50, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !1, line: 1261, column: 5)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !1, line: 1260, column: 9)
!2551 = !DILocation(line: 1257, column: 51, scope: !2545)
!2552 = !DILocation(line: 1254, column: 14, scope: !2546)
!2553 = !DILocation(line: 1254, column: 22, scope: !2546)
!2554 = !DILocation(line: 1254, column: 13, scope: !2546)
!2555 = !DILocation(line: 1237, column: 12, scope: !476)
!2556 = !DILocation(line: 1256, column: 23, scope: !2545)
!2557 = !DILocation(line: 1256, column: 31, scope: !2545)
!2558 = !DILocation(line: 1256, column: 34, scope: !2545)
!2559 = !DILocation(line: 1256, column: 9, scope: !2546)
!2560 = !DILocation(line: 1257, column: 50, scope: !2545)
!2561 = !DILocation(line: 1257, column: 7, scope: !2545)
!2562 = !DILocation(line: 1259, column: 51, scope: !2545)
!2563 = !DILocation(line: 1259, column: 8, scope: !2545)
!2564 = !DILocation(line: 1260, column: 9, scope: !2546)
!2565 = !DILocation(line: 1262, column: 15, scope: !2549)
!2566 = !DILocation(line: 1262, column: 26, scope: !2549)
!2567 = !DILocation(line: 1262, column: 14, scope: !2549)
!2568 = !DILocation(line: 1237, column: 17, scope: !476)
!2569 = !DILocation(line: 1264, column: 49, scope: !2549)
!2570 = !DILocation(line: 1264, column: 7, scope: !2549)
!2571 = !DILocation(line: 1265, column: 11, scope: !2549)
!2572 = !DILocation(line: 1252, column: 21, scope: !2540)
!2573 = !DILocation(line: 1256, column: 9, scope: !2545)
!2574 = !DILocation(line: 1256, column: 14, scope: !2545)
!2575 = !DILocation(line: 1271, column: 1, scope: !476)
!2576 = !DILocation(line: 1280, column: 50, scope: !495)
!2577 = !DILocation(line: 1280, column: 81, scope: !495)
!2578 = !DILocation(line: 1280, column: 93, scope: !495)
!2579 = !DILocation(line: 1280, column: 103, scope: !495)
!2580 = !DILocation(line: 1287, column: 9, scope: !495)
!2581 = !DILocation(line: 1288, column: 9, scope: !495)
!2582 = !DILocation(line: 1290, column: 10, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !495, file: !1, line: 1290, column: 3)
!2584 = !DILocation(line: 1301, column: 90, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !1, line: 1293, column: 5)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !1, line: 1292, column: 9)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !1, line: 1291, column: 3)
!2588 = distinct !DILexicalBlock(scope: !2583, file: !1, line: 1290, column: 3)
!2589 = !DILocation(line: 1305, column: 15, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !1, line: 1304, column: 7)
!2591 = distinct !DILexicalBlock(scope: !2585, file: !1, line: 1303, column: 11)
!2592 = !DILocation(line: 1306, column: 100, scope: !2590)
!2593 = !DILocation(line: 1290, column: 8, scope: !2583)
!2594 = !DILocation(line: 1290, column: 22, scope: !2583)
!2595 = !DILocation(line: 1290, column: 27, scope: !2588)
!2596 = !DILocation(line: 1290, column: 3, scope: !2583)
!2597 = !DILocation(line: 1292, column: 9, scope: !2586)
!2598 = !DILocation(line: 1292, column: 17, scope: !2586)
!2599 = !DILocation(line: 1292, column: 9, scope: !2587)
!2600 = !DILocation(line: 1294, column: 19, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2585, file: !1, line: 1294, column: 11)
!2602 = !DILocation(line: 1295, column: 35, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2601, file: !1, line: 1295, column: 23)
!2604 = !DILocation(line: 1283, column: 9, scope: !495)
!2605 = !DILocation(line: 1285, column: 9, scope: !495)
!2606 = !DILocation(line: 1294, column: 11, scope: !2585)
!2607 = !DILocation(line: 1297, column: 30, scope: !2585)
!2608 = !DILocation(line: 1297, column: 21, scope: !2585)
!2609 = !DILocation(line: 1286, column: 9, scope: !495)
!2610 = !DILocation(line: 1300, column: 13, scope: !2585)
!2611 = !DILocation(line: 1301, column: 49, scope: !2585)
!2612 = !DILocation(line: 1301, column: 54, scope: !2585)
!2613 = !DILocation(line: 1301, column: 68, scope: !2585)
!2614 = !DILocation(line: 1301, column: 110, scope: !2585)
!2615 = !DILocation(line: 1301, column: 7, scope: !2585)
!2616 = !DILocation(line: 1303, column: 11, scope: !2585)
!2617 = !DILocation(line: 1284, column: 9, scope: !495)
!2618 = !DILocation(line: 1306, column: 55, scope: !2590)
!2619 = !DILocation(line: 1306, column: 59, scope: !2590)
!2620 = !DILocation(line: 1306, column: 64, scope: !2590)
!2621 = !DILocation(line: 1306, column: 78, scope: !2590)
!2622 = !DILocation(line: 1306, column: 120, scope: !2590)
!2623 = !DILocation(line: 1306, column: 9, scope: !2590)
!2624 = !DILocation(line: 1308, column: 11, scope: !2590)
!2625 = !DILocation(line: 1309, column: 7, scope: !2590)
!2626 = !DILocation(line: 1310, column: 16, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2591, file: !1, line: 1310, column: 16)
!2628 = !DILocation(line: 1312, column: 11, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2627, file: !1, line: 1311, column: 7)
!2630 = !DILocation(line: 1310, column: 16, scope: !2591)
!2631 = !DILocation(line: 1314, column: 7, scope: !2585)
!2632 = !DILocation(line: 1315, column: 5, scope: !2585)
!2633 = !DILocation(line: 1317, column: 1, scope: !495)
!2634 = !DILocation(line: 1475, column: 60, scope: !544)
!2635 = !DILocation(line: 1476, column: 50, scope: !544)
!2636 = !DILocation(line: 1477, column: 54, scope: !544)
!2637 = !DILocation(line: 1480, column: 16, scope: !544)
!2638 = !DILocation(line: 1482, column: 13, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !544, file: !1, line: 1482, column: 7)
!2640 = !DILocation(line: 1482, column: 7, scope: !544)
!2641 = !DILocation(line: 1484, column: 5, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2639, file: !1, line: 1483, column: 3)
!2643 = !DILocation(line: 1485, column: 5, scope: !2642)
!2644 = !DILocation(line: 1489, column: 5, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2639, file: !1, line: 1488, column: 3)
!2646 = !DILocation(line: 1479, column: 16, scope: !544)
!2647 = !DILocation(line: 1479, column: 18, scope: !544)
!2648 = !DILocation(line: 1492, column: 14, scope: !2645)
!2649 = !DILocation(line: 1492, column: 18, scope: !2645)
!2650 = !DILocation(line: 1492, column: 22, scope: !2645)
!2651 = !DILocation(line: 1492, column: 26, scope: !2645)
!2652 = !DILocation(line: 1492, column: 30, scope: !2645)
!2653 = !DILocation(line: 1492, column: 5, scope: !2645)
!2654 = !DILocation(line: 1493, column: 7, scope: !2645)
!2655 = !DILocation(line: 1494, column: 16, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 1494, column: 9)
!2657 = !DILocation(line: 1494, column: 9, scope: !2645)
!2658 = !DILocation(line: 1494, column: 29, scope: !2656)
!2659 = !DILocation(line: 1495, column: 49, scope: !2656)
!2660 = !DILocation(line: 1495, column: 10, scope: !2656)
!2661 = !DILocation(line: 1498, column: 1, scope: !544)
!2662 = !DILocation(line: 1327, column: 42, scope: !510)
!2663 = !DILocation(line: 1327, column: 69, scope: !510)
!2664 = !DILocation(line: 1333, column: 41, scope: !510)
!2665 = !DILocation(line: 1333, column: 46, scope: !510)
!2666 = !DILocation(line: 1333, column: 28, scope: !510)
!2667 = !DILocation(line: 1333, column: 33, scope: !510)
!2668 = !DILocation(line: 1333, column: 15, scope: !510)
!2669 = !DILocation(line: 1337, column: 11, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !510, file: !1, line: 1337, column: 7)
!2671 = !DILocation(line: 1337, column: 18, scope: !2670)
!2672 = !DILocation(line: 1337, column: 7, scope: !510)
!2673 = !DILocation(line: 1339, column: 21, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !1, line: 1339, column: 5)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !1, line: 1339, column: 5)
!2676 = distinct !DILexicalBlock(scope: !2670, file: !1, line: 1338, column: 3)
!2677 = !DILocation(line: 1339, column: 16, scope: !2674)
!2678 = !DILocation(line: 1339, column: 43, scope: !2674)
!2679 = !DILocation(line: 1339, column: 5, scope: !2675)
!2680 = !DILocation(line: 1339, column: 34, scope: !2674)
!2681 = !DILocation(line: 1339, column: 47, scope: !2674)
!2682 = !DILocation(line: 1339, column: 30, scope: !2674)
!2683 = !DILocation(line: 1334, column: 15, scope: !510)
!2684 = !DILocation(line: 1339, column: 71, scope: !2676)
!2685 = !DILocation(line: 1339, column: 61, scope: !2676)
!2686 = !DILocation(line: 1339, column: 52, scope: !2676)
!2687 = !DILocation(line: 1339, column: 65, scope: !2676)
!2688 = !DILocation(line: 1339, column: 88, scope: !2676)
!2689 = !DILocation(line: 1340, column: 5, scope: !2676)
!2690 = !DILocation(line: 1344, column: 12, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !1, line: 1344, column: 5)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !1, line: 1344, column: 5)
!2693 = distinct !DILexicalBlock(scope: !2670, file: !1, line: 1343, column: 3)
!2694 = !DILocation(line: 1344, column: 15, scope: !2691)
!2695 = !DILocation(line: 1344, column: 5, scope: !2692)
!2696 = !DILocation(line: 1344, column: 27, scope: !2691)
!2697 = !DILocation(line: 1344, column: 38, scope: !2691)
!2698 = !DILocation(line: 1344, column: 23, scope: !2691)
!2699 = !DILocation(line: 1347, column: 3, scope: !510)
!2700 = !{!"branch_weights", i32 4, i32 64}
!2701 = !DILocation(line: 1350, column: 58, scope: !510)
!2702 = !DILocation(line: 1350, column: 67, scope: !510)
!2703 = !DILocation(line: 1350, column: 76, scope: !510)
!2704 = !DILocation(line: 1350, column: 3, scope: !510)
!2705 = !DILocation(line: 1352, column: 7, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !510, file: !1, line: 1352, column: 7)
!2707 = !DILocation(line: 1352, column: 16, scope: !2706)
!2708 = !DILocation(line: 1352, column: 7, scope: !510)
!2709 = !DILocation(line: 1355, column: 58, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2706, file: !1, line: 1353, column: 3)
!2711 = !DILocation(line: 1355, column: 5, scope: !2710)
!2712 = !DILocation(line: 1358, column: 58, scope: !2710)
!2713 = !DILocation(line: 1358, column: 5, scope: !2710)
!2714 = !DILocation(line: 1359, column: 3, scope: !2710)
!2715 = !DILocation(line: 1362, column: 19, scope: !510)
!2716 = !DILocation(line: 1362, column: 7, scope: !510)
!2717 = !DILocation(line: 1363, column: 1, scope: !510)
!2718 = !DILocation(line: 1445, column: 56, scope: !537)
!2719 = !DILocation(line: 1446, column: 46, scope: !537)
!2720 = !DILocation(line: 1447, column: 37, scope: !537)
!2721 = !DILocation(line: 1451, column: 35, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !1, line: 1451, column: 9)
!2723 = distinct !DILexicalBlock(scope: !537, file: !1, line: 1450, column: 3)
!2724 = !DILocation(line: 1451, column: 16, scope: !2722)
!2725 = !DILocation(line: 1451, column: 9, scope: !2723)
!2726 = !DILocation(line: 1453, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2722, file: !1, line: 1452, column: 5)
!2728 = !DILocation(line: 1454, column: 23, scope: !2727)
!2729 = !DILocation(line: 1455, column: 8, scope: !2727)
!2730 = !DILocation(line: 1459, column: 7, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2722, file: !1, line: 1458, column: 5)
!2732 = !DILocation(line: 1460, column: 7, scope: !2731)
!2733 = !DILocation(line: 1460, column: 15, scope: !2731)
!2734 = !DILocation(line: 1461, column: 68, scope: !2731)
!2735 = !DILocation(line: 1461, column: 45, scope: !2731)
!2736 = !DILocation(line: 1461, column: 9, scope: !2731)
!2737 = !DILocation(line: 1466, column: 3, scope: !537)
