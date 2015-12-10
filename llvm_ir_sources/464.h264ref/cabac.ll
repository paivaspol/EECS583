; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@.str3 = private unnamed_addr constant [9 x i8] c"pos < 65\00", align 1
@.str4 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c\00", align 1
@__PRETTY_FUNCTION__.writeRunLevel_CABAC = private unnamed_addr constant [66 x i8] c"void writeRunLevel_CABAC(SyntaxElement *, EncodingEnvironmentPtr)\00", align 1
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
@pos2ctx_last4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 16
@pos2ctx_last8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 8], align 16
@pos2ctx_last8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8], align 16
@pos2ctx_last2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_last4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map4x4 = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 14], align 16
@pos2ctx_map8x8 = internal constant [64 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 5, i32 4, i32 4, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 6, i32 7, i32 7, i32 7, i32 8, i32 9, i32 10, i32 9, i32 8, i32 7, i32 7, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 7, i32 8, i32 9, i32 14, i32 10, i32 9, i32 8, i32 6, i32 11, i32 12, i32 13, i32 11, i32 6, i32 9, i32 14, i32 10, i32 9, i32 11, i32 12, i32 13, i32 11, i32 14, i32 10, i32 12, i32 14], align 16
@pos2ctx_map8x4 = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 9, i32 8, i32 6, i32 12, i32 8, i32 9, i32 10, i32 11, i32 9, i32 13, i32 13, i32 14, i32 14], align 16
@pos2ctx_map2x4c = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map4x4c = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 16
@pos2ctx_map8x8i = internal constant [64 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 7, i32 7, i32 8, i32 4, i32 5, i32 6, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 11, i32 12, i32 11, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 8, i32 13, i32 13, i32 9, i32 9, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14], align 16
@pos2ctx_map8x4i = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 5, i32 6, i32 3, i32 4, i32 7, i32 6, i32 8, i32 9, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 12, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 14], align 16
@pos2ctx_map4x8i = internal constant [32 x i32] [i32 0, i32 1, i32 1, i32 1, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 6, i32 2, i32 7, i32 7, i32 8, i32 8, i32 8, i32 5, i32 6, i32 9, i32 10, i32 10, i32 11, i32 11, i32 11, i32 12, i32 13, i32 13, i32 14, i32 14, i32 14], align 16
@str = private unnamed_addr constant [47 x i8] c"Unsupported MB-MODE in writeMB_typeInfo_CABAC!\00"

; Function Attrs: nounwind optsize uwtable
define void @cabac_new_slice() #0 {
entry:
  store i32 0, i32* @last_dquant, align 4, !dbg !983, !tbaa !984
  ret void, !dbg !987
}

; Function Attrs: nounwind optsize uwtable
define void @CheckAvailabilityOfNeighborsCABAC() #0 {
entry:
  %up = alloca %struct.pix_pos, align 4
  %left = alloca %struct.pix_pos, align 4
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !988, !tbaa !989
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !988
  %1 = load i32* %current_mb_nr, align 4, !dbg !988, !tbaa !984
  %idxprom = sext i32 %1 to i64, !dbg !988
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !988
  %2 = load %struct.macroblock** %mb_data, align 8, !dbg !988, !tbaa !989
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %up}, metadata !122), !dbg !990
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %left}, metadata !132), !dbg !990
  call void @getNeighbour(i32 %1, i32 -1, i32 0, i32 1, %struct.pix_pos* %left) #6, !dbg !991
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !992, !tbaa !989
  %current_mb_nr2 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3, !dbg !992
  %4 = load i32* %current_mb_nr2, align 4, !dbg !992, !tbaa !984
  call void @getNeighbour(i32 %4, i32 0, i32 -1, i32 1, %struct.pix_pos* %up) #6, !dbg !992
  %available = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 0, !dbg !993
  %5 = load i32* %available, align 4, !dbg !993, !tbaa !984
  %tobool = icmp eq i32 %5, 0, !dbg !993
  br i1 %tobool, label %if.else, label %if.then, !dbg !993

if.then:                                          ; preds = %entry
  %mb_addr = getelementptr inbounds %struct.pix_pos* %up, i64 0, i32 1, !dbg !994
  %6 = load i32* %mb_addr, align 4, !dbg !994, !tbaa !984
  %idxprom3 = sext i32 %6 to i64, !dbg !994
  %7 = load %struct.ImageParameters** @img, align 8, !dbg !994, !tbaa !989
  %mb_data4 = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 51, !dbg !994
  %8 = load %struct.macroblock** %mb_data4, align 8, !dbg !994, !tbaa !989
  %arrayidx5 = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom3, !dbg !994
  %mb_available_up = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 6, !dbg !994
  store %struct.macroblock* %arrayidx5, %struct.macroblock** %mb_available_up, align 8, !dbg !994, !tbaa !989
  br label %if.end, !dbg !994

if.else:                                          ; preds = %entry
  %mb_available_up6 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 6, !dbg !995
  store %struct.macroblock* null, %struct.macroblock** %mb_available_up6, align 8, !dbg !995, !tbaa !989
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %available7 = getelementptr inbounds %struct.pix_pos* %left, i64 0, i32 0, !dbg !996
  %9 = load i32* %available7, align 4, !dbg !996, !tbaa !984
  %tobool8 = icmp eq i32 %9, 0, !dbg !996
  br i1 %tobool8, label %if.else14, label %if.then9, !dbg !996

if.then9:                                         ; preds = %if.end
  %mb_addr10 = getelementptr inbounds %struct.pix_pos* %left, i64 0, i32 1, !dbg !997
  %10 = load i32* %mb_addr10, align 4, !dbg !997, !tbaa !984
  %idxprom11 = sext i32 %10 to i64, !dbg !997
  %11 = load %struct.ImageParameters** @img, align 8, !dbg !997, !tbaa !989
  %mb_data12 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 51, !dbg !997
  %12 = load %struct.macroblock** %mb_data12, align 8, !dbg !997, !tbaa !989
  %arrayidx13 = getelementptr inbounds %struct.macroblock* %12, i64 %idxprom11, !dbg !997
  %mb_available_left = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 7, !dbg !997
  store %struct.macroblock* %arrayidx13, %struct.macroblock** %mb_available_left, align 8, !dbg !997, !tbaa !989
  br label %if.end16, !dbg !997

if.else14:                                        ; preds = %if.end
  %mb_available_left15 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 7, !dbg !998
  store %struct.macroblock* null, %struct.macroblock** %mb_available_left15, align 8, !dbg !998, !tbaa !989
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then9
  ret void, !dbg !999
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: nounwind optsize uwtable
define noalias %struct.MotionInfoContexts* @create_contexts_MotionInfo() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 1504) #6, !dbg !1000
  %0 = bitcast i8* %call to %struct.MotionInfoContexts*, !dbg !1000
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %0}, i64 0, metadata !172), !dbg !1000
  %cmp = icmp eq i8* %call, null, !dbg !1001
  br i1 %cmp, label %if.then, label %if.end, !dbg !1001

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1002
  br label %if.end, !dbg !1002

if.end:                                           ; preds = %if.then, %entry
  ret %struct.MotionInfoContexts* %0, !dbg !1003
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define noalias %struct.TextureInfoContexts* @create_contexts_TextureInfo() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 12128) #6, !dbg !1004
  %0 = bitcast i8* %call to %struct.TextureInfoContexts*, !dbg !1004
  tail call void @llvm.dbg.value(metadata !{%struct.TextureInfoContexts* %0}, i64 0, metadata !203), !dbg !1004
  %cmp = icmp eq i8* %call, null, !dbg !1005
  br i1 %cmp, label %if.then, label %if.end, !dbg !1005

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !1006
  br label %if.end, !dbg !1006

if.end:                                           ; preds = %if.then, %entry
  ret %struct.TextureInfoContexts* %0, !dbg !1007
}

; Function Attrs: nounwind optsize uwtable
define void @delete_contexts_MotionInfo(%struct.MotionInfoContexts* %enco_ctx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %enco_ctx}, i64 0, metadata !208), !dbg !1008
  %cmp = icmp eq %struct.MotionInfoContexts* %enco_ctx, null, !dbg !1009
  br i1 %cmp, label %return, label %if.end, !dbg !1009

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.MotionInfoContexts* %enco_ctx to i8*, !dbg !1010
  tail call void @free(i8* %0) #6, !dbg !1010
  br label %return, !dbg !1011

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !1011
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @delete_contexts_TextureInfo(%struct.TextureInfoContexts* %enco_ctx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.TextureInfoContexts* %enco_ctx}, i64 0, metadata !213), !dbg !1012
  %cmp = icmp eq %struct.TextureInfoContexts* %enco_ctx, null, !dbg !1013
  br i1 %cmp, label %return, label %if.end, !dbg !1013

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.TextureInfoContexts* %enco_ctx to i8*, !dbg !1014
  tail call void @free(i8* %0) #6, !dbg !1014
  br label %return, !dbg !1015

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !1015
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_CABAC(%struct.syntaxelement* %se, %struct.datapartition* %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !294), !dbg !1016
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !295), !dbg !1016
  %ee_cabac = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 1, !dbg !1017
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %ee_cabac}, i64 0, metadata !297), !dbg !1017
  %call = tail call i32 @arienco_bits_written(%struct.EncodingEnvironment* %ee_cabac) #6, !dbg !1018
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !296), !dbg !1018
  %writing = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 9, !dbg !1019
  %0 = load void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8, !dbg !1019, !tbaa !989
  tail call void %0(%struct.syntaxelement* %se, %struct.EncodingEnvironment* %ee_cabac) #6, !dbg !1019
  %type = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0, !dbg !1020
  %1 = load i32* %type, align 4, !dbg !1020, !tbaa !984
  %cmp = icmp eq i32 %1, 0, !dbg !1020
  br i1 %cmp, label %if.end, label %if.then, !dbg !1020

if.then:                                          ; preds = %entry
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1021
  %2 = load %struct.Bitstream** %bitstream, align 8, !dbg !1021, !tbaa !989
  %write_flag = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 10, !dbg !1021
  store i32 1, i32* %write_flag, align 4, !dbg !1021, !tbaa !984
  br label %if.end, !dbg !1021

if.end:                                           ; preds = %entry, %if.then
  %call1 = tail call i32 @arienco_bits_written(%struct.EncodingEnvironment* %ee_cabac) #6, !dbg !1022
  %sub = sub nsw i32 %call1, %call, !dbg !1022
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1022
  store i32 %sub, i32* %len, align 4, !dbg !1022, !tbaa !984
  ret i32 %sub, !dbg !1022
}

; Function Attrs: optsize
declare i32 @arienco_bits_written(%struct.EncodingEnvironment*) #2

; Function Attrs: nounwind optsize uwtable
define void @writeFieldModeInfo_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !302), !dbg !1023
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !303), !dbg !1023
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1024, !tbaa !989
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1024
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !1024, !tbaa !989
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7, !dbg !1024
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !dbg !1024, !tbaa !989
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %2}, i64 0, metadata !307), !dbg !1024
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1025
  %3 = load i32* %current_mb_nr, align 4, !dbg !1025, !tbaa !984
  %idxprom = sext i32 %3 to i64, !dbg !1025
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1025
  %4 = load %struct.macroblock** %mb_data, align 8, !dbg !1025, !tbaa !989
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1026
  %5 = load i32* %value1, align 4, !dbg !1026, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !309), !dbg !1026
  %mbAvailA = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 27, !dbg !1027
  %6 = load i32* %mbAvailA, align 4, !dbg !1027, !tbaa !984
  %tobool = icmp eq i32 %6, 0, !dbg !1027
  br i1 %tobool, label %if.end, label %if.then, !dbg !1027

if.then:                                          ; preds = %entry
  %mbAddrA = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 23, !dbg !1028
  %7 = load i32* %mbAddrA, align 4, !dbg !1028, !tbaa !984
  %idxprom1 = sext i32 %7 to i64, !dbg !1028
  %mb_field4 = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom1, i32 22, !dbg !1028
  %8 = load i32* %mb_field4, align 4, !dbg !1028, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !304), !dbg !1028
  br label %if.end, !dbg !1028

if.end:                                           ; preds = %entry, %if.then
  %a.0 = phi i32 [ %8, %if.then ], [ 0, %entry ]
  %mbAvailB = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 28, !dbg !1029
  %9 = load i32* %mbAvailB, align 4, !dbg !1029, !tbaa !984
  %tobool5 = icmp eq i32 %9, 0, !dbg !1029
  br i1 %tobool5, label %if.end12, label %if.then6, !dbg !1029

if.then6:                                         ; preds = %if.end
  %mbAddrB = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 24, !dbg !1030
  %10 = load i32* %mbAddrB, align 4, !dbg !1030, !tbaa !984
  %idxprom7 = sext i32 %10 to i64, !dbg !1030
  %mb_field10 = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom7, i32 22, !dbg !1030
  %11 = load i32* %mb_field10, align 4, !dbg !1030, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !305), !dbg !1030
  br label %if.end12, !dbg !1030

if.end12:                                         ; preds = %if.end, %if.then6
  %b.0 = phi i32 [ %11, %if.then6 ], [ 0, %if.end ]
  %add = add nsw i32 %b.0, %a.0, !dbg !1031
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !306), !dbg !1031
  %cmp = icmp eq i32 %5, 0, !dbg !1032
  %idxprom14 = sext i32 %add to i64, !dbg !1033
  %arrayidx15 = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 5, i64 %idxprom14, !dbg !1033
  br i1 %cmp, label %if.then13, label %if.else16, !dbg !1032

if.then13:                                        ; preds = %if.end12
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx15) #6, !dbg !1033
  br label %if.end20, !dbg !1033

if.else16:                                        ; preds = %if.end12
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx15) #6, !dbg !1034
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then13
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1035
  store i32 %add, i32* %context, align 4, !dbg !1035, !tbaa !984
  ret void, !dbg !1036
}

; Function Attrs: optsize
declare void @biari_encode_symbol(%struct.EncodingEnvironment*, i16 signext, %struct.BiContextType*) #2

; Function Attrs: nounwind optsize uwtable
define void @writeMB_skip_flagInfo_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !312), !dbg !1037
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !313), !dbg !1037
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1038, !tbaa !989
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1038
  %1 = load i32* %type, align 4, !dbg !1038, !tbaa !984
  %cmp = icmp eq i32 %1, 1, !dbg !1038
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1039
  %2 = load %struct.Slice** %currentSlice, align 8, !dbg !1039, !tbaa !989
  %mot_ctx = getelementptr inbounds %struct.Slice* %2, i64 0, i32 7, !dbg !1039
  %3 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !dbg !1039, !tbaa !989
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %3}, i64 0, metadata !318), !dbg !1039
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1040
  %4 = load i32* %current_mb_nr, align 4, !dbg !1040, !tbaa !984
  %idxprom = sext i32 %4 to i64, !dbg !1040
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1040
  %5 = load %struct.macroblock** %mb_data, align 8, !dbg !1040, !tbaa !989
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1041
  %6 = load i32* %value1, align 4, !dbg !1041, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !320), !dbg !1041
  %mb_available_up = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 6, !dbg !1042
  %7 = load %struct.macroblock** %mb_available_up, align 8, !dbg !1042, !tbaa !989
  %cmp1 = icmp eq %struct.macroblock* %7, null, !dbg !1042
  br i1 %cmp, label %if.then, label %if.else41, !dbg !1044

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %if.end, label %if.else, !dbg !1042

if.else:                                          ; preds = %if.then
  %skip_flag = getelementptr inbounds %struct.macroblock* %7, i64 0, i32 44, !dbg !1045
  %8 = load i32* %skip_flag, align 4, !dbg !1045, !tbaa !984
  %not.cmp5 = icmp ne i32 %8, 0, !dbg !1045
  %cond = zext i1 %not.cmp5 to i32, !dbg !1045
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !315), !dbg !1045
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %b.0 = phi i32 [ %cond, %if.else ], [ 0, %if.then ]
  %mb_available_left = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 7, !dbg !1046
  %9 = load %struct.macroblock** %mb_available_left, align 8, !dbg !1046, !tbaa !989
  %cmp7 = icmp eq %struct.macroblock* %9, null, !dbg !1046
  br i1 %cmp7, label %if.end16, label %if.else10, !dbg !1046

if.else10:                                        ; preds = %if.end
  %skip_flag12 = getelementptr inbounds %struct.macroblock* %9, i64 0, i32 44, !dbg !1047
  %10 = load i32* %skip_flag12, align 4, !dbg !1047, !tbaa !984
  %not.cmp13 = icmp ne i32 %10, 0, !dbg !1047
  %phitmp = select i1 %not.cmp13, i32 8, i32 7
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.else10
  %a.0 = phi i32 [ %phitmp, %if.else10 ], [ 7, %if.end ]
  %add17 = add nsw i32 %a.0, %b.0, !dbg !1048
  tail call void @llvm.dbg.value(metadata !{i32 %add17}, i64 0, metadata !316), !dbg !1048
  %cmp19 = icmp eq i32 %6, 0, !dbg !1049
  br i1 %cmp19, label %land.lhs.true, label %if.else27, !dbg !1049

land.lhs.true:                                    ; preds = %if.end16
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1049
  %11 = load i32* %value2, align 4, !dbg !1049, !tbaa !984
  %cmp21 = icmp eq i32 %11, 0, !dbg !1049
  br i1 %cmp21, label %if.then23, label %if.else27, !dbg !1049

if.then23:                                        ; preds = %land.lhs.true
  %idxprom24108 = zext i32 %add17 to i64, !dbg !1050
  %arrayidx26 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %idxprom24108, !dbg !1050
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx26) #6, !dbg !1050
  br label %if.end32, !dbg !1050

if.else27:                                        ; preds = %land.lhs.true, %if.end16
  %idxprom28107 = zext i32 %add17 to i64, !dbg !1051
  %arrayidx31 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %idxprom28107, !dbg !1051
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx31) #6, !dbg !1051
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %if.then23
  %12 = load i32* %value1, align 4, !dbg !1052, !tbaa !984
  %cmp34 = icmp eq i32 %12, 0, !dbg !1052
  br i1 %cmp34, label %land.rhs, label %land.end, !dbg !1052

land.rhs:                                         ; preds = %if.end32
  %value236 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1052
  %13 = load i32* %value236, align 4, !dbg !1052, !tbaa !984
  %cmp37 = icmp eq i32 %13, 0, !dbg !1052
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end32
  %14 = phi i1 [ false, %if.end32 ], [ %cmp37, %land.rhs ]
  %15 = zext i1 %14 to i32
  %cond39 = xor i32 %15, 1
  %skip_flag40 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 44
  store i32 %cond39, i32* %skip_flag40, align 4, !tbaa !984
  br label %if.end82, !dbg !1053

if.else41:                                        ; preds = %entry
  br i1 %cmp1, label %if.end52, label %if.else46, !dbg !1054

if.else46:                                        ; preds = %if.else41
  %skip_flag48 = getelementptr inbounds %struct.macroblock* %7, i64 0, i32 44, !dbg !1056
  %16 = load i32* %skip_flag48, align 4, !dbg !1056, !tbaa !984
  %cmp49 = icmp ne i32 %16, 0, !dbg !1056
  %cond51 = zext i1 %cmp49 to i32, !dbg !1056
  tail call void @llvm.dbg.value(metadata !{i32 %cond51}, i64 0, metadata !315), !dbg !1056
  br label %if.end52

if.end52:                                         ; preds = %if.else41, %if.else46
  %b.1 = phi i32 [ %cond51, %if.else46 ], [ 0, %if.else41 ]
  %mb_available_left53 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 7, !dbg !1057
  %17 = load %struct.macroblock** %mb_available_left53, align 8, !dbg !1057, !tbaa !989
  %cmp54 = icmp eq %struct.macroblock* %17, null, !dbg !1057
  br i1 %cmp54, label %if.end63, label %if.else57, !dbg !1057

if.else57:                                        ; preds = %if.end52
  %skip_flag59 = getelementptr inbounds %struct.macroblock* %17, i64 0, i32 44, !dbg !1058
  %18 = load i32* %skip_flag59, align 4, !dbg !1058, !tbaa !984
  %cmp60 = icmp ne i32 %18, 0, !dbg !1058
  %cond62 = zext i1 %cmp60 to i32, !dbg !1058
  tail call void @llvm.dbg.value(metadata !{i32 %cond62}, i64 0, metadata !314), !dbg !1058
  br label %if.end63

if.end63:                                         ; preds = %if.end52, %if.else57
  %a.1 = phi i32 [ %cond62, %if.else57 ], [ 0, %if.end52 ]
  %add64 = add nsw i32 %a.1, %b.1, !dbg !1059
  tail call void @llvm.dbg.value(metadata !{i32 %add64}, i64 0, metadata !316), !dbg !1059
  %cmp65 = icmp eq i32 %6, 0, !dbg !1060
  %idxprom68106 = zext i32 %add64 to i64, !dbg !1061
  %arrayidx71 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 %idxprom68106, !dbg !1061
  br i1 %cmp65, label %if.then67, label %if.else72, !dbg !1060

if.then67:                                        ; preds = %if.end63
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx71) #6, !dbg !1061
  br label %if.end77, !dbg !1061

if.else72:                                        ; preds = %if.end63
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx71) #6, !dbg !1062
  br label %if.end77

if.end77:                                         ; preds = %if.else72, %if.then67
  %19 = zext i1 %cmp65 to i32, !dbg !1063
  %cond80 = xor i32 %19, 1, !dbg !1063
  %skip_flag81 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 44, !dbg !1063
  store i32 %cond80, i32* %skip_flag81, align 4, !dbg !1063, !tbaa !984
  br label %if.end82

if.end82:                                         ; preds = %if.end77, %land.end
  %act_ctx.0 = phi i32 [ %add17, %land.end ], [ %add64, %if.end77 ]
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1064
  store i32 %act_ctx.0, i32* %context, align 4, !dbg !1064, !tbaa !984
  ret void, !dbg !1065
}

; Function Attrs: nounwind optsize uwtable
define void @writeMB_transform_size_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !323), !dbg !1066
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !324), !dbg !1066
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !327), !dbg !1067
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1068, !tbaa !989
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1068
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !1068, !tbaa !989
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7, !dbg !1068
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !dbg !1068, !tbaa !989
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %2}, i64 0, metadata !329), !dbg !1068
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1069
  %3 = load i32* %current_mb_nr, align 4, !dbg !1069, !tbaa !984
  %idxprom = sext i32 %3 to i64, !dbg !1069
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1069
  %4 = load %struct.macroblock** %mb_data, align 8, !dbg !1069, !tbaa !989
  %mb_available_up = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 6, !dbg !1070
  %5 = load %struct.macroblock** %mb_available_up, align 8, !dbg !1070, !tbaa !989
  %cmp = icmp eq %struct.macroblock* %5, null, !dbg !1070
  br i1 %cmp, label %if.end, label %if.else, !dbg !1070

if.else:                                          ; preds = %entry
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock* %5, i64 0, i32 32, !dbg !1071
  %6 = load i32* %luma_transform_size_8x8_flag, align 4, !dbg !1071, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !326), !dbg !1071
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %b.0 = phi i32 [ %6, %if.else ], [ 0, %entry ]
  %mb_available_left = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 7, !dbg !1072
  %7 = load %struct.macroblock** %mb_available_left, align 8, !dbg !1072, !tbaa !989
  %cmp2 = icmp eq %struct.macroblock* %7, null, !dbg !1072
  br i1 %cmp2, label %if.end7, label %if.else4, !dbg !1072

if.else4:                                         ; preds = %if.end
  %luma_transform_size_8x8_flag6 = getelementptr inbounds %struct.macroblock* %7, i64 0, i32 32, !dbg !1073
  %8 = load i32* %luma_transform_size_8x8_flag6, align 4, !dbg !1073, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !325), !dbg !1073
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.else4
  %a.0 = phi i32 [ %8, %if.else4 ], [ 0, %if.end ]
  %add = add nsw i32 %a.0, %b.0, !dbg !1074
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !327), !dbg !1074
  %luma_transform_size_8x8_flag8 = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 32, !dbg !1075
  %9 = load i32* %luma_transform_size_8x8_flag8, align 4, !dbg !1075, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !328), !dbg !1075
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1076
  store i32 %add, i32* %context, align 4, !dbg !1076, !tbaa !984
  %cmp9 = icmp eq i32 %9, 0, !dbg !1077
  %idx.ext = sext i32 %add to i64, !dbg !1078
  %add.ptr = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 6, i64 %idx.ext, !dbg !1078
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !1077

if.then10:                                        ; preds = %if.end7
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #6, !dbg !1078
  br label %if.end16, !dbg !1078

if.else11:                                        ; preds = %if.end7
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #6, !dbg !1079
  br label %if.end16

if.end16:                                         ; preds = %if.else11, %if.then10
  ret void, !dbg !1080
}

; Function Attrs: nounwind optsize uwtable
define void @writeMB_typeInfo_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !333), !dbg !1081
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !334), !dbg !1081
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !337), !dbg !1082
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1083, !tbaa !989
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1083
  %1 = load i32* %type, align 4, !dbg !1083, !tbaa !984
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !341), !dbg !1084
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1085
  %2 = load %struct.Slice** %currentSlice, align 8, !dbg !1085, !tbaa !989
  %mot_ctx = getelementptr inbounds %struct.Slice* %2, i64 0, i32 7, !dbg !1085
  %3 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !dbg !1085, !tbaa !989
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %3}, i64 0, metadata !343), !dbg !1085
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1086
  %4 = load i32* %current_mb_nr, align 4, !dbg !1086, !tbaa !984
  %idxprom = sext i32 %4 to i64, !dbg !1086
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1086
  %5 = load %struct.macroblock** %mb_data, align 8, !dbg !1086, !tbaa !989
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1087
  %6 = load i32* %value1, align 4, !dbg !1087, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !345), !dbg !1087
  switch i32 %1, label %if.then141 [
    i32 2, label %if.then
    i32 1, label %if.then107
  ], !dbg !1088

if.then:                                          ; preds = %entry
  %mb_available_up = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 6, !dbg !1089
  %7 = load %struct.macroblock** %mb_available_up, align 8, !dbg !1089, !tbaa !989
  %cmp4 = icmp eq %struct.macroblock* %7, null, !dbg !1089
  br i1 %cmp4, label %if.end, label %if.else, !dbg !1089

if.else:                                          ; preds = %if.then
  %mb_type = getelementptr inbounds %struct.macroblock* %7, i64 0, i32 8, !dbg !1091
  %8 = load i32* %mb_type, align 4, !dbg !1091, !tbaa !984
  %cmp12 = icmp ne i32 %8, 13, !dbg !1091
  %not.cmp8 = icmp ne i32 %8, 9, !dbg !1091
  %.cmp12 = and i1 %cmp12, %not.cmp8, !dbg !1091
  %cond = zext i1 %.cmp12 to i32
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !336), !dbg !1092
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %b.0 = phi i32 [ %cond, %if.else ], [ 0, %if.then ]
  %mb_available_left = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 7, !dbg !1093
  %9 = load %struct.macroblock** %mb_available_left, align 8, !dbg !1093, !tbaa !989
  %cmp14 = icmp eq %struct.macroblock* %9, null, !dbg !1093
  br i1 %cmp14, label %if.end29, label %if.else17, !dbg !1093

if.else17:                                        ; preds = %if.end
  %mb_type19 = getelementptr inbounds %struct.macroblock* %9, i64 0, i32 8, !dbg !1094
  %10 = load i32* %mb_type19, align 4, !dbg !1094, !tbaa !984
  %cmp25 = icmp ne i32 %10, 13, !dbg !1094
  %not.cmp20 = icmp ne i32 %10, 9, !dbg !1094
  %.cmp25 = and i1 %cmp25, %not.cmp20, !dbg !1094
  %cond28 = zext i1 %.cmp25 to i32
  tail call void @llvm.dbg.value(metadata !{i32 %cond28}, i64 0, metadata !335), !dbg !1092
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.else17
  %a.0 = phi i32 [ %cond28, %if.else17 ], [ 0, %if.end ]
  %add = add nsw i32 %a.0, %b.0, !dbg !1095
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !337), !dbg !1095
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !338), !dbg !1096
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1097
  store i32 %add, i32* %context, align 4, !dbg !1097, !tbaa !984
  %cmp30 = icmp eq i32 %6, 0, !dbg !1098
  br i1 %cmp30, label %if.then32, label %if.else34, !dbg !1098

if.then32:                                        ; preds = %if.end29
  %idx.ext648 = zext i32 %add to i64, !dbg !1099
  %add.ptr = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 %idx.ext648, !dbg !1099
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #6, !dbg !1099
  br label %if.end448, !dbg !1101

if.else34:                                        ; preds = %if.end29
  %cmp35 = icmp eq i32 %6, 25, !dbg !1102
  %idx.ext41646 = zext i32 %add to i64, !dbg !1103
  %add.ptr42 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 %idx.ext41646, !dbg !1103
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr42) #6, !dbg !1103
  br i1 %cmp35, label %if.then37, label %if.else43, !dbg !1102

if.then37:                                        ; preds = %if.else34
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 1) #6, !dbg !1105
  br label %if.end448, !dbg !1106

if.else43:                                        ; preds = %if.else34
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 0) #6, !dbg !1107
  %sub = add nsw i32 %6, -1, !dbg !1109
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !341), !dbg !1109
  tail call void @llvm.dbg.value(metadata !1110, i64 0, metadata !337), !dbg !1111
  %div = sdiv i32 %sub, 12, !dbg !1112
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !338), !dbg !1112
  %conv49 = trunc i32 %div to i16, !dbg !1113
  %conv50 = and i16 %conv49, 255, !dbg !1113
  %add.ptr55 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 4, !dbg !1113
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv50, %struct.BiContextType* %add.ptr55) #6, !dbg !1113
  %rem = srem i32 %sub, 12, !dbg !1114
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !341), !dbg !1114
  tail call void @llvm.dbg.value(metadata !1115, i64 0, metadata !337), !dbg !1116
  %rem.off = add i32 %rem, 3, !dbg !1117
  %11 = icmp ult i32 %rem.off, 7, !dbg !1117
  %add.ptr64 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 5, !dbg !1118
  br i1 %11, label %if.then59, label %if.else65, !dbg !1117

if.then59:                                        ; preds = %if.else43
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr64) #6, !dbg !1118
  br label %if.end86, !dbg !1120

if.else65:                                        ; preds = %if.else43
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr64) #6, !dbg !1121
  tail call void @llvm.dbg.value(metadata !1123, i64 0, metadata !337), !dbg !1124
  %rem.off647 = add i32 %rem, -4, !dbg !1125
  %12 = icmp ult i32 %rem.off647, 4, !dbg !1125
  %add.ptr78 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 6, !dbg !1126
  br i1 %12, label %if.then73, label %if.else79, !dbg !1125

if.then73:                                        ; preds = %if.else65
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr78) #6, !dbg !1126
  br label %if.end86, !dbg !1128

if.else79:                                        ; preds = %if.else65
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr78) #6, !dbg !1129
  br label %if.end86

if.end86:                                         ; preds = %if.then73, %if.else79, %if.then59
  %rem87 = srem i32 %rem, 4, !dbg !1131
  tail call void @llvm.dbg.value(metadata !{i32 %rem87}, i64 0, metadata !341), !dbg !1131
  %div88 = sdiv i32 %rem87, 2, !dbg !1132
  tail call void @llvm.dbg.value(metadata !{i32 %div88}, i64 0, metadata !338), !dbg !1132
  tail call void @llvm.dbg.value(metadata !1133, i64 0, metadata !337), !dbg !1134
  %conv89 = trunc i32 %div88 to i16, !dbg !1135
  %conv90 = and i16 %conv89, 255, !dbg !1135
  %add.ptr95 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 7, !dbg !1135
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv90, %struct.BiContextType* %add.ptr95) #6, !dbg !1135
  tail call void @llvm.dbg.value(metadata !1136, i64 0, metadata !337), !dbg !1137
  %rem96 = srem i32 %rem87, 2, !dbg !1138
  tail call void @llvm.dbg.value(metadata !{i32 %rem96}, i64 0, metadata !338), !dbg !1138
  %conv97 = trunc i32 %rem96 to i16, !dbg !1139
  %conv98 = and i16 %conv97, 255, !dbg !1139
  %add.ptr103 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 0, i64 8, !dbg !1139
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv98, %struct.BiContextType* %add.ptr103) #6, !dbg !1139
  br label %if.end448

if.then107:                                       ; preds = %entry
  %mb_available_up108 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 6, !dbg !1140
  %13 = load %struct.macroblock** %mb_available_up108, align 8, !dbg !1140, !tbaa !989
  %cmp109 = icmp eq %struct.macroblock* %13, null, !dbg !1140
  br i1 %cmp109, label %if.end118, label %if.else112, !dbg !1140

if.else112:                                       ; preds = %if.then107
  %mb_type114 = getelementptr inbounds %struct.macroblock* %13, i64 0, i32 8, !dbg !1143
  %14 = load i32* %mb_type114, align 4, !dbg !1143, !tbaa !984
  %cmp115 = icmp ne i32 %14, 0, !dbg !1143
  %cond117 = zext i1 %cmp115 to i32, !dbg !1143
  tail call void @llvm.dbg.value(metadata !{i32 %cond117}, i64 0, metadata !336), !dbg !1143
  br label %if.end118

if.end118:                                        ; preds = %if.then107, %if.else112
  %b.1 = phi i32 [ %cond117, %if.else112 ], [ 0, %if.then107 ]
  %mb_available_left119 = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 7, !dbg !1144
  %15 = load %struct.macroblock** %mb_available_left119, align 8, !dbg !1144, !tbaa !989
  %cmp120 = icmp eq %struct.macroblock* %15, null, !dbg !1144
  br i1 %cmp120, label %if.else195, label %if.else123, !dbg !1144

if.else123:                                       ; preds = %if.end118
  %mb_type125 = getelementptr inbounds %struct.macroblock* %15, i64 0, i32 8, !dbg !1145
  %16 = load i32* %mb_type125, align 4, !dbg !1145, !tbaa !984
  %cmp126 = icmp ne i32 %16, 0, !dbg !1145
  %cond128 = zext i1 %cmp126 to i32, !dbg !1145
  tail call void @llvm.dbg.value(metadata !{i32 %cond128}, i64 0, metadata !335), !dbg !1145
  br label %if.else195

if.then141:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !338), !dbg !1146
  tail call void @llvm.dbg.value(metadata !1147, i64 0, metadata !342), !dbg !1148
  %cmp135650 = icmp slt i32 %6, 7, !dbg !1148
  tail call void @llvm.dbg.value(metadata !{i32 %sub138}, i64 0, metadata !341), !dbg !1149
  tail call void @llvm.dbg.value(metadata !1147, i64 0, metadata !338), !dbg !1151
  %.cond134653 = select i1 %cmp135650, i32 %6, i32 7, !dbg !1148
  switch i32 %.cond134653, label %sw.default [
    i32 0, label %if.end448
    i32 1, label %sw.bb
    i32 2, label %sw.bb151
    i32 3, label %sw.bb161
    i32 4, label %sw.bb171
    i32 5, label %sw.bb171
    i32 6, label %sw.bb181
    i32 7, label %if.end382.thread660
  ], !dbg !1152

sw.bb:                                            ; preds = %if.then141
  %arrayidx144 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4, !dbg !1154
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx144) #6, !dbg !1154
  %arrayidx147 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 5, !dbg !1156
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx147) #6, !dbg !1156
  %arrayidx150 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 6, !dbg !1157
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx150) #6, !dbg !1157
  br label %if.end448, !dbg !1158

sw.bb151:                                         ; preds = %if.then141
  %arrayidx154 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4, !dbg !1159
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx154) #6, !dbg !1159
  %arrayidx157 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 5, !dbg !1160
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx157) #6, !dbg !1160
  %arrayidx160 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 7, !dbg !1161
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx160) #6, !dbg !1161
  br label %if.end448, !dbg !1162

sw.bb161:                                         ; preds = %if.then141
  %arrayidx164 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4, !dbg !1163
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx164) #6, !dbg !1163
  %arrayidx167 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 5, !dbg !1164
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx167) #6, !dbg !1164
  %arrayidx170 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 7, !dbg !1165
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx170) #6, !dbg !1165
  br label %if.end448, !dbg !1166

sw.bb171:                                         ; preds = %if.then141, %if.then141
  %arrayidx174 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4, !dbg !1167
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx174) #6, !dbg !1167
  %arrayidx177 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 5, !dbg !1168
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx177) #6, !dbg !1168
  %arrayidx180 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 6, !dbg !1169
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx180) #6, !dbg !1169
  br label %if.end448, !dbg !1170

sw.bb181:                                         ; preds = %if.then141
  %arrayidx184 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4, !dbg !1171
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx184) #6, !dbg !1171
  %arrayidx187 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 7, !dbg !1172
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx187) #6, !dbg !1172
  br label %if.end448, !dbg !1173

if.end382.thread660:                              ; preds = %if.then141
  %sub138651 = add nsw i32 %6, -7, !dbg !1149
  %.sub138652 = select i1 %cmp135650, i32 0, i32 %sub138651, !dbg !1148
  %arrayidx191 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 4, !dbg !1174
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx191) #6, !dbg !1174
  %arrayidx194 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 7, !dbg !1175
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx194) #6, !dbg !1175
  br label %if.then385, !dbg !1176

sw.default:                                       ; preds = %if.then141
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str, i64 0, i64 0)), !dbg !1177
  tail call void @exit(i32 1) #7, !dbg !1178
  unreachable, !dbg !1178

if.else195:                                       ; preds = %if.end118, %if.else123
  %a.1 = phi i32 [ %cond128, %if.else123 ], [ 0, %if.end118 ]
  %add130 = add nsw i32 %a.1, %b.1, !dbg !1179
  tail call void @llvm.dbg.value(metadata !{i32 %add130}, i64 0, metadata !337), !dbg !1179
  %context131 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1180
  store i32 %add130, i32* %context131, align 4, !dbg !1180, !tbaa !984
  %phitmp640 = zext i32 %add130 to i64, !dbg !1181
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !338), !dbg !1146
  tail call void @llvm.dbg.value(metadata !1147, i64 0, metadata !342), !dbg !1148
  %cmp135 = icmp slt i32 %6, 24, !dbg !1148
  %sub138 = add nsw i32 %6, -24, !dbg !1149
  tail call void @llvm.dbg.value(metadata !{i32 %sub138}, i64 0, metadata !341), !dbg !1149
  tail call void @llvm.dbg.value(metadata !1147, i64 0, metadata !338), !dbg !1151
  %.sub138 = select i1 %cmp135, i32 0, i32 %sub138, !dbg !1148
  %.cond134 = select i1 %cmp135, i32 %6, i32 24, !dbg !1148
  %cmp196 = icmp eq i32 %.cond134, 0, !dbg !1182
  br i1 %cmp196, label %if.then198, label %if.else203, !dbg !1182

if.then198:                                       ; preds = %if.else195
  %arrayidx202 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %phitmp640, !dbg !1184
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx202) #6, !dbg !1184
  br label %if.end448, !dbg !1186

if.else203:                                       ; preds = %if.else195
  %cmp204 = icmp slt i32 %.cond134, 3, !dbg !1187
  br i1 %cmp204, label %if.then206, label %if.else225, !dbg !1187

if.then206:                                       ; preds = %if.else203
  %arrayidx210 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %phitmp640, !dbg !1188
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx210) #6, !dbg !1188
  %arrayidx213 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 4, !dbg !1190
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx213) #6, !dbg !1190
  %tobool215 = icmp eq i32 %.cond134, 1, !dbg !1191
  %arrayidx219 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 6, !dbg !1191
  br i1 %tobool215, label %if.else220, label %if.then216, !dbg !1191

if.then216:                                       ; preds = %if.then206
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx219) #6, !dbg !1191
  br label %if.end382, !dbg !1191

if.else220:                                       ; preds = %if.then206
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx219) #6, !dbg !1192
  br label %if.end448

if.else225:                                       ; preds = %if.else203
  %cmp226 = icmp slt i32 %.cond134, 11, !dbg !1193
  br i1 %cmp226, label %if.then228, label %if.else275, !dbg !1193

if.then228:                                       ; preds = %if.else225
  %arrayidx232 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %phitmp640, !dbg !1194
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx232) #6, !dbg !1194
  %arrayidx235 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 4, !dbg !1196
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx235) #6, !dbg !1196
  %arrayidx238 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 5, !dbg !1197
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx238) #6, !dbg !1197
  %sub239 = add nsw i32 %.cond134, -3, !dbg !1198
  %and = and i32 %sub239, 4, !dbg !1198
  tail call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !339), !dbg !1198
  %tobool240 = icmp eq i32 %and, 0, !dbg !1199
  %arrayidx244 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 6, !dbg !1199
  br i1 %tobool240, label %if.else245, label %if.then241, !dbg !1199

if.then241:                                       ; preds = %if.then228
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx244) #6, !dbg !1199
  br label %if.end249, !dbg !1199

if.else245:                                       ; preds = %if.then228
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx244) #6, !dbg !1200
  br label %if.end249

if.end249:                                        ; preds = %if.else245, %if.then241
  %and252 = and i32 %sub239, 2, !dbg !1201
  tail call void @llvm.dbg.value(metadata !{i32 %and252}, i64 0, metadata !339), !dbg !1201
  %tobool253 = icmp eq i32 %and252, 0, !dbg !1202
  br i1 %tobool253, label %if.else258, label %if.then254, !dbg !1202

if.then254:                                       ; preds = %if.end249
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx244) #6, !dbg !1202
  br label %if.end262, !dbg !1202

if.else258:                                       ; preds = %if.end249
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx244) #6, !dbg !1203
  br label %if.end262

if.end262:                                        ; preds = %if.else258, %if.then254
  %and264 = and i32 %sub239, 1, !dbg !1204
  tail call void @llvm.dbg.value(metadata !{i32 %and264}, i64 0, metadata !339), !dbg !1204
  %tobool265 = icmp eq i32 %and264, 0, !dbg !1205
  br i1 %tobool265, label %if.else270, label %if.then266, !dbg !1205

if.then266:                                       ; preds = %if.end262
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx244) #6, !dbg !1205
  br label %if.end382, !dbg !1205

if.else270:                                       ; preds = %if.end262
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx244) #6, !dbg !1206
  br label %if.end382

if.else275:                                       ; preds = %if.else225
  %cmp276 = icmp eq i32 %.cond134, 11, !dbg !1207
  switch i32 %.cond134, label %if.else308 [
    i32 22, label %if.then280
    i32 11, label %if.then280
  ], !dbg !1207

if.then280:                                       ; preds = %if.else275, %if.else275
  %arrayidx284 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %phitmp640, !dbg !1208
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx284) #6, !dbg !1208
  %arrayidx287 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 4, !dbg !1210
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx287) #6, !dbg !1210
  %arrayidx290 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 5, !dbg !1211
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx290) #6, !dbg !1211
  %arrayidx293 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 6, !dbg !1212
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx293) #6, !dbg !1212
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx293) #6, !dbg !1213
  br i1 %cmp276, label %if.then299, label %if.else303, !dbg !1214

if.then299:                                       ; preds = %if.then280
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx293) #6, !dbg !1214
  br label %if.end448, !dbg !1214

if.else303:                                       ; preds = %if.then280
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx293) #6, !dbg !1215
  br label %if.end382

if.else308:                                       ; preds = %if.else275
  %cmp309 = icmp sgt i32 %.cond134, 22, !dbg !1216
  %dec = sext i1 %cmp309 to i32, !dbg !1216
  %dec..cond134 = add nsw i32 %dec, %.cond134, !dbg !1216
  %arrayidx316 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 %phitmp640, !dbg !1218
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx316) #6, !dbg !1218
  %arrayidx319 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 4, !dbg !1219
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx319) #6, !dbg !1219
  %arrayidx322 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 5, !dbg !1220
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx322) #6, !dbg !1220
  %sub323 = add nsw i32 %dec..cond134, -12, !dbg !1221
  %and325 = and i32 %sub323, 8, !dbg !1221
  tail call void @llvm.dbg.value(metadata !{i32 %and325}, i64 0, metadata !339), !dbg !1221
  %tobool326 = icmp eq i32 %and325, 0, !dbg !1222
  %arrayidx330 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 2, i64 6, !dbg !1222
  br i1 %tobool326, label %if.else331, label %if.then327, !dbg !1222

if.then327:                                       ; preds = %if.else308
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx330) #6, !dbg !1222
  br label %if.end335, !dbg !1222

if.else331:                                       ; preds = %if.else308
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx330) #6, !dbg !1223
  br label %if.end335

if.end335:                                        ; preds = %if.else331, %if.then327
  %and338 = and i32 %sub323, 4, !dbg !1224
  tail call void @llvm.dbg.value(metadata !{i32 %and338}, i64 0, metadata !339), !dbg !1224
  %tobool339 = icmp eq i32 %and338, 0, !dbg !1225
  br i1 %tobool339, label %if.else344, label %if.then340, !dbg !1225

if.then340:                                       ; preds = %if.end335
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx330) #6, !dbg !1225
  br label %if.end348, !dbg !1225

if.else344:                                       ; preds = %if.end335
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx330) #6, !dbg !1226
  br label %if.end348

if.end348:                                        ; preds = %if.else344, %if.then340
  %and351 = and i32 %sub323, 2, !dbg !1227
  tail call void @llvm.dbg.value(metadata !{i32 %and351}, i64 0, metadata !339), !dbg !1227
  %tobool352 = icmp eq i32 %and351, 0, !dbg !1228
  br i1 %tobool352, label %if.else357, label %if.then353, !dbg !1228

if.then353:                                       ; preds = %if.end348
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx330) #6, !dbg !1228
  br label %if.end361, !dbg !1228

if.else357:                                       ; preds = %if.end348
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx330) #6, !dbg !1229
  br label %if.end361

if.end361:                                        ; preds = %if.else357, %if.then353
  %and363 = and i32 %sub323, 1, !dbg !1230
  tail call void @llvm.dbg.value(metadata !{i32 %and363}, i64 0, metadata !339), !dbg !1230
  %tobool364 = icmp eq i32 %and363, 0, !dbg !1231
  br i1 %tobool364, label %if.else369, label %if.then365, !dbg !1231

if.then365:                                       ; preds = %if.end361
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx330) #6, !dbg !1231
  br label %if.end373, !dbg !1231

if.else369:                                       ; preds = %if.end361
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx330) #6, !dbg !1232
  br label %if.end373

if.end373:                                        ; preds = %if.else369, %if.then365
  %cmp374 = icmp sgt i32 %dec..cond134, 21, !dbg !1233
  %inc = zext i1 %cmp374 to i32, !dbg !1233
  %inc.dec..cond134 = add nsw i32 %inc, %dec..cond134, !dbg !1233
  br label %if.end382, !dbg !1233

if.end382:                                        ; preds = %if.end373, %if.else270, %if.then266, %if.else303, %if.then216
  %act_sym.2 = phi i32 [ %.cond134, %if.then216 ], [ %.cond134, %if.then266 ], [ %.cond134, %if.else270 ], [ %.cond134, %if.else303 ], [ %inc.dec..cond134, %if.end373 ]
  %cmp383 = icmp eq i32 %act_sym.2, 24, !dbg !1176
  br i1 %cmp383, label %if.then385, label %if.end448, !dbg !1176

if.then385:                                       ; preds = %if.end382.thread660, %if.end382
  %.sub138656662 = phi i32 [ %.sub138652, %if.end382.thread660 ], [ %.sub138, %if.end382 ]
  %cmp386 = icmp eq i32 %.sub138656662, 25, !dbg !1234
  br i1 %cmp386, label %if.then388, label %if.end389, !dbg !1234

if.then388:                                       ; preds = %if.then385
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 1) #6, !dbg !1236
  br label %if.end448, !dbg !1238

if.end389:                                        ; preds = %if.then385
  tail call void @biari_encode_symbol_final(%struct.EncodingEnvironment* %eep_dp, i16 signext 0) #6, !dbg !1239
  tail call void @llvm.dbg.value(metadata !1136, i64 0, metadata !337), !dbg !1240
  %div390 = sdiv i32 %.sub138656662, 12, !dbg !1241
  tail call void @llvm.dbg.value(metadata !{i32 %div390}, i64 0, metadata !338), !dbg !1241
  %conv391 = trunc i32 %div390 to i16, !dbg !1242
  %conv392 = and i16 %conv391, 255, !dbg !1242
  %add.ptr397 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 8, !dbg !1242
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv392, %struct.BiContextType* %add.ptr397) #6, !dbg !1242
  %rem398 = srem i32 %.sub138656662, 12, !dbg !1243
  tail call void @llvm.dbg.value(metadata !{i32 %rem398}, i64 0, metadata !341), !dbg !1243
  tail call void @llvm.dbg.value(metadata !1244, i64 0, metadata !337), !dbg !1245
  %rem398.off = add i32 %rem398, 3, !dbg !1246
  %17 = icmp ult i32 %rem398.off, 7, !dbg !1246
  %add.ptr407 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 9, !dbg !1247
  br i1 %17, label %if.then402, label %if.else408, !dbg !1246

if.then402:                                       ; preds = %if.end389
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr407) #6, !dbg !1247
  br label %if.end429, !dbg !1249

if.else408:                                       ; preds = %if.end389
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr407) #6, !dbg !1250
  %rem398.off639 = add i32 %rem398, -4, !dbg !1252
  %18 = icmp ult i32 %rem398.off639, 4, !dbg !1252
  br i1 %18, label %if.then416, label %if.else422, !dbg !1252

if.then416:                                       ; preds = %if.else408
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr407) #6, !dbg !1253
  br label %if.end429, !dbg !1255

if.else422:                                       ; preds = %if.else408
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr407) #6, !dbg !1256
  br label %if.end429

if.end429:                                        ; preds = %if.then416, %if.else422, %if.then402
  %rem430 = srem i32 %rem398, 4, !dbg !1258
  tail call void @llvm.dbg.value(metadata !{i32 %rem430}, i64 0, metadata !341), !dbg !1258
  tail call void @llvm.dbg.value(metadata !1259, i64 0, metadata !337), !dbg !1260
  %div431 = sdiv i32 %rem430, 2, !dbg !1261
  tail call void @llvm.dbg.value(metadata !{i32 %div431}, i64 0, metadata !338), !dbg !1261
  %conv432 = trunc i32 %div431 to i16, !dbg !1262
  %conv433 = and i16 %conv432, 255, !dbg !1262
  %add.ptr438 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 0, i64 1, i64 10, !dbg !1262
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv433, %struct.BiContextType* %add.ptr438) #6, !dbg !1262
  %rem439 = srem i32 %rem430, 2, !dbg !1263
  tail call void @llvm.dbg.value(metadata !{i32 %rem439}, i64 0, metadata !338), !dbg !1263
  %conv440 = trunc i32 %rem439 to i16, !dbg !1264
  %conv441 = and i16 %conv440, 255, !dbg !1264
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv441, %struct.BiContextType* %add.ptr438) #6, !dbg !1264
  br label %if.end448, !dbg !1265

if.end448:                                        ; preds = %if.then141, %sw.bb, %sw.bb151, %sw.bb161, %sw.bb171, %sw.bb181, %if.then299, %if.else220, %if.then198, %if.end382, %if.end429, %if.then32, %if.end86, %if.then37, %if.then388
  ret void, !dbg !1266
}

; Function Attrs: optsize
declare void @biari_encode_symbol_final(%struct.EncodingEnvironment*, i16 signext) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define void @writeB8_typeInfo_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !348), !dbg !1267
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !349), !dbg !1267
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1268, !tbaa !989
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1268
  %1 = load i32* %type, align 4, !dbg !1268, !tbaa !984
  %cmp = icmp eq i32 %1, 1, !dbg !1268
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1269
  %2 = load %struct.Slice** %currentSlice, align 8, !dbg !1269, !tbaa !989
  %mot_ctx = getelementptr inbounds %struct.Slice* %2, i64 0, i32 7, !dbg !1269
  %3 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !dbg !1269, !tbaa !989
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %3}, i64 0, metadata !354), !dbg !1269
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1270
  %4 = load i32* %value1, align 4, !dbg !1270, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !351), !dbg !1270
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !350), !dbg !1271
  br i1 %cmp, label %if.else, label %if.then, !dbg !1272

if.then:                                          ; preds = %entry
  switch i32 %4, label %if.end147 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb9
    i32 3, label %sw.bb19
  ], !dbg !1273

sw.bb:                                            ; preds = %if.then
  %arrayidx1 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 1, !dbg !1275
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx1) #6, !dbg !1275
  br label %if.end147, !dbg !1277

sw.bb2:                                           ; preds = %if.then
  %arrayidx5 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 1, !dbg !1278
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx5) #6, !dbg !1278
  %arrayidx8 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 3, !dbg !1279
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx8) #6, !dbg !1279
  br label %if.end147, !dbg !1280

sw.bb9:                                           ; preds = %if.then
  %arrayidx12 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 1, !dbg !1281
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx12) #6, !dbg !1281
  %arrayidx15 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 3, !dbg !1282
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx15) #6, !dbg !1282
  %arrayidx18 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 4, !dbg !1283
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx18) #6, !dbg !1283
  br label %if.end147, !dbg !1284

sw.bb19:                                          ; preds = %if.then
  %arrayidx22 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 1, !dbg !1285
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx22) #6, !dbg !1285
  %arrayidx25 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 3, !dbg !1286
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx25) #6, !dbg !1286
  %arrayidx28 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 0, i64 4, !dbg !1287
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx28) #6, !dbg !1287
  br label %if.end147, !dbg !1288

if.else:                                          ; preds = %entry
  %cmp29 = icmp eq i32 %4, 0, !dbg !1289
  %arrayidx34 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 0, !dbg !1291
  br i1 %cmp29, label %if.then31, label %if.else35, !dbg !1289

if.then31:                                        ; preds = %if.else
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx34) #6, !dbg !1291
  br label %if.end147, !dbg !1293

if.else35:                                        ; preds = %if.else
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx34) #6, !dbg !1294
  %cmp39 = icmp slt i32 %4, 3, !dbg !1296
  br i1 %cmp39, label %if.then41, label %if.else56, !dbg !1296

if.then41:                                        ; preds = %if.else35
  %arrayidx44 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 1, !dbg !1297
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx44) #6, !dbg !1297
  %cmp45 = icmp eq i32 %4, 1, !dbg !1299
  %arrayidx50 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 3, !dbg !1299
  br i1 %cmp45, label %if.then47, label %if.else51, !dbg !1299

if.then47:                                        ; preds = %if.then41
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx50) #6, !dbg !1299
  br label %if.end147, !dbg !1299

if.else51:                                        ; preds = %if.then41
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx50) #6, !dbg !1300
  br label %if.end147

if.else56:                                        ; preds = %if.else35
  %cmp57 = icmp slt i32 %4, 7, !dbg !1301
  %arrayidx62 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 1, !dbg !1302
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx62) #6, !dbg !1302
  %arrayidx65 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 2, !dbg !1304
  br i1 %cmp57, label %if.then59, label %if.else88, !dbg !1301

if.then59:                                        ; preds = %if.else56
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx65) #6, !dbg !1304
  %sub = add nsw i32 %4, -3, !dbg !1305
  %and = and i32 %sub, 2, !dbg !1305
  tail call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !352), !dbg !1305
  %tobool66 = icmp eq i32 %and, 0, !dbg !1306
  %arrayidx70 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 3, !dbg !1306
  br i1 %tobool66, label %if.else71, label %if.then67, !dbg !1306

if.then67:                                        ; preds = %if.then59
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx70) #6, !dbg !1306
  br label %if.end75, !dbg !1306

if.else71:                                        ; preds = %if.then59
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx70) #6, !dbg !1307
  br label %if.end75

if.end75:                                         ; preds = %if.else71, %if.then67
  %and77 = and i32 %sub, 1, !dbg !1308
  tail call void @llvm.dbg.value(metadata !{i32 %and77}, i64 0, metadata !352), !dbg !1308
  %tobool78 = icmp eq i32 %and77, 0, !dbg !1309
  br i1 %tobool78, label %if.else83, label %if.then79, !dbg !1309

if.then79:                                        ; preds = %if.end75
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx70) #6, !dbg !1309
  br label %if.end147, !dbg !1309

if.else83:                                        ; preds = %if.end75
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx70) #6, !dbg !1310
  br label %if.end147

if.else88:                                        ; preds = %if.else56
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx65) #6, !dbg !1311
  %sub95 = add nsw i32 %4, -7, !dbg !1313
  %and97 = and i32 %sub95, 4, !dbg !1313
  tail call void @llvm.dbg.value(metadata !{i32 %and97}, i64 0, metadata !352), !dbg !1313
  %tobool98 = icmp eq i32 %and97, 0, !dbg !1314
  %arrayidx102 = getelementptr inbounds %struct.MotionInfoContexts* %3, i64 0, i32 1, i64 1, i64 3, !dbg !1315
  br i1 %tobool98, label %if.else115, label %if.then99, !dbg !1314

if.then99:                                        ; preds = %if.else88
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx102) #6, !dbg !1315
  %and104 = and i32 %sub95, 1, !dbg !1317
  tail call void @llvm.dbg.value(metadata !{i32 %and104}, i64 0, metadata !352), !dbg !1317
  %tobool105 = icmp eq i32 %and104, 0, !dbg !1318
  br i1 %tobool105, label %if.else110, label %if.then106, !dbg !1318

if.then106:                                       ; preds = %if.then99
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx102) #6, !dbg !1318
  br label %if.end147, !dbg !1318

if.else110:                                       ; preds = %if.then99
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx102) #6, !dbg !1319
  br label %if.end147

if.else115:                                       ; preds = %if.else88
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx102) #6, !dbg !1320
  %and121 = and i32 %sub95, 2, !dbg !1322
  tail call void @llvm.dbg.value(metadata !{i32 %and121}, i64 0, metadata !352), !dbg !1322
  %tobool122 = icmp eq i32 %and121, 0, !dbg !1323
  br i1 %tobool122, label %if.else127, label %if.then123, !dbg !1323

if.then123:                                       ; preds = %if.else115
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx102) #6, !dbg !1323
  br label %if.end131, !dbg !1323

if.else127:                                       ; preds = %if.else115
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx102) #6, !dbg !1324
  br label %if.end131

if.end131:                                        ; preds = %if.else127, %if.then123
  %and133 = and i32 %sub95, 1, !dbg !1325
  tail call void @llvm.dbg.value(metadata !{i32 %and133}, i64 0, metadata !352), !dbg !1325
  %tobool134 = icmp eq i32 %and133, 0, !dbg !1326
  br i1 %tobool134, label %if.else139, label %if.then135, !dbg !1326

if.then135:                                       ; preds = %if.end131
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx102) #6, !dbg !1326
  br label %if.end147, !dbg !1326

if.else139:                                       ; preds = %if.end131
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx102) #6, !dbg !1327
  br label %if.end147

if.end147:                                        ; preds = %if.else51, %if.then47, %if.else110, %if.then106, %if.else139, %if.then135, %if.then79, %if.else83, %sw.bb, %sw.bb2, %sw.bb9, %sw.bb19, %if.then, %if.then31
  ret void, !dbg !1328
}

; Function Attrs: nounwind optsize uwtable
define void @writeIntraPredMode_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !357), !dbg !1329
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !358), !dbg !1329
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1330, !tbaa !989
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1330
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !1330, !tbaa !989
  %tex_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8, !dbg !1330
  %2 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !dbg !1330, !tbaa !989
  tail call void @llvm.dbg.value(metadata !{%struct.TextureInfoContexts* %2}, i64 0, metadata !359), !dbg !1330
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1331
  %3 = load i32* %value1, align 4, !dbg !1331, !tbaa !984
  %cmp = icmp eq i32 %3, -1, !dbg !1331
  %arraydecay = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 0, i64 0, !dbg !1332
  br i1 %cmp, label %if.then, label %if.else, !dbg !1331

if.then:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arraydecay) #6, !dbg !1332
  br label %if.end, !dbg !1332

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arraydecay) #6, !dbg !1333
  %4 = load i32* %value1, align 4, !dbg !1335, !tbaa !984
  %.tr = trunc i32 %4 to i16, !dbg !1335
  %conv = and i16 %.tr, 1, !dbg !1335
  %add.ptr = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 0, i64 1, !dbg !1335
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv, %struct.BiContextType* %add.ptr) #6, !dbg !1335
  %5 = load i32* %value1, align 4, !dbg !1336, !tbaa !984
  %and7 = lshr i32 %5, 1, !dbg !1336
  %and7.tr = trunc i32 %and7 to i16, !dbg !1336
  %conv8 = and i16 %and7.tr, 1, !dbg !1336
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv8, %struct.BiContextType* %add.ptr) #6, !dbg !1336
  %6 = load i32* %value1, align 4, !dbg !1337, !tbaa !984
  %and13 = lshr i32 %6, 2, !dbg !1337
  %and13.tr = trunc i32 %and13 to i16, !dbg !1337
  %conv15 = and i16 %and13.tr, 1, !dbg !1337
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv15, %struct.BiContextType* %add.ptr) #6, !dbg !1337
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1338
}

; Function Attrs: nounwind optsize uwtable
define void @writeRefFrame_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !362), !dbg !1339
  call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !363), !dbg !1339
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1340, !tbaa !989
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1340
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !1340, !tbaa !989
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7, !dbg !1340
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !dbg !1340, !tbaa !989
  call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %2}, i64 0, metadata !364), !dbg !1340
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1341
  %3 = load i32* %current_mb_nr, align 4, !dbg !1341, !tbaa !984
  %idxprom = sext i32 %3 to i64, !dbg !1341
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1341
  %4 = load %struct.macroblock** %mb_data, align 8, !dbg !1341, !tbaa !989
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !366), !dbg !1342
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1343
  %5 = load i32* %value2, align 4, !dbg !1343, !tbaa !984
  %idxprom1 = sext i32 %5 to i64, !dbg !1343
  %6 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1343, !tbaa !989
  %ref_idx = getelementptr inbounds %struct.storable_picture* %6, i64 0, i32 32, !dbg !1343
  %7 = load i16**** %ref_idx, align 8, !dbg !1343, !tbaa !989
  %arrayidx2 = getelementptr inbounds i16*** %7, i64 %idxprom1, !dbg !1343
  %8 = load i16*** %arrayidx2, align 8, !dbg !1343, !tbaa !989
  call void @llvm.dbg.value(metadata !{i16** %8}, i64 0, metadata !371), !dbg !1343
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1344
  %9 = load i32* %type, align 4, !dbg !1344, !tbaa !984
  %cmp = icmp eq i32 %9, 1, !dbg !1344
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %block_a}, metadata !378), !dbg !1345
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %block_b}, metadata !379), !dbg !1345
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 18, !dbg !1346
  %10 = load i32* %subblock_x, align 4, !dbg !1346, !tbaa !984
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 19, !dbg !1346
  %11 = load i32* %subblock_y, align 4, !dbg !1346, !tbaa !984
  call void @getLuma4x4Neighbour(i32 %3, i32 %10, i32 %11, i32 -1, i32 0, %struct.pix_pos* %block_a) #6, !dbg !1346
  %12 = load %struct.ImageParameters** @img, align 8, !dbg !1347, !tbaa !989
  %current_mb_nr4 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 3, !dbg !1347
  %13 = load i32* %current_mb_nr4, align 4, !dbg !1347, !tbaa !984
  %subblock_x5 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 18, !dbg !1347
  %14 = load i32* %subblock_x5, align 4, !dbg !1347, !tbaa !984
  %subblock_y6 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 19, !dbg !1347
  %15 = load i32* %subblock_y6, align 4, !dbg !1347, !tbaa !984
  call void @getLuma4x4Neighbour(i32 %13, i32 %14, i32 %15, i32 0, i32 -1, %struct.pix_pos* %block_b) #6, !dbg !1347
  %x = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2, !dbg !1348
  %16 = load i32* %x, align 4, !dbg !1348, !tbaa !984
  %div = sdiv i32 %16, 2, !dbg !1348
  %rem = srem i32 %div, 2, !dbg !1348
  %y = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3, !dbg !1348
  %17 = load i32* %y, align 4, !dbg !1348, !tbaa !984
  %div7 = sdiv i32 %17, 2, !dbg !1348
  %rem8 = srem i32 %div7, 2, !dbg !1348
  %mul = shl i32 %rem8, 1, !dbg !1348
  %add = add nsw i32 %mul, %rem, !dbg !1348
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !376), !dbg !1348
  %x9 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2, !dbg !1349
  %18 = load i32* %x9, align 4, !dbg !1349, !tbaa !984
  %div10 = sdiv i32 %18, 2, !dbg !1349
  %rem11 = srem i32 %div10, 2, !dbg !1349
  %y12 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3, !dbg !1349
  %19 = load i32* %y12, align 4, !dbg !1349, !tbaa !984
  %div13 = sdiv i32 %19, 2, !dbg !1349
  %rem14 = srem i32 %div13, 2, !dbg !1349
  %mul15 = shl i32 %rem14, 1, !dbg !1349
  %add16 = add nsw i32 %mul15, %rem11, !dbg !1349
  call void @llvm.dbg.value(metadata !{i32 %add16}, i64 0, metadata !377), !dbg !1349
  %available = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0, !dbg !1350
  %20 = load i32* %available, align 4, !dbg !1350, !tbaa !984
  %tobool = icmp eq i32 %20, 0, !dbg !1350
  br i1 %tobool, label %if.end69, label %if.else, !dbg !1350

if.else:                                          ; preds = %entry
  %mb_addr = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1, !dbg !1351
  %21 = load i32* %mb_addr, align 4, !dbg !1351, !tbaa !984
  %idxprom17 = sext i32 %21 to i64, !dbg !1351
  %22 = load %struct.ImageParameters** @img, align 8, !dbg !1351, !tbaa !989
  %mb_data18 = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 51, !dbg !1351
  %23 = load %struct.macroblock** %mb_data18, align 8, !dbg !1351, !tbaa !989
  %mb_type = getelementptr inbounds %struct.macroblock* %23, i64 %idxprom17, i32 8, !dbg !1351
  %24 = load i32* %mb_type, align 4, !dbg !1351, !tbaa !984
  %cmp20 = icmp eq i32 %24, 0, !dbg !1351
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false, !dbg !1351

land.lhs.true:                                    ; preds = %if.else
  %type22 = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 6, !dbg !1351
  %25 = load i32* %type22, align 4, !dbg !1351, !tbaa !984
  %cmp23 = icmp eq i32 %25, 1, !dbg !1351
  br i1 %cmp23, label %if.end69, label %lor.lhs.false, !dbg !1351

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else
  %idxprom25 = sext i32 %add16 to i64, !dbg !1351
  %arrayidx30 = getelementptr inbounds %struct.macroblock* %23, i64 %idxprom17, i32 14, i64 %idxprom25, !dbg !1351
  %26 = load i32* %arrayidx30, align 4, !dbg !1351, !tbaa !984
  %cmp31.not = icmp ne i32 %26, 0, !dbg !1351
  %cmp.not = xor i1 %cmp, true, !dbg !1351
  %brmerge = or i1 %cmp31.not, %cmp.not, !dbg !1351
  br i1 %brmerge, label %if.else36, label %if.end69, !dbg !1351

if.else36:                                        ; preds = %lor.lhs.false
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 90, !dbg !1352
  %27 = load i32* %MbaffFrameFlag, align 4, !dbg !1352, !tbaa !984
  %tobool37 = icmp eq i32 %27, 0, !dbg !1352
  br i1 %tobool37, label %if.else57, label %land.lhs.true38, !dbg !1352

land.lhs.true38:                                  ; preds = %if.else36
  %mb_field = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 22, !dbg !1352
  %28 = load i32* %mb_field, align 4, !dbg !1352, !tbaa !984
  %cmp39 = icmp eq i32 %28, 0, !dbg !1352
  br i1 %cmp39, label %land.lhs.true41, label %if.else57, !dbg !1352

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %mb_field46 = getelementptr inbounds %struct.macroblock* %23, i64 %idxprom17, i32 22, !dbg !1352
  %29 = load i32* %mb_field46, align 4, !dbg !1352, !tbaa !984
  %cmp47 = icmp eq i32 %29, 1, !dbg !1352
  br i1 %cmp47, label %if.then49, label %if.else57, !dbg !1352

if.then49:                                        ; preds = %land.lhs.true41
  %pos_y = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 5, !dbg !1354
  %30 = load i32* %pos_y, align 4, !dbg !1354, !tbaa !984
  %idxprom50 = sext i32 %30 to i64, !dbg !1354
  %pos_x = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 4, !dbg !1354
  %31 = load i32* %pos_x, align 4, !dbg !1354, !tbaa !984
  %idxprom51 = sext i32 %31 to i64, !dbg !1354
  %arrayidx52 = getelementptr inbounds i16** %8, i64 %idxprom51, !dbg !1354
  %32 = load i16** %arrayidx52, align 8, !dbg !1354, !tbaa !989
  %arrayidx53 = getelementptr inbounds i16* %32, i64 %idxprom50, !dbg !1354
  %33 = load i16* %arrayidx53, align 2, !dbg !1354, !tbaa !1355
  %cmp55 = icmp sgt i16 %33, 1, !dbg !1354
  %cond = select i1 %cmp55, i32 2, i32 0, !dbg !1354
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !368), !dbg !1354
  br label %if.end69, !dbg !1354

if.else57:                                        ; preds = %if.else36, %land.lhs.true41, %land.lhs.true38
  %pos_y58 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 5, !dbg !1356
  %34 = load i32* %pos_y58, align 4, !dbg !1356, !tbaa !984
  %idxprom59 = sext i32 %34 to i64, !dbg !1356
  %pos_x60 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 4, !dbg !1356
  %35 = load i32* %pos_x60, align 4, !dbg !1356, !tbaa !984
  %idxprom61 = sext i32 %35 to i64, !dbg !1356
  %arrayidx62 = getelementptr inbounds i16** %8, i64 %idxprom61, !dbg !1356
  %36 = load i16** %arrayidx62, align 8, !dbg !1356, !tbaa !989
  %arrayidx63 = getelementptr inbounds i16* %36, i64 %idxprom59, !dbg !1356
  %37 = load i16* %arrayidx63, align 2, !dbg !1356, !tbaa !1355
  %cmp65 = icmp sgt i16 %37, 0, !dbg !1356
  %cond67 = select i1 %cmp65, i32 2, i32 0, !dbg !1356
  call void @llvm.dbg.value(metadata !{i32 %cond67}, i64 0, metadata !368), !dbg !1356
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true, %lor.lhs.false, %entry, %if.else57, %if.then49
  %b.0 = phi i32 [ %cond, %if.then49 ], [ %cond67, %if.else57 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ]
  %available70 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !1357
  %38 = load i32* %available70, align 4, !dbg !1357, !tbaa !984
  %tobool71 = icmp eq i32 %38, 0, !dbg !1357
  br i1 %tobool71, label %if.end137, label %if.else73, !dbg !1357

if.else73:                                        ; preds = %if.end69
  %mb_addr74 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1, !dbg !1358
  %39 = load i32* %mb_addr74, align 4, !dbg !1358, !tbaa !984
  %idxprom75 = sext i32 %39 to i64, !dbg !1358
  %40 = load %struct.ImageParameters** @img, align 8, !dbg !1358, !tbaa !989
  %mb_data76 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 51, !dbg !1358
  %41 = load %struct.macroblock** %mb_data76, align 8, !dbg !1358, !tbaa !989
  %mb_type78 = getelementptr inbounds %struct.macroblock* %41, i64 %idxprom75, i32 8, !dbg !1358
  %42 = load i32* %mb_type78, align 4, !dbg !1358, !tbaa !984
  %cmp79 = icmp eq i32 %42, 0, !dbg !1358
  br i1 %cmp79, label %land.lhs.true81, label %lor.lhs.false85, !dbg !1358

land.lhs.true81:                                  ; preds = %if.else73
  %type82 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 6, !dbg !1358
  %43 = load i32* %type82, align 4, !dbg !1358, !tbaa !984
  %cmp83 = icmp eq i32 %43, 1, !dbg !1358
  br i1 %cmp83, label %if.end137, label %lor.lhs.false85, !dbg !1358

lor.lhs.false85:                                  ; preds = %land.lhs.true81, %if.else73
  %idxprom86 = sext i32 %add to i64, !dbg !1358
  %arrayidx92 = getelementptr inbounds %struct.macroblock* %41, i64 %idxprom75, i32 14, i64 %idxprom86, !dbg !1358
  %44 = load i32* %arrayidx92, align 4, !dbg !1358, !tbaa !984
  %cmp93.not = icmp ne i32 %44, 0, !dbg !1358
  %cmp.not174 = xor i1 %cmp, true, !dbg !1358
  %brmerge175 = or i1 %cmp93.not, %cmp.not174, !dbg !1358
  br i1 %brmerge175, label %if.else98, label %if.end137, !dbg !1358

if.else98:                                        ; preds = %lor.lhs.false85
  %MbaffFrameFlag99 = getelementptr inbounds %struct.ImageParameters* %40, i64 0, i32 90, !dbg !1359
  %45 = load i32* %MbaffFrameFlag99, align 4, !dbg !1359, !tbaa !984
  %tobool100 = icmp eq i32 %45, 0, !dbg !1359
  br i1 %tobool100, label %if.else124, label %land.lhs.true101, !dbg !1359

land.lhs.true101:                                 ; preds = %if.else98
  %mb_field102 = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 22, !dbg !1359
  %46 = load i32* %mb_field102, align 4, !dbg !1359, !tbaa !984
  %cmp103 = icmp eq i32 %46, 0, !dbg !1359
  br i1 %cmp103, label %land.lhs.true105, label %if.else124, !dbg !1359

land.lhs.true105:                                 ; preds = %land.lhs.true101
  %mb_field110 = getelementptr inbounds %struct.macroblock* %41, i64 %idxprom75, i32 22, !dbg !1359
  %47 = load i32* %mb_field110, align 4, !dbg !1359, !tbaa !984
  %cmp111 = icmp eq i32 %47, 1, !dbg !1359
  br i1 %cmp111, label %if.then113, label %if.else124, !dbg !1359

if.then113:                                       ; preds = %land.lhs.true105
  %pos_y114 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 5, !dbg !1361
  %48 = load i32* %pos_y114, align 4, !dbg !1361, !tbaa !984
  %idxprom115 = sext i32 %48 to i64, !dbg !1361
  %pos_x116 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 4, !dbg !1361
  %49 = load i32* %pos_x116, align 4, !dbg !1361, !tbaa !984
  %idxprom117 = sext i32 %49 to i64, !dbg !1361
  %arrayidx118 = getelementptr inbounds i16** %8, i64 %idxprom117, !dbg !1361
  %50 = load i16** %arrayidx118, align 8, !dbg !1361, !tbaa !989
  %arrayidx119 = getelementptr inbounds i16* %50, i64 %idxprom115, !dbg !1361
  %51 = load i16* %arrayidx119, align 2, !dbg !1361, !tbaa !1355
  %cmp121 = icmp sgt i16 %51, 1, !dbg !1361
  %cond123 = zext i1 %cmp121 to i32, !dbg !1361
  call void @llvm.dbg.value(metadata !{i32 %cond123}, i64 0, metadata !367), !dbg !1361
  br label %if.end137, !dbg !1361

if.else124:                                       ; preds = %if.else98, %land.lhs.true105, %land.lhs.true101
  %pos_y125 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 5, !dbg !1362
  %52 = load i32* %pos_y125, align 4, !dbg !1362, !tbaa !984
  %idxprom126 = sext i32 %52 to i64, !dbg !1362
  %pos_x127 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 4, !dbg !1362
  %53 = load i32* %pos_x127, align 4, !dbg !1362, !tbaa !984
  %idxprom128 = sext i32 %53 to i64, !dbg !1362
  %arrayidx129 = getelementptr inbounds i16** %8, i64 %idxprom128, !dbg !1362
  %54 = load i16** %arrayidx129, align 8, !dbg !1362, !tbaa !989
  %arrayidx130 = getelementptr inbounds i16* %54, i64 %idxprom126, !dbg !1362
  %55 = load i16* %arrayidx130, align 2, !dbg !1362, !tbaa !1355
  %cmp132 = icmp sgt i16 %55, 0, !dbg !1362
  %cond134 = zext i1 %cmp132 to i32, !dbg !1362
  call void @llvm.dbg.value(metadata !{i32 %cond134}, i64 0, metadata !367), !dbg !1362
  br label %if.end137

if.end137:                                        ; preds = %land.lhs.true81, %lor.lhs.false85, %if.end69, %if.else124, %if.then113
  %a.0 = phi i32 [ %cond123, %if.then113 ], [ %cond134, %if.else124 ], [ 0, %if.end69 ], [ 0, %lor.lhs.false85 ], [ 0, %land.lhs.true81 ]
  %add139 = or i32 %a.0, %b.0, !dbg !1363
  call void @llvm.dbg.value(metadata !{i32 %add139}, i64 0, metadata !369), !dbg !1363
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1364
  store i32 %add139, i32* %context, align 4, !dbg !1364, !tbaa !984
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1365
  %56 = load i32* %value1, align 4, !dbg !1365, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !370), !dbg !1365
  %cmp140 = icmp eq i32 %56, 0, !dbg !1366
  %idx.ext173 = zext i32 %add139 to i64, !dbg !1367
  %add.ptr = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 3, i64 0, i64 %idx.ext173, !dbg !1367
  br i1 %cmp140, label %if.then142, label %if.else145, !dbg !1366

if.then142:                                       ; preds = %if.end137
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #6, !dbg !1367
  br label %if.end158, !dbg !1369

if.else145:                                       ; preds = %if.end137
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #6, !dbg !1370
  %dec = add nsw i32 %56, -1, !dbg !1372
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !370), !dbg !1372
  call void @llvm.dbg.value(metadata !1110, i64 0, metadata !369), !dbg !1373
  %add.ptr157 = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 3, i64 0, i64 4, !dbg !1374
  call void @unary_bin_encode(%struct.EncodingEnvironment* %eep_dp, i32 %dec, %struct.BiContextType* %add.ptr157, i32 1) #8, !dbg !1374
  br label %if.end158

if.end158:                                        ; preds = %if.else145, %if.then142
  ret void, !dbg !1375
}

; Function Attrs: optsize
declare void @getLuma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: nounwind optsize uwtable
define void @unary_bin_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %ctx_offset) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !517), !dbg !1376
  tail call void @llvm.dbg.value(metadata !{i32 %symbol}, i64 0, metadata !518), !dbg !1377
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %ctx}, i64 0, metadata !519), !dbg !1378
  tail call void @llvm.dbg.value(metadata !{i32 %ctx_offset}, i64 0, metadata !520), !dbg !1379
  %cmp = icmp eq i32 %symbol, 0, !dbg !1380
  br i1 %cmp, label %if.then, label %if.else, !dbg !1380

if.then:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #6, !dbg !1381
  br label %return, !dbg !1383

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #6, !dbg !1384
  tail call void @llvm.dbg.value(metadata !{i32 %symbol}, i64 0, metadata !521), !dbg !1386
  %idx.ext = sext i32 %ctx_offset to i64, !dbg !1387
  %add.ptr = getelementptr inbounds %struct.BiContextType* %ctx, i64 %idx.ext, !dbg !1387
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %add.ptr}, i64 0, metadata !522), !dbg !1387
  %dec5 = add i32 %symbol, -1, !dbg !1388
  tail call void @llvm.dbg.value(metadata !{i32 %dec5}, i64 0, metadata !521), !dbg !1388
  %cmp16 = icmp eq i32 %dec5, 0, !dbg !1388
  br i1 %cmp16, label %while.end, label %while.body, !dbg !1388

while.body:                                       ; preds = %if.else, %while.body
  %dec7 = phi i32 [ %dec, %while.body ], [ %dec5, %if.else ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #6, !dbg !1389
  %dec = add i32 %dec7, -1, !dbg !1388
  tail call void @llvm.dbg.value(metadata !{i32 %dec7}, i64 0, metadata !521), !dbg !1388
  %cmp1 = icmp eq i32 %dec, 0, !dbg !1388
  br i1 %cmp1, label %while.end, label %while.body, !dbg !1388

while.end:                                        ; preds = %while.body, %if.else
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #6, !dbg !1390
  br label %return, !dbg !1391

return:                                           ; preds = %while.end, %if.then
  ret void, !dbg !1391
}

; Function Attrs: nounwind optsize uwtable
define void @writeDquant_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !382), !dbg !1392
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !383), !dbg !1392
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1393, !tbaa !989
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1393
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !1393, !tbaa !989
  %mot_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 7, !dbg !1393
  %2 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !dbg !1393, !tbaa !989
  tail call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %2}, i64 0, metadata !384), !dbg !1393
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1394
  %3 = load i32* %value1, align 4, !dbg !1394, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !387), !dbg !1394
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !388), !dbg !1395
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1396
  %4 = load i32* %current_mb_nr, align 4, !dbg !1396, !tbaa !984
  %idxprom = sext i32 %4 to i64, !dbg !1396
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1396
  %5 = load %struct.macroblock** %mb_data, align 8, !dbg !1396, !tbaa !989
  %prev_delta_qp = getelementptr inbounds %struct.macroblock* %5, i64 %idxprom, i32 37, !dbg !1397
  %6 = load i32* %prev_delta_qp, align 4, !dbg !1397, !tbaa !984
  store i32 %6, i32* @last_dquant, align 4, !dbg !1397, !tbaa !984
  %cmp = icmp slt i32 %3, 1, !dbg !1398
  tail call void @llvm.dbg.value(metadata !1399, i64 0, metadata !388), !dbg !1400
  %. = zext i1 %cmp to i32, !dbg !1398
  %ispos = icmp sgt i32 %3, -1, !dbg !1401
  %neg = sub i32 0, %3, !dbg !1401
  %7 = select i1 %ispos, i32 %3, i32 %neg, !dbg !1401
  %shl = shl i32 %7, 1, !dbg !1401
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !386), !dbg !1401
  %add = or i32 %shl, %., !dbg !1402
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !386), !dbg !1402
  %cmp1 = icmp ne i32 %6, 0, !dbg !1403
  %cmp2 = icmp eq i32 %add, 1, !dbg !1404
  %idx.ext = zext i1 %cmp1 to i64, !dbg !1405
  %add.ptr = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 4, i64 %idx.ext, !dbg !1405
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1404

if.then3:                                         ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #6, !dbg !1405
  br label %if.end13, !dbg !1407

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #6, !dbg !1408
  tail call void @llvm.dbg.value(metadata !1410, i64 0, metadata !385), !dbg !1411
  %dec8 = add nsw i32 %add, -2, !dbg !1412
  tail call void @llvm.dbg.value(metadata !{i32 %dec8}, i64 0, metadata !386), !dbg !1412
  %add.ptr12 = getelementptr inbounds %struct.MotionInfoContexts* %2, i64 0, i32 4, i64 2, !dbg !1413
  tail call void @unary_bin_encode(%struct.EncodingEnvironment* %eep_dp, i32 %dec8, %struct.BiContextType* %add.ptr12, i32 1) #8, !dbg !1413
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then3
  ret void, !dbg !1414
}

; Function Attrs: nounwind optsize uwtable
define void @writeMVD_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !392), !dbg !1415
  call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !393), !dbg !1415
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1416, !tbaa !989
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 18, !dbg !1416
  %1 = load i32* %subblock_x, align 4, !dbg !1416, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !394), !dbg !1416
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 19, !dbg !1417
  %2 = load i32* %subblock_y, align 4, !dbg !1417, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !395), !dbg !1417
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1418
  %3 = load i32* %value2, align 4, !dbg !1418, !tbaa !984
  %and = and i32 %3, 1, !dbg !1418
  call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !403), !dbg !1418
  %shr = ashr i32 %3, 1, !dbg !1419
  call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !404), !dbg !1419
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %block_a}, metadata !405), !dbg !1420
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %block_b}, metadata !406), !dbg !1420
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1421
  %4 = load %struct.Slice** %currentSlice, align 8, !dbg !1421, !tbaa !989
  %mot_ctx = getelementptr inbounds %struct.Slice* %4, i64 0, i32 7, !dbg !1421
  %5 = load %struct.MotionInfoContexts** %mot_ctx, align 8, !dbg !1421, !tbaa !989
  call void @llvm.dbg.value(metadata !{%struct.MotionInfoContexts* %5}, i64 0, metadata !407), !dbg !1421
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1422
  %6 = load i32* %current_mb_nr, align 4, !dbg !1422, !tbaa !984
  %idxprom = sext i32 %6 to i64, !dbg !1422
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1422
  %7 = load %struct.macroblock** %mb_data, align 8, !dbg !1422, !tbaa !989
  call void @getLuma4x4Neighbour(i32 %6, i32 %1, i32 %2, i32 -1, i32 0, %struct.pix_pos* %block_a) #6, !dbg !1423
  %8 = load %struct.ImageParameters** @img, align 8, !dbg !1424, !tbaa !989
  %current_mb_nr3 = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 3, !dbg !1424
  %9 = load i32* %current_mb_nr3, align 4, !dbg !1424, !tbaa !984
  call void @getLuma4x4Neighbour(i32 %9, i32 %1, i32 %2, i32 0, i32 -1, %struct.pix_pos* %block_b) #6, !dbg !1424
  %available = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0, !dbg !1425
  %10 = load i32* %available, align 4, !dbg !1425, !tbaa !984
  %tobool = icmp eq i32 %10, 0, !dbg !1425
  br i1 %tobool, label %if.end70, label %if.then, !dbg !1425

if.then:                                          ; preds = %entry
  %idxprom4 = sext i32 %shr to i64, !dbg !1426
  %x = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2, !dbg !1426
  %11 = load i32* %x, align 4, !dbg !1426, !tbaa !984
  %idxprom5 = sext i32 %11 to i64, !dbg !1426
  %y = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3, !dbg !1426
  %12 = load i32* %y, align 4, !dbg !1426, !tbaa !984
  %idxprom6 = sext i32 %12 to i64, !dbg !1426
  %idxprom7227 = zext i32 %and to i64, !dbg !1426
  %mb_addr = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1, !dbg !1426
  %13 = load i32* %mb_addr, align 4, !dbg !1426, !tbaa !984
  %idxprom8 = sext i32 %13 to i64, !dbg !1426
  %14 = load %struct.ImageParameters** @img, align 8, !dbg !1426, !tbaa !989
  %mb_data9 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 51, !dbg !1426
  %15 = load %struct.macroblock** %mb_data9, align 8, !dbg !1426, !tbaa !989
  %arrayidx14 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom8, i32 9, i64 %idxprom7227, i64 %idxprom6, i64 %idxprom5, i64 %idxprom4, !dbg !1426
  %16 = load i32* %arrayidx14, align 4, !dbg !1426, !tbaa !984
  %cmp = icmp slt i32 %16, 0, !dbg !1426
  %sub = sub nsw i32 0, %16, !dbg !1426
  %cond = select i1 %cmp, i32 %sub, i32 %16, !dbg !1426
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !397), !dbg !1426
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 90, !dbg !1428
  %17 = load i32* %MbaffFrameFlag, align 4, !dbg !1428, !tbaa !984
  %tobool45 = icmp ne i32 %17, 0, !dbg !1428
  %cmp46 = icmp eq i32 %shr, 1, !dbg !1428
  %or.cond = and i1 %tobool45, %cmp46, !dbg !1428
  br i1 %or.cond, label %if.then47, label %if.end70, !dbg !1428

if.then47:                                        ; preds = %if.then
  %mb_field = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 22, !dbg !1429
  %18 = load i32* %mb_field, align 4, !dbg !1429, !tbaa !984
  switch i32 %18, label %if.end70 [
    i32 0, label %land.lhs.true49
    i32 1, label %land.lhs.true59
  ], !dbg !1429

land.lhs.true49:                                  ; preds = %if.then47
  %mb_field54 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom8, i32 22, !dbg !1429
  %19 = load i32* %mb_field54, align 4, !dbg !1429, !tbaa !984
  %cmp55 = icmp eq i32 %19, 1, !dbg !1429
  %mul = zext i1 %cmp55 to i32, !dbg !1429
  %mul.cond = shl nsw i32 %cond, %mul, !dbg !1429
  br label %if.end70, !dbg !1429

land.lhs.true59:                                  ; preds = %if.then47
  %mb_field64 = getelementptr inbounds %struct.macroblock* %15, i64 %idxprom8, i32 22, !dbg !1431
  %20 = load i32* %mb_field64, align 4, !dbg !1431, !tbaa !984
  %cmp65 = icmp eq i32 %20, 0, !dbg !1431
  br i1 %cmp65, label %if.then66, label %if.end70, !dbg !1431

if.then66:                                        ; preds = %land.lhs.true59
  %div = sdiv i32 %cond, 2, !dbg !1432
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !397), !dbg !1432
  br label %if.end70, !dbg !1432

if.end70:                                         ; preds = %land.lhs.true49, %if.then47, %entry, %if.then, %land.lhs.true59, %if.then66
  %b.0 = phi i32 [ %div, %if.then66 ], [ %cond, %land.lhs.true59 ], [ %cond, %if.then ], [ 0, %entry ], [ %mul.cond, %land.lhs.true49 ], [ %cond, %if.then47 ]
  %available71 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !1433
  %21 = load i32* %available71, align 4, !dbg !1433, !tbaa !984
  %tobool72 = icmp eq i32 %21, 0, !dbg !1433
  br i1 %tobool72, label %if.end157, label %if.then73, !dbg !1433

if.then73:                                        ; preds = %if.end70
  %idxprom74 = sext i32 %shr to i64, !dbg !1434
  %x75 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2, !dbg !1434
  %22 = load i32* %x75, align 4, !dbg !1434, !tbaa !984
  %idxprom76 = sext i32 %22 to i64, !dbg !1434
  %y77 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3, !dbg !1434
  %23 = load i32* %y77, align 4, !dbg !1434, !tbaa !984
  %idxprom78 = sext i32 %23 to i64, !dbg !1434
  %idxprom79226 = zext i32 %and to i64, !dbg !1434
  %mb_addr80 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1, !dbg !1434
  %24 = load i32* %mb_addr80, align 4, !dbg !1434, !tbaa !984
  %idxprom81 = sext i32 %24 to i64, !dbg !1434
  %25 = load %struct.ImageParameters** @img, align 8, !dbg !1434, !tbaa !989
  %mb_data82 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 51, !dbg !1434
  %26 = load %struct.macroblock** %mb_data82, align 8, !dbg !1434, !tbaa !989
  %arrayidx88 = getelementptr inbounds %struct.macroblock* %26, i64 %idxprom81, i32 9, i64 %idxprom79226, i64 %idxprom78, i64 %idxprom76, i64 %idxprom74, !dbg !1434
  %27 = load i32* %arrayidx88, align 4, !dbg !1434, !tbaa !984
  %cmp89 = icmp slt i32 %27, 0, !dbg !1434
  %sub106 = sub nsw i32 0, %27, !dbg !1434
  %cond124 = select i1 %cmp89, i32 %sub106, i32 %27, !dbg !1434
  call void @llvm.dbg.value(metadata !{i32 %cond124}, i64 0, metadata !396), !dbg !1434
  %MbaffFrameFlag125 = getelementptr inbounds %struct.ImageParameters* %25, i64 0, i32 90, !dbg !1436
  %28 = load i32* %MbaffFrameFlag125, align 4, !dbg !1436, !tbaa !984
  %tobool126 = icmp ne i32 %28, 0, !dbg !1436
  %cmp128 = icmp eq i32 %shr, 1, !dbg !1436
  %or.cond228 = and i1 %tobool126, %cmp128, !dbg !1436
  br i1 %or.cond228, label %if.then129, label %if.end157, !dbg !1436

if.then129:                                       ; preds = %if.then73
  %mb_field130 = getelementptr inbounds %struct.macroblock* %7, i64 %idxprom, i32 22, !dbg !1437
  %29 = load i32* %mb_field130, align 4, !dbg !1437, !tbaa !984
  switch i32 %29, label %if.end157 [
    i32 0, label %land.lhs.true132
    i32 1, label %land.lhs.true144
  ], !dbg !1437

land.lhs.true132:                                 ; preds = %if.then129
  %mb_field137 = getelementptr inbounds %struct.macroblock* %26, i64 %idxprom81, i32 22, !dbg !1437
  %30 = load i32* %mb_field137, align 4, !dbg !1437, !tbaa !984
  %cmp138 = icmp eq i32 %30, 1, !dbg !1437
  %mul140 = zext i1 %cmp138 to i32, !dbg !1437
  %mul140.cond124 = shl nsw i32 %cond124, %mul140, !dbg !1437
  br label %if.end157, !dbg !1437

land.lhs.true144:                                 ; preds = %if.then129
  %mb_field149 = getelementptr inbounds %struct.macroblock* %26, i64 %idxprom81, i32 22, !dbg !1439
  %31 = load i32* %mb_field149, align 4, !dbg !1439, !tbaa !984
  %cmp150 = icmp eq i32 %31, 0, !dbg !1439
  br i1 %cmp150, label %if.then151, label %if.end157, !dbg !1439

if.then151:                                       ; preds = %land.lhs.true144
  %div152 = sdiv i32 %cond124, 2, !dbg !1440
  call void @llvm.dbg.value(metadata !{i32 %div152}, i64 0, metadata !396), !dbg !1440
  br label %if.end157, !dbg !1440

if.end157:                                        ; preds = %land.lhs.true132, %if.then129, %if.end70, %if.then73, %land.lhs.true144, %if.then151
  %a.0 = phi i32 [ %div152, %if.then151 ], [ %cond124, %land.lhs.true144 ], [ %cond124, %if.then73 ], [ 0, %if.end70 ], [ %mul140.cond124, %land.lhs.true132 ], [ %cond124, %if.then129 ]
  %add = add nsw i32 %a.0, %b.0, !dbg !1441
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !401), !dbg !1441
  %cmp158 = icmp slt i32 %add, 3, !dbg !1441
  br i1 %cmp158, label %if.then159, label %if.else161, !dbg !1441

if.then159:                                       ; preds = %if.end157
  %mul160 = mul nsw i32 %shr, 5, !dbg !1442
  call void @llvm.dbg.value(metadata !{i32 %mul160}, i64 0, metadata !398), !dbg !1442
  br label %if.end170, !dbg !1442

if.else161:                                       ; preds = %if.end157
  %cmp162 = icmp sgt i32 %add, 32, !dbg !1443
  %mul164 = mul nsw i32 %shr, 5, !dbg !1445
  br i1 %cmp162, label %if.then163, label %if.else166, !dbg !1443

if.then163:                                       ; preds = %if.else161
  %add165 = add nsw i32 %mul164, 3, !dbg !1445
  call void @llvm.dbg.value(metadata !{i32 %add165}, i64 0, metadata !398), !dbg !1445
  br label %if.end170, !dbg !1445

if.else166:                                       ; preds = %if.else161
  %add168 = add nsw i32 %mul164, 2, !dbg !1446
  call void @llvm.dbg.value(metadata !{i32 %add168}, i64 0, metadata !398), !dbg !1446
  br label %if.end170

if.end170:                                        ; preds = %if.then163, %if.else166, %if.then159
  %act_ctx.0 = phi i32 [ %mul160, %if.then159 ], [ %add165, %if.then163 ], [ %add168, %if.else166 ]
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1447
  %32 = load i32* %value1, align 4, !dbg !1447, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !400), !dbg !1447
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1448
  store i32 %act_ctx.0, i32* %context, align 4, !dbg !1448, !tbaa !984
  %cmp171 = icmp slt i32 %32, 0, !dbg !1449
  %sub173 = sub nsw i32 0, %32, !dbg !1449
  %cond176 = select i1 %cmp171, i32 %sub173, i32 %32, !dbg !1449
  call void @llvm.dbg.value(metadata !{i32 %cond176}, i64 0, metadata !399), !dbg !1449
  %cmp177 = icmp eq i32 %cond176, 0, !dbg !1450
  %idxprom179 = sext i32 %act_ctx.0 to i64, !dbg !1451
  %arrayidx181 = getelementptr inbounds %struct.MotionInfoContexts* %5, i64 0, i32 2, i64 0, i64 %idxprom179, !dbg !1451
  br i1 %cmp177, label %if.then178, label %if.else182, !dbg !1450

if.then178:                                       ; preds = %if.end170
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %arrayidx181) #6, !dbg !1451
  br label %if.end193, !dbg !1451

if.else182:                                       ; preds = %if.end170
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %arrayidx181) #6, !dbg !1452
  %dec = add nsw i32 %cond176, -1, !dbg !1454
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !399), !dbg !1454
  %mul187 = mul nsw i32 %shr, 5, !dbg !1455
  call void @llvm.dbg.value(metadata !{i32 %mul187}, i64 0, metadata !398), !dbg !1455
  %idx.ext = sext i32 %mul187 to i64, !dbg !1456
  %add.ptr = getelementptr inbounds %struct.MotionInfoContexts* %5, i64 0, i32 2, i64 1, i64 %idx.ext, !dbg !1456
  call void @unary_exp_golomb_mv_encode(%struct.EncodingEnvironment* %eep_dp, i32 %dec, %struct.BiContextType* %add.ptr, i32 3) #8, !dbg !1456
  %.lobit = lshr i32 %32, 31, !dbg !1457
  %33 = trunc i32 %.lobit to i16, !dbg !1457
  call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext %33) #6, !dbg !1457
  br label %if.end193

if.end193:                                        ; preds = %if.else182, %if.then178
  ret void, !dbg !1458
}

; Function Attrs: nounwind optsize uwtable
define void @unary_exp_golomb_mv_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %max_bin) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !555), !dbg !1459
  tail call void @llvm.dbg.value(metadata !{i32 %symbol}, i64 0, metadata !556), !dbg !1460
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %ctx}, i64 0, metadata !557), !dbg !1461
  tail call void @llvm.dbg.value(metadata !{i32 %max_bin}, i64 0, metadata !558), !dbg !1462
  tail call void @llvm.dbg.value(metadata !1399, i64 0, metadata !561), !dbg !1463
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %ctx}, i64 0, metadata !562), !dbg !1464
  tail call void @llvm.dbg.value(metadata !1136, i64 0, metadata !563), !dbg !1465
  %cmp = icmp eq i32 %symbol, 0, !dbg !1466
  br i1 %cmp, label %if.then, label %if.else, !dbg !1466

if.then:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #6, !dbg !1467
  br label %return, !dbg !1469

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #6, !dbg !1470
  tail call void @llvm.dbg.value(metadata !{i32 %symbol}, i64 0, metadata !559), !dbg !1472
  tail call void @llvm.dbg.value(metadata !1399, i64 0, metadata !560), !dbg !1473
  %incdec.ptr = getelementptr inbounds %struct.BiContextType* %ctx, i64 1, !dbg !1474
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %incdec.ptr}, i64 0, metadata !562), !dbg !1474
  %cmp130 = icmp eq i32 %symbol, 1, !dbg !1475
  tail call void @llvm.dbg.value(metadata !1410, i64 0, metadata !560), !dbg !1475
  br i1 %cmp130, label %if.then12, label %while.body.lr.ph, !dbg !1475

while.body.lr.ph:                                 ; preds = %if.else
  %0 = sub i32 1, %symbol, !dbg !1475
  %1 = icmp ugt i32 %0, -7
  %2 = select i1 %1, i32 %symbol, i32 8, !dbg !1475
  br label %while.body, !dbg !1475

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %ictx.033 = phi %struct.BiContextType* [ %incdec.ptr, %while.body.lr.ph ], [ %incdec.ptr9.incdec.ptr6.ictx.0, %while.body ]
  %bin.032 = phi i32 [ 1, %while.body.lr.ph ], [ %inc3, %while.body ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ictx.033) #6, !dbg !1476
  %inc3 = add i32 %bin.032, 1, !dbg !1478
  tail call void @llvm.dbg.value(metadata !{i32 %inc3}, i64 0, metadata !561), !dbg !1478
  %cmp4 = icmp eq i32 %inc3, 2, !dbg !1478
  %incdec.ptr6 = getelementptr inbounds %struct.BiContextType* %ictx.033, i64 1, !dbg !1478
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %incdec.ptr6}, i64 0, metadata !562), !dbg !1478
  %incdec.ptr6.ictx.0 = select i1 %cmp4, %struct.BiContextType* %incdec.ptr6, %struct.BiContextType* %ictx.033, !dbg !1478
  %cmp7 = icmp eq i32 %inc3, %max_bin, !dbg !1479
  %incdec.ptr9 = getelementptr inbounds %struct.BiContextType* %incdec.ptr6.ictx.0, i64 1, !dbg !1479
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %incdec.ptr9}, i64 0, metadata !562), !dbg !1479
  %incdec.ptr9.incdec.ptr6.ictx.0 = select i1 %cmp7, %struct.BiContextType* %incdec.ptr9, %struct.BiContextType* %incdec.ptr6.ictx.0, !dbg !1479
  tail call void @llvm.dbg.value(metadata !1480, i64 0, metadata !559), !dbg !1475
  tail call void @llvm.dbg.value(metadata !1480, i64 0, metadata !560), !dbg !1475
  %exitcond = icmp eq i32 %inc3, %2, !dbg !1475
  br i1 %exitcond, label %while.end, label %while.body, !dbg !1475

while.end:                                        ; preds = %while.body
  %cmp11 = icmp ult i32 %symbol, 8, !dbg !1481
  br i1 %cmp11, label %if.then12, label %if.else13, !dbg !1481

if.then12:                                        ; preds = %if.else, %while.end
  %ictx.0.lcssa36 = phi %struct.BiContextType* [ %incdec.ptr9.incdec.ptr6.ictx.0, %while.end ], [ %incdec.ptr, %if.else ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ictx.0.lcssa36) #6, !dbg !1481
  br label %return, !dbg !1481

if.else13:                                        ; preds = %while.end
  %sub = add i32 %symbol, -8, !dbg !1482
  tail call void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %eep_dp, i32 %sub, i32 3) #8, !dbg !1482
  br label %return

return:                                           ; preds = %if.else13, %if.then12, %if.then
  ret void, !dbg !1483
}

; Function Attrs: optsize
declare void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment*, i16 signext) #2

; Function Attrs: nounwind optsize uwtable
define void @writeCIPredMode_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !411), !dbg !1484
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !412), !dbg !1484
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1485, !tbaa !989
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1485
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !1485, !tbaa !989
  %tex_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8, !dbg !1485
  %2 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !dbg !1485, !tbaa !989
  tail call void @llvm.dbg.value(metadata !{%struct.TextureInfoContexts* %2}, i64 0, metadata !413), !dbg !1485
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1486
  %3 = load i32* %current_mb_nr, align 4, !dbg !1486, !tbaa !984
  %idxprom = sext i32 %3 to i64, !dbg !1486
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1486
  %4 = load %struct.macroblock** %mb_data, align 8, !dbg !1486, !tbaa !989
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1487
  %5 = load i32* %value1, align 4, !dbg !1487, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !418), !dbg !1487
  %mb_available_up = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 6, !dbg !1488
  %6 = load %struct.macroblock** %mb_available_up, align 8, !dbg !1488, !tbaa !989
  %cmp = icmp eq %struct.macroblock* %6, null, !dbg !1488
  br i1 %cmp, label %if.end, label %if.else, !dbg !1488

if.else:                                          ; preds = %entry
  %c_ipred_mode = getelementptr inbounds %struct.macroblock* %6, i64 0, i32 20, !dbg !1489
  %7 = load i32* %c_ipred_mode, align 4, !dbg !1489, !tbaa !984
  %cmp2 = icmp ne i32 %7, 0, !dbg !1489
  %cond = zext i1 %cmp2 to i64, !dbg !1489
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %b.0 = phi i64 [ %cond, %if.else ], [ 0, %entry ]
  %mb_available_left = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 7, !dbg !1490
  %8 = load %struct.macroblock** %mb_available_left, align 8, !dbg !1490, !tbaa !989
  %cmp3 = icmp eq %struct.macroblock* %8, null, !dbg !1490
  br i1 %cmp3, label %if.end10, label %if.else5, !dbg !1490

if.else5:                                         ; preds = %if.end
  %c_ipred_mode7 = getelementptr inbounds %struct.macroblock* %8, i64 0, i32 20, !dbg !1491
  %9 = load i32* %c_ipred_mode7, align 4, !dbg !1491, !tbaa !984
  %cmp8 = icmp ne i32 %9, 0, !dbg !1491
  %cond9 = zext i1 %cmp8 to i64, !dbg !1491
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.else5
  %a.0 = phi i64 [ %cond9, %if.else5 ], [ 0, %if.end ]
  %add = add i64 %a.0, %b.0, !dbg !1492
  %cmp11 = icmp eq i32 %5, 0, !dbg !1493
  %add.ptr = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 1, i64 %add, !dbg !1493
  br i1 %cmp11, label %if.then12, label %if.else13, !dbg !1493

if.then12:                                        ; preds = %if.end10
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #6, !dbg !1493
  br label %if.end21, !dbg !1493

if.else13:                                        ; preds = %if.end10
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #6, !dbg !1494
  %sub = add nsw i32 %5, -1, !dbg !1496
  %add.ptr20 = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 1, i64 3, !dbg !1496
  tail call void @unary_bin_max_encode(%struct.EncodingEnvironment* %eep_dp, i32 %sub, %struct.BiContextType* %add.ptr20, i32 0, i32 2) #8, !dbg !1496
  br label %if.end21

if.end21:                                         ; preds = %if.else13, %if.then12
  ret void, !dbg !1497
}

; Function Attrs: nounwind optsize uwtable
define void @unary_bin_max_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx, i32 %ctx_offset, i32 %max_symbol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !527), !dbg !1498
  tail call void @llvm.dbg.value(metadata !{i32 %symbol}, i64 0, metadata !528), !dbg !1499
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %ctx}, i64 0, metadata !529), !dbg !1500
  tail call void @llvm.dbg.value(metadata !{i32 %ctx_offset}, i64 0, metadata !530), !dbg !1501
  tail call void @llvm.dbg.value(metadata !{i32 %max_symbol}, i64 0, metadata !531), !dbg !1502
  %cmp = icmp eq i32 %symbol, 0, !dbg !1503
  br i1 %cmp, label %if.then, label %if.else, !dbg !1503

if.then:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #6, !dbg !1504
  br label %return, !dbg !1506

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #6, !dbg !1507
  tail call void @llvm.dbg.value(metadata !{i32 %symbol}, i64 0, metadata !532), !dbg !1509
  %idx.ext = sext i32 %ctx_offset to i64, !dbg !1510
  %add.ptr = getelementptr inbounds %struct.BiContextType* %ctx, i64 %idx.ext, !dbg !1510
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %add.ptr}, i64 0, metadata !533), !dbg !1510
  %dec11 = add i32 %symbol, -1, !dbg !1511
  tail call void @llvm.dbg.value(metadata !{i32 %dec11}, i64 0, metadata !532), !dbg !1511
  %cmp112 = icmp eq i32 %dec11, 0, !dbg !1511
  br i1 %cmp112, label %while.end, label %while.body, !dbg !1511

while.body:                                       ; preds = %if.else, %while.body
  %dec13 = phi i32 [ %dec, %while.body ], [ %dec11, %if.else ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %add.ptr) #6, !dbg !1512
  %dec = add i32 %dec13, -1, !dbg !1511
  tail call void @llvm.dbg.value(metadata !{i32 %dec13}, i64 0, metadata !532), !dbg !1511
  %cmp1 = icmp eq i32 %dec, 0, !dbg !1511
  br i1 %cmp1, label %while.end, label %while.body, !dbg !1511

while.end:                                        ; preds = %while.body, %if.else
  %cmp2 = icmp ult i32 %symbol, %max_symbol, !dbg !1513
  br i1 %cmp2, label %if.then3, label %return, !dbg !1513

if.then3:                                         ; preds = %while.end
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %add.ptr) #6, !dbg !1514
  br label %return, !dbg !1514

return:                                           ; preds = %if.then3, %while.end, %if.then
  ret void, !dbg !1515
}

; Function Attrs: nounwind optsize uwtable
define void @writeCBP_BIT_CABAC(i32 %b8, i32 %bit, i32 %cbp, %struct.macroblock* nocapture %currMB, i32 %inter, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  call void @llvm.dbg.value(metadata !{i32 %b8}, i64 0, metadata !423), !dbg !1516
  call void @llvm.dbg.value(metadata !{i32 %bit}, i64 0, metadata !424), !dbg !1516
  call void @llvm.dbg.value(metadata !{i32 %cbp}, i64 0, metadata !425), !dbg !1516
  call void @llvm.dbg.value(metadata !{%struct.macroblock* %currMB}, i64 0, metadata !426), !dbg !1516
  call void @llvm.dbg.value(metadata !{i32 %inter}, i64 0, metadata !427), !dbg !1516
  call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !428), !dbg !1516
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %block_a}, metadata !429), !dbg !1517
  %rem = srem i32 %b8, 2, !dbg !1518
  %shl = shl i32 %rem, 1, !dbg !1518
  call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !432), !dbg !1518
  %div = sdiv i32 %b8, 2, !dbg !1519
  %shl1 = shl i32 %div, 1, !dbg !1519
  call void @llvm.dbg.value(metadata !{i32 %shl1}, i64 0, metadata !433), !dbg !1519
  %cmp = icmp eq i32 %shl1, 0, !dbg !1520
  br i1 %cmp, label %if.then, label %if.else14, !dbg !1520

if.then:                                          ; preds = %entry
  %mb_available_up = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 6, !dbg !1521
  %0 = load %struct.macroblock** %mb_available_up, align 8, !dbg !1521, !tbaa !989
  %cmp2 = icmp eq %struct.macroblock* %0, null, !dbg !1521
  br i1 %cmp2, label %if.end20, label %if.else, !dbg !1521

if.else:                                          ; preds = %if.then
  %mb_type = getelementptr inbounds %struct.macroblock* %0, i64 0, i32 8, !dbg !1523
  %1 = load i32* %mb_type, align 4, !dbg !1523, !tbaa !984
  %cmp5 = icmp eq i32 %1, 14, !dbg !1523
  br i1 %cmp5, label %if.end20, label %if.else7, !dbg !1523

if.else7:                                         ; preds = %if.else
  %cbp9 = getelementptr inbounds %struct.macroblock* %0, i64 0, i32 12, !dbg !1525
  %2 = load i32* %cbp9, align 4, !dbg !1525, !tbaa !984
  %div10 = sdiv i32 %shl, 2, !dbg !1525
  %add = add nsw i32 %div10, 2, !dbg !1525
  %shl11 = shl i32 1, %add, !dbg !1525
  %and = and i32 %shl11, %2, !dbg !1525
  %cmp12 = icmp eq i32 %and, 0, !dbg !1525
  %cond = zext i1 %cmp12 to i64, !dbg !1525
  br label %if.end20

if.else14:                                        ; preds = %entry
  %div15 = sdiv i32 %shl, 2, !dbg !1526
  %shl16 = shl i32 1, %div15, !dbg !1526
  %and17 = and i32 %shl16, %cbp, !dbg !1526
  %cmp18 = icmp eq i32 %and17, 0, !dbg !1526
  %cond19 = zext i1 %cmp18 to i64, !dbg !1526
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then, %if.else7, %if.else14
  %b.0 = phi i64 [ %cond, %if.else7 ], [ %cond19, %if.else14 ], [ 0, %if.then ], [ 0, %if.else ]
  %cmp21 = icmp eq i32 %shl, 0, !dbg !1527
  br i1 %cmp21, label %if.then22, label %if.else42, !dbg !1527

if.then22:                                        ; preds = %if.end20
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !1528, !tbaa !989
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 3, !dbg !1528
  %4 = load i32* %current_mb_nr, align 4, !dbg !1528, !tbaa !984
  call void @getLuma4x4Neighbour(i32 %4, i32 0, i32 %shl1, i32 -1, i32 0, %struct.pix_pos* %block_a) #6, !dbg !1528
  %available = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !1530
  %5 = load i32* %available, align 4, !dbg !1530, !tbaa !984
  %tobool = icmp eq i32 %5, 0, !dbg !1530
  br i1 %tobool, label %if.end47, label %if.then23, !dbg !1530

if.then23:                                        ; preds = %if.then22
  %mb_addr = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1, !dbg !1531
  %6 = load i32* %mb_addr, align 4, !dbg !1531, !tbaa !984
  %idxprom = sext i32 %6 to i64, !dbg !1531
  %7 = load %struct.ImageParameters** @img, align 8, !dbg !1531, !tbaa !989
  %mb_data = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 51, !dbg !1531
  %8 = load %struct.macroblock** %mb_data, align 8, !dbg !1531, !tbaa !989
  %mb_type24 = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom, i32 8, !dbg !1531
  %9 = load i32* %mb_type24, align 4, !dbg !1531, !tbaa !984
  %cmp25 = icmp eq i32 %9, 14, !dbg !1531
  br i1 %cmp25, label %if.end47, label %if.else27, !dbg !1531

if.else27:                                        ; preds = %if.then23
  %cbp32 = getelementptr inbounds %struct.macroblock* %8, i64 %idxprom, i32 12, !dbg !1534
  %10 = load i32* %cbp32, align 4, !dbg !1534, !tbaa !984
  %y = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3, !dbg !1534
  %11 = load i32* %y, align 4, !dbg !1534, !tbaa !984
  %div33 = sdiv i32 %11, 2, !dbg !1534
  %mul = shl nsw i32 %div33, 1, !dbg !1534
  %add3464 = or i32 %mul, 1, !dbg !1534
  %shl35 = shl i32 1, %add3464, !dbg !1534
  %and36 = and i32 %shl35, %10, !dbg !1534
  %cmp37 = icmp eq i32 %and36, 0, !dbg !1534
  %cond38 = zext i1 %cmp37 to i64, !dbg !1534
  br label %if.end47

if.else42:                                        ; preds = %if.end20
  %shl43 = shl i32 1, %shl1, !dbg !1535
  %and44 = and i32 %shl43, %cbp, !dbg !1535
  %cmp45 = icmp eq i32 %and44, 0, !dbg !1535
  %cond46 = zext i1 %cmp45 to i64, !dbg !1535
  br label %if.end47

if.end47:                                         ; preds = %if.then22, %if.then23, %if.else27, %if.else42
  %a.0 = phi i64 [ %cond38, %if.else27 ], [ %cond46, %if.else42 ], [ 0, %if.then23 ], [ 0, %if.then22 ]
  %conv = trunc i32 %bit to i16, !dbg !1536
  %conv48 = and i16 %conv, 255, !dbg !1536
  %12 = load %struct.ImageParameters** @img, align 8, !dbg !1536, !tbaa !989
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 50, !dbg !1536
  %13 = load %struct.Slice** %currentSlice, align 8, !dbg !1536, !tbaa !989
  %tex_ctx = getelementptr inbounds %struct.Slice* %13, i64 0, i32 8, !dbg !1536
  %14 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !dbg !1536, !tbaa !989
  %mul50 = shl nuw nsw i64 %b.0, 1, !dbg !1536
  %add.ptr.sum = or i64 %a.0, %mul50, !dbg !1536
  %add.ptr52 = getelementptr inbounds %struct.TextureInfoContexts* %14, i64 0, i32 2, i64 0, i64 %add.ptr.sum, !dbg !1536
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv48, %struct.BiContextType* %add.ptr52) #6, !dbg !1536
  ret void, !dbg !1537
}

; Function Attrs: nounwind optsize uwtable
define void @writeCBP_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !436), !dbg !1538
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !437), !dbg !1538
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1539, !tbaa !989
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 50, !dbg !1539
  %1 = load %struct.Slice** %currentSlice, align 8, !dbg !1539, !tbaa !989
  %tex_ctx = getelementptr inbounds %struct.Slice* %1, i64 0, i32 8, !dbg !1539
  %2 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !dbg !1539, !tbaa !989
  tail call void @llvm.dbg.value(metadata !{%struct.TextureInfoContexts* %2}, i64 0, metadata !438), !dbg !1539
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1540
  %3 = load i32* %current_mb_nr, align 4, !dbg !1540, !tbaa !984
  %idxprom = sext i32 %3 to i64, !dbg !1540
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1540
  %4 = load %struct.macroblock** %mb_data, align 8, !dbg !1540, !tbaa !989
  %arrayidx = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, !dbg !1540
  tail call void @llvm.dbg.value(metadata !{%struct.macroblock* %arrayidx}, i64 0, metadata !439), !dbg !1540
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1541
  %5 = load i32* %value1, align 4, !dbg !1541, !tbaa !984
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !444), !dbg !1541
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !446), !dbg !1542
  br label %for.body, !dbg !1542

for.body:                                         ; preds = %for.body, %entry
  %b8.0129 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %shl = shl i32 1, %b8.0129, !dbg !1544
  %and = and i32 %shl, %5, !dbg !1544
  tail call void @writeCBP_BIT_CABAC(i32 %b8.0129, i32 %and, i32 %5, %struct.macroblock* %arrayidx, i32 undef, %struct.EncodingEnvironment* %eep_dp) #8, !dbg !1544
  %inc = add nsw i32 %b8.0129, 1, !dbg !1542
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !446), !dbg !1542
  %exitcond = icmp eq i32 %inc, 4, !dbg !1542
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1542

for.end:                                          ; preds = %for.body
  %6 = load %struct.ImageParameters** @img, align 8, !dbg !1546, !tbaa !989
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 159, !dbg !1546
  %7 = load i32* %yuv_format, align 4, !dbg !1546, !tbaa !984
  %cmp4 = icmp eq i32 %7, 0, !dbg !1546
  br i1 %cmp4, label %if.end96, label %if.then, !dbg !1546

if.then:                                          ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !441), !dbg !1547
  %mb_available_up = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 6, !dbg !1549
  %8 = load %struct.macroblock** %mb_available_up, align 8, !dbg !1549, !tbaa !989
  %cmp5 = icmp eq %struct.macroblock* %8, null, !dbg !1549
  br i1 %cmp5, label %if.end14, label %if.then6, !dbg !1549

if.then6:                                         ; preds = %if.then
  %mb_type = getelementptr inbounds %struct.macroblock* %8, i64 0, i32 8, !dbg !1550
  %9 = load i32* %mb_type, align 4, !dbg !1550, !tbaa !984
  %cmp8 = icmp eq i32 %9, 14, !dbg !1550
  br i1 %cmp8, label %if.end14, label %if.else, !dbg !1550

if.else:                                          ; preds = %if.then6
  %cbp11 = getelementptr inbounds %struct.macroblock* %8, i64 0, i32 12, !dbg !1552
  %10 = load i32* %cbp11, align 4, !dbg !1552, !tbaa !984
  %cmp12 = icmp sgt i32 %10, 15, !dbg !1552
  %cond13 = select i1 %cmp12, i64 2, i64 0, !dbg !1552
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.then, %if.else
  %b.0 = phi i64 [ %cond13, %if.else ], [ 0, %if.then ], [ 2, %if.then6 ]
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !440), !dbg !1553
  %mb_available_left = getelementptr inbounds %struct.macroblock* %4, i64 %idxprom, i32 7, !dbg !1554
  %11 = load %struct.macroblock** %mb_available_left, align 8, !dbg !1554, !tbaa !989
  %cmp15 = icmp eq %struct.macroblock* %11, null, !dbg !1554
  br i1 %cmp15, label %if.end27, label %if.then16, !dbg !1554

if.then16:                                        ; preds = %if.end14
  %mb_type18 = getelementptr inbounds %struct.macroblock* %11, i64 0, i32 8, !dbg !1555
  %12 = load i32* %mb_type18, align 4, !dbg !1555, !tbaa !984
  %cmp19 = icmp eq i32 %12, 14, !dbg !1555
  br i1 %cmp19, label %if.end27, label %if.else21, !dbg !1555

if.else21:                                        ; preds = %if.then16
  %cbp23 = getelementptr inbounds %struct.macroblock* %11, i64 0, i32 12, !dbg !1557
  %13 = load i32* %cbp23, align 4, !dbg !1557, !tbaa !984
  %cmp24 = icmp sgt i32 %13, 15, !dbg !1557
  %cond25 = zext i1 %cmp24 to i64, !dbg !1557
  br label %if.end27

if.end27:                                         ; preds = %if.then16, %if.end14, %if.else21
  %a.0 = phi i64 [ %cond25, %if.else21 ], [ 0, %if.end14 ], [ 1, %if.then16 ]
  %add = or i64 %a.0, %b.0, !dbg !1558
  %cmp28 = icmp sgt i32 %5, 15, !dbg !1559
  %conv30 = zext i1 %cmp28 to i16, !dbg !1560
  %add.ptr = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 2, i64 1, i64 %add, !dbg !1560
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv30, %struct.BiContextType* %add.ptr) #6, !dbg !1560
  br i1 %cmp28, label %if.then34, label %if.end96, !dbg !1561

if.then34:                                        ; preds = %if.end27
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !441), !dbg !1562
  %14 = load %struct.macroblock** %mb_available_up, align 8, !dbg !1564, !tbaa !989
  %cmp36 = icmp eq %struct.macroblock* %14, null, !dbg !1564
  br i1 %cmp36, label %if.end57, label %if.then38, !dbg !1564

if.then38:                                        ; preds = %if.then34
  %mb_type40 = getelementptr inbounds %struct.macroblock* %14, i64 0, i32 8, !dbg !1565
  %15 = load i32* %mb_type40, align 4, !dbg !1565, !tbaa !984
  %cmp41 = icmp eq i32 %15, 14, !dbg !1565
  br i1 %cmp41, label %if.end57, label %if.else44, !dbg !1565

if.else44:                                        ; preds = %if.then38
  %cbp46 = getelementptr inbounds %struct.macroblock* %14, i64 0, i32 12, !dbg !1567
  %16 = load i32* %cbp46, align 4, !dbg !1567, !tbaa !984
  %cmp47 = icmp sgt i32 %16, 15, !dbg !1567
  br i1 %cmp47, label %if.then49, label %if.end57, !dbg !1567

if.then49:                                        ; preds = %if.else44
  %shr.mask = and i32 %16, -16, !dbg !1568
  %cmp52 = icmp eq i32 %shr.mask, 32, !dbg !1568
  %cond54 = select i1 %cmp52, i64 2, i64 0, !dbg !1568
  br label %if.end57, !dbg !1568

if.end57:                                         ; preds = %if.then38, %if.then34, %if.then49, %if.else44
  %b.1 = phi i64 [ %cond54, %if.then49 ], [ 0, %if.else44 ], [ 0, %if.then34 ], [ 2, %if.then38 ]
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !440), !dbg !1569
  %17 = load %struct.macroblock** %mb_available_left, align 8, !dbg !1570, !tbaa !989
  %cmp59 = icmp eq %struct.macroblock* %17, null, !dbg !1570
  br i1 %cmp59, label %if.end81, label %if.then61, !dbg !1570

if.then61:                                        ; preds = %if.end57
  %mb_type63 = getelementptr inbounds %struct.macroblock* %17, i64 0, i32 8, !dbg !1571
  %18 = load i32* %mb_type63, align 4, !dbg !1571, !tbaa !984
  %cmp64 = icmp eq i32 %18, 14, !dbg !1571
  br i1 %cmp64, label %if.end81, label %if.else67, !dbg !1571

if.else67:                                        ; preds = %if.then61
  %cbp69 = getelementptr inbounds %struct.macroblock* %17, i64 0, i32 12, !dbg !1573
  %19 = load i32* %cbp69, align 4, !dbg !1573, !tbaa !984
  %cmp70 = icmp sgt i32 %19, 15, !dbg !1573
  br i1 %cmp70, label %if.then72, label %if.end81, !dbg !1573

if.then72:                                        ; preds = %if.else67
  %shr75.mask = and i32 %19, -16, !dbg !1574
  %cmp76 = icmp eq i32 %shr75.mask, 32, !dbg !1574
  %cond78 = zext i1 %cmp76 to i64, !dbg !1574
  br label %if.end81, !dbg !1574

if.end81:                                         ; preds = %if.then61, %if.end57, %if.then72, %if.else67
  %a.1 = phi i64 [ %cond78, %if.then72 ], [ 0, %if.else67 ], [ 0, %if.end57 ], [ 1, %if.then61 ]
  %add83 = or i64 %a.1, %b.1, !dbg !1575
  %shr84.mask = and i32 %5, -16, !dbg !1576
  %cmp85 = icmp eq i32 %shr84.mask, 32, !dbg !1576
  %conv89 = zext i1 %cmp85 to i16, !dbg !1577
  %add.ptr94 = getelementptr inbounds %struct.TextureInfoContexts* %2, i64 0, i32 2, i64 2, i64 %add83, !dbg !1577
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv89, %struct.BiContextType* %add.ptr94) #6, !dbg !1577
  br label %if.end96, !dbg !1578

if.end96:                                         ; preds = %for.end, %if.end27, %if.end81
  ret void, !dbg !1579
}

; Function Attrs: nounwind optsize uwtable
define void @write_and_store_CBP_block_bit(%struct.macroblock* nocapture %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32 %cbp_bit) #0 {
entry:
  %block_a = alloca %struct.pix_pos, align 4
  %block_b = alloca %struct.pix_pos, align 4
  call void @llvm.dbg.value(metadata !{%struct.macroblock* %currMB}, i64 0, metadata !451), !dbg !1580
  call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !452), !dbg !1580
  call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !453), !dbg !1580
  call void @llvm.dbg.value(metadata !{i32 %cbp_bit}, i64 0, metadata !454), !dbg !1580
  %type.off = add i32 %type, -1, !dbg !1581
  %cmp5 = icmp eq i32 %type, 4, !dbg !1581
  %0 = icmp ult i32 %type.off, 5, !dbg !1581
  %cmp7 = icmp eq i32 %type, 0, !dbg !1582
  switch i32 %type, label %land.end38 [
    i32 7, label %land.end15.thread
    i32 8, label %land.rhs35
    i32 6, label %land.rhs35
    i32 9, label %land.rhs35
  ], !dbg !1583

land.end15.thread:                                ; preds = %entry
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1583, !tbaa !989
  %is_v_block = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 21, !dbg !1583
  %2 = load i32* %is_v_block, align 4, !dbg !1583, !tbaa !984
  %lnot = icmp eq i32 %2, 0, !dbg !1583
  %tobool14 = icmp ne i32 %2, 0, !dbg !1584
  br label %land.end38, !dbg !1585

land.rhs35:                                       ; preds = %entry, %entry, %entry
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !1586, !tbaa !989
  %is_v_block29 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 21, !dbg !1586
  %4 = load i32* %is_v_block29, align 4, !dbg !1586, !tbaa !984
  %lnot31 = icmp eq i32 %4, 0, !dbg !1586
  %tobool37 = icmp ne i32 %4, 0, !dbg !1587
  br label %land.end38

land.end38:                                       ; preds = %entry, %land.end15.thread, %land.rhs35
  %5 = phi i1 [ %lnot31, %land.rhs35 ], [ false, %land.end15.thread ], [ false, %entry ]
  %6 = phi i1 [ false, %land.rhs35 ], [ %tobool14, %land.end15.thread ], [ false, %entry ]
  %7 = phi i1 [ false, %land.rhs35 ], [ %lnot, %land.end15.thread ], [ false, %entry ]
  %8 = phi i1 [ %tobool37, %land.rhs35 ], [ false, %land.end15.thread ], [ false, %entry ]
  %brmerge = or i1 %0, %7, !dbg !1588
  %brmerge361 = or i1 %brmerge, %6, !dbg !1588
  %9 = load %struct.ImageParameters** @img, align 8, !dbg !1588, !tbaa !989
  br i1 %brmerge361, label %cond.true50, label %cond.end52, !dbg !1588

cond.true50:                                      ; preds = %land.end38
  %subblock_y = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 19, !dbg !1588
  %10 = load i32* %subblock_y, align 4, !dbg !1588, !tbaa !984
  call void @llvm.dbg.value(metadata !{i32 %cond375}, i64 0, metadata !462), !dbg !1588
  %subblock_x = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 18, !dbg !1589
  %11 = load i32* %subblock_x, align 4, !dbg !1589, !tbaa !984
  br label %cond.end52, !dbg !1589

cond.end52:                                       ; preds = %land.end38, %cond.true50
  %cond375 = phi i32 [ %10, %cond.true50 ], [ 0, %land.end38 ]
  %cond53 = phi i32 [ %11, %cond.true50 ], [ 0, %land.end38 ], !dbg !1589
  call void @llvm.dbg.value(metadata !{i32 %cond53}, i64 0, metadata !463), !dbg !1589
  %brmerge364 = or i1 %cmp7, %0, !dbg !1590
  %brmerge365 = or i1 %brmerge364, %5, !dbg !1590
  %is_intra_block = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 20, !dbg !1591
  %12 = load i32* %is_intra_block, align 4, !dbg !1591, !tbaa !984
  %tobool76 = icmp ne i32 %12, 0, !dbg !1591
  %cond77 = zext i1 %tobool76 to i32, !dbg !1591
  call void @llvm.dbg.value(metadata !{i32 %cond77}, i64 0, metadata !465), !dbg !1591
  call void @llvm.dbg.value(metadata !{i32 %cond77}, i64 0, metadata !466), !dbg !1592
  call void @llvm.dbg.value(metadata !{i32 %cond77}, i64 0, metadata !467), !dbg !1593
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !469), !dbg !1594
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !470), !dbg !1595
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %block_a}, metadata !471), !dbg !1596
  call void @llvm.dbg.declare(metadata !{%struct.pix_pos* %block_b}, metadata !472), !dbg !1596
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %9, i64 0, i32 3, !dbg !1597
  %13 = load i32* %current_mb_nr, align 4, !dbg !1597, !tbaa !984
  br i1 %brmerge364, label %if.then, label %if.else, !dbg !1599

if.then:                                          ; preds = %cond.end52
  call void @getLuma4x4Neighbour(i32 %13, i32 %cond53, i32 %cond375, i32 -1, i32 0, %struct.pix_pos* %block_a) #6, !dbg !1597
  %14 = load %struct.ImageParameters** @img, align 8, !dbg !1600, !tbaa !989
  %current_mb_nr81 = getelementptr inbounds %struct.ImageParameters* %14, i64 0, i32 3, !dbg !1600
  %15 = load i32* %current_mb_nr81, align 4, !dbg !1600, !tbaa !984
  call void @getLuma4x4Neighbour(i32 %15, i32 %cond53, i32 %cond375, i32 0, i32 -1, %struct.pix_pos* %block_b) #6, !dbg !1600
  br i1 %0, label %if.then83, label %if.end118, !dbg !1601

if.then83:                                        ; preds = %if.then
  %available = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !1602
  %16 = load i32* %available, align 4, !dbg !1602, !tbaa !984
  %tobool84 = icmp eq i32 %16, 0, !dbg !1602
  br i1 %tobool84, label %if.end, label %if.then85, !dbg !1602

if.then85:                                        ; preds = %if.then83
  %y = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3, !dbg !1604
  %17 = load i32* %y, align 4, !dbg !1604, !tbaa !984
  %mul = shl i32 %17, 2, !dbg !1604
  %x = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2, !dbg !1604
  %18 = load i32* %x, align 4, !dbg !1604, !tbaa !984
  %add = add nsw i32 %mul, %18, !dbg !1604
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !469), !dbg !1604
  br label %if.end, !dbg !1604

if.end:                                           ; preds = %if.then83, %if.then85
  %bit_pos_a.0 = phi i32 [ %add, %if.then85 ], [ 0, %if.then83 ]
  %available86 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0, !dbg !1605
  %19 = load i32* %available86, align 4, !dbg !1605, !tbaa !984
  %tobool87 = icmp eq i32 %19, 0, !dbg !1605
  br i1 %tobool87, label %if.end118, label %if.then88, !dbg !1605

if.then88:                                        ; preds = %if.end
  %y89 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3, !dbg !1606
  %20 = load i32* %y89, align 4, !dbg !1606, !tbaa !984
  %mul90 = shl i32 %20, 2, !dbg !1606
  %x91 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2, !dbg !1606
  %21 = load i32* %x91, align 4, !dbg !1606, !tbaa !984
  %add92 = add nsw i32 %mul90, %21, !dbg !1606
  call void @llvm.dbg.value(metadata !{i32 %add92}, i64 0, metadata !470), !dbg !1606
  br label %if.end118, !dbg !1606

if.else:                                          ; preds = %cond.end52
  call void @getChroma4x4Neighbour(i32 %13, i32 %cond53, i32 %cond375, i32 -1, i32 0, %struct.pix_pos* %block_a) #6, !dbg !1607
  %22 = load %struct.ImageParameters** @img, align 8, !dbg !1609, !tbaa !989
  %current_mb_nr96 = getelementptr inbounds %struct.ImageParameters* %22, i64 0, i32 3, !dbg !1609
  %23 = load i32* %current_mb_nr96, align 4, !dbg !1609, !tbaa !984
  call void @getChroma4x4Neighbour(i32 %23, i32 %cond53, i32 %cond375, i32 0, i32 -1, %struct.pix_pos* %block_b) #6, !dbg !1609
  %brmerge368 = or i1 %7, %6, !dbg !1610
  br i1 %brmerge368, label %if.then100, label %if.end118, !dbg !1610

if.then100:                                       ; preds = %if.else
  %available101 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !1611
  %24 = load i32* %available101, align 4, !dbg !1611, !tbaa !984
  %tobool102 = icmp eq i32 %24, 0, !dbg !1611
  br i1 %tobool102, label %if.end108, label %if.then103, !dbg !1611

if.then103:                                       ; preds = %if.then100
  %y104 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 3, !dbg !1613
  %25 = load i32* %y104, align 4, !dbg !1613, !tbaa !984
  %mul105 = shl i32 %25, 1, !dbg !1613
  %x106 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 2, !dbg !1613
  %26 = load i32* %x106, align 4, !dbg !1613, !tbaa !984
  %add107 = add nsw i32 %mul105, %26, !dbg !1613
  call void @llvm.dbg.value(metadata !{i32 %add107}, i64 0, metadata !469), !dbg !1613
  br label %if.end108, !dbg !1613

if.end108:                                        ; preds = %if.then100, %if.then103
  %bit_pos_a.1 = phi i32 [ %add107, %if.then103 ], [ 0, %if.then100 ]
  %available109 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0, !dbg !1614
  %27 = load i32* %available109, align 4, !dbg !1614, !tbaa !984
  %tobool110 = icmp eq i32 %27, 0, !dbg !1614
  br i1 %tobool110, label %if.end118, label %if.then111, !dbg !1614

if.then111:                                       ; preds = %if.end108
  %y112 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 3, !dbg !1615
  %28 = load i32* %y112, align 4, !dbg !1615, !tbaa !984
  %mul113 = shl i32 %28, 1, !dbg !1615
  %x114 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 2, !dbg !1615
  %29 = load i32* %x114, align 4, !dbg !1615, !tbaa !984
  %add115 = add nsw i32 %mul113, %29, !dbg !1615
  call void @llvm.dbg.value(metadata !{i32 %add115}, i64 0, metadata !470), !dbg !1615
  br label %if.end118, !dbg !1615

if.end118:                                        ; preds = %if.else, %if.end, %if.end108, %if.then111, %if.then, %if.then88
  %bit_pos_a.2 = phi i32 [ %bit_pos_a.0, %if.then88 ], [ %bit_pos_a.0, %if.end ], [ 0, %if.then ], [ %bit_pos_a.1, %if.then111 ], [ %bit_pos_a.1, %if.end108 ], [ 0, %if.else ]
  %bit_pos_b.0 = phi i32 [ %add92, %if.then88 ], [ 0, %if.end ], [ 0, %if.then ], [ %add115, %if.then111 ], [ 0, %if.end108 ], [ 0, %if.else ]
  br i1 %cmp7, label %cond.end151, label %cond.false121, !dbg !1616

cond.false121:                                    ; preds = %if.end118
  br i1 %0, label %cond.true123, label %cond.false127, !dbg !1616

cond.true123:                                     ; preds = %cond.false121
  %mul124 = shl nsw i32 %cond375, 2, !dbg !1616
  %add125360 = or i32 %mul124, 1, !dbg !1616
  %add126 = add nsw i32 %add125360, %cond53, !dbg !1616
  br label %cond.end151, !dbg !1616

cond.false127:                                    ; preds = %cond.false121
  %brmerge369 = or i1 %5, %8, !dbg !1616
  %.mux = select i1 %5, i32 17, i32 18, !dbg !1616
  br i1 %brmerge369, label %cond.end151, label %cond.false133, !dbg !1616

cond.false133:                                    ; preds = %cond.false127
  %mul136 = shl nsw i32 %cond375, 1, !dbg !1616
  br i1 %7, label %cond.true135, label %cond.false139, !dbg !1616

cond.true135:                                     ; preds = %cond.false133
  %add137 = add nsw i32 %mul136, 19, !dbg !1616
  %add138 = add nsw i32 %add137, %cond53, !dbg !1616
  br label %cond.end151, !dbg !1616

cond.false139:                                    ; preds = %cond.false133
  %add141 = add nsw i32 %mul136, 23, !dbg !1616
  %add142 = add nsw i32 %add141, %cond53, !dbg !1616
  br label %cond.end151, !dbg !1616

cond.end151:                                      ; preds = %cond.false127, %cond.true123, %cond.false139, %cond.true135, %if.end118
  %cond152 = phi i32 [ 0, %if.end118 ], [ %add126, %cond.true123 ], [ %.mux, %cond.false127 ], [ %add138, %cond.true135 ], [ %add142, %cond.false139 ], !dbg !1616
  call void @llvm.dbg.value(metadata !{i32 %cond152}, i64 0, metadata !464), !dbg !1616
  %tobool153 = icmp eq i32 %cbp_bit, 0, !dbg !1617
  br i1 %tobool153, label %if.end208, label %if.then154, !dbg !1617

if.then154:                                       ; preds = %cond.end151
  switch i32 %type, label %if.else187 [
    i32 2, label %if.then157
    i32 3, label %if.then177
  ], !dbg !1618

if.then157:                                       ; preds = %if.then154
  %shl = shl i32 1, %cond152, !dbg !1620
  %cbp_bits = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 16, !dbg !1620
  %30 = load i64* %cbp_bits, align 8, !dbg !1620, !tbaa !1622
  %add159 = add nsw i32 %cond152, 1, !dbg !1623
  %shl160 = shl i32 1, %add159, !dbg !1623
  %add164 = add nsw i32 %cond152, 4, !dbg !1624
  %shl165 = shl i32 1, %add164, !dbg !1624
  %add169 = add nsw i32 %cond152, 5, !dbg !1625
  %shl170 = shl i32 1, %add169, !dbg !1625
  %or379 = or i32 %shl160, %shl, !dbg !1620
  %or163380 = or i32 %or379, %shl165, !dbg !1623
  %or168381 = or i32 %or163380, %shl170, !dbg !1624
  %or168 = sext i32 %or168381 to i64, !dbg !1624
  %or173 = or i64 %or168, %30, !dbg !1625
  store i64 %or173, i64* %cbp_bits, align 8, !dbg !1625, !tbaa !1622
  br label %if.end208, !dbg !1626

if.then177:                                       ; preds = %if.then154
  %shl178 = shl i32 1, %cond152, !dbg !1627
  %cbp_bits180 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 16, !dbg !1627
  %31 = load i64* %cbp_bits180, align 8, !dbg !1627, !tbaa !1622
  %add182 = add nsw i32 %cond152, 1, !dbg !1629
  %shl183 = shl i32 1, %add182, !dbg !1629
  %or181378 = or i32 %shl183, %shl178, !dbg !1627
  %or181 = sext i32 %or181378 to i64, !dbg !1627
  %or186 = or i64 %or181, %31, !dbg !1629
  store i64 %or186, i64* %cbp_bits180, align 8, !dbg !1629, !tbaa !1622
  br label %if.end208, !dbg !1630

if.else187:                                       ; preds = %if.then154
  %shl191 = shl i32 1, %cond152, !dbg !1631
  %conv192 = sext i32 %shl191 to i64, !dbg !1631
  %cbp_bits193 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 16, !dbg !1631
  %32 = load i64* %cbp_bits193, align 8, !dbg !1631, !tbaa !1622
  %or194 = or i64 %32, %conv192, !dbg !1631
  store i64 %or194, i64* %cbp_bits193, align 8, !dbg !1631, !tbaa !1622
  br i1 %cmp5, label %if.then190, label %if.end208, !dbg !1633

if.then190:                                       ; preds = %if.else187
  %add195 = add nsw i32 %cond152, 4, !dbg !1634
  %shl196 = shl i32 1, %add195, !dbg !1634
  %conv197 = sext i32 %shl196 to i64, !dbg !1634
  %or199 = or i64 %or194, %conv197, !dbg !1634
  store i64 %or199, i64* %cbp_bits193, align 8, !dbg !1634, !tbaa !1622
  br label %if.end208, !dbg !1635

if.end208:                                        ; preds = %cond.end151, %if.then157, %if.then190, %if.else187, %if.then177
  %33 = zext i1 %cmp7 to i32, !dbg !1636
  %.mux371 = xor i32 %33, 1, !dbg !1636
  %.mux371.mux = select i1 %brmerge364, i32 %.mux371, i32 17, !dbg !1636
  %brmerge373 = or i1 %brmerge365, %8, !dbg !1636
  %.mux371.mux.mux = select i1 %brmerge365, i32 %.mux371.mux, i32 18, !dbg !1636
  br i1 %brmerge373, label %cond.end229, label %cond.false220, !dbg !1636

cond.false220:                                    ; preds = %if.end208
  %cond222 = select i1 %7, i32 19, i32 23, !dbg !1636
  br label %cond.end229, !dbg !1636

cond.end229:                                      ; preds = %if.end208, %cond.false220
  %cond230 = phi i32 [ %.mux371.mux.mux, %if.end208 ], [ %cond222, %cond.false220 ], !dbg !1636
  call void @llvm.dbg.value(metadata !{i32 %cond230}, i64 0, metadata !464), !dbg !1636
  %cmp231 = icmp eq i32 %type, 2, !dbg !1637
  br i1 %cmp231, label %if.end287, label %if.then233, !dbg !1637

if.then233:                                       ; preds = %cond.end229
  %available234 = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 0, !dbg !1638
  %34 = load i32* %available234, align 4, !dbg !1638, !tbaa !984
  %tobool235 = icmp eq i32 %34, 0, !dbg !1638
  br i1 %tobool235, label %if.end252, label %if.then236, !dbg !1638

if.then236:                                       ; preds = %if.then233
  %mb_addr = getelementptr inbounds %struct.pix_pos* %block_b, i64 0, i32 1, !dbg !1640
  %35 = load i32* %mb_addr, align 4, !dbg !1640, !tbaa !984
  %idxprom = sext i32 %35 to i64, !dbg !1640
  %36 = load %struct.ImageParameters** @img, align 8, !dbg !1640, !tbaa !989
  %mb_data = getelementptr inbounds %struct.ImageParameters* %36, i64 0, i32 51, !dbg !1640
  %37 = load %struct.macroblock** %mb_data, align 8, !dbg !1640, !tbaa !989
  %mb_type = getelementptr inbounds %struct.macroblock* %37, i64 %idxprom, i32 8, !dbg !1640
  %38 = load i32* %mb_type, align 4, !dbg !1640, !tbaa !984
  %cmp237 = icmp eq i32 %38, 14, !dbg !1640
  br i1 %cmp237, label %if.end252, label %if.else240, !dbg !1640

if.else240:                                       ; preds = %if.then236
  %cbp_bits245 = getelementptr inbounds %struct.macroblock* %37, i64 %idxprom, i32 16, !dbg !1642
  %39 = load i64* %cbp_bits245, align 8, !dbg !1642, !tbaa !1622
  %add246 = add nsw i32 %cond230, %bit_pos_b.0, !dbg !1642
  %shl247 = shl i32 1, %add246, !dbg !1642
  %conv248 = sext i32 %shl247 to i64, !dbg !1642
  %and = and i64 %39, %conv248, !dbg !1642
  %sh_prom = zext i32 %add246 to i64, !dbg !1642
  %shr = lshr i64 %and, %sh_prom, !dbg !1642
  %conv250 = trunc i64 %shr to i32, !dbg !1642
  call void @llvm.dbg.value(metadata !{i32 %conv250}, i64 0, metadata !466), !dbg !1642
  br label %if.end252

if.end252:                                        ; preds = %if.then236, %if.then233, %if.else240
  %upper_bit.0 = phi i32 [ %conv250, %if.else240 ], [ %cond77, %if.then233 ], [ 1, %if.then236 ]
  %available253 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 0, !dbg !1643
  %40 = load i32* %available253, align 4, !dbg !1643, !tbaa !984
  %tobool254 = icmp eq i32 %40, 0, !dbg !1643
  br i1 %tobool254, label %if.end252.if.end279_crit_edge, label %if.then255, !dbg !1643

if.end252.if.end279_crit_edge:                    ; preds = %if.end252
  %.pre382 = load %struct.ImageParameters** @img, align 8, !dbg !1644, !tbaa !989
  br label %if.end279, !dbg !1643

if.then255:                                       ; preds = %if.end252
  %mb_addr256 = getelementptr inbounds %struct.pix_pos* %block_a, i64 0, i32 1, !dbg !1645
  %41 = load i32* %mb_addr256, align 4, !dbg !1645, !tbaa !984
  %idxprom257 = sext i32 %41 to i64, !dbg !1645
  %42 = load %struct.ImageParameters** @img, align 8, !dbg !1645, !tbaa !989
  %mb_data258 = getelementptr inbounds %struct.ImageParameters* %42, i64 0, i32 51, !dbg !1645
  %43 = load %struct.macroblock** %mb_data258, align 8, !dbg !1645, !tbaa !989
  %mb_type260 = getelementptr inbounds %struct.macroblock* %43, i64 %idxprom257, i32 8, !dbg !1645
  %44 = load i32* %mb_type260, align 4, !dbg !1645, !tbaa !984
  %cmp261 = icmp eq i32 %44, 14, !dbg !1645
  br i1 %cmp261, label %if.end279, label %if.else264, !dbg !1645

if.else264:                                       ; preds = %if.then255
  %cbp_bits269 = getelementptr inbounds %struct.macroblock* %43, i64 %idxprom257, i32 16, !dbg !1647
  %45 = load i64* %cbp_bits269, align 8, !dbg !1647, !tbaa !1622
  %add270 = add nsw i32 %cond230, %bit_pos_a.2, !dbg !1647
  %shl271 = shl i32 1, %add270, !dbg !1647
  %conv272 = sext i32 %shl271 to i64, !dbg !1647
  %and273 = and i64 %45, %conv272, !dbg !1647
  %sh_prom275 = zext i32 %add270 to i64, !dbg !1647
  %shr276 = lshr i64 %and273, %sh_prom275, !dbg !1647
  %conv277 = trunc i64 %shr276 to i32, !dbg !1647
  call void @llvm.dbg.value(metadata !{i32 %conv277}, i64 0, metadata !467), !dbg !1647
  br label %if.end279

if.end279:                                        ; preds = %if.end252.if.end279_crit_edge, %if.then255, %if.else264
  %46 = phi %struct.ImageParameters* [ %42, %if.else264 ], [ %.pre382, %if.end252.if.end279_crit_edge ], [ %42, %if.then255 ]
  %left_bit.0 = phi i32 [ %conv277, %if.else264 ], [ %cond77, %if.end252.if.end279_crit_edge ], [ 1, %if.then255 ]
  %mul280 = shl i32 %upper_bit.0, 1, !dbg !1648
  %add281 = add nsw i32 %left_bit.0, %mul280, !dbg !1648
  call void @llvm.dbg.value(metadata !{i32 %add281}, i64 0, metadata !468), !dbg !1648
  %conv282 = trunc i32 %cbp_bit to i16, !dbg !1644
  %idxprom283 = sext i32 %type to i64, !dbg !1644
  %arrayidx284 = getelementptr inbounds [10 x i32]* @type2ctx_bcbp, i64 0, i64 %idxprom283, !dbg !1644
  %47 = load i32* %arrayidx284, align 4, !dbg !1644, !tbaa !984
  %idxprom285 = sext i32 %47 to i64, !dbg !1644
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %46, i64 0, i32 50, !dbg !1644
  %48 = load %struct.Slice** %currentSlice, align 8, !dbg !1644, !tbaa !989
  %tex_ctx = getelementptr inbounds %struct.Slice* %48, i64 0, i32 8, !dbg !1644
  %49 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !dbg !1644, !tbaa !989
  %idx.ext = sext i32 %add281 to i64, !dbg !1644
  %add.ptr = getelementptr inbounds %struct.TextureInfoContexts* %49, i64 0, i32 3, i64 %idxprom285, i64 %idx.ext, !dbg !1644
  call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv282, %struct.BiContextType* %add.ptr) #6, !dbg !1644
  br label %if.end287, !dbg !1649

if.end287:                                        ; preds = %cond.end229, %if.end279
  ret void, !dbg !1650
}

; Function Attrs: optsize
declare void @getChroma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: nounwind optsize uwtable
define void @write_significance_map(%struct.macroblock* nocapture %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32* nocapture %coeff, i32 %coeff_ctr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.macroblock* %currMB}, i64 0, metadata !477), !dbg !1651
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !478), !dbg !1651
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !479), !dbg !1651
  tail call void @llvm.dbg.value(metadata !{i32* %coeff}, i64 0, metadata !480), !dbg !1651
  tail call void @llvm.dbg.value(metadata !{i32 %coeff_ctr}, i64 0, metadata !481), !dbg !1651
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !485), !dbg !1652
  %idxprom = sext i32 %type to i64, !dbg !1653
  %arrayidx = getelementptr inbounds [10 x i32]* @maxpos, i64 0, i64 %idxprom, !dbg !1653
  %0 = load i32* %arrayidx, align 4, !dbg !1653, !tbaa !984
  %sub = add nsw i32 %0, -1, !dbg !1653
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !486), !dbg !1653
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1654, !tbaa !989
  %structure = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 7, !dbg !1654
  %2 = load i32* %structure, align 4, !dbg !1654, !tbaa !984
  %cmp = icmp eq i32 %2, 0, !dbg !1654
  br i1 %cmp, label %lor.rhs, label %lor.end, !dbg !1654

lor.rhs:                                          ; preds = %entry
  %mb_field = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 22, !dbg !1654
  %3 = load i32* %mb_field, align 4, !dbg !1654, !tbaa !984
  %tobool = icmp ne i32 %3, 0, !dbg !1654
  br label %lor.end, !dbg !1654

lor.end:                                          ; preds = %entry, %lor.rhs
  %4 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %arrayidx3 = getelementptr inbounds [10 x i32]* @type2ctx_last, i64 0, i64 %idxprom, !dbg !1655
  %5 = load i32* %arrayidx3, align 4, !dbg !1655, !tbaa !984
  %idxprom4 = sext i32 %5 to i64, !dbg !1655
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 50, !dbg !1655
  %6 = load %struct.Slice** %currentSlice, align 8, !dbg !1655, !tbaa !989
  %tex_ctx = getelementptr inbounds %struct.Slice* %6, i64 0, i32 8, !dbg !1655
  %7 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !dbg !1655, !tbaa !989
  %fld_map_contexts = getelementptr inbounds %struct.TextureInfoContexts* %7, i64 0, i32 8, !dbg !1655
  %map_contexts = getelementptr inbounds %struct.TextureInfoContexts* %7, i64 0, i32 4, !dbg !1655
  %fld_map_contexts.sink = select i1 %4, [10 x [15 x %struct.BiContextType]]* %fld_map_contexts, [10 x [15 x %struct.BiContextType]]* %map_contexts, !dbg !1655
  %arrayidx16 = getelementptr inbounds [10 x i32]* @type2ctx_last, i64 0, i64 %idxprom, !dbg !1656
  %8 = load i32* %arrayidx16, align 4, !dbg !1656, !tbaa !984
  %idxprom17 = sext i32 %8 to i64, !dbg !1656
  %fld_last_contexts = getelementptr inbounds %struct.TextureInfoContexts* %7, i64 0, i32 9, !dbg !1656
  %last_contexts = getelementptr inbounds %struct.TextureInfoContexts* %7, i64 0, i32 5, !dbg !1656
  %fld_last_contexts.sink = select i1 %4, [10 x [15 x %struct.BiContextType]]* %fld_last_contexts, [10 x [15 x %struct.BiContextType]]* %last_contexts, !dbg !1656
  switch i32 %type, label %if.end [
    i32 7, label %if.then
    i32 1, label %if.then
  ], !dbg !1657

if.then:                                          ; preds = %lor.end, %lor.end
  tail call void @llvm.dbg.value(metadata !1399, i64 0, metadata !485), !dbg !1658
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !486), !dbg !1658
  %incdec.ptr = getelementptr inbounds i32* %coeff, i64 -1, !dbg !1658
  tail call void @llvm.dbg.value(metadata !{i32* %incdec.ptr}, i64 0, metadata !480), !dbg !1658
  br label %if.end, !dbg !1660

if.end:                                           ; preds = %lor.end, %if.then
  %k0.0 = phi i16 [ 0, %lor.end ], [ 1, %if.then ]
  %k1.0 = phi i32 [ %sub, %lor.end ], [ %0, %if.then ]
  %coeff.addr.0 = phi i32* [ %coeff, %lor.end ], [ %incdec.ptr, %if.then ]
  tail call void @llvm.dbg.value(metadata !{i16 %k0.0}, i64 0, metadata !482), !dbg !1661
  %conv36101105 = zext i16 %k0.0 to i32, !dbg !1661
  %cmp37102 = icmp slt i32 %conv36101105, %k1.0, !dbg !1661
  br i1 %cmp37102, label %for.body.lr.ph, label %for.end, !dbg !1661

for.body.lr.ph:                                   ; preds = %if.end
  %mb_field48 = getelementptr inbounds %struct.macroblock* %currMB, i64 0, i32 22, !dbg !1663
  %arrayidx57 = getelementptr inbounds [10 x i32*]* @pos2ctx_map, i64 0, i64 %idxprom, !dbg !1665
  %arrayidx70 = getelementptr inbounds [10 x i32*]* @pos2ctx_last, i64 0, i64 %idxprom, !dbg !1666
  %arrayidx53 = getelementptr inbounds [10 x i32*]* @pos2ctx_map_int, i64 0, i64 %idxprom, !dbg !1668
  br label %for.body, !dbg !1661

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %9 = phi i32 [ %2, %for.body.lr.ph ], [ %.pre106, %for.inc.for.body_crit_edge ]
  %coeff_ctr.addr.0104 = phi i32 [ %coeff_ctr, %for.body.lr.ph ], [ %coeff_ctr.addr.1, %for.inc.for.body_crit_edge ]
  %k.0103 = phi i16 [ %k0.0, %for.body.lr.ph ], [ %inc78, %for.inc.for.body_crit_edge ]
  %idxprom39 = sext i16 %k.0103 to i64, !dbg !1669
  %arrayidx40 = getelementptr inbounds i32* %coeff.addr.0, i64 %idxprom39, !dbg !1669
  %10 = load i32* %arrayidx40, align 4, !dbg !1669, !tbaa !984
  %cmp41 = icmp ne i32 %10, 0, !dbg !1669
  %conv44 = zext i1 %cmp41 to i16, !dbg !1669
  tail call void @llvm.dbg.value(metadata !{i16 %conv44}, i64 0, metadata !483), !dbg !1669
  %cmp46 = icmp eq i32 %9, 0, !dbg !1663
  br i1 %cmp46, label %lor.lhs.false, label %if.then50, !dbg !1663

lor.lhs.false:                                    ; preds = %for.body
  %11 = load i32* %mb_field48, align 4, !dbg !1663, !tbaa !984
  %tobool49 = icmp eq i32 %11, 0, !dbg !1663
  br i1 %tobool49, label %if.else, label %if.then50, !dbg !1663

if.then50:                                        ; preds = %lor.lhs.false, %for.body
  %12 = load i32** %arrayidx53, align 8, !dbg !1668, !tbaa !989
  %arrayidx54 = getelementptr inbounds i32* %12, i64 %idxprom39, !dbg !1668
  %13 = load i32* %arrayidx54, align 4, !dbg !1668, !tbaa !984
  %idx.ext = sext i32 %13 to i64, !dbg !1668
  %add.ptr = getelementptr inbounds [10 x [15 x %struct.BiContextType]]* %fld_map_contexts.sink, i64 0, i64 %idxprom4, i64 %idx.ext, !dbg !1668
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv44, %struct.BiContextType* %add.ptr) #6, !dbg !1668
  br label %if.end61, !dbg !1668

if.else:                                          ; preds = %lor.lhs.false
  %14 = load i32** %arrayidx57, align 8, !dbg !1665, !tbaa !989
  %arrayidx58 = getelementptr inbounds i32* %14, i64 %idxprom39, !dbg !1665
  %15 = load i32* %arrayidx58, align 4, !dbg !1665, !tbaa !984
  %idx.ext59 = sext i32 %15 to i64, !dbg !1665
  %add.ptr60 = getelementptr inbounds [10 x [15 x %struct.BiContextType]]* %fld_map_contexts.sink, i64 0, i64 %idxprom4, i64 %idx.ext59, !dbg !1665
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv44, %struct.BiContextType* %add.ptr60) #6, !dbg !1665
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then50
  br i1 %cmp41, label %if.then63, label %for.inc, !dbg !1670

if.then63:                                        ; preds = %if.end61
  %dec = add nsw i32 %coeff_ctr.addr.0104, -1, !dbg !1671
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !481), !dbg !1671
  %cmp64 = icmp eq i32 %dec, 0, !dbg !1671
  %conv67 = zext i1 %cmp64 to i16, !dbg !1671
  tail call void @llvm.dbg.value(metadata !{i16 %conv67}, i64 0, metadata !484), !dbg !1671
  %16 = load i32** %arrayidx70, align 8, !dbg !1666, !tbaa !989
  %arrayidx71 = getelementptr inbounds i32* %16, i64 %idxprom39, !dbg !1666
  %17 = load i32* %arrayidx71, align 4, !dbg !1666, !tbaa !984
  %idx.ext72 = sext i32 %17 to i64, !dbg !1666
  %add.ptr73 = getelementptr inbounds [10 x [15 x %struct.BiContextType]]* %fld_last_contexts.sink, i64 0, i64 %idxprom17, i64 %idx.ext72, !dbg !1666
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv67, %struct.BiContextType* %add.ptr73) #6, !dbg !1666
  br i1 %cmp64, label %for.end, label %for.inc, !dbg !1672

for.inc:                                          ; preds = %if.end61, %if.then63
  %coeff_ctr.addr.1 = phi i32 [ %dec, %if.then63 ], [ %coeff_ctr.addr.0104, %if.end61 ]
  %inc78 = add i16 %k.0103, 1, !dbg !1661
  tail call void @llvm.dbg.value(metadata !{i16 %inc78}, i64 0, metadata !482), !dbg !1661
  %conv36 = sext i16 %inc78 to i32, !dbg !1661
  %cmp37 = icmp slt i32 %conv36, %k1.0, !dbg !1661
  br i1 %cmp37, label %for.inc.for.body_crit_edge, label %for.end, !dbg !1661

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1663, !tbaa !989
  %structure45.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 7
  %.pre106 = load i32* %structure45.phi.trans.insert, align 4, !dbg !1663, !tbaa !984
  br label %for.body, !dbg !1661

for.end:                                          ; preds = %for.inc, %if.then63, %if.end
  ret void, !dbg !1673
}

; Function Attrs: nounwind optsize uwtable
define void @write_significant_coefficients(%struct.macroblock* nocapture %currMB, %struct.EncodingEnvironment* %eep_dp, i32 %type, i32* nocapture %coeff) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.macroblock* %currMB}, i64 0, metadata !496), !dbg !1674
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !497), !dbg !1674
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !498), !dbg !1674
  tail call void @llvm.dbg.value(metadata !{i32* %coeff}, i64 0, metadata !499), !dbg !1674
  tail call void @llvm.dbg.value(metadata !1399, i64 0, metadata !505), !dbg !1675
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !506), !dbg !1676
  %idxprom = sext i32 %type to i64, !dbg !1677
  %arrayidx = getelementptr inbounds [10 x i32]* @maxpos, i64 0, i64 %idxprom, !dbg !1677
  %0 = load i32* %arrayidx, align 4, !dbg !1677, !tbaa !984
  %arrayidx18 = getelementptr inbounds [10 x i32]* @type2ctx_abs, i64 0, i64 %idxprom, !dbg !1679
  %arrayidx23 = getelementptr inbounds [10 x i32]* @max_c2, i64 0, i64 %idxprom, !dbg !1682
  %arrayidx34 = getelementptr inbounds [10 x i32]* @type2ctx_abs, i64 0, i64 %idxprom, !dbg !1684
  br label %for.cond.outer, !dbg !1677

for.cond.outer:                                   ; preds = %if.end47, %entry
  %i.0.in.ph = phi i32 [ %0, %entry ], [ %i.0, %if.end47 ]
  %c1.0.ph = phi i32 [ 1, %entry ], [ %c1.1, %if.end47 ]
  %c2.0.ph = phi i32 [ 0, %entry ], [ %c2.1, %if.end47 ]
  %1 = sext i32 %i.0.in.ph to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.body
  %indvars.iv = phi i64 [ %1, %for.cond.outer ], [ %indvars.iv.next, %for.body ]
  %i.0.in = phi i32 [ %i.0.in.ph, %for.cond.outer ], [ %i.0, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !1685
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !1677
  %2 = trunc i64 %indvars.iv to i32, !dbg !1677
  %cmp = icmp sgt i32 %2, 0, !dbg !1677
  br i1 %cmp, label %for.body, label %for.end, !dbg !1677

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds i32* %coeff, i64 %indvars.iv.next, !dbg !1685
  %3 = load i32* %arrayidx2, align 4, !dbg !1685, !tbaa !984
  %cmp3 = icmp eq i32 %3, 0, !dbg !1685
  br i1 %cmp3, label %for.cond, label %if.then, !dbg !1685

if.then:                                          ; preds = %for.body
  %cmp6 = icmp sgt i32 %3, 0, !dbg !1686
  %sub12 = sub nsw i32 0, %3, !dbg !1687
  tail call void @llvm.dbg.value(metadata !{i32 %sub12}, i64 0, metadata !501), !dbg !1687
  tail call void @llvm.dbg.value(metadata !1689, i64 0, metadata !503), !dbg !1687
  %absLevel.0 = select i1 %cmp6, i32 %3, i32 %sub12, !dbg !1686
  %4 = zext i1 %cmp6 to i16, !dbg !1686
  %sign.0 = xor i16 %4, 1, !dbg !1686
  %cmp13 = icmp sgt i32 %absLevel.0, 1, !dbg !1690
  %conv = zext i1 %cmp13 to i16, !dbg !1690
  tail call void @llvm.dbg.value(metadata !{i16 %conv}, i64 0, metadata !504), !dbg !1690
  %cmp14 = icmp slt i32 %c1.0.ph, 4, !dbg !1691
  %5 = load i32* %arrayidx18, align 4, !dbg !1679, !tbaa !984
  %idxprom19 = sext i32 %5 to i64, !dbg !1679
  %6 = load %struct.ImageParameters** @img, align 8, !dbg !1679, !tbaa !989
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 50, !dbg !1679
  %7 = load %struct.Slice** %currentSlice, align 8, !dbg !1679, !tbaa !989
  %tex_ctx = getelementptr inbounds %struct.Slice* %7, i64 0, i32 8, !dbg !1679
  %8 = load %struct.TextureInfoContexts** %tex_ctx, align 8, !dbg !1679, !tbaa !989
  %9 = sext i32 %c1.0.ph to i64, !dbg !1679
  %idx.ext = select i1 %cmp14, i64 %9, i64 4, !dbg !1679
  %add.ptr = getelementptr inbounds %struct.TextureInfoContexts* %8, i64 0, i32 6, i64 %idxprom19, i64 %idx.ext, !dbg !1679
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv, %struct.BiContextType* %add.ptr) #6, !dbg !1679
  br i1 %cmp13, label %if.then21, label %if.else42, !dbg !1692

if.then21:                                        ; preds = %if.then
  %10 = load i32* %arrayidx23, align 4, !dbg !1682, !tbaa !984
  %cmp24 = icmp slt i32 %c2.0.ph, %10, !dbg !1682
  %c2.0. = select i1 %cmp24, i32 %c2.0.ph, i32 %10, !dbg !1682
  tail call void @llvm.dbg.value(metadata !{i32 %c2.0.}, i64 0, metadata !502), !dbg !1682
  %sub32 = add nsw i32 %absLevel.0, -2, !dbg !1684
  %11 = load i32* %arrayidx34, align 4, !dbg !1684, !tbaa !984
  %idxprom35 = sext i32 %11 to i64, !dbg !1684
  %12 = load %struct.ImageParameters** @img, align 8, !dbg !1684, !tbaa !989
  %currentSlice36 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 50, !dbg !1684
  %13 = load %struct.Slice** %currentSlice36, align 8, !dbg !1684, !tbaa !989
  %tex_ctx37 = getelementptr inbounds %struct.Slice* %13, i64 0, i32 8, !dbg !1684
  %14 = load %struct.TextureInfoContexts** %tex_ctx37, align 8, !dbg !1684, !tbaa !989
  %idx.ext40 = sext i32 %c2.0. to i64, !dbg !1684
  %add.ptr41 = getelementptr inbounds %struct.TextureInfoContexts* %14, i64 0, i32 7, i64 %idxprom35, i64 %idx.ext40, !dbg !1684
  tail call void @unary_exp_golomb_level_encode(%struct.EncodingEnvironment* %eep_dp, i32 %sub32, %struct.BiContextType* %add.ptr41) #8, !dbg !1684
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !505), !dbg !1693
  %inc = add nsw i32 %c2.0.ph, 1, !dbg !1694
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !506), !dbg !1694
  br label %if.end47, !dbg !1695

if.else42:                                        ; preds = %if.then
  %tobool43 = icmp eq i32 %c1.0.ph, 0, !dbg !1696
  %inc45 = add nsw i32 %c1.0.ph, 1, !dbg !1697
  tail call void @llvm.dbg.value(metadata !{i32 %inc45}, i64 0, metadata !505), !dbg !1697
  %c1.0.inc45 = select i1 %tobool43, i32 0, i32 %inc45, !dbg !1696
  br label %if.end47, !dbg !1696

if.end47:                                         ; preds = %if.else42, %if.then21
  %c1.1 = phi i32 [ 0, %if.then21 ], [ %c1.0.inc45, %if.else42 ]
  %c2.1 = phi i32 [ %inc, %if.then21 ], [ %c2.0.ph, %if.else42 ]
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext %sign.0) #6, !dbg !1699
  br label %for.cond.outer, !dbg !1700

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1701
}

; Function Attrs: nounwind optsize uwtable
define void @unary_exp_golomb_level_encode(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, %struct.BiContextType* %ctx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !545), !dbg !1702
  tail call void @llvm.dbg.value(metadata !{i32 %symbol}, i64 0, metadata !546), !dbg !1703
  tail call void @llvm.dbg.value(metadata !{%struct.BiContextType* %ctx}, i64 0, metadata !547), !dbg !1704
  tail call void @llvm.dbg.value(metadata !1705, i64 0, metadata !550), !dbg !1706
  %cmp = icmp eq i32 %symbol, 0, !dbg !1707
  br i1 %cmp, label %if.then, label %if.else, !dbg !1707

if.then:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #6, !dbg !1708
  br label %return, !dbg !1710

if.else:                                          ; preds = %entry
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #6, !dbg !1711
  tail call void @llvm.dbg.value(metadata !{i32 %symbol}, i64 0, metadata !548), !dbg !1713
  tail call void @llvm.dbg.value(metadata !1399, i64 0, metadata !549), !dbg !1714
  %cmp117 = icmp eq i32 %symbol, 1, !dbg !1715
  tail call void @llvm.dbg.value(metadata !1410, i64 0, metadata !549), !dbg !1715
  br i1 %cmp117, label %if.then4, label %while.body.lr.ph, !dbg !1715

while.body.lr.ph:                                 ; preds = %if.else
  %0 = sub i32 1, %symbol, !dbg !1715
  %1 = icmp ugt i32 %0, -12
  %.op = sub i32 2, %0, !dbg !1715
  %2 = select i1 %1, i32 %.op, i32 14, !dbg !1715
  br label %while.body, !dbg !1715

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %k.018 = phi i32 [ 2, %while.body.lr.ph ], [ %phitmp, %while.body ]
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 1, %struct.BiContextType* %ctx) #6, !dbg !1716
  %phitmp = add i32 %k.018, 1, !dbg !1716
  tail call void @llvm.dbg.value(metadata !1480, i64 0, metadata !548), !dbg !1715
  tail call void @llvm.dbg.value(metadata !{i32 %k.018}, i64 0, metadata !549), !dbg !1715
  %exitcond = icmp eq i32 %phitmp, %2, !dbg !1715
  br i1 %exitcond, label %while.end, label %while.body, !dbg !1715

while.end:                                        ; preds = %while.body
  %cmp3 = icmp ult i32 %symbol, 13, !dbg !1717
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1717

if.then4:                                         ; preds = %if.else, %while.end
  tail call void @biari_encode_symbol(%struct.EncodingEnvironment* %eep_dp, i16 signext 0, %struct.BiContextType* %ctx) #6, !dbg !1717
  br label %return, !dbg !1717

if.else5:                                         ; preds = %while.end
  %sub = add i32 %symbol, -13, !dbg !1718
  tail call void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %eep_dp, i32 %sub, i32 0) #8, !dbg !1718
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  ret void, !dbg !1719
}

; Function Attrs: nounwind optsize uwtable
define void @writeRunLevel_CABAC(%struct.syntaxelement* nocapture %se, %struct.EncodingEnvironment* %eep_dp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !509), !dbg !1720
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !510), !dbg !1720
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1721, !tbaa !989
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !1721
  %1 = load i32* %current_mb_nr, align 4, !dbg !1721, !tbaa !984
  %idxprom = sext i32 %1 to i64, !dbg !1721
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !1721
  %2 = load %struct.macroblock** %mb_data, align 8, !dbg !1721, !tbaa !989
  %arrayidx = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, !dbg !1721
  tail call void @llvm.dbg.value(metadata !{%struct.macroblock* %arrayidx}, i64 0, metadata !511), !dbg !1721
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1722
  %3 = load i32* %value1, align 4, !dbg !1722, !tbaa !984
  %cmp = icmp eq i32 %3, 0, !dbg !1722
  br i1 %cmp, label %for.cond10thread-pre-split, label %for.cond.preheader, !dbg !1722

for.cond.preheader:                               ; preds = %entry
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1723
  %4 = load i32* %value2, align 4, !dbg !1723, !tbaa !984
  %cmp137 = icmp sgt i32 %4, 0, !dbg !1723
  %.pre39 = load i32* @writeRunLevel_CABAC.pos, align 4, !dbg !1723, !tbaa !984
  br i1 %cmp137, label %for.body, label %for.end, !dbg !1723

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %5 = phi i32 [ %inc, %for.body ], [ %.pre39, %for.cond.preheader ], !dbg !1723
  %i.038 = phi i32 [ %inc4, %for.body ], [ 0, %for.cond.preheader ]
  %inc = add nsw i32 %5, 1, !dbg !1723
  store i32 %inc, i32* @writeRunLevel_CABAC.pos, align 4, !dbg !1723, !tbaa !984
  %idxprom2 = sext i32 %5 to i64, !dbg !1723
  %arrayidx3 = getelementptr inbounds [64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 %idxprom2, !dbg !1723
  store i32 0, i32* %arrayidx3, align 4, !dbg !1723, !tbaa !984
  %inc4 = add nsw i32 %i.038, 1, !dbg !1723
  tail call void @llvm.dbg.value(metadata !{i32 %inc4}, i64 0, metadata !512), !dbg !1723
  %6 = load i32* %value2, align 4, !dbg !1723, !tbaa !984
  %cmp1 = icmp slt i32 %inc4, %6, !dbg !1723
  br i1 %cmp1, label %for.body, label %for.cond.for.end_crit_edge, !dbg !1723

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.pre = load i32* %value1, align 4, !dbg !1726, !tbaa !984
  br label %for.end, !dbg !1723

for.end:                                          ; preds = %for.cond.preheader, %for.cond.for.end_crit_edge
  %7 = phi i32 [ %inc, %for.cond.for.end_crit_edge ], [ %.pre39, %for.cond.preheader ]
  %8 = phi i32 [ %.pre, %for.cond.for.end_crit_edge ], [ %3, %for.cond.preheader ]
  %inc6 = add nsw i32 %7, 1, !dbg !1726
  store i32 %inc6, i32* @writeRunLevel_CABAC.pos, align 4, !dbg !1726, !tbaa !984
  %idxprom7 = sext i32 %7 to i64, !dbg !1726
  %arrayidx8 = getelementptr inbounds [64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 %idxprom7, !dbg !1726
  store i32 %8, i32* %arrayidx8, align 4, !dbg !1726, !tbaa !984
  %9 = load i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !dbg !1726, !tbaa !984
  %inc9 = add nsw i32 %9, 1, !dbg !1726
  store i32 %inc9, i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !dbg !1726, !tbaa !984
  br label %return, !dbg !1727

for.cond10thread-pre-split:                       ; preds = %entry
  %.pr = load i32* @writeRunLevel_CABAC.pos, align 4, !dbg !1728, !tbaa !984
  %cmp1135 = icmp slt i32 %.pr, 64, !dbg !1728
  br i1 %cmp1135, label %for.body12.lr.ph, label %if.end, !dbg !1728

for.body12.lr.ph:                                 ; preds = %for.cond10thread-pre-split
  %10 = add i32 %.pr, 1, !dbg !1728
  %11 = icmp sgt i32 %10, 64
  br label %for.body12, !dbg !1728

for.body12:                                       ; preds = %for.body12.lr.ph, %for.body12
  %inc1636 = phi i32 [ %.pr, %for.body12.lr.ph ], [ %inc16, %for.body12 ], !dbg !1728
  %idxprom13 = sext i32 %inc1636 to i64, !dbg !1728
  %arrayidx14 = getelementptr inbounds [64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 %idxprom13, !dbg !1728
  store i32 0, i32* %arrayidx14, align 4, !dbg !1728, !tbaa !984
  %inc16 = add nsw i32 %inc1636, 1, !dbg !1728
  %cmp11 = icmp slt i32 %inc16, 64, !dbg !1728
  br i1 %cmp11, label %for.body12, label %for.cond10.if.end_crit_edge, !dbg !1728

for.cond10.if.end_crit_edge:                      ; preds = %for.body12
  %smax = select i1 %11, i32 %10, i32 64
  store i32 %smax, i32* @writeRunLevel_CABAC.pos, align 4, !dbg !1728, !tbaa !984
  br label %if.end, !dbg !1728

if.end:                                           ; preds = %for.cond10.if.end_crit_edge, %for.cond10thread-pre-split
  %.lcssa = phi i32 [ %smax, %for.cond10.if.end_crit_edge ], [ %.pr, %for.cond10thread-pre-split ]
  %cmp18 = icmp slt i32 %.lcssa, 65, !dbg !1731
  br i1 %cmp18, label %cond.end, label %cond.false, !dbg !1731

cond.false:                                       ; preds = %if.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str4, i64 0, i64 0), i32 1347, i8* getelementptr inbounds ([66 x i8]* @__PRETTY_FUNCTION__.writeRunLevel_CABAC, i64 0, i64 0)) #7, !dbg !1731
  unreachable, !dbg !1731

cond.end:                                         ; preds = %if.end
  %context = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 6, !dbg !1732
  %12 = load i32* %context, align 4, !dbg !1732, !tbaa !984
  %13 = load i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !dbg !1732, !tbaa !984
  %cmp19 = icmp sgt i32 %13, 0, !dbg !1732
  %cond = zext i1 %cmp19 to i32, !dbg !1732
  tail call void @write_and_store_CBP_block_bit(%struct.macroblock* %arrayidx, %struct.EncodingEnvironment* %eep_dp, i32 %12, i32 %cond) #8, !dbg !1732
  %14 = load i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !dbg !1733, !tbaa !984
  %cmp20 = icmp sgt i32 %14, 0, !dbg !1733
  br i1 %cmp20, label %if.then21, label %if.end24, !dbg !1733

if.then21:                                        ; preds = %cond.end
  %15 = load i32* %context, align 4, !dbg !1734, !tbaa !984
  tail call void @write_significance_map(%struct.macroblock* %arrayidx, %struct.EncodingEnvironment* %eep_dp, i32 %15, i32* getelementptr inbounds ([64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 0), i32 %14) #8, !dbg !1734
  %16 = load i32* %context, align 4, !dbg !1736, !tbaa !984
  tail call void @write_significant_coefficients(%struct.macroblock* undef, %struct.EncodingEnvironment* %eep_dp, i32 %16, i32* getelementptr inbounds ([64 x i32]* @writeRunLevel_CABAC.coeff, i64 0, i64 0)) #8, !dbg !1736
  br label %if.end24, !dbg !1737

if.end24:                                         ; preds = %if.then21, %cond.end
  store i32 0, i32* @writeRunLevel_CABAC.coeff_ctr, align 4, !dbg !1738, !tbaa !984
  store i32 0, i32* @writeRunLevel_CABAC.pos, align 4, !dbg !1738, !tbaa !984
  br label %return, !dbg !1738

return:                                           ; preds = %if.end24, %for.end
  ret void, !dbg !1738
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind optsize uwtable
define void @exp_golomb_encode_eq_prob(%struct.EncodingEnvironment* %eep_dp, i32 %symbol, i32 %k) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EncodingEnvironment* %eep_dp}, i64 0, metadata !538), !dbg !1739
  tail call void @llvm.dbg.value(metadata !{i32 %symbol}, i64 0, metadata !539), !dbg !1740
  tail call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !540), !dbg !1741
  %shl16 = shl i32 1, %k, !dbg !1742
  %cmp17 = icmp ugt i32 %shl16, %symbol, !dbg !1742
  br i1 %cmp17, label %if.else, label %if.then, !dbg !1742

if.then:                                          ; preds = %entry, %if.then
  %shl20 = phi i32 [ %shl, %if.then ], [ %shl16, %entry ]
  %k.addr.019 = phi i32 [ %inc, %if.then ], [ %k, %entry ]
  %symbol.addr.018 = phi i32 [ %sub, %if.then ], [ %symbol, %entry ]
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext 1) #6, !dbg !1744
  %sub = sub i32 %symbol.addr.018, %shl20, !dbg !1746
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !539), !dbg !1746
  %inc = add nsw i32 %k.addr.019, 1, !dbg !1747
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !540), !dbg !1747
  %shl = shl i32 1, %inc, !dbg !1742
  %cmp = icmp ult i32 %sub, %shl, !dbg !1742
  br i1 %cmp, label %if.else, label %if.then, !dbg !1742

if.else:                                          ; preds = %if.then, %entry
  %k.addr.0.lcssa = phi i32 [ %k, %entry ], [ %inc, %if.then ]
  %symbol.addr.0.lcssa = phi i32 [ %symbol, %entry ], [ %sub, %if.then ]
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext 0) #6, !dbg !1748
  %tobool14 = icmp eq i32 %k.addr.0.lcssa, 0, !dbg !1750
  br i1 %tobool14, label %while.end5, label %while.body3, !dbg !1750

while.body3:                                      ; preds = %if.else, %while.body3
  %dec15.in = phi i32 [ %dec15, %while.body3 ], [ %k.addr.0.lcssa, %if.else ]
  %dec15 = add nsw i32 %dec15.in, -1, !dbg !1750
  %shr = lshr i32 %symbol.addr.0.lcssa, %dec15, !dbg !1751
  %shr.tr = trunc i32 %shr to i16, !dbg !1751
  %conv = and i16 %shr.tr, 1, !dbg !1751
  tail call void @biari_encode_symbol_eq_prob(%struct.EncodingEnvironment* %eep_dp, i16 signext %conv) #6, !dbg !1751
  tail call void @llvm.dbg.value(metadata !{i32 %dec15}, i64 0, metadata !540), !dbg !1750
  %tobool = icmp eq i32 %dec15, 0, !dbg !1750
  br i1 %tobool, label %while.end5, label %while.body3, !dbg !1750

while.end5:                                       ; preds = %while.body3, %if.else
  ret void, !dbg !1752
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !45, metadata !46, metadata !564, metadata !45, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8, metadata !33, metadata !40}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 119, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 119, size 32, align 32, offset 0] [from ]
!9 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!10 = metadata !{metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!11 = metadata !{i32 786472, metadata !"SE_HEADER", i64 0} ; [ DW_TAG_enumerator ] [SE_HEADER :: 0]
!12 = metadata !{i32 786472, metadata !"SE_PTYPE", i64 1} ; [ DW_TAG_enumerator ] [SE_PTYPE :: 1]
!13 = metadata !{i32 786472, metadata !"SE_MBTYPE", i64 2} ; [ DW_TAG_enumerator ] [SE_MBTYPE :: 2]
!14 = metadata !{i32 786472, metadata !"SE_REFFRAME", i64 3} ; [ DW_TAG_enumerator ] [SE_REFFRAME :: 3]
!15 = metadata !{i32 786472, metadata !"SE_INTRAPREDMODE", i64 4} ; [ DW_TAG_enumerator ] [SE_INTRAPREDMODE :: 4]
!16 = metadata !{i32 786472, metadata !"SE_MVD", i64 5} ; [ DW_TAG_enumerator ] [SE_MVD :: 5]
!17 = metadata !{i32 786472, metadata !"SE_CBP_INTRA", i64 6} ; [ DW_TAG_enumerator ] [SE_CBP_INTRA :: 6]
!18 = metadata !{i32 786472, metadata !"SE_LUM_DC_INTRA", i64 7} ; [ DW_TAG_enumerator ] [SE_LUM_DC_INTRA :: 7]
!19 = metadata !{i32 786472, metadata !"SE_CHR_DC_INTRA", i64 8} ; [ DW_TAG_enumerator ] [SE_CHR_DC_INTRA :: 8]
!20 = metadata !{i32 786472, metadata !"SE_LUM_AC_INTRA", i64 9} ; [ DW_TAG_enumerator ] [SE_LUM_AC_INTRA :: 9]
!21 = metadata !{i32 786472, metadata !"SE_CHR_AC_INTRA", i64 10} ; [ DW_TAG_enumerator ] [SE_CHR_AC_INTRA :: 10]
!22 = metadata !{i32 786472, metadata !"SE_CBP_INTER", i64 11} ; [ DW_TAG_enumerator ] [SE_CBP_INTER :: 11]
!23 = metadata !{i32 786472, metadata !"SE_LUM_DC_INTER", i64 12} ; [ DW_TAG_enumerator ] [SE_LUM_DC_INTER :: 12]
!24 = metadata !{i32 786472, metadata !"SE_CHR_DC_INTER", i64 13} ; [ DW_TAG_enumerator ] [SE_CHR_DC_INTER :: 13]
!25 = metadata !{i32 786472, metadata !"SE_LUM_AC_INTER", i64 14} ; [ DW_TAG_enumerator ] [SE_LUM_AC_INTER :: 14]
!26 = metadata !{i32 786472, metadata !"SE_CHR_AC_INTER", i64 15} ; [ DW_TAG_enumerator ] [SE_CHR_AC_INTER :: 15]
!27 = metadata !{i32 786472, metadata !"SE_DELTA_QUANT_INTER", i64 16} ; [ DW_TAG_enumerator ] [SE_DELTA_QUANT_INTER :: 16]
!28 = metadata !{i32 786472, metadata !"SE_DELTA_QUANT_INTRA", i64 17} ; [ DW_TAG_enumerator ] [SE_DELTA_QUANT_INTRA :: 17]
!29 = metadata !{i32 786472, metadata !"SE_BFRAME", i64 18} ; [ DW_TAG_enumerator ] [SE_BFRAME :: 18]
!30 = metadata !{i32 786472, metadata !"SE_EOS", i64 19} ; [ DW_TAG_enumerator ] [SE_EOS :: 19]
!31 = metadata !{i32 786472, metadata !"SE_TRANSFORM_SIZE_FLAG", i64 20} ; [ DW_TAG_enumerator ] [SE_TRANSFORM_SIZE_FLAG :: 20]
!32 = metadata !{i32 786472, metadata !"SE_MAX_ELEMENTS", i64 21} ; [ DW_TAG_enumerator ] [SE_MAX_ELEMENTS :: 21]
!33 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 192, i64 32, i64 32, i32 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 192, size 32, align 32, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!35 = metadata !{i32 786472, metadata !"P_SLICE", i64 0} ; [ DW_TAG_enumerator ] [P_SLICE :: 0]
!36 = metadata !{i32 786472, metadata !"B_SLICE", i64 1} ; [ DW_TAG_enumerator ] [B_SLICE :: 1]
!37 = metadata !{i32 786472, metadata !"I_SLICE", i64 2} ; [ DW_TAG_enumerator ] [I_SLICE :: 2]
!38 = metadata !{i32 786472, metadata !"SP_SLICE", i64 3} ; [ DW_TAG_enumerator ] [SP_SLICE :: 3]
!39 = metadata !{i32 786472, metadata !"SI_SLICE", i64 4} ; [ DW_TAG_enumerator ] [SI_SLICE :: 4]
!40 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 185, size 32, align 32, offset 0] [from ]
!41 = metadata !{metadata !42, metadata !43, metadata !44}
!42 = metadata !{i32 786472, metadata !"FRAME", i64 0} ; [ DW_TAG_enumerator ] [FRAME :: 0]
!43 = metadata !{i32 786472, metadata !"TOP_FIELD", i64 1} ; [ DW_TAG_enumerator ] [TOP_FIELD :: 1]
!44 = metadata !{i32 786472, metadata !"BOTTOM_FIELD", i64 2} ; [ DW_TAG_enumerator ] [BOTTOM_FIELD :: 2]
!45 = metadata !{i32 0}
!46 = metadata !{metadata !47, metadata !51, metadata !133, metadata !173, metadata !204, metadata !209, metadata !214, metadata !298, metadata !310, metadata !321, metadata !331, metadata !346, metadata !355, metadata !360, metadata !380, metadata !390, metadata !409, metadata !419, metadata !434, metadata !447, metadata !473, metadata !492, metadata !507, metadata !513, metadata !523, metadata !534, metadata !541, metadata !551}
!47 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"cabac_new_slice", metadata !"cabac_new_slice", metadata !"", i32 53, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @cabac_new_slice, null, null, metadata !45, i32 54} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 54] [cabac_new_slice]
!48 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!49 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{null}
!51 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"CheckAvailabilityOfNeighborsCABAC", metadata !"CheckAvailabilityOfNeighborsCABAC", metadata !"", i32 66, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CheckAvailabilityOfNeighborsCABAC, null, null, metadata !52, i32 67} ; [ DW_TAG_subprogram ] [line 66] [def] [scope 67] [CheckAvailabilityOfNeighborsCABAC]
!52 = metadata !{metadata !53, metadata !122, metadata !132}
!53 = metadata !{i32 786688, metadata !51, metadata !"currMB", metadata !48, i32 68, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 68]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Macroblock]
!55 = metadata !{i32 786454, metadata !1, null, metadata !"Macroblock", i32 406, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [Macroblock] [line 406, size 0, align 0, offset 0] [from macroblock]
!56 = metadata !{i32 786451, metadata !9, null, metadata !"macroblock", i32 351, i64 5056, i64 64, i32 0, i32 0, null, metadata !57, i32 0, null, null} ; [ DW_TAG_structure_type ] [macroblock] [line 351, size 5056, align 64, offset 0] [from ]
!57 = metadata !{metadata !58, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !68, metadata !70, metadata !71, metadata !72, metadata !77, metadata !81, metadata !82, metadata !83, metadata !87, metadata !90, metadata !91, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121}
!58 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"currSEnr", i32 353, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [currSEnr] [line 353, size 32, align 32, offset 0] [from int]
!59 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!60 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"slice_nr", i32 354, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [slice_nr] [line 354, size 32, align 32, offset 32] [from int]
!61 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"delta_qp", i32 355, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [delta_qp] [line 355, size 32, align 32, offset 64] [from int]
!62 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"qp", i32 356, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [qp] [line 356, size 32, align 32, offset 96] [from int]
!63 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"qpsp", i32 357, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [qpsp] [line 357, size 32, align 32, offset 128] [from int]
!64 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"bitcounter", i32 358, i64 256, i64 32, i64 160, i32 0, metadata !65} ; [ DW_TAG_member ] [bitcounter] [line 358, size 256, align 32, offset 160] [from ]
!65 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !59, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!68 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mb_available_up", i32 360, i64 64, i64 64, i64 448, i32 0, metadata !69} ; [ DW_TAG_member ] [mb_available_up] [line 360, size 64, align 64, offset 448] [from ]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macroblock]
!70 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mb_available_left", i32 361, i64 64, i64 64, i64 512, i32 0, metadata !69} ; [ DW_TAG_member ] [mb_available_left] [line 361, size 64, align 64, offset 512] [from ]
!71 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mb_type", i32 363, i64 32, i64 32, i64 576, i32 0, metadata !59} ; [ DW_TAG_member ] [mb_type] [line 363, size 32, align 32, offset 576] [from int]
!72 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mvd", i32 364, i64 2048, i64 32, i64 608, i32 0, metadata !73} ; [ DW_TAG_member ] [mvd] [line 364, size 2048, align 32, offset 608] [from ]
!73 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !59, metadata !74, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!74 = metadata !{metadata !75, metadata !76, metadata !76, metadata !75}
!75 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!76 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!77 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"intra_pred_modes", i32 365, i64 512, i64 32, i64 2656, i32 0, metadata !78} ; [ DW_TAG_member ] [intra_pred_modes] [line 365, size 512, align 32, offset 2656] [from ]
!78 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !59, metadata !79, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786465, i64 0, i64 16}       ; [ DW_TAG_subrange_type ] [0, 15]
!81 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"intra_pred_modes8x8", i32 366, i64 512, i64 32, i64 3168, i32 0, metadata !78} ; [ DW_TAG_member ] [intra_pred_modes8x8] [line 366, size 512, align 32, offset 3168] [from ]
!82 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"cbp", i32 367, i64 32, i64 32, i64 3680, i32 0, metadata !59} ; [ DW_TAG_member ] [cbp] [line 367, size 32, align 32, offset 3680] [from int]
!83 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"cbp_blk", i32 368, i64 64, i64 64, i64 3712, i32 0, metadata !84} ; [ DW_TAG_member ] [cbp_blk] [line 368, size 64, align 64, offset 3712] [from int64]
!84 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!85 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!86 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!87 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"b8mode", i32 369, i64 128, i64 32, i64 3776, i32 0, metadata !88} ; [ DW_TAG_member ] [b8mode] [line 369, size 128, align 32, offset 3776] [from ]
!88 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !59, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!89 = metadata !{metadata !76}
!90 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"b8pdir", i32 370, i64 128, i64 32, i64 3904, i32 0, metadata !88} ; [ DW_TAG_member ] [b8pdir] [line 370, size 128, align 32, offset 3904] [from ]
!91 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"cbp_bits", i32 371, i64 64, i64 64, i64 4032, i32 0, metadata !92} ; [ DW_TAG_member ] [cbp_bits] [line 371, size 64, align 64, offset 4032] [from long unsigned int]
!92 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!93 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"lf_disable", i32 373, i64 32, i64 32, i64 4096, i32 0, metadata !59} ; [ DW_TAG_member ] [lf_disable] [line 373, size 32, align 32, offset 4096] [from int]
!94 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"lf_alpha_c0_offset", i32 374, i64 32, i64 32, i64 4128, i32 0, metadata !59} ; [ DW_TAG_member ] [lf_alpha_c0_offset] [line 374, size 32, align 32, offset 4128] [from int]
!95 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"lf_beta_offset", i32 375, i64 32, i64 32, i64 4160, i32 0, metadata !59} ; [ DW_TAG_member ] [lf_beta_offset] [line 375, size 32, align 32, offset 4160] [from int]
!96 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"c_ipred_mode", i32 377, i64 32, i64 32, i64 4192, i32 0, metadata !59} ; [ DW_TAG_member ] [c_ipred_mode] [line 377, size 32, align 32, offset 4192] [from int]
!97 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"IntraChromaPredModeFlag", i32 378, i64 32, i64 32, i64 4224, i32 0, metadata !59} ; [ DW_TAG_member ] [IntraChromaPredModeFlag] [line 378, size 32, align 32, offset 4224] [from int]
!98 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mb_field", i32 380, i64 32, i64 32, i64 4256, i32 0, metadata !59} ; [ DW_TAG_member ] [mb_field] [line 380, size 32, align 32, offset 4256] [from int]
!99 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mbAddrA", i32 382, i64 32, i64 32, i64 4288, i32 0, metadata !59} ; [ DW_TAG_member ] [mbAddrA] [line 382, size 32, align 32, offset 4288] [from int]
!100 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mbAddrB", i32 382, i64 32, i64 32, i64 4320, i32 0, metadata !59} ; [ DW_TAG_member ] [mbAddrB] [line 382, size 32, align 32, offset 4320] [from int]
!101 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mbAddrC", i32 382, i64 32, i64 32, i64 4352, i32 0, metadata !59} ; [ DW_TAG_member ] [mbAddrC] [line 382, size 32, align 32, offset 4352] [from int]
!102 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mbAddrD", i32 382, i64 32, i64 32, i64 4384, i32 0, metadata !59} ; [ DW_TAG_member ] [mbAddrD] [line 382, size 32, align 32, offset 4384] [from int]
!103 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mbAvailA", i32 383, i64 32, i64 32, i64 4416, i32 0, metadata !59} ; [ DW_TAG_member ] [mbAvailA] [line 383, size 32, align 32, offset 4416] [from int]
!104 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mbAvailB", i32 383, i64 32, i64 32, i64 4448, i32 0, metadata !59} ; [ DW_TAG_member ] [mbAvailB] [line 383, size 32, align 32, offset 4448] [from int]
!105 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mbAvailC", i32 383, i64 32, i64 32, i64 4480, i32 0, metadata !59} ; [ DW_TAG_member ] [mbAvailC] [line 383, size 32, align 32, offset 4480] [from int]
!106 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"mbAvailD", i32 383, i64 32, i64 32, i64 4512, i32 0, metadata !59} ; [ DW_TAG_member ] [mbAvailD] [line 383, size 32, align 32, offset 4512] [from int]
!107 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"all_blk_8x8", i32 385, i64 32, i64 32, i64 4544, i32 0, metadata !59} ; [ DW_TAG_member ] [all_blk_8x8] [line 385, size 32, align 32, offset 4544] [from int]
!108 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"luma_transform_size_8x8_flag", i32 386, i64 32, i64 32, i64 4576, i32 0, metadata !59} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 386, size 32, align 32, offset 4576] [from int]
!109 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"NoMbPartLessThan8x8Flag", i32 387, i64 32, i64 32, i64 4608, i32 0, metadata !59} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 387, size 32, align 32, offset 4608] [from int]
!110 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"bi_pred_me", i32 390, i64 32, i64 32, i64 4640, i32 0, metadata !59} ; [ DW_TAG_member ] [bi_pred_me] [line 390, size 32, align 32, offset 4640] [from int]
!111 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"actj", i32 394, i64 64, i64 64, i64 4672, i32 0, metadata !112} ; [ DW_TAG_member ] [actj] [line 394, size 64, align 64, offset 4672] [from double]
!112 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!113 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"prev_qp", i32 395, i64 32, i64 32, i64 4736, i32 0, metadata !59} ; [ DW_TAG_member ] [prev_qp] [line 395, size 32, align 32, offset 4736] [from int]
!114 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"prev_delta_qp", i32 396, i64 32, i64 32, i64 4768, i32 0, metadata !59} ; [ DW_TAG_member ] [prev_delta_qp] [line 396, size 32, align 32, offset 4768] [from int]
!115 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"prev_cbp", i32 397, i64 32, i64 32, i64 4800, i32 0, metadata !59} ; [ DW_TAG_member ] [prev_cbp] [line 397, size 32, align 32, offset 4800] [from int]
!116 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"predict_qp", i32 398, i64 32, i64 32, i64 4832, i32 0, metadata !59} ; [ DW_TAG_member ] [predict_qp] [line 398, size 32, align 32, offset 4832] [from int]
!117 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"predict_error", i32 399, i64 32, i64 32, i64 4864, i32 0, metadata !59} ; [ DW_TAG_member ] [predict_error] [line 399, size 32, align 32, offset 4864] [from int]
!118 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"LFDisableIdc", i32 401, i64 32, i64 32, i64 4896, i32 0, metadata !59} ; [ DW_TAG_member ] [LFDisableIdc] [line 401, size 32, align 32, offset 4896] [from int]
!119 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"LFAlphaC0Offset", i32 402, i64 32, i64 32, i64 4928, i32 0, metadata !59} ; [ DW_TAG_member ] [LFAlphaC0Offset] [line 402, size 32, align 32, offset 4928] [from int]
!120 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"LFBetaOffset", i32 403, i64 32, i64 32, i64 4960, i32 0, metadata !59} ; [ DW_TAG_member ] [LFBetaOffset] [line 403, size 32, align 32, offset 4960] [from int]
!121 = metadata !{i32 786445, metadata !9, metadata !56, metadata !"skip_flag", i32 405, i64 32, i64 32, i64 4992, i32 0, metadata !59} ; [ DW_TAG_member ] [skip_flag] [line 405, size 32, align 32, offset 4992] [from int]
!122 = metadata !{i32 786688, metadata !51, metadata !"up", metadata !48, i32 69, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [up] [line 69]
!123 = metadata !{i32 786454, metadata !1, null, metadata !"PixelPos", i32 305, i64 0, i64 0, i64 0, i32 0, metadata !124} ; [ DW_TAG_typedef ] [PixelPos] [line 305, size 0, align 0, offset 0] [from pix_pos]
!124 = metadata !{i32 786451, metadata !9, null, metadata !"pix_pos", i32 297, i64 192, i64 32, i32 0, i32 0, null, metadata !125, i32 0, null, null} ; [ DW_TAG_structure_type ] [pix_pos] [line 297, size 192, align 32, offset 0] [from ]
!125 = metadata !{metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131}
!126 = metadata !{i32 786445, metadata !9, metadata !124, metadata !"available", i32 299, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [available] [line 299, size 32, align 32, offset 0] [from int]
!127 = metadata !{i32 786445, metadata !9, metadata !124, metadata !"mb_addr", i32 300, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [mb_addr] [line 300, size 32, align 32, offset 32] [from int]
!128 = metadata !{i32 786445, metadata !9, metadata !124, metadata !"x", i32 301, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [x] [line 301, size 32, align 32, offset 64] [from int]
!129 = metadata !{i32 786445, metadata !9, metadata !124, metadata !"y", i32 302, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [y] [line 302, size 32, align 32, offset 96] [from int]
!130 = metadata !{i32 786445, metadata !9, metadata !124, metadata !"pos_x", i32 303, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [pos_x] [line 303, size 32, align 32, offset 128] [from int]
!131 = metadata !{i32 786445, metadata !9, metadata !124, metadata !"pos_y", i32 304, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [pos_y] [line 304, size 32, align 32, offset 160] [from int]
!132 = metadata !{i32 786688, metadata !51, metadata !"left", metadata !48, i32 69, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left] [line 69]
!133 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"create_contexts_MotionInfo", metadata !"create_contexts_MotionInfo", metadata !"", i32 92, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.MotionInfoContexts* ()* @create_contexts_MotionInfo, null, null, metadata !171, i32 93} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 93] [create_contexts_MotionInfo]
!134 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!137 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!138 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !139, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!139 = metadata !{metadata !140, metadata !153, metadata !157, metadata !161, metadata !165, metadata !167, metadata !168}
!140 = metadata !{i32 786445, metadata !9, metadata !138, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!141 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !142, metadata !150, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!142 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!143 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !144, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!144 = metadata !{metadata !145, metadata !147, metadata !149}
!145 = metadata !{i32 786445, metadata !9, metadata !143, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !146} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!146 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!147 = metadata !{i32 786445, metadata !9, metadata !143, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !148} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!148 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!149 = metadata !{i32 786445, metadata !9, metadata !143, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!150 = metadata !{metadata !151, metadata !152}
!151 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!152 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!153 = metadata !{i32 786445, metadata !9, metadata !138, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !154} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!154 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !142, metadata !155, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!155 = metadata !{metadata !75, metadata !156}
!156 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!157 = metadata !{i32 786445, metadata !9, metadata !138, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !158} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!158 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !142, metadata !159, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!159 = metadata !{metadata !75, metadata !160}
!160 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!161 = metadata !{i32 786445, metadata !9, metadata !138, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !162} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!162 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !142, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!163 = metadata !{metadata !75, metadata !164}
!164 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!165 = metadata !{i32 786445, metadata !9, metadata !138, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !166} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!166 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !142, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!167 = metadata !{i32 786445, metadata !9, metadata !138, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !166} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!168 = metadata !{i32 786445, metadata !9, metadata !138, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !169} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!169 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !142, metadata !170, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!170 = metadata !{metadata !151}
!171 = metadata !{metadata !172}
!172 = metadata !{i32 786688, metadata !133, metadata !"enco_ctx", metadata !48, i32 94, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enco_ctx] [line 94]
!173 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"create_contexts_TextureInfo", metadata !"create_contexts_TextureInfo", metadata !"", i32 111, metadata !174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.TextureInfoContexts* ()* @create_contexts_TextureInfo, null, null, metadata !202, i32 112} ; [ DW_TAG_subprogram ] [line 111] [def] [scope 112] [create_contexts_TextureInfo]
!174 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!175 = metadata !{metadata !176}
!176 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !177} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!177 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!178 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !179, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!179 = metadata !{metadata !180, metadata !183, metadata !184, metadata !187, metadata !190, metadata !194, metadata !195, metadata !199, metadata !200, metadata !201}
!180 = metadata !{i32 786445, metadata !9, metadata !178, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!181 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !142, metadata !182, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!182 = metadata !{metadata !75}
!183 = metadata !{i32 786445, metadata !9, metadata !178, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !166} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!184 = metadata !{i32 786445, metadata !9, metadata !178, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !185} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!185 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !142, metadata !186, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!186 = metadata !{metadata !151, metadata !76}
!187 = metadata !{i32 786445, metadata !9, metadata !178, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !188} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!188 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !142, metadata !189, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!189 = metadata !{metadata !160, metadata !76}
!190 = metadata !{i32 786445, metadata !9, metadata !178, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !191} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!191 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !142, metadata !192, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!192 = metadata !{metadata !160, metadata !193}
!193 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!194 = metadata !{i32 786445, metadata !9, metadata !178, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !191} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!195 = metadata !{i32 786445, metadata !9, metadata !178, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !196} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!196 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !142, metadata !197, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!197 = metadata !{metadata !160, metadata !198}
!198 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!199 = metadata !{i32 786445, metadata !9, metadata !178, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !196} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!200 = metadata !{i32 786445, metadata !9, metadata !178, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !191} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!201 = metadata !{i32 786445, metadata !9, metadata !178, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !191} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!202 = metadata !{metadata !203}
!203 = metadata !{i32 786688, metadata !173, metadata !"enco_ctx", metadata !48, i32 113, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enco_ctx] [line 113]
!204 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"delete_contexts_MotionInfo", metadata !"delete_contexts_MotionInfo", metadata !"", i32 132, metadata !205, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.MotionInfoContexts*)* @delete_contexts_MotionInfo, null, null, metadata !207, i32 133} ; [ DW_TAG_subprogram ] [line 132] [def] [scope 133] [delete_contexts_MotionInfo]
!205 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!206 = metadata !{null, metadata !136}
!207 = metadata !{metadata !208}
!208 = metadata !{i32 786689, metadata !204, metadata !"enco_ctx", metadata !48, i32 16777348, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [enco_ctx] [line 132]
!209 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"delete_contexts_TextureInfo", metadata !"delete_contexts_TextureInfo", metadata !"", i32 149, metadata !210, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.TextureInfoContexts*)* @delete_contexts_TextureInfo, null, null, metadata !212, i32 150} ; [ DW_TAG_subprogram ] [line 149] [def] [scope 150] [delete_contexts_TextureInfo]
!210 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!211 = metadata !{null, metadata !176}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 786689, metadata !209, metadata !"enco_ctx", metadata !48, i32 16777365, metadata !176, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [enco_ctx] [line 149]
!214 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeSyntaxElement_CABAC", metadata !"writeSyntaxElement_CABAC", metadata !"", i32 166, metadata !215, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_CABAC, null, null, metadata !293, i32 167} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 167] [writeSyntaxElement_CABAC]
!215 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!216 = metadata !{metadata !59, metadata !217, metadata !267}
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!218 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!219 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !220, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!220 = metadata !{metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !228, metadata !229, metadata !230, metadata !235}
!221 = metadata !{i32 786445, metadata !9, metadata !219, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!222 = metadata !{i32 786445, metadata !9, metadata !219, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!223 = metadata !{i32 786445, metadata !9, metadata !219, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!224 = metadata !{i32 786445, metadata !9, metadata !219, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!225 = metadata !{i32 786445, metadata !9, metadata !219, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!226 = metadata !{i32 786445, metadata !9, metadata !219, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !227} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!227 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!228 = metadata !{i32 786445, metadata !9, metadata !219, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!229 = metadata !{i32 786445, metadata !9, metadata !219, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !59} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!230 = metadata !{i32 786445, metadata !9, metadata !219, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !231} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!231 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !232} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!232 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !233, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!233 = metadata !{null, metadata !59, metadata !59, metadata !234, metadata !234}
!234 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!235 = metadata !{i32 786445, metadata !9, metadata !219, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !236} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!236 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!237 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!238 = metadata !{null, metadata !239, metadata !240}
!239 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!240 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !241} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!241 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !242} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!242 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !243} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!243 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !244, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!244 = metadata !{metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266}
!245 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !227} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!246 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !227} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!247 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !227} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!248 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !227} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!249 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !227} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!250 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !251} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!251 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !252} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!252 = metadata !{i32 786454, metadata !9, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!253 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !234} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!254 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !227} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!255 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !227} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!256 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !227} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!257 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !227} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!258 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !227} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!259 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !251} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!260 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !234} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!261 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !59} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!262 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !59} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!263 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !59} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!264 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !59} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!265 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !59} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!266 = metadata !{i32 786445, metadata !9, metadata !243, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !59} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!267 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !268} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!268 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !269} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!269 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !270, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!270 = metadata !{metadata !271, metadata !287, metadata !288}
!271 = metadata !{i32 786445, metadata !9, metadata !269, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !272} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!272 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !273} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!273 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!274 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !275, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!275 = metadata !{metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286}
!276 = metadata !{i32 786445, metadata !9, metadata !274, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!277 = metadata !{i32 786445, metadata !9, metadata !274, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!278 = metadata !{i32 786445, metadata !9, metadata !274, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !252} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!279 = metadata !{i32 786445, metadata !9, metadata !274, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!280 = metadata !{i32 786445, metadata !9, metadata !274, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!281 = metadata !{i32 786445, metadata !9, metadata !274, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !252} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!282 = metadata !{i32 786445, metadata !9, metadata !274, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !252} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!283 = metadata !{i32 786445, metadata !9, metadata !274, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!284 = metadata !{i32 786445, metadata !9, metadata !274, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !59} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!285 = metadata !{i32 786445, metadata !9, metadata !274, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !251} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!286 = metadata !{i32 786445, metadata !9, metadata !274, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !59} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!287 = metadata !{i32 786445, metadata !9, metadata !269, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !242} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!288 = metadata !{i32 786445, metadata !9, metadata !269, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !289} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!289 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!290 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!291 = metadata !{metadata !59, metadata !217, metadata !292}
!292 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !269} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!293 = metadata !{metadata !294, metadata !295, metadata !296, metadata !297}
!294 = metadata !{i32 786689, metadata !214, metadata !"se", metadata !48, i32 16777382, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 166]
!295 = metadata !{i32 786689, metadata !214, metadata !"this_dataPart", metadata !48, i32 33554598, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 166]
!296 = metadata !{i32 786688, metadata !214, metadata !"curr_len", metadata !48, i32 168, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr_len] [line 168]
!297 = metadata !{i32 786688, metadata !214, metadata !"eep_dp", metadata !48, i32 169, metadata !240, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eep_dp] [line 169]
!298 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeFieldModeInfo_CABAC", metadata !"writeFieldModeInfo_CABAC", metadata !"", i32 189, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeFieldModeInfo_CABAC, null, null, metadata !301, i32 190} ; [ DW_TAG_subprogram ] [line 189] [def] [scope 190] [writeFieldModeInfo_CABAC]
!299 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!300 = metadata !{null, metadata !217, metadata !240}
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309}
!302 = metadata !{i32 786689, metadata !298, metadata !"se", metadata !48, i32 16777405, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 189]
!303 = metadata !{i32 786689, metadata !298, metadata !"eep_dp", metadata !48, i32 33554621, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 189]
!304 = metadata !{i32 786688, metadata !298, metadata !"a", metadata !48, i32 191, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 191]
!305 = metadata !{i32 786688, metadata !298, metadata !"b", metadata !48, i32 191, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 191]
!306 = metadata !{i32 786688, metadata !298, metadata !"act_ctx", metadata !48, i32 191, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_ctx] [line 191]
!307 = metadata !{i32 786688, metadata !298, metadata !"ctx", metadata !48, i32 192, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 192]
!308 = metadata !{i32 786688, metadata !298, metadata !"currMB", metadata !48, i32 193, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 193]
!309 = metadata !{i32 786688, metadata !298, metadata !"mb_field", metadata !48, i32 194, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_field] [line 194]
!310 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeMB_skip_flagInfo_CABAC", metadata !"writeMB_skip_flagInfo_CABAC", metadata !"", i32 223, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMB_skip_flagInfo_CABAC, null, null, metadata !311, i32 224} ; [ DW_TAG_subprogram ] [line 223] [def] [scope 224] [writeMB_skip_flagInfo_CABAC]
!311 = metadata !{metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320}
!312 = metadata !{i32 786689, metadata !310, metadata !"se", metadata !48, i32 16777439, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 223]
!313 = metadata !{i32 786689, metadata !310, metadata !"eep_dp", metadata !48, i32 33554655, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 223]
!314 = metadata !{i32 786688, metadata !310, metadata !"a", metadata !48, i32 225, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 225]
!315 = metadata !{i32 786688, metadata !310, metadata !"b", metadata !48, i32 225, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 225]
!316 = metadata !{i32 786688, metadata !310, metadata !"act_ctx", metadata !48, i32 225, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_ctx] [line 225]
!317 = metadata !{i32 786688, metadata !310, metadata !"bframe", metadata !48, i32 226, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bframe] [line 226]
!318 = metadata !{i32 786688, metadata !310, metadata !"ctx", metadata !48, i32 227, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 227]
!319 = metadata !{i32 786688, metadata !310, metadata !"currMB", metadata !48, i32 228, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 228]
!320 = metadata !{i32 786688, metadata !310, metadata !"curr_mb_type", metadata !48, i32 229, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr_mb_type] [line 229]
!321 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeMB_transform_size_CABAC", metadata !"writeMB_transform_size_CABAC", metadata !"", i32 284, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMB_transform_size_CABAC, null, null, metadata !322, i32 285} ; [ DW_TAG_subprogram ] [line 284] [def] [scope 285] [writeMB_transform_size_CABAC]
!322 = metadata !{metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330}
!323 = metadata !{i32 786689, metadata !321, metadata !"se", metadata !48, i32 16777500, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 284]
!324 = metadata !{i32 786689, metadata !321, metadata !"eep_dp", metadata !48, i32 33554716, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 284]
!325 = metadata !{i32 786688, metadata !321, metadata !"a", metadata !48, i32 286, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 286]
!326 = metadata !{i32 786688, metadata !321, metadata !"b", metadata !48, i32 286, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 286]
!327 = metadata !{i32 786688, metadata !321, metadata !"act_ctx", metadata !48, i32 287, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_ctx] [line 287]
!328 = metadata !{i32 786688, metadata !321, metadata !"act_sym", metadata !48, i32 288, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_sym] [line 288]
!329 = metadata !{i32 786688, metadata !321, metadata !"ctx", metadata !48, i32 290, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 290]
!330 = metadata !{i32 786688, metadata !321, metadata !"currMB", metadata !48, i32 291, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 291]
!331 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeMB_typeInfo_CABAC", metadata !"writeMB_typeInfo_CABAC", metadata !"", i32 322, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMB_typeInfo_CABAC, null, null, metadata !332, i32 323} ; [ DW_TAG_subprogram ] [line 322] [def] [scope 323] [writeMB_typeInfo_CABAC]
!332 = metadata !{metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345}
!333 = metadata !{i32 786689, metadata !331, metadata !"se", metadata !48, i32 16777538, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 322]
!334 = metadata !{i32 786689, metadata !331, metadata !"eep_dp", metadata !48, i32 33554754, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 322]
!335 = metadata !{i32 786688, metadata !331, metadata !"a", metadata !48, i32 324, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 324]
!336 = metadata !{i32 786688, metadata !331, metadata !"b", metadata !48, i32 324, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 324]
!337 = metadata !{i32 786688, metadata !331, metadata !"act_ctx", metadata !48, i32 325, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_ctx] [line 325]
!338 = metadata !{i32 786688, metadata !331, metadata !"act_sym", metadata !48, i32 326, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_sym] [line 326]
!339 = metadata !{i32 786688, metadata !331, metadata !"csym", metadata !48, i32 327, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [csym] [line 327]
!340 = metadata !{i32 786688, metadata !331, metadata !"bframe", metadata !48, i32 328, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bframe] [line 328]
!341 = metadata !{i32 786688, metadata !331, metadata !"mode_sym", metadata !48, i32 329, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode_sym] [line 329]
!342 = metadata !{i32 786688, metadata !331, metadata !"mode16x16", metadata !48, i32 330, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode16x16] [line 330]
!343 = metadata !{i32 786688, metadata !331, metadata !"ctx", metadata !48, i32 333, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 333]
!344 = metadata !{i32 786688, metadata !331, metadata !"currMB", metadata !48, i32 334, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 334]
!345 = metadata !{i32 786688, metadata !331, metadata !"curr_mb_type", metadata !48, i32 335, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr_mb_type] [line 335]
!346 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeB8_typeInfo_CABAC", metadata !"writeB8_typeInfo_CABAC", metadata !"", i32 580, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeB8_typeInfo_CABAC, null, null, metadata !347, i32 581} ; [ DW_TAG_subprogram ] [line 580] [def] [scope 581] [writeB8_typeInfo_CABAC]
!347 = metadata !{metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354}
!348 = metadata !{i32 786689, metadata !346, metadata !"se", metadata !48, i32 16777796, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 580]
!349 = metadata !{i32 786689, metadata !346, metadata !"eep_dp", metadata !48, i32 33555012, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 580]
!350 = metadata !{i32 786688, metadata !346, metadata !"act_ctx", metadata !48, i32 582, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_ctx] [line 582]
!351 = metadata !{i32 786688, metadata !346, metadata !"act_sym", metadata !48, i32 583, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_sym] [line 583]
!352 = metadata !{i32 786688, metadata !346, metadata !"csym", metadata !48, i32 583, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [csym] [line 583]
!353 = metadata !{i32 786688, metadata !346, metadata !"bframe", metadata !48, i32 584, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bframe] [line 584]
!354 = metadata !{i32 786688, metadata !346, metadata !"ctx", metadata !48, i32 586, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 586]
!355 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeIntraPredMode_CABAC", metadata !"writeIntraPredMode_CABAC", metadata !"", i32 677, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeIntraPredMode_CABAC, null, null, metadata !356, i32 678} ; [ DW_TAG_subprogram ] [line 677] [def] [scope 678] [writeIntraPredMode_CABAC]
!356 = metadata !{metadata !357, metadata !358, metadata !359}
!357 = metadata !{i32 786689, metadata !355, metadata !"se", metadata !48, i32 16777893, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 677]
!358 = metadata !{i32 786689, metadata !355, metadata !"eep_dp", metadata !48, i32 33555109, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 677]
!359 = metadata !{i32 786688, metadata !355, metadata !"ctx", metadata !48, i32 679, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 679]
!360 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeRefFrame_CABAC", metadata !"writeRefFrame_CABAC", metadata !"", i32 701, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRefFrame_CABAC, null, null, metadata !361, i32 702} ; [ DW_TAG_subprogram ] [line 701] [def] [scope 702] [writeRefFrame_CABAC]
!361 = metadata !{metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379}
!362 = metadata !{i32 786689, metadata !360, metadata !"se", metadata !48, i32 16777917, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 701]
!363 = metadata !{i32 786689, metadata !360, metadata !"eep_dp", metadata !48, i32 33555133, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 701]
!364 = metadata !{i32 786688, metadata !360, metadata !"ctx", metadata !48, i32 703, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 703]
!365 = metadata !{i32 786688, metadata !360, metadata !"currMB", metadata !48, i32 704, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 704]
!366 = metadata !{i32 786688, metadata !360, metadata !"addctx", metadata !48, i32 705, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [addctx] [line 705]
!367 = metadata !{i32 786688, metadata !360, metadata !"a", metadata !48, i32 707, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 707]
!368 = metadata !{i32 786688, metadata !360, metadata !"b", metadata !48, i32 707, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 707]
!369 = metadata !{i32 786688, metadata !360, metadata !"act_ctx", metadata !48, i32 708, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_ctx] [line 708]
!370 = metadata !{i32 786688, metadata !360, metadata !"act_sym", metadata !48, i32 709, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_sym] [line 709]
!371 = metadata !{i32 786688, metadata !360, metadata !"refframe_array", metadata !48, i32 710, metadata !372, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [refframe_array] [line 710]
!372 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !373} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!373 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !374} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!374 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!375 = metadata !{i32 786688, metadata !360, metadata !"bslice", metadata !48, i32 712, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bslice] [line 712]
!376 = metadata !{i32 786688, metadata !360, metadata !"b8a", metadata !48, i32 714, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b8a] [line 714]
!377 = metadata !{i32 786688, metadata !360, metadata !"b8b", metadata !48, i32 714, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b8b] [line 714]
!378 = metadata !{i32 786688, metadata !360, metadata !"block_a", metadata !48, i32 716, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_a] [line 716]
!379 = metadata !{i32 786688, metadata !360, metadata !"block_b", metadata !48, i32 716, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_b] [line 716]
!380 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeDquant_CABAC", metadata !"writeDquant_CABAC", metadata !"", i32 773, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeDquant_CABAC, null, null, metadata !381, i32 774} ; [ DW_TAG_subprogram ] [line 773] [def] [scope 774] [writeDquant_CABAC]
!381 = metadata !{metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389}
!382 = metadata !{i32 786689, metadata !380, metadata !"se", metadata !48, i32 16777989, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 773]
!383 = metadata !{i32 786689, metadata !380, metadata !"eep_dp", metadata !48, i32 33555205, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 773]
!384 = metadata !{i32 786688, metadata !380, metadata !"ctx", metadata !48, i32 775, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 775]
!385 = metadata !{i32 786688, metadata !380, metadata !"act_ctx", metadata !48, i32 777, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_ctx] [line 777]
!386 = metadata !{i32 786688, metadata !380, metadata !"act_sym", metadata !48, i32 778, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_sym] [line 778]
!387 = metadata !{i32 786688, metadata !380, metadata !"dquant", metadata !48, i32 779, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dquant] [line 779]
!388 = metadata !{i32 786688, metadata !380, metadata !"sign", metadata !48, i32 780, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 780]
!389 = metadata !{i32 786688, metadata !380, metadata !"currMB", metadata !48, i32 782, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 782]
!390 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeMVD_CABAC", metadata !"writeMVD_CABAC", metadata !"", i32 815, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeMVD_CABAC, null, null, metadata !391, i32 816} ; [ DW_TAG_subprogram ] [line 815] [def] [scope 816] [writeMVD_CABAC]
!391 = metadata !{metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408}
!392 = metadata !{i32 786689, metadata !390, metadata !"se", metadata !48, i32 16778031, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 815]
!393 = metadata !{i32 786689, metadata !390, metadata !"eep_dp", metadata !48, i32 33555247, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 815]
!394 = metadata !{i32 786688, metadata !390, metadata !"i", metadata !48, i32 817, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 817]
!395 = metadata !{i32 786688, metadata !390, metadata !"j", metadata !48, i32 818, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 818]
!396 = metadata !{i32 786688, metadata !390, metadata !"a", metadata !48, i32 819, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 819]
!397 = metadata !{i32 786688, metadata !390, metadata !"b", metadata !48, i32 819, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 819]
!398 = metadata !{i32 786688, metadata !390, metadata !"act_ctx", metadata !48, i32 820, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_ctx] [line 820]
!399 = metadata !{i32 786688, metadata !390, metadata !"act_sym", metadata !48, i32 821, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_sym] [line 821]
!400 = metadata !{i32 786688, metadata !390, metadata !"mv_pred_res", metadata !48, i32 822, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mv_pred_res] [line 822]
!401 = metadata !{i32 786688, metadata !390, metadata !"mv_local_err", metadata !48, i32 823, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mv_local_err] [line 823]
!402 = metadata !{i32 786688, metadata !390, metadata !"mv_sign", metadata !48, i32 824, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mv_sign] [line 824]
!403 = metadata !{i32 786688, metadata !390, metadata !"list_idx", metadata !48, i32 825, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list_idx] [line 825]
!404 = metadata !{i32 786688, metadata !390, metadata !"k", metadata !48, i32 826, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 826]
!405 = metadata !{i32 786688, metadata !390, metadata !"block_a", metadata !48, i32 828, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_a] [line 828]
!406 = metadata !{i32 786688, metadata !390, metadata !"block_b", metadata !48, i32 828, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_b] [line 828]
!407 = metadata !{i32 786688, metadata !390, metadata !"ctx", metadata !48, i32 830, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 830]
!408 = metadata !{i32 786688, metadata !390, metadata !"currMB", metadata !48, i32 831, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 831]
!409 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeCIPredMode_CABAC", metadata !"writeCIPredMode_CABAC", metadata !"", i32 899, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeCIPredMode_CABAC, null, null, metadata !410, i32 900} ; [ DW_TAG_subprogram ] [line 899] [def] [scope 900] [writeCIPredMode_CABAC]
!410 = metadata !{metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418}
!411 = metadata !{i32 786689, metadata !409, metadata !"se", metadata !48, i32 16778115, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 899]
!412 = metadata !{i32 786689, metadata !409, metadata !"eep_dp", metadata !48, i32 33555331, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 899]
!413 = metadata !{i32 786688, metadata !409, metadata !"ctx", metadata !48, i32 901, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 901]
!414 = metadata !{i32 786688, metadata !409, metadata !"currMB", metadata !48, i32 902, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 902]
!415 = metadata !{i32 786688, metadata !409, metadata !"act_ctx", metadata !48, i32 903, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_ctx] [line 903]
!416 = metadata !{i32 786688, metadata !409, metadata !"a", metadata !48, i32 903, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 903]
!417 = metadata !{i32 786688, metadata !409, metadata !"b", metadata !48, i32 903, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 903]
!418 = metadata !{i32 786688, metadata !409, metadata !"act_sym", metadata !48, i32 904, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [act_sym] [line 904]
!419 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeCBP_BIT_CABAC", metadata !"writeCBP_BIT_CABAC", metadata !"", i32 930, metadata !420, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, %struct.macroblock*, i32, %struct.EncodingEnvironment*)* @writeCBP_BIT_CABAC, null, null, metadata !422, i32 931} ; [ DW_TAG_subprogram ] [line 930] [def] [scope 931] [writeCBP_BIT_CABAC]
!420 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!421 = metadata !{null, metadata !59, metadata !59, metadata !59, metadata !54, metadata !59, metadata !240}
!422 = metadata !{metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433}
!423 = metadata !{i32 786689, metadata !419, metadata !"b8", metadata !48, i32 16778146, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b8] [line 930]
!424 = metadata !{i32 786689, metadata !419, metadata !"bit", metadata !48, i32 33555362, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bit] [line 930]
!425 = metadata !{i32 786689, metadata !419, metadata !"cbp", metadata !48, i32 50332578, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cbp] [line 930]
!426 = metadata !{i32 786689, metadata !419, metadata !"currMB", metadata !48, i32 67109794, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currMB] [line 930]
!427 = metadata !{i32 786689, metadata !419, metadata !"inter", metadata !48, i32 83887010, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inter] [line 930]
!428 = metadata !{i32 786689, metadata !419, metadata !"eep_dp", metadata !48, i32 100664226, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 930]
!429 = metadata !{i32 786688, metadata !419, metadata !"block_a", metadata !48, i32 932, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_a] [line 932]
!430 = metadata !{i32 786688, metadata !419, metadata !"a", metadata !48, i32 933, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 933]
!431 = metadata !{i32 786688, metadata !419, metadata !"b", metadata !48, i32 933, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 933]
!432 = metadata !{i32 786688, metadata !419, metadata !"mb_x", metadata !48, i32 935, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_x] [line 935]
!433 = metadata !{i32 786688, metadata !419, metadata !"mb_y", metadata !48, i32 936, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_y] [line 936]
!434 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeCBP_CABAC", metadata !"writeCBP_CABAC", metadata !"", i32 985, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeCBP_CABAC, null, null, metadata !435, i32 986} ; [ DW_TAG_subprogram ] [line 985] [def] [scope 986] [writeCBP_CABAC]
!435 = metadata !{metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446}
!436 = metadata !{i32 786689, metadata !434, metadata !"se", metadata !48, i32 16778201, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 985]
!437 = metadata !{i32 786689, metadata !434, metadata !"eep_dp", metadata !48, i32 33555417, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 985]
!438 = metadata !{i32 786688, metadata !434, metadata !"ctx", metadata !48, i32 987, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 987]
!439 = metadata !{i32 786688, metadata !434, metadata !"currMB", metadata !48, i32 988, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 988]
!440 = metadata !{i32 786688, metadata !434, metadata !"a", metadata !48, i32 990, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 990]
!441 = metadata !{i32 786688, metadata !434, metadata !"b", metadata !48, i32 990, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 990]
!442 = metadata !{i32 786688, metadata !434, metadata !"curr_cbp_ctx", metadata !48, i32 991, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr_cbp_ctx] [line 991]
!443 = metadata !{i32 786688, metadata !434, metadata !"curr_cbp_idx", metadata !48, i32 991, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr_cbp_idx] [line 991]
!444 = metadata !{i32 786688, metadata !434, metadata !"cbp", metadata !48, i32 992, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cbp] [line 992]
!445 = metadata !{i32 786688, metadata !434, metadata !"cbp_bit", metadata !48, i32 993, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cbp_bit] [line 993]
!446 = metadata !{i32 786688, metadata !434, metadata !"b8", metadata !48, i32 994, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b8] [line 994]
!447 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"write_and_store_CBP_block_bit", metadata !"write_and_store_CBP_block_bit", metadata !"", i32 1076, metadata !448, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macroblock*, %struct.EncodingEnvironment*, i32, i32)* @write_and_store_CBP_block_bit, null, null, metadata !450, i32 1077} ; [ DW_TAG_subprogram ] [line 1076] [def] [scope 1077] [write_and_store_CBP_block_bit]
!448 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !449, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!449 = metadata !{null, metadata !54, metadata !240, metadata !59, metadata !59}
!450 = metadata !{metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472}
!451 = metadata !{i32 786689, metadata !447, metadata !"currMB", metadata !48, i32 16778292, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currMB] [line 1076]
!452 = metadata !{i32 786689, metadata !447, metadata !"eep_dp", metadata !48, i32 33555508, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 1076]
!453 = metadata !{i32 786689, metadata !447, metadata !"type", metadata !48, i32 50332724, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 1076]
!454 = metadata !{i32 786689, metadata !447, metadata !"cbp_bit", metadata !48, i32 67109940, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cbp_bit] [line 1076]
!455 = metadata !{i32 786688, metadata !447, metadata !"y_ac", metadata !48, i32 1080, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_ac] [line 1080]
!456 = metadata !{i32 786688, metadata !447, metadata !"y_dc", metadata !48, i32 1081, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_dc] [line 1081]
!457 = metadata !{i32 786688, metadata !447, metadata !"u_ac", metadata !48, i32 1082, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_ac] [line 1082]
!458 = metadata !{i32 786688, metadata !447, metadata !"v_ac", metadata !48, i32 1083, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v_ac] [line 1083]
!459 = metadata !{i32 786688, metadata !447, metadata !"chroma_dc", metadata !48, i32 1084, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chroma_dc] [line 1084]
!460 = metadata !{i32 786688, metadata !447, metadata !"u_dc", metadata !48, i32 1085, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u_dc] [line 1085]
!461 = metadata !{i32 786688, metadata !447, metadata !"v_dc", metadata !48, i32 1086, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v_dc] [line 1086]
!462 = metadata !{i32 786688, metadata !447, metadata !"j", metadata !48, i32 1087, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1087]
!463 = metadata !{i32 786688, metadata !447, metadata !"i", metadata !48, i32 1088, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1088]
!464 = metadata !{i32 786688, metadata !447, metadata !"bit", metadata !48, i32 1089, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bit] [line 1089]
!465 = metadata !{i32 786688, metadata !447, metadata !"default_bit", metadata !48, i32 1090, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [default_bit] [line 1090]
!466 = metadata !{i32 786688, metadata !447, metadata !"upper_bit", metadata !48, i32 1091, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upper_bit] [line 1091]
!467 = metadata !{i32 786688, metadata !447, metadata !"left_bit", metadata !48, i32 1092, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left_bit] [line 1092]
!468 = metadata !{i32 786688, metadata !447, metadata !"ctx", metadata !48, i32 1093, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 1093]
!469 = metadata !{i32 786688, metadata !447, metadata !"bit_pos_a", metadata !48, i32 1095, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bit_pos_a] [line 1095]
!470 = metadata !{i32 786688, metadata !447, metadata !"bit_pos_b", metadata !48, i32 1096, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bit_pos_b] [line 1096]
!471 = metadata !{i32 786688, metadata !447, metadata !"block_a", metadata !48, i32 1098, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_a] [line 1098]
!472 = metadata !{i32 786688, metadata !447, metadata !"block_b", metadata !48, i32 1098, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block_b] [line 1098]
!473 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"write_significance_map", metadata !"write_significance_map", metadata !"", i32 1235, metadata !474, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macroblock*, %struct.EncodingEnvironment*, i32, i32*, i32)* @write_significance_map, null, null, metadata !476, i32 1236} ; [ DW_TAG_subprogram ] [line 1235] [def] [scope 1236] [write_significance_map]
!474 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !475, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!475 = metadata !{null, metadata !54, metadata !240, metadata !59, metadata !234, metadata !59}
!476 = metadata !{metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !491}
!477 = metadata !{i32 786689, metadata !473, metadata !"currMB", metadata !48, i32 16778451, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currMB] [line 1235]
!478 = metadata !{i32 786689, metadata !473, metadata !"eep_dp", metadata !48, i32 33555667, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 1235]
!479 = metadata !{i32 786689, metadata !473, metadata !"type", metadata !48, i32 50332883, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 1235]
!480 = metadata !{i32 786689, metadata !473, metadata !"coeff", metadata !48, i32 67110099, metadata !234, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coeff] [line 1235]
!481 = metadata !{i32 786689, metadata !473, metadata !"coeff_ctr", metadata !48, i32 83887315, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coeff_ctr] [line 1235]
!482 = metadata !{i32 786688, metadata !473, metadata !"k", metadata !48, i32 1237, metadata !374, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1237]
!483 = metadata !{i32 786688, metadata !473, metadata !"sig", metadata !48, i32 1237, metadata !374, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sig] [line 1237]
!484 = metadata !{i32 786688, metadata !473, metadata !"last", metadata !48, i32 1237, metadata !374, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1237]
!485 = metadata !{i32 786688, metadata !473, metadata !"k0", metadata !48, i32 1238, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k0] [line 1238]
!486 = metadata !{i32 786688, metadata !473, metadata !"k1", metadata !48, i32 1239, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k1] [line 1239]
!487 = metadata !{i32 786688, metadata !473, metadata !"fld", metadata !48, i32 1241, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fld] [line 1241]
!488 = metadata !{i32 786688, metadata !473, metadata !"map_ctx", metadata !48, i32 1242, metadata !489, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map_ctx] [line 1242]
!489 = metadata !{i32 786454, metadata !1, null, metadata !"BiContextTypePtr", i32 240, i64 0, i64 0, i64 0, i32 0, metadata !490} ; [ DW_TAG_typedef ] [BiContextTypePtr] [line 240, size 0, align 0, offset 0] [from ]
!490 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BiContextType]
!491 = metadata !{i32 786688, metadata !473, metadata !"last_ctx", metadata !48, i32 1244, metadata !489, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last_ctx] [line 1244]
!492 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"write_significant_coefficients", metadata !"write_significant_coefficients", metadata !"", i32 1280, metadata !493, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.macroblock*, %struct.EncodingEnvironment*, i32, i32*)* @write_significant_coefficients, null, null, metadata !495, i32 1281} ; [ DW_TAG_subprogram ] [line 1280] [def] [scope 1281] [write_significant_coefficients]
!493 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !494, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!494 = metadata !{null, metadata !54, metadata !240, metadata !59, metadata !234}
!495 = metadata !{metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506}
!496 = metadata !{i32 786689, metadata !492, metadata !"currMB", metadata !48, i32 16778496, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currMB] [line 1280]
!497 = metadata !{i32 786689, metadata !492, metadata !"eep_dp", metadata !48, i32 33555712, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 1280]
!498 = metadata !{i32 786689, metadata !492, metadata !"type", metadata !48, i32 50332928, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 1280]
!499 = metadata !{i32 786689, metadata !492, metadata !"coeff", metadata !48, i32 67110144, metadata !234, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coeff] [line 1280]
!500 = metadata !{i32 786688, metadata !492, metadata !"i", metadata !48, i32 1282, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1282]
!501 = metadata !{i32 786688, metadata !492, metadata !"absLevel", metadata !48, i32 1283, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [absLevel] [line 1283]
!502 = metadata !{i32 786688, metadata !492, metadata !"ctx", metadata !48, i32 1284, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 1284]
!503 = metadata !{i32 786688, metadata !492, metadata !"sign", metadata !48, i32 1285, metadata !374, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 1285]
!504 = metadata !{i32 786688, metadata !492, metadata !"greater_one", metadata !48, i32 1286, metadata !374, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [greater_one] [line 1286]
!505 = metadata !{i32 786688, metadata !492, metadata !"c1", metadata !48, i32 1287, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 1287]
!506 = metadata !{i32 786688, metadata !492, metadata !"c2", metadata !48, i32 1288, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 1288]
!507 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"writeRunLevel_CABAC", metadata !"writeRunLevel_CABAC", metadata !"", i32 1327, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeRunLevel_CABAC, null, null, metadata !508, i32 1328} ; [ DW_TAG_subprogram ] [line 1327] [def] [scope 1328] [writeRunLevel_CABAC]
!508 = metadata !{metadata !509, metadata !510, metadata !511, metadata !512}
!509 = metadata !{i32 786689, metadata !507, metadata !"se", metadata !48, i32 16778543, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 1327]
!510 = metadata !{i32 786689, metadata !507, metadata !"eep_dp", metadata !48, i32 33555759, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 1327]
!511 = metadata !{i32 786688, metadata !507, metadata !"currMB", metadata !48, i32 1333, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 1333]
!512 = metadata !{i32 786688, metadata !507, metadata !"i", metadata !48, i32 1334, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1334]
!513 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"unary_bin_encode", metadata !"unary_bin_encode", metadata !"", i32 1376, metadata !514, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EncodingEnvironment*, i32, %struct.BiContextType*, i32)* @unary_bin_encode, null, null, metadata !516, i32 1380} ; [ DW_TAG_subprogram ] [line 1376] [def] [scope 1380] [unary_bin_encode]
!514 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!515 = metadata !{null, metadata !240, metadata !227, metadata !489, metadata !59}
!516 = metadata !{metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522}
!517 = metadata !{i32 786689, metadata !513, metadata !"eep_dp", metadata !48, i32 16778592, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 1376]
!518 = metadata !{i32 786689, metadata !513, metadata !"symbol", metadata !48, i32 33555809, metadata !227, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbol] [line 1377]
!519 = metadata !{i32 786689, metadata !513, metadata !"ctx", metadata !48, i32 50333026, metadata !489, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 1378]
!520 = metadata !{i32 786689, metadata !513, metadata !"ctx_offset", metadata !48, i32 67110243, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx_offset] [line 1379]
!521 = metadata !{i32 786688, metadata !513, metadata !"l", metadata !48, i32 1381, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1381]
!522 = metadata !{i32 786688, metadata !513, metadata !"ictx", metadata !48, i32 1382, metadata !489, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ictx] [line 1382]
!523 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"unary_bin_max_encode", metadata !"unary_bin_max_encode", metadata !"", i32 1410, metadata !524, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EncodingEnvironment*, i32, %struct.BiContextType*, i32, i32)* @unary_bin_max_encode, null, null, metadata !526, i32 1415} ; [ DW_TAG_subprogram ] [line 1410] [def] [scope 1415] [unary_bin_max_encode]
!524 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !525, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!525 = metadata !{null, metadata !240, metadata !227, metadata !489, metadata !59, metadata !227}
!526 = metadata !{metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533}
!527 = metadata !{i32 786689, metadata !523, metadata !"eep_dp", metadata !48, i32 16778626, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 1410]
!528 = metadata !{i32 786689, metadata !523, metadata !"symbol", metadata !48, i32 33555843, metadata !227, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbol] [line 1411]
!529 = metadata !{i32 786689, metadata !523, metadata !"ctx", metadata !48, i32 50333060, metadata !489, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 1412]
!530 = metadata !{i32 786689, metadata !523, metadata !"ctx_offset", metadata !48, i32 67110277, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx_offset] [line 1413]
!531 = metadata !{i32 786689, metadata !523, metadata !"max_symbol", metadata !48, i32 83887494, metadata !227, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max_symbol] [line 1414]
!532 = metadata !{i32 786688, metadata !523, metadata !"l", metadata !48, i32 1416, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1416]
!533 = metadata !{i32 786688, metadata !523, metadata !"ictx", metadata !48, i32 1417, metadata !489, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ictx] [line 1417]
!534 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"exp_golomb_encode_eq_prob", metadata !"exp_golomb_encode_eq_prob", metadata !"", i32 1445, metadata !535, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EncodingEnvironment*, i32, i32)* @exp_golomb_encode_eq_prob, null, null, metadata !537, i32 1448} ; [ DW_TAG_subprogram ] [line 1445] [def] [scope 1448] [exp_golomb_encode_eq_prob]
!535 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !536, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!536 = metadata !{null, metadata !240, metadata !227, metadata !59}
!537 = metadata !{metadata !538, metadata !539, metadata !540}
!538 = metadata !{i32 786689, metadata !534, metadata !"eep_dp", metadata !48, i32 16778661, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 1445]
!539 = metadata !{i32 786689, metadata !534, metadata !"symbol", metadata !48, i32 33555878, metadata !227, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbol] [line 1446]
!540 = metadata !{i32 786689, metadata !534, metadata !"k", metadata !48, i32 50333095, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 1447]
!541 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"unary_exp_golomb_level_encode", metadata !"unary_exp_golomb_level_encode", metadata !"", i32 1475, metadata !542, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EncodingEnvironment*, i32, %struct.BiContextType*)* @unary_exp_golomb_level_encode, null, null, metadata !544, i32 1478} ; [ DW_TAG_subprogram ] [line 1475] [def] [scope 1478] [unary_exp_golomb_level_encode]
!542 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !543, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!543 = metadata !{null, metadata !240, metadata !227, metadata !489}
!544 = metadata !{metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550}
!545 = metadata !{i32 786689, metadata !541, metadata !"eep_dp", metadata !48, i32 16778691, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 1475]
!546 = metadata !{i32 786689, metadata !541, metadata !"symbol", metadata !48, i32 33555908, metadata !227, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbol] [line 1476]
!547 = metadata !{i32 786689, metadata !541, metadata !"ctx", metadata !48, i32 50333125, metadata !489, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 1477]
!548 = metadata !{i32 786688, metadata !541, metadata !"l", metadata !48, i32 1479, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1479]
!549 = metadata !{i32 786688, metadata !541, metadata !"k", metadata !48, i32 1479, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1479]
!550 = metadata !{i32 786688, metadata !541, metadata !"exp_start", metadata !48, i32 1480, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [exp_start] [line 1480]
!551 = metadata !{i32 786478, metadata !1, metadata !48, metadata !"unary_exp_golomb_mv_encode", metadata !"unary_exp_golomb_mv_encode", metadata !"", i32 1508, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EncodingEnvironment*, i32, %struct.BiContextType*, i32)* @unary_exp_golomb_mv_encode, null, null, metadata !554, i32 1512} ; [ DW_TAG_subprogram ] [line 1508] [def] [scope 1512] [unary_exp_golomb_mv_encode]
!552 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!553 = metadata !{null, metadata !240, metadata !227, metadata !489, metadata !227}
!554 = metadata !{metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563}
!555 = metadata !{i32 786689, metadata !551, metadata !"eep_dp", metadata !48, i32 16778724, metadata !240, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eep_dp] [line 1508]
!556 = metadata !{i32 786689, metadata !551, metadata !"symbol", metadata !48, i32 33555941, metadata !227, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbol] [line 1509]
!557 = metadata !{i32 786689, metadata !551, metadata !"ctx", metadata !48, i32 50333158, metadata !489, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 1510]
!558 = metadata !{i32 786689, metadata !551, metadata !"max_bin", metadata !48, i32 67110375, metadata !227, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max_bin] [line 1511]
!559 = metadata !{i32 786688, metadata !551, metadata !"l", metadata !48, i32 1513, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1513]
!560 = metadata !{i32 786688, metadata !551, metadata !"k", metadata !48, i32 1513, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1513]
!561 = metadata !{i32 786688, metadata !551, metadata !"bin", metadata !48, i32 1514, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bin] [line 1514]
!562 = metadata !{i32 786688, metadata !551, metadata !"ictx", metadata !48, i32 1515, metadata !489, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ictx] [line 1515]
!563 = metadata !{i32 786688, metadata !551, metadata !"exp_start", metadata !48, i32 1516, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [exp_start] [line 1516]
!564 = metadata !{metadata !565, metadata !566, metadata !570, metadata !571, metadata !572, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !634, metadata !636, metadata !638, metadata !639, metadata !640, metadata !641, metadata !642, metadata !678, metadata !773, metadata !774, metadata !775, metadata !777, metadata !778, metadata !780, metadata !781, metadata !782, metadata !783, metadata !784, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !794, metadata !795, metadata !797, metadata !798, metadata !799, metadata !800, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !806, metadata !811, metadata !814, metadata !815, metadata !816, metadata !817, metadata !818, metadata !819, metadata !822, metadata !825, metadata !826, metadata !827, metadata !828, metadata !831, metadata !832, metadata !843, metadata !879, metadata !880, metadata !881, metadata !882, metadata !883, metadata !937, metadata !938, metadata !939, metadata !940, metadata !941, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !955, metadata !956, metadata !957, metadata !960, metadata !962, metadata !963, metadata !965, metadata !967, metadata !968, metadata !969, metadata !970, metadata !971, metadata !972, metadata !973, metadata !974, metadata !975, metadata !976, metadata !977, metadata !978, metadata !979, metadata !980, metadata !981, metadata !982}
!565 = metadata !{i32 786484, i32 0, null, metadata !"last_dquant", metadata !"last_dquant", metadata !"", metadata !48, i32 24, metadata !59, i32 0, i32 1, i32* @last_dquant, null} ; [ DW_TAG_variable ] [last_dquant] [line 24] [def]
!566 = metadata !{i32 786484, i32 0, metadata !507, metadata !"coeff", metadata !"coeff", metadata !"", metadata !48, i32 1329, metadata !567, i32 1, i32 1, [64 x i32]* @writeRunLevel_CABAC.coeff, null} ; [ DW_TAG_variable ] [coeff] [line 1329] [local] [def]
!567 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !59, metadata !568, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!568 = metadata !{metadata !569}
!569 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!570 = metadata !{i32 786484, i32 0, metadata !507, metadata !"coeff_ctr", metadata !"coeff_ctr", metadata !"", metadata !48, i32 1330, metadata !59, i32 1, i32 1, i32* @writeRunLevel_CABAC.coeff_ctr, null} ; [ DW_TAG_variable ] [coeff_ctr] [line 1330] [local] [def]
!571 = metadata !{i32 786484, i32 0, metadata !507, metadata !"pos", metadata !"pos", metadata !"", metadata !48, i32 1331, metadata !59, i32 1, i32 1, i32* @writeRunLevel_CABAC.pos, null} ; [ DW_TAG_variable ] [pos] [line 1331] [local] [def]
!572 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !573, i32 558, metadata !574, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!573 = metadata !{i32 786473, metadata !9}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!574 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !575} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!575 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !576} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!576 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !577, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!577 = metadata !{metadata !578, metadata !579, metadata !580, metadata !622, metadata !623, metadata !625, metadata !626}
!578 = metadata !{i32 786445, metadata !9, metadata !576, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!579 = metadata !{i32 786445, metadata !9, metadata !576, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!580 = metadata !{i32 786445, metadata !9, metadata !576, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !581} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!581 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !582, metadata !620, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!582 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !583} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!583 = metadata !{i32 786454, metadata !9, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !584} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!584 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !585, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!585 = metadata !{metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !617}
!586 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!587 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!588 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!589 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!590 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!591 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!592 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !267} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!593 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !136} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!594 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !176} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!595 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !596} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!596 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !597} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!597 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !598} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!598 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !599, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!599 = metadata !{metadata !600, metadata !601, metadata !602}
!600 = metadata !{i32 786445, metadata !9, metadata !598, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!601 = metadata !{i32 786445, metadata !9, metadata !598, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!602 = metadata !{i32 786445, metadata !9, metadata !598, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !603} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!603 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !598} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!604 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !59} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!605 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !234} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!606 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !234} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!607 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !234} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!608 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !59} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!609 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !234} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!610 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !234} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!611 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !234} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!612 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !613} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!613 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !614} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!614 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !615, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!615 = metadata !{metadata !616, metadata !59}
!616 = metadata !{i32 786454, metadata !9, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!617 = metadata !{i32 786445, metadata !9, metadata !584, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !618} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!618 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !59, metadata !619, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!619 = metadata !{metadata !151, metadata !75}
!620 = metadata !{metadata !621}
!621 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!622 = metadata !{i32 786445, metadata !9, metadata !576, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !59} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!623 = metadata !{i32 786445, metadata !9, metadata !576, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !624} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!624 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!625 = metadata !{i32 786445, metadata !9, metadata !576, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !624} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!626 = metadata !{i32 786445, metadata !9, metadata !576, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !624} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!627 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !573, i32 559, metadata !574, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!628 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !573, i32 560, metadata !574, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!629 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !573, i32 561, metadata !574, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!630 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !573, i32 562, metadata !574, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!631 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !573, i32 565, metadata !632, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!632 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !633} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!633 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!634 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !573, i32 566, metadata !635, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!635 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !632} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!636 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !573, i32 567, metadata !637, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!637 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !234} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!638 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !573, i32 569, metadata !227, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!639 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !573, i32 570, metadata !227, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!640 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !573, i32 572, metadata !59, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!641 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !573, i32 572, metadata !59, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!642 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !573, i32 573, metadata !643, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!643 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !644} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!644 = metadata !{i32 786454, metadata !9, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !645} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!645 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !646, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!646 = metadata !{metadata !647, metadata !648, metadata !649, metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !673, metadata !674, metadata !675, metadata !676, metadata !677}
!647 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !616} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!648 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !227} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!649 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !227} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!650 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !616} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!651 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !616} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!652 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !616} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!653 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !65} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!654 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !616} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!655 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !227} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!656 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !227} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!657 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !658} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!658 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !227, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!659 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !658} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!660 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !658} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!661 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !616} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!662 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !227} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!663 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !227} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!664 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !251} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!665 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !59} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!666 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !59} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!667 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !616} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!668 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !227} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!669 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!670 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !59} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!671 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !59} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!672 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !59} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!673 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !59} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!674 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !616} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!675 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !616} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!676 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !616} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!677 = metadata !{i32 786445, metadata !4, metadata !645, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !616} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!678 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !573, i32 574, metadata !679, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!679 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !680} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!680 = metadata !{i32 786454, metadata !9, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !681} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!681 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !682, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!682 = metadata !{metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !703, metadata !707, metadata !708, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713, metadata !714, metadata !715, metadata !716, metadata !717, metadata !718, metadata !719, metadata !720}
!683 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !616} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!684 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !227} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!685 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !616} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!686 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !616} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!687 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !616} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!688 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !616} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!689 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !227} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!690 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !227} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!691 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !227} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!692 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !616} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!693 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !65} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!694 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !227} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!695 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !227} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!696 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !227} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!697 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !227} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!698 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !227} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!699 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !616} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!700 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !59} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!701 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !59} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!702 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !227} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!703 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !704} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!704 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !59, metadata !705, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!705 = metadata !{metadata !706}
!706 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!707 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !227} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!708 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !616} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!709 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !227} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!710 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !227} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!711 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !616} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!712 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !616} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!713 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !616} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!714 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !616} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!715 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !227} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!716 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !227} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!717 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !227} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!718 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !227} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!719 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !616} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!720 = metadata !{i32 786445, metadata !4, metadata !681, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !721} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!721 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !722} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!722 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !723, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!723 = metadata !{metadata !724, metadata !725, metadata !726, metadata !727, metadata !728, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !762, metadata !763, metadata !764, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772}
!724 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !616} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!725 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !227} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!726 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !227} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!727 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !227} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!728 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !616} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!729 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !616} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!730 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !616} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!731 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !227} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!732 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !616} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!733 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !616} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!734 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !227} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!735 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !227} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!736 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !227} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!737 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !616} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!738 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !227} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!739 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !227} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!740 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !616} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!741 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !227} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!742 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !227} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!743 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !616} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!744 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !616} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!745 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !746} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!746 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !747} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!747 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !748, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!748 = metadata !{metadata !749, metadata !750, metadata !751, metadata !752, metadata !756, metadata !757, metadata !758, metadata !759, metadata !760, metadata !761}
!749 = metadata !{i32 786445, metadata !4, metadata !747, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !227} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!750 = metadata !{i32 786445, metadata !4, metadata !747, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !227} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!751 = metadata !{i32 786445, metadata !4, metadata !747, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !227} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!752 = metadata !{i32 786445, metadata !4, metadata !747, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !753} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!753 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !227, metadata !754, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!754 = metadata !{metadata !755}
!755 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!756 = metadata !{i32 786445, metadata !4, metadata !747, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !753} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!757 = metadata !{i32 786445, metadata !4, metadata !747, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !753} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!758 = metadata !{i32 786445, metadata !4, metadata !747, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !227} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!759 = metadata !{i32 786445, metadata !4, metadata !747, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !227} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!760 = metadata !{i32 786445, metadata !4, metadata !747, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !227} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!761 = metadata !{i32 786445, metadata !4, metadata !747, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !227} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!762 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !616} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!763 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !746} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!764 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !616} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!765 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !616} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!766 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !616} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!767 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !227} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!768 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !227} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!769 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !227} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!770 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !227} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!771 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !227} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!772 = metadata !{i32 786445, metadata !4, metadata !722, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !227} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!773 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !573, i32 578, metadata !59, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!774 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !573, i32 579, metadata !59, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!775 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !573, i32 583, metadata !776, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!776 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !637} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!777 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !573, i32 584, metadata !776, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!778 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !573, i32 585, metadata !779, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!779 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !776} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!780 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !573, i32 586, metadata !59, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!781 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !573, i32 587, metadata !59, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!782 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !573, i32 588, metadata !59, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!783 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !573, i32 589, metadata !59, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!784 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !573, i32 592, metadata !632, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!785 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !573, i32 593, metadata !632, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!786 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !573, i32 595, metadata !635, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!787 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !573, i32 596, metadata !635, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!788 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !573, i32 598, metadata !632, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!789 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !573, i32 599, metadata !635, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!790 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !573, i32 601, metadata !632, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!791 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !573, i32 602, metadata !635, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!792 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !573, i32 604, metadata !793, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!793 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !372} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!794 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !573, i32 605, metadata !372, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!795 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !573, i32 608, metadata !796, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!796 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !251} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!797 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !573, i32 609, metadata !796, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!798 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !573, i32 610, metadata !59, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!799 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !573, i32 612, metadata !59, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!800 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !573, i32 612, metadata !59, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!801 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !573, i32 612, metadata !59, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!802 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !573, i32 613, metadata !59, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!803 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !573, i32 613, metadata !59, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!804 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !573, i32 613, metadata !59, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!805 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !573, i32 614, metadata !59, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!806 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !573, i32 617, metadata !807, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!807 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !808, metadata !809, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!808 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!809 = metadata !{metadata !810}
!810 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!811 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !573, i32 620, metadata !812, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!812 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !59, metadata !813, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!813 = metadata !{metadata !80, metadata !80}
!814 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !573, i32 620, metadata !812, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!815 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !573, i32 620, metadata !812, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!816 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !573, i32 621, metadata !812, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!817 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !573, i32 621, metadata !812, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!818 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !573, i32 621, metadata !812, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!819 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !573, i32 622, metadata !820, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!820 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !59, metadata !821, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!821 = metadata !{metadata !151, metadata !80, metadata !80}
!822 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !573, i32 623, metadata !823, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!823 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !59, metadata !824, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!824 = metadata !{metadata !75, metadata !76, metadata !76}
!825 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !573, i32 623, metadata !823, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!826 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !573, i32 624, metadata !823, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!827 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !573, i32 624, metadata !823, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!828 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !573, i32 625, metadata !829, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!829 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !59, metadata !830, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!830 = metadata !{metadata !76, metadata !76}
!831 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !573, i32 625, metadata !78, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!832 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !573, i32 1201, metadata !833, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!833 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !834} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!834 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !835} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!835 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !836, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!836 = metadata !{metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842}
!837 = metadata !{i32 786445, metadata !9, metadata !835, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!838 = metadata !{i32 786445, metadata !9, metadata !835, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!839 = metadata !{i32 786445, metadata !9, metadata !835, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!840 = metadata !{i32 786445, metadata !9, metadata !835, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!841 = metadata !{i32 786445, metadata !9, metadata !835, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!842 = metadata !{i32 786445, metadata !9, metadata !835, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !59} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!843 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !573, i32 1202, metadata !844, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!844 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !845} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!845 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !846} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!846 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !847, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!847 = metadata !{metadata !848, metadata !849, metadata !850, metadata !851, metadata !852, metadata !853, metadata !854, metadata !855, metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !861, metadata !862, metadata !863, metadata !867, metadata !868, metadata !869, metadata !870, metadata !872, metadata !873, metadata !874, metadata !875, metadata !876, metadata !877, metadata !878}
!848 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!849 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !812} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!850 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !812} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!851 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !812} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!852 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !779} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!853 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !776} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!854 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !59} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!855 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !59} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!856 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !88} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!857 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !88} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!858 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !637} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!859 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !78} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!860 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !59} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!861 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !84} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!862 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !59} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!863 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !864} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!864 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !865} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!865 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !866} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!866 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !793} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!867 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !864} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!868 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !864} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!869 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !864} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!870 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !871} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!871 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !374, metadata !824, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!872 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !59} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!873 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !59} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!874 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !59} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!875 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !59} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!876 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !59} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!877 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !59} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!878 = metadata !{i32 786445, metadata !9, metadata !846, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !59} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!879 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !573, i32 1203, metadata !845, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!880 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !573, i32 1203, metadata !845, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!881 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !573, i32 1204, metadata !845, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!882 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !573, i32 1204, metadata !845, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!883 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !573, i32 1230, metadata !884, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!884 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !885} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!885 = metadata !{i32 786454, metadata !9, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !886} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!886 = metadata !{i32 786451, metadata !887, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !888, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!887 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!888 = metadata !{metadata !889, metadata !890, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898, metadata !899, metadata !900, metadata !901, metadata !902, metadata !910, metadata !911, metadata !912, metadata !913, metadata !915, metadata !916, metadata !918, metadata !922, metadata !924, metadata !926, metadata !927, metadata !928, metadata !929, metadata !930, metadata !932, metadata !933}
!889 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!890 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !891} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!891 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !808} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!892 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !891} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!893 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !891} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!894 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !891} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!895 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !891} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!896 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !891} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!897 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !891} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!898 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !891} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!899 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !891} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!900 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !891} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!901 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !891} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!902 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !903} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!903 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !904} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!904 = metadata !{i32 786451, metadata !887, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !905, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!905 = metadata !{metadata !906, metadata !907, metadata !909}
!906 = metadata !{i32 786445, metadata !887, metadata !904, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !903} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!907 = metadata !{i32 786445, metadata !887, metadata !904, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !908} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!908 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !886} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!909 = metadata !{i32 786445, metadata !887, metadata !904, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!910 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !908} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!911 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !59} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!912 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !59} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!913 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !914} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!914 = metadata !{i32 786454, metadata !887, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!915 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !146} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!916 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !917} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!917 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!918 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !919} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!919 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !808, metadata !920, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!920 = metadata !{metadata !921}
!921 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!922 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !923} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!923 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!924 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !925} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!925 = metadata !{i32 786454, metadata !887, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!926 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !923} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!927 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !923} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!928 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !923} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!929 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !923} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!930 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !931} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!931 = metadata !{i32 786454, metadata !887, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!932 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !59} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!933 = metadata !{i32 786445, metadata !887, metadata !886, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !934} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!934 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !808, metadata !935, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!935 = metadata !{metadata !936}
!936 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!937 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !573, i32 1231, metadata !884, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!938 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !573, i32 1232, metadata !884, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!939 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !573, i32 1233, metadata !59, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!940 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !573, i32 1234, metadata !59, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!941 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !573, i32 1237, metadata !942, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!942 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !59, metadata !935, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!943 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !573, i32 1238, metadata !942, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!944 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !573, i32 1239, metadata !942, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!945 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !573, i32 1240, metadata !942, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!946 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !573, i32 1241, metadata !942, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!947 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !573, i32 1242, metadata !942, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!948 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !573, i32 1456, metadata !59, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!949 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !573, i32 1465, metadata !59, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!950 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !573, i32 1466, metadata !59, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!951 = metadata !{i32 786484, i32 0, null, metadata !"type2ctx_abs", metadata !"type2ctx_abs", metadata !"", metadata !48, i32 1065, metadata !952, i32 1, i32 1, [10 x i32]* @type2ctx_abs, null} ; [ DW_TAG_variable ] [type2ctx_abs] [line 1065] [local] [def]
!952 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 32, i32 0, i32 0, metadata !953, metadata !954, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 32, offset 0] [from ]
!953 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!954 = metadata !{metadata !160}
!955 = metadata !{i32 786484, i32 0, null, metadata !"max_c2", metadata !"max_c2", metadata !"", metadata !48, i32 1066, metadata !952, i32 1, i32 1, [10 x i32]* @max_c2, null} ; [ DW_TAG_variable ] [max_c2] [line 1066] [local] [def]
!956 = metadata !{i32 786484, i32 0, null, metadata !"type2ctx_one", metadata !"type2ctx_one", metadata !"", metadata !48, i32 1064, metadata !952, i32 1, i32 1, [10 x i32]* @type2ctx_abs, null} ; [ DW_TAG_variable ] [type2ctx_one] [line 1064] [local] [def]
!957 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_last", metadata !"pos2ctx_last", metadata !"", metadata !48, i32 1222, metadata !958, i32 1, i32 1, [10 x i32*]* @pos2ctx_last, null} ; [ DW_TAG_variable ] [pos2ctx_last] [line 1222] [local] [def]
!958 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 64, i32 0, i32 0, metadata !959, metadata !954, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 64, offset 0] [from ]
!959 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !953} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!960 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_last4x4c", metadata !"pos2ctx_last4x4c", metadata !"", metadata !48, i32 1221, metadata !961, i32 1, i32 1, [16 x i32]* @pos2ctx_last4x4c, null} ; [ DW_TAG_variable ] [pos2ctx_last4x4c] [line 1221] [local] [def]
!961 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !953, metadata !79, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from ]
!962 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_last2x4c", metadata !"pos2ctx_last2x4c", metadata !"", metadata !48, i32 1220, metadata !961, i32 1, i32 1, [16 x i32]* @pos2ctx_last2x4c, null} ; [ DW_TAG_variable ] [pos2ctx_last2x4c] [line 1220] [local] [def]
!963 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_last8x4", metadata !"pos2ctx_last8x4", metadata !"", metadata !48, i32 1217, metadata !964, i32 1, i32 1, [32 x i32]* @pos2ctx_last8x4, null} ; [ DW_TAG_variable ] [pos2ctx_last8x4] [line 1217] [local] [def]
!964 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !953, metadata !754, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from ]
!965 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_last8x8", metadata !"pos2ctx_last8x8", metadata !"", metadata !48, i32 1213, metadata !966, i32 1, i32 1, [64 x i32]* @pos2ctx_last8x8, null} ; [ DW_TAG_variable ] [pos2ctx_last8x8] [line 1213] [local] [def]
!966 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !953, metadata !568, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from ]
!967 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_last4x4", metadata !"pos2ctx_last4x4", metadata !"", metadata !48, i32 1219, metadata !961, i32 1, i32 1, [16 x i32]* @pos2ctx_last4x4, null} ; [ DW_TAG_variable ] [pos2ctx_last4x4] [line 1219] [local] [def]
!968 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_map", metadata !"pos2ctx_map", metadata !"", metadata !48, i32 1192, metadata !958, i32 1, i32 1, [10 x i32*]* @pos2ctx_map, null} ; [ DW_TAG_variable ] [pos2ctx_map] [line 1192] [local] [def]
!969 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_map4x4c", metadata !"pos2ctx_map4x4c", metadata !"", metadata !48, i32 1191, metadata !961, i32 1, i32 1, [16 x i32]* @pos2ctx_map4x4c, null} ; [ DW_TAG_variable ] [pos2ctx_map4x4c] [line 1191] [local] [def]
!970 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_map2x4c", metadata !"pos2ctx_map2x4c", metadata !"", metadata !48, i32 1190, metadata !961, i32 1, i32 1, [16 x i32]* @pos2ctx_map2x4c, null} ; [ DW_TAG_variable ] [pos2ctx_map2x4c] [line 1190] [local] [def]
!971 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_map8x4", metadata !"pos2ctx_map8x4", metadata !"", metadata !48, i32 1187, metadata !964, i32 1, i32 1, [32 x i32]* @pos2ctx_map8x4, null} ; [ DW_TAG_variable ] [pos2ctx_map8x4] [line 1187] [local] [def]
!972 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_map8x8", metadata !"pos2ctx_map8x8", metadata !"", metadata !48, i32 1183, metadata !966, i32 1, i32 1, [64 x i32]* @pos2ctx_map8x8, null} ; [ DW_TAG_variable ] [pos2ctx_map8x8] [line 1183] [local] [def]
!973 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_map4x4", metadata !"pos2ctx_map4x4", metadata !"", metadata !48, i32 1189, metadata !961, i32 1, i32 1, [16 x i32]* @pos2ctx_map4x4, null} ; [ DW_TAG_variable ] [pos2ctx_map4x4] [line 1189] [local] [def]
!974 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_map_int", metadata !"pos2ctx_map_int", metadata !"", metadata !48, i32 1207, metadata !958, i32 1, i32 1, [10 x i32*]* @pos2ctx_map_int, null} ; [ DW_TAG_variable ] [pos2ctx_map_int] [line 1207] [local] [def]
!975 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_map4x8i", metadata !"pos2ctx_map4x8i", metadata !"", metadata !48, i32 1205, metadata !964, i32 1, i32 1, [32 x i32]* @pos2ctx_map4x8i, null} ; [ DW_TAG_variable ] [pos2ctx_map4x8i] [line 1205] [local] [def]
!976 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_map8x4i", metadata !"pos2ctx_map8x4i", metadata !"", metadata !48, i32 1203, metadata !964, i32 1, i32 1, [32 x i32]* @pos2ctx_map8x4i, null} ; [ DW_TAG_variable ] [pos2ctx_map8x4i] [line 1203] [local] [def]
!977 = metadata !{i32 786484, i32 0, null, metadata !"pos2ctx_map8x8i", metadata !"pos2ctx_map8x8i", metadata !"", metadata !48, i32 1198, metadata !966, i32 1, i32 1, [64 x i32]* @pos2ctx_map8x8i, null} ; [ DW_TAG_variable ] [pos2ctx_map8x8i] [line 1198] [local] [def]
!978 = metadata !{i32 786484, i32 0, null, metadata !"c1isdc", metadata !"c1isdc", metadata !"", metadata !48, i32 1059, metadata !952, i32 1, i32 1, null, null}
!979 = metadata !{i32 786484, i32 0, null, metadata !"type2ctx_last", metadata !"type2ctx_last", metadata !"", metadata !48, i32 1063, metadata !952, i32 1, i32 1, [10 x i32]* @type2ctx_last, null} ; [ DW_TAG_variable ] [type2ctx_last] [line 1063] [local] [def]
!980 = metadata !{i32 786484, i32 0, null, metadata !"type2ctx_map", metadata !"type2ctx_map", metadata !"", metadata !48, i32 1062, metadata !952, i32 1, i32 1, [10 x i32]* @type2ctx_last, null} ; [ DW_TAG_variable ] [type2ctx_map] [line 1062] [local] [def]
!981 = metadata !{i32 786484, i32 0, null, metadata !"maxpos", metadata !"maxpos", metadata !"", metadata !48, i32 1058, metadata !952, i32 1, i32 1, [10 x i32]* @maxpos, null} ; [ DW_TAG_variable ] [maxpos] [line 1058] [local] [def]
!982 = metadata !{i32 786484, i32 0, null, metadata !"type2ctx_bcbp", metadata !"type2ctx_bcbp", metadata !"", metadata !48, i32 1061, metadata !952, i32 1, i32 1, [10 x i32]* @type2ctx_bcbp, null} ; [ DW_TAG_variable ] [type2ctx_bcbp] [line 1061] [local] [def]
!983 = metadata !{i32 55, i32 0, metadata !47, null}
!984 = metadata !{metadata !"int", metadata !985}
!985 = metadata !{metadata !"omnipotent char", metadata !986}
!986 = metadata !{metadata !"Simple C/C++ TBAA"}
!987 = metadata !{i32 56, i32 0, metadata !47, null}
!988 = metadata !{i32 68, i32 0, metadata !51, null}
!989 = metadata !{metadata !"any pointer", metadata !985}
!990 = metadata !{i32 69, i32 0, metadata !51, null}
!991 = metadata !{i32 71, i32 0, metadata !51, null}
!992 = metadata !{i32 72, i32 0, metadata !51, null}
!993 = metadata !{i32 74, i32 0, metadata !51, null}
!994 = metadata !{i32 75, i32 0, metadata !51, null}
!995 = metadata !{i32 77, i32 0, metadata !51, null}
!996 = metadata !{i32 79, i32 0, metadata !51, null}
!997 = metadata !{i32 80, i32 0, metadata !51, null}
!998 = metadata !{i32 82, i32 0, metadata !51, null}
!999 = metadata !{i32 83, i32 0, metadata !51, null}
!1000 = metadata !{i32 96, i32 0, metadata !133, null}
!1001 = metadata !{i32 97, i32 0, metadata !133, null}
!1002 = metadata !{i32 98, i32 0, metadata !133, null}
!1003 = metadata !{i32 100, i32 0, metadata !133, null}
!1004 = metadata !{i32 115, i32 0, metadata !173, null}
!1005 = metadata !{i32 116, i32 0, metadata !173, null}
!1006 = metadata !{i32 117, i32 0, metadata !173, null}
!1007 = metadata !{i32 119, i32 0, metadata !173, null}
!1008 = metadata !{i32 132, i32 0, metadata !204, null}
!1009 = metadata !{i32 134, i32 0, metadata !204, null}
!1010 = metadata !{i32 137, i32 0, metadata !204, null}
!1011 = metadata !{i32 139, i32 0, metadata !204, null}
!1012 = metadata !{i32 149, i32 0, metadata !209, null}
!1013 = metadata !{i32 151, i32 0, metadata !209, null}
!1014 = metadata !{i32 154, i32 0, metadata !209, null}
!1015 = metadata !{i32 156, i32 0, metadata !209, null}
!1016 = metadata !{i32 166, i32 0, metadata !214, null}
!1017 = metadata !{i32 169, i32 0, metadata !214, null}
!1018 = metadata !{i32 171, i32 0, metadata !214, null}
!1019 = metadata !{i32 174, i32 0, metadata !214, null}
!1020 = metadata !{i32 176, i32 0, metadata !214, null}
!1021 = metadata !{i32 177, i32 0, metadata !214, null}
!1022 = metadata !{i32 179, i32 0, metadata !214, null}
!1023 = metadata !{i32 189, i32 0, metadata !298, null}
!1024 = metadata !{i32 192, i32 0, metadata !298, null}
!1025 = metadata !{i32 193, i32 0, metadata !298, null}
!1026 = metadata !{i32 194, i32 0, metadata !298, null}
!1027 = metadata !{i32 196, i32 0, metadata !298, null}
!1028 = metadata !{i32 197, i32 0, metadata !298, null}
!1029 = metadata !{i32 200, i32 0, metadata !298, null}
!1030 = metadata !{i32 201, i32 0, metadata !298, null}
!1031 = metadata !{i32 205, i32 0, metadata !298, null}
!1032 = metadata !{i32 207, i32 0, metadata !298, null}
!1033 = metadata !{i32 208, i32 0, metadata !298, null}
!1034 = metadata !{i32 210, i32 0, metadata !298, null}
!1035 = metadata !{i32 212, i32 0, metadata !298, null}
!1036 = metadata !{i32 214, i32 0, metadata !298, null}
!1037 = metadata !{i32 223, i32 0, metadata !310, null}
!1038 = metadata !{i32 226, i32 0, metadata !310, null}
!1039 = metadata !{i32 227, i32 0, metadata !310, null}
!1040 = metadata !{i32 228, i32 0, metadata !310, null}
!1041 = metadata !{i32 229, i32 0, metadata !310, null}
!1042 = metadata !{i32 233, i32 0, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !1, metadata !310, i32 232, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1044 = metadata !{i32 231, i32 0, metadata !310, null}
!1045 = metadata !{i32 236, i32 0, metadata !1043, null}
!1046 = metadata !{i32 237, i32 0, metadata !1043, null}
!1047 = metadata !{i32 240, i32 0, metadata !1043, null}
!1048 = metadata !{i32 242, i32 0, metadata !1043, null}
!1049 = metadata !{i32 244, i32 0, metadata !1043, null}
!1050 = metadata !{i32 245, i32 0, metadata !1043, null}
!1051 = metadata !{i32 247, i32 0, metadata !1043, null}
!1052 = metadata !{i32 249, i32 0, metadata !1043, null}
!1053 = metadata !{i32 250, i32 0, metadata !1043, null}
!1054 = metadata !{i32 253, i32 0, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !1, metadata !310, i32 252, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1056 = metadata !{i32 256, i32 0, metadata !1055, null}
!1057 = metadata !{i32 257, i32 0, metadata !1055, null}
!1058 = metadata !{i32 260, i32 0, metadata !1055, null}
!1059 = metadata !{i32 262, i32 0, metadata !1055, null}
!1060 = metadata !{i32 264, i32 0, metadata !1055, null}
!1061 = metadata !{i32 265, i32 0, metadata !1055, null}
!1062 = metadata !{i32 267, i32 0, metadata !1055, null}
!1063 = metadata !{i32 269, i32 0, metadata !1055, null}
!1064 = metadata !{i32 271, i32 0, metadata !310, null}
!1065 = metadata !{i32 273, i32 0, metadata !310, null}
!1066 = metadata !{i32 284, i32 0, metadata !321, null}
!1067 = metadata !{i32 287, i32 0, metadata !321, null}
!1068 = metadata !{i32 290, i32 0, metadata !321, null}
!1069 = metadata !{i32 291, i32 0, metadata !321, null}
!1070 = metadata !{i32 294, i32 0, metadata !321, null}
!1071 = metadata !{i32 297, i32 0, metadata !321, null}
!1072 = metadata !{i32 299, i32 0, metadata !321, null}
!1073 = metadata !{i32 302, i32 0, metadata !321, null}
!1074 = metadata !{i32 304, i32 0, metadata !321, null}
!1075 = metadata !{i32 305, i32 0, metadata !321, null}
!1076 = metadata !{i32 306, i32 0, metadata !321, null}
!1077 = metadata !{i32 307, i32 0, metadata !321, null}
!1078 = metadata !{i32 308, i32 0, metadata !321, null}
!1079 = metadata !{i32 310, i32 0, metadata !321, null}
!1080 = metadata !{i32 312, i32 0, metadata !321, null}
!1081 = metadata !{i32 322, i32 0, metadata !331, null}
!1082 = metadata !{i32 325, i32 0, metadata !331, null}
!1083 = metadata !{i32 328, i32 0, metadata !331, null}
!1084 = metadata !{i32 329, i32 0, metadata !331, null}
!1085 = metadata !{i32 333, i32 0, metadata !331, null}
!1086 = metadata !{i32 334, i32 0, metadata !331, null}
!1087 = metadata !{i32 335, i32 0, metadata !331, null}
!1088 = metadata !{i32 337, i32 0, metadata !331, null}
!1089 = metadata !{i32 339, i32 0, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !1, metadata !331, i32 338, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1091 = metadata !{i32 342, i32 0, metadata !1090, null}
!1092 = metadata !{i32 324, i32 0, metadata !331, null}
!1093 = metadata !{i32 344, i32 0, metadata !1090, null}
!1094 = metadata !{i32 347, i32 0, metadata !1090, null}
!1095 = metadata !{i32 349, i32 0, metadata !1090, null}
!1096 = metadata !{i32 350, i32 0, metadata !1090, null}
!1097 = metadata !{i32 351, i32 0, metadata !1090, null}
!1098 = metadata !{i32 353, i32 0, metadata !1090, null}
!1099 = metadata !{i32 355, i32 0, metadata !1100, null}
!1100 = metadata !{i32 786443, metadata !1, metadata !1090, i32 354, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1101 = metadata !{i32 356, i32 0, metadata !1100, null}
!1102 = metadata !{i32 357, i32 0, metadata !1090, null}
!1103 = metadata !{i32 359, i32 0, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !1, metadata !1090, i32 358, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1105 = metadata !{i32 361, i32 0, metadata !1104, null}
!1106 = metadata !{i32 362, i32 0, metadata !1104, null}
!1107 = metadata !{i32 367, i32 0, metadata !1108, null}
!1108 = metadata !{i32 786443, metadata !1, metadata !1090, i32 364, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1109 = metadata !{i32 369, i32 0, metadata !1108, null}
!1110 = metadata !{i32 4}
!1111 = metadata !{i32 370, i32 0, metadata !1108, null}
!1112 = metadata !{i32 371, i32 0, metadata !1108, null}
!1113 = metadata !{i32 372, i32 0, metadata !1108, null}
!1114 = metadata !{i32 373, i32 0, metadata !1108, null}
!1115 = metadata !{i32 5}
!1116 = metadata !{i32 375, i32 0, metadata !1108, null}
!1117 = metadata !{i32 376, i32 0, metadata !1108, null}
!1118 = metadata !{i32 378, i32 0, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !1, metadata !1108, i32 377, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1120 = metadata !{i32 379, i32 0, metadata !1119, null}
!1121 = metadata !{i32 382, i32 0, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !1, metadata !1108, i32 381, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1123 = metadata !{i32 6}
!1124 = metadata !{i32 383, i32 0, metadata !1122, null}
!1125 = metadata !{i32 384, i32 0, metadata !1122, null}
!1126 = metadata !{i32 386, i32 0, metadata !1127, null}
!1127 = metadata !{i32 786443, metadata !1, metadata !1122, i32 385, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1128 = metadata !{i32 387, i32 0, metadata !1127, null}
!1129 = metadata !{i32 390, i32 0, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !1, metadata !1122, i32 389, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1131 = metadata !{i32 393, i32 0, metadata !1108, null}
!1132 = metadata !{i32 394, i32 0, metadata !1108, null}
!1133 = metadata !{i32 7}
!1134 = metadata !{i32 395, i32 0, metadata !1108, null}
!1135 = metadata !{i32 396, i32 0, metadata !1108, null}
!1136 = metadata !{i32 8}
!1137 = metadata !{i32 397, i32 0, metadata !1108, null}
!1138 = metadata !{i32 398, i32 0, metadata !1108, null}
!1139 = metadata !{i32 399, i32 0, metadata !1108, null}
!1140 = metadata !{i32 407, i32 0, metadata !1141, null}
!1141 = metadata !{i32 786443, metadata !1, metadata !1142, i32 406, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1142 = metadata !{i32 786443, metadata !1, metadata !331, i32 403, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1143 = metadata !{i32 410, i32 0, metadata !1141, null}
!1144 = metadata !{i32 411, i32 0, metadata !1141, null}
!1145 = metadata !{i32 414, i32 0, metadata !1141, null}
!1146 = metadata !{i32 418, i32 0, metadata !1142, null}
!1147 = metadata !{i32 24}
!1148 = metadata !{i32 420, i32 0, metadata !1142, null}
!1149 = metadata !{i32 422, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1, metadata !1142, i32 421, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1151 = metadata !{i32 423, i32 0, metadata !1150, null}
!1152 = metadata !{i32 430, i32 0, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !1, metadata !1142, i32 429, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1154 = metadata !{i32 435, i32 0, metadata !1155, null}
!1155 = metadata !{i32 786443, metadata !1, metadata !1153, i32 431, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1156 = metadata !{i32 436, i32 0, metadata !1155, null}
!1157 = metadata !{i32 437, i32 0, metadata !1155, null}
!1158 = metadata !{i32 438, i32 0, metadata !1155, null}
!1159 = metadata !{i32 440, i32 0, metadata !1155, null}
!1160 = metadata !{i32 441, i32 0, metadata !1155, null}
!1161 = metadata !{i32 442, i32 0, metadata !1155, null}
!1162 = metadata !{i32 443, i32 0, metadata !1155, null}
!1163 = metadata !{i32 445, i32 0, metadata !1155, null}
!1164 = metadata !{i32 446, i32 0, metadata !1155, null}
!1165 = metadata !{i32 447, i32 0, metadata !1155, null}
!1166 = metadata !{i32 448, i32 0, metadata !1155, null}
!1167 = metadata !{i32 451, i32 0, metadata !1155, null}
!1168 = metadata !{i32 452, i32 0, metadata !1155, null}
!1169 = metadata !{i32 453, i32 0, metadata !1155, null}
!1170 = metadata !{i32 454, i32 0, metadata !1155, null}
!1171 = metadata !{i32 456, i32 0, metadata !1155, null}
!1172 = metadata !{i32 457, i32 0, metadata !1155, null}
!1173 = metadata !{i32 458, i32 0, metadata !1155, null}
!1174 = metadata !{i32 460, i32 0, metadata !1155, null}
!1175 = metadata !{i32 461, i32 0, metadata !1155, null}
!1176 = metadata !{i32 529, i32 0, metadata !1142, null}
!1177 = metadata !{i32 464, i32 0, metadata !1155, null}
!1178 = metadata !{i32 465, i32 0, metadata !1155, null}
!1179 = metadata !{i32 415, i32 0, metadata !1141, null}
!1180 = metadata !{i32 416, i32 0, metadata !1141, null}
!1181 = metadata !{i32 417, i32 0, metadata !1141, null}
!1182 = metadata !{i32 470, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !1142, i32 469, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1184 = metadata !{i32 472, i32 0, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !1, metadata !1183, i32 471, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1186 = metadata !{i32 473, i32 0, metadata !1185, null}
!1187 = metadata !{i32 474, i32 0, metadata !1183, null}
!1188 = metadata !{i32 476, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !1, metadata !1183, i32 475, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1190 = metadata !{i32 477, i32 0, metadata !1189, null}
!1191 = metadata !{i32 479, i32 0, metadata !1189, null}
!1192 = metadata !{i32 480, i32 0, metadata !1189, null}
!1193 = metadata !{i32 482, i32 0, metadata !1183, null}
!1194 = metadata !{i32 484, i32 0, metadata !1195, null}
!1195 = metadata !{i32 786443, metadata !1, metadata !1183, i32 483, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1196 = metadata !{i32 485, i32 0, metadata !1195, null}
!1197 = metadata !{i32 486, i32 0, metadata !1195, null}
!1198 = metadata !{i32 487, i32 0, metadata !1195, null}
!1199 = metadata !{i32 488, i32 0, metadata !1195, null}
!1200 = metadata !{i32 489, i32 0, metadata !1195, null}
!1201 = metadata !{i32 490, i32 0, metadata !1195, null}
!1202 = metadata !{i32 491, i32 0, metadata !1195, null}
!1203 = metadata !{i32 492, i32 0, metadata !1195, null}
!1204 = metadata !{i32 493, i32 0, metadata !1195, null}
!1205 = metadata !{i32 494, i32 0, metadata !1195, null}
!1206 = metadata !{i32 495, i32 0, metadata !1195, null}
!1207 = metadata !{i32 497, i32 0, metadata !1183, null}
!1208 = metadata !{i32 499, i32 0, metadata !1209, null}
!1209 = metadata !{i32 786443, metadata !1, metadata !1183, i32 498, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1210 = metadata !{i32 500, i32 0, metadata !1209, null}
!1211 = metadata !{i32 501, i32 0, metadata !1209, null}
!1212 = metadata !{i32 502, i32 0, metadata !1209, null}
!1213 = metadata !{i32 503, i32 0, metadata !1209, null}
!1214 = metadata !{i32 504, i32 0, metadata !1209, null}
!1215 = metadata !{i32 505, i32 0, metadata !1209, null}
!1216 = metadata !{i32 509, i32 0, metadata !1217, null}
!1217 = metadata !{i32 786443, metadata !1, metadata !1183, i32 508, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1218 = metadata !{i32 510, i32 0, metadata !1217, null}
!1219 = metadata !{i32 511, i32 0, metadata !1217, null}
!1220 = metadata !{i32 512, i32 0, metadata !1217, null}
!1221 = metadata !{i32 513, i32 0, metadata !1217, null}
!1222 = metadata !{i32 514, i32 0, metadata !1217, null}
!1223 = metadata !{i32 515, i32 0, metadata !1217, null}
!1224 = metadata !{i32 516, i32 0, metadata !1217, null}
!1225 = metadata !{i32 517, i32 0, metadata !1217, null}
!1226 = metadata !{i32 518, i32 0, metadata !1217, null}
!1227 = metadata !{i32 519, i32 0, metadata !1217, null}
!1228 = metadata !{i32 520, i32 0, metadata !1217, null}
!1229 = metadata !{i32 521, i32 0, metadata !1217, null}
!1230 = metadata !{i32 522, i32 0, metadata !1217, null}
!1231 = metadata !{i32 523, i32 0, metadata !1217, null}
!1232 = metadata !{i32 524, i32 0, metadata !1217, null}
!1233 = metadata !{i32 525, i32 0, metadata !1217, null}
!1234 = metadata !{i32 531, i32 0, metadata !1235, null}
!1235 = metadata !{i32 786443, metadata !1, metadata !1142, i32 530, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1236 = metadata !{i32 533, i32 0, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !1, metadata !1235, i32 532, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1238 = metadata !{i32 534, i32 0, metadata !1237, null}
!1239 = metadata !{i32 536, i32 0, metadata !1235, null}
!1240 = metadata !{i32 538, i32 0, metadata !1235, null}
!1241 = metadata !{i32 539, i32 0, metadata !1235, null}
!1242 = metadata !{i32 540, i32 0, metadata !1235, null}
!1243 = metadata !{i32 541, i32 0, metadata !1235, null}
!1244 = metadata !{i32 9}
!1245 = metadata !{i32 544, i32 0, metadata !1235, null}
!1246 = metadata !{i32 545, i32 0, metadata !1235, null}
!1247 = metadata !{i32 547, i32 0, metadata !1248, null}
!1248 = metadata !{i32 786443, metadata !1, metadata !1235, i32 546, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1249 = metadata !{i32 548, i32 0, metadata !1248, null}
!1250 = metadata !{i32 551, i32 0, metadata !1251, null}
!1251 = metadata !{i32 786443, metadata !1, metadata !1235, i32 550, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1252 = metadata !{i32 552, i32 0, metadata !1251, null}
!1253 = metadata !{i32 554, i32 0, metadata !1254, null}
!1254 = metadata !{i32 786443, metadata !1, metadata !1251, i32 553, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1255 = metadata !{i32 555, i32 0, metadata !1254, null}
!1256 = metadata !{i32 558, i32 0, metadata !1257, null}
!1257 = metadata !{i32 786443, metadata !1, metadata !1251, i32 557, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1258 = metadata !{i32 562, i32 0, metadata !1235, null}
!1259 = metadata !{i32 10}
!1260 = metadata !{i32 563, i32 0, metadata !1235, null}
!1261 = metadata !{i32 564, i32 0, metadata !1235, null}
!1262 = metadata !{i32 565, i32 0, metadata !1235, null}
!1263 = metadata !{i32 566, i32 0, metadata !1235, null}
!1264 = metadata !{i32 567, i32 0, metadata !1235, null}
!1265 = metadata !{i32 568, i32 0, metadata !1235, null}
!1266 = metadata !{i32 567, i32 0, metadata !331, null}
!1267 = metadata !{i32 580, i32 0, metadata !346, null}
!1268 = metadata !{i32 584, i32 0, metadata !346, null}
!1269 = metadata !{i32 586, i32 0, metadata !346, null}
!1270 = metadata !{i32 588, i32 0, metadata !346, null}
!1271 = metadata !{i32 589, i32 0, metadata !346, null}
!1272 = metadata !{i32 591, i32 0, metadata !346, null}
!1273 = metadata !{i32 593, i32 0, metadata !1274, null}
!1274 = metadata !{i32 786443, metadata !1, metadata !346, i32 592, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1275 = metadata !{i32 596, i32 0, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !1, metadata !1274, i32 594, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1277 = metadata !{i32 597, i32 0, metadata !1276, null}
!1278 = metadata !{i32 599, i32 0, metadata !1276, null}
!1279 = metadata !{i32 600, i32 0, metadata !1276, null}
!1280 = metadata !{i32 601, i32 0, metadata !1276, null}
!1281 = metadata !{i32 603, i32 0, metadata !1276, null}
!1282 = metadata !{i32 604, i32 0, metadata !1276, null}
!1283 = metadata !{i32 605, i32 0, metadata !1276, null}
!1284 = metadata !{i32 606, i32 0, metadata !1276, null}
!1285 = metadata !{i32 608, i32 0, metadata !1276, null}
!1286 = metadata !{i32 609, i32 0, metadata !1276, null}
!1287 = metadata !{i32 610, i32 0, metadata !1276, null}
!1288 = metadata !{i32 611, i32 0, metadata !1276, null}
!1289 = metadata !{i32 616, i32 0, metadata !1290, null}
!1290 = metadata !{i32 786443, metadata !1, metadata !346, i32 615, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1291 = metadata !{i32 618, i32 0, metadata !1292, null}
!1292 = metadata !{i32 786443, metadata !1, metadata !1290, i32 617, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1293 = metadata !{i32 619, i32 0, metadata !1292, null}
!1294 = metadata !{i32 623, i32 0, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !1, metadata !1290, i32 622, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1296 = metadata !{i32 626, i32 0, metadata !1290, null}
!1297 = metadata !{i32 628, i32 0, metadata !1298, null}
!1298 = metadata !{i32 786443, metadata !1, metadata !1290, i32 627, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1299 = metadata !{i32 629, i32 0, metadata !1298, null}
!1300 = metadata !{i32 630, i32 0, metadata !1298, null}
!1301 = metadata !{i32 632, i32 0, metadata !1290, null}
!1302 = metadata !{i32 634, i32 0, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !1, metadata !1290, i32 633, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1304 = metadata !{i32 635, i32 0, metadata !1303, null}
!1305 = metadata !{i32 636, i32 0, metadata !1303, null}
!1306 = metadata !{i32 637, i32 0, metadata !1303, null}
!1307 = metadata !{i32 638, i32 0, metadata !1303, null}
!1308 = metadata !{i32 639, i32 0, metadata !1303, null}
!1309 = metadata !{i32 640, i32 0, metadata !1303, null}
!1310 = metadata !{i32 641, i32 0, metadata !1303, null}
!1311 = metadata !{i32 646, i32 0, metadata !1312, null}
!1312 = metadata !{i32 786443, metadata !1, metadata !1290, i32 644, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1313 = metadata !{i32 647, i32 0, metadata !1312, null}
!1314 = metadata !{i32 648, i32 0, metadata !1312, null}
!1315 = metadata !{i32 650, i32 0, metadata !1316, null}
!1316 = metadata !{i32 786443, metadata !1, metadata !1312, i32 649, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1317 = metadata !{i32 651, i32 0, metadata !1316, null}
!1318 = metadata !{i32 652, i32 0, metadata !1316, null}
!1319 = metadata !{i32 653, i32 0, metadata !1316, null}
!1320 = metadata !{i32 657, i32 0, metadata !1321, null}
!1321 = metadata !{i32 786443, metadata !1, metadata !1312, i32 656, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1322 = metadata !{i32 658, i32 0, metadata !1321, null}
!1323 = metadata !{i32 659, i32 0, metadata !1321, null}
!1324 = metadata !{i32 660, i32 0, metadata !1321, null}
!1325 = metadata !{i32 661, i32 0, metadata !1321, null}
!1326 = metadata !{i32 662, i32 0, metadata !1321, null}
!1327 = metadata !{i32 663, i32 0, metadata !1321, null}
!1328 = metadata !{i32 663, i32 0, metadata !346, null}
!1329 = metadata !{i32 677, i32 0, metadata !355, null}
!1330 = metadata !{i32 679, i32 0, metadata !355, null}
!1331 = metadata !{i32 682, i32 0, metadata !355, null}
!1332 = metadata !{i32 683, i32 0, metadata !355, null}
!1333 = metadata !{i32 686, i32 0, metadata !1334, null}
!1334 = metadata !{i32 786443, metadata !1, metadata !355, i32 685, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1335 = metadata !{i32 689, i32 0, metadata !1334, null}
!1336 = metadata !{i32 690, i32 0, metadata !1334, null}
!1337 = metadata !{i32 691, i32 0, metadata !1334, null}
!1338 = metadata !{i32 693, i32 0, metadata !355, null}
!1339 = metadata !{i32 701, i32 0, metadata !360, null}
!1340 = metadata !{i32 703, i32 0, metadata !360, null}
!1341 = metadata !{i32 704, i32 0, metadata !360, null}
!1342 = metadata !{i32 705, i32 0, metadata !360, null}
!1343 = metadata !{i32 710, i32 0, metadata !360, null}
!1344 = metadata !{i32 712, i32 0, metadata !360, null}
!1345 = metadata !{i32 716, i32 0, metadata !360, null}
!1346 = metadata !{i32 718, i32 0, metadata !360, null}
!1347 = metadata !{i32 719, i32 0, metadata !360, null}
!1348 = metadata !{i32 721, i32 0, metadata !360, null}
!1349 = metadata !{i32 722, i32 0, metadata !360, null}
!1350 = metadata !{i32 725, i32 0, metadata !360, null}
!1351 = metadata !{i32 727, i32 0, metadata !360, null}
!1352 = metadata !{i32 731, i32 0, metadata !1353, null}
!1353 = metadata !{i32 786443, metadata !1, metadata !360, i32 730, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1354 = metadata !{i32 732, i32 0, metadata !1353, null}
!1355 = metadata !{metadata !"short", metadata !985}
!1356 = metadata !{i32 734, i32 0, metadata !1353, null}
!1357 = metadata !{i32 737, i32 0, metadata !360, null}
!1358 = metadata !{i32 739, i32 0, metadata !360, null}
!1359 = metadata !{i32 743, i32 0, metadata !1360, null}
!1360 = metadata !{i32 786443, metadata !1, metadata !360, i32 742, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1361 = metadata !{i32 744, i32 0, metadata !1360, null}
!1362 = metadata !{i32 746, i32 0, metadata !1360, null}
!1363 = metadata !{i32 749, i32 0, metadata !360, null}
!1364 = metadata !{i32 750, i32 0, metadata !360, null}
!1365 = metadata !{i32 751, i32 0, metadata !360, null}
!1366 = metadata !{i32 753, i32 0, metadata !360, null}
!1367 = metadata !{i32 755, i32 0, metadata !1368, null}
!1368 = metadata !{i32 786443, metadata !1, metadata !360, i32 754, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1369 = metadata !{i32 756, i32 0, metadata !1368, null}
!1370 = metadata !{i32 759, i32 0, metadata !1371, null}
!1371 = metadata !{i32 786443, metadata !1, metadata !360, i32 758, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1372 = metadata !{i32 760, i32 0, metadata !1371, null}
!1373 = metadata !{i32 761, i32 0, metadata !1371, null}
!1374 = metadata !{i32 762, i32 0, metadata !1371, null}
!1375 = metadata !{i32 764, i32 0, metadata !360, null}
!1376 = metadata !{i32 1376, i32 0, metadata !513, null}
!1377 = metadata !{i32 1377, i32 0, metadata !513, null}
!1378 = metadata !{i32 1378, i32 0, metadata !513, null}
!1379 = metadata !{i32 1379, i32 0, metadata !513, null}
!1380 = metadata !{i32 1384, i32 0, metadata !513, null}
!1381 = metadata !{i32 1386, i32 0, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !1, metadata !513, i32 1385, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1383 = metadata !{i32 1387, i32 0, metadata !1382, null}
!1384 = metadata !{i32 1391, i32 0, metadata !1385, null}
!1385 = metadata !{i32 786443, metadata !1, metadata !513, i32 1390, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1386 = metadata !{i32 1392, i32 0, metadata !1385, null}
!1387 = metadata !{i32 1393, i32 0, metadata !1385, null}
!1388 = metadata !{i32 1394, i32 0, metadata !1385, null}
!1389 = metadata !{i32 1395, i32 0, metadata !1385, null}
!1390 = metadata !{i32 1396, i32 0, metadata !1385, null}
!1391 = metadata !{i32 1398, i32 0, metadata !513, null}
!1392 = metadata !{i32 773, i32 0, metadata !380, null}
!1393 = metadata !{i32 775, i32 0, metadata !380, null}
!1394 = metadata !{i32 779, i32 0, metadata !380, null}
!1395 = metadata !{i32 780, i32 0, metadata !380, null}
!1396 = metadata !{i32 782, i32 0, metadata !380, null}
!1397 = metadata !{i32 784, i32 0, metadata !380, null}
!1398 = metadata !{i32 786, i32 0, metadata !380, null}
!1399 = metadata !{i32 1}
!1400 = metadata !{i32 787, i32 0, metadata !380, null}
!1401 = metadata !{i32 788, i32 0, metadata !380, null}
!1402 = metadata !{i32 790, i32 0, metadata !380, null}
!1403 = metadata !{i32 793, i32 0, metadata !380, null}
!1404 = metadata !{i32 795, i32 0, metadata !380, null}
!1405 = metadata !{i32 797, i32 0, metadata !1406, null}
!1406 = metadata !{i32 786443, metadata !1, metadata !380, i32 796, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1407 = metadata !{i32 798, i32 0, metadata !1406, null}
!1408 = metadata !{i32 801, i32 0, metadata !1409, null}
!1409 = metadata !{i32 786443, metadata !1, metadata !380, i32 800, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1410 = metadata !{i32 2}
!1411 = metadata !{i32 802, i32 0, metadata !1409, null}
!1412 = metadata !{i32 803, i32 0, metadata !1409, null}
!1413 = metadata !{i32 804, i32 0, metadata !1409, null}
!1414 = metadata !{i32 806, i32 0, metadata !380, null}
!1415 = metadata !{i32 815, i32 0, metadata !390, null}
!1416 = metadata !{i32 817, i32 0, metadata !390, null}
!1417 = metadata !{i32 818, i32 0, metadata !390, null}
!1418 = metadata !{i32 825, i32 0, metadata !390, null}
!1419 = metadata !{i32 826, i32 0, metadata !390, null}
!1420 = metadata !{i32 828, i32 0, metadata !390, null}
!1421 = metadata !{i32 830, i32 0, metadata !390, null}
!1422 = metadata !{i32 831, i32 0, metadata !390, null}
!1423 = metadata !{i32 833, i32 0, metadata !390, null}
!1424 = metadata !{i32 834, i32 0, metadata !390, null}
!1425 = metadata !{i32 836, i32 0, metadata !390, null}
!1426 = metadata !{i32 838, i32 0, metadata !1427, null}
!1427 = metadata !{i32 786443, metadata !1, metadata !390, i32 837, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1428 = metadata !{i32 839, i32 0, metadata !1427, null}
!1429 = metadata !{i32 841, i32 0, metadata !1430, null}
!1430 = metadata !{i32 786443, metadata !1, metadata !1427, i32 840, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1431 = metadata !{i32 843, i32 0, metadata !1430, null}
!1432 = metadata !{i32 844, i32 0, metadata !1430, null}
!1433 = metadata !{i32 850, i32 0, metadata !390, null}
!1434 = metadata !{i32 852, i32 0, metadata !1435, null}
!1435 = metadata !{i32 786443, metadata !1, metadata !390, i32 851, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1436 = metadata !{i32 853, i32 0, metadata !1435, null}
!1437 = metadata !{i32 855, i32 0, metadata !1438, null}
!1438 = metadata !{i32 786443, metadata !1, metadata !1435, i32 854, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1439 = metadata !{i32 857, i32 0, metadata !1438, null}
!1440 = metadata !{i32 858, i32 0, metadata !1438, null}
!1441 = metadata !{i32 864, i32 0, metadata !390, null}
!1442 = metadata !{i32 865, i32 0, metadata !390, null}
!1443 = metadata !{i32 868, i32 0, metadata !1444, null}
!1444 = metadata !{i32 786443, metadata !1, metadata !390, i32 867, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1445 = metadata !{i32 869, i32 0, metadata !1444, null}
!1446 = metadata !{i32 871, i32 0, metadata !1444, null}
!1447 = metadata !{i32 873, i32 0, metadata !390, null}
!1448 = metadata !{i32 874, i32 0, metadata !390, null}
!1449 = metadata !{i32 876, i32 0, metadata !390, null}
!1450 = metadata !{i32 878, i32 0, metadata !390, null}
!1451 = metadata !{i32 879, i32 0, metadata !390, null}
!1452 = metadata !{i32 882, i32 0, metadata !1453, null}
!1453 = metadata !{i32 786443, metadata !1, metadata !390, i32 881, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1454 = metadata !{i32 883, i32 0, metadata !1453, null}
!1455 = metadata !{i32 884, i32 0, metadata !1453, null}
!1456 = metadata !{i32 885, i32 0, metadata !1453, null}
!1457 = metadata !{i32 887, i32 0, metadata !1453, null}
!1458 = metadata !{i32 889, i32 0, metadata !390, null}
!1459 = metadata !{i32 1508, i32 0, metadata !551, null}
!1460 = metadata !{i32 1509, i32 0, metadata !551, null}
!1461 = metadata !{i32 1510, i32 0, metadata !551, null}
!1462 = metadata !{i32 1511, i32 0, metadata !551, null}
!1463 = metadata !{i32 1514, i32 0, metadata !551, null}
!1464 = metadata !{i32 1515, i32 0, metadata !551, null}
!1465 = metadata !{i32 1516, i32 0, metadata !551, null}
!1466 = metadata !{i32 1518, i32 0, metadata !551, null}
!1467 = metadata !{i32 1520, i32 0, metadata !1468, null}
!1468 = metadata !{i32 786443, metadata !1, metadata !551, i32 1519, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1469 = metadata !{i32 1521, i32 0, metadata !1468, null}
!1470 = metadata !{i32 1525, i32 0, metadata !1471, null}
!1471 = metadata !{i32 786443, metadata !1, metadata !551, i32 1524, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1472 = metadata !{i32 1526, i32 0, metadata !1471, null}
!1473 = metadata !{i32 1527, i32 0, metadata !1471, null}
!1474 = metadata !{i32 1528, i32 0, metadata !1471, null}
!1475 = metadata !{i32 1529, i32 0, metadata !1471, null}
!1476 = metadata !{i32 1531, i32 0, metadata !1477, null}
!1477 = metadata !{i32 786443, metadata !1, metadata !1471, i32 1530, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1478 = metadata !{i32 1532, i32 0, metadata !1477, null}
!1479 = metadata !{i32 1533, i32 0, metadata !1477, null}
!1480 = metadata !{i32 undef}
!1481 = metadata !{i32 1535, i32 0, metadata !1471, null}
!1482 = metadata !{i32 1536, i32 0, metadata !1471, null}
!1483 = metadata !{i32 1538, i32 0, metadata !551, null}
!1484 = metadata !{i32 899, i32 0, metadata !409, null}
!1485 = metadata !{i32 901, i32 0, metadata !409, null}
!1486 = metadata !{i32 902, i32 0, metadata !409, null}
!1487 = metadata !{i32 904, i32 0, metadata !409, null}
!1488 = metadata !{i32 906, i32 0, metadata !409, null}
!1489 = metadata !{i32 907, i32 0, metadata !409, null}
!1490 = metadata !{i32 909, i32 0, metadata !409, null}
!1491 = metadata !{i32 910, i32 0, metadata !409, null}
!1492 = metadata !{i32 912, i32 0, metadata !409, null}
!1493 = metadata !{i32 914, i32 0, metadata !409, null}
!1494 = metadata !{i32 917, i32 0, metadata !1495, null}
!1495 = metadata !{i32 786443, metadata !1, metadata !409, i32 916, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1496 = metadata !{i32 918, i32 0, metadata !1495, null}
!1497 = metadata !{i32 920, i32 0, metadata !409, null}
!1498 = metadata !{i32 1410, i32 0, metadata !523, null}
!1499 = metadata !{i32 1411, i32 0, metadata !523, null}
!1500 = metadata !{i32 1412, i32 0, metadata !523, null}
!1501 = metadata !{i32 1413, i32 0, metadata !523, null}
!1502 = metadata !{i32 1414, i32 0, metadata !523, null}
!1503 = metadata !{i32 1419, i32 0, metadata !523, null}
!1504 = metadata !{i32 1421, i32 0, metadata !1505, null}
!1505 = metadata !{i32 786443, metadata !1, metadata !523, i32 1420, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1506 = metadata !{i32 1422, i32 0, metadata !1505, null}
!1507 = metadata !{i32 1426, i32 0, metadata !1508, null}
!1508 = metadata !{i32 786443, metadata !1, metadata !523, i32 1425, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1509 = metadata !{i32 1427, i32 0, metadata !1508, null}
!1510 = metadata !{i32 1428, i32 0, metadata !1508, null}
!1511 = metadata !{i32 1429, i32 0, metadata !1508, null}
!1512 = metadata !{i32 1430, i32 0, metadata !1508, null}
!1513 = metadata !{i32 1431, i32 0, metadata !1508, null}
!1514 = metadata !{i32 1432, i32 0, metadata !1508, null}
!1515 = metadata !{i32 1434, i32 0, metadata !523, null}
!1516 = metadata !{i32 930, i32 0, metadata !419, null}
!1517 = metadata !{i32 932, i32 0, metadata !419, null}
!1518 = metadata !{i32 935, i32 0, metadata !419, null}
!1519 = metadata !{i32 936, i32 0, metadata !419, null}
!1520 = metadata !{i32 938, i32 0, metadata !419, null}
!1521 = metadata !{i32 940, i32 0, metadata !1522, null}
!1522 = metadata !{i32 786443, metadata !1, metadata !419, i32 939, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1523 = metadata !{i32 944, i32 0, metadata !1524, null}
!1524 = metadata !{i32 786443, metadata !1, metadata !1522, i32 943, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1525 = metadata !{i32 947, i32 0, metadata !1524, null}
!1526 = metadata !{i32 952, i32 0, metadata !419, null}
!1527 = metadata !{i32 954, i32 0, metadata !419, null}
!1528 = metadata !{i32 956, i32 0, metadata !1529, null}
!1529 = metadata !{i32 786443, metadata !1, metadata !419, i32 955, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1530 = metadata !{i32 957, i32 0, metadata !1529, null}
!1531 = metadata !{i32 960, i32 0, metadata !1532, null}
!1532 = metadata !{i32 786443, metadata !1, metadata !1533, i32 959, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1533 = metadata !{i32 786443, metadata !1, metadata !1529, i32 958, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1534 = metadata !{i32 963, i32 0, metadata !1532, null}
!1535 = metadata !{i32 971, i32 0, metadata !419, null}
!1536 = metadata !{i32 974, i32 0, metadata !419, null}
!1537 = metadata !{i32 976, i32 0, metadata !419, null}
!1538 = metadata !{i32 985, i32 0, metadata !434, null}
!1539 = metadata !{i32 987, i32 0, metadata !434, null}
!1540 = metadata !{i32 988, i32 0, metadata !434, null}
!1541 = metadata !{i32 992, i32 0, metadata !434, null}
!1542 = metadata !{i32 996, i32 0, metadata !1543, null}
!1543 = metadata !{i32 786443, metadata !1, metadata !434, i32 996, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1544 = metadata !{i32 999, i32 0, metadata !1545, null}
!1545 = metadata !{i32 786443, metadata !1, metadata !1543, i32 997, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1546 = metadata !{i32 1002, i32 0, metadata !434, null}
!1547 = metadata !{i32 1005, i32 0, metadata !1548, null}
!1548 = metadata !{i32 786443, metadata !1, metadata !434, i32 1003, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1549 = metadata !{i32 1006, i32 0, metadata !1548, null}
!1550 = metadata !{i32 1008, i32 0, metadata !1551, null}
!1551 = metadata !{i32 786443, metadata !1, metadata !1548, i32 1007, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1552 = metadata !{i32 1011, i32 0, metadata !1551, null}
!1553 = metadata !{i32 1015, i32 0, metadata !1548, null}
!1554 = metadata !{i32 1016, i32 0, metadata !1548, null}
!1555 = metadata !{i32 1018, i32 0, metadata !1556, null}
!1556 = metadata !{i32 786443, metadata !1, metadata !1548, i32 1017, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1557 = metadata !{i32 1021, i32 0, metadata !1556, null}
!1558 = metadata !{i32 1024, i32 0, metadata !1548, null}
!1559 = metadata !{i32 1025, i32 0, metadata !1548, null}
!1560 = metadata !{i32 1026, i32 0, metadata !1548, null}
!1561 = metadata !{i32 1028, i32 0, metadata !1548, null}
!1562 = metadata !{i32 1030, i32 0, metadata !1563, null}
!1563 = metadata !{i32 786443, metadata !1, metadata !1548, i32 1029, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1564 = metadata !{i32 1031, i32 0, metadata !1563, null}
!1565 = metadata !{i32 1033, i32 0, metadata !1566, null}
!1566 = metadata !{i32 786443, metadata !1, metadata !1563, i32 1032, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1567 = metadata !{i32 1036, i32 0, metadata !1566, null}
!1568 = metadata !{i32 1037, i32 0, metadata !1566, null}
!1569 = metadata !{i32 1041, i32 0, metadata !1563, null}
!1570 = metadata !{i32 1042, i32 0, metadata !1563, null}
!1571 = metadata !{i32 1044, i32 0, metadata !1572, null}
!1572 = metadata !{i32 786443, metadata !1, metadata !1563, i32 1043, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1573 = metadata !{i32 1047, i32 0, metadata !1572, null}
!1574 = metadata !{i32 1048, i32 0, metadata !1572, null}
!1575 = metadata !{i32 1051, i32 0, metadata !1563, null}
!1576 = metadata !{i32 1052, i32 0, metadata !1563, null}
!1577 = metadata !{i32 1053, i32 0, metadata !1563, null}
!1578 = metadata !{i32 1054, i32 0, metadata !1563, null}
!1579 = metadata !{i32 1056, i32 0, metadata !434, null}
!1580 = metadata !{i32 1076, i32 0, metadata !447, null}
!1581 = metadata !{i32 1080, i32 0, metadata !447, null}
!1582 = metadata !{i32 1081, i32 0, metadata !447, null}
!1583 = metadata !{i32 1082, i32 0, metadata !447, null}
!1584 = metadata !{i32 1083, i32 0, metadata !447, null}
!1585 = metadata !{i32 1084, i32 0, metadata !447, null}
!1586 = metadata !{i32 1085, i32 0, metadata !447, null}
!1587 = metadata !{i32 1086, i32 0, metadata !447, null}
!1588 = metadata !{i32 1087, i32 0, metadata !447, null}
!1589 = metadata !{i32 1088, i32 0, metadata !447, null}
!1590 = metadata !{i32 1089, i32 0, metadata !447, null}
!1591 = metadata !{i32 1090, i32 0, metadata !447, null}
!1592 = metadata !{i32 1091, i32 0, metadata !447, null}
!1593 = metadata !{i32 1092, i32 0, metadata !447, null}
!1594 = metadata !{i32 1095, i32 0, metadata !447, null}
!1595 = metadata !{i32 1096, i32 0, metadata !447, null}
!1596 = metadata !{i32 1098, i32 0, metadata !447, null}
!1597 = metadata !{i32 1101, i32 0, metadata !1598, null}
!1598 = metadata !{i32 786443, metadata !1, metadata !447, i32 1100, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1599 = metadata !{i32 1099, i32 0, metadata !447, null}
!1600 = metadata !{i32 1102, i32 0, metadata !1598, null}
!1601 = metadata !{i32 1103, i32 0, metadata !1598, null}
!1602 = metadata !{i32 1105, i32 0, metadata !1603, null}
!1603 = metadata !{i32 786443, metadata !1, metadata !1598, i32 1104, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1604 = metadata !{i32 1106, i32 0, metadata !1603, null}
!1605 = metadata !{i32 1107, i32 0, metadata !1603, null}
!1606 = metadata !{i32 1108, i32 0, metadata !1603, null}
!1607 = metadata !{i32 1113, i32 0, metadata !1608, null}
!1608 = metadata !{i32 786443, metadata !1, metadata !447, i32 1112, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1609 = metadata !{i32 1114, i32 0, metadata !1608, null}
!1610 = metadata !{i32 1115, i32 0, metadata !1608, null}
!1611 = metadata !{i32 1117, i32 0, metadata !1612, null}
!1612 = metadata !{i32 786443, metadata !1, metadata !1608, i32 1116, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1613 = metadata !{i32 1118, i32 0, metadata !1612, null}
!1614 = metadata !{i32 1119, i32 0, metadata !1612, null}
!1615 = metadata !{i32 1120, i32 0, metadata !1612, null}
!1616 = metadata !{i32 1124, i32 0, metadata !447, null}
!1617 = metadata !{i32 1126, i32 0, metadata !447, null}
!1618 = metadata !{i32 1128, i32 0, metadata !1619, null}
!1619 = metadata !{i32 786443, metadata !1, metadata !447, i32 1127, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1620 = metadata !{i32 1130, i32 0, metadata !1621, null}
!1621 = metadata !{i32 786443, metadata !1, metadata !1619, i32 1129, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1622 = metadata !{metadata !"long", metadata !985}
!1623 = metadata !{i32 1131, i32 0, metadata !1621, null}
!1624 = metadata !{i32 1132, i32 0, metadata !1621, null}
!1625 = metadata !{i32 1133, i32 0, metadata !1621, null}
!1626 = metadata !{i32 1134, i32 0, metadata !1621, null}
!1627 = metadata !{i32 1137, i32 0, metadata !1628, null}
!1628 = metadata !{i32 786443, metadata !1, metadata !1619, i32 1136, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1629 = metadata !{i32 1138, i32 0, metadata !1628, null}
!1630 = metadata !{i32 1139, i32 0, metadata !1628, null}
!1631 = metadata !{i32 1142, i32 0, metadata !1632, null}
!1632 = metadata !{i32 786443, metadata !1, metadata !1619, i32 1141, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1633 = metadata !{i32 1140, i32 0, metadata !1619, null}
!1634 = metadata !{i32 1143, i32 0, metadata !1632, null}
!1635 = metadata !{i32 1144, i32 0, metadata !1632, null}
!1636 = metadata !{i32 1151, i32 0, metadata !447, null}
!1637 = metadata !{i32 1152, i32 0, metadata !447, null}
!1638 = metadata !{i32 1154, i32 0, metadata !1639, null}
!1639 = metadata !{i32 786443, metadata !1, metadata !447, i32 1153, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1640 = metadata !{i32 1156, i32 0, metadata !1641, null}
!1641 = metadata !{i32 786443, metadata !1, metadata !1639, i32 1155, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1642 = metadata !{i32 1159, i32 0, metadata !1641, null}
!1643 = metadata !{i32 1163, i32 0, metadata !1639, null}
!1644 = metadata !{i32 1174, i32 0, metadata !1639, null}
!1645 = metadata !{i32 1165, i32 0, metadata !1646, null}
!1646 = metadata !{i32 786443, metadata !1, metadata !1639, i32 1164, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1647 = metadata !{i32 1168, i32 0, metadata !1646, null}
!1648 = metadata !{i32 1171, i32 0, metadata !1639, null}
!1649 = metadata !{i32 1175, i32 0, metadata !1639, null}
!1650 = metadata !{i32 1176, i32 0, metadata !447, null}
!1651 = metadata !{i32 1235, i32 0, metadata !473, null}
!1652 = metadata !{i32 1238, i32 0, metadata !473, null}
!1653 = metadata !{i32 1239, i32 0, metadata !473, null}
!1654 = metadata !{i32 1241, i32 0, metadata !473, null}
!1655 = metadata !{i32 1243, i32 0, metadata !473, null}
!1656 = metadata !{i32 1245, i32 0, metadata !473, null}
!1657 = metadata !{i32 1247, i32 0, metadata !473, null}
!1658 = metadata !{i32 1249, i32 0, metadata !1659, null}
!1659 = metadata !{i32 786443, metadata !1, metadata !473, i32 1248, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1660 = metadata !{i32 1250, i32 0, metadata !1659, null}
!1661 = metadata !{i32 1252, i32 0, metadata !1662, null}
!1662 = metadata !{i32 786443, metadata !1, metadata !473, i32 1252, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1663 = metadata !{i32 1256, i32 0, metadata !1664, null}
!1664 = metadata !{i32 786443, metadata !1, metadata !1662, i32 1253, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1665 = metadata !{i32 1259, i32 0, metadata !1664, null}
!1666 = metadata !{i32 1264, i32 0, metadata !1667, null}
!1667 = metadata !{i32 786443, metadata !1, metadata !1664, i32 1261, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1668 = metadata !{i32 1257, i32 0, metadata !1664, null}
!1669 = metadata !{i32 1254, i32 0, metadata !1664, null}
!1670 = metadata !{i32 1260, i32 0, metadata !1664, null}
!1671 = metadata !{i32 1262, i32 0, metadata !1667, null}
!1672 = metadata !{i32 1265, i32 0, metadata !1667, null}
!1673 = metadata !{i32 1252, i32 0, metadata !473, null}
!1674 = metadata !{i32 1280, i32 0, metadata !492, null}
!1675 = metadata !{i32 1287, i32 0, metadata !492, null}
!1676 = metadata !{i32 1288, i32 0, metadata !492, null}
!1677 = metadata !{i32 1290, i32 0, metadata !1678, null}
!1678 = metadata !{i32 786443, metadata !1, metadata !492, i32 1290, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1679 = metadata !{i32 1301, i32 0, metadata !1680, null}
!1680 = metadata !{i32 786443, metadata !1, metadata !1681, i32 1293, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1681 = metadata !{i32 786443, metadata !1, metadata !1678, i32 1291, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1682 = metadata !{i32 1305, i32 0, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !1, metadata !1680, i32 1304, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1684 = metadata !{i32 1306, i32 0, metadata !1683, null}
!1685 = metadata !{i32 1292, i32 0, metadata !1681, null}
!1686 = metadata !{i32 1294, i32 0, metadata !1680, null}
!1687 = metadata !{i32 1295, i32 0, metadata !1688, null}
!1688 = metadata !{i32 786443, metadata !1, metadata !1680, i32 1295, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1689 = metadata !{i16 1}
!1690 = metadata !{i32 1297, i32 0, metadata !1680, null}
!1691 = metadata !{i32 1300, i32 0, metadata !1680, null}
!1692 = metadata !{i32 1303, i32 0, metadata !1680, null}
!1693 = metadata !{i32 1307, i32 0, metadata !1683, null}
!1694 = metadata !{i32 1308, i32 0, metadata !1683, null}
!1695 = metadata !{i32 1309, i32 0, metadata !1683, null}
!1696 = metadata !{i32 1310, i32 0, metadata !1680, null}
!1697 = metadata !{i32 1312, i32 0, metadata !1698, null}
!1698 = metadata !{i32 786443, metadata !1, metadata !1680, i32 1311, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1699 = metadata !{i32 1314, i32 0, metadata !1680, null}
!1700 = metadata !{i32 1315, i32 0, metadata !1680, null}
!1701 = metadata !{i32 1317, i32 0, metadata !492, null}
!1702 = metadata !{i32 1475, i32 0, metadata !541, null}
!1703 = metadata !{i32 1476, i32 0, metadata !541, null}
!1704 = metadata !{i32 1477, i32 0, metadata !541, null}
!1705 = metadata !{i32 13}
!1706 = metadata !{i32 1480, i32 0, metadata !541, null}
!1707 = metadata !{i32 1482, i32 0, metadata !541, null}
!1708 = metadata !{i32 1484, i32 0, metadata !1709, null}
!1709 = metadata !{i32 786443, metadata !1, metadata !541, i32 1483, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1710 = metadata !{i32 1485, i32 0, metadata !1709, null}
!1711 = metadata !{i32 1489, i32 0, metadata !1712, null}
!1712 = metadata !{i32 786443, metadata !1, metadata !541, i32 1488, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1713 = metadata !{i32 1490, i32 0, metadata !1712, null}
!1714 = metadata !{i32 1491, i32 0, metadata !1712, null}
!1715 = metadata !{i32 1492, i32 0, metadata !1712, null}
!1716 = metadata !{i32 1493, i32 0, metadata !1712, null}
!1717 = metadata !{i32 1494, i32 0, metadata !1712, null}
!1718 = metadata !{i32 1495, i32 0, metadata !1712, null}
!1719 = metadata !{i32 1497, i32 0, metadata !541, null}
!1720 = metadata !{i32 1327, i32 0, metadata !507, null}
!1721 = metadata !{i32 1333, i32 0, metadata !507, null}
!1722 = metadata !{i32 1337, i32 0, metadata !507, null}
!1723 = metadata !{i32 1339, i32 0, metadata !1724, null}
!1724 = metadata !{i32 786443, metadata !1, metadata !1725, i32 1339, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1725 = metadata !{i32 786443, metadata !1, metadata !507, i32 1338, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1726 = metadata !{i32 1339, i32 0, metadata !1725, null}
!1727 = metadata !{i32 1340, i32 0, metadata !1725, null}
!1728 = metadata !{i32 1344, i32 0, metadata !1729, null}
!1729 = metadata !{i32 786443, metadata !1, metadata !1730, i32 1344, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1730 = metadata !{i32 786443, metadata !1, metadata !507, i32 1343, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1731 = metadata !{i32 1347, i32 0, metadata !507, null}
!1732 = metadata !{i32 1350, i32 0, metadata !507, null}
!1733 = metadata !{i32 1352, i32 0, metadata !507, null}
!1734 = metadata !{i32 1355, i32 0, metadata !1735, null}
!1735 = metadata !{i32 786443, metadata !1, metadata !507, i32 1353, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1736 = metadata !{i32 1358, i32 0, metadata !1735, null}
!1737 = metadata !{i32 1359, i32 0, metadata !1735, null}
!1738 = metadata !{i32 1362, i32 0, metadata !507, null}
!1739 = metadata !{i32 1445, i32 0, metadata !534, null}
!1740 = metadata !{i32 1446, i32 0, metadata !534, null}
!1741 = metadata !{i32 1447, i32 0, metadata !534, null}
!1742 = metadata !{i32 1451, i32 0, metadata !1743, null}
!1743 = metadata !{i32 786443, metadata !1, metadata !534, i32 1450, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1744 = metadata !{i32 1453, i32 0, metadata !1745, null}
!1745 = metadata !{i32 786443, metadata !1, metadata !1743, i32 1452, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1746 = metadata !{i32 1454, i32 0, metadata !1745, null}
!1747 = metadata !{i32 1455, i32 0, metadata !1745, null}
!1748 = metadata !{i32 1459, i32 0, metadata !1749, null}
!1749 = metadata !{i32 786443, metadata !1, metadata !1743, i32 1458, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/cabac.c]
!1750 = metadata !{i32 1460, i32 0, metadata !1749, null}
!1751 = metadata !{i32 1461, i32 0, metadata !1749, null}
!1752 = metadata !{i32 1466, i32 0, metadata !534, null}
