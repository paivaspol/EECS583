; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.Decoders = type { i32**, i16***, i16****, i16***, i16**, i8**, i8** }
%struct.SNRParameters = type { float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.user_data_unregistered_information_struct = type { i8*, i32, %struct.Bitstream*, i32 }
%struct.user_data_registered_itu_t_t35_information_struct = type { i8*, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.randomaccess_information_struct = type { i8, i8, i8, %struct.Bitstream*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.timeb = type { i64, i16, i16, i16 }

@ONE_FOURTH_TAP = constant [3 x [2 x i32]] [[2 x i32] [i32 20, i32 20], [2 x i32] [i32 -5, i32 -4], [2 x i32] [i32 1, i32 0]], align 16
@enc_picture = common global %struct.storable_picture* null, align 8
@img = external global %struct.ImageParameters*
@start_frame_no_in_this_IGOP = external global i32
@input = external global %struct.InputParameters*
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@stats = external global %struct.StatParameters*
@decs = external global %struct.Decoders*
@encode_one_frame.prev_frame_no = internal unnamed_addr global i32 0, align 4
@encode_one_frame.consecutive_non_reference_pictures = internal unnamed_addr global i32 0, align 4
@me_time = common global i32 0, align 4
@enc_frame_picture = common global %struct.storable_picture* null, align 8
@enc_frame_picture2 = common global %struct.storable_picture* null, align 8
@enc_frame_picture3 = common global %struct.storable_picture* null, align 8
@Bframe_ctr = common global i32 0, align 4
@Iframe_ctr = common global i32 0, align 4
@Pframe_ctr = common global i32 0, align 4
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@mb_adaptive = common global i32 0, align 4
@QP = common global i32 0, align 4
@PicParSet = external global [256 x %struct.pic_parameter_set_rbsp_t]
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@tot_time = common global i32 0, align 4
@enc_bottom_picture = common global %struct.storable_picture* null, align 8
@total_frame_buffer = external global i64
@Bit_Buffer = external global [10000 x i64]
@frame_no = common global i32 0, align 4
@.str = private unnamed_addr constant [137 x i8] c"POC type 2 cannot be applied for the coding pattern where the encoding /decoding order of pictures are different from the output order.\0A\00", align 1
@Pprev_bits = external global i32
@snr = external global %struct.SNRParameters*
@enc_top_picture = common global %struct.storable_picture* null, align 8
@nextP_tr_fld = common global i32 0, align 4
@.str1 = private unnamed_addr constant [35 x i8] c"alloc_storable_picture: s->imgY_11\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"alloc_storable_picture: s->imgY_11_w\00", align 1
@img4Y_tmp = common global i32** null, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@.str3 = private unnamed_addr constant [110 x i8] c"Source picture has higher bit depth than imgpel data type. Please recompile with larger data type for imgpel.\00", align 1
@.str4 = private unnamed_addr constant [80 x i8] c"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i32 0, align 4
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
@nextP_tr_frm = common global i32 0, align 4
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
@seiHasUser_data_unregistered_info = common global i32 0, align 4
@seiUser_data_unregistered = common global %struct.user_data_unregistered_information_struct zeroinitializer, align 8
@seiHasUser_data_registered_itu_t_t35_info = common global i32 0, align 4
@seiUser_data_registered_itu_t_t35 = common global %struct.user_data_registered_itu_t_t35_information_struct zeroinitializer, align 8
@seiHasRandomAccess_info = common global i32 0, align 4
@seiRandomAccess = common global %struct.randomaccess_information_struct zeroinitializer, align 8
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8
@bit_rate = common global double 0.000000e+00, align 8
@frame_rate = common global double 0.000000e+00, align 8
@GAMMAP = common global double 0.000000e+00, align 8
@BETAP = common global double 0.000000e+00, align 8
@RC_MAX_QUANT = common global i32 0, align 4
@RC_MIN_QUANT = common global i32 0, align 4
@BufferSize = common global double 0.000000e+00, align 8
@GOPTargetBufferLevel = common global double 0.000000e+00, align 8
@CurrentBufferFullness = common global double 0.000000e+00, align 8
@TargetBufferLevel = common global double 0.000000e+00, align 8
@PreviousBit_Rate = common global double 0.000000e+00, align 8
@AWp = common global double 0.000000e+00, align 8
@AWb = common global double 0.000000e+00, align 8
@MyInitialQp = common global i32 0, align 4
@PAverageQp = common global i32 0, align 4
@PreviousPictureMAD = common global double 0.000000e+00, align 8
@MADPictureC1 = common global double 0.000000e+00, align 8
@MADPictureC2 = common global double 0.000000e+00, align 8
@PMADPictureC1 = common global double 0.000000e+00, align 8
@PMADPictureC2 = common global double 0.000000e+00, align 8
@PictureRejected = common global [21 x i32] zeroinitializer, align 16
@PPictureMAD = common global [21 x double] zeroinitializer, align 16
@PictureMAD = common global [21 x double] zeroinitializer, align 16
@ReferenceMAD = common global [21 x double] zeroinitializer, align 16
@m_rgRejected = common global [21 x i32] zeroinitializer, align 16
@m_rgQp = common global [21 x double] zeroinitializer, align 16
@m_rgRp = common global [21 x double] zeroinitializer, align 16
@m_X1 = common global double 0.000000e+00, align 8
@m_X2 = common global double 0.000000e+00, align 8
@m_Qc = common global i32 0, align 4
@m_Qstep = common global double 0.000000e+00, align 8
@m_Qp = common global i32 0, align 4
@Pm_Qp = common global i32 0, align 4
@PreAveMBHeader = common global i32 0, align 4
@CurAveMBHeader = common global i32 0, align 4
@PPreHeader = common global i32 0, align 4
@PreviousQp1 = common global i32 0, align 4
@PreviousQp2 = common global i32 0, align 4
@NumberofBFrames = common global i32 0, align 4
@TotalFrameQP = common global i32 0, align 4
@NumberofBasicUnit = common global i32 0, align 4
@PAveHeaderBits1 = common global i32 0, align 4
@PAveHeaderBits2 = common global i32 0, align 4
@PAveHeaderBits3 = common global i32 0, align 4
@PAveFrameQP = common global i32 0, align 4
@TotalNumberofBasicUnit = common global i32 0, align 4
@CodedBasicUnit = common global i32 0, align 4
@MINVALUE = common global double 0.000000e+00, align 8
@CurrentFrameMAD = common global double 0.000000e+00, align 8
@CurrentBUMAD = common global double 0.000000e+00, align 8
@TotalBUMAD = common global double 0.000000e+00, align 8
@PreviousFrameMAD = common global double 0.000000e+00, align 8
@m_Hp = common global i32 0, align 4
@m_windowSize = common global i32 0, align 4
@MADm_windowSize = common global i32 0, align 4
@DDquant = common global i32 0, align 4
@MBPerRow = common global i32 0, align 4
@AverageMADPreviousFrame = common global double 0.000000e+00, align 8
@TotalBasicUnitBits = common global i32 0, align 4
@QPLastPFrame = common global i32 0, align 4
@QPLastGOP = common global i32 0, align 4
@Pm_rgQp = common global [20 x double] zeroinitializer, align 16
@Pm_rgRp = common global [20 x double] zeroinitializer, align 16
@Pm_X1 = common global double 0.000000e+00, align 8
@Pm_X2 = common global double 0.000000e+00, align 8
@Pm_Hp = common global i32 0, align 4
@FieldQPBuffer = common global i32 0, align 4
@FrameQPBuffer = common global i32 0, align 4
@FrameAveHeaderBits = common global i32 0, align 4
@FieldAveHeaderBits = common global i32 0, align 4
@BUPFMAD = common global double* null, align 8
@BUCFMAD = common global double* null, align 8
@FCBUCFMAD = common global double* null, align 8
@FCBUPFMAD = common global double* null, align 8
@GOPOverdue = common global i32 0, align 4
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@diffyy = common global [16 x [16 x i32]] zeroinitializer, align 16
@diffy8 = common global [16 x [16 x i32]] zeroinitializer, align 16
@last_P_no = common global i32* null, align 8
@last_P_no_frm = common global i32* null, align 8
@last_P_no_fld = common global i32* null, align 8
@.str5 = private unnamed_addr constant [11 x i8] c"p_in != -1\00", align 1
@.str6 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c\00", align 1
@__PRETTY_FUNCTION__.ReadOneFrame = private unnamed_addr constant [48 x i8] c"void ReadOneFrame(int, int, int, int, int, int)\00", align 1
@.str7 = private unnamed_addr constant [18 x i8] c"ReadOneFrame: buf\00", align 1
@.str8 = private unnamed_addr constant [52 x i8] c"ReadOneFrame: cannot fseek to (Header size) in p_in\00", align 1
@.str9 = private unnamed_addr constant [67 x i8] c"ReadOneFrame: cannot advance file pointer in p_in beyond frame %d\0A\00", align 1
@.str10 = private unnamed_addr constant [77 x i8] c"ReadOneFrame: cannot read %d bytes from input file, unexpected EOF?, exiting\00", align 1
@.str11 = private unnamed_addr constant [75 x i8] c"ReadOneFrame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8\00", align 1
@start_tr_in_this_IGOP = external global i32
@.str12 = private unnamed_addr constant [65 x i8] c"%04d(P)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"FLD\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"FRM\00", align 1
@.str15 = private unnamed_addr constant [69 x i8] c"%04d(B)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d %1d\0A\00", align 1
@.str16 = private unnamed_addr constant [69 x i8] c"%04d(RB) %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d %1d\0A\00", align 1
@.str17 = private unnamed_addr constant [65 x i8] c"%04d(SP) %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@.str18 = private unnamed_addr constant [65 x i8] c"%04d(IDR)%8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@.str19 = private unnamed_addr constant [65 x i8] c"%04d(I)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\0A\00", align 1
@Iprev_bits = external global i32
@.str20 = private unnamed_addr constant [15 x i8] c"%04d(NVB)%8d \0A\00", align 1
@.str21 = private unnamed_addr constant [28 x i8] c"currStream->bits_to_go == 8\00", align 1
@__PRETTY_FUNCTION__.writeout_picture = private unnamed_addr constant [32 x i8] c"int writeout_picture(Picture *)\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @MbAffPostProc() #0 {
entry:
  %temp = alloca [16 x [32 x i16]], align 16
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %0 = bitcast [16 x [32 x i16]]* %temp to i8*, !dbg !1124
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1, !dbg !1124
  call void @llvm.dbg.declare(metadata !{[16 x [32 x i16]]* %temp}, metadata !33), !dbg !1124
  %1 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1125, !tbaa !1126
  %imgY1 = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 25, !dbg !1125
  %2 = load i16*** %imgY1, align 8, !dbg !1125, !tbaa !1126
  call void @llvm.dbg.value(metadata !{i16** %2}, i64 0, metadata !39), !dbg !1125
  %imgUV2 = getelementptr inbounds %struct.storable_picture* %1, i64 0, i32 30, !dbg !1129
  %3 = load i16**** %imgUV2, align 8, !dbg !1129, !tbaa !1126
  call void @llvm.dbg.value(metadata !{i16*** %3}, i64 0, metadata !42), !dbg !1129
  call void @llvm.dbg.declare(metadata !{i32* %x0}, metadata !48), !dbg !1130
  call void @llvm.dbg.declare(metadata !{i32* %y0}, metadata !49), !dbg !1130
  %4 = load %struct.ImageParameters** @img, align 8, !dbg !1131, !tbaa !1126
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 159, !dbg !1131
  %5 = load i32* %yuv_format, align 4, !dbg !1131, !tbaa !1132
  %cmp = icmp eq i32 %5, 0, !dbg !1131
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !44), !dbg !1133
  %PicSizeInMbs141292 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 110, !dbg !1136
  %6 = load i32* %PicSizeInMbs141292, align 4, !dbg !1136, !tbaa !1132
  %cmp142293 = icmp sgt i32 %6, 0, !dbg !1136
  br i1 %cmp, label %for.cond140.preheader, label %for.cond.preheader, !dbg !1131

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp142293, label %for.body, label %if.end211, !dbg !1133

for.cond140.preheader:                            ; preds = %entry
  br i1 %cmp142293, label %for.body143, label %if.end211, !dbg !1136

for.body:                                         ; preds = %for.cond.preheader, %for.inc137.for.body_crit_edge
  %7 = phi %struct.storable_picture* [ %.pre384, %for.inc137.for.body_crit_edge ], [ %1, %for.cond.preheader ], !dbg !1139
  %8 = phi %struct.ImageParameters* [ %54, %for.inc137.for.body_crit_edge ], [ %4, %for.cond.preheader ]
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %for.inc137.for.body_crit_edge ], [ 0, %for.cond.preheader ]
  %mb_field = getelementptr inbounds %struct.storable_picture* %7, i64 0, i32 31, !dbg !1139
  %9 = load i8** %mb_field, align 8, !dbg !1139, !tbaa !1126
  %arrayidx = getelementptr inbounds i8* %9, i64 %indvars.iv381, !dbg !1139
  %10 = load i8* %arrayidx, align 1, !dbg !1139, !tbaa !1127
  %tobool = icmp eq i8 %10, 0, !dbg !1139
  br i1 %tobool, label %for.inc137, label %if.then4, !dbg !1139

if.then4:                                         ; preds = %for.body
  %11 = trunc i64 %indvars.iv381 to i32, !dbg !1141
  call void @get_mb_pos(i32 %11, i32* %x0, i32* %y0) #7, !dbg !1141
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !47), !dbg !1143
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1145
  %12 = load i32* %x0, align 4, !dbg !1145, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1145
  %13 = load i32* %y0, align 4, !dbg !1145, !tbaa !1132
  %14 = sext i32 %12 to i64, !dbg !1143
  %15 = sext i32 %13 to i64, !dbg !1143
  br label %for.cond8.preheader, !dbg !1143

for.cond8.preheader:                              ; preds = %for.inc20, %if.then4
  %indvars.iv345 = phi i64 [ 0, %if.then4 ], [ %indvars.iv.next346, %for.inc20 ]
  %16 = add nsw i64 %15, %indvars.iv345, !dbg !1145
  %arrayidx14 = getelementptr inbounds i16** %2, i64 %16, !dbg !1145
  %17 = load i16** %arrayidx14, align 8, !dbg !1145, !tbaa !1126
  br label %for.body10, !dbg !1147

for.body10:                                       ; preds = %for.body10, %for.cond8.preheader
  %indvars.iv340 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next341, %for.body10 ]
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1145
  %18 = add nsw i64 %14, %indvars.iv340, !dbg !1145
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1145
  %arrayidx15 = getelementptr inbounds i16* %17, i64 %18, !dbg !1145
  %19 = load i16* %arrayidx15, align 2, !dbg !1145, !tbaa !1148
  %arrayidx19 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv340, i64 %indvars.iv345, !dbg !1145
  store i16 %19, i16* %arrayidx19, align 2, !dbg !1145, !tbaa !1148
  %indvars.iv.next341 = add i64 %indvars.iv340, 1, !dbg !1147
  %lftr.wideiv343 = trunc i64 %indvars.iv.next341 to i32, !dbg !1147
  %exitcond344 = icmp eq i32 %lftr.wideiv343, 16, !dbg !1147
  br i1 %exitcond344, label %for.inc20, label %for.body10, !dbg !1147

for.inc20:                                        ; preds = %for.body10
  %indvars.iv.next346 = add i64 %indvars.iv345, 1, !dbg !1143
  %lftr.wideiv348 = trunc i64 %indvars.iv.next346 to i32, !dbg !1143
  %exitcond349 = icmp eq i32 %lftr.wideiv348, 32, !dbg !1143
  br i1 %exitcond349, label %for.cond26.preheader, label %for.cond8.preheader, !dbg !1143

for.cond26.preheader:                             ; preds = %for.inc20, %for.inc55
  %indvars.iv356 = phi i64 [ %indvars.iv.next357, %for.inc55 ], [ 0, %for.inc20 ]
  %20 = shl nsw i64 %indvars.iv356, 1, !dbg !1149
  %21 = add nsw i64 %15, %20, !dbg !1149
  %arrayidx37 = getelementptr inbounds i16** %2, i64 %21, !dbg !1149
  %22 = load i16** %arrayidx37, align 8, !dbg !1149, !tbaa !1126
  %23 = add nsw i64 %indvars.iv356, 16, !dbg !1153
  %24 = or i64 %20, 1, !dbg !1153
  %25 = add nsw i64 %15, %24, !dbg !1153
  %arrayidx50 = getelementptr inbounds i16** %2, i64 %25, !dbg !1153
  %26 = load i16** %arrayidx50, align 8, !dbg !1153, !tbaa !1126
  br label %for.body28, !dbg !1154

for.body28:                                       ; preds = %for.body28, %for.cond26.preheader
  %indvars.iv350 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next351, %for.body28 ]
  %arrayidx32 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv350, i64 %indvars.iv356, !dbg !1149
  %27 = load i16* %arrayidx32, align 2, !dbg !1149, !tbaa !1148
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1149
  %28 = add nsw i64 %14, %indvars.iv350, !dbg !1149
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1149
  %arrayidx38 = getelementptr inbounds i16* %22, i64 %28, !dbg !1149
  store i16 %27, i16* %arrayidx38, align 2, !dbg !1149, !tbaa !1148
  %arrayidx43 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv350, i64 %23, !dbg !1153
  %29 = load i16* %arrayidx43, align 2, !dbg !1153, !tbaa !1148
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1153
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1153
  %arrayidx51 = getelementptr inbounds i16* %26, i64 %28, !dbg !1153
  store i16 %29, i16* %arrayidx51, align 2, !dbg !1153, !tbaa !1148
  %indvars.iv.next351 = add i64 %indvars.iv350, 1, !dbg !1154
  %lftr.wideiv354 = trunc i64 %indvars.iv.next351 to i32, !dbg !1154
  %exitcond355 = icmp eq i32 %lftr.wideiv354, 16, !dbg !1154
  br i1 %exitcond355, label %for.inc55, label %for.body28, !dbg !1154

for.inc55:                                        ; preds = %for.body28
  %indvars.iv.next357 = add i64 %indvars.iv356, 1, !dbg !1155
  %lftr.wideiv363 = trunc i64 %indvars.iv.next357 to i32, !dbg !1155
  %exitcond364 = icmp eq i32 %lftr.wideiv363, 16, !dbg !1155
  br i1 %exitcond364, label %for.end57, label %for.cond26.preheader, !dbg !1155

for.end57:                                        ; preds = %for.inc55
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1156
  %30 = load %struct.ImageParameters** @img, align 8, !dbg !1156, !tbaa !1126
  %mb_cr_size_x = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 161, !dbg !1156
  %31 = load i32* %mb_cr_size_x, align 4, !dbg !1156, !tbaa !1132
  %div = sdiv i32 16, %31, !dbg !1156
  %div58 = sdiv i32 %12, %div, !dbg !1156
  call void @llvm.dbg.value(metadata !{i32 %div58}, i64 0, metadata !48), !dbg !1156
  store i32 %div58, i32* %x0, align 4, !dbg !1156, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1157
  %mb_cr_size_y = getelementptr inbounds %struct.ImageParameters* %30, i64 0, i32 162, !dbg !1157
  %32 = load i32* %mb_cr_size_y, align 4, !dbg !1157, !tbaa !1132
  %div59 = sdiv i32 16, %32, !dbg !1157
  %div60 = sdiv i32 %13, %div59, !dbg !1157
  call void @llvm.dbg.value(metadata !{i32 %div60}, i64 0, metadata !49), !dbg !1157
  store i32 %div60, i32* %y0, align 4, !dbg !1157, !tbaa !1132
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !50), !dbg !1158
  %33 = load i32* %mb_cr_size_y, align 4, !dbg !1160, !tbaa !1132
  %cmp67304 = icmp sgt i32 %33, 0, !dbg !1160
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1163
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1163
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1167
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1167
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1168
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1168
  %34 = sext i32 %div58 to i64, !dbg !1158
  %35 = sext i32 %div60 to i64, !dbg !1158
  br label %for.cond64.preheader, !dbg !1158

for.cond64.preheader:                             ; preds = %for.inc134, %for.end57
  %indvars.iv377 = phi i64 [ 0, %for.end57 ], [ %indvars.iv.next378, %for.inc134 ]
  br i1 %cmp67304, label %for.cond69.preheader.lr.ph, label %for.inc134, !dbg !1160

for.cond69.preheader.lr.ph:                       ; preds = %for.cond64.preheader
  %36 = load i32* %mb_cr_size_x, align 4, !dbg !1170, !tbaa !1132
  %cmp71300 = icmp sgt i32 %36, 0, !dbg !1170
  %mul66 = shl nsw i32 %33, 1, !dbg !1160
  %arrayidx78 = getelementptr inbounds i16*** %3, i64 %indvars.iv377, !dbg !1168
  br label %for.cond69.preheader, !dbg !1160

for.cond69.preheader:                             ; preds = %for.cond69.preheader.lr.ph, %for.inc88
  %indvars.iv368 = phi i64 [ 0, %for.cond69.preheader.lr.ph ], [ %indvars.iv.next369, %for.inc88 ]
  br i1 %cmp71300, label %for.body72.lr.ph, label %for.inc88, !dbg !1170

for.body72.lr.ph:                                 ; preds = %for.cond69.preheader
  %37 = add nsw i64 %35, %indvars.iv368, !dbg !1168
  %38 = load i16*** %arrayidx78, align 8, !dbg !1168, !tbaa !1126
  %arrayidx79 = getelementptr inbounds i16** %38, i64 %37, !dbg !1168
  %39 = load i16** %arrayidx79, align 8, !dbg !1168, !tbaa !1126
  br label %for.body72, !dbg !1170

for.body72:                                       ; preds = %for.body72.lr.ph, %for.body72
  %indvars.iv365 = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next366, %for.body72 ]
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1168
  %40 = add nsw i64 %34, %indvars.iv365, !dbg !1168
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1168
  %arrayidx80 = getelementptr inbounds i16* %39, i64 %40, !dbg !1168
  %41 = load i16* %arrayidx80, align 2, !dbg !1168, !tbaa !1148
  %arrayidx84 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv365, i64 %indvars.iv368, !dbg !1168
  store i16 %41, i16* %arrayidx84, align 2, !dbg !1168, !tbaa !1148
  %indvars.iv.next366 = add i64 %indvars.iv365, 1, !dbg !1170
  %42 = trunc i64 %indvars.iv.next366 to i32, !dbg !1170
  %cmp71 = icmp slt i32 %42, %36, !dbg !1170
  br i1 %cmp71, label %for.body72, label %for.inc88, !dbg !1170

for.inc88:                                        ; preds = %for.body72, %for.cond69.preheader
  %indvars.iv.next369 = add i64 %indvars.iv368, 1, !dbg !1160
  %43 = trunc i64 %indvars.iv.next369 to i32, !dbg !1160
  %cmp67 = icmp slt i32 %43, %mul66, !dbg !1160
  br i1 %cmp67, label %for.cond69.preheader, label %for.cond91.loopexit, !dbg !1160

for.cond91.loopexit:                              ; preds = %for.inc88
  br i1 %cmp67304, label %for.cond95.preheader.lr.ph, label %for.inc134, !dbg !1171

for.cond95.preheader.lr.ph:                       ; preds = %for.cond91.loopexit
  %44 = load i32* %mb_cr_size_x, align 4, !dbg !1172, !tbaa !1132
  %cmp97307 = icmp sgt i32 %44, 0, !dbg !1172
  %arrayidx109 = getelementptr inbounds i16*** %3, i64 %indvars.iv377, !dbg !1163
  br label %for.cond95.preheader, !dbg !1171

for.cond95.preheader:                             ; preds = %for.cond95.preheader.lr.ph, %for.inc131
  %indvars.iv375 = phi i64 [ 0, %for.cond95.preheader.lr.ph ], [ %indvars.iv.next376, %for.inc131 ]
  br i1 %cmp97307, label %for.body98.lr.ph, label %for.inc131, !dbg !1172

for.body98.lr.ph:                                 ; preds = %for.cond95.preheader
  %45 = trunc i64 %indvars.iv375 to i32, !dbg !1163
  %mul105 = shl nsw i32 %45, 1, !dbg !1163
  %add106 = add nsw i32 %div60, %mul105, !dbg !1163
  %idxprom107 = sext i32 %add106 to i64, !dbg !1163
  %46 = load i16*** %arrayidx109, align 8, !dbg !1163, !tbaa !1126
  %arrayidx110 = getelementptr inbounds i16** %46, i64 %idxprom107, !dbg !1163
  %47 = load i16** %arrayidx110, align 8, !dbg !1163, !tbaa !1126
  %add113 = add nsw i32 %33, %45, !dbg !1167
  %idxprom114 = sext i32 %add113 to i64, !dbg !1167
  %add121286 = or i32 %mul105, 1, !dbg !1167
  %add122 = add nsw i32 %div60, %add121286, !dbg !1167
  %idxprom123 = sext i32 %add122 to i64, !dbg !1167
  %arrayidx126 = getelementptr inbounds i16** %46, i64 %idxprom123, !dbg !1167
  %48 = load i16** %arrayidx126, align 8, !dbg !1167, !tbaa !1126
  br label %for.body98, !dbg !1172

for.body98:                                       ; preds = %for.body98.lr.ph, %for.body98
  %indvars.iv371 = phi i64 [ 0, %for.body98.lr.ph ], [ %indvars.iv.next372, %for.body98 ]
  %arrayidx102 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv371, i64 %indvars.iv375, !dbg !1163
  %49 = load i16* %arrayidx102, align 2, !dbg !1163, !tbaa !1148
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1163
  %50 = add nsw i64 %34, %indvars.iv371, !dbg !1163
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1163
  %arrayidx111 = getelementptr inbounds i16* %47, i64 %50, !dbg !1163
  store i16 %49, i16* %arrayidx111, align 2, !dbg !1163, !tbaa !1148
  %arrayidx117 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv371, i64 %idxprom114, !dbg !1167
  %51 = load i16* %arrayidx117, align 2, !dbg !1167, !tbaa !1148
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1167
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1167
  %arrayidx127 = getelementptr inbounds i16* %48, i64 %50, !dbg !1167
  store i16 %51, i16* %arrayidx127, align 2, !dbg !1167, !tbaa !1148
  %indvars.iv.next372 = add i64 %indvars.iv371, 1, !dbg !1172
  %52 = trunc i64 %indvars.iv.next372 to i32, !dbg !1172
  %cmp97 = icmp slt i32 %52, %44, !dbg !1172
  br i1 %cmp97, label %for.body98, label %for.inc131, !dbg !1172

for.inc131:                                       ; preds = %for.body98, %for.cond95.preheader
  %indvars.iv.next376 = add i64 %indvars.iv375, 1, !dbg !1171
  %53 = trunc i64 %indvars.iv.next376 to i32, !dbg !1171
  %cmp93 = icmp slt i32 %53, %33, !dbg !1171
  br i1 %cmp93, label %for.cond95.preheader, label %for.inc134, !dbg !1171

for.inc134:                                       ; preds = %for.cond64.preheader, %for.inc131, %for.cond91.loopexit
  %indvars.iv.next378 = add i64 %indvars.iv377, 1, !dbg !1158
  %lftr.wideiv379 = trunc i64 %indvars.iv.next378 to i32, !dbg !1158
  %exitcond380 = icmp eq i32 %lftr.wideiv379, 2, !dbg !1158
  br i1 %exitcond380, label %for.inc137, label %for.cond64.preheader, !dbg !1158

for.inc137:                                       ; preds = %for.inc134, %for.body
  %54 = phi %struct.ImageParameters* [ %8, %for.body ], [ %30, %for.inc134 ], !dbg !1133
  %indvars.iv.next382 = add i64 %indvars.iv381, 2, !dbg !1133
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters* %54, i64 0, i32 110, !dbg !1133
  %55 = load i32* %PicSizeInMbs, align 4, !dbg !1133, !tbaa !1132
  %56 = trunc i64 %indvars.iv.next382 to i32, !dbg !1133
  %cmp3 = icmp slt i32 %56, %55, !dbg !1133
  br i1 %cmp3, label %for.inc137.for.body_crit_edge, label %if.end211, !dbg !1133

for.inc137.for.body_crit_edge:                    ; preds = %for.inc137
  %.pre384 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1139, !tbaa !1126
  br label %for.body, !dbg !1133

for.body143:                                      ; preds = %for.cond140.preheader, %for.inc208.for.body143_crit_edge
  %57 = phi %struct.storable_picture* [ %.pre383, %for.inc208.for.body143_crit_edge ], [ %1, %for.cond140.preheader ], !dbg !1173
  %58 = phi %struct.ImageParameters* [ %80, %for.inc208.for.body143_crit_edge ], [ %4, %for.cond140.preheader ]
  %indvars.iv338 = phi i64 [ %indvars.iv.next339, %for.inc208.for.body143_crit_edge ], [ 0, %for.cond140.preheader ]
  %mb_field145 = getelementptr inbounds %struct.storable_picture* %57, i64 0, i32 31, !dbg !1173
  %59 = load i8** %mb_field145, align 8, !dbg !1173, !tbaa !1126
  %arrayidx146 = getelementptr inbounds i8* %59, i64 %indvars.iv338, !dbg !1173
  %60 = load i8* %arrayidx146, align 1, !dbg !1173, !tbaa !1127
  %tobool147 = icmp eq i8 %60, 0, !dbg !1173
  br i1 %tobool147, label %for.inc208, label %if.then148, !dbg !1173

if.then148:                                       ; preds = %for.body143
  %61 = trunc i64 %indvars.iv338 to i32, !dbg !1175
  call void @get_mb_pos(i32 %61, i32* %x0, i32* %y0) #7, !dbg !1175
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !47), !dbg !1177
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1179
  %62 = load i32* %x0, align 4, !dbg !1179, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1179
  %63 = load i32* %y0, align 4, !dbg !1179, !tbaa !1132
  %64 = sext i32 %62 to i64, !dbg !1177
  %65 = sext i32 %63 to i64, !dbg !1177
  br label %for.cond152.preheader, !dbg !1177

for.cond152.preheader:                            ; preds = %for.inc168, %if.then148
  %indvars.iv318 = phi i64 [ 0, %if.then148 ], [ %indvars.iv.next319, %for.inc168 ]
  %66 = add nsw i64 %65, %indvars.iv318, !dbg !1179
  %arrayidx159 = getelementptr inbounds i16** %2, i64 %66, !dbg !1179
  %67 = load i16** %arrayidx159, align 8, !dbg !1179, !tbaa !1126
  br label %for.body154, !dbg !1181

for.body154:                                      ; preds = %for.body154, %for.cond152.preheader
  %indvars.iv = phi i64 [ 0, %for.cond152.preheader ], [ %indvars.iv.next, %for.body154 ]
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1179
  %68 = add nsw i64 %64, %indvars.iv, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1179
  %arrayidx160 = getelementptr inbounds i16* %67, i64 %68, !dbg !1179
  %69 = load i16* %arrayidx160, align 2, !dbg !1179, !tbaa !1148
  %arrayidx164 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv, i64 %indvars.iv318, !dbg !1179
  store i16 %69, i16* %arrayidx164, align 2, !dbg !1179, !tbaa !1148
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1181
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1181
  %exitcond = icmp eq i32 %lftr.wideiv, 16, !dbg !1181
  br i1 %exitcond, label %for.inc168, label %for.body154, !dbg !1181

for.inc168:                                       ; preds = %for.body154
  %indvars.iv.next319 = add i64 %indvars.iv318, 1, !dbg !1177
  %lftr.wideiv321 = trunc i64 %indvars.iv.next319 to i32, !dbg !1177
  %exitcond322 = icmp eq i32 %lftr.wideiv321, 32, !dbg !1177
  br i1 %exitcond322, label %for.cond174.preheader, label %for.cond152.preheader, !dbg !1177

for.cond174.preheader:                            ; preds = %for.inc168, %for.inc204
  %indvars.iv329 = phi i64 [ %indvars.iv.next330, %for.inc204 ], [ 0, %for.inc168 ]
  %70 = shl nsw i64 %indvars.iv329, 1, !dbg !1182
  %71 = add nsw i64 %65, %70, !dbg !1182
  %arrayidx186 = getelementptr inbounds i16** %2, i64 %71, !dbg !1182
  %72 = load i16** %arrayidx186, align 8, !dbg !1182, !tbaa !1126
  %73 = add nsw i64 %indvars.iv329, 16, !dbg !1186
  %74 = or i64 %70, 1, !dbg !1186
  %75 = add nsw i64 %65, %74, !dbg !1186
  %arrayidx199 = getelementptr inbounds i16** %2, i64 %75, !dbg !1186
  %76 = load i16** %arrayidx199, align 8, !dbg !1186, !tbaa !1126
  br label %for.body176, !dbg !1187

for.body176:                                      ; preds = %for.body176, %for.cond174.preheader
  %indvars.iv323 = phi i64 [ 0, %for.cond174.preheader ], [ %indvars.iv.next324, %for.body176 ]
  %arrayidx180 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv323, i64 %indvars.iv329, !dbg !1182
  %77 = load i16* %arrayidx180, align 2, !dbg !1182, !tbaa !1148
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1182
  %78 = add nsw i64 %64, %indvars.iv323, !dbg !1182
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1182
  %arrayidx187 = getelementptr inbounds i16* %72, i64 %78, !dbg !1182
  store i16 %77, i16* %arrayidx187, align 2, !dbg !1182, !tbaa !1148
  %arrayidx192 = getelementptr inbounds [16 x [32 x i16]]* %temp, i64 0, i64 %indvars.iv323, i64 %73, !dbg !1186
  %79 = load i16* %arrayidx192, align 2, !dbg !1186, !tbaa !1148
  call void @llvm.dbg.value(metadata !{i32* %x0}, i64 0, metadata !48), !dbg !1186
  call void @llvm.dbg.value(metadata !{i32* %y0}, i64 0, metadata !49), !dbg !1186
  %arrayidx200 = getelementptr inbounds i16* %76, i64 %78, !dbg !1186
  store i16 %79, i16* %arrayidx200, align 2, !dbg !1186, !tbaa !1148
  %indvars.iv.next324 = add i64 %indvars.iv323, 1, !dbg !1187
  %lftr.wideiv327 = trunc i64 %indvars.iv.next324 to i32, !dbg !1187
  %exitcond328 = icmp eq i32 %lftr.wideiv327, 16, !dbg !1187
  br i1 %exitcond328, label %for.inc204, label %for.body176, !dbg !1187

for.inc204:                                       ; preds = %for.body176
  %indvars.iv.next330 = add i64 %indvars.iv329, 1, !dbg !1188
  %lftr.wideiv336 = trunc i64 %indvars.iv.next330 to i32, !dbg !1188
  %exitcond337 = icmp eq i32 %lftr.wideiv336, 16, !dbg !1188
  br i1 %exitcond337, label %for.inc208.loopexit, label %for.cond174.preheader, !dbg !1188

for.inc208.loopexit:                              ; preds = %for.inc204
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1136, !tbaa !1126
  br label %for.inc208

for.inc208:                                       ; preds = %for.inc208.loopexit, %for.body143
  %80 = phi %struct.ImageParameters* [ %.pre, %for.inc208.loopexit ], [ %58, %for.body143 ], !dbg !1136
  %indvars.iv.next339 = add i64 %indvars.iv338, 2, !dbg !1136
  %PicSizeInMbs141 = getelementptr inbounds %struct.ImageParameters* %80, i64 0, i32 110, !dbg !1136
  %81 = load i32* %PicSizeInMbs141, align 4, !dbg !1136, !tbaa !1132
  %82 = trunc i64 %indvars.iv.next339 to i32, !dbg !1136
  %cmp142 = icmp slt i32 %82, %81, !dbg !1136
  br i1 %cmp142, label %for.inc208.for.body143_crit_edge, label %if.end211, !dbg !1136

for.inc208.for.body143_crit_edge:                 ; preds = %for.inc208
  %.pre383 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1173, !tbaa !1126
  br label %for.body143, !dbg !1136

if.end211:                                        ; preds = %for.cond.preheader, %for.inc137, %for.cond140.preheader, %for.inc208
  call void @llvm.lifetime.end(i64 1024, i8* %0) #1, !dbg !1189
  ret void, !dbg !1189
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare void @get_mb_pos(i32, i32*, i32*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @code_a_picture(%struct.Picture* %pic) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.Picture* %pic}, i64 0, metadata !249), !dbg !1190
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !250), !dbg !1191
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !251), !dbg !1192
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1193, !tbaa !1126
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 49, !dbg !1193
  store %struct.Picture* %pic, %struct.Picture** %currentPicture, align 8, !dbg !1193, !tbaa !1126
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1194, !tbaa !1126
  %number = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 0, !dbg !1194
  %2 = load i32* %number, align 4, !dbg !1194, !tbaa !1132
  %3 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1194, !tbaa !1132
  %tobool = icmp eq i32 %2, %3, !dbg !1194
  br i1 %tobool, label %land.lhs.true, label %lor.rhs, !dbg !1194

land.lhs.true:                                    ; preds = %entry
  %structure = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 7, !dbg !1194
  %4 = load i32* %structure, align 4, !dbg !1194, !tbaa !1132
  %cmp = icmp eq i32 %4, 2, !dbg !1194
  br i1 %cmp, label %lor.rhs, label %lor.end, !dbg !1194

lor.rhs:                                          ; preds = %entry, %land.lhs.true
  %5 = load %struct.InputParameters** @input, align 8, !dbg !1194, !tbaa !1126
  %idr_enable = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 32, !dbg !1194
  %6 = load i32* %idr_enable, align 4, !dbg !1194, !tbaa !1132
  %tobool1 = icmp eq i32 %6, 0, !dbg !1194
  br i1 %tobool1, label %lor.end, label %land.lhs.true2, !dbg !1194

land.lhs.true2:                                   ; preds = %lor.rhs
  %type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6, !dbg !1194
  %7 = load i32* %type, align 4, !dbg !1194, !tbaa !1132
  %.off = add i32 %7, -2, !dbg !1194
  %switch = icmp ult i32 %.off, 3, !dbg !1194
  br i1 %switch, label %land.rhs, label %lor.end, !dbg !1194

land.rhs:                                         ; preds = %land.lhs.true2
  %structure9 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 7, !dbg !1194
  %8 = load i32* %structure9, align 4, !dbg !1194, !tbaa !1132
  %lnot = icmp ne i32 %8, 2, !dbg !1194
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true2, %lor.rhs, %land.rhs, %land.lhs.true
  %9 = phi i1 [ true, %land.lhs.true ], [ false, %lor.rhs ], [ %lnot, %land.rhs ], [ false, %land.lhs.true2 ]
  %lor.ext = zext i1 %9 to i32
  %currentPicture11 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 49
  %10 = load %struct.Picture** %currentPicture11, align 8, !tbaa !1126
  %idr_flag = getelementptr inbounds %struct.Picture* %10, i64 0, i32 1
  store i32 %lor.ext, i32* %idr_flag, align 4, !tbaa !1132
  %no_slices = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 0, !dbg !1195
  store i32 0, i32* %no_slices, align 4, !dbg !1195, !tbaa !1132
  %distortion_y = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 4, !dbg !1196
  store float 0.000000e+00, float* %distortion_y, align 4, !dbg !1196, !tbaa !1197
  %distortion_v = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 6, !dbg !1196
  store float 0.000000e+00, float* %distortion_v, align 4, !dbg !1196, !tbaa !1197
  %distortion_u = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 5, !dbg !1196
  store float 0.000000e+00, float* %distortion_u, align 4, !dbg !1196, !tbaa !1197
  tail call void (...)* @RandomIntraNewPicture() #7, !dbg !1198
  %11 = load %struct.ImageParameters** @img, align 8, !dbg !1199, !tbaa !1126
  %slice_group_change_cycle = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 147, !dbg !1199
  store i32 1, i32* %slice_group_change_cycle, align 4, !dbg !1199, !tbaa !1132
  %12 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1200, !tbaa !1126
  %13 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1200, !tbaa !1126
  %call = tail call i32 @FmoInit(%struct.ImageParameters* %11, %struct.pic_parameter_set_rbsp_t* %12, %struct.seq_parameter_set_rbsp_t* %13) #7, !dbg !1200
  %call12 = tail call i32 (...)* @FmoStartPicture() #7, !dbg !1201
  tail call void (...)* @CalculateQuantParam() #7, !dbg !1202
  tail call void (...)* @CalculateOffsetParam() #7, !dbg !1203
  %14 = load %struct.InputParameters** @input, align 8, !dbg !1204, !tbaa !1126
  %AllowTransform8x8 = getelementptr inbounds %struct.InputParameters* %14, i64 0, i32 123, !dbg !1204
  %15 = load i32* %AllowTransform8x8, align 4, !dbg !1204, !tbaa !1132
  %tobool13 = icmp eq i32 %15, 0, !dbg !1204
  br i1 %tobool13, label %while.cond.preheader, label %if.then, !dbg !1204

if.then:                                          ; preds = %lor.end
  tail call void (...)* @CalculateQuant8Param() #7, !dbg !1205
  tail call void (...)* @CalculateOffset8Param() #7, !dbg !1207
  br label %while.cond.preheader, !dbg !1208

while.cond.preheader:                             ; preds = %if.then, %lor.end
  %16 = load %struct.ImageParameters** @img, align 8, !dbg !1209, !tbaa !1126
  %total_number_mb50 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 4, !dbg !1209
  %17 = load i32* %total_number_mb50, align 4, !dbg !1209, !tbaa !1132
  %cmp1451 = icmp sgt i32 %17, 0, !dbg !1209
  br i1 %cmp1451, label %while.cond15.preheader, label %while.end22, !dbg !1209

while.cond15.preheader:                           ; preds = %while.cond.preheader, %while.end
  %SliceGroup.053 = phi i32 [ %inc21, %while.end ], [ 0, %while.cond.preheader ]
  %NumberOfCodedMBs.052 = phi i32 [ %NumberOfCodedMBs.1.lcssa, %while.end ], [ 0, %while.cond.preheader ]
  %call1647 = tail call i32 @FmoSliceGroupCompletelyCoded(i32 %SliceGroup.053) #7, !dbg !1210
  %lnot1848 = icmp eq i32 %call1647, 0, !dbg !1210
  br i1 %lnot1848, label %while.body19, label %while.end, !dbg !1210

while.body19:                                     ; preds = %while.cond15.preheader, %while.body19
  %NumberOfCodedMBs.149 = phi i32 [ %add, %while.body19 ], [ %NumberOfCodedMBs.052, %while.cond15.preheader ]
  %call20 = tail call i32 @encode_one_slice(i32 %SliceGroup.053, %struct.Picture* %pic) #7, !dbg !1212
  %add = add nsw i32 %call20, %NumberOfCodedMBs.149, !dbg !1212
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !250), !dbg !1212
  %18 = load %struct.ImageParameters** @img, align 8, !dbg !1214, !tbaa !1126
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 3, !dbg !1214
  %19 = load i32* %current_mb_nr, align 4, !dbg !1214, !tbaa !1132
  tail call void @FmoSetLastMacroblockInSlice(i32 %19) #7, !dbg !1214
  %20 = load %struct.ImageParameters** @img, align 8, !dbg !1215, !tbaa !1126
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 5, !dbg !1215
  %21 = load i32* %current_slice_nr, align 4, !dbg !1215, !tbaa !1132
  %inc = add nsw i32 %21, 1, !dbg !1215
  store i32 %inc, i32* %current_slice_nr, align 4, !dbg !1215, !tbaa !1132
  %22 = load %struct.StatParameters** @stats, align 8, !dbg !1216, !tbaa !1126
  %bit_slice = getelementptr inbounds %struct.StatParameters* %22, i64 0, i32 6, !dbg !1216
  store i32 0, i32* %bit_slice, align 4, !dbg !1216, !tbaa !1132
  %call16 = tail call i32 @FmoSliceGroupCompletelyCoded(i32 %SliceGroup.053) #7, !dbg !1210
  %lnot18 = icmp eq i32 %call16, 0, !dbg !1210
  br i1 %lnot18, label %while.body19, label %while.end, !dbg !1210

while.end:                                        ; preds = %while.body19, %while.cond15.preheader
  %NumberOfCodedMBs.1.lcssa = phi i32 [ %NumberOfCodedMBs.052, %while.cond15.preheader ], [ %add, %while.body19 ]
  %inc21 = add nsw i32 %SliceGroup.053, 1, !dbg !1217
  tail call void @llvm.dbg.value(metadata !{i32 %inc21}, i64 0, metadata !251), !dbg !1217
  %23 = load %struct.ImageParameters** @img, align 8, !dbg !1209, !tbaa !1126
  %total_number_mb = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 4, !dbg !1209
  %24 = load i32* %total_number_mb, align 4, !dbg !1209, !tbaa !1132
  %cmp14 = icmp slt i32 %NumberOfCodedMBs.1.lcssa, %24, !dbg !1209
  br i1 %cmp14, label %while.cond15.preheader, label %while.end22, !dbg !1209

while.end22:                                      ; preds = %while.end, %while.cond.preheader
  %call23 = tail call i32 (...)* @FmoEndPicture() #7, !dbg !1218
  %25 = load %struct.InputParameters** @input, align 8, !dbg !1219, !tbaa !1126
  %rdopt = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 85, !dbg !1219
  %26 = load i32* %rdopt, align 4, !dbg !1219, !tbaa !1132
  %cmp24 = icmp eq i32 %26, 2, !dbg !1219
  br i1 %cmp24, label %land.lhs.true25, label %if.end31, !dbg !1219

land.lhs.true25:                                  ; preds = %while.end22
  %27 = load %struct.ImageParameters** @img, align 8, !dbg !1219, !tbaa !1126
  %type26 = getelementptr inbounds %struct.ImageParameters* %27, i64 0, i32 6, !dbg !1219
  %28 = load i32* %type26, align 4, !dbg !1219, !tbaa !1132
  %cmp27 = icmp eq i32 %28, 1, !dbg !1219
  br i1 %cmp27, label %if.end31, label %for.cond.preheader, !dbg !1219

for.cond.preheader:                               ; preds = %land.lhs.true25
  %NoOfDecoders44 = getelementptr inbounds %struct.InputParameters* %25, i64 0, i32 97, !dbg !1220
  %29 = load i32* %NoOfDecoders44, align 4, !dbg !1220, !tbaa !1132
  %cmp2945 = icmp sgt i32 %29, 0, !dbg !1220
  br i1 %cmp2945, label %for.body, label %if.end31, !dbg !1220

for.body:                                         ; preds = %for.cond.preheader, %for.body.for.body_crit_edge
  %30 = phi %struct.ImageParameters* [ %.pre, %for.body.for.body_crit_edge ], [ %27, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader ]
  %31 = load %struct.Decoders** @decs, align 8, !dbg !1222, !tbaa !1126
  %decY_best = getelementptr inbounds %struct.Decoders* %31, i64 0, i32 3, !dbg !1222
  %32 = load i16**** %decY_best, align 8, !dbg !1222, !tbaa !1126
  %arrayidx = getelementptr inbounds i16*** %32, i64 %indvars.iv, !dbg !1222
  %33 = load i16*** %arrayidx, align 8, !dbg !1222, !tbaa !1126
  tail call void @DeblockFrame(%struct.ImageParameters* %30, i16** %33, i16*** null) #7, !dbg !1222
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1220
  %34 = load %struct.InputParameters** @input, align 8, !dbg !1220, !tbaa !1126
  %NoOfDecoders = getelementptr inbounds %struct.InputParameters* %34, i64 0, i32 97, !dbg !1220
  %35 = load i32* %NoOfDecoders, align 4, !dbg !1220, !tbaa !1132
  %36 = trunc i64 %indvars.iv.next to i32, !dbg !1220
  %cmp29 = icmp slt i32 %36, %35, !dbg !1220
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %if.end31, !dbg !1220

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1222, !tbaa !1126
  br label %for.body, !dbg !1220

if.end31:                                         ; preds = %for.cond.preheader, %for.body, %while.end22, %land.lhs.true25
  %37 = load %struct.ImageParameters** @img, align 8, !dbg !1223, !tbaa !1126
  %38 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1223, !tbaa !1126
  %imgY = getelementptr inbounds %struct.storable_picture* %38, i64 0, i32 25, !dbg !1223
  %39 = load i16*** %imgY, align 8, !dbg !1223, !tbaa !1126
  %imgUV = getelementptr inbounds %struct.storable_picture* %38, i64 0, i32 30, !dbg !1223
  %40 = load i16**** %imgUV, align 8, !dbg !1223, !tbaa !1126
  tail call void @DeblockFrame(%struct.ImageParameters* %37, i16** %39, i16*** %40) #7, !dbg !1223
  %41 = load %struct.ImageParameters** @img, align 8, !dbg !1224, !tbaa !1126
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %41, i64 0, i32 90, !dbg !1224
  %42 = load i32* %MbaffFrameFlag, align 4, !dbg !1224, !tbaa !1132
  %tobool32 = icmp eq i32 %42, 0, !dbg !1224
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !1224

if.then33:                                        ; preds = %if.end31
  tail call void @MbAffPostProc() #8, !dbg !1225
  br label %if.end34, !dbg !1225

if.end34:                                         ; preds = %if.end31, %if.then33
  ret void, !dbg !1226
}

; Function Attrs: optsize
declare void @RandomIntraNewPicture(...) #3

; Function Attrs: optsize
declare i32 @FmoInit(%struct.ImageParameters*, %struct.pic_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t*) #3

; Function Attrs: optsize
declare i32 @FmoStartPicture(...) #3

; Function Attrs: optsize
declare void @CalculateQuantParam(...) #3

; Function Attrs: optsize
declare void @CalculateOffsetParam(...) #3

; Function Attrs: optsize
declare void @CalculateQuant8Param(...) #3

; Function Attrs: optsize
declare void @CalculateOffset8Param(...) #3

; Function Attrs: optsize
declare i32 @FmoSliceGroupCompletelyCoded(i32) #3

; Function Attrs: optsize
declare i32 @encode_one_slice(i32, %struct.Picture*) #3

; Function Attrs: optsize
declare void @FmoSetLastMacroblockInSlice(i32) #3

; Function Attrs: optsize
declare i32 @FmoEndPicture(...) #3

; Function Attrs: optsize
declare void @DeblockFrame(%struct.ImageParameters*, i16**, i16***) #3

; Function Attrs: nounwind optsize uwtable
define i32 @encode_one_frame() #0 {
entry:
  %ltime1 = alloca i64, align 8
  %ltime2 = alloca i64, align 8
  %tstruct1 = alloca %struct.timeb, align 8
  %tstruct2 = alloca %struct.timeb, align 8
  call void @llvm.dbg.declare(metadata !{i64* %ltime1}, metadata !258), !dbg !1227
  call void @llvm.dbg.declare(metadata !{i64* %ltime2}, metadata !262), !dbg !1228
  call void @llvm.dbg.declare(metadata !{%struct.timeb* %tstruct1}, metadata !263), !dbg !1229
  call void @llvm.dbg.declare(metadata !{%struct.timeb* %tstruct2}, metadata !272), !dbg !1230
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !274), !dbg !1231
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !275), !dbg !1231
  call void @llvm.dbg.value(metadata !1232, i64 0, metadata !276), !dbg !1233
  call void @llvm.dbg.value(metadata !1232, i64 0, metadata !277), !dbg !1233
  call void @llvm.dbg.value(metadata !1232, i64 0, metadata !278), !dbg !1233
  call void @llvm.dbg.value(metadata !1232, i64 0, metadata !279), !dbg !1233
  call void @llvm.dbg.value(metadata !1232, i64 0, metadata !280), !dbg !1234
  call void @llvm.dbg.value(metadata !1232, i64 0, metadata !281), !dbg !1234
  call void @llvm.dbg.value(metadata !1232, i64 0, metadata !282), !dbg !1234
  call void @llvm.dbg.value(metadata !1232, i64 0, metadata !283), !dbg !1234
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !285), !dbg !1235
  store i32 0, i32* @me_time, align 4, !dbg !1236, !tbaa !1132
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1237, !tbaa !1126
  %rd_pass = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 58, !dbg !1237
  store i32 0, i32* %rd_pass, align 4, !dbg !1237, !tbaa !1132
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture, align 8, !dbg !1238, !tbaa !1126
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture2, align 8, !dbg !1239, !tbaa !1126
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture3, align 8, !dbg !1240, !tbaa !1126
  %call = call i32 @ftime(%struct.timeb* %tstruct1) #7, !dbg !1241
  %call1 = call i64 @time(i64* %ltime1) #7, !dbg !1242
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1243, !tbaa !1126
  %write_macroblock = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 140, !dbg !1243
  store i32 0, i32* %write_macroblock, align 4, !dbg !1243, !tbaa !1132
  %2 = load %struct.InputParameters** @input, align 8, !dbg !1244, !tbaa !1126
  %ResendPPS = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 14, !dbg !1244
  %3 = load i32* %ResendPPS, align 4, !dbg !1244, !tbaa !1132
  %tobool = icmp eq i32 %3, 0, !dbg !1244
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1244

land.lhs.true:                                    ; preds = %entry
  %number = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 0, !dbg !1244
  %4 = load i32* %number, align 4, !dbg !1244, !tbaa !1132
  %cmp = icmp eq i32 %4, 0, !dbg !1244
  br i1 %cmp, label %if.end, label %if.then, !dbg !1244

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i32 @write_PPS(i32 0, i32 0) #7, !dbg !1245
  %5 = load %struct.StatParameters** @stats, align 8, !dbg !1245, !tbaa !1126
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 33, !dbg !1245
  store i32 %call2, i32* %bit_ctr_parametersets_n, align 4, !dbg !1245, !tbaa !1132
  %bit_ctr_parametersets = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 32, !dbg !1247
  %6 = load i32* %bit_ctr_parametersets, align 4, !dbg !1247, !tbaa !1132
  %add = add nsw i32 %6, %call2, !dbg !1247
  store i32 %add, i32* %bit_ctr_parametersets, align 4, !dbg !1247, !tbaa !1132
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1248, !tbaa !1126
  br label %if.end, !dbg !1250

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %7 = phi %struct.ImageParameters* [ %.pre, %if.then ], [ %1, %entry ], [ %1, %land.lhs.true ]
  %8 = load i16*** @imgY_org_frm, align 8, !dbg !1251, !tbaa !1126
  store i16** %8, i16*** @imgY_org, align 8, !dbg !1251, !tbaa !1126
  %9 = load i16**** @imgUV_org_frm, align 8, !dbg !1253, !tbaa !1126
  store i16*** %9, i16**** @imgUV_org, align 8, !dbg !1253, !tbaa !1126
  %10 = load i32** @last_P_no_frm, align 8, !dbg !1254, !tbaa !1126
  store i32* %10, i32** @last_P_no, align 8, !dbg !1254, !tbaa !1126
  %current_mb_nr.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 3, !dbg !1248
  store i32 0, i32* %current_mb_nr.i, align 4, !dbg !1248, !tbaa !1132
  %current_slice_nr.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 5, !dbg !1255
  store i32 0, i32* %current_slice_nr.i, align 4, !dbg !1255, !tbaa !1132
  %11 = load %struct.StatParameters** @stats, align 8, !dbg !1256, !tbaa !1126
  %bit_slice.i = getelementptr inbounds %struct.StatParameters* %11, i64 0, i32 6, !dbg !1256
  store i32 0, i32* %bit_slice.i, align 4, !dbg !1256, !tbaa !1132
  %mb_x.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 29, !dbg !1257
  %block_c_x.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 24, !dbg !1258
  store i32 0, i32* %block_c_x.i, align 4, !dbg !1258, !tbaa !1132
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !1259) #1, !dbg !1260
  %width247.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 13, !dbg !1260
  %12 = bitcast i32* %mb_x.i to i8*, !dbg !1260
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 32, i32 4, i1 false) #1, !dbg !1257
  %13 = load i32* %width247.i, align 4, !dbg !1260, !tbaa !1132
  %div248.i = sdiv i32 %13, 16, !dbg !1260
  %height249.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 15, !dbg !1260
  %14 = load i32* %height249.i, align 4, !dbg !1260, !tbaa !1132
  %div1250.i = sdiv i32 %14, 16, !dbg !1260
  %mul251.i = mul nsw i32 %div1250.i, %div248.i, !dbg !1260
  %cmp252.i = icmp sgt i32 %mul251.i, 0, !dbg !1260
  br i1 %cmp252.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !1260

for.body.lr.ph.i:                                 ; preds = %if.end
  %mb_data.phi.trans.insert.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 51
  %.pre.i = load %struct.macroblock** %mb_data.phi.trans.insert.i, align 8, !dbg !1262, !tbaa !1126
  br label %for.body.i, !dbg !1260

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv256.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next257.i, %for.body.i ]
  %slice_nr.i = getelementptr inbounds %struct.macroblock* %.pre.i, i64 %indvars.iv256.i, i32 1, !dbg !1262
  store i32 -1, i32* %slice_nr.i, align 4, !dbg !1262, !tbaa !1132
  %indvars.iv.next257.i = add i64 %indvars.iv256.i, 1, !dbg !1260
  %15 = load i32* %width247.i, align 4, !dbg !1260, !tbaa !1132
  %div.i = sdiv i32 %15, 16, !dbg !1260
  %16 = load i32* %height249.i, align 4, !dbg !1260, !tbaa !1132
  %div1.i = sdiv i32 %16, 16, !dbg !1260
  %mul.i = mul nsw i32 %div1.i, %div.i, !dbg !1260
  %17 = trunc i64 %indvars.iv.next257.i to i32, !dbg !1260
  %cmp.i = icmp slt i32 %17, %mul.i, !dbg !1260
  br i1 %cmp.i, label %for.body.i, label %for.end.i, !dbg !1260

for.end.i:                                        ; preds = %for.body.i, %if.end
  %b_frame_to_code.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 67, !dbg !1263
  %18 = load i32* %b_frame_to_code.i, align 4, !dbg !1263, !tbaa !1132
  %cmp2.i = icmp eq i32 %18, 0, !dbg !1263
  br i1 %cmp2.i, label %if.then.i, label %if.else63.i, !dbg !1263

if.then.i:                                        ; preds = %for.end.i
  %19 = load i32* @start_tr_in_this_IGOP, align 4, !dbg !1264, !tbaa !1132
  %number.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 0, !dbg !1264
  %20 = load i32* %number.i, align 4, !dbg !1264, !tbaa !1132
  %21 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1264, !tbaa !1132
  %sub.i309 = sub nsw i32 %20, %21, !dbg !1264
  %22 = load %struct.InputParameters** @input, align 8, !dbg !1264, !tbaa !1126
  %jumpd.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 5, !dbg !1264
  %23 = load i32* %jumpd.i, align 4, !dbg !1264, !tbaa !1132
  %add.i = add nsw i32 %23, 1, !dbg !1264
  %mul3.i = mul nsw i32 %add.i, %sub.i309, !dbg !1264
  %add4.i = add nsw i32 %mul3.i, %19, !dbg !1264
  %tr.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 55, !dbg !1264
  store i32 %add4.i, i32* %tr.i, align 4, !dbg !1264, !tbaa !1132
  %imgtr_next_P_frm.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 61, !dbg !1266
  %24 = load i32* %imgtr_next_P_frm.i, align 4, !dbg !1266, !tbaa !1132
  %imgtr_last_P_frm.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 62, !dbg !1266
  store i32 %24, i32* %imgtr_last_P_frm.i, align 4, !dbg !1266, !tbaa !1132
  store i32 %add4.i, i32* %imgtr_next_P_frm.i, align 4, !dbg !1267, !tbaa !1132
  %last_frame.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 79, !dbg !1268
  %25 = load i32* %last_frame.i, align 4, !dbg !1268, !tbaa !1132
  %tobool.i310 = icmp eq i32 %25, 0, !dbg !1268
  br i1 %tobool.i310, label %if.end.i, label %land.lhs.true.i, !dbg !1268

land.lhs.true.i:                                  ; preds = %if.then.i
  %add8.i = add nsw i32 %20, 1, !dbg !1268
  %no_frames.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 2, !dbg !1268
  %26 = load i32* %no_frames.i, align 4, !dbg !1268, !tbaa !1132
  %cmp9.i = icmp eq i32 %add8.i, %26, !dbg !1268
  br i1 %cmp9.i, label %if.then10.i, label %if.end.i, !dbg !1268

if.then10.i:                                      ; preds = %land.lhs.true.i
  store i32 %25, i32* %tr.i, align 4, !dbg !1269, !tbaa !1132
  br label %if.end.i, !dbg !1269

if.end.i:                                         ; preds = %if.then10.i, %land.lhs.true.i, %if.then.i
  %27 = phi i32 [ %add4.i, %if.then.i ], [ %25, %if.then10.i ], [ %add4.i, %land.lhs.true.i ]
  %28 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1270, !tbaa !1132
  %cmp15.i = icmp eq i32 %20, %28, !dbg !1270
  br i1 %cmp15.i, label %if.end20.i, label %land.lhs.true16.i, !dbg !1270

land.lhs.true16.i:                                ; preds = %if.end.i
  %successive_Bframe.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 34, !dbg !1270
  %29 = load i32* %successive_Bframe.i, align 4, !dbg !1270, !tbaa !1132
  %cmp17.i = icmp eq i32 %29, 0, !dbg !1270
  br i1 %cmp17.i, label %if.end20.i, label %if.then18.i, !dbg !1270

if.then18.i:                                      ; preds = %land.lhs.true16.i
  store i32 %27, i32* @nextP_tr_frm, align 4, !dbg !1271, !tbaa !1132
  br label %if.end20.i, !dbg !1271

if.end20.i:                                       ; preds = %if.then18.i, %land.lhs.true16.i, %if.end.i
  %RCEnable.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 127, !dbg !1272
  %30 = load i32* %RCEnable.i, align 4, !dbg !1272, !tbaa !1132
  %tobool21.i = icmp eq i32 %30, 0, !dbg !1272
  br i1 %tobool21.i, label %if.then22.i, label %if.end52.i, !dbg !1272

if.then22.i:                                      ; preds = %if.end20.i
  %type.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 6, !dbg !1273
  %31 = load i32* %type.i, align 4, !dbg !1273, !tbaa !1132
  %cmp23.i = icmp eq i32 %31, 2, !dbg !1273
  %qp2start.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 82, !dbg !1275
  %32 = load i32* %qp2start.i, align 4, !dbg !1275, !tbaa !1132
  %cmp25.i = icmp sgt i32 %32, 0, !dbg !1275
  br i1 %cmp23.i, label %if.then24.i, label %if.else33.i, !dbg !1273

if.then24.i:                                      ; preds = %if.then22.i
  br i1 %cmp25.i, label %land.lhs.true26.i, label %if.else.i, !dbg !1275

land.lhs.true26.i:                                ; preds = %if.then24.i
  %33 = load i32* %tr.i, align 4, !dbg !1275, !tbaa !1132
  %cmp29.i = icmp slt i32 %33, %32, !dbg !1275
  br i1 %cmp29.i, label %if.else.i, label %if.then30.i, !dbg !1275

if.then30.i:                                      ; preds = %land.lhs.true26.i
  %qp02.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 83, !dbg !1276
  %34 = load i32* %qp02.i, align 4, !dbg !1276, !tbaa !1132
  %qp.i311 = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 10, !dbg !1276
  store i32 %34, i32* %qp.i311, align 4, !dbg !1276, !tbaa !1132
  br label %if.end52.i, !dbg !1276

if.else.i:                                        ; preds = %land.lhs.true26.i, %if.then24.i
  %qp0.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 3, !dbg !1277
  %35 = load i32* %qp0.i, align 4, !dbg !1277, !tbaa !1132
  %qp31.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 10, !dbg !1277
  store i32 %35, i32* %qp31.i, align 4, !dbg !1277, !tbaa !1132
  br label %if.end52.i

if.else33.i:                                      ; preds = %if.then22.i
  br i1 %cmp25.i, label %land.lhs.true36.i, label %if.else42.i, !dbg !1278

land.lhs.true36.i:                                ; preds = %if.else33.i
  %36 = load i32* %tr.i, align 4, !dbg !1278, !tbaa !1132
  %cmp39.i = icmp slt i32 %36, %32, !dbg !1278
  br i1 %cmp39.i, label %if.else42.i, label %if.then40.i, !dbg !1278

if.then40.i:                                      ; preds = %land.lhs.true36.i
  %qpN2.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 80, !dbg !1280
  %37 = load i32* %qpN2.i, align 4, !dbg !1280, !tbaa !1132
  %qp41.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 10, !dbg !1280
  store i32 %37, i32* %qp41.i, align 4, !dbg !1280, !tbaa !1132
  br label %if.end44.i, !dbg !1280

if.else42.i:                                      ; preds = %land.lhs.true36.i, %if.else33.i
  %qpN.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 4, !dbg !1281
  %38 = load i32* %qpN.i, align 4, !dbg !1281, !tbaa !1132
  %qp43.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 10, !dbg !1281
  store i32 %38, i32* %qp43.i, align 4, !dbg !1281, !tbaa !1132
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else42.i, %if.then40.i
  %cmp46.i = icmp eq i32 %31, 3, !dbg !1282
  br i1 %cmp46.i, label %if.then47.i, label %if.end52.i, !dbg !1282

if.then47.i:                                      ; preds = %if.end44.i
  %qpsp.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 44, !dbg !1283
  %39 = load i32* %qpsp.i, align 4, !dbg !1283, !tbaa !1132
  %qp48.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 10, !dbg !1283
  store i32 %39, i32* %qp48.i, align 4, !dbg !1283, !tbaa !1132
  %qpsp_pred.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 45, !dbg !1285
  %40 = load i32* %qpsp_pred.i, align 4, !dbg !1285, !tbaa !1132
  %qpsp49.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 11, !dbg !1285
  store i32 %40, i32* %qpsp49.i, align 4, !dbg !1285, !tbaa !1132
  br label %if.end52.i, !dbg !1286

if.end52.i:                                       ; preds = %if.then47.i, %if.end44.i, %if.else.i, %if.then30.i, %if.end20.i
  %mb_y_upd.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 22, !dbg !1287
  %41 = load i32* %mb_y_upd.i, align 4, !dbg !1287, !tbaa !1132
  %mb_y_intra.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 23, !dbg !1287
  store i32 %41, i32* %mb_y_intra.i, align 4, !dbg !1287, !tbaa !1132
  %intra_upd.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 19, !dbg !1288
  %42 = load i32* %intra_upd.i, align 4, !dbg !1288, !tbaa !1132
  %cmp53.i = icmp sgt i32 %42, 0, !dbg !1288
  br i1 %cmp53.i, label %if.then54.i, label %init_frame.exit, !dbg !1288

if.then54.i:                                      ; preds = %if.end52.i
  %43 = load i32* %number.i, align 4, !dbg !1289, !tbaa !1132
  %44 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1289, !tbaa !1132
  %sub56.i = sub nsw i32 %43, %44, !dbg !1289
  %div58.i = sdiv i32 %sub56.i, %42, !dbg !1289
  %45 = load i32* %height249.i, align 4, !dbg !1289, !tbaa !1132
  %div60.i = sdiv i32 %45, 16, !dbg !1289
  %rem.i = srem i32 %div58.i, %div60.i, !dbg !1289
  store i32 %rem.i, i32* %mb_y_upd.i, align 4, !dbg !1289, !tbaa !1132
  br label %init_frame.exit, !dbg !1291

if.else63.i:                                      ; preds = %for.end.i
  %46 = load %struct.InputParameters** @input, align 8, !dbg !1292, !tbaa !1126
  %jumpd64.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 5, !dbg !1292
  %47 = load i32* %jumpd64.i, align 4, !dbg !1292, !tbaa !1132
  %add65.i = add nsw i32 %47, 1, !dbg !1292
  %p_interval.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 66, !dbg !1292
  store i32 %add65.i, i32* %p_interval.i, align 4, !dbg !1292, !tbaa !1132
  %48 = load i32* @start_tr_in_this_IGOP, align 4, !dbg !1294, !tbaa !1132
  %number66.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 0, !dbg !1294
  %49 = load i32* %number66.i, align 4, !dbg !1294, !tbaa !1132
  %50 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1294, !tbaa !1132
  %sub67.i = sub nsw i32 %49, %50, !dbg !1294
  %sub68.i = add nsw i32 %sub67.i, -1, !dbg !1294
  %mul70.i = mul nsw i32 %sub68.i, %add65.i, !dbg !1294
  %add71.i = add nsw i32 %mul70.i, %48, !dbg !1294
  call void @llvm.dbg.value(metadata !{i32 %add71.i}, i64 0, metadata !1295) #1, !dbg !1294
  %mul75.i = mul nsw i32 %sub67.i, %add65.i, !dbg !1296
  %add76.i = add nsw i32 %mul75.i, %48, !dbg !1296
  call void @llvm.dbg.value(metadata !{i32 %add76.i}, i64 0, metadata !1297) #1, !dbg !1296
  store i32 %add71.i, i32* %10, align 4, !dbg !1298, !tbaa !1132
  call void @llvm.dbg.value(metadata !1299, i64 0, metadata !1259) #1, !dbg !1300
  %buf_cycle243.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 84, !dbg !1300
  %51 = load i32* %buf_cycle243.i, align 4, !dbg !1300, !tbaa !1132
  %cmp79244.i = icmp sgt i32 %51, 1, !dbg !1300
  br i1 %cmp79244.i, label %for.body80.i, label %for.end90.i, !dbg !1300

for.body80.i:                                     ; preds = %if.else63.i, %for.body80.i
  %52 = phi i32 [ %sub85.i, %for.body80.i ], [ %add71.i, %if.else63.i ], !dbg !1302
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body80.i ], [ 1, %if.else63.i ]
  %53 = load i32* %p_interval.i, align 4, !dbg !1302, !tbaa !1132
  %sub85.i = sub nsw i32 %52, %53, !dbg !1302
  %arrayidx87.i = getelementptr inbounds i32* %10, i64 %indvars.iv.i, !dbg !1302
  store i32 %sub85.i, i32* %arrayidx87.i, align 4, !dbg !1302, !tbaa !1132
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1300
  %54 = load i32* %buf_cycle243.i, align 4, !dbg !1300, !tbaa !1132
  %55 = trunc i64 %indvars.iv.next.i to i32, !dbg !1300
  %cmp79.i = icmp slt i32 %55, %54, !dbg !1300
  br i1 %cmp79.i, label %for.body80.i, label %for.end90.i, !dbg !1300

for.end90.i:                                      ; preds = %for.body80.i, %if.else63.i
  %last_frame91.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 79, !dbg !1303
  %56 = load i32* %last_frame91.i, align 4, !dbg !1303, !tbaa !1132
  %tobool92.i = icmp eq i32 %56, 0, !dbg !1303
  br i1 %tobool92.i, label %if.end102.i, label %land.lhs.true93.i, !dbg !1303

land.lhs.true93.i:                                ; preds = %for.end90.i
  %57 = load i32* %number66.i, align 4, !dbg !1303, !tbaa !1132
  %add95.i = add nsw i32 %57, 1, !dbg !1303
  %no_frames96.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 2, !dbg !1303
  %58 = load i32* %no_frames96.i, align 4, !dbg !1303, !tbaa !1132
  %cmp97.i = icmp eq i32 %add95.i, %58, !dbg !1303
  br i1 %cmp97.i, label %if.then98.i, label %if.end102.i, !dbg !1303

if.then98.i:                                      ; preds = %land.lhs.true93.i
  call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !1297) #1, !dbg !1304
  %sub100.i = sub nsw i32 %56, %add71.i, !dbg !1306
  store i32 %sub100.i, i32* %p_interval.i, align 4, !dbg !1306, !tbaa !1132
  br label %if.end102.i, !dbg !1307

if.end102.i:                                      ; preds = %if.then98.i, %land.lhs.true93.i, %for.end90.i
  %nextP_no.0.i = phi i32 [ %56, %if.then98.i ], [ %add76.i, %land.lhs.true93.i ], [ %add76.i, %for.end90.i ]
  %59 = load i32* %jumpd64.i, align 4, !dbg !1308, !tbaa !1132
  %add104.i = add nsw i32 %59, 1, !dbg !1308
  %conv.i312 = sitofp i32 %add104.i to double, !dbg !1308
  %successive_Bframe105.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 34, !dbg !1308
  %60 = load i32* %successive_Bframe105.i, align 4, !dbg !1308, !tbaa !1132
  %conv106.i = sitofp i32 %60 to double, !dbg !1308
  %add107.i = fadd double %conv106.i, 1.000000e+00, !dbg !1308
  %div108.i = fdiv double %conv.i312, %add107.i, !dbg !1308
  %b_interval.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 65, !dbg !1308
  store double %div108.i, double* %b_interval.i, align 8, !dbg !1308, !tbaa !1309
  %PyramidCoding.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 55, !dbg !1310
  %61 = load i32* %PyramidCoding.i, align 4, !dbg !1310, !tbaa !1132
  %cmp109.i = icmp eq i32 %61, 3, !dbg !1310
  br i1 %cmp109.i, label %if.end113.thread.i, label %if.end113.i, !dbg !1310

if.end113.thread.i:                               ; preds = %if.end102.i
  store double 1.000000e+00, double* %b_interval.i, align 8, !dbg !1311, !tbaa !1309
  %62 = load i32* %b_frame_to_code.i, align 4, !dbg !1312, !tbaa !1132
  br label %if.then116.i, !dbg !1313

if.end113.i:                                      ; preds = %if.end102.i
  %tobool115.i = icmp eq i32 %61, 0, !dbg !1313
  %63 = load i32* %b_frame_to_code.i, align 4, !dbg !1312, !tbaa !1132
  br i1 %tobool115.i, label %if.else128.i, label %if.then116.i, !dbg !1313

if.then116.i:                                     ; preds = %if.end113.i, %if.end113.thread.i
  %64 = phi i32 [ %62, %if.end113.thread.i ], [ %63, %if.end113.i ]
  %65 = phi double [ 1.000000e+00, %if.end113.thread.i ], [ %div108.i, %if.end113.i ]
  %sub119.i = add nsw i32 %64, -1, !dbg !1312
  %idxprom120.i = sext i32 %sub119.i to i64, !dbg !1312
  %66 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !1312, !tbaa !1126
  %display_no.i = getelementptr inbounds %struct.GOP_DATA* %66, i64 %idxprom120.i, i32 1, !dbg !1312
  %67 = load i32* %display_no.i, align 4, !dbg !1312, !tbaa !1132
  %add122.i = add nsw i32 %67, 1, !dbg !1312
  %conv123.i = sitofp i32 %add122.i to double, !dbg !1312
  %mul124.i = fmul double %65, %conv123.i, !dbg !1312
  %conv125.i = fptosi double %mul124.i to i32, !dbg !1312
  %add126.i = add nsw i32 %conv125.i, %add71.i, !dbg !1312
  %tr127.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 55, !dbg !1312
  store i32 %add126.i, i32* %tr127.i, align 4, !dbg !1312, !tbaa !1132
  br label %if.end136.i, !dbg !1312

if.else128.i:                                     ; preds = %if.end113.i
  %conv131.i = sitofp i32 %63 to double, !dbg !1314
  %mul132.i = fmul double %div108.i, %conv131.i, !dbg !1314
  %conv133.i = fptosi double %mul132.i to i32, !dbg !1314
  %add134.i = add nsw i32 %conv133.i, %add71.i, !dbg !1314
  %tr135.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 55, !dbg !1314
  store i32 %add134.i, i32* %tr135.i, align 4, !dbg !1314, !tbaa !1132
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.else128.i, %if.then116.i
  %68 = phi i32 [ %63, %if.else128.i ], [ %64, %if.then116.i ]
  %69 = phi i32 [ %add134.i, %if.else128.i ], [ %add126.i, %if.then116.i ]
  %cmp138.i = icmp slt i32 %69, %nextP_no.0.i, !dbg !1315
  br i1 %cmp138.i, label %if.end143.i, label %if.then140.i, !dbg !1315

if.then140.i:                                     ; preds = %if.end136.i
  %tr137.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 55, !dbg !1315
  %sub141.i = add nsw i32 %nextP_no.0.i, -1, !dbg !1316
  store i32 %sub141.i, i32* %tr137.i, align 4, !dbg !1316, !tbaa !1132
  br label %if.end143.i, !dbg !1316

if.end143.i:                                      ; preds = %if.then140.i, %if.end136.i
  %70 = phi i32 [ %69, %if.end136.i ], [ %sub141.i, %if.then140.i ]
  %RCEnable144.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 127, !dbg !1317
  %71 = load i32* %RCEnable144.i, align 4, !dbg !1317, !tbaa !1132
  %tobool145.i = icmp eq i32 %71, 0, !dbg !1317
  %72 = load i32* %PyramidCoding.i, align 4, !dbg !1317, !tbaa !1132
  %cmp148.i = icmp eq i32 %72, 3, !dbg !1317
  br i1 %tobool145.i, label %land.lhs.true146.i, label %if.else216.i, !dbg !1317

land.lhs.true146.i:                               ; preds = %if.end143.i
  br i1 %cmp148.i, label %if.then220.i, label %if.then150.i, !dbg !1317

if.then150.i:                                     ; preds = %land.lhs.true146.i
  %qp2start151.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 82, !dbg !1318
  %73 = load i32* %qp2start151.i, align 4, !dbg !1318, !tbaa !1132
  %cmp152.i = icmp slt i32 %73, 1, !dbg !1318
  %cmp157.i = icmp slt i32 %70, %73, !dbg !1318
  %or.cond.i = or i1 %cmp152.i, %cmp157.i, !dbg !1318
  br i1 %or.cond.i, label %if.else161.i, label %if.then159.i, !dbg !1318

if.then159.i:                                     ; preds = %if.then150.i
  %qpB2.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 81, !dbg !1320
  %74 = load i32* %qpB2.i, align 4, !dbg !1320, !tbaa !1132
  %qp160.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 10, !dbg !1320
  store i32 %74, i32* %qp160.i, align 4, !dbg !1320, !tbaa !1132
  br label %if.end163.i, !dbg !1322

if.else161.i:                                     ; preds = %if.then150.i
  %qpB.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 35, !dbg !1323
  %75 = load i32* %qpB.i, align 4, !dbg !1323, !tbaa !1132
  %qp162.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 10, !dbg !1323
  store i32 %75, i32* %qp162.i, align 4, !dbg !1323, !tbaa !1132
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.else161.i, %if.then159.i
  %nal_reference_idc.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 113, !dbg !1325
  %76 = load i32* %nal_reference_idc.i, align 4, !dbg !1325, !tbaa !1132
  %tobool164.i = icmp eq i32 %76, 0, !dbg !1325
  br i1 %tobool164.i, label %init_frame.exit, label %if.then165.i, !dbg !1325

if.then165.i:                                     ; preds = %if.end163.i
  %77 = load i32* %qp2start151.i, align 4, !dbg !1326, !tbaa !1132
  %cmp167.i = icmp slt i32 %77, 1, !dbg !1326
  %cmp172.i = icmp slt i32 %70, %77, !dbg !1326
  %or.cond260.i = or i1 %cmp167.i, %cmp172.i, !dbg !1326
  br i1 %or.cond260.i, label %if.else192.i, label %if.then174.i, !dbg !1326

if.then174.i:                                     ; preds = %if.then165.i
  %qpB2175.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 81, !dbg !1328
  %78 = load i32* %qpB2175.i, align 4, !dbg !1328, !tbaa !1132
  %qpBRS2Offset.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 84, !dbg !1328
  %79 = load i32* %qpBRS2Offset.i, align 4, !dbg !1328, !tbaa !1132
  %add176.i = add nsw i32 %79, %78, !dbg !1328
  %cmp177.i = icmp slt i32 %add176.i, 0, !dbg !1328
  br i1 %cmp177.i, label %cond.end189.i, label %cond.false.i, !dbg !1328

cond.false.i:                                     ; preds = %if.then174.i
  %cmp182.i = icmp sgt i32 %add176.i, 51, !dbg !1328
  %.add176.i = select i1 %cmp182.i, i32 51, i32 %add176.i, !dbg !1328
  br label %cond.end189.i, !dbg !1328

cond.end189.i:                                    ; preds = %cond.false.i, %if.then174.i
  %cond190.i = phi i32 [ 0, %if.then174.i ], [ %.add176.i, %cond.false.i ], !dbg !1328
  %qp191.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 10, !dbg !1328
  store i32 %cond190.i, i32* %qp191.i, align 4, !dbg !1328, !tbaa !1132
  br label %init_frame.exit, !dbg !1330

if.else192.i:                                     ; preds = %if.then165.i
  %qpB193.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 35, !dbg !1331
  %80 = load i32* %qpB193.i, align 4, !dbg !1331, !tbaa !1132
  %qpBRSOffset.i = getelementptr inbounds %struct.InputParameters* %46, i64 0, i32 36, !dbg !1331
  %81 = load i32* %qpBRSOffset.i, align 4, !dbg !1331, !tbaa !1132
  %add194.i = add nsw i32 %81, %80, !dbg !1331
  %cmp195.i = icmp slt i32 %add194.i, 0, !dbg !1331
  br i1 %cmp195.i, label %cond.end211.i, label %cond.false198.i, !dbg !1331

cond.false198.i:                                  ; preds = %if.else192.i
  %cmp202.i = icmp sgt i32 %add194.i, 51, !dbg !1331
  %.add194.i = select i1 %cmp202.i, i32 51, i32 %add194.i, !dbg !1331
  br label %cond.end211.i, !dbg !1331

cond.end211.i:                                    ; preds = %cond.false198.i, %if.else192.i
  %cond212.i = phi i32 [ 0, %if.else192.i ], [ %.add194.i, %cond.false198.i ], !dbg !1331
  %qp213.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 10, !dbg !1331
  store i32 %cond212.i, i32* %qp213.i, align 4, !dbg !1331, !tbaa !1132
  br label %init_frame.exit

if.else216.i:                                     ; preds = %if.end143.i
  br i1 %cmp148.i, label %if.then220.i, label %init_frame.exit, !dbg !1333

if.then220.i:                                     ; preds = %if.else216.i, %land.lhs.true146.i
  %sub222.i = add nsw i32 %68, -1, !dbg !1334
  %idxprom223.i = sext i32 %sub222.i to i64, !dbg !1334
  %82 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !1334, !tbaa !1126
  %slice_qp.i = getelementptr inbounds %struct.GOP_DATA* %82, i64 %idxprom223.i, i32 3, !dbg !1334
  %83 = load i32* %slice_qp.i, align 4, !dbg !1334, !tbaa !1132
  %qp225.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 10, !dbg !1334
  store i32 %83, i32* %qp225.i, align 4, !dbg !1334, !tbaa !1132
  br label %init_frame.exit, !dbg !1336

init_frame.exit:                                  ; preds = %if.end52.i, %if.then54.i, %if.end163.i, %cond.end189.i, %cond.end211.i, %if.else216.i, %if.then220.i
  %layer.i = getelementptr inbounds %struct.ImageParameters* %7, i64 0, i32 86, !dbg !1337
  %84 = load i32* %layer.i, align 4, !dbg !1337, !tbaa !1132
  call void @UpdateSubseqInfo(i32 %84) #7, !dbg !1337
  call void @UpdateSceneInformation(i32 0, i32 0, i32 0, i32 -1) #7, !dbg !1338
  %85 = load %struct.ImageParameters** @img, align 8, !dbg !1339, !tbaa !1126
  %width229.i = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 13, !dbg !1339
  %86 = load i32* %width229.i, align 4, !dbg !1339, !tbaa !1132
  %height230.i = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 15, !dbg !1339
  %87 = load i32* %height230.i, align 4, !dbg !1339, !tbaa !1132
  %mul231.i = mul nsw i32 %87, %86, !dbg !1339
  %div232.i = sdiv i32 %mul231.i, 256, !dbg !1339
  %total_number_mb.i = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 4, !dbg !1339
  store i32 %div232.i, i32* %total_number_mb.i, align 4, !dbg !1339, !tbaa !1132
  %no_output_of_prior_pics_flag.i = getelementptr inbounds %struct.ImageParameters* %85, i64 0, i32 115, !dbg !1340
  %88 = bitcast i32* %no_output_of_prior_pics_flag.i to i8*, !dbg !1341
  call void @llvm.memset.p0i8.i64(i8* %88, i8 0, i64 16, i32 4, i1 false) #1, !dbg !1342
  %89 = load %struct.ImageParameters** @img, align 8, !dbg !1343, !tbaa !1126
  %b_frame_to_code.i313 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 67, !dbg !1343
  %90 = load i32* %b_frame_to_code.i313, align 4, !dbg !1343, !tbaa !1132
  %tobool.i314 = icmp eq i32 %90, 0, !dbg !1343
  br i1 %tobool.i314, label %if.else24.i, label %if.then.i323, !dbg !1343

if.then.i323:                                     ; preds = %init_frame.exit
  %91 = load %struct.InputParameters** @input, align 8, !dbg !1345, !tbaa !1126
  %PyramidCoding.i315 = getelementptr inbounds %struct.InputParameters* %91, i64 0, i32 55, !dbg !1345
  %92 = load i32* %PyramidCoding.i315, align 4, !dbg !1345, !tbaa !1132
  %tobool1.i = icmp eq i32 %92, 0, !dbg !1345
  %93 = load i32* @start_tr_in_this_IGOP, align 4, !dbg !1347, !tbaa !1132
  %number.i316 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 0, !dbg !1347
  %94 = load i32* %number.i316, align 4, !dbg !1347, !tbaa !1132
  %95 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1347, !tbaa !1132
  %sub.i317 = add i32 %94, -1, !dbg !1347
  %sub3.i = sub i32 %sub.i317, %95, !dbg !1347
  %jumpd.i318 = getelementptr inbounds %struct.InputParameters* %91, i64 0, i32 5, !dbg !1347
  %96 = load i32* %jumpd.i318, align 4, !dbg !1347, !tbaa !1132
  %add.i319 = add nsw i32 %96, 1, !dbg !1347
  %mul.i320 = mul nsw i32 %add.i319, %sub3.i, !dbg !1347
  %add4.i321 = add nsw i32 %mul.i320, %93, !dbg !1347
  %b_interval.i322 = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 65, !dbg !1347
  %97 = load double* %b_interval.i322, align 8, !dbg !1347, !tbaa !1309
  br i1 %tobool1.i, label %if.else.i326, label %if.then2.i, !dbg !1345

if.then2.i:                                       ; preds = %if.then.i323
  %sub6.i = add nsw i32 %90, -1, !dbg !1347
  %idxprom.i = sext i32 %sub6.i to i64, !dbg !1347
  %98 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !1347, !tbaa !1126
  %display_no.i324 = getelementptr inbounds %struct.GOP_DATA* %98, i64 %idxprom.i, i32 1, !dbg !1347
  %99 = load i32* %display_no.i324, align 4, !dbg !1347, !tbaa !1132
  %add7.i = add nsw i32 %99, 1, !dbg !1347
  %conv.i325 = sitofp i32 %add7.i to double, !dbg !1347
  %mul8.i = fmul double %97, %conv.i325, !dbg !1347
  %conv9.i = fptosi double %mul8.i to i32, !dbg !1347
  %add10.i = add nsw i32 %conv9.i, %add4.i321, !dbg !1347
  store i32 %add10.i, i32* @frame_no, align 4, !dbg !1347, !tbaa !1132
  br label %CalculateFrameNumber.exit, !dbg !1347

if.else.i326:                                     ; preds = %if.then.i323
  %conv20.i = sitofp i32 %90 to double, !dbg !1348
  %mul21.i = fmul double %conv20.i, %97, !dbg !1348
  %conv22.i = fptosi double %mul21.i to i32, !dbg !1348
  %add23.i = add nsw i32 %add4.i321, %conv22.i, !dbg !1348
  store i32 %add23.i, i32* @frame_no, align 4, !dbg !1348, !tbaa !1132
  br label %CalculateFrameNumber.exit

if.else24.i:                                      ; preds = %init_frame.exit
  %100 = load i32* @start_tr_in_this_IGOP, align 4, !dbg !1349, !tbaa !1132
  %number25.i = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 0, !dbg !1349
  %101 = load i32* %number25.i, align 4, !dbg !1349, !tbaa !1132
  %102 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1349, !tbaa !1132
  %sub26.i = sub nsw i32 %101, %102, !dbg !1349
  %103 = load %struct.InputParameters** @input, align 8, !dbg !1349, !tbaa !1126
  %jumpd27.i = getelementptr inbounds %struct.InputParameters* %103, i64 0, i32 5, !dbg !1349
  %104 = load i32* %jumpd27.i, align 4, !dbg !1349, !tbaa !1132
  %add28.i = add nsw i32 %104, 1, !dbg !1349
  %mul29.i = mul nsw i32 %add28.i, %sub26.i, !dbg !1349
  %add30.i = add nsw i32 %mul29.i, %100, !dbg !1349
  store i32 %add30.i, i32* @frame_no, align 4, !dbg !1349, !tbaa !1132
  %last_frame.i327 = getelementptr inbounds %struct.InputParameters* %103, i64 0, i32 79, !dbg !1351
  %105 = load i32* %last_frame.i327, align 4, !dbg !1351, !tbaa !1132
  %tobool31.i = icmp eq i32 %105, 0, !dbg !1351
  br i1 %tobool31.i, label %CalculateFrameNumber.exit, label %land.lhs.true.i330, !dbg !1351

land.lhs.true.i330:                               ; preds = %if.else24.i
  %106 = load i32* %number25.i, align 4, !dbg !1351, !tbaa !1132
  %add33.i = add nsw i32 %106, 1, !dbg !1351
  %no_frames.i328 = getelementptr inbounds %struct.InputParameters* %103, i64 0, i32 2, !dbg !1351
  %107 = load i32* %no_frames.i328, align 4, !dbg !1351, !tbaa !1132
  %cmp.i329 = icmp eq i32 %add33.i, %107, !dbg !1351
  br i1 %cmp.i329, label %if.then35.i, label %CalculateFrameNumber.exit, !dbg !1351

if.then35.i:                                      ; preds = %land.lhs.true.i330
  store i32 %105, i32* @frame_no, align 4, !dbg !1352, !tbaa !1132
  br label %CalculateFrameNumber.exit, !dbg !1352

CalculateFrameNumber.exit:                        ; preds = %if.then2.i, %if.else.i326, %if.else24.i, %land.lhs.true.i330, %if.then35.i
  %108 = phi %struct.InputParameters* [ %103, %if.else24.i ], [ %103, %land.lhs.true.i330 ], [ %103, %if.then35.i ], [ %91, %if.then2.i ], [ %91, %if.else.i326 ]
  %109 = phi i32 [ %add30.i, %if.else24.i ], [ %add30.i, %land.lhs.true.i330 ], [ %105, %if.then35.i ], [ %add10.i, %if.then2.i ], [ %add23.i, %if.else.i326 ]
  call void @llvm.dbg.value(metadata !{i32 %109}, i64 0, metadata !257), !dbg !1344
  %infile_header = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 25, !dbg !1353
  %110 = load i32* %infile_header, align 4, !dbg !1353, !tbaa !1132
  %img_width = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 16, !dbg !1353
  %111 = load i32* %img_width, align 4, !dbg !1353, !tbaa !1132
  %img_height = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 17, !dbg !1353
  %112 = load i32* %img_height, align 4, !dbg !1353, !tbaa !1132
  %img_width_cr = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 138, !dbg !1353
  %113 = load i32* %img_width_cr, align 4, !dbg !1353, !tbaa !1132
  %img_height_cr = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 137, !dbg !1353
  %114 = load i32* %img_height_cr, align 4, !dbg !1353, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %109}, i64 0, metadata !1354) #1, !dbg !1355
  call void @llvm.dbg.value(metadata !{i32 %110}, i64 0, metadata !1356) #1, !dbg !1355
  call void @llvm.dbg.value(metadata !{i32 %111}, i64 0, metadata !1357) #1, !dbg !1355
  call void @llvm.dbg.value(metadata !{i32 %112}, i64 0, metadata !1358) #1, !dbg !1355
  call void @llvm.dbg.value(metadata !{i32 %113}, i64 0, metadata !1359) #1, !dbg !1355
  call void @llvm.dbg.value(metadata !{i32 %114}, i64 0, metadata !1360) #1, !dbg !1355
  %pic_unit_size_on_disk.i = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 148, !dbg !1361
  %115 = load i32* %pic_unit_size_on_disk.i, align 4, !dbg !1361, !tbaa !1132
  %div.i331 = sdiv i32 %115, 8, !dbg !1361
  call void @llvm.dbg.value(metadata !{i32 %div.i331}, i64 0, metadata !1362) #1, !dbg !1361
  %mul.i332 = mul nsw i32 %112, %111, !dbg !1363
  call void @llvm.dbg.value(metadata !{i32 %mul.i332}, i64 0, metadata !1364) #1, !dbg !1363
  %mul1.i = mul nsw i32 %114, %113, !dbg !1365
  call void @llvm.dbg.value(metadata !{i32 %mul1.i}, i64 0, metadata !1366) #1, !dbg !1365
  %mul2.i = mul i32 %mul.i332, %div.i331, !dbg !1367
  call void @llvm.dbg.value(metadata !{i32 %mul2.i}, i64 0, metadata !1368) #1, !dbg !1367
  %mul3.i333 = mul i32 %mul1.i, %div.i331, !dbg !1369
  call void @llvm.dbg.value(metadata !{i32 %mul3.i333}, i64 0, metadata !1370) #1, !dbg !1369
  %mul4.i = shl i32 %mul3.i333, 1, !dbg !1371
  %add.i334 = add nsw i32 %mul4.i, %mul2.i, !dbg !1371
  %conv.i335 = sext i32 %add.i334 to i64, !dbg !1371
  call void @llvm.dbg.value(metadata !{i64 %conv.i335}, i64 0, metadata !1372) #1, !dbg !1371
  %rgb_input_flag.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 139, !dbg !1373
  %116 = load i32* %rgb_input_flag.i, align 4, !dbg !1373, !tbaa !1132
  %cmp.i336 = icmp eq i32 %116, 1, !dbg !1373
  br i1 %cmp.i336, label %land.rhs.i, label %land.end.i, !dbg !1373

land.rhs.i:                                       ; preds = %CalculateFrameNumber.exit
  %yuv_format.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 18, !dbg !1373
  %117 = load i32* %yuv_format.i, align 4, !dbg !1373, !tbaa !1132
  %cmp6.i = icmp eq i32 %117, 3, !dbg !1373
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %CalculateFrameNumber.exit
  %118 = phi i1 [ false, %CalculateFrameNumber.exit ], [ %cmp6.i, %land.rhs.i ]
  %119 = load i32* @p_in, align 4, !dbg !1374, !tbaa !1132
  %cmp8.i = icmp eq i32 %119, -1, !dbg !1374
  br i1 %cmp8.i, label %cond.false.i337, label %cond.end.i, !dbg !1374

cond.false.i337:                                  ; preds = %land.end.i
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 2315, i8* getelementptr inbounds ([48 x i8]* @__PRETTY_FUNCTION__.ReadOneFrame, i64 0, i64 0)) #9, !dbg !1374
  unreachable, !dbg !1374

cond.end.i:                                       ; preds = %land.end.i
  %conv12.i = zext i32 %mul2.i to i64, !dbg !1375
  %call.i338 = call noalias i8* @malloc(i64 %conv12.i) #7, !dbg !1375
  call void @llvm.dbg.value(metadata !{i8* %call.i338}, i64 0, metadata !1376) #1, !dbg !1375
  %cmp13.i = icmp eq i8* %call.i338, null, !dbg !1375
  br i1 %cmp13.i, label %if.then.i340, label %if.end.i341, !dbg !1375

if.then.i340:                                     ; preds = %cond.end.i
  call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !1375
  %.pre.i339 = load i32* @p_in, align 4, !dbg !1377, !tbaa !1132
  br label %if.end.i341, !dbg !1375

if.end.i341:                                      ; preds = %if.then.i340, %cond.end.i
  %120 = phi i32 [ %.pre.i339, %if.then.i340 ], [ %119, %cond.end.i ]
  %conv15.i = sext i32 %110 to i64, !dbg !1377
  %call16.i = call i64 @lseek(i32 %120, i64 %conv15.i, i32 0) #7, !dbg !1377
  %cmp18.i = icmp eq i64 %call16.i, %conv15.i, !dbg !1377
  br i1 %cmp18.i, label %if.end21.i, label %if.then20.i, !dbg !1377

if.then20.i:                                      ; preds = %if.end.i341
  call void @error(i8* getelementptr inbounds ([52 x i8]* @.str8, i64 0, i64 0), i32 -1) #7, !dbg !1378
  br label %if.end21.i, !dbg !1380

if.end21.i:                                       ; preds = %if.then20.i, %if.end.i341
  %121 = load i32* @p_in, align 4, !dbg !1381, !tbaa !1132
  %122 = load %struct.InputParameters** @input, align 8, !dbg !1381, !tbaa !1126
  %start_frame.i = getelementptr inbounds %struct.InputParameters* %122, i64 0, i32 33, !dbg !1381
  %123 = load i32* %start_frame.i, align 4, !dbg !1381, !tbaa !1132
  %conv22.i342 = sext i32 %123 to i64, !dbg !1381
  %mul23.i = mul nsw i64 %conv22.i342, %conv.i335, !dbg !1381
  %call24.i = call i64 @lseek(i32 %121, i64 %mul23.i, i32 1) #7, !dbg !1381
  %cmp25.i343 = icmp eq i64 %call24.i, -1, !dbg !1381
  br i1 %cmp25.i343, label %if.then27.i, label %if.end30.i, !dbg !1381

if.then27.i:                                      ; preds = %if.end21.i
  %124 = load %struct.InputParameters** @input, align 8, !dbg !1382, !tbaa !1126
  %start_frame28.i = getelementptr inbounds %struct.InputParameters* %124, i64 0, i32 33, !dbg !1382
  %125 = load i32* %start_frame28.i, align 4, !dbg !1382, !tbaa !1132
  %call29.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str9, i64 0, i64 0), i32 %125) #7, !dbg !1382
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 -1) #7, !dbg !1384
  br label %if.end30.i, !dbg !1385

if.end30.i:                                       ; preds = %if.then27.i, %if.end21.i
  %126 = load i32* @p_in, align 4, !dbg !1386, !tbaa !1132
  %conv31.i = sext i32 %109 to i64, !dbg !1386
  %mul32.i = mul nsw i64 %conv.i335, %conv31.i, !dbg !1386
  %call33.i = call i64 @lseek(i32 %126, i64 %mul32.i, i32 1) #7, !dbg !1386
  %cmp34.i = icmp eq i64 %call33.i, -1, !dbg !1386
  br i1 %cmp34.i, label %if.then36.i, label %if.end40.i, !dbg !1386

if.then36.i:                                      ; preds = %if.end30.i
  %127 = load %struct.InputParameters** @input, align 8, !dbg !1387, !tbaa !1126
  %start_frame37.i = getelementptr inbounds %struct.InputParameters* %127, i64 0, i32 33, !dbg !1387
  %128 = load i32* %start_frame37.i, align 4, !dbg !1387, !tbaa !1132
  %add38.i = add nsw i32 %128, %109, !dbg !1387
  %call39.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str9, i64 0, i64 0), i32 %add38.i) #7, !dbg !1387
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 -1) #7, !dbg !1389
  br label %if.end40.i, !dbg !1390

if.end40.i:                                       ; preds = %if.then36.i, %if.end30.i
  %129 = load %struct.ImageParameters** @img, align 8, !dbg !1391, !tbaa !1126
  %pic_unit_size_on_disk41.i = getelementptr inbounds %struct.ImageParameters* %129, i64 0, i32 148, !dbg !1391
  %130 = load i32* %pic_unit_size_on_disk41.i, align 4, !dbg !1391, !tbaa !1132
  %rem127.i = and i32 %130, 7, !dbg !1391
  %cmp42.i = icmp eq i32 %rem127.i, 0, !dbg !1391
  br i1 %cmp42.i, label %if.then44.i, label %if.else.i346, !dbg !1391

if.then44.i:                                      ; preds = %if.end40.i
  br i1 %118, label %if.then45.i, label %if.end48.i, !dbg !1392

if.then45.i:                                      ; preds = %if.then44.i
  %131 = load i32* @p_in, align 4, !dbg !1394, !tbaa !1132
  %div46.i = sdiv i64 %conv.i335, 3, !dbg !1394
  %call47.i = call i64 @lseek(i32 %131, i64 %div46.i, i32 1) #7, !dbg !1394
  br label %if.end48.i, !dbg !1394

if.end48.i:                                       ; preds = %if.then45.i, %if.then44.i
  %132 = load i32* @p_in, align 4, !dbg !1395, !tbaa !1132
  %conv49.i = sext i32 %mul2.i to i64, !dbg !1395
  %call50.i = call i64 @read(i32 %132, i8* %call.i338, i64 %conv49.i) #7, !dbg !1395
  %cmp52.i = icmp eq i64 %call50.i, %conv49.i, !dbg !1395
  br i1 %cmp52.i, label %if.end56.i, label %if.then54.i344, !dbg !1395

if.then54.i344:                                   ; preds = %if.end48.i
  %call55.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([77 x i8]* @.str10, i64 0, i64 0), i32 %mul2.i) #7, !dbg !1396
  call void (...)* @report_stats_on_error() #7, !dbg !1398
  call void @exit(i32 -1) #9, !dbg !1399
  unreachable, !dbg !1399

if.end56.i:                                       ; preds = %if.end48.i
  %133 = load i16*** @imgY_org_frm, align 8, !dbg !1400, !tbaa !1126
  call void @buf2img(i16** %133, i8* %call.i338, i32 %111, i32 %112, i32 %div.i331) #7, !dbg !1400
  %134 = load %struct.ImageParameters** @img, align 8, !dbg !1401, !tbaa !1126
  %yuv_format57.i = getelementptr inbounds %struct.ImageParameters* %134, i64 0, i32 159, !dbg !1401
  %135 = load i32* %yuv_format57.i, align 4, !dbg !1401, !tbaa !1132
  %cmp58.i = icmp eq i32 %135, 0, !dbg !1401
  br i1 %cmp58.i, label %ReadOneFrame.exit, label %if.then60.i, !dbg !1401

if.then60.i:                                      ; preds = %if.end56.i
  %136 = load i32* @p_in, align 4, !dbg !1402, !tbaa !1132
  %conv61.i = sext i32 %mul3.i333 to i64, !dbg !1402
  %call62.i = call i64 @read(i32 %136, i8* %call.i338, i64 %conv61.i) #7, !dbg !1402
  %cmp64.i = icmp eq i64 %call62.i, %conv61.i, !dbg !1402
  br i1 %cmp64.i, label %if.end68.i, label %if.then66.i, !dbg !1402

if.then66.i:                                      ; preds = %if.then60.i
  %call67.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([77 x i8]* @.str10, i64 0, i64 0), i32 %mul2.i) #7, !dbg !1404
  call void (...)* @report_stats_on_error() #7, !dbg !1406
  call void @exit(i32 -1) #9, !dbg !1407
  unreachable, !dbg !1407

if.end68.i:                                       ; preds = %if.then60.i
  %137 = load i16**** @imgUV_org_frm, align 8, !dbg !1408, !tbaa !1126
  %138 = load i16*** %137, align 8, !dbg !1408, !tbaa !1126
  call void @buf2img(i16** %138, i8* %call.i338, i32 %113, i32 %114, i32 %div.i331) #7, !dbg !1408
  br i1 %118, label %if.then70.i, label %if.end72.i, !dbg !1409

if.then70.i:                                      ; preds = %if.end68.i
  %139 = load i32* @p_in, align 4, !dbg !1410, !tbaa !1132
  %sub.i345 = sub nsw i64 0, %conv.i335, !dbg !1410
  %call71.i = call i64 @lseek(i32 %139, i64 %sub.i345, i32 1) #7, !dbg !1410
  br label %if.end72.i, !dbg !1410

if.end72.i:                                       ; preds = %if.then70.i, %if.end68.i
  %140 = load i32* @p_in, align 4, !dbg !1411, !tbaa !1132
  %call74.i = call i64 @read(i32 %140, i8* %call.i338, i64 %conv61.i) #7, !dbg !1411
  %cmp76.i = icmp eq i64 %call74.i, %conv61.i, !dbg !1411
  br i1 %cmp76.i, label %if.end80.i, label %if.then78.i, !dbg !1411

if.then78.i:                                      ; preds = %if.end72.i
  %call79.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([77 x i8]* @.str10, i64 0, i64 0), i32 %mul2.i) #7, !dbg !1412
  call void (...)* @report_stats_on_error() #7, !dbg !1414
  call void @exit(i32 -1) #9, !dbg !1415
  unreachable, !dbg !1415

if.end80.i:                                       ; preds = %if.end72.i
  %141 = load i16**** @imgUV_org_frm, align 8, !dbg !1416, !tbaa !1126
  %arrayidx81.i = getelementptr inbounds i16*** %141, i64 1, !dbg !1416
  %142 = load i16*** %arrayidx81.i, align 8, !dbg !1416, !tbaa !1126
  call void @buf2img(i16** %142, i8* %call.i338, i32 %113, i32 %114, i32 %div.i331) #7, !dbg !1416
  br i1 %118, label %if.then83.i, label %ReadOneFrame.exit, !dbg !1417

if.then83.i:                                      ; preds = %if.end80.i
  %143 = load i32* @p_in, align 4, !dbg !1418, !tbaa !1132
  %mul84.i = shl nsw i64 %conv.i335, 1, !dbg !1418
  %div85.i = sdiv i64 %mul84.i, 3, !dbg !1418
  %call86.i = call i64 @lseek(i32 %143, i64 %div85.i, i32 1) #7, !dbg !1418
  br label %ReadOneFrame.exit, !dbg !1418

if.else.i346:                                     ; preds = %if.end40.i
  %call89.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([75 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !1419
  call void @exit(i32 -1) #9, !dbg !1421
  unreachable, !dbg !1421

ReadOneFrame.exit:                                ; preds = %if.end56.i, %if.end80.i, %if.then83.i
  call void @free(i8* %call.i338) #7, !dbg !1422
  %144 = load %struct.InputParameters** @input, align 8, !dbg !1423, !tbaa !1126
  %img_width5 = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 16, !dbg !1423
  %145 = load i32* %img_width5, align 4, !dbg !1423, !tbaa !1132
  %img_height6 = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 17, !dbg !1423
  %146 = load i32* %img_height6, align 4, !dbg !1423, !tbaa !1132
  %147 = load %struct.ImageParameters** @img, align 8, !dbg !1423, !tbaa !1126
  %width = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 13, !dbg !1423
  %148 = load i32* %width, align 4, !dbg !1423, !tbaa !1132
  %height = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 15, !dbg !1423
  %149 = load i32* %height, align 4, !dbg !1423, !tbaa !1132
  %img_width_cr7 = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 138, !dbg !1423
  %150 = load i32* %img_width_cr7, align 4, !dbg !1423, !tbaa !1132
  %img_height_cr8 = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 137, !dbg !1423
  %151 = load i32* %img_height_cr8, align 4, !dbg !1423, !tbaa !1132
  %width_cr = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 14, !dbg !1423
  %152 = load i32* %width_cr, align 4, !dbg !1423, !tbaa !1132
  %height_cr = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 16, !dbg !1423
  %153 = load i32* %height_cr, align 4, !dbg !1423, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !{i32 %145}, i64 0, metadata !1424), !dbg !1425
  tail call void @llvm.dbg.value(metadata !{i32 %146}, i64 0, metadata !1426), !dbg !1425
  tail call void @llvm.dbg.value(metadata !{i32 %148}, i64 0, metadata !1427), !dbg !1425
  tail call void @llvm.dbg.value(metadata !{i32 %149}, i64 0, metadata !1428), !dbg !1425
  tail call void @llvm.dbg.value(metadata !{i32 %150}, i64 0, metadata !1429), !dbg !1430
  tail call void @llvm.dbg.value(metadata !{i32 %151}, i64 0, metadata !1431), !dbg !1430
  tail call void @llvm.dbg.value(metadata !{i32 %152}, i64 0, metadata !1432), !dbg !1430
  tail call void @llvm.dbg.value(metadata !{i32 %153}, i64 0, metadata !1433), !dbg !1430
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !1434), !dbg !1435
  %cmp159.i = icmp sgt i32 %146, 0, !dbg !1435
  br i1 %cmp159.i, label %for.cond1.preheader.lr.ph.i, label %for.cond13.preheader.i, !dbg !1435

for.cond1.preheader.lr.ph.i:                      ; preds = %ReadOneFrame.exit
  %cmp2157.i = icmp slt i32 %145, %148, !dbg !1437
  %154 = load i16*** @imgY_org_frm, align 8, !dbg !1439, !tbaa !1126
  %155 = sext i32 %145 to i64
  br label %for.cond1.preheader.i, !dbg !1435

for.cond1.preheader.i:                            ; preds = %for.inc10.i, %for.cond1.preheader.lr.ph.i
  %indvars.iv184.i = phi i64 [ 0, %for.cond1.preheader.lr.ph.i ], [ %indvars.iv.next185.i, %for.inc10.i ]
  br i1 %cmp2157.i, label %for.body3.lr.ph.i, label %for.inc10.i, !dbg !1437

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %arrayidx.i = getelementptr inbounds i16** %154, i64 %indvars.iv184.i, !dbg !1439
  %156 = load i16** %arrayidx.i, align 8, !dbg !1439, !tbaa !1126
  br label %for.body3.i, !dbg !1437

for.cond13.preheader.i:                           ; preds = %for.inc10.i, %ReadOneFrame.exit
  %cmp14155.i = icmp slt i32 %146, %149, !dbg !1440
  br i1 %cmp14155.i, label %for.cond16.preheader.lr.ph.i, label %for.end33.i, !dbg !1440

for.cond16.preheader.lr.ph.i:                     ; preds = %for.cond13.preheader.i
  %cmp17153.i = icmp sgt i32 %148, 0, !dbg !1442
  %157 = load i16*** @imgY_org_frm, align 8, !dbg !1444, !tbaa !1126
  %158 = sext i32 %146 to i64
  br label %for.cond16.preheader.i, !dbg !1440

for.body3.i:                                      ; preds = %for.body3.i, %for.body3.lr.ph.i
  %indvars.iv180.i = phi i64 [ %155, %for.body3.lr.ph.i ], [ %indvars.iv.next181.i, %for.body3.i ]
  %159 = add nsw i64 %indvars.iv180.i, -1, !dbg !1439
  %arrayidx5.i = getelementptr inbounds i16* %156, i64 %159, !dbg !1439
  %160 = load i16* %arrayidx5.i, align 2, !dbg !1439, !tbaa !1148
  %arrayidx9.i = getelementptr inbounds i16* %156, i64 %indvars.iv180.i, !dbg !1439
  store i16 %160, i16* %arrayidx9.i, align 2, !dbg !1439, !tbaa !1148
  %indvars.iv.next181.i = add i64 %indvars.iv180.i, 1, !dbg !1437
  %161 = trunc i64 %indvars.iv.next181.i to i32, !dbg !1437
  %cmp2.i347 = icmp slt i32 %161, %148, !dbg !1437
  br i1 %cmp2.i347, label %for.body3.i, label %for.inc10.i, !dbg !1437

for.inc10.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.next185.i = add i64 %indvars.iv184.i, 1, !dbg !1435
  %lftr.wideiv546 = trunc i64 %indvars.iv.next185.i to i32, !dbg !1435
  %exitcond547 = icmp eq i32 %lftr.wideiv546, %146, !dbg !1435
  br i1 %exitcond547, label %for.cond13.preheader.i, label %for.cond1.preheader.i, !dbg !1435

for.cond16.preheader.i:                           ; preds = %for.inc31.i, %for.cond16.preheader.lr.ph.i
  %indvars.iv177.i = phi i64 [ %158, %for.cond16.preheader.lr.ph.i ], [ %indvars.iv.next178.i, %for.inc31.i ]
  br i1 %cmp17153.i, label %for.body18.lr.ph.i, label %for.inc31.i, !dbg !1442

for.body18.lr.ph.i:                               ; preds = %for.cond16.preheader.i
  %162 = add nsw i64 %indvars.iv177.i, -1, !dbg !1444
  %arrayidx22.i = getelementptr inbounds i16** %157, i64 %162, !dbg !1444
  %163 = load i16** %arrayidx22.i, align 8, !dbg !1444, !tbaa !1126
  %arrayidx26.i = getelementptr inbounds i16** %157, i64 %indvars.iv177.i, !dbg !1444
  %164 = load i16** %arrayidx26.i, align 8, !dbg !1444, !tbaa !1126
  br label %for.body18.i, !dbg !1442

for.body18.i:                                     ; preds = %for.body18.i, %for.body18.lr.ph.i
  %indvars.iv173.i = phi i64 [ 0, %for.body18.lr.ph.i ], [ %indvars.iv.next174.i, %for.body18.i ]
  %arrayidx23.i = getelementptr inbounds i16* %163, i64 %indvars.iv173.i, !dbg !1444
  %165 = load i16* %arrayidx23.i, align 2, !dbg !1444, !tbaa !1148
  %arrayidx27.i = getelementptr inbounds i16* %164, i64 %indvars.iv173.i, !dbg !1444
  store i16 %165, i16* %arrayidx27.i, align 2, !dbg !1444, !tbaa !1148
  %indvars.iv.next174.i = add i64 %indvars.iv173.i, 1, !dbg !1442
  %lftr.wideiv543 = trunc i64 %indvars.iv.next174.i to i32, !dbg !1442
  %exitcond544 = icmp eq i32 %lftr.wideiv543, %148, !dbg !1442
  br i1 %exitcond544, label %for.inc31.i, label %for.body18.i, !dbg !1442

for.inc31.i:                                      ; preds = %for.body18.i, %for.cond16.preheader.i
  %indvars.iv.next178.i = add i64 %indvars.iv177.i, 1, !dbg !1440
  %166 = trunc i64 %indvars.iv.next178.i to i32, !dbg !1440
  %cmp14.i = icmp slt i32 %166, %149, !dbg !1440
  br i1 %cmp14.i, label %for.cond16.preheader.i, label %for.end33.i, !dbg !1440

for.end33.i:                                      ; preds = %for.inc31.i, %for.cond13.preheader.i
  %yuv_format.i348 = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 159, !dbg !1445
  %167 = load i32* %yuv_format.i348, align 4, !dbg !1445, !tbaa !1132
  %cmp34.i349 = icmp eq i32 %167, 0, !dbg !1445
  br i1 %cmp34.i349, label %PaddAutoCropBorders.exit, label %for.cond35.preheader.i, !dbg !1445

for.cond35.preheader.i:                           ; preds = %for.end33.i
  %cmp36151.i = icmp sgt i32 %151, 0, !dbg !1446
  br i1 %cmp36151.i, label %for.cond38.preheader.lr.ph.i, label %for.cond69.preheader.i, !dbg !1446

for.cond38.preheader.lr.ph.i:                     ; preds = %for.cond35.preheader.i
  %cmp39149.i = icmp slt i32 %150, %152, !dbg !1449
  %168 = load i16**** @imgUV_org_frm, align 8, !dbg !1451, !tbaa !1126
  %arrayidx55.i = getelementptr inbounds i16*** %168, i64 1, !dbg !1453
  %169 = sext i32 %150 to i64
  br label %for.cond38.preheader.i, !dbg !1446

for.cond38.preheader.i:                           ; preds = %for.inc66.i, %for.cond38.preheader.lr.ph.i
  %indvars.iv169.i = phi i64 [ 0, %for.cond38.preheader.lr.ph.i ], [ %indvars.iv.next170.i, %for.inc66.i ]
  br i1 %cmp39149.i, label %for.body40.lr.ph.i, label %for.inc66.i, !dbg !1449

for.body40.lr.ph.i:                               ; preds = %for.cond38.preheader.i
  %170 = load i16*** %168, align 8, !dbg !1451, !tbaa !1126
  %arrayidx45.i = getelementptr inbounds i16** %170, i64 %indvars.iv169.i, !dbg !1451
  %171 = load i16** %arrayidx45.i, align 8, !dbg !1451, !tbaa !1126
  %172 = load i16*** %arrayidx55.i, align 8, !dbg !1453, !tbaa !1126
  %arrayidx56.i = getelementptr inbounds i16** %172, i64 %indvars.iv169.i, !dbg !1453
  %173 = load i16** %arrayidx56.i, align 8, !dbg !1453, !tbaa !1126
  br label %for.body40.i, !dbg !1449

for.cond69.preheader.i:                           ; preds = %for.inc66.i, %for.cond35.preheader.i
  %cmp70147.i = icmp slt i32 %151, %153, !dbg !1454
  br i1 %cmp70147.i, label %for.cond72.preheader.lr.ph.i, label %PaddAutoCropBorders.exit, !dbg !1454

for.cond72.preheader.lr.ph.i:                     ; preds = %for.cond69.preheader.i
  %cmp73145.i = icmp sgt i32 %152, 0, !dbg !1456
  %174 = load i16**** @imgUV_org_frm, align 8, !dbg !1458, !tbaa !1126
  %arrayidx89.i = getelementptr inbounds i16*** %174, i64 1, !dbg !1460
  %175 = sext i32 %151 to i64
  br label %for.cond72.preheader.i, !dbg !1454

for.body40.i:                                     ; preds = %for.body40.i, %for.body40.lr.ph.i
  %indvars.iv164.i = phi i64 [ %169, %for.body40.lr.ph.i ], [ %indvars.iv.next165.i, %for.body40.i ]
  %176 = add nsw i64 %indvars.iv164.i, -1, !dbg !1451
  %arrayidx46.i = getelementptr inbounds i16* %171, i64 %176, !dbg !1451
  %177 = load i16* %arrayidx46.i, align 2, !dbg !1451, !tbaa !1148
  %arrayidx51.i = getelementptr inbounds i16* %171, i64 %indvars.iv164.i, !dbg !1451
  store i16 %177, i16* %arrayidx51.i, align 2, !dbg !1451, !tbaa !1148
  %arrayidx57.i = getelementptr inbounds i16* %173, i64 %176, !dbg !1453
  %178 = load i16* %arrayidx57.i, align 2, !dbg !1453, !tbaa !1148
  %arrayidx62.i = getelementptr inbounds i16* %173, i64 %indvars.iv164.i, !dbg !1453
  store i16 %178, i16* %arrayidx62.i, align 2, !dbg !1453, !tbaa !1148
  %indvars.iv.next165.i = add i64 %indvars.iv164.i, 1, !dbg !1449
  %179 = trunc i64 %indvars.iv.next165.i to i32, !dbg !1449
  %cmp39.i350 = icmp slt i32 %179, %152, !dbg !1449
  br i1 %cmp39.i350, label %for.body40.i, label %for.inc66.i, !dbg !1449

for.inc66.i:                                      ; preds = %for.body40.i, %for.cond38.preheader.i
  %indvars.iv.next170.i = add i64 %indvars.iv169.i, 1, !dbg !1446
  %lftr.wideiv541 = trunc i64 %indvars.iv.next170.i to i32, !dbg !1446
  %exitcond542 = icmp eq i32 %lftr.wideiv541, %151, !dbg !1446
  br i1 %exitcond542, label %for.cond69.preheader.i, label %for.cond38.preheader.i, !dbg !1446

for.cond72.preheader.i:                           ; preds = %for.inc100.i, %for.cond72.preheader.lr.ph.i
  %indvars.iv161.i = phi i64 [ %175, %for.cond72.preheader.lr.ph.i ], [ %indvars.iv.next162.i, %for.inc100.i ]
  br i1 %cmp73145.i, label %for.body74.lr.ph.i, label %for.inc100.i, !dbg !1456

for.body74.lr.ph.i:                               ; preds = %for.cond72.preheader.i
  %180 = add nsw i64 %indvars.iv161.i, -1, !dbg !1458
  %181 = load i16*** %174, align 8, !dbg !1458, !tbaa !1126
  %arrayidx79.i = getelementptr inbounds i16** %181, i64 %180, !dbg !1458
  %182 = load i16** %arrayidx79.i, align 8, !dbg !1458, !tbaa !1126
  %arrayidx84.i = getelementptr inbounds i16** %181, i64 %indvars.iv161.i, !dbg !1458
  %183 = load i16** %arrayidx84.i, align 8, !dbg !1458, !tbaa !1126
  %184 = load i16*** %arrayidx89.i, align 8, !dbg !1460, !tbaa !1126
  %arrayidx90.i = getelementptr inbounds i16** %184, i64 %180, !dbg !1460
  %185 = load i16** %arrayidx90.i, align 8, !dbg !1460, !tbaa !1126
  %arrayidx95.i = getelementptr inbounds i16** %184, i64 %indvars.iv161.i, !dbg !1460
  %186 = load i16** %arrayidx95.i, align 8, !dbg !1460, !tbaa !1126
  br label %for.body74.i, !dbg !1456

for.body74.i:                                     ; preds = %for.body74.i, %for.body74.lr.ph.i
  %indvars.iv.i351 = phi i64 [ 0, %for.body74.lr.ph.i ], [ %indvars.iv.next.i352, %for.body74.i ]
  %arrayidx80.i = getelementptr inbounds i16* %182, i64 %indvars.iv.i351, !dbg !1458
  %187 = load i16* %arrayidx80.i, align 2, !dbg !1458, !tbaa !1148
  %arrayidx85.i = getelementptr inbounds i16* %183, i64 %indvars.iv.i351, !dbg !1458
  store i16 %187, i16* %arrayidx85.i, align 2, !dbg !1458, !tbaa !1148
  %arrayidx91.i = getelementptr inbounds i16* %185, i64 %indvars.iv.i351, !dbg !1460
  %188 = load i16* %arrayidx91.i, align 2, !dbg !1460, !tbaa !1148
  %arrayidx96.i = getelementptr inbounds i16* %186, i64 %indvars.iv.i351, !dbg !1460
  store i16 %188, i16* %arrayidx96.i, align 2, !dbg !1460, !tbaa !1148
  %indvars.iv.next.i352 = add i64 %indvars.iv.i351, 1, !dbg !1456
  %lftr.wideiv537 = trunc i64 %indvars.iv.next.i352 to i32, !dbg !1456
  %exitcond538 = icmp eq i32 %lftr.wideiv537, %152, !dbg !1456
  br i1 %exitcond538, label %for.inc100.i, label %for.body74.i, !dbg !1456

for.inc100.i:                                     ; preds = %for.body74.i, %for.cond72.preheader.i
  %indvars.iv.next162.i = add i64 %indvars.iv161.i, 1, !dbg !1454
  %189 = trunc i64 %indvars.iv.next162.i to i32, !dbg !1454
  %cmp70.i = icmp slt i32 %189, %153, !dbg !1454
  br i1 %cmp70.i, label %for.cond72.preheader.i, label %PaddAutoCropBorders.exit, !dbg !1454

PaddAutoCropBorders.exit:                         ; preds = %for.inc100.i, %for.end33.i, %for.cond69.preheader.i
  %direct_spatial_mv_pred_flag = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 37, !dbg !1461
  %190 = load i32* %direct_spatial_mv_pred_flag, align 4, !dbg !1461, !tbaa !1132
  %direct_spatial_mv_pred_flag9 = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 78, !dbg !1461
  store i32 %190, i32* %direct_spatial_mv_pred_flag9, align 4, !dbg !1461, !tbaa !1132
  %LFDisableIdc = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 103, !dbg !1462
  %191 = load i32* %LFDisableIdc, align 4, !dbg !1462, !tbaa !1132
  %LFDisableIdc10 = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 75, !dbg !1462
  store i32 %191, i32* %LFDisableIdc10, align 4, !dbg !1462, !tbaa !1132
  %LFAlphaC0Offset = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 104, !dbg !1463
  %192 = load i32* %LFAlphaC0Offset, align 4, !dbg !1463, !tbaa !1132
  %LFAlphaC0Offset11 = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 76, !dbg !1463
  store i32 %192, i32* %LFAlphaC0Offset11, align 4, !dbg !1463, !tbaa !1132
  %LFBetaOffset = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 105, !dbg !1464
  %193 = load i32* %LFBetaOffset, align 4, !dbg !1464, !tbaa !1132
  %LFBetaOffset12 = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 77, !dbg !1464
  store i32 %193, i32* %LFBetaOffset12, align 4, !dbg !1464, !tbaa !1132
  %type = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 6, !dbg !1465
  %194 = load i32* %type, align 4, !dbg !1465, !tbaa !1132
  switch i32 %194, label %if.else19 [
    i32 1, label %if.then14
    i32 2, label %if.then17
  ], !dbg !1465

if.then14:                                        ; preds = %PaddAutoCropBorders.exit
  %195 = load i32* @Bframe_ctr, align 4, !dbg !1466, !tbaa !1132
  %inc = add nsw i32 %195, 1, !dbg !1466
  store i32 %inc, i32* @Bframe_ctr, align 4, !dbg !1466, !tbaa !1132
  br label %if.end22, !dbg !1466

if.then17:                                        ; preds = %PaddAutoCropBorders.exit
  %196 = load i32* @Iframe_ctr, align 4, !dbg !1467, !tbaa !1132
  %inc18 = add nsw i32 %196, 1, !dbg !1467
  store i32 %inc18, i32* @Iframe_ctr, align 4, !dbg !1467, !tbaa !1132
  br label %if.end22, !dbg !1467

if.else19:                                        ; preds = %PaddAutoCropBorders.exit
  %197 = load i32* @Pframe_ctr, align 4, !dbg !1468, !tbaa !1132
  %inc20 = add nsw i32 %197, 1, !dbg !1468
  store i32 %inc20, i32* @Pframe_ctr, align 4, !dbg !1468, !tbaa !1132
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.else19, %if.then14
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 91, !dbg !1469
  %198 = load i32* %PicInterlace, align 4, !dbg !1469, !tbaa !1132
  %cmp23 = icmp eq i32 %198, 1, !dbg !1469
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 134, !dbg !1470
  br i1 %cmp23, label %if.end93.thread557, label %if.else25, !dbg !1469

if.end93.thread557:                               ; preds = %if.end22
  store i32 1, i32* %FieldControl, align 4, !dbg !1470, !tbaa !1132
  %field_picture = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 100, !dbg !1472
  store i32 1, i32* %field_picture, align 4, !dbg !1472, !tbaa !1132
  %199 = load %struct.Picture** @top_pic, align 8, !dbg !1473, !tbaa !1126
  %200 = load %struct.Picture** @bottom_pic, align 8, !dbg !1473, !tbaa !1126
  call void @field_picture(%struct.Picture* %199, %struct.Picture* %200) #8, !dbg !1473
  %201 = load %struct.ImageParameters** @img, align 8, !dbg !1474, !tbaa !1126
  %fld_flag = getelementptr inbounds %struct.ImageParameters* %201, i64 0, i32 57, !dbg !1474
  store i32 1, i32* %fld_flag, align 4, !dbg !1474, !tbaa !1132
  br label %if.then96, !dbg !1475

if.else25:                                        ; preds = %if.end22
  store i32 0, i32* %FieldControl, align 4, !dbg !1476, !tbaa !1132
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 92, !dbg !1478
  %202 = load i32* %MbInterlace, align 4, !dbg !1478, !tbaa !1132
  %tobool27 = icmp eq i32 %202, 0, !dbg !1478
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !1478

if.then28:                                        ; preds = %if.else25
  store i32 1, i32* @mb_adaptive, align 4, !dbg !1479, !tbaa !1132
  br label %if.end29, !dbg !1479

if.end29:                                         ; preds = %if.else25, %if.then28
  %field_picture30 = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 100, !dbg !1480
  store i32 0, i32* %field_picture30, align 4, !dbg !1480, !tbaa !1132
  %RCEnable = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 127, !dbg !1481
  %203 = load i32* %RCEnable, align 4, !dbg !1481, !tbaa !1132
  %tobool31 = icmp eq i32 %203, 0, !dbg !1481
  br i1 %tobool31, label %if.end50, label %if.then32, !dbg !1481

if.then32:                                        ; preds = %if.end29
  %204 = load i32* %MbInterlace, align 4, !dbg !1482, !tbaa !1132
  %tobool34 = icmp eq i32 %204, 0, !dbg !1482
  %basicunit45.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %144, i64 0, i32 130
  %.pre553 = load i32* %basicunit45.phi.trans.insert, align 4, !dbg !1484, !tbaa !1132
  br i1 %tobool34, label %if.else44, label %land.lhs.true35, !dbg !1482

land.lhs.true35:                                  ; preds = %if.then32
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 136, !dbg !1482
  %205 = load i32* %Frame_Total_Number_MB, align 4, !dbg !1482, !tbaa !1132
  %cmp36 = icmp slt i32 %.pre553, %205, !dbg !1482
  br i1 %cmp36, label %land.lhs.true37, label %if.else44, !dbg !1482

land.lhs.true37:                                  ; preds = %land.lhs.true35
  %206 = load i32* %type, align 4, !dbg !1482, !tbaa !1132
  %cmp39 = icmp eq i32 %206, 0, !dbg !1482
  br i1 %cmp39, label %land.lhs.true40, label %if.else44, !dbg !1482

land.lhs.true40:                                  ; preds = %land.lhs.true37
  %IFLAG = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 137, !dbg !1482
  %207 = load i32* %IFLAG, align 4, !dbg !1482, !tbaa !1132
  %cmp41 = icmp eq i32 %207, 0, !dbg !1482
  br i1 %cmp41, label %if.then42, label %if.else44, !dbg !1482

if.then42:                                        ; preds = %land.lhs.true40
  %mul = shl nsw i32 %.pre553, 1, !dbg !1485
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 139, !dbg !1485
  store i32 %mul, i32* %BasicUnit, align 4, !dbg !1485, !tbaa !1132
  br label %if.end47, !dbg !1485

if.else44:                                        ; preds = %if.then32, %land.lhs.true40, %land.lhs.true37, %land.lhs.true35
  %BasicUnit46 = getelementptr inbounds %struct.ImageParameters* %147, i64 0, i32 139, !dbg !1484
  store i32 %.pre553, i32* %BasicUnit46, align 4, !dbg !1484, !tbaa !1132
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.then42
  call void @rc_init_pict(i32 1, i32 0, i32 1) #7, !dbg !1486
  %call48 = call i32 @updateQuantizationParameter(i32 0) #7, !dbg !1487
  %208 = load %struct.ImageParameters** @img, align 8, !dbg !1487, !tbaa !1126
  %qp = getelementptr inbounds %struct.ImageParameters* %208, i64 0, i32 10, !dbg !1487
  store i32 %call48, i32* %qp, align 4, !dbg !1487, !tbaa !1132
  store i32 0, i32* @QP, align 4, !dbg !1488, !tbaa !1132
  br label %if.end50, !dbg !1489

if.end50:                                         ; preds = %if.end29, %if.end47
  %209 = phi %struct.ImageParameters* [ %147, %if.end29 ], [ %208, %if.end47 ]
  %210 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1490, !tbaa !1126
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %210, i64 0, i32 25, !dbg !1490
  %211 = load i32* %frame_mbs_only_flag, align 4, !dbg !1490, !tbaa !1127
  %tobool51 = icmp eq i32 %211, 0, !dbg !1490
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !1490

if.then52:                                        ; preds = %if.end50
  %TopFieldFlag = getelementptr inbounds %struct.ImageParameters* %209, i64 0, i32 133, !dbg !1491
  store i32 0, i32* %TopFieldFlag, align 4, !dbg !1491, !tbaa !1132
  br label %if.end53, !dbg !1491

if.end53:                                         ; preds = %if.end50, %if.then52
  %212 = load %struct.InputParameters** @input, align 8, !dbg !1492, !tbaa !1126
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %212, i64 0, i32 15, !dbg !1492
  %213 = load i32* %GenerateMultiplePPS, align 4, !dbg !1492, !tbaa !1132
  %tobool54 = icmp eq i32 %213, 0, !dbg !1492
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !1492

if.then55:                                        ; preds = %if.end53
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1493, !tbaa !1126
  br label %if.end56, !dbg !1493

if.end56:                                         ; preds = %if.end53, %if.then55
  %214 = load %struct.Picture** @frame_pic, align 8, !dbg !1494, !tbaa !1126
  call void @frame_picture(%struct.Picture* %214, i32 0) #8, !dbg !1494
  %215 = load %struct.InputParameters** @input, align 8, !dbg !1495, !tbaa !1126
  %RDPictureIntra = getelementptr inbounds %struct.InputParameters* %215, i64 0, i32 50, !dbg !1495
  %216 = load i32* %RDPictureIntra, align 4, !dbg !1495, !tbaa !1132
  %tobool57 = icmp eq i32 %216, 0, !dbg !1495
  br i1 %tobool57, label %lor.lhs.false, label %land.lhs.true60, !dbg !1495

lor.lhs.false:                                    ; preds = %if.end56
  %217 = load %struct.ImageParameters** @img, align 8, !dbg !1495, !tbaa !1126
  %type58 = getelementptr inbounds %struct.ImageParameters* %217, i64 0, i32 6, !dbg !1495
  %218 = load i32* %type58, align 4, !dbg !1495, !tbaa !1132
  %cmp59 = icmp eq i32 %218, 2, !dbg !1495
  br i1 %cmp59, label %if.end63, label %land.lhs.true60, !dbg !1495

land.lhs.true60:                                  ; preds = %lor.lhs.false, %if.end56
  %RDPictureDecision = getelementptr inbounds %struct.InputParameters* %215, i64 0, i32 49, !dbg !1495
  %219 = load i32* %RDPictureDecision, align 4, !dbg !1495, !tbaa !1132
  %tobool61 = icmp eq i32 %219, 0, !dbg !1495
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !1495

if.then62:                                        ; preds = %land.lhs.true60
  %220 = load %struct.ImageParameters** @img, align 8, !dbg !1496, !tbaa !1126
  %qp.i354 = getelementptr inbounds %struct.ImageParameters* %220, i64 0, i32 10, !dbg !1496
  %221 = load i32* %qp.i354, align 4, !dbg !1496, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %221}, i64 0, metadata !1499) #1, !dbg !1496
  %222 = load i32* @intras, align 4, !dbg !1500, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %222}, i64 0, metadata !1501) #1, !dbg !1500
  %type.i355 = getelementptr inbounds %struct.ImageParameters* %220, i64 0, i32 6, !dbg !1502
  %223 = load i32* %type.i355, align 4, !dbg !1502, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %223}, i64 0, metadata !1503) #1, !dbg !1502
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !1504) #1, !dbg !1505
  %cmp.i356 = icmp eq i32 %223, 2, !dbg !1506
  br i1 %cmp.i356, label %if.else11.i, label %land.lhs.true.i358, !dbg !1506

land.lhs.true.i358:                               ; preds = %if.then62
  %GenerateMultiplePPS.i = getelementptr inbounds %struct.InputParameters* %215, i64 0, i32 15, !dbg !1506
  %224 = load i32* %GenerateMultiplePPS.i, align 4, !dbg !1506, !tbaa !1132
  %tobool.i357 = icmp eq i32 %224, 0, !dbg !1506
  br i1 %tobool.i357, label %if.else11.i, label %if.then.i359, !dbg !1506

if.then.i359:                                     ; preds = %land.lhs.true.i358
  %cmp4.i = icmp eq i32 %223, 0, !dbg !1507
  br i1 %cmp4.i, label %if.then5.i, label %if.else9.i, !dbg !1507

if.then5.i:                                       ; preds = %if.then.i359
  %call.i360 = call i32 @test_wp_P_slice(i32 0) #7, !dbg !1509
  %cmp6.i361 = icmp eq i32 %call.i360, 1, !dbg !1509
  br i1 %cmp6.i361, label %if.then7.i, label %if.end14.i, !dbg !1509

if.then7.i:                                       ; preds = %if.then5.i
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1511, !tbaa !1126
  %.pre126.i = load %struct.ImageParameters** @img, align 8, !dbg !1513, !tbaa !1126
  %qp15.phi.trans.insert.i = getelementptr inbounds %struct.ImageParameters* %.pre126.i, i64 0, i32 10
  %.pre127.i = load i32* %qp15.phi.trans.insert.i, align 4, !dbg !1513, !tbaa !1132
  br label %if.end14.thread.i, !dbg !1514

if.else9.i:                                       ; preds = %if.then.i359
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 2), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1515, !tbaa !1126
  br label %if.end14.thread.i

if.else11.i:                                      ; preds = %land.lhs.true.i358, %if.then62
  %sub13.i = add nsw i32 %221, -1, !dbg !1517
  store i32 %sub13.i, i32* %qp.i354, align 4, !dbg !1517, !tbaa !1132
  %.pre.i362 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1519, !tbaa !1126
  br label %if.end14.thread.i

if.end14.thread.i:                                ; preds = %if.else11.i, %if.else9.i, %if.then7.i
  %.ph.i = phi i32 [ %.pre127.i, %if.then7.i ], [ %221, %if.else9.i ], [ %sub13.i, %if.else11.i ]
  %.ph129.i = phi %struct.ImageParameters* [ %.pre126.i, %if.then7.i ], [ %220, %if.else9.i ], [ %220, %if.else11.i ]
  %.ph130.i = phi %struct.pic_parameter_set_rbsp_t* [ getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1), %if.then7.i ], [ getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 2), %if.else9.i ], [ %.pre.i362, %if.else11.i ]
  %write_macroblock131.i = getelementptr inbounds %struct.ImageParameters* %.ph129.i, i64 0, i32 140, !dbg !1520
  store i32 0, i32* %write_macroblock131.i, align 4, !dbg !1520, !tbaa !1132
  br label %if.end21.i364, !dbg !1521

if.end14.i:                                       ; preds = %if.then5.i
  %225 = load %struct.InputParameters** @input, align 8, !dbg !1522, !tbaa !1126
  %RDPSliceWeightOnly.i = getelementptr inbounds %struct.InputParameters* %225, i64 0, i32 51, !dbg !1522
  %226 = load i32* %RDPSliceWeightOnly.i, align 4, !dbg !1522, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %226}, i64 0, metadata !1504) #1, !dbg !1522
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1524, !tbaa !1126
  %227 = load %struct.ImageParameters** @img, align 8, !dbg !1525, !tbaa !1126
  %qp8.i = getelementptr inbounds %struct.ImageParameters* %227, i64 0, i32 10, !dbg !1525
  %228 = load i32* %qp8.i, align 4, !dbg !1525, !tbaa !1132
  %sub.i363 = add nsw i32 %228, -1, !dbg !1525
  store i32 %sub.i363, i32* %qp8.i, align 4, !dbg !1525, !tbaa !1132
  %write_macroblock.i = getelementptr inbounds %struct.ImageParameters* %227, i64 0, i32 140, !dbg !1520
  store i32 0, i32* %write_macroblock.i, align 4, !dbg !1520, !tbaa !1132
  %tobool16.i = icmp eq i32 %226, 0, !dbg !1521
  br i1 %tobool16.i, label %if.end21.i364, label %if.end21.thread.i, !dbg !1521

if.end21.thread.i:                                ; preds = %if.end14.i
  %rd_pass.i = getelementptr inbounds %struct.ImageParameters* %227, i64 0, i32 58, !dbg !1526
  store i32 0, i32* %rd_pass.i, align 4, !dbg !1526, !tbaa !1132
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture2, align 8, !dbg !1528, !tbaa !1126
  br label %if.then24.i365, !dbg !1529

if.end21.i364:                                    ; preds = %if.end14.i, %if.end14.thread.i
  %229 = phi %struct.pic_parameter_set_rbsp_t* [ %.ph130.i, %if.end14.thread.i ], [ getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %if.end14.i ]
  %230 = phi i32 [ %.ph.i, %if.end14.thread.i ], [ %sub.i363, %if.end14.i ]
  %231 = load %struct.Picture** @frame_pic2, align 8, !dbg !1530, !tbaa !1126
  call void @frame_picture(%struct.Picture* %231, i32 1) #7, !dbg !1530
  %232 = load %struct.Picture** @frame_pic, align 8, !dbg !1532, !tbaa !1126
  %233 = load %struct.Picture** @frame_pic2, align 8, !dbg !1532, !tbaa !1126
  %call19.i = call i32 @picture_coding_decision(%struct.Picture* %232, %struct.Picture* %233, i32 %221) #7, !dbg !1532
  %234 = load %struct.ImageParameters** @img, align 8, !dbg !1532, !tbaa !1126
  %rd_pass20.i = getelementptr inbounds %struct.ImageParameters* %234, i64 0, i32 58, !dbg !1532
  store i32 %call19.i, i32* %rd_pass20.i, align 4, !dbg !1532, !tbaa !1132
  %phitmp.i = icmp eq i32 %call19.i, 0
  br i1 %phitmp.i, label %if.then24.i365, label %if.else35.i, !dbg !1529

if.then24.i365:                                   ; preds = %if.end21.i364, %if.end21.thread.i
  %235 = phi %struct.ImageParameters* [ %227, %if.end21.thread.i ], [ %234, %if.end21.i364 ]
  %236 = phi i32 [ %sub.i363, %if.end21.thread.i ], [ %230, %if.end21.i364 ]
  %237 = phi %struct.pic_parameter_set_rbsp_t* [ getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %if.end21.thread.i ], [ %229, %if.end21.i364 ]
  %skip_encode.0133136.i = phi i32 [ %226, %if.end21.thread.i ], [ 0, %if.end21.i364 ]
  %238 = load %struct.storable_picture** @enc_frame_picture, align 8, !dbg !1533, !tbaa !1126
  store %struct.storable_picture* %238, %struct.storable_picture** @enc_picture, align 8, !dbg !1533, !tbaa !1126
  %type25.i = getelementptr inbounds %struct.ImageParameters* %235, i64 0, i32 6, !dbg !1535
  %239 = load i32* %type25.i, align 4, !dbg !1535, !tbaa !1132
  %cmp26.i = icmp eq i32 %239, 2, !dbg !1535
  br i1 %cmp26.i, label %if.else32.i, label %land.lhs.true27.i, !dbg !1535

land.lhs.true27.i:                                ; preds = %if.then24.i365
  %240 = load %struct.InputParameters** @input, align 8, !dbg !1535, !tbaa !1126
  %GenerateMultiplePPS28.i = getelementptr inbounds %struct.InputParameters* %240, i64 0, i32 15, !dbg !1535
  %241 = load i32* %GenerateMultiplePPS28.i, align 4, !dbg !1535, !tbaa !1132
  %tobool29.i = icmp eq i32 %241, 0, !dbg !1535
  br i1 %tobool29.i, label %if.else32.i, label %if.then30.i367, !dbg !1535

if.then30.i367:                                   ; preds = %land.lhs.true27.i
  %qp31.i366 = getelementptr inbounds %struct.ImageParameters* %235, i64 0, i32 10, !dbg !1536
  store i32 %221, i32* %qp31.i366, align 4, !dbg !1536, !tbaa !1132
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1538, !tbaa !1126
  br label %if.end34.i, !dbg !1539

if.else32.i:                                      ; preds = %land.lhs.true27.i, %if.then24.i365
  %qp33.i = getelementptr inbounds %struct.ImageParameters* %235, i64 0, i32 10, !dbg !1540
  store i32 %221, i32* %qp33.i, align 4, !dbg !1540, !tbaa !1132
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else32.i, %if.then30.i367
  store i32 %222, i32* @intras, align 4, !dbg !1542, !tbaa !1132
  br label %if.end36.i, !dbg !1543

if.else35.i:                                      ; preds = %if.end21.i364
  %242 = load i32* @intras, align 4, !dbg !1544, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %242}, i64 0, metadata !1501) #1, !dbg !1544
  %type37.pre.i = getelementptr inbounds %struct.ImageParameters* %234, i64 0, i32 6, !dbg !1546
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else35.i, %if.end34.i
  %243 = phi %struct.ImageParameters* [ %234, %if.else35.i ], [ %235, %if.end34.i ]
  %244 = phi i32 [ %230, %if.else35.i ], [ %236, %if.end34.i ]
  %245 = phi %struct.pic_parameter_set_rbsp_t* [ %229, %if.else35.i ], [ %237, %if.end34.i ]
  %skip_encode.0133135.i = phi i32 [ 0, %if.else35.i ], [ %skip_encode.0133136.i, %if.end34.i ]
  %type37.pre-phi.i = phi i32* [ %type37.pre.i, %if.else35.i ], [ %type25.i, %if.end34.i ], !dbg !1546
  %previntras.0.i = phi i32 [ %242, %if.else35.i ], [ %222, %if.end34.i ]
  %246 = load i32* %type37.pre-phi.i, align 4, !dbg !1546, !tbaa !1132
  %cmp38.i = icmp eq i32 %246, 2, !dbg !1546
  br i1 %cmp38.i, label %if.else69.i, label %land.lhs.true39.i, !dbg !1546

land.lhs.true39.i:                                ; preds = %if.end36.i
  %247 = load %struct.InputParameters** @input, align 8, !dbg !1546, !tbaa !1126
  %GenerateMultiplePPS40.i = getelementptr inbounds %struct.InputParameters* %247, i64 0, i32 15, !dbg !1546
  %248 = load i32* %GenerateMultiplePPS40.i, align 4, !dbg !1546, !tbaa !1132
  %tobool41.i = icmp eq i32 %248, 0, !dbg !1546
  br i1 %tobool41.i, label %if.else69.i, label %if.then42.i, !dbg !1546

if.then42.i:                                      ; preds = %land.lhs.true39.i
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !1504) #1, !dbg !1547
  %qp43.i368 = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 10, !dbg !1549
  store i32 %221, i32* %qp43.i368, align 4, !dbg !1549, !tbaa !1132
  %cmp45.i = icmp eq i32 %246, 0, !dbg !1550
  br i1 %cmp45.i, label %if.then46.i, label %if.else54.i, !dbg !1550

if.then46.i:                                      ; preds = %if.then42.i
  %call47.i369 = call i32 @test_wp_P_slice(i32 1) #7, !dbg !1551
  %cmp48.i = icmp eq i32 %call47.i369, 1, !dbg !1551
  br i1 %cmp48.i, label %if.then49.i, label %if.else50.i, !dbg !1551

if.then49.i:                                      ; preds = %if.then46.i
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1553, !tbaa !1126
  br label %if.end72.i375, !dbg !1555

if.else50.i:                                      ; preds = %if.then46.i
  %249 = load %struct.InputParameters** @input, align 8, !dbg !1556, !tbaa !1126
  %RDPSliceWeightOnly51.i = getelementptr inbounds %struct.InputParameters* %249, i64 0, i32 51, !dbg !1556
  %250 = load i32* %RDPSliceWeightOnly51.i, align 4, !dbg !1556, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %250}, i64 0, metadata !1504) #1, !dbg !1556
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1558, !tbaa !1126
  %251 = load %struct.ImageParameters** @img, align 8, !dbg !1559, !tbaa !1126
  %qp52.i = getelementptr inbounds %struct.ImageParameters* %251, i64 0, i32 10, !dbg !1559
  %252 = load i32* %qp52.i, align 4, !dbg !1559, !tbaa !1132
  %add.i370 = add nsw i32 %252, 1, !dbg !1559
  store i32 %add.i370, i32* %qp52.i, align 4, !dbg !1559, !tbaa !1132
  br label %if.end72.i375

if.else54.i:                                      ; preds = %if.then42.i
  %call55.i371 = call i32 @test_wp_B_slice(i32 0) #7, !dbg !1560
  %cmp56.i = icmp eq i32 %call55.i371, 1, !dbg !1560
  br i1 %cmp56.i, label %if.then57.i, label %if.else58.i, !dbg !1560

if.then57.i:                                      ; preds = %if.else54.i
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 1), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1562, !tbaa !1126
  br label %if.end72.i375, !dbg !1564

if.else58.i:                                      ; preds = %if.else54.i
  %253 = load %struct.InputParameters** @input, align 8, !dbg !1565, !tbaa !1126
  %RDBSliceWeightOnly.i = getelementptr inbounds %struct.InputParameters* %253, i64 0, i32 52, !dbg !1565
  %254 = load i32* %RDBSliceWeightOnly.i, align 4, !dbg !1565, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %254}, i64 0, metadata !1504) #1, !dbg !1565
  %255 = load %struct.ImageParameters** @img, align 8, !dbg !1567, !tbaa !1126
  %nal_reference_idc.i372 = getelementptr inbounds %struct.ImageParameters* %255, i64 0, i32 113, !dbg !1567
  %256 = load i32* %nal_reference_idc.i372, align 4, !dbg !1567, !tbaa !1132
  %tobool59.i = icmp eq i32 %256, 0, !dbg !1567
  br i1 %tobool59.i, label %if.else63.i374, label %if.then60.i373, !dbg !1567

if.then60.i373:                                   ; preds = %if.else58.i
  %sub61.i = add nsw i32 %221, -1, !dbg !1568
  %qp62.i = getelementptr inbounds %struct.ImageParameters* %255, i64 0, i32 10, !dbg !1568
  store i32 %sub61.i, i32* %qp62.i, align 4, !dbg !1568, !tbaa !1132
  br label %if.end72.i375, !dbg !1568

if.else63.i374:                                   ; preds = %if.else58.i
  %add64.i = add nsw i32 %221, 1, !dbg !1569
  %qp65.i = getelementptr inbounds %struct.ImageParameters* %255, i64 0, i32 10, !dbg !1569
  store i32 %add64.i, i32* %qp65.i, align 4, !dbg !1569, !tbaa !1132
  br label %if.end72.i375

if.else69.i:                                      ; preds = %land.lhs.true39.i, %if.end36.i
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1570, !tbaa !1126
  %add70.i = add nsw i32 %221, 1, !dbg !1572
  %qp71.i = getelementptr inbounds %struct.ImageParameters* %243, i64 0, i32 10, !dbg !1572
  store i32 %add70.i, i32* %qp71.i, align 4, !dbg !1572, !tbaa !1132
  br label %if.end72.i375

if.end72.i375:                                    ; preds = %if.else69.i, %if.else63.i374, %if.then60.i373, %if.then57.i, %if.else50.i, %if.then49.i
  %skip_encode.1.i = phi i32 [ 0, %if.then49.i ], [ %250, %if.else50.i ], [ 0, %if.then57.i ], [ %254, %if.then60.i373 ], [ %254, %if.else63.i374 ], [ %skip_encode.0133135.i, %if.else69.i ]
  %257 = load %struct.ImageParameters** @img, align 8, !dbg !1573, !tbaa !1126
  %type73.i = getelementptr inbounds %struct.ImageParameters* %257, i64 0, i32 6, !dbg !1573
  %258 = load i32* %type73.i, align 4, !dbg !1573, !tbaa !1132
  %cmp74.i = icmp eq i32 %258, 0, !dbg !1573
  br i1 %cmp74.i, label %land.lhs.true75.i, label %if.end82.i, !dbg !1573

land.lhs.true75.i:                                ; preds = %if.end72.i375
  %259 = load %struct.InputParameters** @input, align 8, !dbg !1573, !tbaa !1126
  %GenerateMultiplePPS76.i = getelementptr inbounds %struct.InputParameters* %259, i64 0, i32 15, !dbg !1573
  %260 = load i32* %GenerateMultiplePPS76.i, align 4, !dbg !1573, !tbaa !1132
  %tobool77.i = icmp eq i32 %260, 0, !dbg !1573
  br i1 %tobool77.i, label %if.end82.i, label %land.lhs.true78.i, !dbg !1573

land.lhs.true78.i:                                ; preds = %land.lhs.true75.i
  %261 = load i32* @intras, align 4, !dbg !1573, !tbaa !1132
  %mul.i376 = mul nsw i32 %261, 100, !dbg !1573
  %FrameSizeInMbs.i = getelementptr inbounds %struct.ImageParameters* %257, i64 0, i32 111, !dbg !1573
  %262 = load i32* %FrameSizeInMbs.i, align 4, !dbg !1573, !tbaa !1132
  %div.i377 = udiv i32 %mul.i376, %262, !dbg !1573
  %cmp79.i378 = icmp ugt i32 %div.i377, 74, !dbg !1573
  br i1 %cmp79.i378, label %if.then80.i, label %if.end82.i, !dbg !1573

if.then80.i:                                      ; preds = %land.lhs.true78.i
  store i32 2, i32* %type73.i, align 4, !dbg !1574, !tbaa !1132
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1576, !tbaa !1126
  br label %if.end82.i, !dbg !1577

if.end82.i:                                       ; preds = %if.then80.i, %land.lhs.true78.i, %land.lhs.true75.i, %if.end72.i375
  %write_macroblock83.i = getelementptr inbounds %struct.ImageParameters* %257, i64 0, i32 140, !dbg !1578
  store i32 0, i32* %write_macroblock83.i, align 4, !dbg !1578, !tbaa !1132
  %tobool84.i = icmp eq i32 %skip_encode.1.i, 0, !dbg !1579
  br i1 %tobool84.i, label %if.else87.i, label %if.then85.i, !dbg !1579

if.then85.i:                                      ; preds = %if.end82.i
  store %struct.storable_picture* null, %struct.storable_picture** @enc_frame_picture3, align 8, !dbg !1580, !tbaa !1126
  %qp86.i = getelementptr inbounds %struct.ImageParameters* %257, i64 0, i32 10, !dbg !1582
  store i32 %221, i32* %qp86.i, align 4, !dbg !1582, !tbaa !1132
  %rd_pass100.phi.trans.insert.i = getelementptr inbounds %struct.ImageParameters* %257, i64 0, i32 58
  %.pre128.i = load i32* %rd_pass100.phi.trans.insert.i, align 4, !dbg !1583, !tbaa !1132
  br label %if.end99.i, !dbg !1584

if.else87.i:                                      ; preds = %if.end82.i
  %263 = load %struct.Picture** @frame_pic3, align 8, !dbg !1585, !tbaa !1126
  call void @frame_picture(%struct.Picture* %263, i32 2) #7, !dbg !1585
  %264 = load %struct.ImageParameters** @img, align 8, !dbg !1587, !tbaa !1126
  %rd_pass88.i = getelementptr inbounds %struct.ImageParameters* %264, i64 0, i32 58, !dbg !1587
  %265 = load i32* %rd_pass88.i, align 4, !dbg !1587, !tbaa !1132
  %cmp89.i = icmp eq i32 %265, 0, !dbg !1587
  br i1 %cmp89.i, label %if.then90.i, label %if.else94.i, !dbg !1587

if.then90.i:                                      ; preds = %if.else87.i
  %266 = load %struct.Picture** @frame_pic, align 8, !dbg !1588, !tbaa !1126
  %267 = load %struct.Picture** @frame_pic3, align 8, !dbg !1588, !tbaa !1126
  %call91.i = call i32 @picture_coding_decision(%struct.Picture* %266, %struct.Picture* %267, i32 %221) #7, !dbg !1588
  %mul92.i = shl nsw i32 %call91.i, 1, !dbg !1588
  %268 = load %struct.ImageParameters** @img, align 8, !dbg !1588, !tbaa !1126
  %rd_pass93.i = getelementptr inbounds %struct.ImageParameters* %268, i64 0, i32 58, !dbg !1588
  store i32 %mul92.i, i32* %rd_pass93.i, align 4, !dbg !1588, !tbaa !1132
  br label %if.end99.i, !dbg !1588

if.else94.i:                                      ; preds = %if.else87.i
  %269 = load %struct.Picture** @frame_pic2, align 8, !dbg !1589, !tbaa !1126
  %270 = load %struct.Picture** @frame_pic3, align 8, !dbg !1589, !tbaa !1126
  %call95.i = call i32 @picture_coding_decision(%struct.Picture* %269, %struct.Picture* %270, i32 %221) #7, !dbg !1589
  %271 = load %struct.ImageParameters** @img, align 8, !dbg !1589, !tbaa !1126
  %rd_pass96.i = getelementptr inbounds %struct.ImageParameters* %271, i64 0, i32 58, !dbg !1589
  %272 = load i32* %rd_pass96.i, align 4, !dbg !1589, !tbaa !1132
  %add97.i = add i32 %272, %call95.i, !dbg !1589
  store i32 %add97.i, i32* %rd_pass96.i, align 4, !dbg !1589, !tbaa !1132
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.else94.i, %if.then90.i, %if.then85.i
  %273 = phi i32 [ %mul92.i, %if.then90.i ], [ %add97.i, %if.else94.i ], [ %.pre128.i, %if.then85.i ]
  %274 = phi %struct.ImageParameters* [ %268, %if.then90.i ], [ %271, %if.else94.i ], [ %257, %if.then85.i ]
  switch i32 %273, label %if.end63 [
    i32 0, label %if.then102.i
    i32 1, label %if.then108.i
  ], !dbg !1583

if.then102.i:                                     ; preds = %if.end99.i
  %275 = load %struct.storable_picture** @enc_frame_picture, align 8, !dbg !1590, !tbaa !1126
  store %struct.storable_picture* %275, %struct.storable_picture** @enc_picture, align 8, !dbg !1590, !tbaa !1126
  %type103.i = getelementptr inbounds %struct.ImageParameters* %274, i64 0, i32 6, !dbg !1592
  store i32 %223, i32* %type103.i, align 4, !dbg !1592, !tbaa !1132
  store %struct.pic_parameter_set_rbsp_t* getelementptr inbounds ([256 x %struct.pic_parameter_set_rbsp_t]* @PicParSet, i64 0, i64 0), %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1593, !tbaa !1126
  %qp104.i = getelementptr inbounds %struct.ImageParameters* %274, i64 0, i32 10, !dbg !1594
  store i32 %221, i32* %qp104.i, align 4, !dbg !1594, !tbaa !1132
  store i32 %previntras.0.i, i32* @intras, align 4, !dbg !1595, !tbaa !1132
  br label %if.end63, !dbg !1596

if.then108.i:                                     ; preds = %if.end99.i
  %276 = load %struct.storable_picture** @enc_frame_picture2, align 8, !dbg !1597, !tbaa !1126
  store %struct.storable_picture* %276, %struct.storable_picture** @enc_picture, align 8, !dbg !1597, !tbaa !1126
  %type109.i = getelementptr inbounds %struct.ImageParameters* %274, i64 0, i32 6, !dbg !1599
  store i32 %223, i32* %type109.i, align 4, !dbg !1599, !tbaa !1132
  store %struct.pic_parameter_set_rbsp_t* %245, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1600, !tbaa !1126
  %qp110.i = getelementptr inbounds %struct.ImageParameters* %274, i64 0, i32 10, !dbg !1601
  store i32 %244, i32* %qp110.i, align 4, !dbg !1601, !tbaa !1132
  store i32 %previntras.0.i, i32* @intras, align 4, !dbg !1602, !tbaa !1132
  br label %if.end63, !dbg !1603

if.end63:                                         ; preds = %if.end99.i, %if.then108.i, %if.then102.i, %land.lhs.true60, %lor.lhs.false
  %277 = load %struct.InputParameters** @input, align 8, !dbg !1604, !tbaa !1126
  %MbInterlace64 = getelementptr inbounds %struct.InputParameters* %277, i64 0, i32 92, !dbg !1604
  %278 = load i32* %MbInterlace64, align 4, !dbg !1604, !tbaa !1132
  %tobool65 = icmp eq i32 %278, 0, !dbg !1604
  br i1 %tobool65, label %if.end67, label %if.then66, !dbg !1604

if.then66:                                        ; preds = %if.end63
  store i32 0, i32* @mb_adaptive, align 4, !dbg !1605, !tbaa !1132
  br label %if.end67, !dbg !1605

if.end67:                                         ; preds = %if.end63, %if.then66
  %PicInterlace68 = getelementptr inbounds %struct.InputParameters* %277, i64 0, i32 91, !dbg !1606
  %279 = load i32* %PicInterlace68, align 4, !dbg !1606, !tbaa !1132
  %cmp69 = icmp eq i32 %279, 2, !dbg !1606
  %280 = load %struct.ImageParameters** @img, align 8, !dbg !1607, !tbaa !1126
  br i1 %cmp69, label %if.then70, label %if.else90, !dbg !1606

if.then70:                                        ; preds = %if.end67
  %FieldControl71 = getelementptr inbounds %struct.ImageParameters* %280, i64 0, i32 134, !dbg !1607
  store i32 1, i32* %FieldControl71, align 4, !dbg !1607, !tbaa !1132
  %write_macroblock72 = getelementptr inbounds %struct.ImageParameters* %280, i64 0, i32 140, !dbg !1609
  store i32 0, i32* %write_macroblock72, align 4, !dbg !1609, !tbaa !1132
  %bot_MB = getelementptr inbounds %struct.ImageParameters* %280, i64 0, i32 141, !dbg !1610
  store i32 0, i32* %bot_MB, align 4, !dbg !1610, !tbaa !1132
  %field_picture73 = getelementptr inbounds %struct.ImageParameters* %280, i64 0, i32 100, !dbg !1611
  store i32 1, i32* %field_picture73, align 4, !dbg !1611, !tbaa !1132
  %281 = load %struct.Picture** @top_pic, align 8, !dbg !1612, !tbaa !1126
  %282 = load %struct.Picture** @bottom_pic, align 8, !dbg !1612, !tbaa !1126
  call void @field_picture(%struct.Picture* %281, %struct.Picture* %282) #8, !dbg !1612
  %283 = load %struct.Picture** @top_pic, align 8, !dbg !1613, !tbaa !1126
  %284 = load %struct.Picture** @frame_pic, align 8, !dbg !1614, !tbaa !1126
  %285 = load %struct.Picture** @bottom_pic, align 8, !dbg !1615, !tbaa !1126
  call void @llvm.dbg.value(metadata !{%struct.Picture* %284}, i64 0, metadata !1616) #1, !dbg !1617
  call void @llvm.dbg.value(metadata !{%struct.Picture* %283}, i64 0, metadata !1618) #1, !dbg !1617
  call void @llvm.dbg.value(metadata !{%struct.Picture* %285}, i64 0, metadata !1619) #1, !dbg !1617
  %286 = load %struct.ImageParameters** @img, align 8, !dbg !1620, !tbaa !1126
  %type.i379 = getelementptr inbounds %struct.ImageParameters* %286, i64 0, i32 6, !dbg !1620
  %287 = load i32* %type.i379, align 4, !dbg !1620, !tbaa !1132
  %cmp.i380 = icmp eq i32 %287, 1, !dbg !1620
  %bitdepth_lambda_scale.i = getelementptr inbounds %struct.ImageParameters* %286, i64 0, i32 153, !dbg !1621
  %288 = load i32* %bitdepth_lambda_scale.i, align 4, !dbg !1621, !tbaa !1132
  %conv1.i381 = sitofp i32 %288 to double, !dbg !1621
  %qp.i382 = getelementptr inbounds %struct.ImageParameters* %286, i64 0, i32 10, !dbg !1621
  %289 = load i32* %qp.i382, align 4, !dbg !1621, !tbaa !1132
  %sub.i383 = add nsw i32 %289, -12, !dbg !1621
  %conv2.i384 = sitofp i32 %sub.i383 to double, !dbg !1621
  %div.i385 = fdiv double %conv2.i384, 3.000000e+00, !dbg !1621
  %add.i386 = fadd double %conv1.i381, %div.i385, !dbg !1621
  %exp2.i = call double @exp2(double %add.i386) #4, !dbg !1621
  %mul.i387 = fmul double %exp2.i, 8.500000e-01, !dbg !1621
  %conv3.i = select i1 %cmp.i380, double 4.000000e+00, double 1.000000e+00, !dbg !1621
  %mul4.i388 = fmul double %conv3.i, %mul.i387, !dbg !1621
  call void @llvm.dbg.value(metadata !{double %mul4.i388}, i64 0, metadata !1622) #1, !dbg !1621
  %distortion_y.i = getelementptr inbounds %struct.Picture* %284, i64 0, i32 4, !dbg !1623
  %290 = load float* %distortion_y.i, align 4, !dbg !1623, !tbaa !1197
  %distortion_u.i = getelementptr inbounds %struct.Picture* %284, i64 0, i32 5, !dbg !1623
  %291 = load float* %distortion_u.i, align 4, !dbg !1623, !tbaa !1197
  %add5.i = fadd float %290, %291, !dbg !1623
  %distortion_v.i = getelementptr inbounds %struct.Picture* %284, i64 0, i32 6, !dbg !1623
  %292 = load float* %distortion_v.i, align 4, !dbg !1623, !tbaa !1197
  %add6.i = fadd float %add5.i, %292, !dbg !1623
  call void @llvm.dbg.value(metadata !{float %add6.i}, i64 0, metadata !1624) #1, !dbg !1623
  %distortion_y7.i = getelementptr inbounds %struct.Picture* %283, i64 0, i32 4, !dbg !1625
  %293 = load float* %distortion_y7.i, align 4, !dbg !1625, !tbaa !1197
  %distortion_u8.i = getelementptr inbounds %struct.Picture* %283, i64 0, i32 5, !dbg !1625
  %294 = load float* %distortion_u8.i, align 4, !dbg !1625, !tbaa !1197
  %add9.i = fadd float %293, %294, !dbg !1625
  %distortion_v10.i = getelementptr inbounds %struct.Picture* %283, i64 0, i32 6, !dbg !1625
  %295 = load float* %distortion_v10.i, align 4, !dbg !1625, !tbaa !1197
  %add11.i = fadd float %add9.i, %295, !dbg !1625
  call void @llvm.dbg.value(metadata !{float %add11.i}, i64 0, metadata !1626) #1, !dbg !1625
  %bits_per_picture.i = getelementptr inbounds %struct.Picture* %283, i64 0, i32 3, !dbg !1627
  %296 = load i32* %bits_per_picture.i, align 4, !dbg !1627, !tbaa !1132
  %bits_per_picture12.i = getelementptr inbounds %struct.Picture* %285, i64 0, i32 3, !dbg !1627
  %297 = load i32* %bits_per_picture12.i, align 4, !dbg !1627, !tbaa !1132
  %add13.i = add nsw i32 %297, %296, !dbg !1627
  call void @llvm.dbg.value(metadata !{i32 %add13.i}, i64 0, metadata !1628) #1, !dbg !1627
  %bits_per_picture14.i = getelementptr inbounds %struct.Picture* %284, i64 0, i32 3, !dbg !1629
  %298 = load i32* %bits_per_picture14.i, align 4, !dbg !1629, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %298}, i64 0, metadata !1630) #1, !dbg !1629
  %call15.i = call i32 @decide_fld_frame(float %add6.i, float %add11.i, i32 %add13.i, i32 %298, double %mul4.i388) #7, !dbg !1631
  %299 = load %struct.ImageParameters** @img, align 8, !dbg !1615, !tbaa !1126
  %fld_flag82 = getelementptr inbounds %struct.ImageParameters* %299, i64 0, i32 57, !dbg !1615
  store i32 %call15.i, i32* %fld_flag82, align 4, !dbg !1615, !tbaa !1132
  call void @update_field_frame_contexts(i32 %call15.i) #7, !dbg !1632
  %300 = load %struct.ImageParameters** @img, align 8, !dbg !1633, !tbaa !1126
  %fld_flag84 = getelementptr inbounds %struct.ImageParameters* %300, i64 0, i32 57, !dbg !1633
  %301 = load i32* %fld_flag84, align 4, !dbg !1633, !tbaa !1132
  %cmp85 = icmp eq i32 %301, 0, !dbg !1633
  %FieldFrame = getelementptr inbounds %struct.ImageParameters* %300, i64 0, i32 135, !dbg !1634
  br i1 %cmp85, label %if.then86, label %if.end93, !dbg !1633

if.then86:                                        ; preds = %if.then70
  store i32 1, i32* %FieldFrame, align 4, !dbg !1634, !tbaa !1132
  br label %if.else98, !dbg !1634

if.else90:                                        ; preds = %if.end67
  %fld_flag91 = getelementptr inbounds %struct.ImageParameters* %280, i64 0, i32 57, !dbg !1635
  store i32 0, i32* %fld_flag91, align 4, !dbg !1635, !tbaa !1132
  br label %if.else98

if.end93:                                         ; preds = %if.then70
  store i32 0, i32* %FieldFrame, align 4, !dbg !1636, !tbaa !1132
  br label %if.then96

if.then96:                                        ; preds = %if.end93, %if.end93.thread557
  %.pn = phi %struct.ImageParameters* [ %201, %if.end93.thread557 ], [ %300, %if.end93 ]
  %302 = phi %struct.ImageParameters* [ %201, %if.end93.thread557 ], [ %300, %if.end93 ]
  %303 = load %struct.StatParameters** @stats, align 8, !dbg !1637
  %em_prev_bits_fld = getelementptr inbounds %struct.StatParameters* %303, i64 0, i32 30, !dbg !1637
  %304 = load i32* %em_prev_bits_fld, align 4, !dbg !1637, !tbaa !1132
  %bit_ctr_emulationprevention = getelementptr inbounds %struct.StatParameters* %303, i64 0, i32 7, !dbg !1637
  %305 = load i32* %bit_ctr_emulationprevention, align 4, !dbg !1637, !tbaa !1132
  %add97 = add nsw i32 %305, %304, !dbg !1637
  store i32 %add97, i32* %bit_ctr_emulationprevention, align 4, !dbg !1637, !tbaa !1132
  br label %if.end101, !dbg !1637

if.else98:                                        ; preds = %if.else90, %if.then86
  %.ph = phi %struct.ImageParameters* [ %280, %if.else90 ], [ %300, %if.then86 ]
  %306 = load %struct.StatParameters** @stats, align 8, !dbg !1637, !tbaa !1126
  %em_prev_bits_frm = getelementptr inbounds %struct.StatParameters* %306, i64 0, i32 29, !dbg !1638
  %307 = load i32* %em_prev_bits_frm, align 4, !dbg !1638, !tbaa !1132
  %bit_ctr_emulationprevention99 = getelementptr inbounds %struct.StatParameters* %306, i64 0, i32 7, !dbg !1638
  %308 = load i32* %bit_ctr_emulationprevention99, align 4, !dbg !1638, !tbaa !1132
  %add100 = add nsw i32 %308, %307, !dbg !1638
  store i32 %add100, i32* %bit_ctr_emulationprevention99, align 4, !dbg !1638, !tbaa !1132
  br label %if.end101

if.end101:                                        ; preds = %if.else98, %if.then96
  %.ph.pn = phi %struct.ImageParameters* [ %.ph, %if.else98 ], [ %.pn, %if.then96 ]
  %309 = phi %struct.ImageParameters* [ %.ph, %if.else98 ], [ %302, %if.then96 ]
  %fld_flag94555 = getelementptr inbounds %struct.ImageParameters* %.ph.pn, i64 0, i32 57, !dbg !1475
  %type102 = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 6, !dbg !1639
  %310 = load i32* %type102, align 4, !dbg !1639, !tbaa !1132
  %cmp103 = icmp eq i32 %310, 1, !dbg !1639
  %.pre551 = load i32* %fld_flag94555, align 4, !dbg !1640, !tbaa !1132
  br i1 %cmp103, label %if.end106, label %if.then104, !dbg !1639

if.then104:                                       ; preds = %if.end101
  %pstruct_next_P = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 60, !dbg !1641
  store i32 %.pre551, i32* %pstruct_next_P, align 4, !dbg !1641, !tbaa !1132
  br label %if.end106, !dbg !1643

if.end106:                                        ; preds = %if.end101, %if.then104
  %tobool108 = icmp eq i32 %.pre551, 0, !dbg !1640
  %311 = load i16*** @imgY_org_frm, align 8, !dbg !1644, !tbaa !1126
  store i16** %311, i16*** @imgY_org, align 8, !dbg !1644, !tbaa !1126
  %312 = load i16**** @imgUV_org_frm, align 8, !dbg !1648, !tbaa !1126
  store i16*** %312, i16**** @imgUV_org, align 8, !dbg !1648, !tbaa !1126
  br i1 %tobool108, label %if.else112, label %if.then109, !dbg !1640

if.then109:                                       ; preds = %if.end106
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !1649), !dbg !1652
  tail call void @llvm.dbg.value(metadata !1232, i64 0, metadata !1653), !dbg !1652
  tail call void @llvm.dbg.value(metadata !1232, i64 0, metadata !1654), !dbg !1652
  tail call void @llvm.dbg.value(metadata !1232, i64 0, metadata !1655), !dbg !1652
  %313 = load %struct.SNRParameters** @snr, align 8, !dbg !1656, !tbaa !1126
  %snr_y.i389 = getelementptr inbounds %struct.SNRParameters* %313, i64 0, i32 0, !dbg !1656
  store float 0.000000e+00, float* %snr_y.i389, align 4, !dbg !1656, !tbaa !1197
  %snr_u.i390 = getelementptr inbounds %struct.SNRParameters* %313, i64 0, i32 1, !dbg !1657
  store float 0.000000e+00, float* %snr_u.i390, align 4, !dbg !1657, !tbaa !1197
  %snr_v.i391 = getelementptr inbounds %struct.SNRParameters* %313, i64 0, i32 2, !dbg !1658
  store float 0.000000e+00, float* %snr_v.i391, align 4, !dbg !1658, !tbaa !1197
  %314 = load %struct.Picture** @top_pic, align 8, !dbg !1659, !tbaa !1126
  call fastcc void @writeout_picture(%struct.Picture* %314) #8, !dbg !1659
  %315 = load %struct.Picture** @bottom_pic, align 8, !dbg !1660, !tbaa !1126
  call fastcc void @writeout_picture(%struct.Picture* %315) #8, !dbg !1660
  br label %if.end132, !dbg !1661

if.else112:                                       ; preds = %if.end106
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !1662), !dbg !1663
  tail call void @llvm.dbg.value(metadata !1232, i64 0, metadata !1664), !dbg !1663
  tail call void @llvm.dbg.value(metadata !1232, i64 0, metadata !1665), !dbg !1663
  tail call void @llvm.dbg.value(metadata !1232, i64 0, metadata !1666), !dbg !1663
  %316 = load %struct.InputParameters** @input, align 8, !dbg !1667, !tbaa !1126
  %PicInterlace.i = getelementptr inbounds %struct.InputParameters* %316, i64 0, i32 91, !dbg !1667
  %317 = load i32* %PicInterlace.i, align 4, !dbg !1667, !tbaa !1132
  %cmp.i392 = icmp eq i32 %317, 0, !dbg !1667
  br i1 %cmp.i392, label %lor.lhs.false.i, label %if.then.i401, !dbg !1667

lor.lhs.false.i:                                  ; preds = %if.else112
  %MbInterlace.i = getelementptr inbounds %struct.InputParameters* %316, i64 0, i32 92, !dbg !1667
  %318 = load i32* %MbInterlace.i, align 4, !dbg !1667, !tbaa !1132
  %cmp1.i = icmp eq i32 %318, 0, !dbg !1667
  br i1 %cmp1.i, label %frame_mode_buffer.exit, label %if.then.i401, !dbg !1667

if.then.i401:                                     ; preds = %lor.lhs.false.i, %if.else112
  %height.i = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 15, !dbg !1668
  %319 = load i32* %height.i, align 4, !dbg !1668, !tbaa !1132
  %div.i393 = sdiv i32 %319, 2, !dbg !1668
  store i32 %div.i393, i32* %height.i, align 4, !dbg !1668, !tbaa !1132
  %height_cr.i = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 16, !dbg !1670
  %320 = load i32* %height_cr.i, align 4, !dbg !1670, !tbaa !1132
  %div3.i = sdiv i32 %320, 2, !dbg !1670
  store i32 %div3.i, i32* %height_cr.i, align 4, !dbg !1670, !tbaa !1132
  %number.i394 = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 0, !dbg !1671
  %321 = load i32* %number.i394, align 4, !dbg !1671, !tbaa !1132
  %mul.i395 = shl nsw i32 %321, 1, !dbg !1671
  %fld_type.i1.i = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 56, !dbg !1672
  %inc2.i = or i32 %mul.i395, 1, !dbg !1674
  store i32 1, i32* %fld_type.i1.i, align 4, !dbg !1675, !tbaa !1132
  %div7.i = sdiv i32 %inc2.i, 2, !dbg !1677
  store i32 %div7.i, i32* %number.i394, align 4, !dbg !1677, !tbaa !1132
  %img_height.i = getelementptr inbounds %struct.InputParameters* %316, i64 0, i32 17, !dbg !1678
  %322 = load i32* %img_height.i, align 4, !dbg !1678, !tbaa !1132
  %auto_crop_bottom.i = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 166, !dbg !1678
  %323 = load i32* %auto_crop_bottom.i, align 4, !dbg !1678, !tbaa !1132
  %add.i396 = add nsw i32 %323, %322, !dbg !1678
  store i32 %add.i396, i32* %height.i, align 4, !dbg !1678, !tbaa !1132
  %height_cr_frame.i = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 17, !dbg !1679
  %324 = load i32* %height_cr_frame.i, align 4, !dbg !1679, !tbaa !1132
  store i32 %324, i32* %height_cr.i, align 4, !dbg !1679, !tbaa !1132
  %width.i = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 13, !dbg !1680
  %325 = load i32* %width.i, align 4, !dbg !1680, !tbaa !1132
  %mul11.i = mul nsw i32 %325, %add.i396, !dbg !1680
  %div12.i = sdiv i32 %mul11.i, 256, !dbg !1680
  %total_number_mb.i397 = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 4, !dbg !1680
  store i32 %div12.i, i32* %total_number_mb.i397, align 4, !dbg !1680, !tbaa !1132
  %326 = load %struct.SNRParameters** @snr, align 8, !dbg !1681, !tbaa !1126
  %snr_y.i398 = getelementptr inbounds %struct.SNRParameters* %326, i64 0, i32 0, !dbg !1681
  store float 0.000000e+00, float* %snr_y.i398, align 4, !dbg !1681, !tbaa !1197
  %snr_u.i399 = getelementptr inbounds %struct.SNRParameters* %326, i64 0, i32 1, !dbg !1682
  store float 0.000000e+00, float* %snr_u.i399, align 4, !dbg !1682, !tbaa !1197
  %snr_v.i400 = getelementptr inbounds %struct.SNRParameters* %326, i64 0, i32 2, !dbg !1683
  store float 0.000000e+00, float* %snr_v.i400, align 4, !dbg !1683, !tbaa !1197
  store i16** %311, i16*** @imgY_org, align 8, !dbg !1684, !tbaa !1126
  store i16*** %312, i16**** @imgUV_org, align 8, !dbg !1686, !tbaa !1126
  br label %frame_mode_buffer.exit, !dbg !1687

frame_mode_buffer.exit:                           ; preds = %lor.lhs.false.i, %if.then.i401
  %RDPictureDecision113 = getelementptr inbounds %struct.InputParameters* %316, i64 0, i32 49, !dbg !1688
  %327 = load i32* %RDPictureDecision113, align 4, !dbg !1688, !tbaa !1132
  %tobool114 = icmp eq i32 %327, 0, !dbg !1688
  br i1 %tobool114, label %if.else128, label %land.lhs.true115, !dbg !1688

land.lhs.true115:                                 ; preds = %frame_mode_buffer.exit
  %rd_pass116 = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 58, !dbg !1688
  %328 = load i32* %rd_pass116, align 4, !dbg !1688, !tbaa !1132
  %cmp117 = icmp eq i32 %328, 2, !dbg !1688
  br i1 %cmp117, label %if.then118, label %land.lhs.true123, !dbg !1688

if.then118:                                       ; preds = %land.lhs.true115
  %329 = load %struct.Picture** @frame_pic3, align 8, !dbg !1689, !tbaa !1126
  call fastcc void @writeout_picture(%struct.Picture* %329) #8, !dbg !1689
  br label %if.end132, !dbg !1689

land.lhs.true123:                                 ; preds = %land.lhs.true115
  %rd_pass124 = getelementptr inbounds %struct.ImageParameters* %309, i64 0, i32 58, !dbg !1690
  %330 = load i32* %rd_pass124, align 4, !dbg !1690, !tbaa !1132
  %cmp125 = icmp eq i32 %330, 1, !dbg !1690
  br i1 %cmp125, label %if.then126, label %if.else128, !dbg !1690

if.then126:                                       ; preds = %land.lhs.true123
  %331 = load %struct.Picture** @frame_pic2, align 8, !dbg !1691, !tbaa !1126
  call fastcc void @writeout_picture(%struct.Picture* %331) #8, !dbg !1691
  br label %if.end132, !dbg !1691

if.else128:                                       ; preds = %frame_mode_buffer.exit, %land.lhs.true123
  %332 = load %struct.Picture** @frame_pic, align 8, !dbg !1692, !tbaa !1126
  call fastcc void @writeout_picture(%struct.Picture* %332) #8, !dbg !1692
  br label %if.end132

if.end132:                                        ; preds = %if.then118, %if.else128, %if.then126, %if.then109
  %333 = load %struct.Picture** @frame_pic3, align 8, !dbg !1693, !tbaa !1126
  %tobool133 = icmp eq %struct.Picture* %333, null, !dbg !1693
  br i1 %tobool133, label %if.end135, label %if.then134, !dbg !1693

if.then134:                                       ; preds = %if.end132
  call void @free_slice_list(%struct.Picture* %333) #7, !dbg !1694
  br label %if.end135, !dbg !1694

if.end135:                                        ; preds = %if.end132, %if.then134
  %334 = load %struct.Picture** @frame_pic2, align 8, !dbg !1695, !tbaa !1126
  %tobool136 = icmp eq %struct.Picture* %334, null, !dbg !1695
  br i1 %tobool136, label %if.end138, label %if.then137, !dbg !1695

if.then137:                                       ; preds = %if.end135
  call void @free_slice_list(%struct.Picture* %334) #7, !dbg !1696
  br label %if.end138, !dbg !1696

if.end138:                                        ; preds = %if.end135, %if.then137
  %335 = load %struct.Picture** @frame_pic, align 8, !dbg !1697, !tbaa !1126
  %tobool139 = icmp eq %struct.Picture* %335, null, !dbg !1697
  br i1 %tobool139, label %if.end141, label %if.then140, !dbg !1697

if.then140:                                       ; preds = %if.end138
  call void @free_slice_list(%struct.Picture* %335) #7, !dbg !1698
  br label %if.end141, !dbg !1698

if.end141:                                        ; preds = %if.end138, %if.then140
  %336 = load %struct.Picture** @top_pic, align 8, !dbg !1699, !tbaa !1126
  %tobool142 = icmp eq %struct.Picture* %336, null, !dbg !1699
  br i1 %tobool142, label %if.end144, label %if.then143, !dbg !1699

if.then143:                                       ; preds = %if.end141
  call void @free_slice_list(%struct.Picture* %336) #7, !dbg !1700
  br label %if.end144, !dbg !1700

if.end144:                                        ; preds = %if.end141, %if.then143
  %337 = load %struct.Picture** @bottom_pic, align 8, !dbg !1701, !tbaa !1126
  %tobool145 = icmp eq %struct.Picture* %337, null, !dbg !1701
  br i1 %tobool145, label %if.end147, label %if.then146, !dbg !1701

if.then146:                                       ; preds = %if.end144
  call void @free_slice_list(%struct.Picture* %337) #7, !dbg !1702
  br label %if.end147, !dbg !1702

if.end147:                                        ; preds = %if.end144, %if.then146
  %338 = load %struct.InputParameters** @input, align 8, !dbg !1703, !tbaa !1126
  %RCEnable148 = getelementptr inbounds %struct.InputParameters* %338, i64 0, i32 127, !dbg !1703
  %339 = load i32* %RCEnable148, align 4, !dbg !1703, !tbaa !1132
  %tobool149 = icmp eq i32 %339, 0, !dbg !1703
  br i1 %tobool149, label %if.end151, label %if.then150, !dbg !1703

if.then150:                                       ; preds = %if.end147
  %340 = load %struct.StatParameters** @stats, align 8, !dbg !1704, !tbaa !1126
  %bit_ctr = getelementptr inbounds %struct.StatParameters* %340, i64 0, i32 4, !dbg !1704
  %341 = load i32* %bit_ctr, align 4, !dbg !1704, !tbaa !1132
  %bit_ctr_n = getelementptr inbounds %struct.StatParameters* %340, i64 0, i32 5, !dbg !1704
  %342 = load i32* %bit_ctr_n, align 4, !dbg !1704, !tbaa !1132
  %sub = sub nsw i32 %341, %342, !dbg !1704
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !285), !dbg !1704
  call void @rc_update_pict_frame(i32 %sub) #7, !dbg !1706
  %.pre548 = load %struct.InputParameters** @input, align 8, !dbg !1707, !tbaa !1126
  br label %if.end151, !dbg !1709

if.end151:                                        ; preds = %if.end147, %if.then150
  %343 = phi %struct.InputParameters* [ %.pre548, %if.then150 ], [ %338, %if.end147 ]
  %bits.0 = phi i32 [ %sub, %if.then150 ], [ 0, %if.end147 ]
  call void @llvm.dbg.value(metadata !1710, i64 0, metadata !1711) #1, !dbg !1712
  call void @llvm.dbg.value(metadata !1710, i64 0, metadata !1713) #1, !dbg !1712
  call void @llvm.dbg.value(metadata !1710, i64 0, metadata !1714) #1, !dbg !1712
  %344 = load %struct.ImageParameters** @img, align 8, !dbg !1715, !tbaa !1126
  %max_imgpel_value.i = getelementptr inbounds %struct.ImageParameters* %344, i64 0, i32 155, !dbg !1715
  %345 = load i32* %max_imgpel_value.i, align 4, !dbg !1715, !tbaa !1132
  %mul.i403 = mul nsw i32 %345, %345, !dbg !1715
  call void @llvm.dbg.value(metadata !{i32 %mul.i403}, i64 0, metadata !1716) #1, !dbg !1715
  %max_imgpel_value_uv.i = getelementptr inbounds %struct.ImageParameters* %344, i64 0, i32 156, !dbg !1717
  %346 = load i32* %max_imgpel_value_uv.i, align 4, !dbg !1717, !tbaa !1132
  %mul3.i404 = mul nsw i32 %346, %346, !dbg !1717
  call void @llvm.dbg.value(metadata !{i32 %mul3.i404}, i64 0, metadata !1718) #1, !dbg !1717
  %img_height.i405 = getelementptr inbounds %struct.InputParameters* %343, i64 0, i32 17, !dbg !1707
  %347 = load i32* %img_height.i405, align 4, !dbg !1707, !tbaa !1132
  %img_width.i = getelementptr inbounds %struct.InputParameters* %343, i64 0, i32 16, !dbg !1707
  %348 = load i32* %img_width.i, align 4, !dbg !1707, !tbaa !1132
  %mul4.i406 = mul nsw i32 %348, %347, !dbg !1707
  call void @llvm.dbg.value(metadata !{i32 %mul4.i406}, i64 0, metadata !1719) #1, !dbg !1707
  %img_height_cr.i = getelementptr inbounds %struct.InputParameters* %343, i64 0, i32 137, !dbg !1720
  %349 = load i32* %img_height_cr.i, align 4, !dbg !1720, !tbaa !1132
  %img_width_cr.i = getelementptr inbounds %struct.InputParameters* %343, i64 0, i32 138, !dbg !1720
  %350 = load i32* %img_width_cr.i, align 4, !dbg !1720, !tbaa !1132
  %mul5.i = mul nsw i32 %350, %349, !dbg !1720
  call void @llvm.dbg.value(metadata !{i32 %mul5.i}, i64 0, metadata !1721) #1, !dbg !1720
  %fld_flag.i407 = getelementptr inbounds %struct.ImageParameters* %344, i64 0, i32 57, !dbg !1722
  %351 = load i32* %fld_flag.i407, align 4, !dbg !1722, !tbaa !1132
  %cmp.i408 = icmp eq i32 %351, 0, !dbg !1722
  br i1 %cmp.i408, label %if.else.i420, label %for.cond.preheader.i, !dbg !1722

for.cond.preheader.i:                             ; preds = %if.end151
  %cmp7486.i = icmp sgt i32 %348, 0, !dbg !1723
  br i1 %cmp7486.i, label %for.cond8.preheader.lr.ph.i, label %for.end24.i, !dbg !1723

for.cond8.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %cmp10481.i = icmp sgt i32 %347, 0, !dbg !1726
  %352 = load i16*** @imgY_org, align 8, !dbg !1729, !tbaa !1126
  %353 = load i16*** @imgY_com, align 8, !dbg !1729, !tbaa !1126
  %quad.i = getelementptr inbounds %struct.ImageParameters* %344, i64 0, i32 53, !dbg !1729
  br label %for.cond8.preheader.i, !dbg !1723

for.cond8.preheader.i:                            ; preds = %for.inc22.i, %for.cond8.preheader.lr.ph.i
  %indvars.iv502.i = phi i64 [ 0, %for.cond8.preheader.lr.ph.i ], [ %indvars.iv.next503.i, %for.inc22.i ]
  %diff_y.0487.i = phi i64 [ 0, %for.cond8.preheader.lr.ph.i ], [ %diff_y.1.lcssa.i, %for.inc22.i ]
  br i1 %cmp10481.i, label %for.body11.lr.ph.i, label %for.inc22.i, !dbg !1726

for.body11.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %354 = load i32** %quad.i, align 8, !dbg !1729, !tbaa !1126
  br label %for.body11.i, !dbg !1726

for.body11.i:                                     ; preds = %for.body11.i, %for.body11.lr.ph.i
  %indvars.iv500.i = phi i64 [ 0, %for.body11.lr.ph.i ], [ %indvars.iv.next501.i, %for.body11.i ]
  %diff_y.1482.i = phi i64 [ %diff_y.0487.i, %for.body11.lr.ph.i ], [ %add.i412, %for.body11.i ]
  %arrayidx.i409 = getelementptr inbounds i16** %352, i64 %indvars.iv500.i, !dbg !1729
  %355 = load i16** %arrayidx.i409, align 8, !dbg !1729, !tbaa !1126
  %arrayidx13.i = getelementptr inbounds i16* %355, i64 %indvars.iv502.i, !dbg !1729
  %356 = load i16* %arrayidx13.i, align 2, !dbg !1729, !tbaa !1148
  %conv.i410 = zext i16 %356 to i64, !dbg !1729
  %arrayidx16.i = getelementptr inbounds i16** %353, i64 %indvars.iv500.i, !dbg !1729
  %357 = load i16** %arrayidx16.i, align 8, !dbg !1729, !tbaa !1126
  %arrayidx17.i = getelementptr inbounds i16* %357, i64 %indvars.iv502.i, !dbg !1729
  %358 = load i16* %arrayidx17.i, align 2, !dbg !1729, !tbaa !1148
  %conv18.i = zext i16 %358 to i64, !dbg !1729
  %sub.i411 = sub i64 %conv.i410, %conv18.i, !dbg !1729
  %arrayidx20.i = getelementptr inbounds i32* %354, i64 %sub.i411, !dbg !1729
  %359 = load i32* %arrayidx20.i, align 4, !dbg !1729, !tbaa !1132
  %conv21.i = sext i32 %359 to i64, !dbg !1729
  %add.i412 = add nsw i64 %conv21.i, %diff_y.1482.i, !dbg !1729
  call void @llvm.dbg.value(metadata !{i64 %add.i412}, i64 0, metadata !1711) #1, !dbg !1729
  %indvars.iv.next501.i = add i64 %indvars.iv500.i, 1, !dbg !1726
  %lftr.wideiv533 = trunc i64 %indvars.iv.next501.i to i32, !dbg !1726
  %exitcond534 = icmp eq i32 %lftr.wideiv533, %347, !dbg !1726
  br i1 %exitcond534, label %for.inc22.i, label %for.body11.i, !dbg !1726

for.inc22.i:                                      ; preds = %for.body11.i, %for.cond8.preheader.i
  %diff_y.1.lcssa.i = phi i64 [ %diff_y.0487.i, %for.cond8.preheader.i ], [ %add.i412, %for.body11.i ]
  %indvars.iv.next503.i = add i64 %indvars.iv502.i, 1, !dbg !1723
  %lftr.wideiv535 = trunc i64 %indvars.iv.next503.i to i32, !dbg !1723
  %exitcond536 = icmp eq i32 %lftr.wideiv535, %348, !dbg !1723
  br i1 %exitcond536, label %for.end24.i, label %for.cond8.preheader.i, !dbg !1723

for.end24.i:                                      ; preds = %for.inc22.i, %for.cond.preheader.i
  %diff_y.0.lcssa.i = phi i64 [ 0, %for.cond.preheader.i ], [ %diff_y.1.lcssa.i, %for.inc22.i ]
  %yuv_format.i413 = getelementptr inbounds %struct.ImageParameters* %344, i64 0, i32 159, !dbg !1731
  %360 = load i32* %yuv_format.i413, align 4, !dbg !1731, !tbaa !1132
  %cmp25.i414 = icmp ne i32 %360, 0, !dbg !1731
  %cmp30474.i = icmp sgt i32 %350, 0, !dbg !1732
  %or.cond.i415 = and i1 %cmp25.i414, %cmp30474.i, !dbg !1731
  br i1 %or.cond.i415, label %for.cond33.preheader.lr.ph.i, label %if.then189.i, !dbg !1731

for.cond33.preheader.lr.ph.i:                     ; preds = %for.end24.i
  %cmp35466.i = icmp sgt i32 %349, 0, !dbg !1735
  %361 = load i16**** @imgUV_org, align 8, !dbg !1738, !tbaa !1126
  %362 = load i16**** @imgUV_com, align 8, !dbg !1738, !tbaa !1126
  %quad52.i = getelementptr inbounds %struct.ImageParameters* %344, i64 0, i32 53, !dbg !1738
  %arrayidx58.i = getelementptr inbounds i16*** %361, i64 1, !dbg !1740
  %arrayidx64.i = getelementptr inbounds i16*** %362, i64 1, !dbg !1740
  br label %for.cond33.preheader.i, !dbg !1732

for.cond33.preheader.i:                           ; preds = %for.inc77.i, %for.cond33.preheader.lr.ph.i
  %indvars.iv498.i = phi i64 [ 0, %for.cond33.preheader.lr.ph.i ], [ %indvars.iv.next499.i, %for.inc77.i ]
  %diff_u.0476.i = phi i64 [ 0, %for.cond33.preheader.lr.ph.i ], [ %diff_u.1.lcssa.i, %for.inc77.i ]
  %diff_v.0475.i = phi i64 [ 0, %for.cond33.preheader.lr.ph.i ], [ %diff_v.1.lcssa.i, %for.inc77.i ]
  br i1 %cmp35466.i, label %for.body37.lr.ph.i, label %for.inc77.i, !dbg !1735

for.body37.lr.ph.i:                               ; preds = %for.cond33.preheader.i
  %363 = load i16*** %361, align 8, !dbg !1738, !tbaa !1126
  %364 = load i16*** %362, align 8, !dbg !1738, !tbaa !1126
  %365 = load i32** %quad52.i, align 8, !dbg !1738, !tbaa !1126
  %366 = load i16*** %arrayidx58.i, align 8, !dbg !1740, !tbaa !1126
  %367 = load i16*** %arrayidx64.i, align 8, !dbg !1740, !tbaa !1126
  br label %for.body37.i, !dbg !1735

for.body37.i:                                     ; preds = %for.body37.i, %for.body37.lr.ph.i
  %indvars.iv496.i = phi i64 [ 0, %for.body37.lr.ph.i ], [ %indvars.iv.next497.i, %for.body37.i ]
  %diff_u.1468.i = phi i64 [ %diff_u.0476.i, %for.body37.lr.ph.i ], [ %add55.i, %for.body37.i ]
  %diff_v.1467.i = phi i64 [ %diff_v.0475.i, %for.body37.lr.ph.i ], [ %add73.i, %for.body37.i ]
  %arrayidx41.i = getelementptr inbounds i16** %363, i64 %indvars.iv496.i, !dbg !1738
  %368 = load i16** %arrayidx41.i, align 8, !dbg !1738, !tbaa !1126
  %arrayidx42.i = getelementptr inbounds i16* %368, i64 %indvars.iv498.i, !dbg !1738
  %369 = load i16* %arrayidx42.i, align 2, !dbg !1738, !tbaa !1148
  %conv43.i = zext i16 %369 to i64, !dbg !1738
  %arrayidx47.i = getelementptr inbounds i16** %364, i64 %indvars.iv496.i, !dbg !1738
  %370 = load i16** %arrayidx47.i, align 8, !dbg !1738, !tbaa !1126
  %arrayidx48.i = getelementptr inbounds i16* %370, i64 %indvars.iv498.i, !dbg !1738
  %371 = load i16* %arrayidx48.i, align 2, !dbg !1738, !tbaa !1148
  %conv49.i416 = zext i16 %371 to i64, !dbg !1738
  %sub50.i = sub i64 %conv43.i, %conv49.i416, !dbg !1738
  %arrayidx53.i = getelementptr inbounds i32* %365, i64 %sub50.i, !dbg !1738
  %372 = load i32* %arrayidx53.i, align 4, !dbg !1738, !tbaa !1132
  %conv54.i = sext i32 %372 to i64, !dbg !1738
  %add55.i = add nsw i64 %conv54.i, %diff_u.1468.i, !dbg !1738
  call void @llvm.dbg.value(metadata !{i64 %add55.i}, i64 0, metadata !1713) #1, !dbg !1738
  %arrayidx59.i = getelementptr inbounds i16** %366, i64 %indvars.iv496.i, !dbg !1740
  %373 = load i16** %arrayidx59.i, align 8, !dbg !1740, !tbaa !1126
  %arrayidx60.i = getelementptr inbounds i16* %373, i64 %indvars.iv498.i, !dbg !1740
  %374 = load i16* %arrayidx60.i, align 2, !dbg !1740, !tbaa !1148
  %conv61.i417 = zext i16 %374 to i64, !dbg !1740
  %arrayidx65.i = getelementptr inbounds i16** %367, i64 %indvars.iv496.i, !dbg !1740
  %375 = load i16** %arrayidx65.i, align 8, !dbg !1740, !tbaa !1126
  %arrayidx66.i = getelementptr inbounds i16* %375, i64 %indvars.iv498.i, !dbg !1740
  %376 = load i16* %arrayidx66.i, align 2, !dbg !1740, !tbaa !1148
  %conv67.i = zext i16 %376 to i64, !dbg !1740
  %sub68.i418 = sub i64 %conv61.i417, %conv67.i, !dbg !1740
  %arrayidx71.i = getelementptr inbounds i32* %365, i64 %sub68.i418, !dbg !1740
  %377 = load i32* %arrayidx71.i, align 4, !dbg !1740, !tbaa !1132
  %conv72.i = sext i32 %377 to i64, !dbg !1740
  %add73.i = add nsw i64 %conv72.i, %diff_v.1467.i, !dbg !1740
  call void @llvm.dbg.value(metadata !{i64 %add73.i}, i64 0, metadata !1714) #1, !dbg !1740
  %indvars.iv.next497.i = add i64 %indvars.iv496.i, 1, !dbg !1735
  %lftr.wideiv529 = trunc i64 %indvars.iv.next497.i to i32, !dbg !1735
  %exitcond530 = icmp eq i32 %lftr.wideiv529, %349, !dbg !1735
  br i1 %exitcond530, label %for.inc77.i, label %for.body37.i, !dbg !1735

for.inc77.i:                                      ; preds = %for.body37.i, %for.cond33.preheader.i
  %diff_u.1.lcssa.i = phi i64 [ %diff_u.0476.i, %for.cond33.preheader.i ], [ %add55.i, %for.body37.i ]
  %diff_v.1.lcssa.i = phi i64 [ %diff_v.0475.i, %for.cond33.preheader.i ], [ %add73.i, %for.body37.i ]
  %indvars.iv.next499.i = add i64 %indvars.iv498.i, 1, !dbg !1732
  %lftr.wideiv531 = trunc i64 %indvars.iv.next499.i to i32, !dbg !1732
  %exitcond532 = icmp eq i32 %lftr.wideiv531, %350, !dbg !1732
  br i1 %exitcond532, label %if.then189.i, label %for.cond33.preheader.i, !dbg !1732

if.else.i420:                                     ; preds = %if.end151
  %378 = load i16*** @imgY_org_frm, align 8, !dbg !1741, !tbaa !1126
  store i16** %378, i16*** @imgY_org, align 8, !dbg !1741, !tbaa !1126
  %379 = load i16**** @imgUV_org_frm, align 8, !dbg !1743, !tbaa !1126
  store i16*** %379, i16**** @imgUV_org, align 8, !dbg !1743, !tbaa !1126
  %PicInterlace.i419 = getelementptr inbounds %struct.InputParameters* %343, i64 0, i32 91, !dbg !1744
  %380 = load i32* %PicInterlace.i419, align 4, !dbg !1744, !tbaa !1132
  %cmp80.i = icmp eq i32 %380, 2, !dbg !1744
  br i1 %cmp80.i, label %if.then82.i, label %for.cond84.preheader.i, !dbg !1744

if.then82.i:                                      ; preds = %if.else.i420
  %381 = load %struct.storable_picture** @enc_frame_picture, align 8, !dbg !1745, !tbaa !1126
  store %struct.storable_picture* %381, %struct.storable_picture** @enc_picture, align 8, !dbg !1745, !tbaa !1126
  br label %for.cond84.preheader.i, !dbg !1747

for.cond84.preheader.i:                           ; preds = %if.then82.i, %if.else.i420
  %cmp86461.i = icmp sgt i32 %348, 0, !dbg !1748
  br i1 %cmp86461.i, label %for.cond89.preheader.lr.ph.i, label %for.end115.i, !dbg !1748

for.cond89.preheader.lr.ph.i:                     ; preds = %for.cond84.preheader.i
  %cmp91456.i = icmp sgt i32 %347, 0, !dbg !1750
  %382 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1753, !tbaa !1126
  %imgY.i = getelementptr inbounds %struct.storable_picture* %382, i64 0, i32 25, !dbg !1753
  %quad106.i = getelementptr inbounds %struct.ImageParameters* %344, i64 0, i32 53, !dbg !1753
  br label %for.cond89.preheader.i, !dbg !1748

for.cond89.preheader.i:                           ; preds = %for.inc113.i, %for.cond89.preheader.lr.ph.i
  %indvars.iv494.i = phi i64 [ 0, %for.cond89.preheader.lr.ph.i ], [ %indvars.iv.next495.i, %for.inc113.i ]
  %diff_y.2462.i = phi i64 [ 0, %for.cond89.preheader.lr.ph.i ], [ %diff_y.3.lcssa.i, %for.inc113.i ]
  br i1 %cmp91456.i, label %for.body93.lr.ph.i, label %for.inc113.i, !dbg !1750

for.body93.lr.ph.i:                               ; preds = %for.cond89.preheader.i
  %383 = load i16*** %imgY.i, align 8, !dbg !1753, !tbaa !1126
  %384 = load i32** %quad106.i, align 8, !dbg !1753, !tbaa !1126
  br label %for.body93.i, !dbg !1750

for.body93.i:                                     ; preds = %for.body93.i, %for.body93.lr.ph.i
  %indvars.iv492.i = phi i64 [ 0, %for.body93.lr.ph.i ], [ %indvars.iv.next493.i, %for.body93.i ]
  %diff_y.3457.i = phi i64 [ %diff_y.2462.i, %for.body93.lr.ph.i ], [ %add109.i, %for.body93.i ]
  %arrayidx96.i421 = getelementptr inbounds i16** %378, i64 %indvars.iv492.i, !dbg !1753
  %385 = load i16** %arrayidx96.i421, align 8, !dbg !1753, !tbaa !1126
  %arrayidx97.i = getelementptr inbounds i16* %385, i64 %indvars.iv494.i, !dbg !1753
  %386 = load i16* %arrayidx97.i, align 2, !dbg !1753, !tbaa !1148
  %conv98.i = zext i16 %386 to i64, !dbg !1753
  %arrayidx101.i = getelementptr inbounds i16** %383, i64 %indvars.iv492.i, !dbg !1753
  %387 = load i16** %arrayidx101.i, align 8, !dbg !1753, !tbaa !1126
  %arrayidx102.i = getelementptr inbounds i16* %387, i64 %indvars.iv494.i, !dbg !1753
  %388 = load i16* %arrayidx102.i, align 2, !dbg !1753, !tbaa !1148
  %conv103.i = zext i16 %388 to i64, !dbg !1753
  %sub104.i = sub i64 %conv98.i, %conv103.i, !dbg !1753
  %arrayidx107.i = getelementptr inbounds i32* %384, i64 %sub104.i, !dbg !1753
  %389 = load i32* %arrayidx107.i, align 4, !dbg !1753, !tbaa !1132
  %conv108.i = sext i32 %389 to i64, !dbg !1753
  %add109.i = add nsw i64 %conv108.i, %diff_y.3457.i, !dbg !1753
  call void @llvm.dbg.value(metadata !{i64 %add109.i}, i64 0, metadata !1711) #1, !dbg !1753
  %indvars.iv.next493.i = add i64 %indvars.iv492.i, 1, !dbg !1750
  %lftr.wideiv525 = trunc i64 %indvars.iv.next493.i to i32, !dbg !1750
  %exitcond526 = icmp eq i32 %lftr.wideiv525, %347, !dbg !1750
  br i1 %exitcond526, label %for.inc113.i, label %for.body93.i, !dbg !1750

for.inc113.i:                                     ; preds = %for.body93.i, %for.cond89.preheader.i
  %diff_y.3.lcssa.i = phi i64 [ %diff_y.2462.i, %for.cond89.preheader.i ], [ %add109.i, %for.body93.i ]
  %indvars.iv.next495.i = add i64 %indvars.iv494.i, 1, !dbg !1748
  %lftr.wideiv527 = trunc i64 %indvars.iv.next495.i to i32, !dbg !1748
  %exitcond528 = icmp eq i32 %lftr.wideiv527, %348, !dbg !1748
  br i1 %exitcond528, label %for.end115.i, label %for.cond89.preheader.i, !dbg !1748

for.end115.i:                                     ; preds = %for.inc113.i, %for.cond84.preheader.i
  %diff_y.2.lcssa.i = phi i64 [ 0, %for.cond84.preheader.i ], [ %diff_y.3.lcssa.i, %for.inc113.i ]
  %yuv_format116.i = getelementptr inbounds %struct.ImageParameters* %344, i64 0, i32 159, !dbg !1755
  %390 = load i32* %yuv_format116.i, align 4, !dbg !1755, !tbaa !1132
  %cmp117.i = icmp ne i32 %390, 0, !dbg !1755
  %cmp122449.i = icmp sgt i32 %350, 0, !dbg !1756
  %or.cond504.i = and i1 %cmp117.i, %cmp122449.i, !dbg !1755
  br i1 %or.cond504.i, label %for.cond125.preheader.lr.ph.i, label %if.then189.i, !dbg !1755

for.cond125.preheader.lr.ph.i:                    ; preds = %for.end115.i
  %cmp127443.i = icmp sgt i32 %349, 0, !dbg !1759
  %391 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1762, !tbaa !1126
  %imgUV.i = getelementptr inbounds %struct.storable_picture* %391, i64 0, i32 30, !dbg !1762
  %quad144.i = getelementptr inbounds %struct.ImageParameters* %344, i64 0, i32 53, !dbg !1762
  %arrayidx150.i = getelementptr inbounds i16*** %379, i64 1, !dbg !1764
  br label %for.cond125.preheader.i, !dbg !1756

for.cond125.preheader.i:                          ; preds = %for.inc170.i, %for.cond125.preheader.lr.ph.i
  %indvars.iv490.i = phi i64 [ 0, %for.cond125.preheader.lr.ph.i ], [ %indvars.iv.next491.i, %for.inc170.i ]
  %diff_u.2451.i = phi i64 [ 0, %for.cond125.preheader.lr.ph.i ], [ %diff_u.3.lcssa.i, %for.inc170.i ]
  %diff_v.2450.i = phi i64 [ 0, %for.cond125.preheader.lr.ph.i ], [ %diff_v.3.lcssa.i, %for.inc170.i ]
  br i1 %cmp127443.i, label %for.body129.lr.ph.i, label %for.inc170.i, !dbg !1759

for.body129.lr.ph.i:                              ; preds = %for.cond125.preheader.i
  %392 = load i16*** %379, align 8, !dbg !1762, !tbaa !1126
  %393 = load i16**** %imgUV.i, align 8, !dbg !1762, !tbaa !1126
  %394 = load i16*** %393, align 8, !dbg !1762, !tbaa !1126
  %395 = load i32** %quad144.i, align 8, !dbg !1762, !tbaa !1126
  %396 = load i16*** %arrayidx150.i, align 8, !dbg !1764, !tbaa !1126
  %arrayidx157.i = getelementptr inbounds i16*** %393, i64 1, !dbg !1764
  %397 = load i16*** %arrayidx157.i, align 8, !dbg !1764, !tbaa !1126
  br label %for.body129.i, !dbg !1759

for.body129.i:                                    ; preds = %for.body129.i, %for.body129.lr.ph.i
  %indvars.iv.i422 = phi i64 [ 0, %for.body129.lr.ph.i ], [ %indvars.iv.next.i423, %for.body129.i ]
  %diff_u.3445.i = phi i64 [ %diff_u.2451.i, %for.body129.lr.ph.i ], [ %add147.i, %for.body129.i ]
  %diff_v.3444.i = phi i64 [ %diff_v.2450.i, %for.body129.lr.ph.i ], [ %add166.i, %for.body129.i ]
  %arrayidx133.i = getelementptr inbounds i16** %392, i64 %indvars.iv.i422, !dbg !1762
  %398 = load i16** %arrayidx133.i, align 8, !dbg !1762, !tbaa !1126
  %arrayidx134.i = getelementptr inbounds i16* %398, i64 %indvars.iv490.i, !dbg !1762
  %399 = load i16* %arrayidx134.i, align 2, !dbg !1762, !tbaa !1148
  %conv135.i = zext i16 %399 to i64, !dbg !1762
  %arrayidx139.i = getelementptr inbounds i16** %394, i64 %indvars.iv.i422, !dbg !1762
  %400 = load i16** %arrayidx139.i, align 8, !dbg !1762, !tbaa !1126
  %arrayidx140.i = getelementptr inbounds i16* %400, i64 %indvars.iv490.i, !dbg !1762
  %401 = load i16* %arrayidx140.i, align 2, !dbg !1762, !tbaa !1148
  %conv141.i = zext i16 %401 to i64, !dbg !1762
  %sub142.i = sub i64 %conv135.i, %conv141.i, !dbg !1762
  %arrayidx145.i = getelementptr inbounds i32* %395, i64 %sub142.i, !dbg !1762
  %402 = load i32* %arrayidx145.i, align 4, !dbg !1762, !tbaa !1132
  %conv146.i = sext i32 %402 to i64, !dbg !1762
  %add147.i = add nsw i64 %conv146.i, %diff_u.3445.i, !dbg !1762
  call void @llvm.dbg.value(metadata !{i64 %add147.i}, i64 0, metadata !1713) #1, !dbg !1762
  %arrayidx151.i = getelementptr inbounds i16** %396, i64 %indvars.iv.i422, !dbg !1764
  %403 = load i16** %arrayidx151.i, align 8, !dbg !1764, !tbaa !1126
  %arrayidx152.i = getelementptr inbounds i16* %403, i64 %indvars.iv490.i, !dbg !1764
  %404 = load i16* %arrayidx152.i, align 2, !dbg !1764, !tbaa !1148
  %conv153.i = zext i16 %404 to i64, !dbg !1764
  %arrayidx158.i = getelementptr inbounds i16** %397, i64 %indvars.iv.i422, !dbg !1764
  %405 = load i16** %arrayidx158.i, align 8, !dbg !1764, !tbaa !1126
  %arrayidx159.i = getelementptr inbounds i16* %405, i64 %indvars.iv490.i, !dbg !1764
  %406 = load i16* %arrayidx159.i, align 2, !dbg !1764, !tbaa !1148
  %conv160.i = zext i16 %406 to i64, !dbg !1764
  %sub161.i = sub i64 %conv153.i, %conv160.i, !dbg !1764
  %arrayidx164.i = getelementptr inbounds i32* %395, i64 %sub161.i, !dbg !1764
  %407 = load i32* %arrayidx164.i, align 4, !dbg !1764, !tbaa !1132
  %conv165.i = sext i32 %407 to i64, !dbg !1764
  %add166.i = add nsw i64 %conv165.i, %diff_v.3444.i, !dbg !1764
  call void @llvm.dbg.value(metadata !{i64 %add166.i}, i64 0, metadata !1714) #1, !dbg !1764
  %indvars.iv.next.i423 = add i64 %indvars.iv.i422, 1, !dbg !1759
  %lftr.wideiv = trunc i64 %indvars.iv.next.i423 to i32, !dbg !1759
  %exitcond = icmp eq i32 %lftr.wideiv, %349, !dbg !1759
  br i1 %exitcond, label %for.inc170.i, label %for.body129.i, !dbg !1759

for.inc170.i:                                     ; preds = %for.body129.i, %for.cond125.preheader.i
  %diff_u.3.lcssa.i = phi i64 [ %diff_u.2451.i, %for.cond125.preheader.i ], [ %add147.i, %for.body129.i ]
  %diff_v.3.lcssa.i = phi i64 [ %diff_v.2450.i, %for.cond125.preheader.i ], [ %add166.i, %for.body129.i ]
  %indvars.iv.next491.i = add i64 %indvars.iv490.i, 1, !dbg !1756
  %lftr.wideiv523 = trunc i64 %indvars.iv.next491.i to i32, !dbg !1756
  %exitcond524 = icmp eq i32 %lftr.wideiv523, %350, !dbg !1756
  br i1 %exitcond524, label %if.then189.i, label %for.cond125.preheader.i, !dbg !1756

if.then189.i:                                     ; preds = %for.inc77.i, %for.inc170.i, %for.end115.i, %for.end24.i
  %diff_v.4.i = phi i64 [ 0, %for.end24.i ], [ 0, %for.end115.i ], [ %diff_v.3.lcssa.i, %for.inc170.i ], [ %diff_v.1.lcssa.i, %for.inc77.i ]
  %diff_u.4.i = phi i64 [ 0, %for.end24.i ], [ 0, %for.end115.i ], [ %diff_u.3.lcssa.i, %for.inc170.i ], [ %diff_u.1.lcssa.i, %for.inc77.i ]
  %diff_y.4.i = phi i64 [ %diff_y.0.lcssa.i, %for.end24.i ], [ %diff_y.2.lcssa.i, %for.end115.i ], [ %diff_y.2.lcssa.i, %for.inc170.i ], [ %diff_y.0.lcssa.i, %for.inc77.i ]
  %cmp175.i = icmp eq i64 %diff_y.4.i, 0, !dbg !1765
  call void @llvm.dbg.value(metadata !1766, i64 0, metadata !1711) #1, !dbg !1767
  call void @llvm.dbg.value(metadata !1766, i64 0, metadata !1713) #1, !dbg !1768
  call void @llvm.dbg.value(metadata !1766, i64 0, metadata !1714) #1, !dbg !1769
  %conv190.i = uitofp i32 %mul.i403 to double, !dbg !1770
  %conv191.i = sitofp i32 %mul4.i406 to double, !dbg !1770
  %408 = sitofp i64 %diff_y.4.i to double, !dbg !1770
  %conv192.i = select i1 %cmp175.i, double 1.000000e+00, double %408, !dbg !1770
  %div.i424 = fdiv double %conv191.i, %conv192.i, !dbg !1770
  %mul193.i = fmul double %conv190.i, %div.i424, !dbg !1770
  %call.i425 = call double @log10(double %mul193.i) #7, !dbg !1770
  %mul194.i = fmul double %call.i425, 1.000000e+01, !dbg !1770
  %conv195.i = fptrunc double %mul194.i to float, !dbg !1770
  %409 = load %struct.SNRParameters** @snr, align 8, !dbg !1770, !tbaa !1126
  %snr_y.i426 = getelementptr inbounds %struct.SNRParameters* %409, i64 0, i32 0, !dbg !1770
  store float %conv195.i, float* %snr_y.i426, align 4, !dbg !1770, !tbaa !1197
  %410 = load %struct.ImageParameters** @img, align 8, !dbg !1772, !tbaa !1126
  %yuv_format196.i = getelementptr inbounds %struct.ImageParameters* %410, i64 0, i32 159, !dbg !1772
  %411 = load i32* %yuv_format196.i, align 4, !dbg !1772, !tbaa !1132
  %cmp197.i = icmp eq i32 %411, 0, !dbg !1772
  br i1 %cmp197.i, label %if.else216.i430, label %if.then199.i, !dbg !1772

if.then199.i:                                     ; preds = %if.then189.i
  %cmp183.i = icmp eq i64 %diff_v.4.i, 0, !dbg !1773
  %cmp179.i = icmp eq i64 %diff_u.4.i, 0, !dbg !1774
  %conv200.i = uitofp i32 %mul3.i404 to double, !dbg !1775
  %conv201.i = sitofp i32 %mul5.i to double, !dbg !1775
  %412 = sitofp i64 %diff_u.4.i to double, !dbg !1775
  %conv202.i = select i1 %cmp179.i, double 1.000000e+00, double %412, !dbg !1775
  %div203.i = fdiv double %conv201.i, %conv202.i, !dbg !1775
  %mul204.i = fmul double %conv200.i, %div203.i, !dbg !1775
  %call205.i = call double @log10(double %mul204.i) #7, !dbg !1775
  %mul206.i = fmul double %call205.i, 1.000000e+01, !dbg !1775
  %conv207.i = fptrunc double %mul206.i to float, !dbg !1775
  %413 = load %struct.SNRParameters** @snr, align 8, !dbg !1775, !tbaa !1126
  %snr_u.i427 = getelementptr inbounds %struct.SNRParameters* %413, i64 0, i32 1, !dbg !1775
  store float %conv207.i, float* %snr_u.i427, align 4, !dbg !1775, !tbaa !1197
  %414 = sitofp i64 %diff_v.4.i to double, !dbg !1777
  %conv210.i = select i1 %cmp183.i, double 1.000000e+00, double %414, !dbg !1777
  %div211.i = fdiv double %conv201.i, %conv210.i, !dbg !1777
  %mul212.i = fmul double %conv200.i, %div211.i, !dbg !1777
  %call213.i = call double @log10(double %mul212.i) #7, !dbg !1777
  %mul214.i = fmul double %call213.i, 1.000000e+01, !dbg !1777
  %conv215.i = fptrunc double %mul214.i to float, !dbg !1777
  %415 = load %struct.SNRParameters** @snr, align 8, !dbg !1777, !tbaa !1126
  %snr_v.i428 = getelementptr inbounds %struct.SNRParameters* %415, i64 0, i32 2, !dbg !1777
  store float %conv215.i, float* %snr_v.i428, align 4, !dbg !1777, !tbaa !1197
  %.pre.i429 = load %struct.ImageParameters** @img, align 8, !dbg !1778, !tbaa !1126
  br label %if.end220.i, !dbg !1779

if.else216.i430:                                  ; preds = %if.then189.i
  %snr_u217.i = getelementptr inbounds %struct.SNRParameters* %409, i64 0, i32 1, !dbg !1780
  store float 0.000000e+00, float* %snr_u217.i, align 4, !dbg !1780, !tbaa !1197
  %snr_v218.i = getelementptr inbounds %struct.SNRParameters* %409, i64 0, i32 2, !dbg !1782
  store float 0.000000e+00, float* %snr_v218.i, align 4, !dbg !1782, !tbaa !1197
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.else216.i430, %if.then199.i
  %416 = phi float [ %conv215.i, %if.then199.i ], [ 0.000000e+00, %if.else216.i430 ]
  %417 = phi %struct.SNRParameters* [ %415, %if.then199.i ], [ %409, %if.else216.i430 ]
  %418 = phi %struct.ImageParameters* [ %.pre.i429, %if.then199.i ], [ %410, %if.else216.i430 ]
  %number.i431 = getelementptr inbounds %struct.ImageParameters* %418, i64 0, i32 0, !dbg !1778
  %419 = load i32* %number.i431, align 4, !dbg !1778, !tbaa !1132
  %cmp221.i = icmp eq i32 %419, 0, !dbg !1778
  br i1 %cmp221.i, label %if.then223.i, label %if.else245.i, !dbg !1778

if.then223.i:                                     ; preds = %if.end220.i
  %snr_y224.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 0, !dbg !1783
  %420 = load float* %snr_y224.i, align 4, !dbg !1783, !tbaa !1197
  %snr_y1.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 3, !dbg !1783
  store float %420, float* %snr_y1.i, align 4, !dbg !1783, !tbaa !1197
  %snr_u225.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 1, !dbg !1785
  %421 = load float* %snr_u225.i, align 4, !dbg !1785, !tbaa !1197
  %snr_u1.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 4, !dbg !1785
  store float %421, float* %snr_u1.i, align 4, !dbg !1785, !tbaa !1197
  %snr_v1.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 5, !dbg !1786
  store float %416, float* %snr_v1.i, align 4, !dbg !1786, !tbaa !1197
  %snr_ya.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 9, !dbg !1787
  store float %420, float* %snr_ya.i, align 4, !dbg !1787, !tbaa !1197
  %snr_ua.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 10, !dbg !1788
  store float %421, float* %snr_ua.i, align 4, !dbg !1788, !tbaa !1197
  %snr_va.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 11, !dbg !1789
  store float %416, float* %snr_va.i, align 4, !dbg !1789, !tbaa !1197
  %arrayidx234.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 6, i64 0, !dbg !1790
  %422 = bitcast float* %arrayidx234.i to i8*, !dbg !1791
  call void @llvm.memset.p0i8.i64(i8* %422, i8 0, i64 36, i32 4, i1 false) #1, !dbg !1790
  br label %if.end285.i, !dbg !1791

if.else245.i:                                     ; preds = %if.end220.i
  %snr_ya246.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 9, !dbg !1792
  %423 = load float* %snr_ya246.i, align 4, !dbg !1792, !tbaa !1197
  %424 = load i32* @Bframe_ctr, align 4, !dbg !1792, !tbaa !1132
  %add248.i = add nsw i32 %424, %419, !dbg !1792
  %conv249.i = sitofp i32 %add248.i to float, !dbg !1792
  %mul250.i = fmul float %423, %conv249.i, !dbg !1792
  %snr_y251.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 0, !dbg !1792
  %425 = load float* %snr_y251.i, align 4, !dbg !1792, !tbaa !1197
  %add252.i = fadd float %425, %mul250.i, !dbg !1792
  %add255.i = add nsw i32 %add248.i, 1, !dbg !1792
  %conv256.i = sitofp i32 %add255.i to float, !dbg !1792
  %div257.i = fdiv float %add252.i, %conv256.i, !dbg !1792
  store float %div257.i, float* %snr_ya246.i, align 4, !dbg !1792, !tbaa !1197
  %snr_ua259.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 10, !dbg !1794
  %426 = load float* %snr_ua259.i, align 4, !dbg !1794, !tbaa !1197
  %mul263.i = fmul float %conv249.i, %426, !dbg !1794
  %snr_u264.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 1, !dbg !1794
  %427 = load float* %snr_u264.i, align 4, !dbg !1794, !tbaa !1197
  %add265.i = fadd float %427, %mul263.i, !dbg !1794
  %div270.i = fdiv float %add265.i, %conv256.i, !dbg !1794
  store float %div270.i, float* %snr_ua259.i, align 4, !dbg !1794, !tbaa !1197
  %snr_va272.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 11, !dbg !1795
  %428 = load float* %snr_va272.i, align 4, !dbg !1795, !tbaa !1197
  %mul276.i = fmul float %conv249.i, %428, !dbg !1795
  %add278.i = fadd float %416, %mul276.i, !dbg !1795
  %div283.i = fdiv float %add278.i, %conv256.i, !dbg !1795
  store float %div283.i, float* %snr_va272.i, align 4, !dbg !1795, !tbaa !1197
  br label %if.end285.i

if.end285.i:                                      ; preds = %if.else245.i, %if.then223.i
  %429 = phi float [ %427, %if.else245.i ], [ %421, %if.then223.i ]
  %430 = phi float [ %425, %if.else245.i ], [ %420, %if.then223.i ]
  %type.i432 = getelementptr inbounds %struct.ImageParameters* %418, i64 0, i32 6, !dbg !1796
  %431 = load i32* %type.i432, align 4, !dbg !1796, !tbaa !1132
  switch i32 %431, label %if.else360.i [
    i32 2, label %if.then288.i
    i32 1, label %if.then326.i
  ], !dbg !1796

if.then288.i:                                     ; preds = %if.end285.i
  %arrayidx290.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 6, i64 2, !dbg !1797
  %432 = load float* %arrayidx290.i, align 4, !dbg !1797, !tbaa !1197
  %433 = load i32* @Iframe_ctr, align 4, !dbg !1797, !tbaa !1132
  %sub291.i = add nsw i32 %433, -1, !dbg !1797
  %conv292.i = sitofp i32 %sub291.i to float, !dbg !1797
  %mul293.i = fmul float %432, %conv292.i, !dbg !1797
  %add295.i = fadd float %430, %mul293.i, !dbg !1797
  %conv296.i = sitofp i32 %433 to float, !dbg !1797
  %div297.i = fdiv float %add295.i, %conv296.i, !dbg !1797
  store float %div297.i, float* %arrayidx290.i, align 4, !dbg !1797, !tbaa !1197
  %arrayidx301.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 7, i64 2, !dbg !1799
  %434 = load float* %arrayidx301.i, align 4, !dbg !1799, !tbaa !1197
  %mul304.i = fmul float %434, %conv292.i, !dbg !1799
  %add306.i = fadd float %429, %mul304.i, !dbg !1799
  %div308.i = fdiv float %add306.i, %conv296.i, !dbg !1799
  store float %div308.i, float* %arrayidx301.i, align 4, !dbg !1799, !tbaa !1197
  %arrayidx312.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 8, i64 2, !dbg !1800
  %435 = load float* %arrayidx312.i, align 4, !dbg !1800, !tbaa !1197
  %mul315.i = fmul float %conv292.i, %435, !dbg !1800
  %add317.i = fadd float %416, %mul315.i, !dbg !1800
  %div319.i = fdiv float %add317.i, %conv296.i, !dbg !1800
  store float %div319.i, float* %arrayidx312.i, align 4, !dbg !1800, !tbaa !1197
  br label %find_snr.exit, !dbg !1801

if.then326.i:                                     ; preds = %if.end285.i
  %arrayidx328.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 6, i64 1, !dbg !1802
  %436 = load float* %arrayidx328.i, align 4, !dbg !1802, !tbaa !1197
  %437 = load i32* @Bframe_ctr, align 4, !dbg !1802, !tbaa !1132
  %sub329.i = add nsw i32 %437, -1, !dbg !1802
  %conv330.i = sitofp i32 %sub329.i to float, !dbg !1802
  %mul331.i = fmul float %436, %conv330.i, !dbg !1802
  %add333.i = fadd float %430, %mul331.i, !dbg !1802
  %conv334.i = sitofp i32 %437 to float, !dbg !1802
  %div335.i = fdiv float %add333.i, %conv334.i, !dbg !1802
  store float %div335.i, float* %arrayidx328.i, align 4, !dbg !1802, !tbaa !1197
  %arrayidx339.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 7, i64 1, !dbg !1804
  %438 = load float* %arrayidx339.i, align 4, !dbg !1804, !tbaa !1197
  %mul342.i = fmul float %438, %conv330.i, !dbg !1804
  %add344.i = fadd float %429, %mul342.i, !dbg !1804
  %div346.i = fdiv float %add344.i, %conv334.i, !dbg !1804
  store float %div346.i, float* %arrayidx339.i, align 4, !dbg !1804, !tbaa !1197
  %arrayidx350.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 8, i64 1, !dbg !1805
  %439 = load float* %arrayidx350.i, align 4, !dbg !1805, !tbaa !1197
  %mul353.i = fmul float %conv330.i, %439, !dbg !1805
  %add355.i = fadd float %416, %mul353.i, !dbg !1805
  %div357.i = fdiv float %add355.i, %conv334.i, !dbg !1805
  store float %div357.i, float* %arrayidx350.i, align 4, !dbg !1805, !tbaa !1197
  br label %find_snr.exit, !dbg !1806

if.else360.i:                                     ; preds = %if.end285.i
  %arrayidx362.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 6, i64 0, !dbg !1807
  %440 = load float* %arrayidx362.i, align 4, !dbg !1807, !tbaa !1197
  %441 = load i32* @Pframe_ctr, align 4, !dbg !1807, !tbaa !1132
  %sub363.i = add nsw i32 %441, -1, !dbg !1807
  %conv364.i = sitofp i32 %sub363.i to float, !dbg !1807
  %mul365.i = fmul float %440, %conv364.i, !dbg !1807
  %add367.i = fadd float %430, %mul365.i, !dbg !1807
  %conv368.i = sitofp i32 %441 to float, !dbg !1807
  %div369.i = fdiv float %add367.i, %conv368.i, !dbg !1807
  store float %div369.i, float* %arrayidx362.i, align 4, !dbg !1807, !tbaa !1197
  %arrayidx373.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 7, i64 0, !dbg !1809
  %442 = load float* %arrayidx373.i, align 4, !dbg !1809, !tbaa !1197
  %mul376.i = fmul float %442, %conv364.i, !dbg !1809
  %add378.i = fadd float %429, %mul376.i, !dbg !1809
  %div380.i = fdiv float %add378.i, %conv368.i, !dbg !1809
  store float %div380.i, float* %arrayidx373.i, align 4, !dbg !1809, !tbaa !1197
  %arrayidx384.i = getelementptr inbounds %struct.SNRParameters* %417, i64 0, i32 8, i64 0, !dbg !1810
  %443 = load float* %arrayidx384.i, align 4, !dbg !1810, !tbaa !1197
  %mul387.i = fmul float %conv364.i, %443, !dbg !1810
  %add389.i = fadd float %416, %mul387.i, !dbg !1810
  %div391.i = fdiv float %add389.i, %conv368.i, !dbg !1810
  store float %div391.i, float* %arrayidx384.i, align 4, !dbg !1810, !tbaa !1197
  br label %find_snr.exit

find_snr.exit:                                    ; preds = %if.then288.i, %if.then326.i, %if.else360.i
  %call152 = call i64 @time(i64* %ltime2) #7, !dbg !1811
  %call153 = call i32 @ftime(%struct.timeb* %tstruct2) #7, !dbg !1812
  call void @llvm.dbg.value(metadata !{i64* %ltime2}, i64 0, metadata !262), !dbg !1813
  %444 = load i64* %ltime2, align 8, !dbg !1813, !tbaa !1814
  %mul154 = mul nsw i64 %444, 1000, !dbg !1813
  %millitm = getelementptr inbounds %struct.timeb* %tstruct2, i64 0, i32 1, !dbg !1813
  %445 = load i16* %millitm, align 8, !dbg !1813, !tbaa !1148
  %conv = zext i16 %445 to i64, !dbg !1813
  call void @llvm.dbg.value(metadata !{i64* %ltime1}, i64 0, metadata !258), !dbg !1813
  %446 = load i64* %ltime1, align 8, !dbg !1813, !tbaa !1814
  %millitm157 = getelementptr inbounds %struct.timeb* %tstruct1, i64 0, i32 1, !dbg !1813
  %447 = load i16* %millitm157, align 8, !dbg !1813, !tbaa !1148
  %conv158 = zext i16 %447 to i64, !dbg !1813
  %448 = mul i64 %446, -1000
  %add159.neg = add i64 %conv, %mul154, !dbg !1813
  %add155 = add i64 %add159.neg, %448, !dbg !1813
  %sub160 = sub i64 %add155, %conv158, !dbg !1813
  %conv161 = trunc i64 %sub160 to i32, !dbg !1813
  call void @llvm.dbg.value(metadata !{i32 %conv161}, i64 0, metadata !273), !dbg !1813
  %449 = load i32* @tot_time, align 4, !dbg !1815, !tbaa !1132
  %add162 = add nsw i32 %conv161, %449, !dbg !1815
  store i32 %add162, i32* @tot_time, align 4, !dbg !1815, !tbaa !1132
  %450 = load %struct.InputParameters** @input, align 8, !dbg !1816, !tbaa !1126
  %PicInterlace163 = getelementptr inbounds %struct.InputParameters* %450, i64 0, i32 91, !dbg !1816
  %451 = load i32* %PicInterlace163, align 4, !dbg !1816, !tbaa !1132
  %cmp164 = icmp eq i32 %451, 2, !dbg !1816
  %452 = load %struct.ImageParameters** @img, align 8, !dbg !1817, !tbaa !1126
  %fld_flag167 = getelementptr inbounds %struct.ImageParameters* %452, i64 0, i32 57, !dbg !1817
  %453 = load i32* %fld_flag167, align 4, !dbg !1817, !tbaa !1132
  %tobool168 = icmp ne i32 %453, 0, !dbg !1817
  br i1 %cmp164, label %if.then166, label %if.else172, !dbg !1816

if.then166:                                       ; preds = %find_snr.exit
  br i1 %tobool168, label %if.then169, label %if.else170, !dbg !1817

if.then169:                                       ; preds = %if.then166
  %454 = load %struct.storable_picture** @enc_bottom_picture, align 8, !dbg !1819, !tbaa !1126
  call void @store_picture_in_dpb(%struct.storable_picture* %454) #7, !dbg !1819
  %455 = load %struct.storable_picture** @enc_frame_picture, align 8, !dbg !1821, !tbaa !1126
  call void @free_storable_picture(%struct.storable_picture* %455) #7, !dbg !1821
  br label %if.end190, !dbg !1822

if.else170:                                       ; preds = %if.then166
  %456 = load %struct.storable_picture** @enc_frame_picture, align 8, !dbg !1823, !tbaa !1126
  call void @replace_top_pic_with_frame(%struct.storable_picture* %456) #7, !dbg !1823
  %457 = load %struct.storable_picture** @enc_bottom_picture, align 8, !dbg !1825, !tbaa !1126
  call void @free_storable_picture(%struct.storable_picture* %457) #7, !dbg !1825
  br label %if.end190

if.else172:                                       ; preds = %find_snr.exit
  br i1 %tobool168, label %if.then175, label %if.else176, !dbg !1826

if.then175:                                       ; preds = %if.else172
  %458 = load %struct.storable_picture** @enc_bottom_picture, align 8, !dbg !1828, !tbaa !1126
  call void @store_picture_in_dpb(%struct.storable_picture* %458) #7, !dbg !1828
  br label %if.end190, !dbg !1830

if.else176:                                       ; preds = %if.else172
  %rd_pass177 = getelementptr inbounds %struct.ImageParameters* %452, i64 0, i32 58, !dbg !1831
  %459 = load i32* %rd_pass177, align 4, !dbg !1831, !tbaa !1132
  switch i32 %459, label %if.else186 [
    i32 2, label %if.then180
    i32 1, label %if.then185
  ], !dbg !1831

if.then180:                                       ; preds = %if.else176
  %460 = load %struct.storable_picture** @enc_frame_picture3, align 8, !dbg !1833, !tbaa !1126
  call void @store_picture_in_dpb(%struct.storable_picture* %460) #7, !dbg !1833
  %461 = load %struct.storable_picture** @enc_frame_picture, align 8, !dbg !1835, !tbaa !1126
  call void @free_storable_picture(%struct.storable_picture* %461) #7, !dbg !1835
  %462 = load %struct.storable_picture** @enc_frame_picture2, align 8, !dbg !1836, !tbaa !1126
  call void @free_storable_picture(%struct.storable_picture* %462) #7, !dbg !1836
  br label %if.end190, !dbg !1837

if.then185:                                       ; preds = %if.else176
  %463 = load %struct.storable_picture** @enc_frame_picture2, align 8, !dbg !1838, !tbaa !1126
  call void @store_picture_in_dpb(%struct.storable_picture* %463) #7, !dbg !1838
  %464 = load %struct.storable_picture** @enc_frame_picture, align 8, !dbg !1840, !tbaa !1126
  call void @free_storable_picture(%struct.storable_picture* %464) #7, !dbg !1840
  %465 = load %struct.storable_picture** @enc_frame_picture3, align 8, !dbg !1841, !tbaa !1126
  call void @free_storable_picture(%struct.storable_picture* %465) #7, !dbg !1841
  br label %if.end190, !dbg !1842

if.else186:                                       ; preds = %if.else176
  %466 = load %struct.storable_picture** @enc_frame_picture, align 8, !dbg !1843, !tbaa !1126
  call void @store_picture_in_dpb(%struct.storable_picture* %466) #7, !dbg !1843
  %467 = load %struct.storable_picture** @enc_frame_picture2, align 8, !dbg !1845, !tbaa !1126
  call void @free_storable_picture(%struct.storable_picture* %467) #7, !dbg !1845
  %468 = load %struct.storable_picture** @enc_frame_picture3, align 8, !dbg !1846, !tbaa !1126
  call void @free_storable_picture(%struct.storable_picture* %468) #7, !dbg !1846
  br label %if.end190

if.end190:                                        ; preds = %if.then175, %if.then185, %if.else186, %if.then180, %if.then169, %if.else170
  %469 = load %struct.StatParameters** @stats, align 8, !dbg !1847, !tbaa !1126
  %bit_ctr191 = getelementptr inbounds %struct.StatParameters* %469, i64 0, i32 4, !dbg !1847
  %470 = load i32* %bit_ctr191, align 4, !dbg !1847, !tbaa !1132
  %bit_ctr_n192 = getelementptr inbounds %struct.StatParameters* %469, i64 0, i32 5, !dbg !1847
  %471 = load i32* %bit_ctr_n192, align 4, !dbg !1847, !tbaa !1132
  %sub193 = sub nsw i32 %470, %471, !dbg !1847
  %conv194 = sext i32 %sub193 to i64, !dbg !1847
  %472 = load i64* @total_frame_buffer, align 8, !dbg !1847, !tbaa !1814
  %arrayidx = getelementptr inbounds [10000 x i64]* @Bit_Buffer, i64 0, i64 %472, !dbg !1847
  store i64 %conv194, i64* %arrayidx, align 8, !dbg !1847, !tbaa !1814
  %inc195 = add i64 %472, 1, !dbg !1848
  store i64 %inc195, i64* @total_frame_buffer, align 8, !dbg !1848, !tbaa !1814
  %473 = load %struct.ImageParameters** @img, align 8, !dbg !1849, !tbaa !1126
  %pic_order_cnt_type = getelementptr inbounds %struct.ImageParameters* %473, i64 0, i32 91, !dbg !1849
  %474 = load i32* %pic_order_cnt_type, align 4, !dbg !1849, !tbaa !1132
  %cmp196 = icmp eq i32 %474, 2, !dbg !1849
  br i1 %cmp196, label %if.then198, label %if.end211, !dbg !1849

if.then198:                                       ; preds = %if.end190
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %473, i64 0, i32 113, !dbg !1850
  %475 = load i32* %nal_reference_idc, align 4, !dbg !1850, !tbaa !1132
  %tobool199 = icmp eq i32 %475, 0, !dbg !1850
  br i1 %tobool199, label %if.then200, label %if.end203, !dbg !1850

if.then200:                                       ; preds = %if.then198
  %476 = load i32* @encode_one_frame.consecutive_non_reference_pictures, align 4, !dbg !1850, !tbaa !1132
  %inc201 = add nsw i32 %476, 1, !dbg !1850
  br label %if.end203, !dbg !1850

if.end203:                                        ; preds = %if.then198, %if.then200
  %storemerge = phi i32 [ %inc201, %if.then200 ], [ 0, %if.then198 ]
  store i32 %storemerge, i32* @encode_one_frame.consecutive_non_reference_pictures, align 4, !dbg !1852, !tbaa !1132
  %477 = load i32* @frame_no, align 4, !dbg !1853, !tbaa !1132
  %478 = load i32* @encode_one_frame.prev_frame_no, align 4, !dbg !1853, !tbaa !1132
  %cmp204 = icmp slt i32 %477, %478, !dbg !1853
  %cmp207 = icmp sgt i32 %storemerge, 1, !dbg !1853
  %or.cond = or i1 %cmp204, %cmp207, !dbg !1853
  br i1 %or.cond, label %if.then209, label %if.end210, !dbg !1853

if.then209:                                       ; preds = %if.end203
  call void @error(i8* getelementptr inbounds ([137 x i8]* @.str, i64 0, i64 0), i32 -1) #7, !dbg !1854
  %.pre549 = load i32* @frame_no, align 4, !dbg !1855, !tbaa !1132
  %.pre550.pre = load %struct.StatParameters** @stats, align 8, !dbg !1856, !tbaa !1126
  br label %if.end210, !dbg !1854

if.end210:                                        ; preds = %if.end203, %if.then209
  %.pre550 = phi %struct.StatParameters* [ %469, %if.end203 ], [ %.pre550.pre, %if.then209 ]
  %479 = phi i32 [ %477, %if.end203 ], [ %.pre549, %if.then209 ]
  store i32 %479, i32* @encode_one_frame.prev_frame_no, align 4, !dbg !1855, !tbaa !1132
  br label %if.end211, !dbg !1857

if.end211:                                        ; preds = %if.end210, %if.end190
  %480 = phi %struct.StatParameters* [ %.pre550, %if.end210 ], [ %469, %if.end190 ]
  %bit_ctr_parametersets_n212 = getelementptr inbounds %struct.StatParameters* %480, i64 0, i32 33, !dbg !1856
  %481 = load i32* %bit_ctr_parametersets_n212, align 4, !dbg !1856, !tbaa !1132
  %cmp213 = icmp eq i32 %481, 0, !dbg !1856
  br i1 %cmp213, label %if.end216, label %if.then215, !dbg !1856

if.then215:                                       ; preds = %if.end211
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !1858) #1, !dbg !1860
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !1861) #1, !dbg !1860
  %482 = load i32* @frame_no, align 4, !dbg !1862, !tbaa !1132
  %call.i433 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0), i32 %482, i32 %481) #7, !dbg !1862
  br label %if.end216, !dbg !1859

if.end216:                                        ; preds = %if.end211, %if.then215
  %483 = load %struct.ImageParameters** @img, align 8, !dbg !1863, !tbaa !1126
  %number217 = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 0, !dbg !1863
  %484 = load i32* %number217, align 4, !dbg !1863, !tbaa !1132
  %485 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1863, !tbaa !1132
  %cmp219 = icmp eq i32 %484, %485, !dbg !1863
  br i1 %cmp219, label %if.then221, label %if.else222, !dbg !1863

if.then221:                                       ; preds = %if.end216
  %486 = load i32* @me_time, align 4, !dbg !1864, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %conv161}, i64 0, metadata !1865) #1, !dbg !1866
  call void @llvm.dbg.value(metadata !{i32 %486}, i64 0, metadata !1867) #1, !dbg !1866
  %487 = load i32* @frame_no, align 4, !dbg !1868, !tbaa !1132
  %488 = load %struct.StatParameters** @stats, align 8, !dbg !1868, !tbaa !1126
  %bit_ctr.i434 = getelementptr inbounds %struct.StatParameters* %488, i64 0, i32 4, !dbg !1868
  %489 = load i32* %bit_ctr.i434, align 4, !dbg !1868, !tbaa !1132
  %bit_ctr_n.i435 = getelementptr inbounds %struct.StatParameters* %488, i64 0, i32 5, !dbg !1868
  %490 = load i32* %bit_ctr_n.i435, align 4, !dbg !1868, !tbaa !1132
  %sub.i436 = sub nsw i32 %489, %490, !dbg !1868
  %qp.i437 = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 10, !dbg !1868
  %491 = load i32* %qp.i437, align 4, !dbg !1868, !tbaa !1132
  %492 = load %struct.SNRParameters** @snr, align 8, !dbg !1868, !tbaa !1126
  %snr_y.i438 = getelementptr inbounds %struct.SNRParameters* %492, i64 0, i32 0, !dbg !1868
  %493 = load float* %snr_y.i438, align 4, !dbg !1868, !tbaa !1197
  %conv.i439 = fpext float %493 to double, !dbg !1868
  %snr_u.i440 = getelementptr inbounds %struct.SNRParameters* %492, i64 0, i32 1, !dbg !1868
  %494 = load float* %snr_u.i440, align 4, !dbg !1868, !tbaa !1197
  %conv1.i441 = fpext float %494 to double, !dbg !1868
  %snr_v.i442 = getelementptr inbounds %struct.SNRParameters* %492, i64 0, i32 2, !dbg !1868
  %495 = load float* %snr_v.i442, align 4, !dbg !1868, !tbaa !1197
  %conv2.i443 = fpext float %495 to double, !dbg !1868
  %fld_flag.i444 = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 57, !dbg !1868
  %496 = load i32* %fld_flag.i444, align 4, !dbg !1868, !tbaa !1132
  %tobool.i445 = icmp ne i32 %496, 0, !dbg !1868
  %cond.i446 = select i1 %tobool.i445, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), !dbg !1868
  %497 = load i32* @intras, align 4, !dbg !1868, !tbaa !1132
  %call.i447 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i32 %487, i32 %sub.i436, i32 0, i32 %491, double %conv.i439, double %conv1.i441, double %conv2.i443, i32 %conv161, i32 %486, i8* %cond.i446, i32 %497) #7, !dbg !1868
  %498 = load %struct.InputParameters** @input, align 8, !dbg !1869, !tbaa !1126
  %RCEnable.i448 = getelementptr inbounds %struct.InputParameters* %498, i64 0, i32 127, !dbg !1869
  %499 = load i32* %RCEnable.i448, align 4, !dbg !1869, !tbaa !1132
  %tobool3.i = icmp eq i32 %499, 0, !dbg !1869
  br i1 %tobool3.i, label %ReportFirstframe.exit, label %if.then.i450, !dbg !1869

if.then.i450:                                     ; preds = %if.then221
  %PicInterlace.i449 = getelementptr inbounds %struct.InputParameters* %498, i64 0, i32 91, !dbg !1870
  %500 = load i32* %PicInterlace.i449, align 4, !dbg !1870, !tbaa !1132
  %tobool4.i = icmp eq i32 %500, 0, !dbg !1870
  br i1 %tobool4.i, label %land.lhs.true.i452, label %if.else.i453, !dbg !1870

land.lhs.true.i452:                               ; preds = %if.then.i450
  %MbInterlace.i451 = getelementptr inbounds %struct.InputParameters* %498, i64 0, i32 92, !dbg !1870
  %501 = load i32* %MbInterlace.i451, align 4, !dbg !1870, !tbaa !1132
  %tobool5.i = icmp eq i32 %501, 0, !dbg !1870
  br i1 %tobool5.i, label %ReportFirstframe.exit, label %if.else.i453, !dbg !1870

if.else.i453:                                     ; preds = %land.lhs.true.i452, %if.then.i450
  %502 = load %struct.StatParameters** @stats, align 8, !dbg !1872, !tbaa !1126
  %bit_ctr10.i = getelementptr inbounds %struct.StatParameters* %502, i64 0, i32 4, !dbg !1872
  %503 = load i32* %bit_ctr10.i, align 4, !dbg !1872, !tbaa !1132
  store i32 %503, i32* @Iprev_bits, align 4, !dbg !1874, !tbaa !1132
  br label %ReportFirstframe.exit

ReportFirstframe.exit:                            ; preds = %land.lhs.true.i452, %if.then221, %if.else.i453
  %504 = load %struct.StatParameters** @stats, align 8, !dbg !1875, !tbaa !1126
  %bit_ctr14.i = getelementptr inbounds %struct.StatParameters* %504, i64 0, i32 4, !dbg !1875
  %505 = load i32* %bit_ctr14.i, align 4, !dbg !1875, !tbaa !1132
  %bit_ctr_I.i = getelementptr inbounds %struct.StatParameters* %504, i64 0, i32 14, !dbg !1875
  store i32 %505, i32* %bit_ctr_I.i, align 4, !dbg !1875, !tbaa !1132
  store i32 0, i32* %bit_ctr14.i, align 4, !dbg !1876, !tbaa !1132
  br label %if.end267, !dbg !1864

if.else222:                                       ; preds = %if.end216
  %506 = load %struct.InputParameters** @input, align 8, !dbg !1877, !tbaa !1126
  %RCEnable223 = getelementptr inbounds %struct.InputParameters* %506, i64 0, i32 127, !dbg !1877
  %507 = load i32* %RCEnable223, align 4, !dbg !1877, !tbaa !1132
  %tobool224 = icmp eq i32 %507, 0, !dbg !1877
  br i1 %tobool224, label %if.end240, label %if.then225, !dbg !1877

if.then225:                                       ; preds = %if.else222
  %PicInterlace226 = getelementptr inbounds %struct.InputParameters* %506, i64 0, i32 91, !dbg !1879
  %508 = load i32* %PicInterlace226, align 4, !dbg !1879, !tbaa !1132
  %tobool227 = icmp eq i32 %508, 0, !dbg !1879
  br i1 %tobool227, label %land.lhs.true228, label %if.else235, !dbg !1879

land.lhs.true228:                                 ; preds = %if.then225
  %MbInterlace229 = getelementptr inbounds %struct.InputParameters* %506, i64 0, i32 92, !dbg !1879
  %509 = load i32* %MbInterlace229, align 4, !dbg !1879, !tbaa !1132
  %tobool230 = icmp eq i32 %509, 0, !dbg !1879
  br i1 %tobool230, label %if.then231, label %if.else235, !dbg !1879

if.then231:                                       ; preds = %land.lhs.true228
  %510 = load %struct.StatParameters** @stats, align 8, !dbg !1881, !tbaa !1126
  %bit_ctr232 = getelementptr inbounds %struct.StatParameters* %510, i64 0, i32 4, !dbg !1881
  %511 = load i32* %bit_ctr232, align 4, !dbg !1881, !tbaa !1132
  %bit_ctr_n233 = getelementptr inbounds %struct.StatParameters* %510, i64 0, i32 5, !dbg !1881
  %512 = load i32* %bit_ctr_n233, align 4, !dbg !1881, !tbaa !1132
  %sub234 = sub nsw i32 %511, %512, !dbg !1881
  call void @llvm.dbg.value(metadata !{i32 %sub234}, i64 0, metadata !285), !dbg !1881
  br label %if.end240, !dbg !1881

if.else235:                                       ; preds = %land.lhs.true228, %if.then225
  %513 = load %struct.StatParameters** @stats, align 8, !dbg !1882, !tbaa !1126
  %bit_ctr236 = getelementptr inbounds %struct.StatParameters* %513, i64 0, i32 4, !dbg !1882
  %514 = load i32* %bit_ctr236, align 4, !dbg !1882, !tbaa !1132
  %515 = load i32* @Pprev_bits, align 4, !dbg !1882, !tbaa !1132
  %sub237 = sub nsw i32 %514, %515, !dbg !1882
  call void @llvm.dbg.value(metadata !{i32 %sub237}, i64 0, metadata !285), !dbg !1882
  store i32 %514, i32* @Pprev_bits, align 4, !dbg !1884, !tbaa !1132
  br label %if.end240

if.end240:                                        ; preds = %if.else222, %if.then231, %if.else235
  %bits.1 = phi i32 [ %sub237, %if.else235 ], [ %sub234, %if.then231 ], [ %bits.0, %if.else222 ]
  %type241 = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 6, !dbg !1885
  %516 = load i32* %type241, align 4, !dbg !1885, !tbaa !1132
  switch i32 %516, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb246
    i32 1, label %sw.bb251
  ], !dbg !1885

sw.bb:                                            ; preds = %if.end240
  %517 = load %struct.StatParameters** @stats, align 8, !dbg !1886, !tbaa !1126
  %bit_ctr242 = getelementptr inbounds %struct.StatParameters* %517, i64 0, i32 4, !dbg !1886
  %518 = load i32* %bit_ctr242, align 4, !dbg !1886, !tbaa !1132
  %bit_ctr_n243 = getelementptr inbounds %struct.StatParameters* %517, i64 0, i32 5, !dbg !1886
  %519 = load i32* %bit_ctr_n243, align 4, !dbg !1886, !tbaa !1132
  %sub244 = sub i32 %518, %519, !dbg !1886
  %bit_ctr_I = getelementptr inbounds %struct.StatParameters* %517, i64 0, i32 14, !dbg !1886
  %520 = load i32* %bit_ctr_I, align 4, !dbg !1886, !tbaa !1132
  %add245 = add nsw i32 %sub244, %520, !dbg !1886
  store i32 %add245, i32* %bit_ctr_I, align 4, !dbg !1886, !tbaa !1132
  %521 = load i32* @me_time, align 4, !dbg !1888, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %conv161}, i64 0, metadata !1889) #1, !dbg !1890
  call void @llvm.dbg.value(metadata !{i32 %521}, i64 0, metadata !1891) #1, !dbg !1890
  %currentPicture.i = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 49, !dbg !1892
  %522 = load %struct.Picture** %currentPicture.i, align 8, !dbg !1892, !tbaa !1126
  %idr_flag.i = getelementptr inbounds %struct.Picture* %522, i64 0, i32 1, !dbg !1892
  %523 = load i32* %idr_flag.i, align 4, !dbg !1892, !tbaa !1132
  %cmp.i454 = icmp eq i32 %523, 1, !dbg !1892
  %524 = load i32* @frame_no, align 4, !dbg !1893, !tbaa !1132
  %qp.i458 = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 10, !dbg !1893
  %525 = load i32* %qp.i458, align 4, !dbg !1893, !tbaa !1132
  %526 = load %struct.SNRParameters** @snr, align 8, !dbg !1893, !tbaa !1126
  %snr_y.i459 = getelementptr inbounds %struct.SNRParameters* %526, i64 0, i32 0, !dbg !1893
  %527 = load float* %snr_y.i459, align 4, !dbg !1893, !tbaa !1197
  %conv.i460 = fpext float %527 to double, !dbg !1893
  %snr_u.i461 = getelementptr inbounds %struct.SNRParameters* %526, i64 0, i32 1, !dbg !1893
  %528 = load float* %snr_u.i461, align 4, !dbg !1893, !tbaa !1197
  %conv1.i462 = fpext float %528 to double, !dbg !1893
  %snr_v.i463 = getelementptr inbounds %struct.SNRParameters* %526, i64 0, i32 2, !dbg !1893
  %529 = load float* %snr_v.i463, align 4, !dbg !1893, !tbaa !1197
  %conv2.i464 = fpext float %529 to double, !dbg !1893
  %fld_flag.i465 = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 57, !dbg !1893
  %530 = load i32* %fld_flag.i465, align 4, !dbg !1893, !tbaa !1132
  %tobool.i466 = icmp ne i32 %530, 0, !dbg !1893
  %cond.i467 = select i1 %tobool.i466, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), !dbg !1893
  %531 = load i32* @intras, align 4, !dbg !1893, !tbaa !1132
  br i1 %cmp.i454, label %if.then.i469, label %if.else.i471, !dbg !1892

if.then.i469:                                     ; preds = %sw.bb
  %call.i468 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i32 %524, i32 %sub244, i32 0, i32 %525, double %conv.i460, double %conv1.i462, double %conv2.i464, i32 %conv161, i32 %521, i8* %cond.i467, i32 %531) #7, !dbg !1893
  br label %if.end267, !dbg !1893

if.else.i471:                                     ; preds = %sw.bb
  %call16.i470 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str19, i64 0, i64 0), i32 %524, i32 %sub244, i32 0, i32 %525, double %conv.i460, double %conv1.i462, double %conv2.i464, i32 %conv161, i32 %521, i8* %cond.i467, i32 %531) #7, !dbg !1894
  br label %if.end267

sw.bb246:                                         ; preds = %if.end240
  %532 = load %struct.StatParameters** @stats, align 8, !dbg !1895, !tbaa !1126
  %bit_ctr247 = getelementptr inbounds %struct.StatParameters* %532, i64 0, i32 4, !dbg !1895
  %533 = load i32* %bit_ctr247, align 4, !dbg !1895, !tbaa !1132
  %bit_ctr_n248 = getelementptr inbounds %struct.StatParameters* %532, i64 0, i32 5, !dbg !1895
  %534 = load i32* %bit_ctr_n248, align 4, !dbg !1895, !tbaa !1132
  %sub249 = sub i32 %533, %534, !dbg !1895
  %bit_ctr_P = getelementptr inbounds %struct.StatParameters* %532, i64 0, i32 15, !dbg !1895
  %535 = load i32* %bit_ctr_P, align 4, !dbg !1895, !tbaa !1132
  %add250 = add nsw i32 %sub249, %535, !dbg !1895
  store i32 %add250, i32* %bit_ctr_P, align 4, !dbg !1895, !tbaa !1132
  %536 = load i32* @me_time, align 4, !dbg !1896, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %conv161}, i64 0, metadata !1897) #1, !dbg !1898
  call void @llvm.dbg.value(metadata !{i32 %536}, i64 0, metadata !1899) #1, !dbg !1898
  %537 = load i32* @frame_no, align 4, !dbg !1900, !tbaa !1132
  %538 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1900, !tbaa !1126
  %weighted_pred_flag.i476 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %538, i64 0, i32 19, !dbg !1900
  %539 = load i32* %weighted_pred_flag.i476, align 4, !dbg !1900, !tbaa !1127
  %qp.i477 = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 10, !dbg !1900
  %540 = load i32* %qp.i477, align 4, !dbg !1900, !tbaa !1132
  %541 = load %struct.SNRParameters** @snr, align 8, !dbg !1900, !tbaa !1126
  %snr_y.i478 = getelementptr inbounds %struct.SNRParameters* %541, i64 0, i32 0, !dbg !1900
  %542 = load float* %snr_y.i478, align 4, !dbg !1900, !tbaa !1197
  %conv.i479 = fpext float %542 to double, !dbg !1900
  %snr_u.i480 = getelementptr inbounds %struct.SNRParameters* %541, i64 0, i32 1, !dbg !1900
  %543 = load float* %snr_u.i480, align 4, !dbg !1900, !tbaa !1197
  %conv1.i481 = fpext float %543 to double, !dbg !1900
  %snr_v.i482 = getelementptr inbounds %struct.SNRParameters* %541, i64 0, i32 2, !dbg !1900
  %544 = load float* %snr_v.i482, align 4, !dbg !1900, !tbaa !1197
  %conv2.i483 = fpext float %544 to double, !dbg !1900
  %fld_flag.i484 = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 57, !dbg !1900
  %545 = load i32* %fld_flag.i484, align 4, !dbg !1900, !tbaa !1132
  %tobool.i485 = icmp ne i32 %545, 0, !dbg !1900
  %cond.i486 = select i1 %tobool.i485, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), !dbg !1900
  %546 = load i32* @intras, align 4, !dbg !1900, !tbaa !1132
  %call.i487 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str17, i64 0, i64 0), i32 %537, i32 %sub249, i32 %539, i32 %540, double %conv.i479, double %conv1.i481, double %conv2.i483, i32 %conv161, i32 %536, i8* %cond.i486, i32 %546) #7, !dbg !1900
  br label %if.end267, !dbg !1901

sw.bb251:                                         ; preds = %if.end240
  %547 = load %struct.StatParameters** @stats, align 8, !dbg !1902, !tbaa !1126
  %bit_ctr252 = getelementptr inbounds %struct.StatParameters* %547, i64 0, i32 4, !dbg !1902
  %548 = load i32* %bit_ctr252, align 4, !dbg !1902, !tbaa !1132
  %bit_ctr_n253 = getelementptr inbounds %struct.StatParameters* %547, i64 0, i32 5, !dbg !1902
  %549 = load i32* %bit_ctr_n253, align 4, !dbg !1902, !tbaa !1132
  %sub254 = sub i32 %548, %549, !dbg !1902
  %bit_ctr_B = getelementptr inbounds %struct.StatParameters* %547, i64 0, i32 16, !dbg !1902
  %550 = load i32* %bit_ctr_B, align 4, !dbg !1902, !tbaa !1132
  %add255 = add nsw i32 %sub254, %550, !dbg !1902
  store i32 %add255, i32* %bit_ctr_B, align 4, !dbg !1902, !tbaa !1132
  %nal_reference_idc256 = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 113, !dbg !1903
  %551 = load i32* %nal_reference_idc256, align 4, !dbg !1903, !tbaa !1132
  %cmp257 = icmp sgt i32 %551, 0, !dbg !1903
  %552 = load i32* @me_time, align 4, !dbg !1904, !tbaa !1132
  %553 = load i32* @frame_no, align 4, !dbg !1905, !tbaa !1132
  %554 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1905, !tbaa !1126
  %weighted_bipred_idc.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %554, i64 0, i32 20, !dbg !1905
  %555 = load i32* %weighted_bipred_idc.i, align 4, !dbg !1905, !tbaa !1132
  %qp.i491 = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 10, !dbg !1905
  %556 = load i32* %qp.i491, align 4, !dbg !1905, !tbaa !1132
  %557 = load %struct.SNRParameters** @snr, align 8, !dbg !1905, !tbaa !1126
  %snr_y.i492 = getelementptr inbounds %struct.SNRParameters* %557, i64 0, i32 0, !dbg !1905
  %558 = load float* %snr_y.i492, align 4, !dbg !1905, !tbaa !1197
  %conv.i493 = fpext float %558 to double, !dbg !1905
  %snr_u.i494 = getelementptr inbounds %struct.SNRParameters* %557, i64 0, i32 1, !dbg !1905
  %559 = load float* %snr_u.i494, align 4, !dbg !1905, !tbaa !1197
  %conv1.i495 = fpext float %559 to double, !dbg !1905
  %snr_v.i496 = getelementptr inbounds %struct.SNRParameters* %557, i64 0, i32 2, !dbg !1905
  %560 = load float* %snr_v.i496, align 4, !dbg !1905, !tbaa !1197
  %conv2.i497 = fpext float %560 to double, !dbg !1905
  %fld_flag.i498 = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 57, !dbg !1905
  %561 = load i32* %fld_flag.i498, align 4, !dbg !1905, !tbaa !1132
  %tobool.i499 = icmp ne i32 %561, 0, !dbg !1905
  %cond.i500 = select i1 %tobool.i499, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), !dbg !1905
  %562 = load i32* @intras, align 4, !dbg !1905, !tbaa !1132
  %direct_spatial_mv_pred_flag.i = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 78, !dbg !1905
  %563 = load i32* %direct_spatial_mv_pred_flag.i, align 4, !dbg !1905, !tbaa !1132
  br i1 %cmp257, label %if.then259, label %if.else260, !dbg !1903

if.then259:                                       ; preds = %sw.bb251
  call void @llvm.dbg.value(metadata !{i32 %conv161}, i64 0, metadata !1906) #1, !dbg !1907
  call void @llvm.dbg.value(metadata !{i32 %552}, i64 0, metadata !1908) #1, !dbg !1907
  %call.i501 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str16, i64 0, i64 0), i32 %553, i32 %sub254, i32 %555, i32 %556, double %conv.i493, double %conv1.i495, double %conv2.i497, i32 %conv161, i32 %552, i8* %cond.i500, i32 %562, i32 %563) #7, !dbg !1905
  br label %if.end267, !dbg !1904

if.else260:                                       ; preds = %sw.bb251
  call void @llvm.dbg.value(metadata !{i32 %conv161}, i64 0, metadata !1909) #1, !dbg !1911
  call void @llvm.dbg.value(metadata !{i32 %552}, i64 0, metadata !1912) #1, !dbg !1911
  %call.i517 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([69 x i8]* @.str15, i64 0, i64 0), i32 %553, i32 %sub254, i32 %555, i32 %556, double %conv.i493, double %conv1.i495, double %conv2.i497, i32 %conv161, i32 %552, i8* %cond.i500, i32 %562, i32 %563) #7, !dbg !1913
  br label %if.end267

sw.default:                                       ; preds = %if.end240
  %564 = load %struct.StatParameters** @stats, align 8, !dbg !1914, !tbaa !1126
  %bit_ctr262 = getelementptr inbounds %struct.StatParameters* %564, i64 0, i32 4, !dbg !1914
  %565 = load i32* %bit_ctr262, align 4, !dbg !1914, !tbaa !1132
  %bit_ctr_n263 = getelementptr inbounds %struct.StatParameters* %564, i64 0, i32 5, !dbg !1914
  %566 = load i32* %bit_ctr_n263, align 4, !dbg !1914, !tbaa !1132
  %sub264 = sub i32 %565, %566, !dbg !1914
  %bit_ctr_P265 = getelementptr inbounds %struct.StatParameters* %564, i64 0, i32 15, !dbg !1914
  %567 = load i32* %bit_ctr_P265, align 4, !dbg !1914, !tbaa !1132
  %add266 = add nsw i32 %sub264, %567, !dbg !1914
  store i32 %add266, i32* %bit_ctr_P265, align 4, !dbg !1914, !tbaa !1132
  %568 = load i32* @me_time, align 4, !dbg !1915, !tbaa !1132
  call void @llvm.dbg.value(metadata !{i32 %conv161}, i64 0, metadata !1916) #1, !dbg !1917
  call void @llvm.dbg.value(metadata !{i32 %568}, i64 0, metadata !1918) #1, !dbg !1917
  %569 = load i32* @frame_no, align 4, !dbg !1919, !tbaa !1132
  %570 = load %struct.pic_parameter_set_rbsp_t** @active_pps, align 8, !dbg !1919, !tbaa !1126
  %weighted_pred_flag.i = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %570, i64 0, i32 19, !dbg !1919
  %571 = load i32* %weighted_pred_flag.i, align 4, !dbg !1919, !tbaa !1127
  %qp.i = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 10, !dbg !1919
  %572 = load i32* %qp.i, align 4, !dbg !1919, !tbaa !1132
  %573 = load %struct.SNRParameters** @snr, align 8, !dbg !1919, !tbaa !1126
  %snr_y.i = getelementptr inbounds %struct.SNRParameters* %573, i64 0, i32 0, !dbg !1919
  %574 = load float* %snr_y.i, align 4, !dbg !1919, !tbaa !1197
  %conv.i = fpext float %574 to double, !dbg !1919
  %snr_u.i = getelementptr inbounds %struct.SNRParameters* %573, i64 0, i32 1, !dbg !1919
  %575 = load float* %snr_u.i, align 4, !dbg !1919, !tbaa !1197
  %conv1.i = fpext float %575 to double, !dbg !1919
  %snr_v.i = getelementptr inbounds %struct.SNRParameters* %573, i64 0, i32 2, !dbg !1919
  %576 = load float* %snr_v.i, align 4, !dbg !1919, !tbaa !1197
  %conv2.i = fpext float %576 to double, !dbg !1919
  %fld_flag.i = getelementptr inbounds %struct.ImageParameters* %483, i64 0, i32 57, !dbg !1919
  %577 = load i32* %fld_flag.i, align 4, !dbg !1919, !tbaa !1132
  %tobool.i = icmp ne i32 %577, 0, !dbg !1919
  %cond.i = select i1 %tobool.i, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), !dbg !1919
  %578 = load i32* @intras, align 4, !dbg !1919, !tbaa !1132
  %call.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str12, i64 0, i64 0), i32 %569, i32 %sub264, i32 %571, i32 %572, double %conv.i, double %conv1.i, double %conv2.i, i32 %conv161, i32 %568, i8* %cond.i, i32 %578) #7, !dbg !1919
  br label %if.end267, !dbg !1920

if.end267:                                        ; preds = %if.else.i471, %if.then.i469, %sw.bb246, %sw.default, %if.else260, %if.then259, %ReportFirstframe.exit
  %bits.2 = phi i32 [ %bits.0, %ReportFirstframe.exit ], [ %bits.1, %sw.default ], [ %bits.1, %if.then259 ], [ %bits.1, %if.else260 ], [ %bits.1, %sw.bb246 ], [ %bits.1, %if.then.i469 ], [ %bits.1, %if.else.i471 ]
  %579 = load %struct.StatParameters** @stats, align 8, !dbg !1921, !tbaa !1126
  %bit_ctr268 = getelementptr inbounds %struct.StatParameters* %579, i64 0, i32 4, !dbg !1921
  %580 = load i32* %bit_ctr268, align 4, !dbg !1921, !tbaa !1132
  %bit_ctr_n269 = getelementptr inbounds %struct.StatParameters* %579, i64 0, i32 5, !dbg !1921
  store i32 %580, i32* %bit_ctr_n269, align 4, !dbg !1921, !tbaa !1132
  %581 = load %struct.InputParameters** @input, align 8, !dbg !1922, !tbaa !1126
  %RCEnable270 = getelementptr inbounds %struct.InputParameters* %581, i64 0, i32 127, !dbg !1922
  %582 = load i32* %RCEnable270, align 4, !dbg !1922, !tbaa !1132
  %tobool271 = icmp eq i32 %582, 0, !dbg !1922
  br i1 %tobool271, label %if.end294, label %if.then272, !dbg !1922

if.then272:                                       ; preds = %if.end267
  call void @rc_update_pict(i32 %bits.2) #7, !dbg !1923
  %583 = load %struct.ImageParameters** @img, align 8, !dbg !1925, !tbaa !1126
  %type273 = getelementptr inbounds %struct.ImageParameters* %583, i64 0, i32 6, !dbg !1925
  %584 = load i32* %type273, align 4, !dbg !1925, !tbaa !1132
  %cmp274 = icmp eq i32 %584, 0, !dbg !1925
  br i1 %cmp274, label %land.lhs.true276, label %if.end294, !dbg !1925

land.lhs.true276:                                 ; preds = %if.then272
  %585 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1925, !tbaa !1126
  %frame_mbs_only_flag277 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %585, i64 0, i32 25, !dbg !1925
  %586 = load i32* %frame_mbs_only_flag277, align 4, !dbg !1925, !tbaa !1127
  %tobool278 = icmp eq i32 %586, 0, !dbg !1925
  br i1 %tobool278, label %land.lhs.true284, label %if.then279, !dbg !1925

if.then279:                                       ; preds = %land.lhs.true276
  call void (...)* @updateRCModel() #7, !dbg !1926
  br label %if.end294, !dbg !1926

land.lhs.true284:                                 ; preds = %land.lhs.true276
  %587 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1927, !tbaa !1126
  %frame_mbs_only_flag285 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %587, i64 0, i32 25, !dbg !1927
  %588 = load i32* %frame_mbs_only_flag285, align 4, !dbg !1927, !tbaa !1127
  %tobool286 = icmp eq i32 %588, 0, !dbg !1927
  br i1 %tobool286, label %land.lhs.true287, label %if.end294, !dbg !1927

land.lhs.true287:                                 ; preds = %land.lhs.true284
  %IFLAG288 = getelementptr inbounds %struct.ImageParameters* %583, i64 0, i32 137, !dbg !1927
  %589 = load i32* %IFLAG288, align 4, !dbg !1927, !tbaa !1132
  %cmp289 = icmp eq i32 %589, 0, !dbg !1927
  br i1 %cmp289, label %if.then291, label %if.end294, !dbg !1927

if.then291:                                       ; preds = %land.lhs.true287
  call void (...)* @updateRCModel() #7, !dbg !1928
  br label %if.end294, !dbg !1928

if.end294:                                        ; preds = %land.lhs.true287, %land.lhs.true284, %if.then272, %if.end267, %if.then279, %if.then291
  %590 = load %struct.StatParameters** @stats, align 8, !dbg !1929, !tbaa !1126
  %bit_ctr_parametersets_n295 = getelementptr inbounds %struct.StatParameters* %590, i64 0, i32 33, !dbg !1929
  store i32 0, i32* %bit_ctr_parametersets_n295, align 4, !dbg !1929, !tbaa !1132
  %591 = load %struct.ImageParameters** @img, align 8, !dbg !1930, !tbaa !1126
  %number296 = getelementptr inbounds %struct.ImageParameters* %591, i64 0, i32 0, !dbg !1930
  %592 = load i32* %number296, align 4, !dbg !1930, !tbaa !1132
  %593 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1930, !tbaa !1132
  %not.cmp298 = icmp ne i32 %592, %593, !dbg !1931
  %. = zext i1 %not.cmp298 to i32, !dbg !1931
  ret i32 %., !dbg !1932
}

; Function Attrs: optsize
declare i32 @ftime(%struct.timeb*) #3

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #4

; Function Attrs: optsize
declare i32 @write_PPS(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @field_picture(%struct.Picture* nocapture %top, %struct.Picture* nocapture %bottom) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.Picture* %top}, i64 0, metadata !297), !dbg !1933
  tail call void @llvm.dbg.value(metadata !{%struct.Picture* %bottom}, i64 0, metadata !298), !dbg !1933
  %0 = load %struct.StatParameters** @stats, align 8, !dbg !1934, !tbaa !1126
  %em_prev_bits_fld = getelementptr inbounds %struct.StatParameters* %0, i64 0, i32 30, !dbg !1934
  store i32 0, i32* %em_prev_bits_fld, align 4, !dbg !1934, !tbaa !1132
  %em_prev_bits = getelementptr inbounds %struct.StatParameters* %0, i64 0, i32 31, !dbg !1935
  store i32* %em_prev_bits_fld, i32** %em_prev_bits, align 8, !dbg !1935, !tbaa !1126
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1936, !tbaa !1126
  %number = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 0, !dbg !1936
  %2 = load i32* %number, align 4, !dbg !1936, !tbaa !1132
  %mul = shl nsw i32 %2, 1, !dbg !1936
  store i32 %mul, i32* %number, align 4, !dbg !1936, !tbaa !1132
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 84, !dbg !1937
  %3 = load i32* %buf_cycle, align 4, !dbg !1937, !tbaa !1132
  %mul2 = shl nsw i32 %3, 1, !dbg !1937
  store i32 %mul2, i32* %buf_cycle, align 4, !dbg !1937, !tbaa !1132
  %4 = load %struct.InputParameters** @input, align 8, !dbg !1938, !tbaa !1126
  %img_height = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 17, !dbg !1938
  %5 = load i32* %img_height, align 4, !dbg !1938, !tbaa !1132
  %auto_crop_bottom = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 166, !dbg !1938
  %6 = load i32* %auto_crop_bottom, align 4, !dbg !1938, !tbaa !1132
  %add = add nsw i32 %6, %5, !dbg !1938
  %div = sdiv i32 %add, 2, !dbg !1938
  %height = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 15, !dbg !1938
  store i32 %div, i32* %height, align 4, !dbg !1938, !tbaa !1132
  %height_cr_frame = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 17, !dbg !1939
  %7 = load i32* %height_cr_frame, align 4, !dbg !1939, !tbaa !1132
  %div3 = sdiv i32 %7, 2, !dbg !1939
  %height_cr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 16, !dbg !1939
  store i32 %div3, i32* %height_cr, align 4, !dbg !1939, !tbaa !1132
  %fld_flag = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 57, !dbg !1940
  store i32 1, i32* %fld_flag, align 4, !dbg !1940, !tbaa !1132
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 111, !dbg !1941
  %8 = load i32* %FrameSizeInMbs, align 4, !dbg !1941, !tbaa !1132
  %div4 = lshr i32 %8, 1, !dbg !1941
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 110, !dbg !1941
  store i32 %div4, i32* %PicSizeInMbs, align 4, !dbg !1941, !tbaa !1132
  %structure = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 7, !dbg !1942
  %9 = load i32* %structure, align 4, !dbg !1942, !tbaa !1132
  %width = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 13, !dbg !1942
  %10 = load i32* %width, align 4, !dbg !1942, !tbaa !1132
  %width_cr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 14, !dbg !1942
  %11 = load i32* %width_cr, align 4, !dbg !1942, !tbaa !1132
  %call = tail call %struct.storable_picture* @alloc_storable_picture(i32 %9, i32 %10, i32 %div, i32 %11, i32 %div3) #7, !dbg !1942
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_top_picture, align 8, !dbg !1942, !tbaa !1126
  %12 = load %struct.ImageParameters** @img, align 8, !dbg !1943, !tbaa !1126
  %toppoc = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 101, !dbg !1943
  %13 = load i32* %toppoc, align 4, !dbg !1943, !tbaa !1132
  %poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 1, !dbg !1943
  store i32 %13, i32* %poc, align 4, !dbg !1943, !tbaa !1132
  %14 = load i32* %toppoc, align 4, !dbg !1944, !tbaa !1132
  %frame_poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 4, !dbg !1944
  store i32 %14, i32* %frame_poc, align 4, !dbg !1944, !tbaa !1132
  %frame_num = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 105, !dbg !1945
  %15 = load i32* %frame_num, align 4, !dbg !1945, !tbaa !1132
  %pic_num = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 11, !dbg !1945
  store i32 %15, i32* %pic_num, align 4, !dbg !1945, !tbaa !1132
  %16 = load i32* %frame_num, align 4, !dbg !1946, !tbaa !1132
  %frame_num9 = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 10, !dbg !1946
  store i32 %16, i32* %frame_num9, align 4, !dbg !1946, !tbaa !1132
  %coded_frame = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 23, !dbg !1947
  store i32 0, i32* %coded_frame, align 4, !dbg !1947, !tbaa !1132
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 90, !dbg !1948
  store i32 0, i32* %MbaffFrameFlag, align 4, !dbg !1948, !tbaa !1132
  %MbaffFrameFlag10 = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 24, !dbg !1948
  store i32 0, i32* %MbaffFrameFlag10, align 4, !dbg !1948, !tbaa !1132
  %17 = load i32* %toppoc, align 4, !dbg !1949, !tbaa !1132
  %ThisPOC = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 104, !dbg !1949
  store i32 %17, i32* %ThisPOC, align 4, !dbg !1949, !tbaa !1132
  %structure12 = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 7, !dbg !1950
  store i32 1, i32* %structure12, align 4, !dbg !1950, !tbaa !1132
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_picture, align 8, !dbg !1951, !tbaa !1126
  tail call void @copy_params() #8, !dbg !1952
  %18 = load %struct.ImageParameters** @img, align 8, !dbg !1953, !tbaa !1126
  %fld_type.i = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 56, !dbg !1953
  store i32 0, i32* %fld_type.i, align 4, !dbg !1953, !tbaa !1132
  %19 = load i16*** @imgY_org_top, align 8, !dbg !1955, !tbaa !1126
  store i16** %19, i16*** @imgY_org, align 8, !dbg !1955, !tbaa !1126
  %20 = load i16**** @imgUV_org_top, align 8, !dbg !1956, !tbaa !1126
  store i16*** %20, i16**** @imgUV_org, align 8, !dbg !1956, !tbaa !1126
  tail call fastcc void @init_field() #8, !dbg !1957
  %21 = load %struct.ImageParameters** @img, align 8, !dbg !1958, !tbaa !1126
  %type13 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 6, !dbg !1958
  %22 = load i32* %type13, align 4, !dbg !1958, !tbaa !1132
  %cmp = icmp eq i32 %22, 1, !dbg !1958
  br i1 %cmp, label %if.then, label %if.end, !dbg !1958

if.then:                                          ; preds = %entry
  %23 = load i32* @nextP_tr_fld, align 4, !dbg !1959, !tbaa !1132
  %dec = add nsw i32 %23, -1, !dbg !1959
  store i32 %dec, i32* @nextP_tr_fld, align 4, !dbg !1959, !tbaa !1132
  br label %if.end, !dbg !1959

if.end:                                           ; preds = %if.then, %entry
  %fld_flag14 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 57, !dbg !1960
  store i32 1, i32* %fld_flag14, align 4, !dbg !1960, !tbaa !1132
  %24 = load %struct.InputParameters** @input, align 8, !dbg !1961, !tbaa !1126
  %RCEnable = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 127, !dbg !1961
  %25 = load i32* %RCEnable, align 4, !dbg !1961, !tbaa !1132
  %tobool = icmp eq i32 %25, 0, !dbg !1961
  br i1 %tobool, label %if.end20, label %if.then15, !dbg !1961

if.then15:                                        ; preds = %if.end
  %basicunit = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 130, !dbg !1962
  %26 = load i32* %basicunit, align 4, !dbg !1962, !tbaa !1132
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 139, !dbg !1962
  store i32 %26, i32* %BasicUnit, align 4, !dbg !1962, !tbaa !1132
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %24, i64 0, i32 91, !dbg !1964
  %27 = load i32* %PicInterlace, align 4, !dbg !1964, !tbaa !1132
  %cmp16 = icmp eq i32 %27, 1, !dbg !1964
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !1964

if.then17:                                        ; preds = %if.then15
  tail call void @rc_init_pict(i32 0, i32 1, i32 1) #7, !dbg !1965
  br label %if.end18, !dbg !1965

if.else:                                          ; preds = %if.then15
  tail call void @rc_init_pict(i32 0, i32 1, i32 0) #7, !dbg !1966
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %call19 = tail call i32 @updateQuantizationParameter(i32 1) #7, !dbg !1967
  %28 = load %struct.ImageParameters** @img, align 8, !dbg !1967, !tbaa !1126
  %qp = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 10, !dbg !1967
  store i32 %call19, i32* %qp, align 4, !dbg !1967, !tbaa !1132
  br label %if.end20, !dbg !1968

if.end20:                                         ; preds = %if.end, %if.end18
  %29 = phi %struct.ImageParameters* [ %21, %if.end ], [ %28, %if.end18 ]
  %TopFieldFlag = getelementptr inbounds %struct.ImageParameters* %29, i64 0, i32 133, !dbg !1969
  store i32 1, i32* %TopFieldFlag, align 4, !dbg !1969, !tbaa !1132
  %30 = load %struct.Picture** @top_pic, align 8, !dbg !1970, !tbaa !1126
  tail call void @code_a_picture(%struct.Picture* %30) #8, !dbg !1970
  %31 = load %struct.storable_picture** @enc_picture, align 8, !dbg !1971, !tbaa !1126
  %structure21 = getelementptr inbounds %struct.storable_picture* %31, i64 0, i32 0, !dbg !1971
  store i32 1, i32* %structure21, align 4, !dbg !1971, !tbaa !1127
  %32 = load %struct.storable_picture** @enc_top_picture, align 8, !dbg !1972, !tbaa !1126
  tail call void @store_picture_in_dpb(%struct.storable_picture* %32) #7, !dbg !1972
  %33 = load %struct.ImageParameters** @img, align 8, !dbg !1973, !tbaa !1126
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 50, !dbg !1973
  %34 = load %struct.Slice** %currentSlice, align 8, !dbg !1973, !tbaa !1126
  %partArr = getelementptr inbounds %struct.Slice* %34, i64 0, i32 6, !dbg !1973
  %35 = load %struct.datapartition** %partArr, align 8, !dbg !1973, !tbaa !1126
  %bitstream = getelementptr inbounds %struct.datapartition* %35, i64 0, i32 0, !dbg !1973
  %36 = load %struct.Bitstream** %bitstream, align 8, !dbg !1973, !tbaa !1126
  %byte_pos = getelementptr inbounds %struct.Bitstream* %36, i64 0, i32 0, !dbg !1973
  %37 = load i32* %byte_pos, align 4, !dbg !1973, !tbaa !1132
  %mul22 = shl nsw i32 %37, 3, !dbg !1973
  %bits_per_picture = getelementptr inbounds %struct.Picture* %top, i64 0, i32 3, !dbg !1973
  store i32 %mul22, i32* %bits_per_picture, align 4, !dbg !1973, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !{i32 %mul22}, i64 0, metadata !300), !dbg !1974
  %structure24 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 7, !dbg !1975
  %38 = load i32* %structure24, align 4, !dbg !1975, !tbaa !1132
  %width25 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 13, !dbg !1975
  %39 = load i32* %width25, align 4, !dbg !1975, !tbaa !1132
  %height26 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 15, !dbg !1975
  %40 = load i32* %height26, align 4, !dbg !1975, !tbaa !1132
  %width_cr27 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 14, !dbg !1975
  %41 = load i32* %width_cr27, align 4, !dbg !1975, !tbaa !1132
  %height_cr28 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 16, !dbg !1975
  %42 = load i32* %height_cr28, align 4, !dbg !1975, !tbaa !1132
  %call29 = tail call %struct.storable_picture* @alloc_storable_picture(i32 %38, i32 %39, i32 %40, i32 %41, i32 %42) #7, !dbg !1975
  store %struct.storable_picture* %call29, %struct.storable_picture** @enc_bottom_picture, align 8, !dbg !1975, !tbaa !1126
  %43 = load %struct.ImageParameters** @img, align 8, !dbg !1976, !tbaa !1126
  %bottompoc = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 102, !dbg !1976
  %44 = load i32* %bottompoc, align 4, !dbg !1976, !tbaa !1132
  %poc30 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 1, !dbg !1976
  store i32 %44, i32* %poc30, align 4, !dbg !1976, !tbaa !1132
  %45 = load i32* %bottompoc, align 4, !dbg !1977, !tbaa !1132
  %frame_poc32 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 4, !dbg !1977
  store i32 %45, i32* %frame_poc32, align 4, !dbg !1977, !tbaa !1132
  %frame_num33 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 105, !dbg !1978
  %46 = load i32* %frame_num33, align 4, !dbg !1978, !tbaa !1132
  %pic_num34 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 11, !dbg !1978
  store i32 %46, i32* %pic_num34, align 4, !dbg !1978, !tbaa !1132
  %47 = load i32* %frame_num33, align 4, !dbg !1979, !tbaa !1132
  %frame_num36 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 10, !dbg !1979
  store i32 %47, i32* %frame_num36, align 4, !dbg !1979, !tbaa !1132
  %coded_frame37 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 23, !dbg !1980
  store i32 0, i32* %coded_frame37, align 4, !dbg !1980, !tbaa !1132
  %MbaffFrameFlag38 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 90, !dbg !1981
  store i32 0, i32* %MbaffFrameFlag38, align 4, !dbg !1981, !tbaa !1132
  %MbaffFrameFlag39 = getelementptr inbounds %struct.storable_picture* %call29, i64 0, i32 24, !dbg !1981
  store i32 0, i32* %MbaffFrameFlag39, align 4, !dbg !1981, !tbaa !1132
  %48 = load i32* %bottompoc, align 4, !dbg !1982, !tbaa !1132
  %ThisPOC41 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 104, !dbg !1982
  store i32 %48, i32* %ThisPOC41, align 4, !dbg !1982, !tbaa !1132
  %structure42 = getelementptr inbounds %struct.ImageParameters* %43, i64 0, i32 7, !dbg !1983
  store i32 2, i32* %structure42, align 4, !dbg !1983, !tbaa !1132
  store %struct.storable_picture* %call29, %struct.storable_picture** @enc_picture, align 8, !dbg !1984, !tbaa !1126
  tail call void @copy_params() #8, !dbg !1985
  %49 = load %struct.ImageParameters** @img, align 8, !dbg !1986, !tbaa !1126
  %fld_type.i79 = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 56, !dbg !1986
  store i32 1, i32* %fld_type.i79, align 4, !dbg !1986, !tbaa !1132
  %50 = load i16*** @imgY_org_bot, align 8, !dbg !1988, !tbaa !1126
  store i16** %50, i16*** @imgY_org, align 8, !dbg !1988, !tbaa !1126
  %51 = load i16**** @imgUV_org_bot, align 8, !dbg !1989, !tbaa !1126
  store i16*** %51, i16**** @imgUV_org, align 8, !dbg !1989, !tbaa !1126
  %number43 = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 0, !dbg !1990
  %52 = load i32* %number43, align 4, !dbg !1990, !tbaa !1132
  %inc = add nsw i32 %52, 1, !dbg !1990
  store i32 %inc, i32* %number43, align 4, !dbg !1990, !tbaa !1132
  tail call fastcc void @init_field() #8, !dbg !1991
  %53 = load %struct.ImageParameters** @img, align 8, !dbg !1992, !tbaa !1126
  %type44 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 6, !dbg !1992
  %54 = load i32* %type44, align 4, !dbg !1992, !tbaa !1132
  %cmp45 = icmp eq i32 %54, 1, !dbg !1992
  br i1 %cmp45, label %if.then46, label %if.end48, !dbg !1992

if.then46:                                        ; preds = %if.end20
  %55 = load i32* @nextP_tr_fld, align 4, !dbg !1993, !tbaa !1132
  %inc47 = add nsw i32 %55, 1, !dbg !1993
  store i32 %inc47, i32* @nextP_tr_fld, align 4, !dbg !1993, !tbaa !1132
  %.pre = load i32* %type44, align 4, !dbg !1994, !tbaa !1132
  br label %if.end48, !dbg !1993

if.end48:                                         ; preds = %if.then46, %if.end20
  %56 = phi i32 [ %.pre, %if.then46 ], [ %54, %if.end20 ]
  %cmp50 = icmp eq i32 %56, 2, !dbg !1994
  %57 = load %struct.InputParameters** @input, align 8, !dbg !1994, !tbaa !1126
  br i1 %cmp50, label %land.lhs.true, label %if.end54, !dbg !1994

land.lhs.true:                                    ; preds = %if.end48
  %IntraBottom = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 93, !dbg !1994
  %58 = load i32* %IntraBottom, align 4, !dbg !1994, !tbaa !1132
  %cmp51 = icmp eq i32 %58, 1, !dbg !1994
  br i1 %cmp51, label %if.end54, label %if.then52, !dbg !1994

if.then52:                                        ; preds = %land.lhs.true
  store i32 0, i32* %type44, align 4, !dbg !1995, !tbaa !1132
  br label %if.end54, !dbg !1995

if.end54:                                         ; preds = %if.end48, %land.lhs.true, %if.then52
  %fld_flag55 = getelementptr inbounds %struct.ImageParameters* %53, i64 0, i32 57, !dbg !1996
  store i32 1, i32* %fld_flag55, align 4, !dbg !1996, !tbaa !1132
  %RCEnable56 = getelementptr inbounds %struct.InputParameters* %57, i64 0, i32 127, !dbg !1997
  %59 = load i32* %RCEnable56, align 4, !dbg !1997, !tbaa !1132
  %tobool57 = icmp eq i32 %59, 0, !dbg !1997
  br i1 %tobool57, label %if.end59.if.end65_crit_edge, label %if.end59, !dbg !1997

if.end59:                                         ; preds = %if.end54
  tail call void @setbitscount(i32 %mul22) #7, !dbg !1997
  %.pre80 = load %struct.InputParameters** @input, align 8, !dbg !1998, !tbaa !1126
  %RCEnable60.phi.trans.insert = getelementptr inbounds %struct.InputParameters* %.pre80, i64 0, i32 127
  %.pre81 = load i32* %RCEnable60.phi.trans.insert, align 4, !dbg !1998, !tbaa !1132
  %phitmp = icmp eq i32 %.pre81, 0, !dbg !1997
  br i1 %phitmp, label %if.end59.if.end65_crit_edge, label %if.then62, !dbg !1998

if.end59.if.end65_crit_edge:                      ; preds = %if.end54, %if.end59
  %.pre83 = load %struct.ImageParameters** @img, align 8, !dbg !1999, !tbaa !1126
  br label %if.end65, !dbg !1998

if.then62:                                        ; preds = %if.end59
  tail call void @rc_init_pict(i32 0, i32 0, i32 0) #7, !dbg !2000
  %call63 = tail call i32 @updateQuantizationParameter(i32 0) #7, !dbg !2002
  %60 = load %struct.ImageParameters** @img, align 8, !dbg !2002, !tbaa !1126
  %qp64 = getelementptr inbounds %struct.ImageParameters* %60, i64 0, i32 10, !dbg !2002
  store i32 %call63, i32* %qp64, align 4, !dbg !2002, !tbaa !1132
  br label %if.end65, !dbg !2003

if.end65:                                         ; preds = %if.end59.if.end65_crit_edge, %if.then62
  %61 = phi %struct.ImageParameters* [ %.pre83, %if.end59.if.end65_crit_edge ], [ %60, %if.then62 ]
  %TopFieldFlag66 = getelementptr inbounds %struct.ImageParameters* %61, i64 0, i32 133, !dbg !1999
  store i32 0, i32* %TopFieldFlag66, align 4, !dbg !1999, !tbaa !1132
  %62 = load %struct.storable_picture** @enc_picture, align 8, !dbg !2004, !tbaa !1126
  %structure67 = getelementptr inbounds %struct.storable_picture* %62, i64 0, i32 0, !dbg !2004
  store i32 2, i32* %structure67, align 4, !dbg !2004, !tbaa !1127
  %63 = load %struct.Picture** @bottom_pic, align 8, !dbg !2005, !tbaa !1126
  tail call void @code_a_picture(%struct.Picture* %63) #8, !dbg !2005
  %64 = load %struct.ImageParameters** @img, align 8, !dbg !2006, !tbaa !1126
  %currentSlice68 = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 50, !dbg !2006
  %65 = load %struct.Slice** %currentSlice68, align 8, !dbg !2006, !tbaa !1126
  %partArr69 = getelementptr inbounds %struct.Slice* %65, i64 0, i32 6, !dbg !2006
  %66 = load %struct.datapartition** %partArr69, align 8, !dbg !2006, !tbaa !1126
  %bitstream71 = getelementptr inbounds %struct.datapartition* %66, i64 0, i32 0, !dbg !2006
  %67 = load %struct.Bitstream** %bitstream71, align 8, !dbg !2006, !tbaa !1126
  %byte_pos72 = getelementptr inbounds %struct.Bitstream* %67, i64 0, i32 0, !dbg !2006
  %68 = load i32* %byte_pos72, align 4, !dbg !2006, !tbaa !1132
  %mul73 = shl nsw i32 %68, 3, !dbg !2006
  %bits_per_picture74 = getelementptr inbounds %struct.Picture* %bottom, i64 0, i32 3, !dbg !2006
  store i32 %mul73, i32* %bits_per_picture74, align 4, !dbg !2006, !tbaa !1132
  %distortion_y = getelementptr inbounds %struct.Picture* %top, i64 0, i32 4, !dbg !2007
  %distortion_u = getelementptr inbounds %struct.Picture* %top, i64 0, i32 5, !dbg !2007
  %distortion_v = getelementptr inbounds %struct.Picture* %top, i64 0, i32 6, !dbg !2007
  tail call void @llvm.dbg.value(metadata !{float* %distortion_y}, i64 0, metadata !2008) #1, !dbg !2009
  tail call void @llvm.dbg.value(metadata !{float* %distortion_u}, i64 0, metadata !2010) #1, !dbg !2009
  tail call void @llvm.dbg.value(metadata !{float* %distortion_v}, i64 0, metadata !2011) #1, !dbg !2009
  %number.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 0, !dbg !2012
  %69 = load i32* %number.i, align 4, !dbg !2012, !tbaa !1132
  %div.i = sdiv i32 %69, 2, !dbg !2012
  store i32 %div.i, i32* %number.i, align 4, !dbg !2012, !tbaa !1132
  %buf_cycle.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 84, !dbg !2013
  %70 = load i32* %buf_cycle.i, align 4, !dbg !2013, !tbaa !1132
  %div1.i = sdiv i32 %70, 2, !dbg !2013
  store i32 %div1.i, i32* %buf_cycle.i, align 4, !dbg !2013, !tbaa !1132
  %71 = load %struct.InputParameters** @input, align 8, !dbg !2014, !tbaa !1126
  %img_height.i = getelementptr inbounds %struct.InputParameters* %71, i64 0, i32 17, !dbg !2014
  %72 = load i32* %img_height.i, align 4, !dbg !2014, !tbaa !1132
  %auto_crop_bottom.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 166, !dbg !2014
  %73 = load i32* %auto_crop_bottom.i, align 4, !dbg !2014, !tbaa !1132
  %add.i = add nsw i32 %73, %72, !dbg !2014
  %height.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 15, !dbg !2014
  store i32 %add.i, i32* %height.i, align 4, !dbg !2014, !tbaa !1132
  %height_cr_frame.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 17, !dbg !2015
  %74 = load i32* %height_cr_frame.i, align 4, !dbg !2015, !tbaa !1132
  %height_cr.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 16, !dbg !2015
  store i32 %74, i32* %height_cr.i, align 4, !dbg !2015, !tbaa !1132
  %width.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 13, !dbg !2016
  %75 = load i32* %width.i, align 4, !dbg !2016, !tbaa !1132
  %mul.i = mul nsw i32 %75, %add.i, !dbg !2016
  %div3.i = sdiv i32 %mul.i, 256, !dbg !2016
  %total_number_mb.i = getelementptr inbounds %struct.ImageParameters* %64, i64 0, i32 4, !dbg !2016
  store i32 %div3.i, i32* %total_number_mb.i, align 4, !dbg !2016, !tbaa !1132
  tail call void (...)* @combine_field() #7, !dbg !2017
  %76 = load i16*** @imgY_org_frm, align 8, !dbg !2018, !tbaa !1126
  store i16** %76, i16*** @imgY_org, align 8, !dbg !2018, !tbaa !1126
  %77 = load i16**** @imgUV_org_frm, align 8, !dbg !2019, !tbaa !1126
  store i16*** %77, i16**** @imgUV_org, align 8, !dbg !2019, !tbaa !1126
  tail call void @find_distortion() #7, !dbg !2020
  %78 = load %struct.SNRParameters** @snr, align 8, !dbg !2021, !tbaa !1126
  %snr_y.i = getelementptr inbounds %struct.SNRParameters* %78, i64 0, i32 0, !dbg !2021
  %79 = load float* %snr_y.i, align 4, !dbg !2021, !tbaa !1197
  store float %79, float* %distortion_y, align 4, !dbg !2021, !tbaa !1197
  %snr_u.i = getelementptr inbounds %struct.SNRParameters* %78, i64 0, i32 1, !dbg !2022
  %80 = load float* %snr_u.i, align 4, !dbg !2022, !tbaa !1197
  store float %80, float* %distortion_u, align 4, !dbg !2022, !tbaa !1197
  %snr_v.i = getelementptr inbounds %struct.SNRParameters* %78, i64 0, i32 2, !dbg !2023
  %81 = load float* %snr_v.i, align 4, !dbg !2023, !tbaa !1197
  store float %81, float* %distortion_v, align 4, !dbg !2023, !tbaa !1197
  ret void, !dbg !2024
}

; Function Attrs: optsize
declare void @rc_init_pict(i32, i32, i32) #3

; Function Attrs: optsize
declare i32 @updateQuantizationParameter(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @frame_picture(%struct.Picture* %frame, i32 %rd_pass) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.Picture* %frame}, i64 0, metadata !291), !dbg !2025
  tail call void @llvm.dbg.value(metadata !{i32 %rd_pass}, i64 0, metadata !292), !dbg !2025
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !2026, !tbaa !1126
  %structure = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 7, !dbg !2026
  store i32 0, i32* %structure, align 4, !dbg !2026, !tbaa !1132
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 111, !dbg !2027
  %1 = load i32* %FrameSizeInMbs, align 4, !dbg !2027, !tbaa !1132
  %PicSizeInMbs = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 110, !dbg !2027
  store i32 %1, i32* %PicSizeInMbs, align 4, !dbg !2027, !tbaa !1132
  %cmp = icmp eq i32 %rd_pass, 2, !dbg !2028
  br i1 %cmp, label %if.then, label %if.else, !dbg !2028

if.then:                                          ; preds = %entry
  %width = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !2029
  %2 = load i32* %width, align 4, !dbg !2029, !tbaa !1132
  %height = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !2029
  %3 = load i32* %height, align 4, !dbg !2029, !tbaa !1132
  %width_cr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 14, !dbg !2029
  %4 = load i32* %width_cr, align 4, !dbg !2029, !tbaa !1132
  %height_cr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 16, !dbg !2029
  %5 = load i32* %height_cr, align 4, !dbg !2029, !tbaa !1132
  %call = tail call %struct.storable_picture* @alloc_storable_picture(i32 0, i32 %2, i32 %3, i32 %4, i32 %5) #7, !dbg !2029
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_frame_picture3, align 8, !dbg !2029, !tbaa !1126
  %6 = load %struct.ImageParameters** @img, align 8, !dbg !2031, !tbaa !1126
  %framepoc = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 103, !dbg !2031
  %7 = load i32* %framepoc, align 4, !dbg !2031, !tbaa !1132
  %poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 1, !dbg !2031
  store i32 %7, i32* %poc, align 4, !dbg !2031, !tbaa !1132
  %ThisPOC = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 104, !dbg !2031
  store i32 %7, i32* %ThisPOC, align 4, !dbg !2031, !tbaa !1132
  %toppoc = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 101, !dbg !2032
  %8 = load i32* %toppoc, align 4, !dbg !2032, !tbaa !1132
  %top_poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 2, !dbg !2032
  store i32 %8, i32* %top_poc, align 4, !dbg !2032, !tbaa !1132
  %bottompoc = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 102, !dbg !2033
  %9 = load i32* %bottompoc, align 4, !dbg !2033, !tbaa !1132
  %bottom_poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 3, !dbg !2033
  store i32 %9, i32* %bottom_poc, align 4, !dbg !2033, !tbaa !1132
  %10 = load i32* %framepoc, align 4, !dbg !2034, !tbaa !1132
  %frame_poc = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 4, !dbg !2034
  store i32 %10, i32* %frame_poc, align 4, !dbg !2034, !tbaa !1132
  %frame_num = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 105, !dbg !2035
  %11 = load i32* %frame_num, align 4, !dbg !2035, !tbaa !1132
  %pic_num = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 11, !dbg !2035
  store i32 %11, i32* %pic_num, align 4, !dbg !2035, !tbaa !1132
  %12 = load i32* %frame_num, align 4, !dbg !2036, !tbaa !1132
  %frame_num4 = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 10, !dbg !2036
  store i32 %12, i32* %frame_num4, align 4, !dbg !2036, !tbaa !1132
  %coded_frame = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 23, !dbg !2037
  store i32 1, i32* %coded_frame, align 4, !dbg !2037, !tbaa !1132
  %13 = load %struct.InputParameters** @input, align 8, !dbg !2038, !tbaa !1126
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 92, !dbg !2038
  %14 = load i32* %MbInterlace, align 4, !dbg !2038, !tbaa !1132
  %cmp5 = icmp ne i32 %14, 0, !dbg !2038
  %conv = zext i1 %cmp5 to i32, !dbg !2038
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 90, !dbg !2038
  store i32 %conv, i32* %MbaffFrameFlag, align 4, !dbg !2038, !tbaa !1132
  %MbaffFrameFlag6 = getelementptr inbounds %struct.storable_picture* %call, i64 0, i32 24, !dbg !2038
  store i32 %conv, i32* %MbaffFrameFlag6, align 4, !dbg !2038, !tbaa !1132
  store %struct.storable_picture* %call, %struct.storable_picture** @enc_picture, align 8, !dbg !2039, !tbaa !1126
  tail call void @copy_params() #8, !dbg !2040
  br label %if.end61, !dbg !2041

if.else:                                          ; preds = %entry
  %cmp7 = icmp eq i32 %rd_pass, 1, !dbg !2042
  %width11 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 13, !dbg !2043
  %15 = load i32* %width11, align 4, !dbg !2043, !tbaa !1132
  %height12 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 15, !dbg !2043
  %16 = load i32* %height12, align 4, !dbg !2043, !tbaa !1132
  %width_cr13 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 14, !dbg !2043
  %17 = load i32* %width_cr13, align 4, !dbg !2043, !tbaa !1132
  %height_cr14 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 16, !dbg !2043
  %18 = load i32* %height_cr14, align 4, !dbg !2043, !tbaa !1132
  %call15 = tail call %struct.storable_picture* @alloc_storable_picture(i32 0, i32 %15, i32 %16, i32 %17, i32 %18) #7, !dbg !2043
  br i1 %cmp7, label %if.then9, label %if.else35, !dbg !2042

if.then9:                                         ; preds = %if.else
  store %struct.storable_picture* %call15, %struct.storable_picture** @enc_frame_picture2, align 8, !dbg !2043, !tbaa !1126
  %19 = load %struct.ImageParameters** @img, align 8, !dbg !2045, !tbaa !1126
  %framepoc16 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 103, !dbg !2045
  %20 = load i32* %framepoc16, align 4, !dbg !2045, !tbaa !1132
  %poc17 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 1, !dbg !2045
  store i32 %20, i32* %poc17, align 4, !dbg !2045, !tbaa !1132
  %ThisPOC18 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 104, !dbg !2045
  store i32 %20, i32* %ThisPOC18, align 4, !dbg !2045, !tbaa !1132
  %toppoc19 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 101, !dbg !2046
  %21 = load i32* %toppoc19, align 4, !dbg !2046, !tbaa !1132
  %top_poc20 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 2, !dbg !2046
  store i32 %21, i32* %top_poc20, align 4, !dbg !2046, !tbaa !1132
  %bottompoc21 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 102, !dbg !2047
  %22 = load i32* %bottompoc21, align 4, !dbg !2047, !tbaa !1132
  %bottom_poc22 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 3, !dbg !2047
  store i32 %22, i32* %bottom_poc22, align 4, !dbg !2047, !tbaa !1132
  %23 = load i32* %framepoc16, align 4, !dbg !2048, !tbaa !1132
  %frame_poc24 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 4, !dbg !2048
  store i32 %23, i32* %frame_poc24, align 4, !dbg !2048, !tbaa !1132
  %frame_num25 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 105, !dbg !2049
  %24 = load i32* %frame_num25, align 4, !dbg !2049, !tbaa !1132
  %pic_num26 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 11, !dbg !2049
  store i32 %24, i32* %pic_num26, align 4, !dbg !2049, !tbaa !1132
  %25 = load i32* %frame_num25, align 4, !dbg !2050, !tbaa !1132
  %frame_num28 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 10, !dbg !2050
  store i32 %25, i32* %frame_num28, align 4, !dbg !2050, !tbaa !1132
  %coded_frame29 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 23, !dbg !2051
  store i32 1, i32* %coded_frame29, align 4, !dbg !2051, !tbaa !1132
  %26 = load %struct.InputParameters** @input, align 8, !dbg !2052, !tbaa !1126
  %MbInterlace30 = getelementptr inbounds %struct.InputParameters* %26, i64 0, i32 92, !dbg !2052
  %27 = load i32* %MbInterlace30, align 4, !dbg !2052, !tbaa !1132
  %cmp31 = icmp ne i32 %27, 0, !dbg !2052
  %conv32 = zext i1 %cmp31 to i32, !dbg !2052
  %MbaffFrameFlag33 = getelementptr inbounds %struct.ImageParameters* %19, i64 0, i32 90, !dbg !2052
  store i32 %conv32, i32* %MbaffFrameFlag33, align 4, !dbg !2052, !tbaa !1132
  %MbaffFrameFlag34 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 24, !dbg !2052
  store i32 %conv32, i32* %MbaffFrameFlag34, align 4, !dbg !2052, !tbaa !1132
  store %struct.storable_picture* %call15, %struct.storable_picture** @enc_picture, align 8, !dbg !2053, !tbaa !1126
  tail call void @copy_params() #8, !dbg !2054
  br label %if.end61, !dbg !2055

if.else35:                                        ; preds = %if.else
  store %struct.storable_picture* %call15, %struct.storable_picture** @enc_frame_picture, align 8, !dbg !2056, !tbaa !1126
  %28 = load %struct.ImageParameters** @img, align 8, !dbg !2058, !tbaa !1126
  %framepoc42 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 103, !dbg !2058
  %29 = load i32* %framepoc42, align 4, !dbg !2058, !tbaa !1132
  %poc43 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 1, !dbg !2058
  store i32 %29, i32* %poc43, align 4, !dbg !2058, !tbaa !1132
  %ThisPOC44 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 104, !dbg !2058
  store i32 %29, i32* %ThisPOC44, align 4, !dbg !2058, !tbaa !1132
  %toppoc45 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 101, !dbg !2059
  %30 = load i32* %toppoc45, align 4, !dbg !2059, !tbaa !1132
  %top_poc46 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 2, !dbg !2059
  store i32 %30, i32* %top_poc46, align 4, !dbg !2059, !tbaa !1132
  %bottompoc47 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 102, !dbg !2060
  %31 = load i32* %bottompoc47, align 4, !dbg !2060, !tbaa !1132
  %bottom_poc48 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 3, !dbg !2060
  store i32 %31, i32* %bottom_poc48, align 4, !dbg !2060, !tbaa !1132
  %32 = load i32* %framepoc42, align 4, !dbg !2061, !tbaa !1132
  %frame_poc50 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 4, !dbg !2061
  store i32 %32, i32* %frame_poc50, align 4, !dbg !2061, !tbaa !1132
  %frame_num51 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 105, !dbg !2062
  %33 = load i32* %frame_num51, align 4, !dbg !2062, !tbaa !1132
  %pic_num52 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 11, !dbg !2062
  store i32 %33, i32* %pic_num52, align 4, !dbg !2062, !tbaa !1132
  %34 = load i32* %frame_num51, align 4, !dbg !2063, !tbaa !1132
  %frame_num54 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 10, !dbg !2063
  store i32 %34, i32* %frame_num54, align 4, !dbg !2063, !tbaa !1132
  %coded_frame55 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 23, !dbg !2064
  store i32 1, i32* %coded_frame55, align 4, !dbg !2064, !tbaa !1132
  %35 = load %struct.InputParameters** @input, align 8, !dbg !2065, !tbaa !1126
  %MbInterlace56 = getelementptr inbounds %struct.InputParameters* %35, i64 0, i32 92, !dbg !2065
  %36 = load i32* %MbInterlace56, align 4, !dbg !2065, !tbaa !1132
  %cmp57 = icmp ne i32 %36, 0, !dbg !2065
  %conv58 = zext i1 %cmp57 to i32, !dbg !2065
  %MbaffFrameFlag59 = getelementptr inbounds %struct.ImageParameters* %28, i64 0, i32 90, !dbg !2065
  store i32 %conv58, i32* %MbaffFrameFlag59, align 4, !dbg !2065, !tbaa !1132
  %MbaffFrameFlag60 = getelementptr inbounds %struct.storable_picture* %call15, i64 0, i32 24, !dbg !2065
  store i32 %conv58, i32* %MbaffFrameFlag60, align 4, !dbg !2065, !tbaa !1132
  store %struct.storable_picture* %call15, %struct.storable_picture** @enc_picture, align 8, !dbg !2066, !tbaa !1126
  tail call void @copy_params() #8, !dbg !2067
  br label %if.end61

if.end61:                                         ; preds = %if.then9, %if.else35, %if.then
  %37 = load %struct.StatParameters** @stats, align 8, !dbg !2068, !tbaa !1126
  %em_prev_bits_frm = getelementptr inbounds %struct.StatParameters* %37, i64 0, i32 29, !dbg !2068
  store i32 0, i32* %em_prev_bits_frm, align 4, !dbg !2068, !tbaa !1132
  %em_prev_bits = getelementptr inbounds %struct.StatParameters* %37, i64 0, i32 31, !dbg !2069
  store i32* %em_prev_bits_frm, i32** %em_prev_bits, align 8, !dbg !2069, !tbaa !1126
  %38 = load %struct.ImageParameters** @img, align 8, !dbg !2070, !tbaa !1126
  %fld_flag = getelementptr inbounds %struct.ImageParameters* %38, i64 0, i32 57, !dbg !2070
  store i32 0, i32* %fld_flag, align 4, !dbg !2070, !tbaa !1132
  tail call void @code_a_picture(%struct.Picture* %frame) #8, !dbg !2071
  %39 = load %struct.ImageParameters** @img, align 8, !dbg !2072, !tbaa !1126
  %currentSlice = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 50, !dbg !2072
  %40 = load %struct.Slice** %currentSlice, align 8, !dbg !2072, !tbaa !1126
  %partArr = getelementptr inbounds %struct.Slice* %40, i64 0, i32 6, !dbg !2072
  %41 = load %struct.datapartition** %partArr, align 8, !dbg !2072, !tbaa !1126
  %bitstream = getelementptr inbounds %struct.datapartition* %41, i64 0, i32 0, !dbg !2072
  %42 = load %struct.Bitstream** %bitstream, align 8, !dbg !2072, !tbaa !1126
  %byte_pos = getelementptr inbounds %struct.Bitstream* %42, i64 0, i32 0, !dbg !2072
  %43 = load i32* %byte_pos, align 4, !dbg !2072, !tbaa !1132
  %mul = shl nsw i32 %43, 3, !dbg !2072
  %bits_per_picture = getelementptr inbounds %struct.Picture* %frame, i64 0, i32 3, !dbg !2072
  store i32 %mul, i32* %bits_per_picture, align 4, !dbg !2072, !tbaa !1132
  %structure63 = getelementptr inbounds %struct.ImageParameters* %39, i64 0, i32 7, !dbg !2073
  %44 = load i32* %structure63, align 4, !dbg !2073, !tbaa !1132
  %cmp64 = icmp eq i32 %44, 0, !dbg !2073
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !2073

if.then66:                                        ; preds = %if.end61
  tail call void @find_distortion() #8, !dbg !2074
  %45 = load %struct.SNRParameters** @snr, align 8, !dbg !2076, !tbaa !1126
  %snr_y = getelementptr inbounds %struct.SNRParameters* %45, i64 0, i32 0, !dbg !2076
  %46 = load float* %snr_y, align 4, !dbg !2076, !tbaa !1197
  %distortion_y = getelementptr inbounds %struct.Picture* %frame, i64 0, i32 4, !dbg !2076
  store float %46, float* %distortion_y, align 4, !dbg !2076, !tbaa !1197
  %snr_u = getelementptr inbounds %struct.SNRParameters* %45, i64 0, i32 1, !dbg !2077
  %47 = load float* %snr_u, align 4, !dbg !2077, !tbaa !1197
  %distortion_u = getelementptr inbounds %struct.Picture* %frame, i64 0, i32 5, !dbg !2077
  store float %47, float* %distortion_u, align 4, !dbg !2077, !tbaa !1197
  %snr_v = getelementptr inbounds %struct.SNRParameters* %45, i64 0, i32 2, !dbg !2078
  %48 = load float* %snr_v, align 4, !dbg !2078, !tbaa !1197
  %distortion_v = getelementptr inbounds %struct.Picture* %frame, i64 0, i32 6, !dbg !2078
  store float %48, float* %distortion_v, align 4, !dbg !2078, !tbaa !1197
  br label %if.end67, !dbg !2079

if.end67:                                         ; preds = %if.then66, %if.end61
  ret void, !dbg !2080
}

; Function Attrs: optsize
declare void @update_field_frame_contexts(i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @writeout_picture(%struct.Picture* %pic) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !2081, !tbaa !1126
  %currentPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 49, !dbg !2081
  store %struct.Picture* %pic, %struct.Picture** %currentPicture, align 8, !dbg !2081, !tbaa !1126
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !680), !dbg !2082
  %no_slices = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 0, !dbg !2082
  %1 = load i32* %no_slices, align 4, !dbg !2082, !tbaa !1132
  %cmp3 = icmp sgt i32 %1, 0, !dbg !2082
  br i1 %cmp3, label %for.body, label %for.end13, !dbg !2082

for.body:                                         ; preds = %entry, %for.inc11
  %2 = phi i32 [ %33, %for.inc11 ], [ %1, %entry ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc11 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.Picture* %pic, i64 0, i32 2, i64 %indvars.iv7, !dbg !2084
  %3 = load %struct.Slice** %arrayidx, align 8, !dbg !2084, !tbaa !1126
  tail call void @llvm.dbg.value(metadata !{%struct.Slice* %3}, i64 0, metadata !681), !dbg !2084
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !679), !dbg !2086
  %max_part_nr = getelementptr inbounds %struct.Slice* %3, i64 0, i32 4, !dbg !2086
  %4 = load i32* %max_part_nr, align 4, !dbg !2086, !tbaa !1132
  %cmp21 = icmp sgt i32 %4, 0, !dbg !2086
  br i1 %cmp21, label %for.body3.lr.ph, label %for.inc11, !dbg !2086

for.body3.lr.ph:                                  ; preds = %for.body
  %partArr = getelementptr inbounds %struct.Slice* %3, i64 0, i32 6, !dbg !2088
  br label %for.body3, !dbg !2086

for.body3:                                        ; preds = %for.body3.lr.ph, %writeUnit.exit
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %writeUnit.exit ]
  %5 = load %struct.datapartition** %partArr, align 8, !dbg !2088, !tbaa !1126
  %bitstream = getelementptr inbounds %struct.datapartition* %5, i64 %indvars.iv, i32 0, !dbg !2088
  %6 = load %struct.Bitstream** %bitstream, align 8, !dbg !2088, !tbaa !1126
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %6}, i64 0, metadata !678), !dbg !2088
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 1, !dbg !2090
  %7 = load i32* %bits_to_go, align 4, !dbg !2090, !tbaa !1132
  %cmp6 = icmp eq i32 %7, 8, !dbg !2090
  br i1 %cmp6, label %cond.end.i, label %cond.false, !dbg !2090

cond.false:                                       ; preds = %for.body3
  tail call void @__assert_fail(i8* getelementptr inbounds ([28 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i32 694, i8* getelementptr inbounds ([32 x i8]* @__PRETTY_FUNCTION__.writeout_picture, i64 0, i64 0)) #9, !dbg !2090
  unreachable, !dbg !2090

cond.end.i:                                       ; preds = %for.body3
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %6}, i64 0, metadata !2091) #1, !dbg !2093
  tail call void @llvm.dbg.value(metadata !2094, i64 0, metadata !2095) #1, !dbg !2093
  %8 = load %struct.ImageParameters** @img, align 8, !dbg !2096, !tbaa !1126
  %width.i = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 13, !dbg !2096
  %9 = load i32* %width.i, align 4, !dbg !2096, !tbaa !1132
  %height.i = getelementptr inbounds %struct.ImageParameters* %8, i64 0, i32 15, !dbg !2096
  %10 = load i32* %height.i, align 4, !dbg !2096, !tbaa !1132
  %mul.i = shl i32 %9, 2, !dbg !2096
  %mul1.i = mul i32 %mul.i, %10, !dbg !2096
  %call.i = tail call %struct.NALU_t* (i32, ...)* bitcast (%struct.NALU_t* (...)* @AllocNALU to %struct.NALU_t* (i32, ...)*)(i32 %mul1.i) #7, !dbg !2096
  tail call void @llvm.dbg.value(metadata !{%struct.NALU_t* %call.i}, i64 0, metadata !2097) #1, !dbg !2096
  %11 = load %struct.ImageParameters** @img, align 8, !dbg !2098, !tbaa !1126
  %current_mb_nr.i = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 3, !dbg !2098
  %12 = load i32* %current_mb_nr.i, align 4, !dbg !2098, !tbaa !1132
  %cmp2.i = icmp eq i32 %12, 0, !dbg !2098
  %add.i = select i1 %cmp2.i, i32 5, i32 4, !dbg !2098
  %startcodeprefix_len.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 0, !dbg !2098
  store i32 %add.i, i32* %startcodeprefix_len.i, align 4, !dbg !2098, !tbaa !1132
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 0, !dbg !2099
  %13 = load i32* %byte_pos.i, align 4, !dbg !2099, !tbaa !1132
  %add3.i = add nsw i32 %13, 1, !dbg !2099
  %len.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 1, !dbg !2099
  store i32 %add3.i, i32* %len.i, align 4, !dbg !2099, !tbaa !1132
  %buf.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 6, !dbg !2100
  %14 = load i8** %buf.i, align 8, !dbg !2100, !tbaa !1126
  %arrayidx.i = getelementptr inbounds i8* %14, i64 1, !dbg !2100
  %streamBuffer.i = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 9, !dbg !2100
  %15 = load i8** %streamBuffer.i, align 8, !dbg !2100, !tbaa !1126
  %conv.i = zext i32 %13 to i64, !dbg !2100
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx.i, i8* %15, i64 %conv.i, i32 1, i1 false) #1, !dbg !2100
  %16 = load %struct.ImageParameters** @img, align 8, !dbg !2101, !tbaa !1126
  %currentPicture.i = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 49, !dbg !2101
  %17 = load %struct.Picture** %currentPicture.i, align 8, !dbg !2101, !tbaa !1126
  %idr_flag.i = getelementptr inbounds %struct.Picture* %17, i64 0, i32 1, !dbg !2101
  %18 = load i32* %idr_flag.i, align 4, !dbg !2101, !tbaa !1132
  %tobool.i = icmp eq i32 %18, 0, !dbg !2101
  br i1 %tobool.i, label %if.else.i, label %if.then.i, !dbg !2101

if.then.i:                                        ; preds = %cond.end.i
  %nal_unit_type.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 3, !dbg !2102
  store i32 5, i32* %nal_unit_type.i, align 4, !dbg !2102, !tbaa !1132
  %nal_reference_idc.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 4, !dbg !2104
  store i32 3, i32* %nal_reference_idc.i, align 4, !dbg !2104, !tbaa !1132
  br label %writeUnit.exit, !dbg !2105

if.else.i:                                        ; preds = %cond.end.i
  %type.i = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 6, !dbg !2106
  %19 = load i32* %type.i, align 4, !dbg !2106, !tbaa !1132
  %cmp5.i = icmp eq i32 %19, 1, !dbg !2106
  %20 = load %struct.InputParameters** @input, align 8, !dbg !2107, !tbaa !1126
  %partition_mode.i = getelementptr inbounds %struct.InputParameters* %20, i64 0, i32 61, !dbg !2107
  %21 = load i32* %partition_mode.i, align 4, !dbg !2107, !tbaa !1132
  %cmp8.i = icmp eq i32 %21, 0, !dbg !2107
  br i1 %cmp5.i, label %if.then7.i, label %if.else23.i, !dbg !2106

if.then7.i:                                       ; preds = %if.else.i
  br i1 %cmp8.i, label %if.then10.i, label %if.else12.i, !dbg !2107

if.then10.i:                                      ; preds = %if.then7.i
  %nal_unit_type11.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 3, !dbg !2109
  store i32 1, i32* %nal_unit_type11.i, align 4, !dbg !2109, !tbaa !1132
  br label %if.end.i, !dbg !2111

if.else12.i:                                      ; preds = %if.then7.i
  %22 = add nsw i64 %indvars.iv, 2, !dbg !2112
  %nal_unit_type14.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 3, !dbg !2112
  %23 = trunc i64 %22 to i32, !dbg !2112
  store i32 %23, i32* %nal_unit_type14.i, align 4, !dbg !2112, !tbaa !1132
  br label %if.end.i

if.end.i:                                         ; preds = %if.else12.i, %if.then10.i
  %nal_reference_idc15.i = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 113, !dbg !2114
  %24 = load i32* %nal_reference_idc15.i, align 4, !dbg !2114, !tbaa !1132
  %cmp16.i = icmp eq i32 %24, 0, !dbg !2114
  %nal_reference_idc19.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 4, !dbg !2115
  br i1 %cmp16.i, label %if.else20.i, label %if.then18.i, !dbg !2114

if.then18.i:                                      ; preds = %if.end.i
  store i32 2, i32* %nal_reference_idc19.i, align 4, !dbg !2115, !tbaa !1132
  br label %writeUnit.exit, !dbg !2117

if.else20.i:                                      ; preds = %if.end.i
  store i32 0, i32* %nal_reference_idc19.i, align 4, !dbg !2118, !tbaa !1132
  br label %writeUnit.exit

if.else23.i:                                      ; preds = %if.else.i
  br i1 %cmp8.i, label %if.then27.i, label %if.else29.i, !dbg !2120

if.then27.i:                                      ; preds = %if.else23.i
  %nal_unit_type28.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 3, !dbg !2122
  store i32 1, i32* %nal_unit_type28.i, align 4, !dbg !2122, !tbaa !1132
  br label %if.end32.i, !dbg !2124

if.else29.i:                                      ; preds = %if.else23.i
  %25 = add nsw i64 %indvars.iv, 2, !dbg !2125
  %nal_unit_type31.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 3, !dbg !2125
  %26 = trunc i64 %25 to i32, !dbg !2125
  store i32 %26, i32* %nal_unit_type31.i, align 4, !dbg !2125, !tbaa !1132
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else29.i, %if.then27.i
  %nal_reference_idc33.i = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 113, !dbg !2127
  %27 = load i32* %nal_reference_idc33.i, align 4, !dbg !2127, !tbaa !1132
  %cmp34.i = icmp eq i32 %27, 0, !dbg !2127
  %nal_reference_idc37.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 4, !dbg !2128
  br i1 %cmp34.i, label %if.else38.i, label %if.then36.i, !dbg !2127

if.then36.i:                                      ; preds = %if.end32.i
  store i32 2, i32* %nal_reference_idc37.i, align 4, !dbg !2128, !tbaa !1132
  br label %writeUnit.exit, !dbg !2130

if.else38.i:                                      ; preds = %if.end32.i
  store i32 0, i32* %nal_reference_idc37.i, align 4, !dbg !2131, !tbaa !1132
  br label %writeUnit.exit

writeUnit.exit:                                   ; preds = %if.then.i, %if.then18.i, %if.else20.i, %if.then36.i, %if.else38.i
  %forbidden_bit.i = getelementptr inbounds %struct.NALU_t* %call.i, i64 0, i32 5, !dbg !2133
  store i32 0, i32* %forbidden_bit.i, align 4, !dbg !2133, !tbaa !1132
  %28 = load i32 (%struct.NALU_t*)** @WriteNALU, align 8, !dbg !2134, !tbaa !1126
  %call43.i = tail call i32 %28(%struct.NALU_t* %call.i) #7, !dbg !2134
  %29 = load %struct.StatParameters** @stats, align 8, !dbg !2134, !tbaa !1126
  %bit_ctr.i = getelementptr inbounds %struct.StatParameters* %29, i64 0, i32 4, !dbg !2134
  %30 = load i32* %bit_ctr.i, align 4, !dbg !2134, !tbaa !1132
  %add44.i = add nsw i32 %30, %call43.i, !dbg !2134
  store i32 %add44.i, i32* %bit_ctr.i, align 4, !dbg !2134, !tbaa !1132
  tail call void @FreeNALU(%struct.NALU_t* %call.i) #7, !dbg !2135
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2086
  %31 = load i32* %max_part_nr, align 4, !dbg !2086, !tbaa !1132
  %32 = trunc i64 %indvars.iv.next to i32, !dbg !2086
  %cmp2 = icmp slt i32 %32, %31, !dbg !2086
  br i1 %cmp2, label %for.body3, label %for.cond1.for.inc11_crit_edge, !dbg !2086

for.cond1.for.inc11_crit_edge:                    ; preds = %writeUnit.exit
  %.pre = load i32* %no_slices, align 4, !dbg !2082, !tbaa !1132
  br label %for.inc11, !dbg !2086

for.inc11:                                        ; preds = %for.cond1.for.inc11_crit_edge, %for.body
  %33 = phi i32 [ %.pre, %for.cond1.for.inc11_crit_edge ], [ %2, %for.body ], !dbg !2082
  %indvars.iv.next8 = add i64 %indvars.iv7, 1, !dbg !2082
  %34 = trunc i64 %indvars.iv.next8 to i32, !dbg !2082
  %cmp = icmp slt i32 %34, %33, !dbg !2082
  br i1 %cmp, label %for.body, label %for.end13, !dbg !2082

for.end13:                                        ; preds = %for.inc11, %entry
  ret void
}

; Function Attrs: optsize
declare void @free_slice_list(%struct.Picture*) #3

; Function Attrs: optsize
declare void @rc_update_pict_frame(i32) #3

; Function Attrs: optsize
declare void @store_picture_in_dpb(%struct.storable_picture*) #3

; Function Attrs: optsize
declare void @free_storable_picture(%struct.storable_picture*) #3

; Function Attrs: optsize
declare void @replace_top_pic_with_frame(%struct.storable_picture*) #3

; Function Attrs: optsize
declare void @error(i8*, i32) #3

; Function Attrs: optsize
declare void @rc_update_pict(i32) #3

; Function Attrs: optsize
declare void @updateRCModel(...) #3

; Function Attrs: nounwind optsize uwtable
define void @copy_params() #0 {
entry:
  %0 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !2136, !tbaa !1126
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 25, !dbg !2136
  %1 = load i32* %frame_mbs_only_flag, align 4, !dbg !2136, !tbaa !1127
  %2 = load %struct.storable_picture** @enc_picture, align 8, !dbg !2136, !tbaa !1126
  %frame_mbs_only_flag1 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 42, !dbg !2136
  store i32 %1, i32* %frame_mbs_only_flag1, align 4, !dbg !2136, !tbaa !1132
  %frame_cropping_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 28, !dbg !2137
  %3 = load i32* %frame_cropping_flag, align 4, !dbg !2137, !tbaa !1127
  %frame_cropping_flag2 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 43, !dbg !2137
  store i32 %3, i32* %frame_cropping_flag2, align 4, !dbg !2137, !tbaa !1132
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 8, !dbg !2138
  %4 = load i32* %chroma_format_idc, align 4, !dbg !2138, !tbaa !1132
  %chroma_format_idc3 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 41, !dbg !2138
  store i32 %4, i32* %chroma_format_idc3, align 4, !dbg !2138, !tbaa !1132
  %5 = load i32* %frame_cropping_flag, align 4, !dbg !2139, !tbaa !1127
  %tobool = icmp eq i32 %5, 0, !dbg !2139
  br i1 %tobool, label %if.else, label %if.then, !dbg !2139

if.then:                                          ; preds = %entry
  %frame_cropping_rect_left_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 29, !dbg !2140
  %6 = load i32* %frame_cropping_rect_left_offset, align 4, !dbg !2140, !tbaa !1132
  %frame_cropping_rect_left_offset5 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 44, !dbg !2140
  store i32 %6, i32* %frame_cropping_rect_left_offset5, align 4, !dbg !2140, !tbaa !1132
  %frame_cropping_rect_right_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 30, !dbg !2142
  %7 = load i32* %frame_cropping_rect_right_offset, align 4, !dbg !2142, !tbaa !1132
  %frame_cropping_rect_right_offset6 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 45, !dbg !2142
  store i32 %7, i32* %frame_cropping_rect_right_offset6, align 4, !dbg !2142, !tbaa !1132
  %frame_cropping_rect_top_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 31, !dbg !2143
  %8 = load i32* %frame_cropping_rect_top_offset, align 4, !dbg !2143, !tbaa !1132
  %frame_cropping_rect_top_offset7 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 46, !dbg !2143
  store i32 %8, i32* %frame_cropping_rect_top_offset7, align 4, !dbg !2143, !tbaa !1132
  %frame_cropping_rect_bottom_offset = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %0, i64 0, i32 32, !dbg !2144
  %9 = load i32* %frame_cropping_rect_bottom_offset, align 4, !dbg !2144, !tbaa !1132
  %frame_cropping_rect_bottom_offset8 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 47, !dbg !2144
  store i32 %9, i32* %frame_cropping_rect_bottom_offset8, align 4, !dbg !2144, !tbaa !1132
  br label %if.end, !dbg !2145

if.else:                                          ; preds = %entry
  %frame_cropping_rect_left_offset9 = getelementptr inbounds %struct.storable_picture* %2, i64 0, i32 44, !dbg !2146
  %10 = bitcast i32* %frame_cropping_rect_left_offset9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 4, i1 false), !dbg !2148
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2149
}

; Function Attrs: optsize
declare %struct.storable_picture* @alloc_storable_picture(i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare void @setbitscount(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @UnifiedOneForthPix(%struct.storable_picture* %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.storable_picture* %s}, i64 0, metadata !372), !dbg !2150
  %imgY1 = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 25, !dbg !2151
  %0 = load i16*** %imgY1, align 8, !dbg !2151, !tbaa !1126
  tail call void @llvm.dbg.value(metadata !{i16** %0}, i64 0, metadata !383), !dbg !2151
  %size_x = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 18, !dbg !2152
  %1 = load i32* %size_x, align 4, !dbg !2152, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !384), !dbg !2152
  %size_y = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 19, !dbg !2153
  %2 = load i32* %size_y, align 4, !dbg !2153, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !385), !dbg !2153
  %imgY_ups = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 28, !dbg !2154
  %3 = load i16*** %imgY_ups, align 8, !dbg !2154, !tbaa !1126
  %tobool = icmp eq i16** %3, null, !dbg !2154
  br i1 %tobool, label %lor.lhs.false, label %return, !dbg !2154

lor.lhs.false:                                    ; preds = %entry
  %imgY_11 = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 26, !dbg !2154
  %4 = load i16** %imgY_11, align 8, !dbg !2154, !tbaa !1126
  %tobool2 = icmp eq i16* %4, null, !dbg !2154
  br i1 %tobool2, label %if.end, label %return, !dbg !2154

if.end:                                           ; preds = %lor.lhs.false
  %mul = mul nsw i32 %2, %1, !dbg !2155
  %conv = sext i32 %mul to i64, !dbg !2155
  %mul5 = shl nsw i64 %conv, 1, !dbg !2155
  %call = tail call noalias i8* @malloc(i64 %mul5) #7, !dbg !2155
  %5 = bitcast i8* %call to i16*, !dbg !2155
  store i16* %5, i16** %imgY_11, align 8, !dbg !2155, !tbaa !1126
  %cmp = icmp eq i8* %call, null, !dbg !2156
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !2156

if.then9:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !2157
  %.pre = load i32* %size_y, align 4, !dbg !2158, !tbaa !1132
  %.pre1594 = load i32* %size_x, align 4, !dbg !2158, !tbaa !1132
  br label %if.end10, !dbg !2157

if.end10:                                         ; preds = %if.then9, %if.end
  %6 = phi i32 [ %.pre1594, %if.then9 ], [ %1, %if.end ]
  %7 = phi i32 [ %.pre, %if.then9 ], [ %2, %if.end ]
  %add = shl i32 %7, 2, !dbg !2158
  %mul13 = add i32 %add, 32, !dbg !2158
  %add15 = shl i32 %6, 2, !dbg !2158
  %mul16 = add i32 %add15, 32, !dbg !2158
  %call17 = tail call i32 @get_mem2Dpel(i16*** %imgY_ups, i32 %mul13, i32 %mul16) #7, !dbg !2158
  %8 = load %struct.InputParameters** @input, align 8, !dbg !2159, !tbaa !1126
  %WeightedPrediction = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 46, !dbg !2159
  %9 = load i32* %WeightedPrediction, align 4, !dbg !2159, !tbaa !1132
  %tobool18 = icmp eq i32 %9, 0, !dbg !2159
  br i1 %tobool18, label %lor.lhs.false19, label %if.then23, !dbg !2159

lor.lhs.false19:                                  ; preds = %if.end10
  %WeightedBiprediction = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 47, !dbg !2159
  %10 = load i32* %WeightedBiprediction, align 4, !dbg !2159, !tbaa !1132
  %tobool20 = icmp eq i32 %10, 0, !dbg !2159
  br i1 %tobool20, label %lor.lhs.false21, label %if.then23, !dbg !2159

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 15, !dbg !2159
  %11 = load i32* %GenerateMultiplePPS, align 4, !dbg !2159, !tbaa !1132
  %tobool22 = icmp eq i32 %11, 0, !dbg !2159
  br i1 %tobool22, label %if.end42, label %if.then23, !dbg !2159

if.then23:                                        ; preds = %lor.lhs.false21, %lor.lhs.false19, %if.end10
  %12 = load i32* %size_x, align 4, !dbg !2160, !tbaa !1132
  %13 = load i32* %size_y, align 4, !dbg !2160, !tbaa !1132
  %mul26 = mul nsw i32 %13, %12, !dbg !2160
  %conv27 = sext i32 %mul26 to i64, !dbg !2160
  %mul28 = shl nsw i64 %conv27, 1, !dbg !2160
  %call29 = tail call noalias i8* @malloc(i64 %mul28) #7, !dbg !2160
  %14 = bitcast i8* %call29 to i16*, !dbg !2160
  %imgY_11_w = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 27, !dbg !2160
  store i16* %14, i16** %imgY_11_w, align 8, !dbg !2160, !tbaa !1126
  %cmp31 = icmp eq i8* %call29, null, !dbg !2162
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !2162

if.then33:                                        ; preds = %if.then23
  tail call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !2163
  %.pre1606 = load i32* %size_y, align 4, !dbg !2164, !tbaa !1132
  %.pre1607 = load i32* %size_x, align 4, !dbg !2164, !tbaa !1132
  br label %if.end34, !dbg !2163

if.end34:                                         ; preds = %if.then33, %if.then23
  %15 = phi i32 [ %.pre1607, %if.then33 ], [ %12, %if.then23 ]
  %16 = phi i32 [ %.pre1606, %if.then33 ], [ %13, %if.then23 ]
  %imgY_ups_w = getelementptr inbounds %struct.storable_picture* %s, i64 0, i32 29, !dbg !2164
  %add36 = shl i32 %16, 2, !dbg !2164
  %mul37 = add i32 %add36, 32, !dbg !2164
  %add39 = shl i32 %15, 2, !dbg !2164
  %mul40 = add i32 %add39, 32, !dbg !2164
  %call41 = tail call i32 @get_mem2Dpel(i16*** %imgY_ups_w, i32 %mul37, i32 %mul40) #7, !dbg !2164
  br label %if.end42, !dbg !2165

if.end42:                                         ; preds = %lor.lhs.false21, %if.end34
  %17 = load i16*** %imgY_ups, align 8, !dbg !2166, !tbaa !1126
  tail call void @llvm.dbg.value(metadata !{i16** %17}, i64 0, metadata !381), !dbg !2166
  %18 = load i16** %imgY_11, align 8, !dbg !2167, !tbaa !1126
  tail call void @llvm.dbg.value(metadata !{i16* %18}, i64 0, metadata !382), !dbg !2167
  tail call void @llvm.dbg.value(metadata !2168, i64 0, metadata !375), !dbg !2169
  %19 = load i32* %size_y, align 4, !dbg !2169, !tbaa !1132
  %add461574 = add nsw i32 %19, 4, !dbg !2169
  %cmp471575 = icmp sgt i32 %add461574, -4, !dbg !2169
  br i1 %cmp471575, label %for.cond49.preheader.lr.ph, label %if.end42.for.cond339.preheader_crit_edge, !dbg !2169

if.end42.for.cond339.preheader_crit_edge:         ; preds = %if.end42
  %.pre1608 = load i32* %size_x, align 4, !dbg !2171, !tbaa !1132
  br label %for.cond339.preheader, !dbg !2169

for.cond49.preheader.lr.ph:                       ; preds = %if.end42
  %20 = load i32*** @img4Y_tmp, align 8, !dbg !2173, !tbaa !1126
  %.pre1604 = load i32* %size_x, align 4, !dbg !2177, !tbaa !1132
  br label %for.cond49.preheader, !dbg !2169

for.cond49.preheader:                             ; preds = %for.cond49.preheader.lr.ph, %for.inc336
  %21 = phi i32 [ %19, %for.cond49.preheader.lr.ph ], [ %55, %for.inc336 ]
  %22 = phi i32 [ %.pre1604, %for.cond49.preheader.lr.ph ], [ %56, %for.inc336 ], !dbg !2177
  %indvars.iv1591 = phi i64 [ -4, %for.cond49.preheader.lr.ph ], [ %indvars.iv.next1592, %for.inc336 ]
  %add511571 = add nsw i32 %22, 4, !dbg !2177
  %cmp521572 = icmp sgt i32 %add511571, -4, !dbg !2177
  br i1 %cmp521572, label %for.body54.lr.ph, label %for.cond49.preheader.for.inc336_crit_edge, !dbg !2177

for.cond49.preheader.for.inc336_crit_edge:        ; preds = %for.cond49.preheader
  %.pre1610 = trunc i64 %indvars.iv1591 to i32, !dbg !2169
  br label %for.inc336, !dbg !2177

for.body54.lr.ph:                                 ; preds = %for.cond49.preheader
  %23 = add nsw i64 %indvars.iv1591, 4, !dbg !2173
  %arrayidx325 = getelementptr inbounds i32** %20, i64 %23, !dbg !2173
  %24 = load i32** %arrayidx325, align 8, !dbg !2173, !tbaa !1126
  br label %for.body54, !dbg !2177

for.cond339.preheader:                            ; preds = %for.inc336, %if.end42.for.cond339.preheader_crit_edge
  %25 = phi i32 [ %.pre1608, %if.end42.for.cond339.preheader_crit_edge ], [ %56, %for.inc336 ]
  %26 = phi i32 [ %19, %if.end42.for.cond339.preheader_crit_edge ], [ %55, %for.inc336 ]
  %add3411567 = shl i32 %25, 1, !dbg !2171
  %mul3421568 = add i32 %add3411567, 16, !dbg !2171
  %cmp3431569 = icmp sgt i32 %mul3421568, 0, !dbg !2171
  br i1 %cmp3431569, label %for.cond346.preheader, label %for.end519, !dbg !2171

for.body54:                                       ; preds = %cond.end170, %for.body54.lr.ph
  %27 = phi i32 [ %21, %for.body54.lr.ph ], [ %.pre1609, %cond.end170 ]
  %28 = phi i32 [ %22, %for.body54.lr.ph ], [ %53, %cond.end170 ]
  %indvars.iv1585 = phi i64 [ -4, %for.body54.lr.ph ], [ %indvars.iv.next1586, %cond.end170 ]
  %29 = trunc i64 %indvars.iv1591 to i32, !dbg !2178
  %cmp56 = icmp sgt i32 %27, %29, !dbg !2178
  %sub = add nsw i32 %27, -1, !dbg !2178
  %cond = select i1 %cmp56, i32 %29, i32 %sub, !dbg !2178
  %cmp60 = icmp slt i32 %cond, 0, !dbg !2178
  %30 = trunc i64 %indvars.iv1585 to i32, !dbg !2179
  %cmp78 = icmp sgt i32 %28, %30, !dbg !2179
  %sub77 = add nsw i32 %28, -1, !dbg !2179
  %cond85 = select i1 %cmp78, i32 %30, i32 %sub77, !dbg !2179
  %cmp86 = icmp slt i32 %cond85, 0, !dbg !2179
  %31 = sext i32 %cond85 to i64, !dbg !2179
  %idxprom = select i1 %cmp86, i64 0, i64 %31, !dbg !2179
  %32 = sext i32 %cond to i64, !dbg !2179
  %idxprom102 = select i1 %cmp60, i64 0, i64 %32, !dbg !2179
  %arrayidx = getelementptr inbounds i16** %0, i64 %idxprom102, !dbg !2179
  %33 = load i16** %arrayidx, align 8, !dbg !2179, !tbaa !1126
  %arrayidx103 = getelementptr inbounds i16* %33, i64 %idxprom, !dbg !2179
  %34 = load i16* %arrayidx103, align 2, !dbg !2179, !tbaa !1148
  %conv104 = zext i16 %34 to i32, !dbg !2179
  %indvars.iv.next1586 = add i64 %indvars.iv1585, 1, !dbg !2177
  %35 = trunc i64 %indvars.iv.next1586 to i32, !dbg !2179
  %cmp108 = icmp sgt i32 %28, %35, !dbg !2179
  %cond116 = select i1 %cmp108, i32 %35, i32 %sub77, !dbg !2179
  %cmp117 = icmp slt i32 %cond116, 0, !dbg !2179
  %36 = sext i32 %cond116 to i64, !dbg !2179
  %idxprom135 = select i1 %cmp117, i64 0, i64 %36, !dbg !2179
  %arrayidx138 = getelementptr inbounds i16* %33, i64 %idxprom135, !dbg !2179
  %37 = load i16* %arrayidx138, align 2, !dbg !2179, !tbaa !1148
  %conv139 = zext i16 %37 to i32, !dbg !2179
  %add140 = add nsw i32 %conv139, %conv104, !dbg !2179
  %mul141 = mul nsw i32 %add140, 20, !dbg !2179
  %38 = add nsw i64 %indvars.iv1585, 4294967295, !dbg !2179
  %39 = trunc i64 %38 to i32, !dbg !2179
  %cmp145 = icmp sgt i32 %28, %39, !dbg !2179
  %i.0. = select i1 %cmp145, i32 %30, i32 %28, !dbg !2179
  %cmp154 = icmp slt i32 %i.0., 1, !dbg !2179
  br i1 %cmp154, label %cond.end170, label %cond.false157, !dbg !2179

cond.false157:                                    ; preds = %for.body54
  %sub165 = add nsw i32 %i.0., -1, !dbg !2179
  %phitmp1542 = sext i32 %sub165 to i64, !dbg !2179
  br label %cond.end170, !dbg !2179

cond.end170:                                      ; preds = %for.body54, %cond.false157
  %cond171 = phi i64 [ %phitmp1542, %cond.false157 ], [ 0, %for.body54 ]
  %arrayidx175 = getelementptr inbounds i16* %33, i64 %cond171, !dbg !2179
  %40 = load i16* %arrayidx175, align 2, !dbg !2179, !tbaa !1148
  %conv176 = zext i16 %40 to i32, !dbg !2179
  %41 = add nsw i64 %indvars.iv1585, 2, !dbg !2179
  %42 = trunc i64 %41 to i32, !dbg !2179
  %cmp180 = icmp sgt i32 %28, %42, !dbg !2179
  %cond188 = select i1 %cmp180, i32 %42, i32 %sub77, !dbg !2179
  %cmp189 = icmp slt i32 %cond188, 0, !dbg !2179
  %43 = sext i32 %cond188 to i64, !dbg !2179
  %idxprom207 = select i1 %cmp189, i64 0, i64 %43, !dbg !2179
  %arrayidx210 = getelementptr inbounds i16* %33, i64 %idxprom207, !dbg !2179
  %44 = load i16* %arrayidx210, align 2, !dbg !2179, !tbaa !1148
  %conv211 = zext i16 %44 to i32, !dbg !2179
  %add212 = add nsw i32 %conv211, %conv176, !dbg !2179
  %mul213 = mul nsw i32 %add212, -5, !dbg !2179
  %45 = add nsw i64 %indvars.iv1585, 4294967294, !dbg !2179
  %46 = trunc i64 %45 to i32, !dbg !2179
  %cmp218 = icmp sgt i32 %28, %46, !dbg !2179
  %cond226 = select i1 %cmp218, i32 %46, i32 %sub77, !dbg !2179
  %cmp227 = icmp slt i32 %cond226, 0, !dbg !2179
  %47 = sext i32 %cond226 to i64, !dbg !2179
  %idxprom245 = select i1 %cmp227, i64 0, i64 %47, !dbg !2179
  %arrayidx248 = getelementptr inbounds i16* %33, i64 %idxprom245, !dbg !2179
  %48 = load i16* %arrayidx248, align 2, !dbg !2179, !tbaa !1148
  %conv249 = zext i16 %48 to i32, !dbg !2179
  %49 = add nsw i64 %indvars.iv1585, 3, !dbg !2179
  %50 = trunc i64 %49 to i32, !dbg !2179
  %cmp253 = icmp sgt i32 %28, %50, !dbg !2179
  %cond261 = select i1 %cmp253, i32 %50, i32 %sub77, !dbg !2179
  %cmp262 = icmp slt i32 %cond261, 0, !dbg !2179
  %51 = sext i32 %cond261 to i64, !dbg !2179
  %idxprom280 = select i1 %cmp262, i64 0, i64 %51, !dbg !2179
  %arrayidx283 = getelementptr inbounds i16* %33, i64 %idxprom280, !dbg !2179
  %52 = load i16* %arrayidx283, align 2, !dbg !2179, !tbaa !1148
  %conv284 = zext i16 %52 to i32, !dbg !2179
  %add285 = add i32 %mul213, %mul141, !dbg !2179
  %add214 = add i32 %add285, %conv249, !dbg !2179
  %add287 = add i32 %add214, %conv284, !dbg !2179
  tail call void @llvm.dbg.value(metadata !{i32 %add287}, i64 0, metadata !373), !dbg !2179
  %mul319 = shl nuw nsw i32 %conv104, 10, !dbg !2173
  %add320 = shl i32 %30, 1, !dbg !2173
  %mul321 = add i32 %add320, 8, !dbg !2173
  %idxprom322 = sext i32 %mul321 to i64, !dbg !2173
  %arrayidx326 = getelementptr inbounds i32* %24, i64 %idxprom322, !dbg !2173
  store i32 %mul319, i32* %arrayidx326, align 4, !dbg !2173, !tbaa !1132
  %mul327 = shl nsw i32 %add287, 5, !dbg !2180
  %add330 = add i32 %add320, 9, !dbg !2180
  %idxprom331 = sext i32 %add330 to i64, !dbg !2180
  %arrayidx335 = getelementptr inbounds i32* %24, i64 %idxprom331, !dbg !2180
  store i32 %mul327, i32* %arrayidx335, align 4, !dbg !2180, !tbaa !1132
  %53 = load i32* %size_x, align 4, !dbg !2177, !tbaa !1132
  %54 = add nsw i32 %53, 3, !dbg !2177
  %cmp52 = icmp slt i32 %30, %54, !dbg !2177
  %.pre1609 = load i32* %size_y, align 4, !dbg !2178, !tbaa !1132
  br i1 %cmp52, label %for.body54, label %for.inc336, !dbg !2177

for.inc336:                                       ; preds = %cond.end170, %for.cond49.preheader.for.inc336_crit_edge
  %.pre-phi = phi i32 [ %.pre1610, %for.cond49.preheader.for.inc336_crit_edge ], [ %29, %cond.end170 ], !dbg !2169
  %55 = phi i32 [ %21, %for.cond49.preheader.for.inc336_crit_edge ], [ %.pre1609, %cond.end170 ], !dbg !2169
  %56 = phi i32 [ %22, %for.cond49.preheader.for.inc336_crit_edge ], [ %53, %cond.end170 ]
  %indvars.iv.next1592 = add i64 %indvars.iv1591, 1, !dbg !2169
  %57 = add nsw i32 %55, 3, !dbg !2169
  %cmp47 = icmp slt i32 %.pre-phi, %57, !dbg !2169
  br i1 %cmp47, label %for.cond49.preheader, label %for.cond339.preheader, !dbg !2169

for.cond346.preheader:                            ; preds = %for.cond339.preheader, %for.inc517
  %58 = phi i32 [ %92, %for.inc517 ], [ %25, %for.cond339.preheader ]
  %59 = phi i32 [ %93, %for.inc517 ], [ %26, %for.cond339.preheader ], !dbg !2181
  %indvars.iv1583 = phi i64 [ %indvars.iv.next1584, %for.inc517 ], [ 0, %for.cond339.preheader ]
  %add3481564 = add nsw i32 %59, 8, !dbg !2181
  %cmp3491565 = icmp sgt i32 %add3481564, 0, !dbg !2181
  br i1 %cmp3491565, label %for.body351.lr.ph, label %for.inc517, !dbg !2181

for.body351.lr.ph:                                ; preds = %for.cond346.preheader
  %60 = trunc i64 %indvars.iv1583 to i32, !dbg !2184
  %sub430 = shl i32 %60, 1, !dbg !2184
  %mul431 = add i32 %sub430, -16, !dbg !2184
  br label %for.body351, !dbg !2181

for.body351:                                      ; preds = %for.body351, %for.body351.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body351.lr.ph ], [ %indvars.iv.next, %for.body351 ]
  %61 = phi i32 [ %59, %for.body351.lr.ph ], [ %90, %for.body351 ]
  %sub355 = add nsw i32 %61, 7, !dbg !2186
  tail call void @llvm.dbg.value(metadata !{i32 %sub355}, i64 0, metadata !380), !dbg !2186
  %62 = load i32*** @img4Y_tmp, align 8, !dbg !2187, !tbaa !1126
  %arrayidx358 = getelementptr inbounds i32** %62, i64 %indvars.iv, !dbg !2187
  %63 = load i32** %arrayidx358, align 8, !dbg !2187, !tbaa !1126
  %arrayidx359 = getelementptr inbounds i32* %63, i64 %indvars.iv1583, !dbg !2187
  %64 = load i32* %arrayidx359, align 4, !dbg !2187, !tbaa !1132
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2181
  %65 = trunc i64 %indvars.iv.next to i32, !dbg !2187
  %cmp362 = icmp slt i32 %sub355, %65, !dbg !2187
  %sub355.add361 = select i1 %cmp362, i32 %sub355, i32 %65, !dbg !2187
  %idxprom369 = sext i32 %sub355.add361 to i64, !dbg !2187
  %arrayidx370 = getelementptr inbounds i32** %62, i64 %idxprom369, !dbg !2187
  %66 = load i32** %arrayidx370, align 8, !dbg !2187, !tbaa !1126
  %arrayidx371 = getelementptr inbounds i32* %66, i64 %indvars.iv1583, !dbg !2187
  %67 = load i32* %arrayidx371, align 4, !dbg !2187, !tbaa !1132
  %add372 = add nsw i32 %67, %64, !dbg !2187
  %mul373 = mul nsw i32 %add372, 20, !dbg !2187
  %68 = trunc i64 %indvars.iv to i32, !dbg !2187
  %cmp376 = icmp slt i32 %68, 1, !dbg !2187
  %69 = add nsw i64 %indvars.iv, -1, !dbg !2187
  %. = select i1 %cmp376, i64 0, i64 %69, !dbg !2187
  %arrayidx384 = getelementptr inbounds i32** %62, i64 %., !dbg !2187
  %70 = load i32** %arrayidx384, align 8, !dbg !2187, !tbaa !1126
  %arrayidx385 = getelementptr inbounds i32* %70, i64 %indvars.iv1583, !dbg !2187
  %71 = load i32* %arrayidx385, align 4, !dbg !2187, !tbaa !1132
  %72 = add nsw i64 %indvars.iv, 2, !dbg !2187
  %73 = trunc i64 %72 to i32, !dbg !2187
  %cmp388 = icmp slt i32 %sub355, %73, !dbg !2187
  %sub355.add387 = select i1 %cmp388, i32 %sub355, i32 %73, !dbg !2187
  %idxprom395 = sext i32 %sub355.add387 to i64, !dbg !2187
  %arrayidx396 = getelementptr inbounds i32** %62, i64 %idxprom395, !dbg !2187
  %74 = load i32** %arrayidx396, align 8, !dbg !2187, !tbaa !1126
  %arrayidx397 = getelementptr inbounds i32* %74, i64 %indvars.iv1583, !dbg !2187
  %75 = load i32* %arrayidx397, align 4, !dbg !2187, !tbaa !1132
  %add398 = add nsw i32 %75, %71, !dbg !2187
  %mul399 = mul nsw i32 %add398, -5, !dbg !2187
  %76 = add nsw i64 %indvars.iv, -2, !dbg !2187
  %77 = trunc i64 %76 to i32, !dbg !2187
  %cmp403 = icmp slt i32 %77, 0, !dbg !2187
  %cond409 = select i1 %cmp403, i64 0, i64 %76, !dbg !2187
  %arrayidx411 = getelementptr inbounds i32** %62, i64 %cond409, !dbg !2187
  %78 = load i32** %arrayidx411, align 8, !dbg !2187, !tbaa !1126
  %arrayidx412 = getelementptr inbounds i32* %78, i64 %indvars.iv1583, !dbg !2187
  %79 = load i32* %arrayidx412, align 4, !dbg !2187, !tbaa !1132
  %80 = add nsw i64 %indvars.iv, 3, !dbg !2187
  %81 = trunc i64 %80 to i32, !dbg !2187
  %cmp415 = icmp slt i32 %sub355, %81, !dbg !2187
  %sub355.add414 = select i1 %cmp415, i32 %sub355, i32 %81, !dbg !2187
  %idxprom422 = sext i32 %sub355.add414 to i64, !dbg !2187
  %arrayidx423 = getelementptr inbounds i32** %62, i64 %idxprom422, !dbg !2187
  %82 = load i32** %arrayidx423, align 8, !dbg !2187, !tbaa !1126
  %arrayidx424 = getelementptr inbounds i32* %82, i64 %indvars.iv1583, !dbg !2187
  %83 = load i32* %arrayidx424, align 4, !dbg !2187, !tbaa !1132
  %add425 = add i32 %mul399, %mul373, !dbg !2187
  %add400 = add i32 %add425, %79, !dbg !2187
  %add427 = add i32 %add400, %83, !dbg !2187
  %div = sdiv i32 %add427, 32, !dbg !2187
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !373), !dbg !2187
  %sub428 = shl i32 %68, 2, !dbg !2184
  %mul429 = add i32 %sub428, -16, !dbg !2184
  %84 = load %struct.ImageParameters** @img, align 8, !dbg !2184, !tbaa !1126
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters* %84, i64 0, i32 155, !dbg !2184
  %85 = load i32* %max_imgpel_value, align 4, !dbg !2184, !tbaa !1132
  %add436 = add nsw i32 %64, 512, !dbg !2184
  %div437 = sdiv i32 %add436, 1024, !dbg !2184
  %cmp438 = icmp slt i32 %85, %div437, !dbg !2184
  %cond450 = select i1 %cmp438, i32 %85, i32 %div437, !dbg !2184
  %cmp451 = icmp slt i32 %cond450, 0, !dbg !2184
  %86 = trunc i32 %cond450 to i16, !dbg !2184
  %conv477 = select i1 %cmp451, i16 0, i16 %86, !dbg !2184
  tail call void @PutPel_14(i16** %17, i32 %mul429, i32 %mul431, i16 zeroext %conv477) #7, !dbg !2184
  %add480 = add i32 %sub428, -14, !dbg !2188
  %87 = load %struct.ImageParameters** @img, align 8, !dbg !2188, !tbaa !1126
  %max_imgpel_value483 = getelementptr inbounds %struct.ImageParameters* %87, i64 0, i32 155, !dbg !2188
  %88 = load i32* %max_imgpel_value483, align 4, !dbg !2188, !tbaa !1132
  %add484 = add nsw i32 %div, 512, !dbg !2188
  %div485 = sdiv i32 %add484, 1024, !dbg !2188
  %cmp486 = icmp slt i32 %88, %div485, !dbg !2188
  %.div485 = select i1 %cmp486, i32 %88, i32 %div485, !dbg !2188
  %cmp495 = icmp slt i32 %.div485, 0, !dbg !2188
  %89 = trunc i32 %.div485 to i16, !dbg !2188
  %conv513 = select i1 %cmp495, i16 0, i16 %89, !dbg !2188
  tail call void @PutPel_14(i16** %17, i32 %add480, i32 %mul431, i16 zeroext %conv513) #7, !dbg !2188
  %90 = load i32* %size_y, align 4, !dbg !2181, !tbaa !1132
  %91 = add nsw i32 %90, 7, !dbg !2181
  %cmp349 = icmp slt i32 %68, %91, !dbg !2181
  br i1 %cmp349, label %for.body351, label %for.cond346.for.inc517_crit_edge, !dbg !2181

for.cond346.for.inc517_crit_edge:                 ; preds = %for.body351
  %.pre1603 = load i32* %size_x, align 4, !dbg !2171, !tbaa !1132
  br label %for.inc517, !dbg !2181

for.inc517:                                       ; preds = %for.cond346.for.inc517_crit_edge, %for.cond346.preheader
  %92 = phi i32 [ %.pre1603, %for.cond346.for.inc517_crit_edge ], [ %58, %for.cond346.preheader ], !dbg !2171
  %93 = phi i32 [ %90, %for.cond346.for.inc517_crit_edge ], [ %59, %for.cond346.preheader ]
  %indvars.iv.next1584 = add i64 %indvars.iv1583, 1, !dbg !2171
  %add341 = shl i32 %92, 1, !dbg !2171
  %mul342 = add i32 %add341, 16, !dbg !2171
  %94 = trunc i64 %indvars.iv.next1584 to i32, !dbg !2171
  %cmp343 = icmp slt i32 %94, %mul342, !dbg !2171
  br i1 %cmp343, label %for.cond346.preheader, label %for.end519, !dbg !2171

for.end519:                                       ; preds = %for.inc517, %for.cond339.preheader
  %95 = phi i32 [ %26, %for.cond339.preheader ], [ %93, %for.inc517 ]
  %.lcssa = phi i32 [ %25, %for.cond339.preheader ], [ %92, %for.inc517 ]
  %sub522 = shl i32 %.lcssa, 2, !dbg !2189
  %mul523 = add i32 %sub522, 28, !dbg !2189
  tail call void @llvm.dbg.value(metadata !{i32 %mul523}, i64 0, metadata !377), !dbg !2189
  %sub526 = shl i32 %95, 2, !dbg !2190
  %mul527 = add i32 %sub526, 28, !dbg !2190
  tail call void @llvm.dbg.value(metadata !{i32 %mul527}, i64 0, metadata !378), !dbg !2190
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !375), !dbg !2191
  %add529 = add i32 %sub526, 32, !dbg !2191
  %cmp5301562 = icmp sgt i32 %add529, 0, !dbg !2191
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !374), !dbg !2193
  br i1 %cmp5301562, label %for.cond533.preheader.lr.ph, label %for.cond654.preheader, !dbg !2191

for.cond533.preheader.lr.ph:                      ; preds = %for.end519
  %add534 = add i32 %sub522, 31, !dbg !2193
  %cmp5351560 = icmp sgt i32 %add534, 0, !dbg !2193
  %add547 = add i32 %sub522, 30, !dbg !2195
  br label %for.cond533.preheader, !dbg !2191

for.cond533.preheader:                            ; preds = %for.cond533.preheader.lr.ph, %for.inc651
  %j.21563 = phi i32 [ 0, %for.cond533.preheader.lr.ph ], [ %add652, %for.inc651 ]
  br i1 %cmp5351560, label %for.body537.lr.ph, label %for.inc651, !dbg !2193

for.body537.lr.ph:                                ; preds = %for.cond533.preheader
  %sub538 = add nsw i32 %j.21563, -16, !dbg !2197
  br label %for.body537, !dbg !2193

for.cond654.preheader:                            ; preds = %for.inc651, %for.end519
  %add655 = add i32 %sub522, 32, !dbg !2198
  %cmp6561558 = icmp sgt i32 %add655, 0, !dbg !2198
  br i1 %cmp6561558, label %for.cond659.preheader.lr.ph, label %for.end1108, !dbg !2198

for.cond659.preheader.lr.ph:                      ; preds = %for.cond654.preheader
  %add660 = add i32 %sub526, 31, !dbg !2200
  %cmp6611555 = icmp sgt i32 %add660, 0, !dbg !2200
  %add675 = add i32 %sub526, 30, !dbg !2203
  %add967 = add i32 %sub522, 30, !dbg !2206
  %96 = shl i32 %.lcssa, 2, !dbg !2198
  %97 = add i32 %96, 32, !dbg !2198
  br label %for.cond659.preheader, !dbg !2198

for.body537:                                      ; preds = %for.body537.lr.ph, %cond.end645
  %i.21561 = phi i32 [ 0, %for.body537.lr.ph ], [ %add548, %cond.end645 ]
  %sub539 = add nsw i32 %i.21561, -16, !dbg !2197
  %add540 = add nsw i32 %i.21561, -15, !dbg !2197
  %98 = load %struct.ImageParameters** @img, align 8, !dbg !2197, !tbaa !1126
  %max_imgpel_value541 = getelementptr inbounds %struct.ImageParameters* %98, i64 0, i32 155, !dbg !2197
  %99 = load i32* %max_imgpel_value541, align 4, !dbg !2197, !tbaa !1132
  %call544 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub539, i32 %2, i32 %1) #7, !dbg !2195
  %conv545 = zext i16 %call544 to i32, !dbg !2195
  %add548 = add nsw i32 %i.21561, 2, !dbg !2195
  %cmp549 = icmp slt i32 %add547, %add548, !dbg !2195
  %.sink1112 = select i1 %cmp549, i32 %mul523, i32 %i.21561, !dbg !2195
  %sub557 = add nsw i32 %.sink1112, -14, !dbg !2195
  %call558 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub557, i32 %2, i32 %1) #7, !dbg !2195
  %conv559 = zext i16 %call558 to i32, !dbg !2195
  %add560 = add i32 %conv545, 1, !dbg !2195
  %add561 = add i32 %add560, %conv559, !dbg !2195
  %div562 = lshr i32 %add561, 1, !dbg !2195
  %cmp563 = icmp slt i32 %99, %div562, !dbg !2195
  br i1 %cmp563, label %cond.end589, label %cond.end589.thread, !dbg !2195

cond.end589.thread:                               ; preds = %for.body537
  %call570 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub539, i32 %2, i32 %1) #7, !dbg !2195
  %call584 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub557, i32 %2, i32 %1) #7, !dbg !2195
  %.pre1601 = load %struct.ImageParameters** @img, align 8, !dbg !2195, !tbaa !1126
  %max_imgpel_value595.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre1601, i64 0, i32 155
  %.pre1602 = load i32* %max_imgpel_value595.phi.trans.insert, align 4, !dbg !2195, !tbaa !1132
  br label %cond.false594, !dbg !2195

cond.end589:                                      ; preds = %for.body537
  %100 = load %struct.ImageParameters** @img, align 8, !dbg !2195, !tbaa !1126
  %max_imgpel_value566 = getelementptr inbounds %struct.ImageParameters* %100, i64 0, i32 155, !dbg !2195
  %101 = load i32* %max_imgpel_value566, align 4, !dbg !2195, !tbaa !1132
  %cmp591 = icmp slt i32 %101, 0, !dbg !2195
  br i1 %cmp591, label %cond.end645, label %cond.false594, !dbg !2195

cond.false594:                                    ; preds = %cond.end589.thread, %cond.end589
  %102 = phi i32 [ %.pre1602, %cond.end589.thread ], [ %101, %cond.end589 ]
  %call598 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub539, i32 %2, i32 %1) #7, !dbg !2195
  %conv599 = zext i16 %call598 to i32, !dbg !2195
  %call612 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub557, i32 %2, i32 %1) #7, !dbg !2195
  %conv613 = zext i16 %call612 to i32, !dbg !2195
  %add614 = add i32 %conv599, 1, !dbg !2195
  %add615 = add i32 %add614, %conv613, !dbg !2195
  %div616 = lshr i32 %add615, 1, !dbg !2195
  %cmp617 = icmp slt i32 %102, %div616, !dbg !2195
  br i1 %cmp617, label %cond.true619, label %cond.false621, !dbg !2195

cond.true619:                                     ; preds = %cond.false594
  %103 = load %struct.ImageParameters** @img, align 8, !dbg !2195, !tbaa !1126
  %max_imgpel_value620 = getelementptr inbounds %struct.ImageParameters* %103, i64 0, i32 155, !dbg !2195
  %104 = load i32* %max_imgpel_value620, align 4, !dbg !2195, !tbaa !1132
  br label %cond.end645, !dbg !2195

cond.false621:                                    ; preds = %cond.false594
  %call624 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub539, i32 %2, i32 %1) #7, !dbg !2195
  %conv625 = zext i16 %call624 to i32, !dbg !2195
  %call638 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub538, i32 %sub557, i32 %2, i32 %1) #7, !dbg !2195
  %conv639 = zext i16 %call638 to i32, !dbg !2195
  %add640 = add i32 %conv625, 1, !dbg !2195
  %add641 = add i32 %add640, %conv639, !dbg !2195
  %div642 = lshr i32 %add641, 1, !dbg !2195
  br label %cond.end645, !dbg !2195

cond.end645:                                      ; preds = %cond.true619, %cond.false621, %cond.end589
  %cond646 = phi i32 [ 0, %cond.end589 ], [ %104, %cond.true619 ], [ %div642, %cond.false621 ], !dbg !2195
  %conv647 = trunc i32 %cond646 to i16, !dbg !2195
  tail call void @PutPel_14(i16** %17, i32 %sub538, i32 %add540, i16 zeroext %conv647) #7, !dbg !2195
  tail call void @llvm.dbg.value(metadata !{i32 %add548}, i64 0, metadata !374), !dbg !2193
  %cmp535 = icmp slt i32 %add548, %add534, !dbg !2193
  br i1 %cmp535, label %for.body537, label %for.inc651, !dbg !2193

for.inc651:                                       ; preds = %cond.end645, %for.cond533.preheader
  %add652 = add nsw i32 %j.21563, 2, !dbg !2191
  tail call void @llvm.dbg.value(metadata !{i32 %add652}, i64 0, metadata !375), !dbg !2191
  %cmp530 = icmp slt i32 %add652, %add529, !dbg !2191
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !374), !dbg !2193
  br i1 %cmp530, label %for.cond533.preheader, label %for.cond654.preheader, !dbg !2191

for.cond659.preheader:                            ; preds = %for.inc1106, %for.cond659.preheader.lr.ph
  %i.31559 = phi i32 [ 0, %for.cond659.preheader.lr.ph ], [ %inc1107.pre-phi, %for.inc1106 ]
  br i1 %cmp6611555, label %for.body663.lr.ph, label %for.cond659.preheader.for.inc1106_crit_edge, !dbg !2200

for.cond659.preheader.for.inc1106_crit_edge:      ; preds = %for.cond659.preheader
  %inc1107.pre = add nsw i32 %i.31559, 1, !dbg !2198
  br label %for.inc1106, !dbg !2200

for.body663.lr.ph:                                ; preds = %for.cond659.preheader
  %rem1540 = and i32 %i.31559, 1, !dbg !2208
  %cmp664 = icmp eq i32 %rem1540, 0, !dbg !2208
  %sub669 = add nsw i32 %i.31559, -16, !dbg !2209
  %sub953 = add nsw i32 %i.31559, -17, !dbg !2206
  %add968 = add nsw i32 %i.31559, 1, !dbg !2206
  %cmp969 = icmp slt i32 %add967, %add968, !dbg !2206
  %add967.add968 = select i1 %cmp969, i32 %add967, i32 %add968, !dbg !2206
  %sub977 = add nsw i32 %add967.add968, -16, !dbg !2206
  %rem780 = srem i32 %i.31559, 4, !dbg !2210
  %cmp781 = icmp eq i32 %rem780, 1, !dbg !2210
  %cmp789 = icmp eq i32 %rem780, 3, !dbg !2210
  br label %for.body663, !dbg !2200

for.body663:                                      ; preds = %for.body663.lr.ph, %for.inc1103
  %j.31556 = phi i32 [ 0, %for.body663.lr.ph ], [ %add1104, %for.inc1103 ]
  br i1 %cmp664, label %if.then666, label %if.else, !dbg !2208

if.then666:                                       ; preds = %for.body663
  %sub667 = add nsw i32 %j.31556, -16, !dbg !2209
  %add668 = add nsw i32 %j.31556, -15, !dbg !2209
  %105 = load %struct.ImageParameters** @img, align 8, !dbg !2209, !tbaa !1126
  %max_imgpel_value670 = getelementptr inbounds %struct.ImageParameters* %105, i64 0, i32 155, !dbg !2209
  %106 = load i32* %max_imgpel_value670, align 4, !dbg !2209, !tbaa !1132
  %call673 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub667, i32 %sub669, i32 %2, i32 %1) #7, !dbg !2203
  %conv674 = zext i16 %call673 to i32, !dbg !2203
  %add676 = add nsw i32 %j.31556, 2, !dbg !2203
  %cmp677 = icmp slt i32 %add675, %add676, !dbg !2203
  %.sink1116 = select i1 %cmp677, i32 %mul527, i32 %j.31556, !dbg !2203
  %sub685 = add nsw i32 %.sink1116, -14, !dbg !2203
  %call687 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub685, i32 %sub669, i32 %2, i32 %1) #7, !dbg !2203
  %conv688 = zext i16 %call687 to i32, !dbg !2203
  %add689 = add i32 %conv674, 1, !dbg !2203
  %add690 = add i32 %add689, %conv688, !dbg !2203
  %div691 = lshr i32 %add690, 1, !dbg !2203
  %cmp692 = icmp slt i32 %106, %div691, !dbg !2203
  br i1 %cmp692, label %cond.end718, label %cond.end718.thread, !dbg !2203

cond.end718.thread:                               ; preds = %if.then666
  %call699 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub667, i32 %sub669, i32 %2, i32 %1) #7, !dbg !2203
  %call713 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub685, i32 %sub669, i32 %2, i32 %1) #7, !dbg !2203
  %.pre1595 = load %struct.ImageParameters** @img, align 8, !dbg !2203, !tbaa !1126
  %max_imgpel_value724.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre1595, i64 0, i32 155
  %.pre1596 = load i32* %max_imgpel_value724.phi.trans.insert, align 4, !dbg !2203, !tbaa !1132
  br label %cond.false723, !dbg !2203

cond.end718:                                      ; preds = %if.then666
  %107 = load %struct.ImageParameters** @img, align 8, !dbg !2203, !tbaa !1126
  %max_imgpel_value695 = getelementptr inbounds %struct.ImageParameters* %107, i64 0, i32 155, !dbg !2203
  %108 = load i32* %max_imgpel_value695, align 4, !dbg !2203, !tbaa !1132
  %cmp720 = icmp slt i32 %108, 0, !dbg !2203
  br i1 %cmp720, label %cond.end774, label %cond.false723, !dbg !2203

cond.false723:                                    ; preds = %cond.end718.thread, %cond.end718
  %109 = phi i32 [ %.pre1596, %cond.end718.thread ], [ %108, %cond.end718 ]
  %call727 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub667, i32 %sub669, i32 %2, i32 %1) #7, !dbg !2203
  %conv728 = zext i16 %call727 to i32, !dbg !2203
  %call741 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub685, i32 %sub669, i32 %2, i32 %1) #7, !dbg !2203
  %conv742 = zext i16 %call741 to i32, !dbg !2203
  %add743 = add i32 %conv728, 1, !dbg !2203
  %add744 = add i32 %add743, %conv742, !dbg !2203
  %div745 = lshr i32 %add744, 1, !dbg !2203
  %cmp746 = icmp slt i32 %109, %div745, !dbg !2203
  br i1 %cmp746, label %cond.true748, label %cond.false750, !dbg !2203

cond.true748:                                     ; preds = %cond.false723
  %110 = load %struct.ImageParameters** @img, align 8, !dbg !2203, !tbaa !1126
  %max_imgpel_value749 = getelementptr inbounds %struct.ImageParameters* %110, i64 0, i32 155, !dbg !2203
  %111 = load i32* %max_imgpel_value749, align 4, !dbg !2203, !tbaa !1132
  br label %cond.end774, !dbg !2203

cond.false750:                                    ; preds = %cond.false723
  %call753 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub667, i32 %sub669, i32 %2, i32 %1) #7, !dbg !2203
  %conv754 = zext i16 %call753 to i32, !dbg !2203
  %call767 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub685, i32 %sub669, i32 %2, i32 %1) #7, !dbg !2203
  %conv768 = zext i16 %call767 to i32, !dbg !2203
  %add769 = add i32 %conv754, 1, !dbg !2203
  %add770 = add i32 %add769, %conv768, !dbg !2203
  %div771 = lshr i32 %add770, 1, !dbg !2203
  br label %cond.end774, !dbg !2203

cond.end774:                                      ; preds = %cond.true748, %cond.false750, %cond.end718
  %cond775 = phi i32 [ 0, %cond.end718 ], [ %111, %cond.true748 ], [ %div771, %cond.false750 ], !dbg !2203
  %conv776 = trunc i32 %cond775 to i16, !dbg !2203
  tail call void @PutPel_14(i16** %17, i32 %add668, i32 %sub669, i16 zeroext %conv776) #7, !dbg !2203
  br label %for.inc1103, !dbg !2211

if.else:                                          ; preds = %for.body663
  %rem777 = srem i32 %j.31556, 4, !dbg !2210
  switch i32 %rem777, label %if.else946 [
    i32 0, label %land.lhs.true
    i32 2, label %land.lhs.true787
  ], !dbg !2210

land.lhs.true:                                    ; preds = %if.else
  br i1 %cmp781, label %if.then791, label %if.else946, !dbg !2210

land.lhs.true787:                                 ; preds = %if.else
  br i1 %cmp789, label %if.then791, label %if.else946, !dbg !2210

if.then791:                                       ; preds = %land.lhs.true787, %land.lhs.true
  %sub792 = add nsw i32 %j.31556, -16, !dbg !2212
  %add793 = add nsw i32 %j.31556, -15, !dbg !2212
  %112 = load %struct.ImageParameters** @img, align 8, !dbg !2212, !tbaa !1126
  %max_imgpel_value795 = getelementptr inbounds %struct.ImageParameters* %112, i64 0, i32 155, !dbg !2212
  %113 = load i32* %max_imgpel_value795, align 4, !dbg !2212, !tbaa !1132
  %call808 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub792, i32 %sub977, i32 %2, i32 %1) #7, !dbg !2214
  %conv809 = zext i16 %call808 to i32, !dbg !2214
  %add811 = add nsw i32 %j.31556, 2, !dbg !2214
  %cmp812 = icmp slt i32 %add675, %add811, !dbg !2214
  %.sink1120 = select i1 %cmp812, i32 %mul527, i32 %j.31556, !dbg !2214
  %sub820 = add nsw i32 %.sink1120, -14, !dbg !2214
  %call823 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub820, i32 %sub953, i32 %2, i32 %1) #7, !dbg !2214
  %conv824 = zext i16 %call823 to i32, !dbg !2214
  %add825 = add i32 %conv809, 1, !dbg !2214
  %add826 = add i32 %add825, %conv824, !dbg !2214
  %div827 = lshr i32 %add826, 1, !dbg !2214
  %cmp828 = icmp slt i32 %113, %div827, !dbg !2214
  br i1 %cmp828, label %cond.end865, label %cond.end865.thread, !dbg !2214

cond.end865.thread:                               ; preds = %if.then791
  %call845 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub792, i32 %sub977, i32 %2, i32 %1) #7, !dbg !2214
  %call860 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub820, i32 %sub953, i32 %2, i32 %1) #7, !dbg !2214
  %.pre1599 = load %struct.ImageParameters** @img, align 8, !dbg !2214, !tbaa !1126
  %max_imgpel_value871.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre1599, i64 0, i32 155
  %.pre1600 = load i32* %max_imgpel_value871.phi.trans.insert, align 4, !dbg !2214, !tbaa !1132
  br label %cond.false870, !dbg !2214

cond.end865:                                      ; preds = %if.then791
  %114 = load %struct.ImageParameters** @img, align 8, !dbg !2214, !tbaa !1126
  %max_imgpel_value831 = getelementptr inbounds %struct.ImageParameters* %114, i64 0, i32 155, !dbg !2214
  %115 = load i32* %max_imgpel_value831, align 4, !dbg !2214, !tbaa !1132
  %cmp867 = icmp slt i32 %115, 0, !dbg !2214
  br i1 %cmp867, label %cond.end943, label %cond.false870, !dbg !2214

cond.false870:                                    ; preds = %cond.end865.thread, %cond.end865
  %116 = phi i32 [ %.pre1600, %cond.end865.thread ], [ %115, %cond.end865 ]
  %call884 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub792, i32 %sub977, i32 %2, i32 %1) #7, !dbg !2214
  %conv885 = zext i16 %call884 to i32, !dbg !2214
  %call899 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub820, i32 %sub953, i32 %2, i32 %1) #7, !dbg !2214
  %conv900 = zext i16 %call899 to i32, !dbg !2214
  %add901 = add i32 %conv885, 1, !dbg !2214
  %add902 = add i32 %add901, %conv900, !dbg !2214
  %div903 = lshr i32 %add902, 1, !dbg !2214
  %cmp904 = icmp slt i32 %116, %div903, !dbg !2214
  br i1 %cmp904, label %cond.true906, label %cond.false908, !dbg !2214

cond.true906:                                     ; preds = %cond.false870
  %117 = load %struct.ImageParameters** @img, align 8, !dbg !2214, !tbaa !1126
  %max_imgpel_value907 = getelementptr inbounds %struct.ImageParameters* %117, i64 0, i32 155, !dbg !2214
  %118 = load i32* %max_imgpel_value907, align 4, !dbg !2214, !tbaa !1132
  br label %cond.end943, !dbg !2214

cond.false908:                                    ; preds = %cond.false870
  %call921 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub792, i32 %sub977, i32 %2, i32 %1) #7, !dbg !2214
  %conv922 = zext i16 %call921 to i32, !dbg !2214
  %call936 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub820, i32 %sub953, i32 %2, i32 %1) #7, !dbg !2214
  %conv937 = zext i16 %call936 to i32, !dbg !2214
  %add938 = add i32 %conv922, 1, !dbg !2214
  %add939 = add i32 %add938, %conv937, !dbg !2214
  %div940 = lshr i32 %add939, 1, !dbg !2214
  br label %cond.end943, !dbg !2214

cond.end943:                                      ; preds = %cond.true906, %cond.false908, %cond.end865
  %cond944 = phi i32 [ 0, %cond.end865 ], [ %118, %cond.true906 ], [ %div940, %cond.false908 ], !dbg !2214
  %conv945 = trunc i32 %cond944 to i16, !dbg !2214
  tail call void @PutPel_14(i16** %17, i32 %add793, i32 %sub669, i16 zeroext %conv945) #7, !dbg !2214
  br label %for.inc1103, !dbg !2215

if.else946:                                       ; preds = %land.lhs.true, %if.else, %land.lhs.true787
  %sub947 = add nsw i32 %j.31556, -16, !dbg !2216
  %add948 = add nsw i32 %j.31556, -15, !dbg !2216
  %119 = load %struct.ImageParameters** @img, align 8, !dbg !2216, !tbaa !1126
  %max_imgpel_value950 = getelementptr inbounds %struct.ImageParameters* %119, i64 0, i32 155, !dbg !2216
  %120 = load i32* %max_imgpel_value950, align 4, !dbg !2216, !tbaa !1132
  %call954 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub947, i32 %sub953, i32 %2, i32 %1) #7, !dbg !2206
  %conv955 = zext i16 %call954 to i32, !dbg !2206
  %add957 = add nsw i32 %j.31556, 2, !dbg !2206
  %cmp958 = icmp slt i32 %add675, %add957, !dbg !2206
  %.sink1124 = select i1 %cmp958, i32 %mul527, i32 %j.31556, !dbg !2206
  %sub966 = add nsw i32 %.sink1124, -14, !dbg !2206
  %call978 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub966, i32 %sub977, i32 %2, i32 %1) #7, !dbg !2206
  %conv979 = zext i16 %call978 to i32, !dbg !2206
  %add980 = add i32 %conv955, 1, !dbg !2206
  %add981 = add i32 %add980, %conv979, !dbg !2206
  %div982 = lshr i32 %add981, 1, !dbg !2206
  %cmp983 = icmp slt i32 %120, %div982, !dbg !2206
  br i1 %cmp983, label %cond.end1020, label %cond.end1020.thread, !dbg !2206

cond.end1020.thread:                              ; preds = %if.else946
  %call991 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub947, i32 %sub953, i32 %2, i32 %1) #7, !dbg !2206
  %call1015 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub966, i32 %sub977, i32 %2, i32 %1) #7, !dbg !2206
  %.pre1597 = load %struct.ImageParameters** @img, align 8, !dbg !2206, !tbaa !1126
  %max_imgpel_value1026.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %.pre1597, i64 0, i32 155
  %.pre1598 = load i32* %max_imgpel_value1026.phi.trans.insert, align 4, !dbg !2206, !tbaa !1132
  br label %cond.false1025, !dbg !2206

cond.end1020:                                     ; preds = %if.else946
  %121 = load %struct.ImageParameters** @img, align 8, !dbg !2206, !tbaa !1126
  %max_imgpel_value986 = getelementptr inbounds %struct.ImageParameters* %121, i64 0, i32 155, !dbg !2206
  %122 = load i32* %max_imgpel_value986, align 4, !dbg !2206, !tbaa !1132
  %cmp1022 = icmp slt i32 %122, 0, !dbg !2206
  br i1 %cmp1022, label %cond.end1098, label %cond.false1025, !dbg !2206

cond.false1025:                                   ; preds = %cond.end1020.thread, %cond.end1020
  %123 = phi i32 [ %.pre1598, %cond.end1020.thread ], [ %122, %cond.end1020 ]
  %call1030 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub947, i32 %sub953, i32 %2, i32 %1) #7, !dbg !2206
  %conv1031 = zext i16 %call1030 to i32, !dbg !2206
  %call1054 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub966, i32 %sub977, i32 %2, i32 %1) #7, !dbg !2206
  %conv1055 = zext i16 %call1054 to i32, !dbg !2206
  %add1056 = add i32 %conv1031, 1, !dbg !2206
  %add1057 = add i32 %add1056, %conv1055, !dbg !2206
  %div1058 = lshr i32 %add1057, 1, !dbg !2206
  %cmp1059 = icmp slt i32 %123, %div1058, !dbg !2206
  br i1 %cmp1059, label %cond.true1061, label %cond.false1063, !dbg !2206

cond.true1061:                                    ; preds = %cond.false1025
  %124 = load %struct.ImageParameters** @img, align 8, !dbg !2206, !tbaa !1126
  %max_imgpel_value1062 = getelementptr inbounds %struct.ImageParameters* %124, i64 0, i32 155, !dbg !2206
  %125 = load i32* %max_imgpel_value1062, align 4, !dbg !2206, !tbaa !1132
  br label %cond.end1098, !dbg !2206

cond.false1063:                                   ; preds = %cond.false1025
  %call1067 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub947, i32 %sub953, i32 %2, i32 %1) #7, !dbg !2206
  %conv1068 = zext i16 %call1067 to i32, !dbg !2206
  %call1091 = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %sub966, i32 %sub977, i32 %2, i32 %1) #7, !dbg !2206
  %conv1092 = zext i16 %call1091 to i32, !dbg !2206
  %add1093 = add i32 %conv1068, 1, !dbg !2206
  %add1094 = add i32 %add1093, %conv1092, !dbg !2206
  %div1095 = lshr i32 %add1094, 1, !dbg !2206
  br label %cond.end1098, !dbg !2206

cond.end1098:                                     ; preds = %cond.true1061, %cond.false1063, %cond.end1020
  %cond1099 = phi i32 [ 0, %cond.end1020 ], [ %125, %cond.true1061 ], [ %div1095, %cond.false1063 ], !dbg !2206
  %conv1100 = trunc i32 %cond1099 to i16, !dbg !2206
  tail call void @PutPel_14(i16** %17, i32 %add948, i32 %sub669, i16 zeroext %conv1100) #7, !dbg !2206
  br label %for.inc1103

for.inc1103:                                      ; preds = %cond.end774, %cond.end1098, %cond.end943
  %add1104 = add nsw i32 %j.31556, 2, !dbg !2200
  tail call void @llvm.dbg.value(metadata !{i32 %add1104}, i64 0, metadata !375), !dbg !2200
  %cmp661 = icmp slt i32 %add1104, %add660, !dbg !2200
  br i1 %cmp661, label %for.body663, label %for.inc1106, !dbg !2200

for.inc1106:                                      ; preds = %for.inc1103, %for.cond659.preheader.for.inc1106_crit_edge
  %inc1107.pre-phi = phi i32 [ %inc1107.pre, %for.cond659.preheader.for.inc1106_crit_edge ], [ %add968, %for.inc1103 ], !dbg !2198
  tail call void @llvm.dbg.value(metadata !{i32 %inc1107.pre-phi}, i64 0, metadata !374), !dbg !2198
  %exitcond = icmp eq i32 %inc1107.pre-phi, %97, !dbg !2198
  br i1 %exitcond, label %for.end1108, label %for.cond659.preheader, !dbg !2198

for.end1108:                                      ; preds = %for.inc1106, %for.cond654.preheader
  %126 = load i32* %size_x, align 4, !dbg !2217, !tbaa !1132
  %127 = load i32* %size_y, align 4, !dbg !2217, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !{i16** %17}, i64 0, metadata !2218) #1, !dbg !2219
  tail call void @llvm.dbg.value(metadata !{i16* %18}, i64 0, metadata !2220) #1, !dbg !2221
  tail call void @llvm.dbg.value(metadata !{i32 %126}, i64 0, metadata !2222) #1, !dbg !2221
  tail call void @llvm.dbg.value(metadata !{i32 %127}, i64 0, metadata !2223) #1, !dbg !2224
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !2225) #1, !dbg !2226
  %cmp19.i = icmp sgt i32 %127, 0, !dbg !2226
  br i1 %cmp19.i, label %for.cond1.preheader.lr.ph.i, label %return, !dbg !2226

for.cond1.preheader.lr.ph.i:                      ; preds = %for.end1108
  %cmp217.i = icmp sgt i32 %126, 0, !dbg !2228
  br label %for.cond1.preheader.i, !dbg !2226

for.cond1.preheader.i:                            ; preds = %for.inc5.i, %for.cond1.preheader.lr.ph.i
  %y.020.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc6.i, %for.inc5.i ]
  br i1 %cmp217.i, label %for.body3.lr.ph.i, label %for.inc5.i, !dbg !2228

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %mul.i = shl nsw i32 %y.020.i, 2, !dbg !2230
  br label %for.body3.i, !dbg !2228

for.body3.i:                                      ; preds = %for.body3.i, %for.body3.lr.ph.i
  %x.018.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i, %for.body3.i ]
  %mul4.i = shl nsw i32 %x.018.i, 2, !dbg !2230
  %call.i = tail call zeroext i16 @FastPelY_14(i16** %17, i32 %mul.i, i32 %mul4.i, i32 %127, i32 %126) #7, !dbg !2230
  tail call void @PutPel_11(i16* %18, i32 %y.020.i, i32 %x.018.i, i16 zeroext %call.i, i32 %126) #7, !dbg !2230
  %inc.i = add nsw i32 %x.018.i, 1, !dbg !2228
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !2231) #1, !dbg !2228
  %exitcond.i = icmp eq i32 %inc.i, %126, !dbg !2228
  br i1 %exitcond.i, label %for.inc5.i, label %for.body3.i, !dbg !2228

for.inc5.i:                                       ; preds = %for.body3.i, %for.cond1.preheader.i
  %inc6.i = add nsw i32 %y.020.i, 1, !dbg !2226
  tail call void @llvm.dbg.value(metadata !{i32 %inc6.i}, i64 0, metadata !2225) #1, !dbg !2226
  %exitcond21.i = icmp eq i32 %inc6.i, %127, !dbg !2226
  br i1 %exitcond21.i, label %return, label %for.cond1.preheader.i, !dbg !2226

return:                                           ; preds = %for.inc5.i, %for.end1108, %lor.lhs.false, %entry
  ret void, !dbg !2217
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #3

; Function Attrs: optsize
declare i32 @get_mem2Dpel(i16***, i32, i32) #3

; Function Attrs: optsize
declare void @PutPel_14(i16**, i32, i32, i16 zeroext) #3

; Function Attrs: optsize
declare zeroext i16 @FastPelY_14(i16**, i32, i32, i32, i32) #3

; Function Attrs: nounwind optsize readnone uwtable
define i32 @dummy_slice_too_big(i32 %bits_slice) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %bits_slice}, i64 0, metadata !388), !dbg !2232
  ret i32 0, !dbg !2233
}

; Function Attrs: nounwind optsize uwtable
define void @copy_rdopt_data(i32 %bot_block) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %bot_block}, i64 0, metadata !393), !dbg !2234
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !2235, !tbaa !1126
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 3, !dbg !2235
  %1 = load i32* %current_mb_nr, align 4, !dbg !2235, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !394), !dbg !2235
  %idxprom = sext i32 %1 to i64, !dbg !2236
  %mb_data = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 51, !dbg !2236
  %2 = load %struct.macroblock** %mb_data, align 8, !dbg !2236, !tbaa !1126
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !2237
  %3 = load i32* %type, align 4, !dbg !2237, !tbaa !1132
  %cmp = icmp eq i32 %3, 1, !dbg !2237
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 90, !dbg !2238
  %4 = load i32* %MbaffFrameFlag, align 4, !dbg !2238, !tbaa !1132
  %tobool = icmp eq i32 %4, 0, !dbg !2238
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !2238

land.lhs.true:                                    ; preds = %entry
  %mb_field = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 22, !dbg !2238
  %5 = load i32* %mb_field, align 4, !dbg !2238, !tbaa !1132
  %tobool1 = icmp eq i32 %5, 0, !dbg !2238
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2238

cond.true:                                        ; preds = %land.lhs.true
  %rem845 = shl i32 %1, 1, !dbg !2238
  %6 = and i32 %rem845, 2, !dbg !2238
  %7 = add i32 %6, 2, !dbg !2238
  br label %cond.end, !dbg !2238

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond4 = phi i32 [ %7, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !2238
  tail call void @llvm.dbg.value(metadata !{i32 %cond4}, i64 0, metadata !463), !dbg !2238
  %8 = load %struct.RD_DATA** @rdopt, align 8, !dbg !2239, !tbaa !1126
  %mode5 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 14, !dbg !2239
  %9 = load i32* %mode5, align 4, !dbg !2239, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !460), !dbg !2239
  %mb_type = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 6, !dbg !2240
  %10 = load i32* %mb_type, align 4, !dbg !2240, !tbaa !1132
  %mb_type6 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 8, !dbg !2240
  store i32 %10, i32* %mb_type6, align 4, !dbg !2240, !tbaa !1132
  %cbp = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 12, !dbg !2241
  %11 = load i32* %cbp, align 4, !dbg !2241, !tbaa !1132
  %cbp7 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 12, !dbg !2241
  store i32 %11, i32* %cbp7, align 4, !dbg !2241, !tbaa !1132
  %cbp_blk = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 13, !dbg !2242
  %12 = load i64* %cbp_blk, align 8, !dbg !2242, !tbaa !1814
  %cbp_blk8 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 13, !dbg !2242
  store i64 %12, i64* %cbp_blk8, align 8, !dbg !2242, !tbaa !1814
  %bi_pred_me = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 7, !dbg !2243
  %13 = load i32* %bi_pred_me, align 4, !dbg !2243, !tbaa !1132
  %bi_pred_me9 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 34, !dbg !2243
  store i32 %13, i32* %bi_pred_me9, align 4, !dbg !2243, !tbaa !1132
  %i16offset = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 20, !dbg !2244
  %14 = load i32* %i16offset, align 4, !dbg !2244, !tbaa !1132
  %i16offset10 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 85, !dbg !2244
  store i32 %14, i32* %i16offset10, align 4, !dbg !2244, !tbaa !1132
  %prev_qp = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 25, !dbg !2245
  %15 = load i32* %prev_qp, align 4, !dbg !2245, !tbaa !1132
  %prev_qp11 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 36, !dbg !2245
  store i32 %15, i32* %prev_qp11, align 4, !dbg !2245, !tbaa !1132
  %prev_delta_qp = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 26, !dbg !2246
  %16 = load i32* %prev_delta_qp, align 4, !dbg !2246, !tbaa !1132
  %prev_delta_qp12 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 37, !dbg !2246
  store i32 %16, i32* %prev_delta_qp12, align 4, !dbg !2246, !tbaa !1132
  %qp = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 24, !dbg !2247
  %17 = load i32* %qp, align 4, !dbg !2247, !tbaa !1132
  %qp13 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 3, !dbg !2247
  store i32 %17, i32* %qp13, align 4, !dbg !2247, !tbaa !1132
  %c_ipred_mode = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 21, !dbg !2248
  %18 = load i32* %c_ipred_mode, align 4, !dbg !2248, !tbaa !1132
  %c_ipred_mode14 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 20, !dbg !2248
  store i32 %18, i32* %c_ipred_mode14, align 4, !dbg !2248, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !455), !dbg !2249
  %num_blk8x8_uv902 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 157, !dbg !2249
  %19 = load i32* %num_blk8x8_uv902, align 4, !dbg !2249, !tbaa !1132
  %add903 = add nsw i32 %19, 4, !dbg !2249
  %cmp15904 = icmp sgt i32 %add903, 0, !dbg !2249
  br i1 %cmp15904, label %for.cond17.preheader.lr.ph, label %for.cond55.preheader, !dbg !2249

for.cond17.preheader.lr.ph:                       ; preds = %cond.end
  %cofAC = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 4, !dbg !2251
  %20 = load i32***** %cofAC, align 8, !dbg !2251, !tbaa !1126
  %cofAC41 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 47, !dbg !2251
  %21 = load i32***** %cofAC41, align 8, !dbg !2251, !tbaa !1126
  br label %for.cond17.preheader, !dbg !2249

for.cond17.preheader:                             ; preds = %for.cond17.preheader.lr.ph, %for.inc52
  %indvars.iv999 = phi i64 [ 0, %for.cond17.preheader.lr.ph ], [ %indvars.iv.next1000, %for.inc52 ]
  %arrayidx33 = getelementptr inbounds i32**** %20, i64 %indvars.iv999, !dbg !2251
  %22 = load i32**** %arrayidx33, align 8, !dbg !2251, !tbaa !1126
  %arrayidx42 = getelementptr inbounds i32**** %21, i64 %indvars.iv999, !dbg !2251
  %23 = load i32**** %arrayidx42, align 8, !dbg !2251, !tbaa !1126
  br label %for.cond21.preheader, !dbg !2255

for.cond55.preheader:                             ; preds = %for.inc52, %cond.end
  %cofDC = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 5, !dbg !2256
  %24 = load i32**** %cofDC, align 8, !dbg !2256, !tbaa !1126
  %cofDC76 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 48, !dbg !2256
  %25 = load i32**** %cofDC76, align 8, !dbg !2256, !tbaa !1126
  br label %for.cond59.preheader, !dbg !2260

for.cond21.preheader:                             ; preds = %for.inc49, %for.cond17.preheader
  %indvars.iv995 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next996, %for.inc49 ]
  %arrayidx34 = getelementptr inbounds i32*** %22, i64 %indvars.iv995, !dbg !2251
  %26 = load i32*** %arrayidx34, align 8, !dbg !2251, !tbaa !1126
  %arrayidx43 = getelementptr inbounds i32*** %23, i64 %indvars.iv995, !dbg !2251
  %27 = load i32*** %arrayidx43, align 8, !dbg !2251, !tbaa !1126
  br label %for.cond25.preheader, !dbg !2261

for.cond25.preheader:                             ; preds = %for.inc46, %for.cond21.preheader
  %indvars.iv991 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next992, %for.inc46 ]
  %arrayidx35 = getelementptr inbounds i32** %26, i64 %indvars.iv991, !dbg !2251
  %28 = load i32** %arrayidx35, align 8, !dbg !2251, !tbaa !1126
  %arrayidx44 = getelementptr inbounds i32** %27, i64 %indvars.iv991, !dbg !2251
  %29 = load i32** %arrayidx44, align 8, !dbg !2251, !tbaa !1126
  br label %for.body28, !dbg !2262

for.body28:                                       ; preds = %for.body28, %for.cond25.preheader
  %indvars.iv987 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next988, %for.body28 ]
  %arrayidx36 = getelementptr inbounds i32* %28, i64 %indvars.iv987, !dbg !2251
  %30 = load i32* %arrayidx36, align 4, !dbg !2251, !tbaa !1132
  %arrayidx45 = getelementptr inbounds i32* %29, i64 %indvars.iv987, !dbg !2251
  store i32 %30, i32* %arrayidx45, align 4, !dbg !2251, !tbaa !1132
  %indvars.iv.next988 = add i64 %indvars.iv987, 1, !dbg !2262
  %lftr.wideiv989 = trunc i64 %indvars.iv.next988 to i32, !dbg !2262
  %exitcond990 = icmp eq i32 %lftr.wideiv989, 65, !dbg !2262
  br i1 %exitcond990, label %for.inc46, label %for.body28, !dbg !2262

for.inc46:                                        ; preds = %for.body28
  %indvars.iv.next992 = add i64 %indvars.iv991, 1, !dbg !2261
  %lftr.wideiv993 = trunc i64 %indvars.iv.next992 to i32, !dbg !2261
  %exitcond994 = icmp eq i32 %lftr.wideiv993, 2, !dbg !2261
  br i1 %exitcond994, label %for.inc49, label %for.cond25.preheader, !dbg !2261

for.inc49:                                        ; preds = %for.inc46
  %indvars.iv.next996 = add i64 %indvars.iv995, 1, !dbg !2255
  %lftr.wideiv997 = trunc i64 %indvars.iv.next996 to i32, !dbg !2255
  %exitcond998 = icmp eq i32 %lftr.wideiv997, 4, !dbg !2255
  br i1 %exitcond998, label %for.inc52, label %for.cond21.preheader, !dbg !2255

for.inc52:                                        ; preds = %for.inc49
  %indvars.iv.next1000 = add i64 %indvars.iv999, 1, !dbg !2249
  %31 = load i32* %num_blk8x8_uv902, align 4, !dbg !2249, !tbaa !1132
  %32 = add nsw i32 %31, 3, !dbg !2249
  %33 = trunc i64 %indvars.iv999 to i32, !dbg !2249
  %cmp15 = icmp slt i32 %33, %32, !dbg !2249
  br i1 %cmp15, label %for.cond17.preheader, label %for.cond55.preheader, !dbg !2249

for.cond59.preheader:                             ; preds = %for.inc86, %for.cond55.preheader
  %indvars.iv983 = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next984, %for.inc86 ]
  %arrayidx70 = getelementptr inbounds i32*** %24, i64 %indvars.iv983, !dbg !2256
  %34 = load i32*** %arrayidx70, align 8, !dbg !2256, !tbaa !1126
  %arrayidx77 = getelementptr inbounds i32*** %25, i64 %indvars.iv983, !dbg !2256
  %35 = load i32*** %arrayidx77, align 8, !dbg !2256, !tbaa !1126
  br label %for.cond63.preheader, !dbg !2263

for.cond89.preheader:                             ; preds = %for.inc86
  %idxprom121842 = zext i32 %cond4 to i64, !dbg !2264
  %add161843 = or i32 %cond4, 1, !dbg !2268
  %idxprom162844 = zext i32 %add161843 to i64, !dbg !2268
  %.pre.pre = load %struct.storable_picture** @enc_picture, align 8, !dbg !2270, !tbaa !1126
  %block_y.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 32
  %.pre1011.pre = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !dbg !2270, !tbaa !1132
  %block_x.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 31
  %.pre1012.pre = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !dbg !2270, !tbaa !1132
  %ref_idx.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 32
  %.pre1013.pre = load i16**** %ref_idx.phi.trans.insert.phi.trans.insert, align 8, !dbg !2270, !tbaa !1126
  %.pre1014.pre = load i16*** %.pre1013.pre, align 8, !dbg !2270, !tbaa !1126
  %ref_pic_id.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 33
  %.pre1015.pre = load i64**** %ref_pic_id.phi.trans.insert.phi.trans.insert, align 8, !dbg !2264, !tbaa !1126
  %.pre1016.pre = load i64*** %.pre1015.pre, align 8, !dbg !2264, !tbaa !1126
  br label %for.cond93.preheader, !dbg !2271

for.cond63.preheader:                             ; preds = %for.inc83, %for.cond59.preheader
  %indvars.iv979 = phi i64 [ 0, %for.cond59.preheader ], [ %indvars.iv.next980, %for.inc83 ]
  %arrayidx71 = getelementptr inbounds i32** %34, i64 %indvars.iv979, !dbg !2256
  %36 = load i32** %arrayidx71, align 8, !dbg !2256, !tbaa !1126
  %arrayidx78 = getelementptr inbounds i32** %35, i64 %indvars.iv979, !dbg !2256
  %37 = load i32** %arrayidx78, align 8, !dbg !2256, !tbaa !1126
  br label %for.body66, !dbg !2272

for.body66:                                       ; preds = %for.body66, %for.cond63.preheader
  %indvars.iv975 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next976, %for.body66 ]
  %arrayidx72 = getelementptr inbounds i32* %36, i64 %indvars.iv975, !dbg !2256
  %38 = load i32* %arrayidx72, align 4, !dbg !2256, !tbaa !1132
  %arrayidx79 = getelementptr inbounds i32* %37, i64 %indvars.iv975, !dbg !2256
  store i32 %38, i32* %arrayidx79, align 4, !dbg !2256, !tbaa !1132
  %indvars.iv.next976 = add i64 %indvars.iv975, 1, !dbg !2272
  %lftr.wideiv977 = trunc i64 %indvars.iv.next976 to i32, !dbg !2272
  %exitcond978 = icmp eq i32 %lftr.wideiv977, 18, !dbg !2272
  br i1 %exitcond978, label %for.inc83, label %for.body66, !dbg !2272

for.inc83:                                        ; preds = %for.body66
  %indvars.iv.next980 = add i64 %indvars.iv979, 1, !dbg !2263
  %lftr.wideiv981 = trunc i64 %indvars.iv.next980 to i32, !dbg !2263
  %exitcond982 = icmp eq i32 %lftr.wideiv981, 2, !dbg !2263
  br i1 %exitcond982, label %for.inc86, label %for.cond63.preheader, !dbg !2263

for.inc86:                                        ; preds = %for.inc83
  %indvars.iv.next984 = add i64 %indvars.iv983, 1, !dbg !2260
  %lftr.wideiv985 = trunc i64 %indvars.iv.next984 to i32, !dbg !2260
  %exitcond986 = icmp eq i32 %lftr.wideiv985, 3, !dbg !2260
  br i1 %exitcond986, label %for.cond89.preheader, label %for.cond59.preheader, !dbg !2260

for.cond93.preheader:                             ; preds = %for.inc179, %for.cond89.preheader
  %indvars.iv971 = phi i64 [ 0, %for.cond89.preheader ], [ %indvars.iv.next972, %for.inc179 ]
  br label %for.body96, !dbg !2273

for.cond182.preheader:                            ; preds = %for.inc179
  %pix_x = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 33, !dbg !2274
  %39 = load i32* %pix_x, align 4, !dbg !2274, !tbaa !1132
  %pix_y = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 34, !dbg !2274
  %40 = load i32* %pix_y, align 4, !dbg !2274, !tbaa !1132
  %imgY = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 25, !dbg !2274
  %41 = load i16*** %imgY, align 8, !dbg !2274, !tbaa !1126
  %42 = sext i32 %39 to i64, !dbg !2278
  %43 = sext i32 %40 to i64, !dbg !2278
  br label %for.cond186.preheader, !dbg !2278

for.body96:                                       ; preds = %for.inc176, %for.cond93.preheader
  %indvars.iv967 = phi i64 [ 0, %for.cond93.preheader ], [ %indvars.iv.next968, %for.inc176 ]
  %arrayidx101 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 19, i64 0, i64 %indvars.iv971, i64 %indvars.iv967, !dbg !2270
  %44 = load i16* %arrayidx101, align 2, !dbg !2270, !tbaa !1148
  %45 = trunc i64 %indvars.iv971 to i32, !dbg !2270
  %add102 = add nsw i32 %.pre1011.pre, %45, !dbg !2270
  %idxprom103 = sext i32 %add102 to i64, !dbg !2270
  %46 = trunc i64 %indvars.iv967 to i32, !dbg !2270
  %add104 = add nsw i32 %.pre1012.pre, %46, !dbg !2270
  %idxprom105 = sext i32 %add104 to i64, !dbg !2270
  %arrayidx107 = getelementptr inbounds i16** %.pre1014.pre, i64 %idxprom105, !dbg !2270
  %47 = load i16** %arrayidx107, align 8, !dbg !2270, !tbaa !1126
  %arrayidx108 = getelementptr inbounds i16* %47, i64 %idxprom103, !dbg !2270
  store i16 %44, i16* %arrayidx108, align 2, !dbg !2270, !tbaa !1148
  %idxprom119 = sext i16 %44 to i64, !dbg !2264
  %arrayidx123 = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 6, i64 %idxprom121842, i64 %idxprom119, !dbg !2264
  %48 = load i64* %arrayidx123, align 8, !dbg !2264, !tbaa !1814
  %arrayidx131 = getelementptr inbounds i64** %.pre1016.pre, i64 %idxprom105, !dbg !2264
  %49 = load i64** %arrayidx131, align 8, !dbg !2264, !tbaa !1126
  %arrayidx132 = getelementptr inbounds i64* %49, i64 %idxprom103, !dbg !2264
  store i64 %48, i64* %arrayidx132, align 8, !dbg !2264, !tbaa !1814
  br i1 %cmp, label %if.then, label %for.inc176, !dbg !2279

if.then:                                          ; preds = %for.body96
  %arrayidx139 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 19, i64 1, i64 %indvars.iv971, i64 %indvars.iv967, !dbg !2280
  %50 = load i16* %arrayidx139, align 2, !dbg !2280, !tbaa !1148
  %arrayidx147 = getelementptr inbounds i16*** %.pre1013.pre, i64 1, !dbg !2280
  %51 = load i16*** %arrayidx147, align 8, !dbg !2280, !tbaa !1126
  %arrayidx148 = getelementptr inbounds i16** %51, i64 %idxprom105, !dbg !2280
  %52 = load i16** %arrayidx148, align 8, !dbg !2280, !tbaa !1126
  %arrayidx149 = getelementptr inbounds i16* %52, i64 %idxprom103, !dbg !2280
  store i16 %50, i16* %arrayidx149, align 2, !dbg !2280, !tbaa !1148
  %idxprom160 = sext i16 %50 to i64, !dbg !2268
  %arrayidx165 = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 6, i64 %idxprom162844, i64 %idxprom160, !dbg !2268
  %53 = load i64* %arrayidx165, align 8, !dbg !2268, !tbaa !1814
  %arrayidx173 = getelementptr inbounds i64*** %.pre1015.pre, i64 1, !dbg !2268
  %54 = load i64*** %arrayidx173, align 8, !dbg !2268, !tbaa !1126
  %arrayidx174 = getelementptr inbounds i64** %54, i64 %idxprom105, !dbg !2268
  %55 = load i64** %arrayidx174, align 8, !dbg !2268, !tbaa !1126
  %arrayidx175 = getelementptr inbounds i64* %55, i64 %idxprom103, !dbg !2268
  store i64 %53, i64* %arrayidx175, align 8, !dbg !2268, !tbaa !1814
  br label %for.inc176, !dbg !2281

for.inc176:                                       ; preds = %for.body96, %if.then
  %indvars.iv.next968 = add i64 %indvars.iv967, 1, !dbg !2273
  %lftr.wideiv969 = trunc i64 %indvars.iv.next968 to i32, !dbg !2273
  %exitcond970 = icmp eq i32 %lftr.wideiv969, 4, !dbg !2273
  br i1 %exitcond970, label %for.inc179, label %for.body96, !dbg !2273

for.inc179:                                       ; preds = %for.inc176
  %indvars.iv.next972 = add i64 %indvars.iv971, 1, !dbg !2271
  %lftr.wideiv973 = trunc i64 %indvars.iv.next972 to i32, !dbg !2271
  %exitcond974 = icmp eq i32 %lftr.wideiv973, 4, !dbg !2271
  br i1 %exitcond974, label %for.cond182.preheader, label %for.cond93.preheader, !dbg !2271

for.cond186.preheader:                            ; preds = %for.inc204, %for.cond182.preheader
  %indvars.iv962 = phi i64 [ 0, %for.cond182.preheader ], [ %indvars.iv.next963, %for.inc204 ]
  %56 = add nsw i64 %43, %indvars.iv962, !dbg !2274
  %arrayidx199 = getelementptr inbounds i16** %41, i64 %56, !dbg !2274
  %57 = load i16** %arrayidx199, align 8, !dbg !2274, !tbaa !1126
  br label %for.body189, !dbg !2282

for.body189:                                      ; preds = %for.body189, %for.cond186.preheader
  %indvars.iv957 = phi i64 [ 0, %for.cond186.preheader ], [ %indvars.iv.next958, %for.body189 ]
  %arrayidx193 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 1, i64 %indvars.iv962, i64 %indvars.iv957, !dbg !2274
  %58 = load i32* %arrayidx193, align 4, !dbg !2274, !tbaa !1132
  %conv194 = trunc i32 %58 to i16, !dbg !2274
  %59 = add nsw i64 %42, %indvars.iv957, !dbg !2274
  %arrayidx200 = getelementptr inbounds i16* %57, i64 %59, !dbg !2274
  store i16 %conv194, i16* %arrayidx200, align 2, !dbg !2274, !tbaa !1148
  %indvars.iv.next958 = add i64 %indvars.iv957, 1, !dbg !2282
  %lftr.wideiv960 = trunc i64 %indvars.iv.next958 to i32, !dbg !2282
  %exitcond961 = icmp eq i32 %lftr.wideiv960, 16, !dbg !2282
  br i1 %exitcond961, label %for.inc204, label %for.body189, !dbg !2282

for.inc204:                                       ; preds = %for.body189
  %indvars.iv.next963 = add i64 %indvars.iv962, 1, !dbg !2278
  %lftr.wideiv965 = trunc i64 %indvars.iv.next963 to i32, !dbg !2278
  %exitcond966 = icmp eq i32 %lftr.wideiv965, 16, !dbg !2278
  br i1 %exitcond966, label %for.end206, label %for.cond186.preheader, !dbg !2278

for.end206:                                       ; preds = %for.inc204
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159, !dbg !2283
  %60 = load i32* %yuv_format, align 4, !dbg !2283, !tbaa !1132
  %cmp207 = icmp eq i32 %60, 0, !dbg !2283
  br i1 %cmp207, label %for.body255, label %for.cond210.preheader, !dbg !2283

for.cond210.preheader:                            ; preds = %for.end206
  %mb_cr_size_y889 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 162, !dbg !2284
  %61 = load i32* %mb_cr_size_y889, align 4, !dbg !2284, !tbaa !1132
  %cmp211890 = icmp sgt i32 %61, 0, !dbg !2284
  br i1 %cmp211890, label %for.cond214.preheader.lr.ph, label %for.body255, !dbg !2284

for.cond214.preheader.lr.ph:                      ; preds = %for.cond210.preheader
  %mb_cr_size_x886 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 161, !dbg !2287
  %62 = load i32* %mb_cr_size_x886, align 4, !dbg !2287, !tbaa !1132
  %cmp215887 = icmp sgt i32 %62, 0, !dbg !2287
  %imgUV = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 30, !dbg !2289
  %pix_c_x235 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 35, !dbg !2291
  %pix_c_y238 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 36, !dbg !2291
  br label %for.cond214.preheader, !dbg !2284

for.cond214.preheader:                            ; preds = %for.cond214.preheader.lr.ph, %for.inc248
  %indvars.iv955 = phi i64 [ 0, %for.cond214.preheader.lr.ph ], [ %indvars.iv.next956, %for.inc248 ]
  br i1 %cmp215887, label %for.body217.lr.ph, label %for.inc248, !dbg !2287

for.body217.lr.ph:                                ; preds = %for.cond214.preheader
  %63 = load i16**** %imgUV, align 8, !dbg !2289, !tbaa !1126
  %64 = load i16*** %63, align 8, !dbg !2289, !tbaa !1126
  %65 = load i32* %pix_c_x235, align 4, !dbg !2291, !tbaa !1132
  %66 = load i32* %pix_c_y238, align 4, !dbg !2291, !tbaa !1132
  %67 = trunc i64 %indvars.iv955 to i32, !dbg !2291
  %add239 = add nsw i32 %66, %67, !dbg !2291
  %idxprom240 = sext i32 %add239 to i64, !dbg !2291
  %arrayidx242 = getelementptr inbounds i16*** %63, i64 1, !dbg !2291
  %68 = load i16*** %arrayidx242, align 8, !dbg !2291, !tbaa !1126
  %arrayidx243 = getelementptr inbounds i16** %68, i64 %idxprom240, !dbg !2291
  %69 = load i16** %arrayidx243, align 8, !dbg !2291, !tbaa !1126
  %70 = sext i32 %65 to i64, !dbg !2287
  %arrayidx228.phi.trans.insert = getelementptr inbounds i16** %64, i64 %idxprom240
  %.pre1017 = load i16** %arrayidx228.phi.trans.insert, align 8, !dbg !2289, !tbaa !1126
  br label %for.body217, !dbg !2287

for.body217:                                      ; preds = %for.body217.lr.ph, %for.body217
  %indvars.iv952 = phi i64 [ 0, %for.body217.lr.ph ], [ %indvars.iv.next953, %for.body217 ]
  %arrayidx221 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 2, i64 %indvars.iv955, i64 %indvars.iv952, !dbg !2289
  %71 = load i32* %arrayidx221, align 4, !dbg !2289, !tbaa !1132
  %conv222 = trunc i32 %71 to i16, !dbg !2289
  %72 = trunc i64 %indvars.iv952 to i32, !dbg !2289
  %add223 = add nsw i32 %65, %72, !dbg !2289
  %idxprom224 = sext i32 %add223 to i64, !dbg !2289
  %arrayidx229 = getelementptr inbounds i16* %.pre1017, i64 %idxprom224, !dbg !2289
  store i16 %conv222, i16* %arrayidx229, align 2, !dbg !2289, !tbaa !1148
  %arrayidx233 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 3, i64 %indvars.iv955, i64 %indvars.iv952, !dbg !2291
  %73 = load i32* %arrayidx233, align 4, !dbg !2291, !tbaa !1132
  %conv234 = trunc i32 %73 to i16, !dbg !2291
  %74 = add nsw i64 %70, %indvars.iv952, !dbg !2291
  %arrayidx244 = getelementptr inbounds i16* %69, i64 %74, !dbg !2291
  store i16 %conv234, i16* %arrayidx244, align 2, !dbg !2291, !tbaa !1148
  %indvars.iv.next953 = add i64 %indvars.iv952, 1, !dbg !2287
  %75 = trunc i64 %indvars.iv.next953 to i32, !dbg !2287
  %cmp215 = icmp slt i32 %75, %62, !dbg !2287
  br i1 %cmp215, label %for.body217, label %for.inc248, !dbg !2287

for.inc248:                                       ; preds = %for.body217, %for.cond214.preheader
  %indvars.iv.next956 = add i64 %indvars.iv955, 1, !dbg !2284
  %76 = trunc i64 %indvars.iv.next956 to i32, !dbg !2284
  %cmp211 = icmp slt i32 %76, %61, !dbg !2284
  br i1 %cmp211, label %for.cond214.preheader, label %for.body255, !dbg !2284

for.body255:                                      ; preds = %for.end206, %for.inc248, %for.cond210.preheader, %for.body255
  %indvars.iv946 = phi i64 [ %indvars.iv.next947, %for.body255 ], [ 0, %for.cond210.preheader ], [ 0, %for.inc248 ], [ 0, %for.end206 ]
  %arrayidx258 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 8, i64 %indvars.iv946, !dbg !2292
  %77 = load i32* %arrayidx258, align 4, !dbg !2292, !tbaa !1132
  %arrayidx261 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %indvars.iv946, !dbg !2292
  store i32 %77, i32* %arrayidx261, align 4, !dbg !2292, !tbaa !1132
  %arrayidx264 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 9, i64 %indvars.iv946, !dbg !2295
  %78 = load i32* %arrayidx264, align 4, !dbg !2295, !tbaa !1132
  %arrayidx267 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %indvars.iv946, !dbg !2295
  store i32 %78, i32* %arrayidx267, align 4, !dbg !2295, !tbaa !1132
  %indvars.iv.next947 = add i64 %indvars.iv946, 1, !dbg !2296
  %lftr.wideiv948 = trunc i64 %indvars.iv.next947 to i32, !dbg !2296
  %exitcond949 = icmp eq i32 %lftr.wideiv948, 4, !dbg !2296
  br i1 %exitcond949, label %for.end270, label %for.body255, !dbg !2296

for.end270:                                       ; preds = %for.body255
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 22, !dbg !2297
  %79 = load i32* %luma_transform_size_8x8_flag, align 4, !dbg !2297, !tbaa !1132
  %luma_transform_size_8x8_flag271 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 32, !dbg !2297
  store i32 %79, i32* %luma_transform_size_8x8_flag271, align 4, !dbg !2297, !tbaa !1132
  switch i32 %9, label %for.body322.lr.ph [
    i32 8, label %for.body281.lr.ph
    i32 13, label %if.else345
    i32 9, label %if.else345
  ], !dbg !2298

for.body281.lr.ph:                                ; preds = %for.end270
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !457), !dbg !2299
  tail call void @llvm.dbg.value(metadata !{i32 %80}, i64 0, metadata !456), !dbg !2299
  %80 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !dbg !2299, !tbaa !1132
  %ipredmode = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 10, !dbg !2302
  %81 = sext i32 %80 to i64
  %.pre1004 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !dbg !2305, !tbaa !1132
  br label %for.body288.lr.ph, !dbg !2299

for.body288.lr.ph:                                ; preds = %for.inc307, %for.body281.lr.ph
  %82 = phi i32 [ %.pre1004, %for.body281.lr.ph ], [ %90, %for.inc307 ], !dbg !2305
  %indvars.iv938 = phi i64 [ %81, %for.body281.lr.ph ], [ %indvars.iv.next939, %for.inc307 ]
  %k.2871 = phi i32 [ 0, %for.body281.lr.ph ], [ %inc305, %for.inc307 ]
  tail call void @llvm.dbg.value(metadata !{i32 %82}, i64 0, metadata !455), !dbg !2305
  %83 = load i32*** %ipredmode, align 8, !dbg !2302, !tbaa !1126
  %84 = sext i32 %82 to i64
  %85 = sext i32 %k.2871 to i64, !dbg !2305
  %ipredmode295.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 25
  %.pre1006 = load i32*** %ipredmode295.phi.trans.insert, align 8, !dbg !2302, !tbaa !1126
  br label %for.body288, !dbg !2305

for.body288:                                      ; preds = %for.body288.lr.ph, %for.body288
  %indvars.iv936 = phi i64 [ %85, %for.body288.lr.ph ], [ %indvars.iv.next937, %for.body288 ], !dbg !2305
  %indvars.iv934 = phi i64 [ %84, %for.body288.lr.ph ], [ %indvars.iv.next935, %for.body288 ]
  %k.3864 = phi i32 [ %k.2871, %for.body288.lr.ph ], [ %inc305, %for.body288 ]
  %arrayidx291 = getelementptr inbounds i32** %83, i64 %indvars.iv934, !dbg !2302
  %86 = load i32** %arrayidx291, align 8, !dbg !2302, !tbaa !1126
  %arrayidx292 = getelementptr inbounds i32* %86, i64 %indvars.iv938, !dbg !2302
  %87 = load i32* %arrayidx292, align 4, !dbg !2302, !tbaa !1132
  %arrayidx296 = getelementptr inbounds i32** %.pre1006, i64 %indvars.iv934, !dbg !2302
  %88 = load i32** %arrayidx296, align 8, !dbg !2302, !tbaa !1126
  %arrayidx297 = getelementptr inbounds i32* %88, i64 %indvars.iv938, !dbg !2302
  store i32 %87, i32* %arrayidx297, align 4, !dbg !2302, !tbaa !1132
  %arrayidx299 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 11, i64 %indvars.iv936, !dbg !2306
  %89 = load i32* %arrayidx299, align 4, !dbg !2306, !tbaa !1132
  %arrayidx302 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv936, !dbg !2306
  store i32 %89, i32* %arrayidx302, align 4, !dbg !2306, !tbaa !1132
  %indvars.iv.next935 = add i64 %indvars.iv934, 1, !dbg !2305
  %indvars.iv.next937 = add i64 %indvars.iv936, 1, !dbg !2305
  %inc305 = add nsw i32 %k.3864, 1, !dbg !2305
  tail call void @llvm.dbg.value(metadata !{i32 %inc305}, i64 0, metadata !457), !dbg !2305
  %90 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !dbg !2305, !tbaa !1132
  %91 = add nsw i32 %90, 3, !dbg !2305
  %92 = trunc i64 %indvars.iv934 to i32, !dbg !2305
  %cmp286 = icmp slt i32 %92, %91, !dbg !2305
  br i1 %cmp286, label %for.body288, label %for.inc307, !dbg !2305

for.inc307:                                       ; preds = %for.body288
  %.pre1005 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !dbg !2299, !tbaa !1132
  %indvars.iv.next939 = add i64 %indvars.iv938, 1, !dbg !2299
  %93 = add nsw i32 %.pre1005, 3, !dbg !2299
  %94 = trunc i64 %indvars.iv938 to i32, !dbg !2299
  %cmp279 = icmp slt i32 %94, %93, !dbg !2299
  br i1 %cmp279, label %for.body288.lr.ph, label %if.end390, !dbg !2299

for.body322.lr.ph:                                ; preds = %for.end270
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !457), !dbg !2307
  tail call void @llvm.dbg.value(metadata !{i32 %95}, i64 0, metadata !456), !dbg !2307
  %95 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !dbg !2307, !tbaa !1132
  %96 = sext i32 %95 to i64
  %.pre1001 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !dbg !2310, !tbaa !1132
  br label %for.body329.lr.ph, !dbg !2307

for.body329.lr.ph:                                ; preds = %for.inc342, %for.body322.lr.ph
  %97 = phi i32 [ %.pre1001, %for.body322.lr.ph ], [ %101, %for.inc342 ], !dbg !2310
  %indvars.iv932 = phi i64 [ %96, %for.body322.lr.ph ], [ %indvars.iv.next933, %for.inc342 ]
  %k.4859 = phi i32 [ 0, %for.body322.lr.ph ], [ %inc340, %for.inc342 ]
  tail call void @llvm.dbg.value(metadata !{i32 %97}, i64 0, metadata !455), !dbg !2310
  %98 = sext i32 %97 to i64
  %99 = sext i32 %k.4859 to i64, !dbg !2310
  %ipredmode332.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 25
  %.pre1003 = load i32*** %ipredmode332.phi.trans.insert, align 8, !dbg !2312, !tbaa !1126
  br label %for.body329, !dbg !2310

for.body329:                                      ; preds = %for.body329.lr.ph, %for.body329
  %indvars.iv930 = phi i64 [ %99, %for.body329.lr.ph ], [ %indvars.iv.next931, %for.body329 ], !dbg !2310
  %indvars.iv928 = phi i64 [ %98, %for.body329.lr.ph ], [ %indvars.iv.next929, %for.body329 ]
  %k.5854 = phi i32 [ %k.4859, %for.body329.lr.ph ], [ %inc340, %for.body329 ]
  %arrayidx333 = getelementptr inbounds i32** %.pre1003, i64 %indvars.iv928, !dbg !2312
  %100 = load i32** %arrayidx333, align 8, !dbg !2312, !tbaa !1126
  %arrayidx334 = getelementptr inbounds i32* %100, i64 %indvars.iv932, !dbg !2312
  store i32 2, i32* %arrayidx334, align 4, !dbg !2312, !tbaa !1132
  %arrayidx337 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv930, !dbg !2314
  store i32 2, i32* %arrayidx337, align 4, !dbg !2314, !tbaa !1132
  %indvars.iv.next929 = add i64 %indvars.iv928, 1, !dbg !2310
  %indvars.iv.next931 = add i64 %indvars.iv930, 1, !dbg !2310
  %inc340 = add nsw i32 %k.5854, 1, !dbg !2310
  tail call void @llvm.dbg.value(metadata !{i32 %inc340}, i64 0, metadata !457), !dbg !2310
  %101 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !dbg !2310, !tbaa !1132
  %102 = add nsw i32 %101, 3, !dbg !2310
  %103 = trunc i64 %indvars.iv928 to i32, !dbg !2310
  %cmp327 = icmp slt i32 %103, %102, !dbg !2310
  br i1 %cmp327, label %for.body329, label %for.inc342, !dbg !2310

for.inc342:                                       ; preds = %for.body329
  %.pre1002 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !dbg !2307, !tbaa !1132
  %indvars.iv.next933 = add i64 %indvars.iv932, 1, !dbg !2307
  %104 = add nsw i32 %.pre1002, 3, !dbg !2307
  %105 = trunc i64 %indvars.iv932 to i32, !dbg !2307
  %cmp320 = icmp slt i32 %105, %104, !dbg !2307
  br i1 %cmp320, label %for.body329.lr.ph, label %if.end390, !dbg !2307

if.else345:                                       ; preds = %for.end270, %for.end270
  %106 = and i32 %9, -5, !dbg !2315
  %107 = icmp eq i32 %106, 9, !dbg !2315
  br i1 %107, label %for.body357.lr.ph, label %if.end390, !dbg !2315

for.body357.lr.ph:                                ; preds = %if.else345
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !457), !dbg !2316
  tail call void @llvm.dbg.value(metadata !{i32 %108}, i64 0, metadata !456), !dbg !2316
  %108 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !dbg !2316, !tbaa !1132
  %ipredmode367 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 10, !dbg !2319
  %109 = sext i32 %108 to i64
  %.pre1007 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !dbg !2322, !tbaa !1132
  br label %for.body364.lr.ph, !dbg !2316

for.body364.lr.ph:                                ; preds = %for.inc385, %for.body357.lr.ph
  %110 = phi i32 [ %.pre1007, %for.body357.lr.ph ], [ %118, %for.inc385 ], !dbg !2322
  %indvars.iv944 = phi i64 [ %109, %for.body357.lr.ph ], [ %indvars.iv.next945, %for.inc385 ]
  %k.6883 = phi i32 [ 0, %for.body357.lr.ph ], [ %inc383, %for.inc385 ]
  tail call void @llvm.dbg.value(metadata !{i32 %110}, i64 0, metadata !455), !dbg !2322
  %111 = load i32*** %ipredmode367, align 8, !dbg !2319, !tbaa !1126
  %112 = sext i32 %110 to i64
  %113 = sext i32 %k.6883 to i64, !dbg !2322
  %ipredmode372.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 25
  %.pre1009 = load i32*** %ipredmode372.phi.trans.insert, align 8, !dbg !2319, !tbaa !1126
  br label %for.body364, !dbg !2322

for.body364:                                      ; preds = %for.body364.lr.ph, %for.body364
  %indvars.iv942 = phi i64 [ %113, %for.body364.lr.ph ], [ %indvars.iv.next943, %for.body364 ], !dbg !2322
  %indvars.iv940 = phi i64 [ %112, %for.body364.lr.ph ], [ %indvars.iv.next941, %for.body364 ]
  %k.7876 = phi i32 [ %k.6883, %for.body364.lr.ph ], [ %inc383, %for.body364 ]
  %arrayidx368 = getelementptr inbounds i32** %111, i64 %indvars.iv940, !dbg !2319
  %114 = load i32** %arrayidx368, align 8, !dbg !2319, !tbaa !1126
  %arrayidx369 = getelementptr inbounds i32* %114, i64 %indvars.iv944, !dbg !2319
  %115 = load i32* %arrayidx369, align 4, !dbg !2319, !tbaa !1132
  %arrayidx373 = getelementptr inbounds i32** %.pre1009, i64 %indvars.iv940, !dbg !2319
  %116 = load i32** %arrayidx373, align 8, !dbg !2319, !tbaa !1126
  %arrayidx374 = getelementptr inbounds i32* %116, i64 %indvars.iv944, !dbg !2319
  store i32 %115, i32* %arrayidx374, align 4, !dbg !2319, !tbaa !1132
  %arrayidx377 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 11, i64 %indvars.iv942, !dbg !2323
  %117 = load i32* %arrayidx377, align 4, !dbg !2323, !tbaa !1132
  %arrayidx380 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 10, i64 %indvars.iv942, !dbg !2323
  store i32 %117, i32* %arrayidx380, align 4, !dbg !2323, !tbaa !1132
  %indvars.iv.next941 = add i64 %indvars.iv940, 1, !dbg !2322
  %indvars.iv.next943 = add i64 %indvars.iv942, 1, !dbg !2322
  %inc383 = add nsw i32 %k.7876, 1, !dbg !2322
  tail call void @llvm.dbg.value(metadata !{i32 %inc383}, i64 0, metadata !457), !dbg !2322
  %118 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !dbg !2322, !tbaa !1132
  %119 = add nsw i32 %118, 3, !dbg !2322
  %120 = trunc i64 %indvars.iv940 to i32, !dbg !2322
  %cmp362 = icmp slt i32 %120, %119, !dbg !2322
  br i1 %cmp362, label %for.body364, label %for.inc385, !dbg !2322

for.inc385:                                       ; preds = %for.body364
  %.pre1008 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !dbg !2316, !tbaa !1132
  %indvars.iv.next945 = add i64 %indvars.iv944, 1, !dbg !2316
  %121 = add nsw i32 %.pre1008, 3, !dbg !2316
  %122 = trunc i64 %indvars.iv944 to i32, !dbg !2316
  %cmp355 = icmp slt i32 %122, %121, !dbg !2316
  br i1 %cmp355, label %for.body364.lr.ph, label %if.end390, !dbg !2316

if.end390:                                        ; preds = %for.inc385, %for.inc307, %for.inc342, %if.else345
  %123 = load i32* %MbaffFrameFlag, align 4, !dbg !2324, !tbaa !1132
  %tobool392 = icmp eq i32 %123, 0, !dbg !2324
  br i1 %tobool392, label %if.end662, label %if.then393, !dbg !2324

if.then393:                                       ; preds = %if.end390
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !2325), !dbg !2328
  %max_num_references502.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 9, !dbg !2330
  %124 = load i32* %max_num_references502.i, align 4, !dbg !2330, !tbaa !1132
  %cmp5503.i = icmp sgt i32 %124, 0, !dbg !2330
  %all_mv.i = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 16, !dbg !2335
  %all_mv22.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 71, !dbg !2335
  %125 = load %struct.InputParameters** @input, align 8, !dbg !2339, !tbaa !1126
  %BiPredMotionEstimation.i = getelementptr inbounds %struct.InputParameters* %125, i64 0, i32 39, !dbg !2339
  %bipred_mv1.i = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 17, !dbg !2340
  %bipred_mv1112.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 72, !dbg !2340
  %bipred_mv2.i = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 18, !dbg !2342
  %bipred_mv2199.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 73, !dbg !2342
  %pred_mv.i = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 15, !dbg !2343
  %pred_mv286.i = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 70, !dbg !2343
  br label %for.cond1.preheader.i, !dbg !2328

for.cond1.preheader.i:                            ; preds = %for.inc365.i, %if.then393
  %indvars.iv513.i = phi i64 [ 0, %if.then393 ], [ %indvars.iv.next514.i, %for.inc365.i ]
  br label %for.cond4.preheader.i, !dbg !2344

for.cond4.preheader.i:                            ; preds = %for.inc362.i, %for.cond1.preheader.i
  %indvars.iv509.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next510.i, %for.inc362.i ]
  br i1 %cmp5503.i, label %for.cond7.preheader.lr.ph.i, label %for.inc362.i, !dbg !2330

for.cond7.preheader.lr.ph.i:                      ; preds = %for.cond4.preheader.i
  %126 = load i16******* %all_mv.i, align 8, !dbg !2335, !tbaa !1126
  %arrayidx.i = getelementptr inbounds i16****** %126, i64 %indvars.iv513.i, !dbg !2335
  %127 = load i16****** %arrayidx.i, align 8, !dbg !2335, !tbaa !1126
  %arrayidx13.i = getelementptr inbounds i16***** %127, i64 %indvars.iv509.i, !dbg !2335
  %128 = load i16***** %arrayidx13.i, align 8, !dbg !2335, !tbaa !1126
  %129 = load i16**** %128, align 8, !dbg !2335, !tbaa !1126
  %130 = load i16******* %all_mv22.i, align 8, !dbg !2335, !tbaa !1126
  %arrayidx23.i = getelementptr inbounds i16****** %130, i64 %indvars.iv513.i, !dbg !2335
  %131 = load i16****** %arrayidx23.i, align 8, !dbg !2335, !tbaa !1126
  %arrayidx24.i = getelementptr inbounds i16***** %131, i64 %indvars.iv509.i, !dbg !2335
  %132 = load i16***** %arrayidx24.i, align 8, !dbg !2335, !tbaa !1126
  %133 = load i16**** %132, align 8, !dbg !2335, !tbaa !1126
  %arrayidx58.i = getelementptr inbounds i16**** %128, i64 1, !dbg !2345
  %134 = load i16**** %arrayidx58.i, align 8, !dbg !2345, !tbaa !1126
  %arrayidx69.i = getelementptr inbounds i16**** %132, i64 1, !dbg !2345
  %135 = load i16**** %arrayidx69.i, align 8, !dbg !2345, !tbaa !1126
  %136 = load i32* %BiPredMotionEstimation.i, align 4, !dbg !2339, !tbaa !1132
  %tobool.i = icmp ne i32 %136, 0, !dbg !2339
  %137 = load i16******* %pred_mv.i, align 8, !dbg !2343, !tbaa !1126
  %arrayidx276.i = getelementptr inbounds i16****** %137, i64 %indvars.iv513.i, !dbg !2343
  %138 = load i16****** %arrayidx276.i, align 8, !dbg !2343, !tbaa !1126
  %arrayidx277.i = getelementptr inbounds i16***** %138, i64 %indvars.iv509.i, !dbg !2343
  %139 = load i16***** %arrayidx277.i, align 8, !dbg !2343, !tbaa !1126
  %140 = load i16**** %139, align 8, !dbg !2343, !tbaa !1126
  %141 = load i16******* %pred_mv286.i, align 8, !dbg !2343, !tbaa !1126
  %arrayidx287.i = getelementptr inbounds i16****** %141, i64 %indvars.iv513.i, !dbg !2343
  %142 = load i16****** %arrayidx287.i, align 8, !dbg !2343, !tbaa !1126
  %arrayidx288.i = getelementptr inbounds i16***** %142, i64 %indvars.iv509.i, !dbg !2343
  %143 = load i16***** %arrayidx288.i, align 8, !dbg !2343, !tbaa !1126
  %144 = load i16**** %143, align 8, !dbg !2343, !tbaa !1126
  %arrayidx322.i = getelementptr inbounds i16**** %139, i64 1, !dbg !2346
  %145 = load i16**** %arrayidx322.i, align 8, !dbg !2346, !tbaa !1126
  %arrayidx333.i = getelementptr inbounds i16**** %143, i64 1, !dbg !2346
  %146 = load i16**** %arrayidx333.i, align 8, !dbg !2346, !tbaa !1126
  br label %for.cond7.preheader.i, !dbg !2330

for.cond7.preheader.i:                            ; preds = %for.inc359.i, %for.cond7.preheader.lr.ph.i
  %indvars.iv507.i = phi i64 [ 0, %for.cond7.preheader.lr.ph.i ], [ %indvars.iv.next508.i, %for.inc359.i ]
  %arrayidx15.i = getelementptr inbounds i16*** %129, i64 %indvars.iv507.i, !dbg !2335
  %147 = load i16*** %arrayidx15.i, align 8, !dbg !2335, !tbaa !1126
  %arrayidx26.i = getelementptr inbounds i16*** %133, i64 %indvars.iv507.i, !dbg !2335
  %148 = load i16*** %arrayidx26.i, align 8, !dbg !2335, !tbaa !1126
  %arrayidx59.i = getelementptr inbounds i16*** %134, i64 %indvars.iv507.i, !dbg !2345
  %149 = load i16*** %arrayidx59.i, align 8, !dbg !2345, !tbaa !1126
  %arrayidx70.i = getelementptr inbounds i16*** %135, i64 %indvars.iv507.i, !dbg !2345
  %150 = load i16*** %arrayidx70.i, align 8, !dbg !2345, !tbaa !1126
  %151 = trunc i64 %indvars.iv507.i to i32, !dbg !2339
  %cmp95.i = icmp eq i32 %151, 1, !dbg !2339
  %or.cond.i = and i1 %tobool.i, %cmp95.i, !dbg !2339
  %arrayidx279.i = getelementptr inbounds i16*** %140, i64 %indvars.iv507.i, !dbg !2343
  %152 = load i16*** %arrayidx279.i, align 8, !dbg !2343, !tbaa !1126
  %arrayidx290.i = getelementptr inbounds i16*** %144, i64 %indvars.iv507.i, !dbg !2343
  %153 = load i16*** %arrayidx290.i, align 8, !dbg !2343, !tbaa !1126
  %arrayidx323.i = getelementptr inbounds i16*** %145, i64 %indvars.iv507.i, !dbg !2346
  %154 = load i16*** %arrayidx323.i, align 8, !dbg !2346, !tbaa !1126
  %arrayidx334.i = getelementptr inbounds i16*** %146, i64 %indvars.iv507.i, !dbg !2346
  %155 = load i16*** %arrayidx334.i, align 8, !dbg !2346, !tbaa !1126
  br label %for.body9.i, !dbg !2347

for.body9.i:                                      ; preds = %if.end.i, %for.cond7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond7.preheader.i ], [ %indvars.iv.next.i, %if.end.i ]
  %arrayidx16.i = getelementptr inbounds i16** %147, i64 %indvars.iv.i, !dbg !2335
  %156 = load i16** %arrayidx16.i, align 8, !dbg !2335, !tbaa !1126
  %157 = load i16* %156, align 2, !dbg !2335, !tbaa !1148
  %arrayidx27.i = getelementptr inbounds i16** %148, i64 %indvars.iv.i, !dbg !2335
  %158 = load i16** %arrayidx27.i, align 8, !dbg !2335, !tbaa !1126
  store i16 %157, i16* %158, align 2, !dbg !2335, !tbaa !1148
  %arrayidx39.i = getelementptr inbounds i16* %156, i64 1, !dbg !2348
  %159 = load i16* %arrayidx39.i, align 2, !dbg !2348, !tbaa !1148
  %arrayidx50.i = getelementptr inbounds i16* %158, i64 1, !dbg !2348
  store i16 %159, i16* %arrayidx50.i, align 2, !dbg !2348, !tbaa !1148
  %arrayidx60.i = getelementptr inbounds i16** %149, i64 %indvars.iv.i, !dbg !2345
  %160 = load i16** %arrayidx60.i, align 8, !dbg !2345, !tbaa !1126
  %161 = load i16* %160, align 2, !dbg !2345, !tbaa !1148
  %arrayidx71.i = getelementptr inbounds i16** %150, i64 %indvars.iv.i, !dbg !2345
  %162 = load i16** %arrayidx71.i, align 8, !dbg !2345, !tbaa !1126
  store i16 %161, i16* %162, align 2, !dbg !2345, !tbaa !1148
  %arrayidx83.i = getelementptr inbounds i16* %160, i64 1, !dbg !2349
  %163 = load i16* %arrayidx83.i, align 2, !dbg !2349, !tbaa !1148
  %arrayidx94.i = getelementptr inbounds i16* %162, i64 1, !dbg !2349
  store i16 %163, i16* %arrayidx94.i, align 2, !dbg !2349, !tbaa !1148
  br i1 %or.cond.i, label %land.lhs.true96.i, label %if.end.i, !dbg !2339

land.lhs.true96.i:                                ; preds = %for.body9.i
  %164 = load i32* %type, align 4, !dbg !2339, !tbaa !1132
  %cmp97.i = icmp eq i32 %164, 1, !dbg !2339
  br i1 %cmp97.i, label %if.then.i, label %if.end.i, !dbg !2339

if.then.i:                                        ; preds = %land.lhs.true96.i
  %165 = load i16******* %bipred_mv1.i, align 8, !dbg !2340, !tbaa !1126
  %arrayidx102.i = getelementptr inbounds i16****** %165, i64 %indvars.iv513.i, !dbg !2340
  %166 = load i16****** %arrayidx102.i, align 8, !dbg !2340, !tbaa !1126
  %arrayidx103.i = getelementptr inbounds i16***** %166, i64 %indvars.iv509.i, !dbg !2340
  %167 = load i16***** %arrayidx103.i, align 8, !dbg !2340, !tbaa !1126
  %168 = load i16**** %167, align 8, !dbg !2340, !tbaa !1126
  %arrayidx105.i = getelementptr inbounds i16*** %168, i64 %indvars.iv507.i, !dbg !2340
  %169 = load i16*** %arrayidx105.i, align 8, !dbg !2340, !tbaa !1126
  %arrayidx106.i = getelementptr inbounds i16** %169, i64 %indvars.iv.i, !dbg !2340
  %170 = load i16** %arrayidx106.i, align 8, !dbg !2340, !tbaa !1126
  %171 = load i16* %170, align 2, !dbg !2340, !tbaa !1148
  %172 = load i16******* %bipred_mv1112.i, align 8, !dbg !2340, !tbaa !1126
  %arrayidx113.i = getelementptr inbounds i16****** %172, i64 %indvars.iv513.i, !dbg !2340
  %173 = load i16****** %arrayidx113.i, align 8, !dbg !2340, !tbaa !1126
  %arrayidx114.i = getelementptr inbounds i16***** %173, i64 %indvars.iv509.i, !dbg !2340
  %174 = load i16***** %arrayidx114.i, align 8, !dbg !2340, !tbaa !1126
  %175 = load i16**** %174, align 8, !dbg !2340, !tbaa !1126
  %arrayidx116.i = getelementptr inbounds i16*** %175, i64 %indvars.iv507.i, !dbg !2340
  %176 = load i16*** %arrayidx116.i, align 8, !dbg !2340, !tbaa !1126
  %arrayidx117.i = getelementptr inbounds i16** %176, i64 %indvars.iv.i, !dbg !2340
  %177 = load i16** %arrayidx117.i, align 8, !dbg !2340, !tbaa !1126
  store i16 %171, i16* %177, align 2, !dbg !2340, !tbaa !1148
  %arrayidx129.i = getelementptr inbounds i16* %170, i64 1, !dbg !2350
  %178 = load i16* %arrayidx129.i, align 2, !dbg !2350, !tbaa !1148
  %arrayidx140.i = getelementptr inbounds i16* %177, i64 1, !dbg !2350
  store i16 %178, i16* %arrayidx140.i, align 2, !dbg !2350, !tbaa !1148
  %arrayidx148.i = getelementptr inbounds i16**** %167, i64 1, !dbg !2351
  %179 = load i16**** %arrayidx148.i, align 8, !dbg !2351, !tbaa !1126
  %arrayidx149.i = getelementptr inbounds i16*** %179, i64 %indvars.iv507.i, !dbg !2351
  %180 = load i16*** %arrayidx149.i, align 8, !dbg !2351, !tbaa !1126
  %arrayidx150.i = getelementptr inbounds i16** %180, i64 %indvars.iv.i, !dbg !2351
  %181 = load i16** %arrayidx150.i, align 8, !dbg !2351, !tbaa !1126
  %182 = load i16* %181, align 2, !dbg !2351, !tbaa !1148
  %arrayidx159.i = getelementptr inbounds i16**** %174, i64 1, !dbg !2351
  %183 = load i16**** %arrayidx159.i, align 8, !dbg !2351, !tbaa !1126
  %arrayidx160.i = getelementptr inbounds i16*** %183, i64 %indvars.iv507.i, !dbg !2351
  %184 = load i16*** %arrayidx160.i, align 8, !dbg !2351, !tbaa !1126
  %arrayidx161.i = getelementptr inbounds i16** %184, i64 %indvars.iv.i, !dbg !2351
  %185 = load i16** %arrayidx161.i, align 8, !dbg !2351, !tbaa !1126
  store i16 %182, i16* %185, align 2, !dbg !2351, !tbaa !1148
  %arrayidx173.i = getelementptr inbounds i16* %181, i64 1, !dbg !2352
  %186 = load i16* %arrayidx173.i, align 2, !dbg !2352, !tbaa !1148
  %arrayidx184.i = getelementptr inbounds i16* %185, i64 1, !dbg !2352
  store i16 %186, i16* %arrayidx184.i, align 2, !dbg !2352, !tbaa !1148
  %187 = load i16******* %bipred_mv2.i, align 8, !dbg !2342, !tbaa !1126
  %arrayidx189.i = getelementptr inbounds i16****** %187, i64 %indvars.iv513.i, !dbg !2342
  %188 = load i16****** %arrayidx189.i, align 8, !dbg !2342, !tbaa !1126
  %arrayidx190.i = getelementptr inbounds i16***** %188, i64 %indvars.iv509.i, !dbg !2342
  %189 = load i16***** %arrayidx190.i, align 8, !dbg !2342, !tbaa !1126
  %190 = load i16**** %189, align 8, !dbg !2342, !tbaa !1126
  %arrayidx192.i = getelementptr inbounds i16*** %190, i64 %indvars.iv507.i, !dbg !2342
  %191 = load i16*** %arrayidx192.i, align 8, !dbg !2342, !tbaa !1126
  %arrayidx193.i = getelementptr inbounds i16** %191, i64 %indvars.iv.i, !dbg !2342
  %192 = load i16** %arrayidx193.i, align 8, !dbg !2342, !tbaa !1126
  %193 = load i16* %192, align 2, !dbg !2342, !tbaa !1148
  %194 = load i16******* %bipred_mv2199.i, align 8, !dbg !2342, !tbaa !1126
  %arrayidx200.i = getelementptr inbounds i16****** %194, i64 %indvars.iv513.i, !dbg !2342
  %195 = load i16****** %arrayidx200.i, align 8, !dbg !2342, !tbaa !1126
  %arrayidx201.i = getelementptr inbounds i16***** %195, i64 %indvars.iv509.i, !dbg !2342
  %196 = load i16***** %arrayidx201.i, align 8, !dbg !2342, !tbaa !1126
  %197 = load i16**** %196, align 8, !dbg !2342, !tbaa !1126
  %arrayidx203.i = getelementptr inbounds i16*** %197, i64 %indvars.iv507.i, !dbg !2342
  %198 = load i16*** %arrayidx203.i, align 8, !dbg !2342, !tbaa !1126
  %arrayidx204.i = getelementptr inbounds i16** %198, i64 %indvars.iv.i, !dbg !2342
  %199 = load i16** %arrayidx204.i, align 8, !dbg !2342, !tbaa !1126
  store i16 %193, i16* %199, align 2, !dbg !2342, !tbaa !1148
  %arrayidx216.i = getelementptr inbounds i16* %192, i64 1, !dbg !2353
  %200 = load i16* %arrayidx216.i, align 2, !dbg !2353, !tbaa !1148
  %arrayidx227.i = getelementptr inbounds i16* %199, i64 1, !dbg !2353
  store i16 %200, i16* %arrayidx227.i, align 2, !dbg !2353, !tbaa !1148
  %arrayidx235.i = getelementptr inbounds i16**** %189, i64 1, !dbg !2354
  %201 = load i16**** %arrayidx235.i, align 8, !dbg !2354, !tbaa !1126
  %arrayidx236.i = getelementptr inbounds i16*** %201, i64 %indvars.iv507.i, !dbg !2354
  %202 = load i16*** %arrayidx236.i, align 8, !dbg !2354, !tbaa !1126
  %arrayidx237.i = getelementptr inbounds i16** %202, i64 %indvars.iv.i, !dbg !2354
  %203 = load i16** %arrayidx237.i, align 8, !dbg !2354, !tbaa !1126
  %204 = load i16* %203, align 2, !dbg !2354, !tbaa !1148
  %arrayidx246.i = getelementptr inbounds i16**** %196, i64 1, !dbg !2354
  %205 = load i16**** %arrayidx246.i, align 8, !dbg !2354, !tbaa !1126
  %arrayidx247.i = getelementptr inbounds i16*** %205, i64 %indvars.iv507.i, !dbg !2354
  %206 = load i16*** %arrayidx247.i, align 8, !dbg !2354, !tbaa !1126
  %arrayidx248.i = getelementptr inbounds i16** %206, i64 %indvars.iv.i, !dbg !2354
  %207 = load i16** %arrayidx248.i, align 8, !dbg !2354, !tbaa !1126
  store i16 %204, i16* %207, align 2, !dbg !2354, !tbaa !1148
  %arrayidx260.i = getelementptr inbounds i16* %203, i64 1, !dbg !2355
  %208 = load i16* %arrayidx260.i, align 2, !dbg !2355, !tbaa !1148
  %arrayidx271.i = getelementptr inbounds i16* %207, i64 1, !dbg !2355
  store i16 %208, i16* %arrayidx271.i, align 2, !dbg !2355, !tbaa !1148
  br label %if.end.i, !dbg !2356

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true96.i, %for.body9.i
  %arrayidx280.i = getelementptr inbounds i16** %152, i64 %indvars.iv.i, !dbg !2343
  %209 = load i16** %arrayidx280.i, align 8, !dbg !2343, !tbaa !1126
  %210 = load i16* %209, align 2, !dbg !2343, !tbaa !1148
  %arrayidx291.i = getelementptr inbounds i16** %153, i64 %indvars.iv.i, !dbg !2343
  %211 = load i16** %arrayidx291.i, align 8, !dbg !2343, !tbaa !1126
  store i16 %210, i16* %211, align 2, !dbg !2343, !tbaa !1148
  %arrayidx303.i = getelementptr inbounds i16* %209, i64 1, !dbg !2357
  %212 = load i16* %arrayidx303.i, align 2, !dbg !2357, !tbaa !1148
  %arrayidx314.i = getelementptr inbounds i16* %211, i64 1, !dbg !2357
  store i16 %212, i16* %arrayidx314.i, align 2, !dbg !2357, !tbaa !1148
  %arrayidx324.i = getelementptr inbounds i16** %154, i64 %indvars.iv.i, !dbg !2346
  %213 = load i16** %arrayidx324.i, align 8, !dbg !2346, !tbaa !1126
  %214 = load i16* %213, align 2, !dbg !2346, !tbaa !1148
  %arrayidx335.i = getelementptr inbounds i16** %155, i64 %indvars.iv.i, !dbg !2346
  %215 = load i16** %arrayidx335.i, align 8, !dbg !2346, !tbaa !1126
  store i16 %214, i16* %215, align 2, !dbg !2346, !tbaa !1148
  %arrayidx347.i = getelementptr inbounds i16* %213, i64 1, !dbg !2358
  %216 = load i16* %arrayidx347.i, align 2, !dbg !2358, !tbaa !1148
  %arrayidx358.i = getelementptr inbounds i16* %215, i64 1, !dbg !2358
  store i16 %216, i16* %arrayidx358.i, align 2, !dbg !2358, !tbaa !1148
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !2347
  %lftr.wideiv922 = trunc i64 %indvars.iv.next.i to i32, !dbg !2347
  %exitcond923 = icmp eq i32 %lftr.wideiv922, 9, !dbg !2347
  br i1 %exitcond923, label %for.inc359.i, label %for.body9.i, !dbg !2347

for.inc359.i:                                     ; preds = %if.end.i
  %indvars.iv.next508.i = add i64 %indvars.iv507.i, 1, !dbg !2330
  %217 = trunc i64 %indvars.iv.next508.i to i32, !dbg !2330
  %cmp5.i = icmp slt i32 %217, %124, !dbg !2330
  br i1 %cmp5.i, label %for.cond7.preheader.i, label %for.inc362.i, !dbg !2330

for.inc362.i:                                     ; preds = %for.inc359.i, %for.cond4.preheader.i
  %indvars.iv.next510.i = add i64 %indvars.iv509.i, 1, !dbg !2344
  %lftr.wideiv924 = trunc i64 %indvars.iv.next510.i to i32, !dbg !2344
  %exitcond925 = icmp eq i32 %lftr.wideiv924, 4, !dbg !2344
  br i1 %exitcond925, label %for.inc365.i, label %for.cond4.preheader.i, !dbg !2344

for.inc365.i:                                     ; preds = %for.inc362.i
  %indvars.iv.next514.i = add i64 %indvars.iv513.i, 1, !dbg !2328
  %lftr.wideiv926 = trunc i64 %indvars.iv.next514.i to i32, !dbg !2328
  %exitcond927 = icmp eq i32 %lftr.wideiv926, 4, !dbg !2328
  br i1 %exitcond927, label %copy_motion_vectors_MB.exit, label %for.cond1.preheader.i, !dbg !2328

copy_motion_vectors_MB.exit:                      ; preds = %for.inc365.i
  %218 = load i32* %mb_type6, align 4, !dbg !2359, !tbaa !1132
  switch i32 %218, label %for.cond410.preheader [
    i32 9, label %for.cond600.preheader
    i32 10, label %for.cond600.preheader
    i32 13, label %for.cond600.preheader
  ], !dbg !2359

for.cond600.preheader:                            ; preds = %copy_motion_vectors_MB.exit, %copy_motion_vectors_MB.exit, %copy_motion_vectors_MB.exit
  %219 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !dbg !2360, !tbaa !1132
  %220 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !dbg !2360, !tbaa !1132
  %mv614 = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 35, !dbg !2360
  %221 = load i16***** %mv614, align 8, !dbg !2360, !tbaa !1126
  %222 = load i16**** %221, align 8, !dbg !2360, !tbaa !1126
  %223 = sext i32 %220 to i64, !dbg !2365
  %224 = sext i32 %219 to i64, !dbg !2365
  br label %for.cond604.preheader, !dbg !2365

for.cond410.preheader:                            ; preds = %copy_motion_vectors_MB.exit, %for.inc596
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %for.inc596 ], [ 0, %copy_motion_vectors_MB.exit ]
  %225 = trunc i64 %indvars.iv906 to i32, !dbg !2366
  %div414 = sdiv i32 %225, 2, !dbg !2366
  %mul = shl i32 %div414, 1, !dbg !2366
  br label %for.body413, !dbg !2371

for.body413:                                      ; preds = %for.inc593, %for.cond410.preheader
  %indvars.iv = phi i64 [ 0, %for.cond410.preheader ], [ %indvars.iv.next, %for.inc593 ]
  %226 = trunc i64 %indvars.iv to i32, !dbg !2366
  %div = sdiv i32 %226, 2, !dbg !2366
  %add415 = add nsw i32 %mul, %div, !dbg !2366
  %idxprom416 = sext i32 %add415 to i64, !dbg !2366
  %arrayidx418 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 14, i64 %idxprom416, !dbg !2366
  %227 = load i32* %arrayidx418, align 4, !dbg !2366, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !{i32 %227}, i64 0, metadata !461), !dbg !2366
  %arrayidx425 = getelementptr inbounds %struct.macroblock* %2, i64 %idxprom, i32 15, i64 %idxprom416, !dbg !2372
  %228 = load i32* %arrayidx425, align 4, !dbg !2372, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !{i32 %228}, i64 0, metadata !462), !dbg !2372
  %cmp426 = icmp eq i32 %228, 1, !dbg !2373
  br i1 %cmp426, label %if.else483, label %if.then428, !dbg !2373

if.then428:                                       ; preds = %for.body413
  %idxprom429 = sext i32 %227 to i64, !dbg !2374
  %arrayidx435 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 19, i64 0, i64 %indvars.iv906, i64 %indvars.iv, !dbg !2374
  %229 = load i16* %arrayidx435, align 2, !dbg !2374, !tbaa !1148
  %idxprom436 = sext i16 %229 to i64, !dbg !2374
  %230 = load i16******* %all_mv.i, align 8, !dbg !2374, !tbaa !1126
  %arrayidx439 = getelementptr inbounds i16****** %230, i64 %indvars.iv, !dbg !2374
  %231 = load i16****** %arrayidx439, align 8, !dbg !2374, !tbaa !1126
  %arrayidx440 = getelementptr inbounds i16***** %231, i64 %indvars.iv906, !dbg !2374
  %232 = load i16***** %arrayidx440, align 8, !dbg !2374, !tbaa !1126
  %233 = load i16**** %232, align 8, !dbg !2374, !tbaa !1126
  %arrayidx442 = getelementptr inbounds i16*** %233, i64 %idxprom436, !dbg !2374
  %234 = load i16*** %arrayidx442, align 8, !dbg !2374, !tbaa !1126
  %arrayidx443 = getelementptr inbounds i16** %234, i64 %idxprom429, !dbg !2374
  %235 = load i16** %arrayidx443, align 8, !dbg !2374, !tbaa !1126
  %236 = load i16* %235, align 2, !dbg !2374, !tbaa !1148
  %237 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !dbg !2374, !tbaa !1132
  %add446 = add nsw i32 %237, %225, !dbg !2374
  %idxprom447 = sext i32 %add446 to i64, !dbg !2374
  %238 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !dbg !2374, !tbaa !1132
  %add449 = add nsw i32 %238, %226, !dbg !2374
  %idxprom450 = sext i32 %add449 to i64, !dbg !2374
  %mv = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 35, !dbg !2374
  %239 = load i16***** %mv, align 8, !dbg !2374, !tbaa !1126
  %240 = load i16**** %239, align 8, !dbg !2374, !tbaa !1126
  %arrayidx452 = getelementptr inbounds i16*** %240, i64 %idxprom450, !dbg !2374
  %241 = load i16*** %arrayidx452, align 8, !dbg !2374, !tbaa !1126
  %arrayidx453 = getelementptr inbounds i16** %241, i64 %idxprom447, !dbg !2374
  %242 = load i16** %arrayidx453, align 8, !dbg !2374, !tbaa !1126
  store i16 %236, i16* %242, align 2, !dbg !2374, !tbaa !1148
  %243 = load i16* %arrayidx435, align 2, !dbg !2376, !tbaa !1148
  %idxprom462 = sext i16 %243 to i64, !dbg !2376
  %arrayidx469 = getelementptr inbounds i16*** %233, i64 %idxprom462, !dbg !2376
  %244 = load i16*** %arrayidx469, align 8, !dbg !2376, !tbaa !1126
  %arrayidx470 = getelementptr inbounds i16** %244, i64 %idxprom429, !dbg !2376
  %245 = load i16** %arrayidx470, align 8, !dbg !2376, !tbaa !1126
  %arrayidx471 = getelementptr inbounds i16* %245, i64 1, !dbg !2376
  %246 = load i16* %arrayidx471, align 2, !dbg !2376, !tbaa !1148
  %arrayidx482 = getelementptr inbounds i16* %242, i64 1, !dbg !2376
  store i16 %246, i16* %arrayidx482, align 2, !dbg !2376, !tbaa !1148
  br label %if.end506, !dbg !2377

if.else483:                                       ; preds = %for.body413
  %247 = load i32* %block_y.phi.trans.insert.phi.trans.insert, align 4, !dbg !2378, !tbaa !1132
  %add485 = add nsw i32 %247, %225, !dbg !2378
  %idxprom486 = sext i32 %add485 to i64, !dbg !2378
  %248 = load i32* %block_x.phi.trans.insert.phi.trans.insert, align 4, !dbg !2378, !tbaa !1132
  %add488 = add nsw i32 %248, %226, !dbg !2378
  %idxprom489 = sext i32 %add488 to i64, !dbg !2378
  %mv490 = getelementptr inbounds %struct.storable_picture* %.pre.pre, i64 0, i32 35, !dbg !2378
  %249 = load i16***** %mv490, align 8, !dbg !2378, !tbaa !1126
  %250 = load i16**** %249, align 8, !dbg !2378, !tbaa !1126
  %arrayidx492 = getelementptr inbounds i16*** %250, i64 %idxprom489, !dbg !2378
  %251 = load i16*** %arrayidx492, align 8, !dbg !2378, !tbaa !1126
  %arrayidx493 = getelementptr inbounds i16** %251, i64 %idxprom486, !dbg !2378
  %252 = load i16** %arrayidx493, align 8, !dbg !2378, !tbaa !1126
  store i16 0, i16* %252, align 2, !dbg !2378, !tbaa !1148
  %arrayidx505 = getelementptr inbounds i16* %252, i64 1, !dbg !2380
  store i16 0, i16* %arrayidx505, align 2, !dbg !2380, !tbaa !1148
  br label %if.end506

if.end506:                                        ; preds = %if.else483, %if.then428
  %253 = phi i16**** [ %249, %if.else483 ], [ %239, %if.then428 ]
  %254 = phi i32 [ %248, %if.else483 ], [ %238, %if.then428 ]
  %255 = phi i32 [ %247, %if.else483 ], [ %237, %if.then428 ]
  br i1 %cmp, label %if.then508, label %for.inc593, !dbg !2381

if.then508:                                       ; preds = %if.end506
  %cmp509 = icmp eq i32 %228, 0, !dbg !2382
  br i1 %cmp509, label %if.else568, label %if.then511, !dbg !2382

if.then511:                                       ; preds = %if.then508
  %idxprom512 = sext i32 %227 to i64, !dbg !2384
  %arrayidx518 = getelementptr inbounds %struct.RD_DATA* %8, i64 0, i32 19, i64 1, i64 %indvars.iv906, i64 %indvars.iv, !dbg !2384
  %256 = load i16* %arrayidx518, align 2, !dbg !2384, !tbaa !1148
  %idxprom519 = sext i16 %256 to i64, !dbg !2384
  %257 = load i16******* %all_mv.i, align 8, !dbg !2384, !tbaa !1126
  %arrayidx523 = getelementptr inbounds i16****** %257, i64 %indvars.iv, !dbg !2384
  %258 = load i16****** %arrayidx523, align 8, !dbg !2384, !tbaa !1126
  %arrayidx524 = getelementptr inbounds i16***** %258, i64 %indvars.iv906, !dbg !2384
  %259 = load i16***** %arrayidx524, align 8, !dbg !2384, !tbaa !1126
  %arrayidx525 = getelementptr inbounds i16**** %259, i64 1, !dbg !2384
  %260 = load i16**** %arrayidx525, align 8, !dbg !2384, !tbaa !1126
  %arrayidx526 = getelementptr inbounds i16*** %260, i64 %idxprom519, !dbg !2384
  %261 = load i16*** %arrayidx526, align 8, !dbg !2384, !tbaa !1126
  %arrayidx527 = getelementptr inbounds i16** %261, i64 %idxprom512, !dbg !2384
  %262 = load i16** %arrayidx527, align 8, !dbg !2384, !tbaa !1126
  %263 = load i16* %262, align 2, !dbg !2384, !tbaa !1148
  %add530 = add nsw i32 %255, %225, !dbg !2384
  %idxprom531 = sext i32 %add530 to i64, !dbg !2384
  %add533 = add nsw i32 %254, %226, !dbg !2384
  %idxprom534 = sext i32 %add533 to i64, !dbg !2384
  %arrayidx536 = getelementptr inbounds i16**** %253, i64 1, !dbg !2384
  %264 = load i16**** %arrayidx536, align 8, !dbg !2384, !tbaa !1126
  %arrayidx537 = getelementptr inbounds i16*** %264, i64 %idxprom534, !dbg !2384
  %265 = load i16*** %arrayidx537, align 8, !dbg !2384, !tbaa !1126
  %arrayidx538 = getelementptr inbounds i16** %265, i64 %idxprom531, !dbg !2384
  %266 = load i16** %arrayidx538, align 8, !dbg !2384, !tbaa !1126
  store i16 %263, i16* %266, align 2, !dbg !2384, !tbaa !1148
  %267 = load i16* %arrayidx518, align 2, !dbg !2386, !tbaa !1148
  %idxprom547 = sext i16 %267 to i64, !dbg !2386
  %arrayidx554 = getelementptr inbounds i16*** %260, i64 %idxprom547, !dbg !2386
  %268 = load i16*** %arrayidx554, align 8, !dbg !2386, !tbaa !1126
  %arrayidx555 = getelementptr inbounds i16** %268, i64 %idxprom512, !dbg !2386
  %269 = load i16** %arrayidx555, align 8, !dbg !2386, !tbaa !1126
  %arrayidx556 = getelementptr inbounds i16* %269, i64 1, !dbg !2386
  %270 = load i16* %arrayidx556, align 2, !dbg !2386, !tbaa !1148
  %arrayidx567 = getelementptr inbounds i16* %266, i64 1, !dbg !2386
  store i16 %270, i16* %arrayidx567, align 2, !dbg !2386, !tbaa !1148
  br label %for.inc593, !dbg !2387

if.else568:                                       ; preds = %if.then508
  %add570 = add nsw i32 %255, %225, !dbg !2388
  %idxprom571 = sext i32 %add570 to i64, !dbg !2388
  %add573 = add nsw i32 %254, %226, !dbg !2388
  %idxprom574 = sext i32 %add573 to i64, !dbg !2388
  %arrayidx576 = getelementptr inbounds i16**** %253, i64 1, !dbg !2388
  %271 = load i16**** %arrayidx576, align 8, !dbg !2388, !tbaa !1126
  %arrayidx577 = getelementptr inbounds i16*** %271, i64 %idxprom574, !dbg !2388
  %272 = load i16*** %arrayidx577, align 8, !dbg !2388, !tbaa !1126
  %arrayidx578 = getelementptr inbounds i16** %272, i64 %idxprom571, !dbg !2388
  %273 = load i16** %arrayidx578, align 8, !dbg !2388, !tbaa !1126
  store i16 0, i16* %273, align 2, !dbg !2388, !tbaa !1148
  %arrayidx590 = getelementptr inbounds i16* %273, i64 1, !dbg !2390
  store i16 0, i16* %arrayidx590, align 2, !dbg !2390, !tbaa !1148
  br label %for.inc593

for.inc593:                                       ; preds = %if.end506, %if.else568, %if.then511
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2371
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2371
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !2371
  br i1 %exitcond, label %for.inc596, label %for.body413, !dbg !2371

for.inc596:                                       ; preds = %for.inc593
  %indvars.iv.next907 = add i64 %indvars.iv906, 1, !dbg !2391
  %lftr.wideiv908 = trunc i64 %indvars.iv.next907 to i32, !dbg !2391
  %exitcond909 = icmp eq i32 %lftr.wideiv908, 4, !dbg !2391
  br i1 %exitcond909, label %if.end662, label %for.cond410.preheader, !dbg !2391

for.cond604.preheader:                            ; preds = %for.inc658, %for.cond600.preheader
  %indvars.iv916 = phi i64 [ 0, %for.cond600.preheader ], [ %indvars.iv.next917, %for.inc658 ]
  %274 = add nsw i64 %224, %indvars.iv916, !dbg !2360
  br label %for.body607, !dbg !2392

for.body607:                                      ; preds = %for.inc655, %for.cond604.preheader
  %indvars.iv910 = phi i64 [ 0, %for.cond604.preheader ], [ %indvars.iv.next911, %for.inc655 ]
  %275 = add nsw i64 %223, %indvars.iv910, !dbg !2360
  %arrayidx616 = getelementptr inbounds i16*** %222, i64 %275, !dbg !2360
  %276 = load i16*** %arrayidx616, align 8, !dbg !2360, !tbaa !1126
  %arrayidx617 = getelementptr inbounds i16** %276, i64 %274, !dbg !2360
  %277 = load i16** %arrayidx617, align 8, !dbg !2360, !tbaa !1126
  store i16 0, i16* %277, align 2, !dbg !2360, !tbaa !1148
  %arrayidx629 = getelementptr inbounds i16* %277, i64 1, !dbg !2393
  store i16 0, i16* %arrayidx629, align 2, !dbg !2393, !tbaa !1148
  br i1 %cmp, label %if.then631, label %for.inc655, !dbg !2394

if.then631:                                       ; preds = %for.body607
  %278 = trunc i64 %indvars.iv916 to i32, !dbg !2395
  %add633 = add nsw i32 %219, %278, !dbg !2395
  %idxprom634 = sext i32 %add633 to i64, !dbg !2395
  %279 = trunc i64 %indvars.iv910 to i32, !dbg !2395
  %add636 = add nsw i32 %220, %279, !dbg !2395
  %idxprom637 = sext i32 %add636 to i64, !dbg !2395
  %arrayidx639 = getelementptr inbounds i16**** %221, i64 1, !dbg !2395
  %280 = load i16**** %arrayidx639, align 8, !dbg !2395, !tbaa !1126
  %arrayidx640 = getelementptr inbounds i16*** %280, i64 %idxprom637, !dbg !2395
  %281 = load i16*** %arrayidx640, align 8, !dbg !2395, !tbaa !1126
  %arrayidx641 = getelementptr inbounds i16** %281, i64 %idxprom634, !dbg !2395
  %282 = load i16** %arrayidx641, align 8, !dbg !2395, !tbaa !1126
  store i16 0, i16* %282, align 2, !dbg !2395, !tbaa !1148
  %arrayidx653 = getelementptr inbounds i16* %282, i64 1, !dbg !2397
  store i16 0, i16* %arrayidx653, align 2, !dbg !2397, !tbaa !1148
  br label %for.inc655, !dbg !2398

for.inc655:                                       ; preds = %for.body607, %if.then631
  %indvars.iv.next911 = add i64 %indvars.iv910, 1, !dbg !2392
  %lftr.wideiv914 = trunc i64 %indvars.iv.next911 to i32, !dbg !2392
  %exitcond915 = icmp eq i32 %lftr.wideiv914, 4, !dbg !2392
  br i1 %exitcond915, label %for.inc658, label %for.body607, !dbg !2392

for.inc658:                                       ; preds = %for.inc655
  %indvars.iv.next917 = add i64 %indvars.iv916, 1, !dbg !2365
  %lftr.wideiv920 = trunc i64 %indvars.iv.next917 to i32, !dbg !2365
  %exitcond921 = icmp eq i32 %lftr.wideiv920, 4, !dbg !2365
  br i1 %exitcond921, label %if.end662, label %for.cond604.preheader, !dbg !2365

if.end662:                                        ; preds = %for.inc658, %for.inc596, %if.end390
  ret void, !dbg !2399
}

; Function Attrs: nounwind optsize uwtable
define void @buf2img(i16** nocapture %imgX, i8* nocapture %buf, i32 %size_x, i32 %size_y, i32 %symbol_size_in_bytes) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16** %imgX}, i64 0, metadata !469), !dbg !2400
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !470), !dbg !2400
  tail call void @llvm.dbg.value(metadata !{i32 %size_x}, i64 0, metadata !471), !dbg !2400
  tail call void @llvm.dbg.value(metadata !{i32 %size_y}, i64 0, metadata !472), !dbg !2400
  tail call void @llvm.dbg.value(metadata !{i32 %symbol_size_in_bytes}, i64 0, metadata !473), !dbg !2400
  %conv = sext i32 %symbol_size_in_bytes to i64, !dbg !2401
  %cmp = icmp ugt i32 %symbol_size_in_bytes, 2, !dbg !2401
  br i1 %cmp, label %if.then, label %if.end, !dbg !2401

if.then:                                          ; preds = %entry
  tail call void @error(i8* getelementptr inbounds ([110 x i8]* @.str3, i64 0, i64 0), i32 500) #7, !dbg !2402
  br label %if.end, !dbg !2404

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i32 (...)* @testEndian() #7, !dbg !2405
  %tobool = icmp eq i32 %call, 0, !dbg !2405
  br i1 %tobool, label %for.cond78.preheader, label %if.then2, !dbg !2405

for.cond78.preheader:                             ; preds = %if.end
  %cmp79166 = icmp sgt i32 %size_y, 0, !dbg !2407
  br i1 %cmp79166, label %for.cond82.preheader.lr.ph, label %if.end106, !dbg !2407

for.cond82.preheader.lr.ph:                       ; preds = %for.cond78.preheader
  %cmp83164 = icmp sgt i32 %size_x, 0, !dbg !2410
  br label %for.cond82.preheader, !dbg !2407

if.then2:                                         ; preds = %if.end
  switch i32 %symbol_size_in_bytes, label %sw.default [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond18.preheader
    i32 4, label %for.cond43.preheader
  ], !dbg !2412

for.cond43.preheader:                             ; preds = %if.then2
  %cmp44181 = icmp sgt i32 %size_y, 0, !dbg !2414
  br i1 %cmp44181, label %for.cond47.preheader.lr.ph, label %sw.default, !dbg !2414

for.cond47.preheader.lr.ph:                       ; preds = %for.cond43.preheader
  %cmp48178 = icmp sgt i32 %size_x, 0, !dbg !2418
  br label %for.cond47.preheader, !dbg !2414

for.cond18.preheader:                             ; preds = %if.then2
  %cmp19176 = icmp sgt i32 %size_y, 0, !dbg !2420
  br i1 %cmp19176, label %for.cond22.preheader.lr.ph, label %if.end106, !dbg !2420

for.cond22.preheader.lr.ph:                       ; preds = %for.cond18.preheader
  %cmp23173 = icmp sgt i32 %size_x, 0, !dbg !2423
  br label %for.cond22.preheader, !dbg !2420

for.cond.preheader:                               ; preds = %if.then2
  %cmp3171 = icmp sgt i32 %size_y, 0, !dbg !2425
  br i1 %cmp3171, label %for.cond5.preheader.lr.ph, label %if.end106, !dbg !2425

for.cond5.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp6168 = icmp sgt i32 %size_x, 0, !dbg !2428
  br label %for.cond5.preheader, !dbg !2425

for.cond5.preheader:                              ; preds = %for.inc14, %for.cond5.preheader.lr.ph
  %indvars.iv194 = phi i64 [ 0, %for.cond5.preheader.lr.ph ], [ %indvars.iv.next195, %for.inc14 ]
  br i1 %cmp6168, label %for.body8.lr.ph, label %for.inc14, !dbg !2428

for.body8.lr.ph:                                  ; preds = %for.cond5.preheader
  %0 = trunc i64 %indvars.iv194 to i32, !dbg !2430
  %mul = mul nsw i32 %0, %size_x, !dbg !2430
  %arrayidx12 = getelementptr inbounds i16** %imgX, i64 %indvars.iv194, !dbg !2430
  %1 = sext i32 %mul to i64, !dbg !2428
  %.pre = load i16** %arrayidx12, align 8, !dbg !2430, !tbaa !1126
  br label %for.body8, !dbg !2428

for.body8:                                        ; preds = %for.body8, %for.body8.lr.ph
  %indvars.iv189 = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next190, %for.body8 ]
  %2 = add nsw i64 %indvars.iv189, %1, !dbg !2430
  %arrayidx = getelementptr inbounds i8* %buf, i64 %2, !dbg !2430
  %3 = load i8* %arrayidx, align 1, !dbg !2430, !tbaa !1127
  %conv9 = zext i8 %3 to i16, !dbg !2430
  %arrayidx13 = getelementptr inbounds i16* %.pre, i64 %indvars.iv189, !dbg !2430
  store i16 %conv9, i16* %arrayidx13, align 2, !dbg !2430, !tbaa !1148
  %indvars.iv.next190 = add i64 %indvars.iv189, 1, !dbg !2428
  %lftr.wideiv192 = trunc i64 %indvars.iv.next190 to i32, !dbg !2428
  %exitcond193 = icmp eq i32 %lftr.wideiv192, %size_x, !dbg !2428
  br i1 %exitcond193, label %for.inc14, label %for.body8, !dbg !2428

for.inc14:                                        ; preds = %for.body8, %for.cond5.preheader
  %indvars.iv.next195 = add i64 %indvars.iv194, 1, !dbg !2425
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32, !dbg !2425
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %size_y, !dbg !2425
  br i1 %exitcond197, label %if.end106, label %for.cond5.preheader, !dbg !2425

for.cond22.preheader:                             ; preds = %for.inc39, %for.cond22.preheader.lr.ph
  %indvars.iv203 = phi i64 [ 0, %for.cond22.preheader.lr.ph ], [ %indvars.iv.next204, %for.inc39 ]
  br i1 %cmp23173, label %for.body25.lr.ph, label %for.inc39, !dbg !2423

for.body25.lr.ph:                                 ; preds = %for.cond22.preheader
  %4 = trunc i64 %indvars.iv203 to i32, !dbg !2432
  %mul26 = mul nsw i32 %4, %size_x, !dbg !2432
  %arrayidx34 = getelementptr inbounds i16** %imgX, i64 %indvars.iv203, !dbg !2434
  %5 = zext i32 %mul26 to i64, !dbg !2423
  %.pre216 = load i16** %arrayidx34, align 8, !dbg !2434, !tbaa !1126
  br label %for.body25, !dbg !2423

for.body25:                                       ; preds = %for.body25, %for.body25.lr.ph
  %indvars.iv198 = phi i64 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next199, %for.body25 ]
  %6 = add nsw i64 %indvars.iv198, %5, !dbg !2432
  %7 = trunc i64 %6 to i32, !dbg !2432
  %mul28 = shl nsw i32 %7, 1, !dbg !2432
  %idx.ext = sext i32 %mul28 to i64, !dbg !2432
  %add.ptr = getelementptr inbounds i8* %buf, i64 %idx.ext, !dbg !2432
  %tmp16.0.cast = bitcast i8* %add.ptr to i16*, !dbg !2432
  %tmp16.0.copyload = load i16* %tmp16.0.cast, align 1, !dbg !2432
  tail call void @llvm.dbg.value(metadata !{i16 %tmp16.0.copyload}, i64 0, metadata !476), !dbg !2432
  %or = tail call i16 @llvm.bswap.i16(i16 %tmp16.0.copyload), !dbg !2435
  tail call void @llvm.dbg.value(metadata !{i16 %or}, i64 0, metadata !477), !dbg !2435
  %arrayidx35 = getelementptr inbounds i16* %.pre216, i64 %indvars.iv198, !dbg !2434
  store i16 %or, i16* %arrayidx35, align 2, !dbg !2434, !tbaa !1148
  %indvars.iv.next199 = add i64 %indvars.iv198, 1, !dbg !2423
  %lftr.wideiv201 = trunc i64 %indvars.iv.next199 to i32, !dbg !2423
  %exitcond202 = icmp eq i32 %lftr.wideiv201, %size_x, !dbg !2423
  br i1 %exitcond202, label %for.inc39, label %for.body25, !dbg !2423

for.inc39:                                        ; preds = %for.body25, %for.cond22.preheader
  %indvars.iv.next204 = add i64 %indvars.iv203, 1, !dbg !2420
  %lftr.wideiv205 = trunc i64 %indvars.iv.next204 to i32, !dbg !2420
  %exitcond206 = icmp eq i32 %lftr.wideiv205, %size_y, !dbg !2420
  br i1 %exitcond206, label %if.end106, label %for.cond22.preheader, !dbg !2420

for.cond47.preheader:                             ; preds = %for.inc75, %for.cond47.preheader.lr.ph
  %indvars.iv212 = phi i64 [ 0, %for.cond47.preheader.lr.ph ], [ %indvars.iv.next213, %for.inc75 ]
  br i1 %cmp48178, label %for.body50.lr.ph, label %for.inc75, !dbg !2418

for.body50.lr.ph:                                 ; preds = %for.cond47.preheader
  %8 = trunc i64 %indvars.iv212 to i32, !dbg !2436
  %mul51 = mul nsw i32 %8, %size_x, !dbg !2436
  %arrayidx70 = getelementptr inbounds i16** %imgX, i64 %indvars.iv212, !dbg !2438
  %9 = zext i32 %mul51 to i64, !dbg !2418
  %.pre217 = load i16** %arrayidx70, align 8, !dbg !2438, !tbaa !1126
  br label %for.body50, !dbg !2418

for.body50:                                       ; preds = %for.body50, %for.body50.lr.ph
  %indvars.iv207 = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next208, %for.body50 ]
  %10 = add nsw i64 %indvars.iv207, %9, !dbg !2436
  %11 = trunc i64 %10 to i32, !dbg !2436
  %mul53 = shl nsw i32 %11, 2, !dbg !2436
  %idx.ext54 = sext i32 %mul53 to i64, !dbg !2436
  %add.ptr55 = getelementptr inbounds i8* %buf, i64 %idx.ext54, !dbg !2436
  %tmp32.0.cast = bitcast i8* %add.ptr55 to i32*, !dbg !2436
  %tmp32.0.copyload = load i32* %tmp32.0.cast, align 1, !dbg !2436
  %tmp32.0.insert.ext = zext i32 %tmp32.0.copyload to i64, !dbg !2436
  %and61 = lshr i64 %tmp32.0.insert.ext, 8, !dbg !2439
  %shr62 = and i64 %and61, 65280, !dbg !2439
  %shr65 = lshr i64 %tmp32.0.insert.ext, 24, !dbg !2439
  %or66 = or i64 %shr62, %shr65, !dbg !2439
  tail call void @llvm.dbg.value(metadata !{i64 %or66}, i64 0, metadata !479), !dbg !2439
  %conv67 = trunc i64 %or66 to i16, !dbg !2438
  %arrayidx71 = getelementptr inbounds i16* %.pre217, i64 %indvars.iv207, !dbg !2438
  store i16 %conv67, i16* %arrayidx71, align 2, !dbg !2438, !tbaa !1148
  %indvars.iv.next208 = add i64 %indvars.iv207, 1, !dbg !2418
  %lftr.wideiv210 = trunc i64 %indvars.iv.next208 to i32, !dbg !2418
  %exitcond211 = icmp eq i32 %lftr.wideiv210, %size_x, !dbg !2418
  br i1 %exitcond211, label %for.inc75, label %for.body50, !dbg !2418

for.inc75:                                        ; preds = %for.body50, %for.cond47.preheader
  %indvars.iv.next213 = add i64 %indvars.iv212, 1, !dbg !2414
  %lftr.wideiv214 = trunc i64 %indvars.iv.next213 to i32, !dbg !2414
  %exitcond215 = icmp eq i32 %lftr.wideiv214, %size_y, !dbg !2414
  br i1 %exitcond215, label %sw.default, label %for.cond47.preheader, !dbg !2414

sw.default:                                       ; preds = %for.cond43.preheader, %for.inc75, %if.then2
  tail call void @error(i8* getelementptr inbounds ([80 x i8]* @.str4, i64 0, i64 0), i32 500) #7, !dbg !2440
  br label %if.end106, !dbg !2442

for.cond82.preheader:                             ; preds = %for.inc103, %for.cond82.preheader.lr.ph
  %indvars.iv185 = phi i64 [ 0, %for.cond82.preheader.lr.ph ], [ %indvars.iv.next186, %for.inc103 ]
  br i1 %cmp83164, label %for.body85.lr.ph, label %for.inc103, !dbg !2410

for.body85.lr.ph:                                 ; preds = %for.cond82.preheader
  %arrayidx88 = getelementptr inbounds i16** %imgX, i64 %indvars.iv185, !dbg !2443
  %12 = trunc i64 %indvars.iv185 to i32, !dbg !2445
  %mul94 = mul nsw i32 %12, %size_x, !dbg !2445
  %13 = zext i32 %mul94 to i64, !dbg !2410
  br label %for.body85, !dbg !2410

for.body85:                                       ; preds = %for.body85, %for.body85.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body85.lr.ph ], [ %indvars.iv.next, %for.body85 ]
  %14 = load i16** %arrayidx88, align 8, !dbg !2443, !tbaa !1126
  %arrayidx89 = getelementptr inbounds i16* %14, i64 %indvars.iv, !dbg !2443
  store i16 0, i16* %arrayidx89, align 2, !dbg !2443, !tbaa !1148
  %15 = bitcast i16* %arrayidx89 to i8*, !dbg !2445
  %16 = add nsw i64 %indvars.iv, %13, !dbg !2445
  %17 = trunc i64 %16 to i32, !dbg !2445
  %mul96 = mul nsw i32 %17, %symbol_size_in_bytes, !dbg !2445
  %idx.ext97 = sext i32 %mul96 to i64, !dbg !2445
  %add.ptr98 = getelementptr inbounds i8* %buf, i64 %idx.ext97, !dbg !2445
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %add.ptr98, i64 %conv, i32 1, i1 false), !dbg !2445
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2410
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2410
  %exitcond = icmp eq i32 %lftr.wideiv, %size_x, !dbg !2410
  br i1 %exitcond, label %for.inc103, label %for.body85, !dbg !2410

for.inc103:                                       ; preds = %for.body85, %for.cond82.preheader
  %indvars.iv.next186 = add i64 %indvars.iv185, 1, !dbg !2407
  %lftr.wideiv187 = trunc i64 %indvars.iv.next186 to i32, !dbg !2407
  %exitcond188 = icmp eq i32 %lftr.wideiv187, %size_y, !dbg !2407
  br i1 %exitcond188, label %if.end106, label %for.cond82.preheader, !dbg !2407

if.end106:                                        ; preds = %for.cond18.preheader, %for.inc39, %for.cond.preheader, %for.inc14, %for.cond78.preheader, %for.inc103, %sw.default
  ret void, !dbg !2446
}

; Function Attrs: optsize
declare i32 @testEndian(...) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: optsize
declare i32 @test_wp_P_slice(i32) #3

; Function Attrs: optsize
declare i32 @picture_coding_decision(%struct.Picture*, %struct.Picture*, i32) #3

; Function Attrs: optsize
declare i32 @test_wp_B_slice(i32) #3

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: nounwind optsize
declare i64 @lseek(i32, i64, i32) #4

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #4

; Function Attrs: optsize
declare i64 @read(i32, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: optsize
declare void @report_stats_on_error(...) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal void @find_distortion() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !2447, !tbaa !1126
  %structure = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 7, !dbg !2447
  %1 = load i32* %structure, align 4, !dbg !2447, !tbaa !1132
  %cmp = icmp eq i32 %1, 0, !dbg !2447
  br i1 %cmp, label %if.else, label %for.cond.preheader, !dbg !2447

for.cond.preheader:                               ; preds = %entry
  %2 = load %struct.InputParameters** @input, align 8, !dbg !2448, !tbaa !1126
  %img_width1265 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 16, !dbg !2448
  %3 = load i32* %img_width1265, align 4, !dbg !2448, !tbaa !1132
  %cmp2266 = icmp sgt i32 %3, 0, !dbg !2448
  br i1 %cmp2266, label %for.cond3.preheader.lr.ph, label %for.end19, !dbg !2448

for.cond3.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %img_height4260 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 17, !dbg !2451
  %4 = load i32* %img_height4260, align 4, !dbg !2451, !tbaa !1132
  %cmp5261 = icmp sgt i32 %4, 0, !dbg !2451
  %5 = load i16*** @imgY_org, align 8, !dbg !2454, !tbaa !1126
  %6 = load i16*** @imgY_com, align 8, !dbg !2454, !tbaa !1126
  %quad = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 53, !dbg !2454
  br label %for.cond3.preheader, !dbg !2448

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc17
  %indvars.iv282 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next283, %for.inc17 ]
  %diff_y.0267 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %diff_y.1.lcssa, %for.inc17 ]
  br i1 %cmp5261, label %for.body6.lr.ph, label %for.inc17, !dbg !2451

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %7 = load i32** %quad, align 8, !dbg !2454, !tbaa !1126
  br label %for.body6, !dbg !2451

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv280 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next281, %for.body6 ]
  %diff_y.1263 = phi i64 [ %diff_y.0267, %for.body6.lr.ph ], [ %add, %for.body6 ]
  %arrayidx = getelementptr inbounds i16** %5, i64 %indvars.iv280, !dbg !2454
  %8 = load i16** %arrayidx, align 8, !dbg !2454, !tbaa !1126
  %arrayidx8 = getelementptr inbounds i16* %8, i64 %indvars.iv282, !dbg !2454
  %9 = load i16* %arrayidx8, align 2, !dbg !2454, !tbaa !1148
  %conv = zext i16 %9 to i32, !dbg !2454
  %arrayidx11 = getelementptr inbounds i16** %6, i64 %indvars.iv280, !dbg !2454
  %10 = load i16** %arrayidx11, align 8, !dbg !2454, !tbaa !1126
  %arrayidx12 = getelementptr inbounds i16* %10, i64 %indvars.iv282, !dbg !2454
  %11 = load i16* %arrayidx12, align 2, !dbg !2454, !tbaa !1148
  %conv13 = zext i16 %11 to i32, !dbg !2454
  %sub = sub nsw i32 %conv, %conv13, !dbg !2454
  %ispos220 = icmp sgt i32 %sub, -1, !dbg !2454
  %neg221 = sub i32 0, %sub, !dbg !2454
  %12 = select i1 %ispos220, i32 %sub, i32 %neg221, !dbg !2454
  %idxprom14 = sext i32 %12 to i64, !dbg !2454
  %arrayidx15 = getelementptr inbounds i32* %7, i64 %idxprom14, !dbg !2454
  %13 = load i32* %arrayidx15, align 4, !dbg !2454, !tbaa !1132
  %conv16 = sext i32 %13 to i64, !dbg !2454
  %add = add nsw i64 %conv16, %diff_y.1263, !dbg !2454
  tail call void @llvm.dbg.value(metadata !{i64 %add}, i64 0, metadata !602), !dbg !2454
  %indvars.iv.next281 = add i64 %indvars.iv280, 1, !dbg !2451
  %14 = trunc i64 %indvars.iv.next281 to i32, !dbg !2451
  %cmp5 = icmp slt i32 %14, %4, !dbg !2451
  br i1 %cmp5, label %for.body6, label %for.inc17, !dbg !2451

for.inc17:                                        ; preds = %for.body6, %for.cond3.preheader
  %diff_y.1.lcssa = phi i64 [ %diff_y.0267, %for.cond3.preheader ], [ %add, %for.body6 ]
  %indvars.iv.next283 = add i64 %indvars.iv282, 1, !dbg !2448
  %15 = trunc i64 %indvars.iv.next283 to i32, !dbg !2448
  %cmp2 = icmp slt i32 %15, %3, !dbg !2448
  br i1 %cmp2, label %for.cond3.preheader, label %for.end19, !dbg !2448

for.end19:                                        ; preds = %for.inc17, %for.cond.preheader
  %diff_y.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %diff_y.1.lcssa, %for.inc17 ]
  tail call void @llvm.dbg.value(metadata !1710, i64 0, metadata !603), !dbg !2456
  tail call void @llvm.dbg.value(metadata !1710, i64 0, metadata !604), !dbg !2457
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159, !dbg !2458
  %16 = load i32* %yuv_format, align 4, !dbg !2458, !tbaa !1132
  %cmp20 = icmp eq i32 %16, 0, !dbg !2458
  br i1 %cmp20, label %if.end168, label %for.cond23.preheader, !dbg !2458

for.cond23.preheader:                             ; preds = %for.end19
  %img_width_cr253 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 138, !dbg !2459
  %17 = load i32* %img_width_cr253, align 4, !dbg !2459, !tbaa !1132
  %cmp24254 = icmp sgt i32 %17, 0, !dbg !2459
  br i1 %cmp24254, label %for.cond27.preheader.lr.ph, label %if.end168, !dbg !2459

for.cond27.preheader.lr.ph:                       ; preds = %for.cond23.preheader
  %img_height_cr245 = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 137, !dbg !2462
  %18 = load i32* %img_height_cr245, align 4, !dbg !2462, !tbaa !1132
  %cmp28246 = icmp sgt i32 %18, 0, !dbg !2462
  %19 = load i16**** @imgUV_org, align 8, !dbg !2465, !tbaa !1126
  %20 = load i16**** @imgUV_com, align 8, !dbg !2465, !tbaa !1126
  %quad46 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 53, !dbg !2465
  %arrayidx52 = getelementptr inbounds i16*** %19, i64 1, !dbg !2467
  %arrayidx58 = getelementptr inbounds i16*** %20, i64 1, !dbg !2467
  br label %for.cond27.preheader, !dbg !2459

for.cond27.preheader:                             ; preds = %for.cond27.preheader.lr.ph, %for.inc72
  %indvars.iv278 = phi i64 [ 0, %for.cond27.preheader.lr.ph ], [ %indvars.iv.next279, %for.inc72 ]
  %diff_v.0256 = phi i64 [ 0, %for.cond27.preheader.lr.ph ], [ %diff_v.1.lcssa, %for.inc72 ]
  %diff_u.0255 = phi i64 [ 0, %for.cond27.preheader.lr.ph ], [ %diff_u.1.lcssa, %for.inc72 ]
  br i1 %cmp28246, label %for.body30.lr.ph, label %for.inc72, !dbg !2462

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader
  %21 = load i16*** %19, align 8, !dbg !2465, !tbaa !1126
  %22 = load i16*** %20, align 8, !dbg !2465, !tbaa !1126
  %23 = load i32** %quad46, align 8, !dbg !2465, !tbaa !1126
  %24 = load i16*** %arrayidx52, align 8, !dbg !2467, !tbaa !1126
  %25 = load i16*** %arrayidx58, align 8, !dbg !2467, !tbaa !1126
  br label %for.body30, !dbg !2462

for.body30:                                       ; preds = %for.body30.lr.ph, %for.body30
  %indvars.iv276 = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next277, %for.body30 ]
  %diff_v.1249 = phi i64 [ %diff_v.0256, %for.body30.lr.ph ], [ %add68, %for.body30 ]
  %diff_u.1248 = phi i64 [ %diff_u.0255, %for.body30.lr.ph ], [ %add49, %for.body30 ]
  %arrayidx34 = getelementptr inbounds i16** %21, i64 %indvars.iv276, !dbg !2465
  %26 = load i16** %arrayidx34, align 8, !dbg !2465, !tbaa !1126
  %arrayidx35 = getelementptr inbounds i16* %26, i64 %indvars.iv278, !dbg !2465
  %27 = load i16* %arrayidx35, align 2, !dbg !2465, !tbaa !1148
  %conv36 = zext i16 %27 to i32, !dbg !2465
  %arrayidx40 = getelementptr inbounds i16** %22, i64 %indvars.iv276, !dbg !2465
  %28 = load i16** %arrayidx40, align 8, !dbg !2465, !tbaa !1126
  %arrayidx41 = getelementptr inbounds i16* %28, i64 %indvars.iv278, !dbg !2465
  %29 = load i16* %arrayidx41, align 2, !dbg !2465, !tbaa !1148
  %conv42 = zext i16 %29 to i32, !dbg !2465
  %sub43 = sub nsw i32 %conv36, %conv42, !dbg !2465
  %ispos216 = icmp sgt i32 %sub43, -1, !dbg !2465
  %neg217 = sub i32 0, %sub43, !dbg !2465
  %30 = select i1 %ispos216, i32 %sub43, i32 %neg217, !dbg !2465
  %idxprom45 = sext i32 %30 to i64, !dbg !2465
  %arrayidx47 = getelementptr inbounds i32* %23, i64 %idxprom45, !dbg !2465
  %31 = load i32* %arrayidx47, align 4, !dbg !2465, !tbaa !1132
  %conv48 = sext i32 %31 to i64, !dbg !2465
  %add49 = add nsw i64 %conv48, %diff_u.1248, !dbg !2465
  tail call void @llvm.dbg.value(metadata !{i64 %add49}, i64 0, metadata !603), !dbg !2465
  %arrayidx53 = getelementptr inbounds i16** %24, i64 %indvars.iv276, !dbg !2467
  %32 = load i16** %arrayidx53, align 8, !dbg !2467, !tbaa !1126
  %arrayidx54 = getelementptr inbounds i16* %32, i64 %indvars.iv278, !dbg !2467
  %33 = load i16* %arrayidx54, align 2, !dbg !2467, !tbaa !1148
  %conv55 = zext i16 %33 to i32, !dbg !2467
  %arrayidx59 = getelementptr inbounds i16** %25, i64 %indvars.iv276, !dbg !2467
  %34 = load i16** %arrayidx59, align 8, !dbg !2467, !tbaa !1126
  %arrayidx60 = getelementptr inbounds i16* %34, i64 %indvars.iv278, !dbg !2467
  %35 = load i16* %arrayidx60, align 2, !dbg !2467, !tbaa !1148
  %conv61 = zext i16 %35 to i32, !dbg !2467
  %sub62 = sub nsw i32 %conv55, %conv61, !dbg !2467
  %ispos218 = icmp sgt i32 %sub62, -1, !dbg !2467
  %neg219 = sub i32 0, %sub62, !dbg !2467
  %36 = select i1 %ispos218, i32 %sub62, i32 %neg219, !dbg !2467
  %idxprom64 = sext i32 %36 to i64, !dbg !2467
  %arrayidx66 = getelementptr inbounds i32* %23, i64 %idxprom64, !dbg !2467
  %37 = load i32* %arrayidx66, align 4, !dbg !2467, !tbaa !1132
  %conv67 = sext i32 %37 to i64, !dbg !2467
  %add68 = add nsw i64 %conv67, %diff_v.1249, !dbg !2467
  tail call void @llvm.dbg.value(metadata !{i64 %add68}, i64 0, metadata !604), !dbg !2467
  %indvars.iv.next277 = add i64 %indvars.iv276, 1, !dbg !2462
  %38 = trunc i64 %indvars.iv.next277 to i32, !dbg !2462
  %cmp28 = icmp slt i32 %38, %18, !dbg !2462
  br i1 %cmp28, label %for.body30, label %for.inc72, !dbg !2462

for.inc72:                                        ; preds = %for.body30, %for.cond27.preheader
  %diff_v.1.lcssa = phi i64 [ %diff_v.0256, %for.cond27.preheader ], [ %add68, %for.body30 ]
  %diff_u.1.lcssa = phi i64 [ %diff_u.0255, %for.cond27.preheader ], [ %add49, %for.body30 ]
  %indvars.iv.next279 = add i64 %indvars.iv278, 1, !dbg !2459
  %39 = trunc i64 %indvars.iv.next279 to i32, !dbg !2459
  %cmp24 = icmp slt i32 %39, %17, !dbg !2459
  br i1 %cmp24, label %for.cond27.preheader, label %if.end168, !dbg !2459

if.else:                                          ; preds = %entry
  %40 = load i16*** @imgY_org_frm, align 8, !dbg !2468, !tbaa !1126
  store i16** %40, i16*** @imgY_org, align 8, !dbg !2468, !tbaa !1126
  %41 = load i16**** @imgUV_org_frm, align 8, !dbg !2470, !tbaa !1126
  store i16*** %41, i16**** @imgUV_org, align 8, !dbg !2470, !tbaa !1126
  tail call void @llvm.dbg.value(metadata !1710, i64 0, metadata !602), !dbg !2471
  tail call void @llvm.dbg.value(metadata !26, i64 0, metadata !600), !dbg !2472
  %42 = load %struct.InputParameters** @input, align 8, !dbg !2472, !tbaa !1126
  %img_width76240 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 16, !dbg !2472
  %43 = load i32* %img_width76240, align 4, !dbg !2472, !tbaa !1132
  %cmp77241 = icmp sgt i32 %43, 0, !dbg !2472
  br i1 %cmp77241, label %for.cond80.preheader.lr.ph, label %for.end107, !dbg !2472

for.cond80.preheader.lr.ph:                       ; preds = %if.else
  %img_height81235 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 17, !dbg !2474
  %44 = load i32* %img_height81235, align 4, !dbg !2474, !tbaa !1132
  %cmp82236 = icmp sgt i32 %44, 0, !dbg !2474
  %45 = load %struct.storable_picture** @enc_picture, align 8, !dbg !2477, !tbaa !1126
  %imgY = getelementptr inbounds %struct.storable_picture* %45, i64 0, i32 25, !dbg !2477
  %quad98 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 53, !dbg !2477
  br label %for.cond80.preheader, !dbg !2472

for.cond80.preheader:                             ; preds = %for.cond80.preheader.lr.ph, %for.inc105
  %indvars.iv274 = phi i64 [ 0, %for.cond80.preheader.lr.ph ], [ %indvars.iv.next275, %for.inc105 ]
  %diff_y.2242 = phi i64 [ 0, %for.cond80.preheader.lr.ph ], [ %diff_y.3.lcssa, %for.inc105 ]
  br i1 %cmp82236, label %for.body84.lr.ph, label %for.inc105, !dbg !2474

for.body84.lr.ph:                                 ; preds = %for.cond80.preheader
  %46 = load i16*** %imgY, align 8, !dbg !2477, !tbaa !1126
  %47 = load i32** %quad98, align 8, !dbg !2477, !tbaa !1126
  br label %for.body84, !dbg !2474

for.body84:                                       ; preds = %for.body84.lr.ph, %for.body84
  %indvars.iv272 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next273, %for.body84 ]
  %diff_y.3238 = phi i64 [ %diff_y.2242, %for.body84.lr.ph ], [ %add101, %for.body84 ]
  %arrayidx87 = getelementptr inbounds i16** %40, i64 %indvars.iv272, !dbg !2477
  %48 = load i16** %arrayidx87, align 8, !dbg !2477, !tbaa !1126
  %arrayidx88 = getelementptr inbounds i16* %48, i64 %indvars.iv274, !dbg !2477
  %49 = load i16* %arrayidx88, align 2, !dbg !2477, !tbaa !1148
  %conv89 = zext i16 %49 to i32, !dbg !2477
  %arrayidx92 = getelementptr inbounds i16** %46, i64 %indvars.iv272, !dbg !2477
  %50 = load i16** %arrayidx92, align 8, !dbg !2477, !tbaa !1126
  %arrayidx93 = getelementptr inbounds i16* %50, i64 %indvars.iv274, !dbg !2477
  %51 = load i16* %arrayidx93, align 2, !dbg !2477, !tbaa !1148
  %conv94 = zext i16 %51 to i32, !dbg !2477
  %sub95 = sub nsw i32 %conv89, %conv94, !dbg !2477
  %ispos214 = icmp sgt i32 %sub95, -1, !dbg !2477
  %neg215 = sub i32 0, %sub95, !dbg !2477
  %52 = select i1 %ispos214, i32 %sub95, i32 %neg215, !dbg !2477
  %idxprom97 = sext i32 %52 to i64, !dbg !2477
  %arrayidx99 = getelementptr inbounds i32* %47, i64 %idxprom97, !dbg !2477
  %53 = load i32* %arrayidx99, align 4, !dbg !2477, !tbaa !1132
  %conv100 = sext i32 %53 to i64, !dbg !2477
  %add101 = add nsw i64 %conv100, %diff_y.3238, !dbg !2477
  tail call void @llvm.dbg.value(metadata !{i64 %add101}, i64 0, metadata !602), !dbg !2477
  %indvars.iv.next273 = add i64 %indvars.iv272, 1, !dbg !2474
  %54 = trunc i64 %indvars.iv.next273 to i32, !dbg !2474
  %cmp82 = icmp slt i32 %54, %44, !dbg !2474
  br i1 %cmp82, label %for.body84, label %for.inc105, !dbg !2474

for.inc105:                                       ; preds = %for.body84, %for.cond80.preheader
  %diff_y.3.lcssa = phi i64 [ %diff_y.2242, %for.cond80.preheader ], [ %add101, %for.body84 ]
  %indvars.iv.next275 = add i64 %indvars.iv274, 1, !dbg !2472
  %55 = trunc i64 %indvars.iv.next275 to i32, !dbg !2472
  %cmp77 = icmp slt i32 %55, %43, !dbg !2472
  br i1 %cmp77, label %for.cond80.preheader, label %for.end107, !dbg !2472

for.end107:                                       ; preds = %for.inc105, %if.else
  %diff_y.2.lcssa = phi i64 [ 0, %if.else ], [ %diff_y.3.lcssa, %for.inc105 ]
  tail call void @llvm.dbg.value(metadata !1710, i64 0, metadata !603), !dbg !2479
  tail call void @llvm.dbg.value(metadata !1710, i64 0, metadata !604), !dbg !2480
  %yuv_format108 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159, !dbg !2481
  %56 = load i32* %yuv_format108, align 4, !dbg !2481, !tbaa !1132
  %cmp109 = icmp eq i32 %56, 0, !dbg !2481
  br i1 %cmp109, label %if.end168, label %for.cond112.preheader, !dbg !2481

for.cond112.preheader:                            ; preds = %for.end107
  %img_width_cr113228 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 138, !dbg !2482
  %57 = load i32* %img_width_cr113228, align 4, !dbg !2482, !tbaa !1132
  %cmp114229 = icmp sgt i32 %57, 0, !dbg !2482
  br i1 %cmp114229, label %for.cond117.preheader.lr.ph, label %if.end168, !dbg !2482

for.cond117.preheader.lr.ph:                      ; preds = %for.cond112.preheader
  %img_height_cr118222 = getelementptr inbounds %struct.InputParameters* %42, i64 0, i32 137, !dbg !2485
  %58 = load i32* %img_height_cr118222, align 4, !dbg !2485, !tbaa !1132
  %cmp119223 = icmp sgt i32 %58, 0, !dbg !2485
  %59 = load %struct.storable_picture** @enc_picture, align 8, !dbg !2488, !tbaa !1126
  %imgUV = getelementptr inbounds %struct.storable_picture* %59, i64 0, i32 30, !dbg !2488
  %quad137 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 53, !dbg !2488
  %arrayidx143 = getelementptr inbounds i16*** %41, i64 1, !dbg !2490
  br label %for.cond117.preheader, !dbg !2482

for.cond117.preheader:                            ; preds = %for.cond117.preheader.lr.ph, %for.inc164
  %indvars.iv270 = phi i64 [ 0, %for.cond117.preheader.lr.ph ], [ %indvars.iv.next271, %for.inc164 ]
  %diff_v.2231 = phi i64 [ 0, %for.cond117.preheader.lr.ph ], [ %diff_v.3.lcssa, %for.inc164 ]
  %diff_u.2230 = phi i64 [ 0, %for.cond117.preheader.lr.ph ], [ %diff_u.3.lcssa, %for.inc164 ]
  br i1 %cmp119223, label %for.body121.lr.ph, label %for.inc164, !dbg !2485

for.body121.lr.ph:                                ; preds = %for.cond117.preheader
  %60 = load i16*** %41, align 8, !dbg !2488, !tbaa !1126
  %61 = load i16**** %imgUV, align 8, !dbg !2488, !tbaa !1126
  %62 = load i16*** %61, align 8, !dbg !2488, !tbaa !1126
  %63 = load i32** %quad137, align 8, !dbg !2488, !tbaa !1126
  %64 = load i16*** %arrayidx143, align 8, !dbg !2490, !tbaa !1126
  %arrayidx150 = getelementptr inbounds i16*** %61, i64 1, !dbg !2490
  %65 = load i16*** %arrayidx150, align 8, !dbg !2490, !tbaa !1126
  br label %for.body121, !dbg !2485

for.body121:                                      ; preds = %for.body121.lr.ph, %for.body121
  %indvars.iv = phi i64 [ 0, %for.body121.lr.ph ], [ %indvars.iv.next, %for.body121 ]
  %diff_v.3226 = phi i64 [ %diff_v.2231, %for.body121.lr.ph ], [ %add160, %for.body121 ]
  %diff_u.3225 = phi i64 [ %diff_u.2230, %for.body121.lr.ph ], [ %add140, %for.body121 ]
  %arrayidx125 = getelementptr inbounds i16** %60, i64 %indvars.iv, !dbg !2488
  %66 = load i16** %arrayidx125, align 8, !dbg !2488, !tbaa !1126
  %arrayidx126 = getelementptr inbounds i16* %66, i64 %indvars.iv270, !dbg !2488
  %67 = load i16* %arrayidx126, align 2, !dbg !2488, !tbaa !1148
  %conv127 = zext i16 %67 to i32, !dbg !2488
  %arrayidx131 = getelementptr inbounds i16** %62, i64 %indvars.iv, !dbg !2488
  %68 = load i16** %arrayidx131, align 8, !dbg !2488, !tbaa !1126
  %arrayidx132 = getelementptr inbounds i16* %68, i64 %indvars.iv270, !dbg !2488
  %69 = load i16* %arrayidx132, align 2, !dbg !2488, !tbaa !1148
  %conv133 = zext i16 %69 to i32, !dbg !2488
  %sub134 = sub nsw i32 %conv127, %conv133, !dbg !2488
  %ispos = icmp sgt i32 %sub134, -1, !dbg !2488
  %neg = sub i32 0, %sub134, !dbg !2488
  %70 = select i1 %ispos, i32 %sub134, i32 %neg, !dbg !2488
  %idxprom136 = sext i32 %70 to i64, !dbg !2488
  %arrayidx138 = getelementptr inbounds i32* %63, i64 %idxprom136, !dbg !2488
  %71 = load i32* %arrayidx138, align 4, !dbg !2488, !tbaa !1132
  %conv139 = sext i32 %71 to i64, !dbg !2488
  %add140 = add nsw i64 %conv139, %diff_u.3225, !dbg !2488
  tail call void @llvm.dbg.value(metadata !{i64 %add140}, i64 0, metadata !603), !dbg !2488
  %arrayidx144 = getelementptr inbounds i16** %64, i64 %indvars.iv, !dbg !2490
  %72 = load i16** %arrayidx144, align 8, !dbg !2490, !tbaa !1126
  %arrayidx145 = getelementptr inbounds i16* %72, i64 %indvars.iv270, !dbg !2490
  %73 = load i16* %arrayidx145, align 2, !dbg !2490, !tbaa !1148
  %conv146 = zext i16 %73 to i32, !dbg !2490
  %arrayidx151 = getelementptr inbounds i16** %65, i64 %indvars.iv, !dbg !2490
  %74 = load i16** %arrayidx151, align 8, !dbg !2490, !tbaa !1126
  %arrayidx152 = getelementptr inbounds i16* %74, i64 %indvars.iv270, !dbg !2490
  %75 = load i16* %arrayidx152, align 2, !dbg !2490, !tbaa !1148
  %conv153 = zext i16 %75 to i32, !dbg !2490
  %sub154 = sub nsw i32 %conv146, %conv153, !dbg !2490
  %ispos212 = icmp sgt i32 %sub154, -1, !dbg !2490
  %neg213 = sub i32 0, %sub154, !dbg !2490
  %76 = select i1 %ispos212, i32 %sub154, i32 %neg213, !dbg !2490
  %idxprom156 = sext i32 %76 to i64, !dbg !2490
  %arrayidx158 = getelementptr inbounds i32* %63, i64 %idxprom156, !dbg !2490
  %77 = load i32* %arrayidx158, align 4, !dbg !2490, !tbaa !1132
  %conv159 = sext i32 %77 to i64, !dbg !2490
  %add160 = add nsw i64 %conv159, %diff_v.3226, !dbg !2490
  tail call void @llvm.dbg.value(metadata !{i64 %add160}, i64 0, metadata !604), !dbg !2490
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2485
  %78 = trunc i64 %indvars.iv.next to i32, !dbg !2485
  %cmp119 = icmp slt i32 %78, %58, !dbg !2485
  br i1 %cmp119, label %for.body121, label %for.inc164, !dbg !2485

for.inc164:                                       ; preds = %for.body121, %for.cond117.preheader
  %diff_v.3.lcssa = phi i64 [ %diff_v.2231, %for.cond117.preheader ], [ %add160, %for.body121 ]
  %diff_u.3.lcssa = phi i64 [ %diff_u.2230, %for.cond117.preheader ], [ %add140, %for.body121 ]
  %indvars.iv.next271 = add i64 %indvars.iv270, 1, !dbg !2482
  %79 = trunc i64 %indvars.iv.next271 to i32, !dbg !2482
  %cmp114 = icmp slt i32 %79, %57, !dbg !2482
  br i1 %cmp114, label %for.cond117.preheader, label %if.end168, !dbg !2482

if.end168:                                        ; preds = %for.cond23.preheader, %for.inc72, %for.cond112.preheader, %for.inc164, %for.end19, %for.end107
  %diff_y.4 = phi i64 [ %diff_y.0.lcssa, %for.end19 ], [ %diff_y.2.lcssa, %for.end107 ], [ %diff_y.2.lcssa, %for.inc164 ], [ %diff_y.2.lcssa, %for.cond112.preheader ], [ %diff_y.0.lcssa, %for.inc72 ], [ %diff_y.0.lcssa, %for.cond23.preheader ]
  %diff_u.4 = phi i64 [ 0, %for.end19 ], [ 0, %for.end107 ], [ %diff_u.3.lcssa, %for.inc164 ], [ 0, %for.cond112.preheader ], [ %diff_u.1.lcssa, %for.inc72 ], [ 0, %for.cond23.preheader ]
  %diff_v.4 = phi i64 [ 0, %for.end19 ], [ 0, %for.end107 ], [ %diff_v.3.lcssa, %for.inc164 ], [ 0, %for.cond112.preheader ], [ %diff_v.1.lcssa, %for.inc72 ], [ 0, %for.cond23.preheader ]
  %conv169 = sitofp i64 %diff_y.4 to float, !dbg !2491
  %80 = load %struct.SNRParameters** @snr, align 8, !dbg !2491, !tbaa !1126
  %snr_y = getelementptr inbounds %struct.SNRParameters* %80, i64 0, i32 0, !dbg !2491
  store float %conv169, float* %snr_y, align 4, !dbg !2491, !tbaa !1197
  %conv170 = sitofp i64 %diff_u.4 to float, !dbg !2492
  %snr_u = getelementptr inbounds %struct.SNRParameters* %80, i64 0, i32 1, !dbg !2492
  store float %conv170, float* %snr_u, align 4, !dbg !2492, !tbaa !1197
  %conv171 = sitofp i64 %diff_v.4 to float, !dbg !2493
  %snr_v = getelementptr inbounds %struct.SNRParameters* %80, i64 0, i32 2, !dbg !2493
  store float %conv171, float* %snr_v, align 4, !dbg !2493, !tbaa !1197
  ret void, !dbg !2494
}

; Function Attrs: nounwind optsize
declare double @log10(double) #4

; Function Attrs: optsize
declare void @PutPel_11(i16*, i32, i32, i16 zeroext, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_field() #0 {
entry:
  %0 = load i32** @last_P_no_fld, align 8, !dbg !2495, !tbaa !1126
  store i32* %0, i32** @last_P_no, align 8, !dbg !2495, !tbaa !1126
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !2496, !tbaa !1126
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 3, !dbg !2496
  store i32 0, i32* %current_mb_nr, align 4, !dbg !2496, !tbaa !1132
  %current_slice_nr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 5, !dbg !2497
  store i32 0, i32* %current_slice_nr, align 4, !dbg !2497, !tbaa !1132
  %2 = load %struct.StatParameters** @stats, align 8, !dbg !2498, !tbaa !1126
  %bit_slice = getelementptr inbounds %struct.StatParameters* %2, i64 0, i32 6, !dbg !2498
  store i32 0, i32* %bit_slice, align 4, !dbg !2498, !tbaa !1132
  %3 = load %struct.InputParameters** @input, align 8, !dbg !2499, !tbaa !1126
  %jumpd = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 5, !dbg !2499
  %4 = load i32* %jumpd, align 4, !dbg !2499, !tbaa !1132
  %mul = shl nsw i32 %4, 1, !dbg !2499
  store i32 %mul, i32* %jumpd, align 4, !dbg !2499, !tbaa !1132
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 34, !dbg !2500
  %5 = load i32* %successive_Bframe, align 4, !dbg !2500, !tbaa !1132
  %mul1 = shl nsw i32 %5, 1, !dbg !2500
  store i32 %mul1, i32* %successive_Bframe, align 4, !dbg !2500, !tbaa !1132
  %number = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 0, !dbg !2501
  %6 = load i32* %number, align 4, !dbg !2501, !tbaa !1132
  %div = sdiv i32 %6, 2, !dbg !2501
  store i32 %div, i32* %number, align 4, !dbg !2501, !tbaa !1132
  %buf_cycle = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 84, !dbg !2502
  %7 = load i32* %buf_cycle, align 4, !dbg !2502, !tbaa !1132
  %div2 = sdiv i32 %7, 2, !dbg !2502
  store i32 %div2, i32* %buf_cycle, align 4, !dbg !2502, !tbaa !1132
  %mb_x = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 29, !dbg !2503
  %block_c_x = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 24, !dbg !2504
  store i32 0, i32* %block_c_x, align 4, !dbg !2504, !tbaa !1132
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 67, !dbg !2505
  %8 = bitcast i32* %mb_x to i8*, !dbg !2505
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 32, i32 4, i1 false), !dbg !2503
  %9 = load i32* %b_frame_to_code, align 4, !dbg !2505, !tbaa !1132
  %tobool = icmp eq i32 %9, 0, !dbg !2505
  %10 = load i32* %jumpd, align 4, !dbg !2506, !tbaa !1132
  %add = add nsw i32 %10, 2, !dbg !2506
  br i1 %tobool, label %if.then, label %if.else67, !dbg !2505

if.then:                                          ; preds = %entry
  %mul5 = mul nsw i32 %add, %div, !dbg !2506
  %fld_type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 56, !dbg !2506
  %11 = load i32* %fld_type, align 4, !dbg !2506, !tbaa !1132
  %add6 = add nsw i32 %mul5, %11, !dbg !2506
  %tr = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 55, !dbg !2506
  store i32 %add6, i32* %tr, align 4, !dbg !2506, !tbaa !1132
  %tobool8 = icmp eq i32 %11, 0, !dbg !2508
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !2508

if.then9:                                         ; preds = %if.then
  %imgtr_next_P_fld = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 63, !dbg !2509
  %12 = load i32* %imgtr_next_P_fld, align 4, !dbg !2509, !tbaa !1132
  %imgtr_last_P_fld = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 64, !dbg !2509
  store i32 %12, i32* %imgtr_last_P_fld, align 4, !dbg !2509, !tbaa !1132
  store i32 %add6, i32* %imgtr_next_P_fld, align 4, !dbg !2511, !tbaa !1132
  br label %if.end, !dbg !2512

if.end:                                           ; preds = %if.then, %if.then9
  %last_frame = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 79, !dbg !2513
  %13 = load i32* %last_frame, align 4, !dbg !2513, !tbaa !1132
  %tobool12 = icmp eq i32 %13, 0, !dbg !2513
  br i1 %tobool12, label %if.end18, label %land.lhs.true, !dbg !2513

land.lhs.true:                                    ; preds = %if.end
  %add14 = add nsw i32 %div, 1, !dbg !2513
  %no_frames = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 2, !dbg !2513
  %14 = load i32* %no_frames, align 4, !dbg !2513, !tbaa !1132
  %cmp = icmp eq i32 %add14, %14, !dbg !2513
  br i1 %cmp, label %if.then15, label %if.end18, !dbg !2513

if.then15:                                        ; preds = %land.lhs.true
  store i32 %13, i32* %tr, align 4, !dbg !2514, !tbaa !1132
  br label %if.end18, !dbg !2514

if.end18:                                         ; preds = %if.end, %if.then15, %land.lhs.true
  %15 = phi i32 [ %add6, %if.end ], [ %13, %if.then15 ], [ %add6, %land.lhs.true ]
  %.off = add i32 %6, 1, !dbg !2515
  %16 = icmp ult i32 %.off, 3, !dbg !2515
  br i1 %16, label %if.end26, label %land.lhs.true21, !dbg !2515

land.lhs.true21:                                  ; preds = %if.end18
  %17 = load i32* %successive_Bframe, align 4, !dbg !2515, !tbaa !1132
  %cmp23 = icmp eq i32 %17, 0, !dbg !2515
  br i1 %cmp23, label %if.end26, label %if.then24, !dbg !2515

if.then24:                                        ; preds = %land.lhs.true21
  store i32 %15, i32* @nextP_tr_fld, align 4, !dbg !2516, !tbaa !1132
  br label %if.end26, !dbg !2516

if.end26:                                         ; preds = %land.lhs.true21, %if.end18, %if.then24
  %RCEnable = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 127, !dbg !2517
  %18 = load i32* %RCEnable, align 4, !dbg !2517, !tbaa !1132
  %tobool27 = icmp eq i32 %18, 0, !dbg !2517
  br i1 %tobool27, label %if.then28, label %if.end58, !dbg !2517

if.then28:                                        ; preds = %if.end26
  %type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6, !dbg !2518
  %19 = load i32* %type, align 4, !dbg !2518, !tbaa !1132
  %cmp29 = icmp eq i32 %19, 2, !dbg !2518
  %qp2start = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 82, !dbg !2520
  %20 = load i32* %qp2start, align 4, !dbg !2520, !tbaa !1132
  %cmp31 = icmp sgt i32 %20, 0, !dbg !2520
  br i1 %cmp29, label %if.then30, label %if.else39, !dbg !2518

if.then30:                                        ; preds = %if.then28
  br i1 %cmp31, label %land.lhs.true32, label %if.else, !dbg !2520

land.lhs.true32:                                  ; preds = %if.then30
  %21 = load i32* %tr, align 4, !dbg !2520, !tbaa !1132
  %cmp35 = icmp slt i32 %21, %20, !dbg !2520
  br i1 %cmp35, label %if.else, label %if.then36, !dbg !2520

if.then36:                                        ; preds = %land.lhs.true32
  %qp02 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 83, !dbg !2522
  %22 = load i32* %qp02, align 4, !dbg !2522, !tbaa !1132
  %qp = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10, !dbg !2522
  store i32 %22, i32* %qp, align 4, !dbg !2522, !tbaa !1132
  br label %if.end58, !dbg !2522

if.else:                                          ; preds = %land.lhs.true32, %if.then30
  %qp0 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 3, !dbg !2523
  %23 = load i32* %qp0, align 4, !dbg !2523, !tbaa !1132
  %qp37 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10, !dbg !2523
  store i32 %23, i32* %qp37, align 4, !dbg !2523, !tbaa !1132
  br label %if.end58

if.else39:                                        ; preds = %if.then28
  br i1 %cmp31, label %land.lhs.true42, label %if.else48, !dbg !2524

land.lhs.true42:                                  ; preds = %if.else39
  %24 = load i32* %tr, align 4, !dbg !2524, !tbaa !1132
  %cmp45 = icmp slt i32 %24, %20, !dbg !2524
  br i1 %cmp45, label %if.else48, label %if.then46, !dbg !2524

if.then46:                                        ; preds = %land.lhs.true42
  %qpN2 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 80, !dbg !2526
  %25 = load i32* %qpN2, align 4, !dbg !2526, !tbaa !1132
  %qp47 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10, !dbg !2526
  store i32 %25, i32* %qp47, align 4, !dbg !2526, !tbaa !1132
  br label %if.end50, !dbg !2526

if.else48:                                        ; preds = %land.lhs.true42, %if.else39
  %qpN = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 4, !dbg !2527
  %26 = load i32* %qpN, align 4, !dbg !2527, !tbaa !1132
  %qp49 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10, !dbg !2527
  store i32 %26, i32* %qp49, align 4, !dbg !2527, !tbaa !1132
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then46
  %cmp52 = icmp eq i32 %19, 3, !dbg !2528
  br i1 %cmp52, label %if.then53, label %if.end58, !dbg !2528

if.then53:                                        ; preds = %if.end50
  %qpsp = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 44, !dbg !2529
  %27 = load i32* %qpsp, align 4, !dbg !2529, !tbaa !1132
  %qp54 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10, !dbg !2529
  store i32 %27, i32* %qp54, align 4, !dbg !2529, !tbaa !1132
  %qpsp_pred = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 45, !dbg !2531
  %28 = load i32* %qpsp_pred, align 4, !dbg !2531, !tbaa !1132
  %qpsp55 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 11, !dbg !2531
  store i32 %28, i32* %qpsp55, align 4, !dbg !2531, !tbaa !1132
  br label %if.end58, !dbg !2532

if.end58:                                         ; preds = %if.end26, %if.else, %if.then36, %if.then53, %if.end50
  %mb_y_upd = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 22, !dbg !2533
  %29 = load i32* %mb_y_upd, align 4, !dbg !2533, !tbaa !1132
  %mb_y_intra = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 23, !dbg !2533
  store i32 %29, i32* %mb_y_intra, align 4, !dbg !2533, !tbaa !1132
  %intra_upd = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 19, !dbg !2534
  %30 = load i32* %intra_upd, align 4, !dbg !2534, !tbaa !1132
  %cmp59 = icmp sgt i32 %30, 0, !dbg !2534
  br i1 %cmp59, label %if.then60, label %if.end275, !dbg !2534

if.then60:                                        ; preds = %if.end58
  %31 = load i32* %number, align 4, !dbg !2535, !tbaa !1132
  %div63 = sdiv i32 %31, %30, !dbg !2535
  %width = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 13, !dbg !2535
  %32 = load i32* %width, align 4, !dbg !2535, !tbaa !1132
  %div64 = sdiv i32 %32, 16, !dbg !2535
  %rem = srem i32 %div63, %div64, !dbg !2535
  store i32 %rem, i32* %mb_y_upd, align 4, !dbg !2535, !tbaa !1132
  br label %if.end275, !dbg !2537

if.else67:                                        ; preds = %entry
  %p_interval = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 66, !dbg !2538
  store i32 %add, i32* %p_interval, align 4, !dbg !2538, !tbaa !1132
  %sub = add nsw i32 %div, -1, !dbg !2540
  %mul72 = mul nsw i32 %sub, %add, !dbg !2540
  %fld_type73 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 56, !dbg !2540
  %33 = load i32* %fld_type73, align 4, !dbg !2540, !tbaa !1132
  %add74 = add nsw i32 %mul72, %33, !dbg !2540
  tail call void @llvm.dbg.value(metadata !{i32 %add74}, i64 0, metadata !630), !dbg !2540
  %mul77 = mul nsw i32 %add, %div, !dbg !2541
  %add79 = add nsw i32 %mul77, %33, !dbg !2541
  tail call void @llvm.dbg.value(metadata !{i32 %add79}, i64 0, metadata !631), !dbg !2541
  %tobool81 = icmp eq i32 %33, 0, !dbg !2542
  br i1 %tobool81, label %if.then82, label %if.else105, !dbg !2542

if.then82:                                        ; preds = %if.else67
  %add83 = add nsw i32 %add74, 1, !dbg !2543
  store i32 %add83, i32* %0, align 4, !dbg !2543, !tbaa !1132
  %arrayidx84 = getelementptr inbounds i32* %0, i64 1, !dbg !2545
  store i32 %add74, i32* %arrayidx84, align 4, !dbg !2545, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !1299, i64 0, metadata !629), !dbg !2546
  %34 = load i32* %buf_cycle, align 4, !dbg !2546, !tbaa !1132
  %cmp86311 = icmp slt i32 %34, 1, !dbg !2546
  br i1 %cmp86311, label %if.end135, label %for.body, !dbg !2546

for.body:                                         ; preds = %if.then82, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %if.then82 ]
  %35 = trunc i64 %indvars.iv to i32, !dbg !2548
  %mul87 = shl nsw i32 %35, 1, !dbg !2548
  %sub88 = add nsw i32 %mul87, -2, !dbg !2548
  %idxprom = sext i32 %sub88 to i64, !dbg !2548
  %arrayidx89 = getelementptr inbounds i32* %0, i64 %idxprom, !dbg !2548
  %36 = load i32* %arrayidx89, align 4, !dbg !2548, !tbaa !1132
  %37 = load i32* %p_interval, align 4, !dbg !2548, !tbaa !1132
  %sub91 = sub nsw i32 %36, %37, !dbg !2548
  %idxprom93 = sext i32 %mul87 to i64, !dbg !2548
  %arrayidx94 = getelementptr inbounds i32* %0, i64 %idxprom93, !dbg !2548
  store i32 %sub91, i32* %arrayidx94, align 4, !dbg !2548, !tbaa !1132
  %sub96 = add nsw i32 %mul87, -1, !dbg !2550
  %idxprom97 = sext i32 %sub96 to i64, !dbg !2550
  %arrayidx98 = getelementptr inbounds i32* %0, i64 %idxprom97, !dbg !2550
  %38 = load i32* %arrayidx98, align 4, !dbg !2550, !tbaa !1132
  %39 = load i32* %p_interval, align 4, !dbg !2550, !tbaa !1132
  %sub100 = sub nsw i32 %38, %39, !dbg !2550
  %add102308 = or i32 %mul87, 1, !dbg !2550
  %idxprom103 = sext i32 %add102308 to i64, !dbg !2550
  %arrayidx104 = getelementptr inbounds i32* %0, i64 %idxprom103, !dbg !2550
  store i32 %sub100, i32* %arrayidx104, align 4, !dbg !2550, !tbaa !1132
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2546
  %40 = load i32* %buf_cycle, align 4, !dbg !2546, !tbaa !1132
  %cmp86 = icmp slt i32 %35, %40, !dbg !2546
  br i1 %cmp86, label %for.body, label %if.end135, !dbg !2546

if.else105:                                       ; preds = %if.else67
  %sub106 = add nsw i32 %add79, -1, !dbg !2551
  store i32 %sub106, i32* %0, align 4, !dbg !2551, !tbaa !1132
  %arrayidx108 = getelementptr inbounds i32* %0, i64 1, !dbg !2553
  store i32 %add74, i32* %arrayidx108, align 4, !dbg !2553, !tbaa !1132
  tail call void @llvm.dbg.value(metadata !1299, i64 0, metadata !629), !dbg !2554
  %41 = load i32* %buf_cycle, align 4, !dbg !2554, !tbaa !1132
  %cmp111315 = icmp slt i32 %41, 1, !dbg !2554
  br i1 %cmp111315, label %if.end135, label %for.body112, !dbg !2554

for.body112:                                      ; preds = %if.else105, %for.body112
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %for.body112 ], [ 1, %if.else105 ]
  %42 = trunc i64 %indvars.iv317 to i32, !dbg !2556
  %mul113 = shl nsw i32 %42, 1, !dbg !2556
  %sub114 = add nsw i32 %mul113, -2, !dbg !2556
  %idxprom115 = sext i32 %sub114 to i64, !dbg !2556
  %arrayidx116 = getelementptr inbounds i32* %0, i64 %idxprom115, !dbg !2556
  %43 = load i32* %arrayidx116, align 4, !dbg !2556, !tbaa !1132
  %44 = load i32* %p_interval, align 4, !dbg !2556, !tbaa !1132
  %sub118 = sub nsw i32 %43, %44, !dbg !2556
  %idxprom120 = sext i32 %mul113 to i64, !dbg !2556
  %arrayidx121 = getelementptr inbounds i32* %0, i64 %idxprom120, !dbg !2556
  store i32 %sub118, i32* %arrayidx121, align 4, !dbg !2556, !tbaa !1132
  %sub123 = add nsw i32 %mul113, -1, !dbg !2558
  %idxprom124 = sext i32 %sub123 to i64, !dbg !2558
  %arrayidx125 = getelementptr inbounds i32* %0, i64 %idxprom124, !dbg !2558
  %45 = load i32* %arrayidx125, align 4, !dbg !2558, !tbaa !1132
  %46 = load i32* %p_interval, align 4, !dbg !2558, !tbaa !1132
  %sub127 = sub nsw i32 %45, %46, !dbg !2558
  %add129309 = or i32 %mul113, 1, !dbg !2558
  %idxprom130 = sext i32 %add129309 to i64, !dbg !2558
  %arrayidx131 = getelementptr inbounds i32* %0, i64 %idxprom130, !dbg !2558
  store i32 %sub127, i32* %arrayidx131, align 4, !dbg !2558, !tbaa !1132
  %indvars.iv.next318 = add i64 %indvars.iv317, 1, !dbg !2554
  %47 = load i32* %buf_cycle, align 4, !dbg !2554, !tbaa !1132
  %cmp111 = icmp slt i32 %42, %47, !dbg !2554
  br i1 %cmp111, label %for.body112, label %if.end135, !dbg !2554

if.end135:                                        ; preds = %if.else105, %for.body112, %if.then82, %for.body
  %last_frame136 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 79, !dbg !2559
  %48 = load i32* %last_frame136, align 4, !dbg !2559, !tbaa !1132
  %tobool137 = icmp eq i32 %48, 0, !dbg !2559
  br i1 %tobool137, label %if.end147, label %land.lhs.true138, !dbg !2559

land.lhs.true138:                                 ; preds = %if.end135
  %49 = load i32* %number, align 4, !dbg !2559, !tbaa !1132
  %add140 = add nsw i32 %49, 1, !dbg !2559
  %no_frames141 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 2, !dbg !2559
  %50 = load i32* %no_frames141, align 4, !dbg !2559, !tbaa !1132
  %cmp142 = icmp eq i32 %add140, %50, !dbg !2559
  br i1 %cmp142, label %if.then143, label %if.end147, !dbg !2559

if.then143:                                       ; preds = %land.lhs.true138
  tail call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !631), !dbg !2560
  %sub145 = sub nsw i32 %48, %add74, !dbg !2562
  store i32 %sub145, i32* %p_interval, align 4, !dbg !2562, !tbaa !1132
  br label %if.end147, !dbg !2563

if.end147:                                        ; preds = %if.end135, %if.then143, %land.lhs.true138
  %nextP_no.0 = phi i32 [ %48, %if.then143 ], [ %add79, %land.lhs.true138 ], [ %add79, %if.end135 ]
  %51 = load i32* %jumpd, align 4, !dbg !2564, !tbaa !1132
  %add149 = add nsw i32 %51, 1, !dbg !2564
  %conv = sitofp i32 %add149 to double, !dbg !2564
  %52 = load i32* %successive_Bframe, align 4, !dbg !2564, !tbaa !1132
  %conv151 = sitofp i32 %52 to double, !dbg !2564
  %add152 = fadd double %conv151, 1.000000e+00, !dbg !2564
  %div153 = fdiv double %conv, %add152, !dbg !2564
  %b_interval = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 65, !dbg !2564
  store double %div153, double* %b_interval, align 8, !dbg !2564, !tbaa !1309
  %PyramidCoding = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 55, !dbg !2565
  %53 = load i32* %PyramidCoding, align 4, !dbg !2565, !tbaa !1132
  %cmp154 = icmp eq i32 %53, 3, !dbg !2565
  br i1 %cmp154, label %if.end158.thread, label %if.end158, !dbg !2565

if.end158.thread:                                 ; preds = %if.end147
  store double 1.000000e+00, double* %b_interval, align 8, !dbg !2566, !tbaa !1309
  %54 = load i32* %b_frame_to_code, align 4, !dbg !2567, !tbaa !1132
  br label %if.then161, !dbg !2568

if.end158:                                        ; preds = %if.end147
  %tobool160 = icmp eq i32 %53, 0, !dbg !2568
  %add163 = fadd double %div153, 1.000000e+00, !dbg !2567
  %55 = load i32* %b_frame_to_code, align 4, !dbg !2567, !tbaa !1132
  br i1 %tobool160, label %if.else174, label %if.then161, !dbg !2568

if.then161:                                       ; preds = %if.end158.thread, %if.end158
  %56 = phi i32 [ %54, %if.end158.thread ], [ %55, %if.end158 ]
  %add163321 = phi double [ 2.000000e+00, %if.end158.thread ], [ %add163, %if.end158 ]
  %sub165 = add nsw i32 %56, -1, !dbg !2567
  %idxprom166 = sext i32 %sub165 to i64, !dbg !2567
  %57 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !2567, !tbaa !1126
  %display_no = getelementptr inbounds %struct.GOP_DATA* %57, i64 %idxprom166, i32 1, !dbg !2567
  %58 = load i32* %display_no, align 4, !dbg !2567, !tbaa !1132
  %add168 = add nsw i32 %58, 1, !dbg !2567
  %conv169 = sitofp i32 %add168 to double, !dbg !2567
  %mul170 = fmul double %add163321, %conv169, !dbg !2567
  %conv171 = fptosi double %mul170 to i32, !dbg !2567
  %add172 = add nsw i32 %conv171, %add74, !dbg !2567
  %tr173 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 55, !dbg !2567
  store i32 %add172, i32* %tr173, align 4, !dbg !2567, !tbaa !1132
  br label %if.end183, !dbg !2567

if.else174:                                       ; preds = %if.end158
  %conv178 = sitofp i32 %55 to double, !dbg !2569
  %mul179 = fmul double %add163, %conv178, !dbg !2569
  %conv180 = fptosi double %mul179 to i32, !dbg !2569
  %add181 = add nsw i32 %conv180, %add74, !dbg !2569
  %tr182 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 55, !dbg !2569
  store i32 %add181, i32* %tr182, align 4, !dbg !2569, !tbaa !1132
  br label %if.end183

if.end183:                                        ; preds = %if.else174, %if.then161
  %59 = phi i32 [ %55, %if.else174 ], [ %56, %if.then161 ]
  %60 = phi i32 [ %add181, %if.else174 ], [ %add172, %if.then161 ]
  %cmp185 = icmp slt i32 %60, %nextP_no.0, !dbg !2570
  br i1 %cmp185, label %if.end190, label %if.then187, !dbg !2570

if.then187:                                       ; preds = %if.end183
  %tr184 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 55, !dbg !2570
  %sub188 = add nsw i32 %nextP_no.0, -1, !dbg !2571
  store i32 %sub188, i32* %tr184, align 4, !dbg !2571, !tbaa !1132
  br label %if.end190, !dbg !2571

if.end190:                                        ; preds = %if.end183, %if.then187
  %61 = phi i32 [ %60, %if.end183 ], [ %sub188, %if.then187 ]
  %RCEnable191 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 127, !dbg !2572
  %62 = load i32* %RCEnable191, align 4, !dbg !2572, !tbaa !1132
  %tobool192 = icmp eq i32 %62, 0, !dbg !2572
  %63 = load i32* %PyramidCoding, align 4, !dbg !2572, !tbaa !1132
  %cmp195 = icmp eq i32 %63, 3, !dbg !2572
  br i1 %tobool192, label %land.lhs.true193, label %if.else263, !dbg !2572

land.lhs.true193:                                 ; preds = %if.end190
  br i1 %cmp195, label %if.then267, label %if.then197, !dbg !2572

if.then197:                                       ; preds = %land.lhs.true193
  %qp2start198 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 82, !dbg !2573
  %64 = load i32* %qp2start198, align 4, !dbg !2573, !tbaa !1132
  %cmp199 = icmp slt i32 %64, 1, !dbg !2573
  %cmp204 = icmp slt i32 %61, %64, !dbg !2573
  %or.cond = or i1 %cmp199, %cmp204, !dbg !2573
  br i1 %or.cond, label %if.else208, label %if.then206, !dbg !2573

if.then206:                                       ; preds = %if.then197
  %qpB2 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 81, !dbg !2575
  %65 = load i32* %qpB2, align 4, !dbg !2575, !tbaa !1132
  %qp207 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10, !dbg !2575
  store i32 %65, i32* %qp207, align 4, !dbg !2575, !tbaa !1132
  br label %if.end210, !dbg !2575

if.else208:                                       ; preds = %if.then197
  %qpB = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 35, !dbg !2576
  %66 = load i32* %qpB, align 4, !dbg !2576, !tbaa !1132
  %qp209 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10, !dbg !2576
  store i32 %66, i32* %qp209, align 4, !dbg !2576, !tbaa !1132
  br label %if.end210

if.end210:                                        ; preds = %if.else208, %if.then206
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 113, !dbg !2577
  %67 = load i32* %nal_reference_idc, align 4, !dbg !2577, !tbaa !1132
  %tobool211 = icmp eq i32 %67, 0, !dbg !2577
  br i1 %tobool211, label %if.end275, label %if.then212, !dbg !2577

if.then212:                                       ; preds = %if.end210
  %68 = load i32* %qp2start198, align 4, !dbg !2578, !tbaa !1132
  %cmp214 = icmp slt i32 %68, 1, !dbg !2578
  %cmp219 = icmp slt i32 %61, %68, !dbg !2578
  %or.cond322 = or i1 %cmp214, %cmp219, !dbg !2578
  br i1 %or.cond322, label %if.else239, label %if.then221, !dbg !2578

if.then221:                                       ; preds = %if.then212
  %qpB2222 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 81, !dbg !2580
  %69 = load i32* %qpB2222, align 4, !dbg !2580, !tbaa !1132
  %qpBRS2Offset = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 84, !dbg !2580
  %70 = load i32* %qpBRS2Offset, align 4, !dbg !2580, !tbaa !1132
  %add223 = add nsw i32 %70, %69, !dbg !2580
  %cmp224 = icmp slt i32 %add223, 0, !dbg !2580
  br i1 %cmp224, label %cond.end236, label %cond.false, !dbg !2580

cond.false:                                       ; preds = %if.then221
  %cmp229 = icmp sgt i32 %add223, 51, !dbg !2580
  %.add223 = select i1 %cmp229, i32 51, i32 %add223, !dbg !2580
  br label %cond.end236, !dbg !2580

cond.end236:                                      ; preds = %cond.false, %if.then221
  %cond237 = phi i32 [ 0, %if.then221 ], [ %.add223, %cond.false ], !dbg !2580
  %qp238 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10, !dbg !2580
  store i32 %cond237, i32* %qp238, align 4, !dbg !2580, !tbaa !1132
  br label %if.end275, !dbg !2580

if.else239:                                       ; preds = %if.then212
  %qpB240 = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 35, !dbg !2581
  %71 = load i32* %qpB240, align 4, !dbg !2581, !tbaa !1132
  %qpBRSOffset = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 36, !dbg !2581
  %72 = load i32* %qpBRSOffset, align 4, !dbg !2581, !tbaa !1132
  %add241 = add nsw i32 %72, %71, !dbg !2581
  %cmp242 = icmp slt i32 %add241, 0, !dbg !2581
  br i1 %cmp242, label %cond.end258, label %cond.false245, !dbg !2581

cond.false245:                                    ; preds = %if.else239
  %cmp249 = icmp sgt i32 %add241, 51, !dbg !2581
  %.add241 = select i1 %cmp249, i32 51, i32 %add241, !dbg !2581
  br label %cond.end258, !dbg !2581

cond.end258:                                      ; preds = %cond.false245, %if.else239
  %cond259 = phi i32 [ 0, %if.else239 ], [ %.add241, %cond.false245 ], !dbg !2581
  %qp260 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10, !dbg !2581
  store i32 %cond259, i32* %qp260, align 4, !dbg !2581, !tbaa !1132
  br label %if.end275

if.else263:                                       ; preds = %if.end190
  br i1 %cmp195, label %if.then267, label %if.end275, !dbg !2582

if.then267:                                       ; preds = %land.lhs.true193, %if.else263
  %sub269 = add nsw i32 %59, -1, !dbg !2583
  %idxprom270 = sext i32 %sub269 to i64, !dbg !2583
  %73 = load %struct.GOP_DATA** @gop_structure, align 8, !dbg !2583, !tbaa !1126
  %slice_qp = getelementptr inbounds %struct.GOP_DATA* %73, i64 %idxprom270, i32 3, !dbg !2583
  %74 = load i32* %slice_qp, align 4, !dbg !2583, !tbaa !1132
  %qp272 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 10, !dbg !2583
  store i32 %74, i32* %qp272, align 4, !dbg !2583, !tbaa !1132
  br label %if.end275, !dbg !2585

if.end275:                                        ; preds = %if.end210, %cond.end236, %cond.end258, %if.then267, %if.else263, %if.end58, %if.then60
  %75 = load i32* %jumpd, align 4, !dbg !2586, !tbaa !1132
  %div277 = sdiv i32 %75, 2, !dbg !2586
  store i32 %div277, i32* %jumpd, align 4, !dbg !2586, !tbaa !1132
  %76 = load i32* %successive_Bframe, align 4, !dbg !2587, !tbaa !1132
  %div279 = sdiv i32 %76, 2, !dbg !2587
  store i32 %div279, i32* %successive_Bframe, align 4, !dbg !2587, !tbaa !1132
  %77 = load i32* %buf_cycle, align 4, !dbg !2588, !tbaa !1132
  %mul281 = shl nsw i32 %77, 1, !dbg !2588
  store i32 %mul281, i32* %buf_cycle, align 4, !dbg !2588, !tbaa !1132
  %78 = load i32* %number, align 4, !dbg !2589, !tbaa !1132
  %mul283 = shl i32 %78, 1, !dbg !2589
  %fld_type284 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 56, !dbg !2589
  %79 = load i32* %fld_type284, align 4, !dbg !2589, !tbaa !1132
  %add285 = add nsw i32 %mul283, %79, !dbg !2589
  store i32 %add285, i32* %number, align 4, !dbg !2589, !tbaa !1132
  %width287 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 13, !dbg !2590
  %80 = load i32* %width287, align 4, !dbg !2590, !tbaa !1132
  %height = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 15, !dbg !2590
  %81 = load i32* %height, align 4, !dbg !2590, !tbaa !1132
  %mul288 = mul nsw i32 %81, %80, !dbg !2590
  %div289 = sdiv i32 %mul288, 256, !dbg !2590
  %total_number_mb = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 4, !dbg !2590
  store i32 %div289, i32* %total_number_mb, align 4, !dbg !2590, !tbaa !1132
  ret void, !dbg !2591
}

; Function Attrs: optsize
declare void @UpdateSubseqInfo(i32) #3

; Function Attrs: optsize
declare void @UpdateSceneInformation(i32, i32, i32, i32) #3

; Function Attrs: optsize
declare i32 @decide_fld_frame(float, float, i32, i32, double) #3

; Function Attrs: optsize
declare void @combine_field(...) #3

; Function Attrs: optsize
declare %struct.NALU_t* @AllocNALU(...) #3

; Function Attrs: optsize
declare void @FreeNALU(%struct.NALU_t*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

declare double @exp2(double)

; Function Attrs: nounwind readnone
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !26, metadata !27, metadata !702, metadata !26, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !9, metadata !14, metadata !21}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 185, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 185, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"FRAME", i64 0} ; [ DW_TAG_enumerator ] [FRAME :: 0]
!7 = metadata !{i32 786472, metadata !"TOP_FIELD", i64 1} ; [ DW_TAG_enumerator ] [TOP_FIELD :: 1]
!8 = metadata !{i32 786472, metadata !"BOTTOM_FIELD", i64 2} ; [ DW_TAG_enumerator ] [BOTTOM_FIELD :: 2]
!9 = metadata !{i32 786436, metadata !10, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !13}
!12 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!13 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!14 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 192, i64 32, i64 32, i32 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 192, size 32, align 32, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!16 = metadata !{i32 786472, metadata !"P_SLICE", i64 0} ; [ DW_TAG_enumerator ] [P_SLICE :: 0]
!17 = metadata !{i32 786472, metadata !"B_SLICE", i64 1} ; [ DW_TAG_enumerator ] [B_SLICE :: 1]
!18 = metadata !{i32 786472, metadata !"I_SLICE", i64 2} ; [ DW_TAG_enumerator ] [I_SLICE :: 2]
!19 = metadata !{i32 786472, metadata !"SP_SLICE", i64 3} ; [ DW_TAG_enumerator ] [SP_SLICE :: 3]
!20 = metadata !{i32 786472, metadata !"SI_SLICE", i64 4} ; [ DW_TAG_enumerator ] [SI_SLICE :: 4]
!21 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 111, i64 32, i64 32, i32 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 111, size 32, align 32, offset 0] [from ]
!22 = metadata !{metadata !23, metadata !24, metadata !25}
!23 = metadata !{i32 786472, metadata !"FRAME_CODING", i64 0} ; [ DW_TAG_enumerator ] [FRAME_CODING :: 0]
!24 = metadata !{i32 786472, metadata !"FIELD_CODING", i64 1} ; [ DW_TAG_enumerator ] [FIELD_CODING :: 1]
!25 = metadata !{i32 786472, metadata !"ADAPTIVE_CODING", i64 2} ; [ DW_TAG_enumerator ] [ADAPTIVE_CODING :: 2]
!26 = metadata !{i32 0}
!27 = metadata !{metadata !28, metadata !51, metadata !253, metadata !286, metadata !287, metadata !293, metadata !301, metadata !386, metadata !389, metadata !464, metadata !480, metadata !523, metadata !524, metadata !525, metadata !526, metadata !546, metadata !547, metadata !561, metadata !567, metadata !571, metadata !575, metadata !579, metadata !583, metadata !588, metadata !592, metadata !598, metadata !606, metadata !617, metadata !627, metadata !632, metadata !637, metadata !638, metadata !646, metadata !652, metadata !665, metadata !673, metadata !682}
!28 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"MbAffPostProc", metadata !"MbAffPostProc", metadata !"", i32 122, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @MbAffPostProc, null, null, metadata !32, i32 123} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 123] [MbAffPostProc]
!29 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!30 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null}
!32 = metadata !{metadata !33, metadata !39, metadata !42, metadata !44, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50}
!33 = metadata !{i32 786688, metadata !28, metadata !"temp", metadata !29, i32 124, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 124]
!34 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 16, i32 0, i32 0, metadata !35, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 16, offset 0] [from unsigned short]
!35 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!36 = metadata !{metadata !37, metadata !38}
!37 = metadata !{i32 786465, i64 0, i64 16}       ; [ DW_TAG_subrange_type ] [0, 15]
!38 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!39 = metadata !{i32 786688, metadata !28, metadata !"imgY", metadata !29, i32 126, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imgY] [line 126]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!42 = metadata !{i32 786688, metadata !28, metadata !"imgUV", metadata !29, i32 127, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imgUV] [line 127]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786688, metadata !28, metadata !"i", metadata !29, i32 128, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 128]
!45 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!46 = metadata !{i32 786688, metadata !28, metadata !"x", metadata !29, i32 128, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 128]
!47 = metadata !{i32 786688, metadata !28, metadata !"y", metadata !29, i32 128, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 128]
!48 = metadata !{i32 786688, metadata !28, metadata !"x0", metadata !29, i32 128, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x0] [line 128]
!49 = metadata !{i32 786688, metadata !28, metadata !"y0", metadata !29, i32 128, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y0] [line 128]
!50 = metadata !{i32 786688, metadata !28, metadata !"uv", metadata !29, i32 128, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 128]
!51 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"code_a_picture", metadata !"code_a_picture", metadata !"", i32 200, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.Picture*)* @code_a_picture, null, null, metadata !248, i32 201} ; [ DW_TAG_subprogram ] [line 200] [def] [scope 201] [code_a_picture]
!52 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{null, metadata !54}
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!55 = metadata !{i32 786454, metadata !4, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!56 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !57, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !243, metadata !244, metadata !246, metadata !247}
!58 = metadata !{i32 786445, metadata !4, metadata !56, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!59 = metadata !{i32 786445, metadata !4, metadata !56, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!60 = metadata !{i32 786445, metadata !4, metadata !56, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !61} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !62, metadata !241, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!63 = metadata !{i32 786454, metadata !4, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!64 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !65, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !151, metadata !189, metadata !216, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !238}
!66 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!67 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!68 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!69 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!70 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!71 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!72 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !73} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!74 = metadata !{i32 786454, metadata !4, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!75 = metadata !{i32 786451, metadata !4, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !76, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!76 = metadata !{metadata !77, metadata !97, metadata !123}
!77 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!79 = metadata !{i32 786454, metadata !4, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!80 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !81, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!81 = metadata !{metadata !82, metadata !83, metadata !84, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !96}
!82 = metadata !{i32 786445, metadata !4, metadata !80, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!83 = metadata !{i32 786445, metadata !4, metadata !80, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!84 = metadata !{i32 786445, metadata !4, metadata !80, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!85 = metadata !{i32 786454, metadata !86, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!86 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/mbuffer.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!87 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!88 = metadata !{i32 786445, metadata !4, metadata !80, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!89 = metadata !{i32 786445, metadata !4, metadata !80, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!90 = metadata !{i32 786445, metadata !4, metadata !80, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !85} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!91 = metadata !{i32 786445, metadata !4, metadata !80, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !85} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!92 = metadata !{i32 786445, metadata !4, metadata !80, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !45} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!93 = metadata !{i32 786445, metadata !4, metadata !80, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !45} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!94 = metadata !{i32 786445, metadata !4, metadata !80, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !95} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!96 = metadata !{i32 786445, metadata !4, metadata !80, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !45} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!97 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !98} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!98 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!99 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !100, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!100 = metadata !{metadata !101, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122}
!101 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!102 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!103 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!104 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!105 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !102} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!106 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !102} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!107 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !95} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!108 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !109} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!109 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!110 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !102} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!111 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !102} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!112 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !102} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!113 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !102} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!114 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !102} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!115 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !95} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!116 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !109} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!117 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !45} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!118 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !45} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!119 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!120 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !45} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!121 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !45} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!122 = metadata !{i32 786445, metadata !4, metadata !99, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !45} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!123 = metadata !{i32 786445, metadata !4, metadata !75, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !124} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!124 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!125 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = metadata !{metadata !45, metadata !127, metadata !150}
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!128 = metadata !{i32 786454, metadata !4, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!129 = metadata !{i32 786451, metadata !4, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !130, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !143}
!131 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!132 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!133 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!134 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!135 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!136 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !102} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!137 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !45} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!138 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !45} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!139 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !140} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!141 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{null, metadata !45, metadata !45, metadata !109, metadata !109}
!143 = metadata !{i32 786445, metadata !4, metadata !129, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !144} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!144 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!145 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{null, metadata !147, metadata !148}
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!148 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!151 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !152} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!153 = metadata !{i32 786454, metadata !4, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!154 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !155, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!155 = metadata !{metadata !156, metadata !168, metadata !173, metadata !177, metadata !181, metadata !185, metadata !186}
!156 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!157 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !158, metadata !165, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!158 = metadata !{i32 786454, metadata !4, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!159 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !160, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!160 = metadata !{metadata !161, metadata !162, metadata !163}
!161 = metadata !{i32 786445, metadata !4, metadata !159, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!162 = metadata !{i32 786445, metadata !4, metadata !159, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !87} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!163 = metadata !{i32 786445, metadata !4, metadata !159, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !164} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!164 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!165 = metadata !{metadata !166, metadata !167}
!166 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!167 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!168 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !169} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!169 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !158, metadata !170, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!170 = metadata !{metadata !171, metadata !172}
!171 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!172 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!173 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !174} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!174 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !158, metadata !175, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!175 = metadata !{metadata !171, metadata !176}
!176 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!177 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !178} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!178 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !158, metadata !179, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!179 = metadata !{metadata !171, metadata !180}
!180 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!181 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !182} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!182 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !158, metadata !183, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!183 = metadata !{metadata !184}
!184 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!185 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !182} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!186 = metadata !{i32 786445, metadata !4, metadata !154, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !187} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!187 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !158, metadata !188, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!188 = metadata !{metadata !166}
!189 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !190} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!190 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!191 = metadata !{i32 786454, metadata !4, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!192 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !193, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!193 = metadata !{metadata !194, metadata !197, metadata !198, metadata !201, metadata !204, metadata !208, metadata !209, metadata !213, metadata !214, metadata !215}
!194 = metadata !{i32 786445, metadata !4, metadata !192, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !195} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!195 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !158, metadata !196, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!196 = metadata !{metadata !171}
!197 = metadata !{i32 786445, metadata !4, metadata !192, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !182} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!198 = metadata !{i32 786445, metadata !4, metadata !192, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !199} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!199 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !158, metadata !200, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!200 = metadata !{metadata !166, metadata !184}
!201 = metadata !{i32 786445, metadata !4, metadata !192, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !202} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!202 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !158, metadata !203, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!203 = metadata !{metadata !176, metadata !184}
!204 = metadata !{i32 786445, metadata !4, metadata !192, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !205} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!205 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !158, metadata !206, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!206 = metadata !{metadata !176, metadata !207}
!207 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!208 = metadata !{i32 786445, metadata !4, metadata !192, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !205} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!209 = metadata !{i32 786445, metadata !4, metadata !192, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !210} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!210 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !158, metadata !211, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!211 = metadata !{metadata !176, metadata !212}
!212 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!213 = metadata !{i32 786445, metadata !4, metadata !192, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !210} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!214 = metadata !{i32 786445, metadata !4, metadata !192, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !205} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!215 = metadata !{i32 786445, metadata !4, metadata !192, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !205} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!216 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !217} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!218 = metadata !{i32 786454, metadata !4, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!219 = metadata !{i32 786451, metadata !4, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !220, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!220 = metadata !{metadata !221, metadata !222, metadata !223}
!221 = metadata !{i32 786445, metadata !4, metadata !219, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!222 = metadata !{i32 786445, metadata !4, metadata !219, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!223 = metadata !{i32 786445, metadata !4, metadata !219, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !224} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!224 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!225 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !45} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!226 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !109} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!227 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !109} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!228 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !109} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!229 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!230 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !109} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!231 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !109} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!232 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !109} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!233 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !234} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!234 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !235} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!235 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!236 = metadata !{metadata !237, metadata !45}
!237 = metadata !{i32 786454, metadata !4, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!238 = metadata !{i32 786445, metadata !4, metadata !64, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !239} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!239 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !45, metadata !240, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!240 = metadata !{metadata !166, metadata !171}
!241 = metadata !{metadata !242}
!242 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!243 = metadata !{i32 786445, metadata !4, metadata !56, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !45} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!244 = metadata !{i32 786445, metadata !4, metadata !56, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !245} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!245 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!246 = metadata !{i32 786445, metadata !4, metadata !56, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !245} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!247 = metadata !{i32 786445, metadata !4, metadata !56, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !245} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!248 = metadata !{metadata !249, metadata !250, metadata !251, metadata !252}
!249 = metadata !{i32 786689, metadata !51, metadata !"pic", metadata !29, i32 16777416, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pic] [line 200]
!250 = metadata !{i32 786688, metadata !51, metadata !"NumberOfCodedMBs", metadata !29, i32 202, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NumberOfCodedMBs] [line 202]
!251 = metadata !{i32 786688, metadata !51, metadata !"SliceGroup", metadata !29, i32 203, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [SliceGroup] [line 203]
!252 = metadata !{i32 786688, metadata !51, metadata !"j", metadata !29, i32 204, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 204]
!253 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"encode_one_frame", metadata !"encode_one_frame", metadata !"", i32 266, metadata !254, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @encode_one_frame, null, null, metadata !256, i32 267} ; [ DW_TAG_subprogram ] [line 266] [def] [scope 267] [encode_one_frame]
!254 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!255 = metadata !{metadata !45}
!256 = metadata !{metadata !257, metadata !258, metadata !262, metadata !263, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285}
!257 = metadata !{i32 786688, metadata !253, metadata !"FrameNumberInFile", metadata !29, i32 270, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FrameNumberInFile] [line 270]
!258 = metadata !{i32 786688, metadata !253, metadata !"ltime1", metadata !29, i32 277, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ltime1] [line 277]
!259 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !260} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!260 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !261} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!261 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!262 = metadata !{i32 786688, metadata !253, metadata !"ltime2", metadata !29, i32 278, metadata !259, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ltime2] [line 278]
!263 = metadata !{i32 786688, metadata !253, metadata !"tstruct1", metadata !29, i32 284, metadata !264, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tstruct1] [line 284]
!264 = metadata !{i32 786451, metadata !265, null, metadata !"timeb", i32 31, i64 128, i64 64, i32 0, i32 0, null, metadata !266, i32 0, null, null} ; [ DW_TAG_structure_type ] [timeb] [line 31, size 128, align 64, offset 0] [from ]
!265 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/sys/timeb.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!266 = metadata !{metadata !267, metadata !268, metadata !269, metadata !271}
!267 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"time", i32 33, i64 64, i64 64, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [time] [line 33, size 64, align 64, offset 0] [from time_t]
!268 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"millitm", i32 34, i64 16, i64 16, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [millitm] [line 34, size 16, align 16, offset 64] [from unsigned short]
!269 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"timezone", i32 35, i64 16, i64 16, i64 80, i32 0, metadata !270} ; [ DW_TAG_member ] [timezone] [line 35, size 16, align 16, offset 80] [from short]
!270 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!271 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"dstflag", i32 36, i64 16, i64 16, i64 96, i32 0, metadata !270} ; [ DW_TAG_member ] [dstflag] [line 36, size 16, align 16, offset 96] [from short]
!272 = metadata !{i32 786688, metadata !253, metadata !"tstruct2", metadata !29, i32 285, metadata !264, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tstruct2] [line 285]
!273 = metadata !{i32 786688, metadata !253, metadata !"tmp_time", metadata !29, i32 288, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_time] [line 288]
!274 = metadata !{i32 786688, metadata !253, metadata !"bits_frm", metadata !29, i32 289, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bits_frm] [line 289]
!275 = metadata !{i32 786688, metadata !253, metadata !"bits_fld", metadata !29, i32 289, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bits_fld] [line 289]
!276 = metadata !{i32 786688, metadata !253, metadata !"dis_frm", metadata !29, i32 290, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dis_frm] [line 290]
!277 = metadata !{i32 786688, metadata !253, metadata !"dis_frm_y", metadata !29, i32 290, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dis_frm_y] [line 290]
!278 = metadata !{i32 786688, metadata !253, metadata !"dis_frm_u", metadata !29, i32 290, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dis_frm_u] [line 290]
!279 = metadata !{i32 786688, metadata !253, metadata !"dis_frm_v", metadata !29, i32 290, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dis_frm_v] [line 290]
!280 = metadata !{i32 786688, metadata !253, metadata !"dis_fld", metadata !29, i32 291, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dis_fld] [line 291]
!281 = metadata !{i32 786688, metadata !253, metadata !"dis_fld_y", metadata !29, i32 291, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dis_fld_y] [line 291]
!282 = metadata !{i32 786688, metadata !253, metadata !"dis_fld_u", metadata !29, i32 291, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dis_fld_u] [line 291]
!283 = metadata !{i32 786688, metadata !253, metadata !"dis_fld_v", metadata !29, i32 291, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dis_fld_v] [line 291]
!284 = metadata !{i32 786688, metadata !253, metadata !"pic_type", metadata !29, i32 294, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pic_type] [line 294]
!285 = metadata !{i32 786688, metadata !253, metadata !"bits", metadata !29, i32 294, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bits] [line 294]
!286 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"copy_params", metadata !"copy_params", metadata !"", i32 704, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @copy_params, null, null, metadata !26, i32 705} ; [ DW_TAG_subprogram ] [line 704] [def] [scope 705] [copy_params]
!287 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"frame_picture", metadata !"frame_picture", metadata !"", i32 732, metadata !288, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.Picture*, i32)* @frame_picture, null, null, metadata !290, i32 733} ; [ DW_TAG_subprogram ] [line 732] [def] [scope 733] [frame_picture]
!288 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!289 = metadata !{null, metadata !54, metadata !45}
!290 = metadata !{metadata !291, metadata !292}
!291 = metadata !{i32 786689, metadata !287, metadata !"frame", metadata !29, i32 16777948, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frame] [line 732]
!292 = metadata !{i32 786689, metadata !287, metadata !"rd_pass", metadata !29, i32 33555164, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rd_pass] [line 732]
!293 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"field_picture", metadata !"field_picture", metadata !"", i32 818, metadata !294, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.Picture*, %struct.Picture*)* @field_picture, null, null, metadata !296, i32 819} ; [ DW_TAG_subprogram ] [line 818] [def] [scope 819] [field_picture]
!294 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!295 = metadata !{null, metadata !54, metadata !54}
!296 = metadata !{metadata !297, metadata !298, metadata !299, metadata !300}
!297 = metadata !{i32 786689, metadata !293, metadata !"top", metadata !29, i32 16778034, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 818]
!298 = metadata !{i32 786689, metadata !293, metadata !"bottom", metadata !29, i32 33555250, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bottom] [line 818]
!299 = metadata !{i32 786688, metadata !293, metadata !"old_pic_type", metadata !29, i32 821, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_pic_type] [line 821]
!300 = metadata !{i32 786688, metadata !293, metadata !"TopFieldBits", metadata !29, i32 822, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [TopFieldBits] [line 822]
!301 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"UnifiedOneForthPix", metadata !"UnifiedOneForthPix", metadata !"", i32 1406, metadata !302, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.storable_picture*)* @UnifiedOneForthPix, null, null, metadata !371, i32 1407} ; [ DW_TAG_subprogram ] [line 1406] [def] [scope 1407] [UnifiedOneForthPix]
!302 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!303 = metadata !{null, metadata !304}
!304 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from StorablePicture]
!305 = metadata !{i32 786454, metadata !86, null, metadata !"StorablePicture", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_typedef ] [StorablePicture] [line 82, size 0, align 0, offset 0] [from storable_picture]
!306 = metadata !{i32 786451, metadata !86, null, metadata !"storable_picture", i32 21, i64 52672, i64 64, i32 0, i32 0, null, metadata !307, i32 0, null, null} ; [ DW_TAG_structure_type ] [storable_picture] [line 21, size 52672, align 64, offset 0] [from ]
!307 = metadata !{metadata !308, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !350, metadata !354, metadata !355, metadata !357, metadata !359, metadata !360, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370}
!308 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"structure", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [structure] [line 23, size 32, align 32, offset 0] [from PictureStructure]
!309 = metadata !{i32 786454, metadata !86, null, metadata !"PictureStructure", i32 190, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [PictureStructure] [line 190, size 0, align 0, offset 0] [from ]
!310 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"poc", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ] [poc] [line 25, size 32, align 32, offset 32] [from int]
!311 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"top_poc", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [top_poc] [line 26, size 32, align 32, offset 64] [from int]
!312 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"bottom_poc", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [bottom_poc] [line 27, size 32, align 32, offset 96] [from int]
!313 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"frame_poc", i32 28, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [frame_poc] [line 28, size 32, align 32, offset 128] [from int]
!314 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"order_num", i32 29, i64 32, i64 32, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [order_num] [line 29, size 32, align 32, offset 160] [from int]
!315 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"ref_pic_num", i32 30, i64 12672, i64 64, i64 192, i32 0, metadata !316} ; [ DW_TAG_member ] [ref_pic_num] [line 30, size 12672, align 64, offset 192] [from ]
!316 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 12672, i64 64, i32 0, i32 0, metadata !317, metadata !319, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 12672, align 64, offset 0] [from int64]
!317 = metadata !{i32 786454, metadata !86, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !318} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!318 = metadata !{i32 786454, metadata !86, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !261} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!319 = metadata !{metadata !180, metadata !320}
!320 = metadata !{i32 786465, i64 0, i64 33}      ; [ DW_TAG_subrange_type ] [0, 32]
!321 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"frm_ref_pic_num", i32 31, i64 12672, i64 64, i64 12864, i32 0, metadata !316} ; [ DW_TAG_member ] [frm_ref_pic_num] [line 31, size 12672, align 64, offset 12864] [from ]
!322 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"top_ref_pic_num", i32 32, i64 12672, i64 64, i64 25536, i32 0, metadata !316} ; [ DW_TAG_member ] [top_ref_pic_num] [line 32, size 12672, align 64, offset 25536] [from ]
!323 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"bottom_ref_pic_num", i32 33, i64 12672, i64 64, i64 38208, i32 0, metadata !316} ; [ DW_TAG_member ] [bottom_ref_pic_num] [line 33, size 12672, align 64, offset 38208] [from ]
!324 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"frame_num", i32 34, i64 32, i64 32, i64 50880, i32 0, metadata !102} ; [ DW_TAG_member ] [frame_num] [line 34, size 32, align 32, offset 50880] [from unsigned int]
!325 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"pic_num", i32 35, i64 32, i64 32, i64 50912, i32 0, metadata !45} ; [ DW_TAG_member ] [pic_num] [line 35, size 32, align 32, offset 50912] [from int]
!326 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"long_term_pic_num", i32 36, i64 32, i64 32, i64 50944, i32 0, metadata !45} ; [ DW_TAG_member ] [long_term_pic_num] [line 36, size 32, align 32, offset 50944] [from int]
!327 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"long_term_frame_idx", i32 37, i64 32, i64 32, i64 50976, i32 0, metadata !45} ; [ DW_TAG_member ] [long_term_frame_idx] [line 37, size 32, align 32, offset 50976] [from int]
!328 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"is_long_term", i32 39, i64 32, i64 32, i64 51008, i32 0, metadata !45} ; [ DW_TAG_member ] [is_long_term] [line 39, size 32, align 32, offset 51008] [from int]
!329 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"used_for_reference", i32 40, i64 32, i64 32, i64 51040, i32 0, metadata !45} ; [ DW_TAG_member ] [used_for_reference] [line 40, size 32, align 32, offset 51040] [from int]
!330 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"is_output", i32 41, i64 32, i64 32, i64 51072, i32 0, metadata !45} ; [ DW_TAG_member ] [is_output] [line 41, size 32, align 32, offset 51072] [from int]
!331 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"non_existing", i32 42, i64 32, i64 32, i64 51104, i32 0, metadata !45} ; [ DW_TAG_member ] [non_existing] [line 42, size 32, align 32, offset 51104] [from int]
!332 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"size_x", i32 44, i64 32, i64 32, i64 51136, i32 0, metadata !45} ; [ DW_TAG_member ] [size_x] [line 44, size 32, align 32, offset 51136] [from int]
!333 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"size_y", i32 44, i64 32, i64 32, i64 51168, i32 0, metadata !45} ; [ DW_TAG_member ] [size_y] [line 44, size 32, align 32, offset 51168] [from int]
!334 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"size_x_cr", i32 44, i64 32, i64 32, i64 51200, i32 0, metadata !45} ; [ DW_TAG_member ] [size_x_cr] [line 44, size 32, align 32, offset 51200] [from int]
!335 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"size_y_cr", i32 44, i64 32, i64 32, i64 51232, i32 0, metadata !45} ; [ DW_TAG_member ] [size_y_cr] [line 44, size 32, align 32, offset 51232] [from int]
!336 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"chroma_vector_adjustment", i32 45, i64 32, i64 32, i64 51264, i32 0, metadata !45} ; [ DW_TAG_member ] [chroma_vector_adjustment] [line 45, size 32, align 32, offset 51264] [from int]
!337 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"coded_frame", i32 46, i64 32, i64 32, i64 51296, i32 0, metadata !45} ; [ DW_TAG_member ] [coded_frame] [line 46, size 32, align 32, offset 51296] [from int]
!338 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"MbaffFrameFlag", i32 47, i64 32, i64 32, i64 51328, i32 0, metadata !45} ; [ DW_TAG_member ] [MbaffFrameFlag] [line 47, size 32, align 32, offset 51328] [from int]
!339 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"imgY", i32 49, i64 64, i64 64, i64 51392, i32 0, metadata !40} ; [ DW_TAG_member ] [imgY] [line 49, size 64, align 64, offset 51392] [from ]
!340 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"imgY_11", i32 50, i64 64, i64 64, i64 51456, i32 0, metadata !41} ; [ DW_TAG_member ] [imgY_11] [line 50, size 64, align 64, offset 51456] [from ]
!341 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"imgY_11_w", i32 51, i64 64, i64 64, i64 51520, i32 0, metadata !41} ; [ DW_TAG_member ] [imgY_11_w] [line 51, size 64, align 64, offset 51520] [from ]
!342 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"imgY_ups", i32 52, i64 64, i64 64, i64 51584, i32 0, metadata !40} ; [ DW_TAG_member ] [imgY_ups] [line 52, size 64, align 64, offset 51584] [from ]
!343 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"imgY_ups_w", i32 53, i64 64, i64 64, i64 51648, i32 0, metadata !40} ; [ DW_TAG_member ] [imgY_ups_w] [line 53, size 64, align 64, offset 51648] [from ]
!344 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"imgUV", i32 54, i64 64, i64 64, i64 51712, i32 0, metadata !43} ; [ DW_TAG_member ] [imgUV] [line 54, size 64, align 64, offset 51712] [from ]
!345 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"mb_field", i32 56, i64 64, i64 64, i64 51776, i32 0, metadata !95} ; [ DW_TAG_member ] [mb_field] [line 56, size 64, align 64, offset 51776] [from ]
!346 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"ref_idx", i32 58, i64 64, i64 64, i64 51840, i32 0, metadata !347} ; [ DW_TAG_member ] [ref_idx] [line 58, size 64, align 64, offset 51840] [from ]
!347 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !348} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!348 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !349} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!349 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !270} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!350 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"ref_pic_id", i32 60, i64 64, i64 64, i64 51904, i32 0, metadata !351} ; [ DW_TAG_member ] [ref_pic_id] [line 60, size 64, align 64, offset 51904] [from ]
!351 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !352} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!352 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !353} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!353 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !317} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int64]
!354 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"ref_id", i32 63, i64 64, i64 64, i64 51968, i32 0, metadata !351} ; [ DW_TAG_member ] [ref_id] [line 63, size 64, align 64, offset 51968] [from ]
!355 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"mv", i32 66, i64 64, i64 64, i64 52032, i32 0, metadata !356} ; [ DW_TAG_member ] [mv] [line 66, size 64, align 64, offset 52032] [from ]
!356 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !347} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!357 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"moving_block", i32 68, i64 64, i64 64, i64 52096, i32 0, metadata !358} ; [ DW_TAG_member ] [moving_block] [line 68, size 64, align 64, offset 52096] [from ]
!358 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!359 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"field_frame", i32 69, i64 64, i64 64, i64 52160, i32 0, metadata !358} ; [ DW_TAG_member ] [field_frame] [line 69, size 64, align 64, offset 52160] [from ]
!360 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"top_field", i32 71, i64 64, i64 64, i64 52224, i32 0, metadata !361} ; [ DW_TAG_member ] [top_field] [line 71, size 64, align 64, offset 52224] [from ]
!361 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !306} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from storable_picture]
!362 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"bottom_field", i32 72, i64 64, i64 64, i64 52288, i32 0, metadata !361} ; [ DW_TAG_member ] [bottom_field] [line 72, size 64, align 64, offset 52288] [from ]
!363 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"frame", i32 73, i64 64, i64 64, i64 52352, i32 0, metadata !361} ; [ DW_TAG_member ] [frame] [line 73, size 64, align 64, offset 52352] [from ]
!364 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"chroma_format_idc", i32 75, i64 32, i64 32, i64 52416, i32 0, metadata !45} ; [ DW_TAG_member ] [chroma_format_idc] [line 75, size 32, align 32, offset 52416] [from int]
!365 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"frame_mbs_only_flag", i32 76, i64 32, i64 32, i64 52448, i32 0, metadata !45} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 76, size 32, align 32, offset 52448] [from int]
!366 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"frame_cropping_flag", i32 77, i64 32, i64 32, i64 52480, i32 0, metadata !45} ; [ DW_TAG_member ] [frame_cropping_flag] [line 77, size 32, align 32, offset 52480] [from int]
!367 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"frame_cropping_rect_left_offset", i32 78, i64 32, i64 32, i64 52512, i32 0, metadata !45} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 78, size 32, align 32, offset 52512] [from int]
!368 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"frame_cropping_rect_right_offset", i32 79, i64 32, i64 32, i64 52544, i32 0, metadata !45} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 79, size 32, align 32, offset 52544] [from int]
!369 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"frame_cropping_rect_top_offset", i32 80, i64 32, i64 32, i64 52576, i32 0, metadata !45} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 80, size 32, align 32, offset 52576] [from int]
!370 = metadata !{i32 786445, metadata !86, metadata !306, metadata !"frame_cropping_rect_bottom_offset", i32 81, i64 32, i64 32, i64 52608, i32 0, metadata !45} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 81, size 32, align 32, offset 52608] [from int]
!371 = metadata !{metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385}
!372 = metadata !{i32 786689, metadata !301, metadata !"s", metadata !29, i32 16778622, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1406]
!373 = metadata !{i32 786688, metadata !301, metadata !"is", metadata !29, i32 1408, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is] [line 1408]
!374 = metadata !{i32 786688, metadata !301, metadata !"i", metadata !29, i32 1409, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1409]
!375 = metadata !{i32 786688, metadata !301, metadata !"j", metadata !29, i32 1409, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1409]
!376 = metadata !{i32 786688, metadata !301, metadata !"j4", metadata !29, i32 1409, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j4] [line 1409]
!377 = metadata !{i32 786688, metadata !301, metadata !"ie2", metadata !29, i32 1410, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ie2] [line 1410]
!378 = metadata !{i32 786688, metadata !301, metadata !"je2", metadata !29, i32 1410, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [je2] [line 1410]
!379 = metadata !{i32 786688, metadata !301, metadata !"jj", metadata !29, i32 1410, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1410]
!380 = metadata !{i32 786688, metadata !301, metadata !"maxy", metadata !29, i32 1410, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxy] [line 1410]
!381 = metadata !{i32 786688, metadata !301, metadata !"out4Y", metadata !29, i32 1412, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out4Y] [line 1412]
!382 = metadata !{i32 786688, metadata !301, metadata !"ref11", metadata !29, i32 1413, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref11] [line 1413]
!383 = metadata !{i32 786688, metadata !301, metadata !"imgY", metadata !29, i32 1414, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imgY] [line 1414]
!384 = metadata !{i32 786688, metadata !301, metadata !"img_width", metadata !29, i32 1416, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [img_width] [line 1416]
!385 = metadata !{i32 786688, metadata !301, metadata !"img_height", metadata !29, i32 1417, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [img_height] [line 1417]
!386 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"dummy_slice_too_big", metadata !"dummy_slice_too_big", metadata !"", i32 1788, metadata !235, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @dummy_slice_too_big, null, null, metadata !387, i32 1789} ; [ DW_TAG_subprogram ] [line 1788] [def] [scope 1789] [dummy_slice_too_big]
!387 = metadata !{metadata !388}
!388 = metadata !{i32 786689, metadata !386, metadata !"bits_slice", metadata !29, i32 16779004, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bits_slice] [line 1788]
!389 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"copy_rdopt_data", metadata !"copy_rdopt_data", metadata !"", i32 1799, metadata !390, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @copy_rdopt_data, null, null, metadata !392, i32 1800} ; [ DW_TAG_subprogram ] [line 1799] [def] [scope 1800] [copy_rdopt_data]
!390 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!391 = metadata !{null, metadata !45}
!392 = metadata !{metadata !393, metadata !394, metadata !395, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463}
!393 = metadata !{i32 786689, metadata !389, metadata !"bot_block", metadata !29, i32 16779015, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bot_block] [line 1799]
!394 = metadata !{i32 786688, metadata !389, metadata !"mb_nr", metadata !29, i32 1801, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_nr] [line 1801]
!395 = metadata !{i32 786688, metadata !389, metadata !"currMB", metadata !29, i32 1802, metadata !396, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currMB] [line 1802]
!396 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !397} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Macroblock]
!397 = metadata !{i32 786454, metadata !4, null, metadata !"Macroblock", i32 406, i64 0, i64 0, i64 0, i32 0, metadata !398} ; [ DW_TAG_typedef ] [Macroblock] [line 406, size 0, align 0, offset 0] [from macroblock]
!398 = metadata !{i32 786451, metadata !4, null, metadata !"macroblock", i32 351, i64 5056, i64 64, i32 0, i32 0, null, metadata !399, i32 0, null, null} ; [ DW_TAG_structure_type ] [macroblock] [line 351, size 5056, align 64, offset 0] [from ]
!399 = metadata !{metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !409, metadata !411, metadata !412, metadata !413, metadata !416, metadata !419, metadata !420, metadata !421, metadata !422, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454}
!400 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"currSEnr", i32 353, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [currSEnr] [line 353, size 32, align 32, offset 0] [from int]
!401 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"slice_nr", i32 354, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ] [slice_nr] [line 354, size 32, align 32, offset 32] [from int]
!402 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"delta_qp", i32 355, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [delta_qp] [line 355, size 32, align 32, offset 64] [from int]
!403 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"qp", i32 356, i64 32, i64 32, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [qp] [line 356, size 32, align 32, offset 96] [from int]
!404 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"qpsp", i32 357, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [qpsp] [line 357, size 32, align 32, offset 128] [from int]
!405 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"bitcounter", i32 358, i64 256, i64 32, i64 160, i32 0, metadata !406} ; [ DW_TAG_member ] [bitcounter] [line 358, size 256, align 32, offset 160] [from ]
!406 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !45, metadata !407, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!407 = metadata !{metadata !408}
!408 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!409 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mb_available_up", i32 360, i64 64, i64 64, i64 448, i32 0, metadata !410} ; [ DW_TAG_member ] [mb_available_up] [line 360, size 64, align 64, offset 448] [from ]
!410 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !398} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from macroblock]
!411 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mb_available_left", i32 361, i64 64, i64 64, i64 512, i32 0, metadata !410} ; [ DW_TAG_member ] [mb_available_left] [line 361, size 64, align 64, offset 512] [from ]
!412 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mb_type", i32 363, i64 32, i64 32, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ] [mb_type] [line 363, size 32, align 32, offset 576] [from int]
!413 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mvd", i32 364, i64 2048, i64 32, i64 608, i32 0, metadata !414} ; [ DW_TAG_member ] [mvd] [line 364, size 2048, align 32, offset 608] [from ]
!414 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !45, metadata !415, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!415 = metadata !{metadata !171, metadata !184, metadata !184, metadata !171}
!416 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"intra_pred_modes", i32 365, i64 512, i64 32, i64 2656, i32 0, metadata !417} ; [ DW_TAG_member ] [intra_pred_modes] [line 365, size 512, align 32, offset 2656] [from ]
!417 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !45, metadata !418, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!418 = metadata !{metadata !37}
!419 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"intra_pred_modes8x8", i32 366, i64 512, i64 32, i64 3168, i32 0, metadata !417} ; [ DW_TAG_member ] [intra_pred_modes8x8] [line 366, size 512, align 32, offset 3168] [from ]
!420 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"cbp", i32 367, i64 32, i64 32, i64 3680, i32 0, metadata !45} ; [ DW_TAG_member ] [cbp] [line 367, size 32, align 32, offset 3680] [from int]
!421 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"cbp_blk", i32 368, i64 64, i64 64, i64 3712, i32 0, metadata !317} ; [ DW_TAG_member ] [cbp_blk] [line 368, size 64, align 64, offset 3712] [from int64]
!422 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"b8mode", i32 369, i64 128, i64 32, i64 3776, i32 0, metadata !423} ; [ DW_TAG_member ] [b8mode] [line 369, size 128, align 32, offset 3776] [from ]
!423 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !45, metadata !183, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!424 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"b8pdir", i32 370, i64 128, i64 32, i64 3904, i32 0, metadata !423} ; [ DW_TAG_member ] [b8pdir] [line 370, size 128, align 32, offset 3904] [from ]
!425 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"cbp_bits", i32 371, i64 64, i64 64, i64 4032, i32 0, metadata !164} ; [ DW_TAG_member ] [cbp_bits] [line 371, size 64, align 64, offset 4032] [from long unsigned int]
!426 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"lf_disable", i32 373, i64 32, i64 32, i64 4096, i32 0, metadata !45} ; [ DW_TAG_member ] [lf_disable] [line 373, size 32, align 32, offset 4096] [from int]
!427 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"lf_alpha_c0_offset", i32 374, i64 32, i64 32, i64 4128, i32 0, metadata !45} ; [ DW_TAG_member ] [lf_alpha_c0_offset] [line 374, size 32, align 32, offset 4128] [from int]
!428 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"lf_beta_offset", i32 375, i64 32, i64 32, i64 4160, i32 0, metadata !45} ; [ DW_TAG_member ] [lf_beta_offset] [line 375, size 32, align 32, offset 4160] [from int]
!429 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"c_ipred_mode", i32 377, i64 32, i64 32, i64 4192, i32 0, metadata !45} ; [ DW_TAG_member ] [c_ipred_mode] [line 377, size 32, align 32, offset 4192] [from int]
!430 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"IntraChromaPredModeFlag", i32 378, i64 32, i64 32, i64 4224, i32 0, metadata !45} ; [ DW_TAG_member ] [IntraChromaPredModeFlag] [line 378, size 32, align 32, offset 4224] [from int]
!431 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mb_field", i32 380, i64 32, i64 32, i64 4256, i32 0, metadata !45} ; [ DW_TAG_member ] [mb_field] [line 380, size 32, align 32, offset 4256] [from int]
!432 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mbAddrA", i32 382, i64 32, i64 32, i64 4288, i32 0, metadata !45} ; [ DW_TAG_member ] [mbAddrA] [line 382, size 32, align 32, offset 4288] [from int]
!433 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mbAddrB", i32 382, i64 32, i64 32, i64 4320, i32 0, metadata !45} ; [ DW_TAG_member ] [mbAddrB] [line 382, size 32, align 32, offset 4320] [from int]
!434 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mbAddrC", i32 382, i64 32, i64 32, i64 4352, i32 0, metadata !45} ; [ DW_TAG_member ] [mbAddrC] [line 382, size 32, align 32, offset 4352] [from int]
!435 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mbAddrD", i32 382, i64 32, i64 32, i64 4384, i32 0, metadata !45} ; [ DW_TAG_member ] [mbAddrD] [line 382, size 32, align 32, offset 4384] [from int]
!436 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mbAvailA", i32 383, i64 32, i64 32, i64 4416, i32 0, metadata !45} ; [ DW_TAG_member ] [mbAvailA] [line 383, size 32, align 32, offset 4416] [from int]
!437 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mbAvailB", i32 383, i64 32, i64 32, i64 4448, i32 0, metadata !45} ; [ DW_TAG_member ] [mbAvailB] [line 383, size 32, align 32, offset 4448] [from int]
!438 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mbAvailC", i32 383, i64 32, i64 32, i64 4480, i32 0, metadata !45} ; [ DW_TAG_member ] [mbAvailC] [line 383, size 32, align 32, offset 4480] [from int]
!439 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"mbAvailD", i32 383, i64 32, i64 32, i64 4512, i32 0, metadata !45} ; [ DW_TAG_member ] [mbAvailD] [line 383, size 32, align 32, offset 4512] [from int]
!440 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"all_blk_8x8", i32 385, i64 32, i64 32, i64 4544, i32 0, metadata !45} ; [ DW_TAG_member ] [all_blk_8x8] [line 385, size 32, align 32, offset 4544] [from int]
!441 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"luma_transform_size_8x8_flag", i32 386, i64 32, i64 32, i64 4576, i32 0, metadata !45} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 386, size 32, align 32, offset 4576] [from int]
!442 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"NoMbPartLessThan8x8Flag", i32 387, i64 32, i64 32, i64 4608, i32 0, metadata !45} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 387, size 32, align 32, offset 4608] [from int]
!443 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"bi_pred_me", i32 390, i64 32, i64 32, i64 4640, i32 0, metadata !45} ; [ DW_TAG_member ] [bi_pred_me] [line 390, size 32, align 32, offset 4640] [from int]
!444 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"actj", i32 394, i64 64, i64 64, i64 4672, i32 0, metadata !445} ; [ DW_TAG_member ] [actj] [line 394, size 64, align 64, offset 4672] [from double]
!445 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!446 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"prev_qp", i32 395, i64 32, i64 32, i64 4736, i32 0, metadata !45} ; [ DW_TAG_member ] [prev_qp] [line 395, size 32, align 32, offset 4736] [from int]
!447 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"prev_delta_qp", i32 396, i64 32, i64 32, i64 4768, i32 0, metadata !45} ; [ DW_TAG_member ] [prev_delta_qp] [line 396, size 32, align 32, offset 4768] [from int]
!448 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"prev_cbp", i32 397, i64 32, i64 32, i64 4800, i32 0, metadata !45} ; [ DW_TAG_member ] [prev_cbp] [line 397, size 32, align 32, offset 4800] [from int]
!449 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"predict_qp", i32 398, i64 32, i64 32, i64 4832, i32 0, metadata !45} ; [ DW_TAG_member ] [predict_qp] [line 398, size 32, align 32, offset 4832] [from int]
!450 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"predict_error", i32 399, i64 32, i64 32, i64 4864, i32 0, metadata !45} ; [ DW_TAG_member ] [predict_error] [line 399, size 32, align 32, offset 4864] [from int]
!451 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"LFDisableIdc", i32 401, i64 32, i64 32, i64 4896, i32 0, metadata !45} ; [ DW_TAG_member ] [LFDisableIdc] [line 401, size 32, align 32, offset 4896] [from int]
!452 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"LFAlphaC0Offset", i32 402, i64 32, i64 32, i64 4928, i32 0, metadata !45} ; [ DW_TAG_member ] [LFAlphaC0Offset] [line 402, size 32, align 32, offset 4928] [from int]
!453 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"LFBetaOffset", i32 403, i64 32, i64 32, i64 4960, i32 0, metadata !45} ; [ DW_TAG_member ] [LFBetaOffset] [line 403, size 32, align 32, offset 4960] [from int]
!454 = metadata !{i32 786445, metadata !4, metadata !398, metadata !"skip_flag", i32 405, i64 32, i64 32, i64 4992, i32 0, metadata !45} ; [ DW_TAG_member ] [skip_flag] [line 405, size 32, align 32, offset 4992] [from int]
!455 = metadata !{i32 786688, metadata !389, metadata !"i", metadata !29, i32 1803, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1803]
!456 = metadata !{i32 786688, metadata !389, metadata !"j", metadata !29, i32 1803, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1803]
!457 = metadata !{i32 786688, metadata !389, metadata !"k", metadata !29, i32 1803, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1803]
!458 = metadata !{i32 786688, metadata !389, metadata !"l", metadata !29, i32 1803, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1803]
!459 = metadata !{i32 786688, metadata !389, metadata !"bframe", metadata !29, i32 1805, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bframe] [line 1805]
!460 = metadata !{i32 786688, metadata !389, metadata !"mode", metadata !29, i32 1806, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 1806]
!461 = metadata !{i32 786688, metadata !389, metadata !"b8mode", metadata !29, i32 1807, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b8mode] [line 1807]
!462 = metadata !{i32 786688, metadata !389, metadata !"b8pdir", metadata !29, i32 1807, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b8pdir] [line 1807]
!463 = metadata !{i32 786688, metadata !389, metadata !"list_offset", metadata !29, i32 1809, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list_offset] [line 1809]
!464 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"buf2img", metadata !"buf2img", metadata !"", i32 2201, metadata !465, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i16**, i8*, i32, i32, i32)* @buf2img, null, null, metadata !468, i32 2202} ; [ DW_TAG_subprogram ] [line 2201] [def] [scope 2202] [buf2img]
!465 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !466, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!466 = metadata !{null, metadata !40, metadata !467, metadata !45, metadata !45, metadata !45}
!467 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!468 = metadata !{metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479}
!469 = metadata !{i32 786689, metadata !464, metadata !"imgX", metadata !29, i32 16779417, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imgX] [line 2201]
!470 = metadata !{i32 786689, metadata !464, metadata !"buf", metadata !29, i32 33556633, metadata !467, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 2201]
!471 = metadata !{i32 786689, metadata !464, metadata !"size_x", metadata !29, i32 50333849, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size_x] [line 2201]
!472 = metadata !{i32 786689, metadata !464, metadata !"size_y", metadata !29, i32 67111065, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size_y] [line 2201]
!473 = metadata !{i32 786689, metadata !464, metadata !"symbol_size_in_bytes", metadata !29, i32 83888281, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symbol_size_in_bytes] [line 2201]
!474 = metadata !{i32 786688, metadata !464, metadata !"i", metadata !29, i32 2203, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2203]
!475 = metadata !{i32 786688, metadata !464, metadata !"j", metadata !29, i32 2203, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 2203]
!476 = metadata !{i32 786688, metadata !464, metadata !"tmp16", metadata !29, i32 2205, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp16] [line 2205]
!477 = metadata !{i32 786688, metadata !464, metadata !"ui16", metadata !29, i32 2205, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ui16] [line 2205]
!478 = metadata !{i32 786688, metadata !464, metadata !"tmp32", metadata !29, i32 2206, metadata !164, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp32] [line 2206]
!479 = metadata !{i32 786688, metadata !464, metadata !"ui32", metadata !29, i32 2206, metadata !164, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ui32] [line 2206]
!480 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"rdPictureCoding", metadata !"rdPictureCoding", metadata !"", i32 2508, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !481, i32 2509} ; [ DW_TAG_subprogram ] [line 2508] [local] [def] [scope 2509] [rdPictureCoding]
!481 = metadata !{metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487}
!482 = metadata !{i32 786688, metadata !480, metadata !"second_qp", metadata !29, i32 2510, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [second_qp] [line 2510]
!483 = metadata !{i32 786688, metadata !480, metadata !"rd_qp", metadata !29, i32 2510, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rd_qp] [line 2510]
!484 = metadata !{i32 786688, metadata !480, metadata !"previntras", metadata !29, i32 2511, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [previntras] [line 2511]
!485 = metadata !{i32 786688, metadata !480, metadata !"prevtype", metadata !29, i32 2512, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prevtype] [line 2512]
!486 = metadata !{i32 786688, metadata !480, metadata !"skip_encode", metadata !29, i32 2513, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [skip_encode] [line 2513]
!487 = metadata !{i32 786688, metadata !480, metadata !"sec_pps", metadata !29, i32 2514, metadata !488, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sec_pps] [line 2514]
!488 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !489} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!489 = metadata !{i32 786454, metadata !4, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !490} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!490 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !491, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!491 = metadata !{metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522}
!492 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !237} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!493 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!494 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!495 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !237} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!496 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !237} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!497 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !237} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!498 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !406} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!499 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !237} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!500 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !102} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!501 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !102} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!502 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !503} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!503 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !102, metadata !407, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!504 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !503} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!505 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !503} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!506 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !237} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!507 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !102} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!508 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !102} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!509 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !95} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!510 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !45} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!511 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !45} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!512 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !237} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!513 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !102} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!514 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !45} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!515 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !45} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!516 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !45} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!517 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !45} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!518 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !45} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!519 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !237} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!520 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !237} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!521 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !237} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!522 = metadata !{i32 786445, metadata !10, metadata !490, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !237} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!523 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"put_buffer_bot", metadata !"put_buffer_bot", metadata !"", i32 2423, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !26, i32 2424} ; [ DW_TAG_subprogram ] [line 2423] [local] [def] [scope 2424] [put_buffer_bot]
!524 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"put_buffer_top", metadata !"put_buffer_top", metadata !"", i32 2409, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !26, i32 2410} ; [ DW_TAG_subprogram ] [line 2409] [local] [def] [scope 2410] [put_buffer_top]
!525 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"put_buffer_frame", metadata !"put_buffer_frame", metadata !"", i32 2397, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !26, i32 2398} ; [ DW_TAG_subprogram ] [line 2397] [local] [def] [scope 2398] [put_buffer_frame]
!526 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"ReadOneFrame", metadata !"ReadOneFrame", metadata !"", i32 2299, metadata !527, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !529, i32 2300} ; [ DW_TAG_subprogram ] [line 2299] [local] [def] [scope 2300] [ReadOneFrame]
!527 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !528, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!528 = metadata !{null, metadata !45, metadata !45, metadata !45, metadata !45, metadata !45, metadata !45}
!529 = metadata !{metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !539, metadata !540, metadata !541, metadata !542, metadata !544, metadata !545}
!530 = metadata !{i32 786689, metadata !526, metadata !"FrameNoInFile", metadata !29, i32 16779515, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [FrameNoInFile] [line 2299]
!531 = metadata !{i32 786689, metadata !526, metadata !"HeaderSize", metadata !29, i32 33556731, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HeaderSize] [line 2299]
!532 = metadata !{i32 786689, metadata !526, metadata !"xs", metadata !29, i32 50333947, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xs] [line 2299]
!533 = metadata !{i32 786689, metadata !526, metadata !"ys", metadata !29, i32 67111163, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ys] [line 2299]
!534 = metadata !{i32 786689, metadata !526, metadata !"xs_cr", metadata !29, i32 83888379, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xs_cr] [line 2299]
!535 = metadata !{i32 786689, metadata !526, metadata !"ys_cr", metadata !29, i32 100665595, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ys_cr] [line 2299]
!536 = metadata !{i32 786688, metadata !526, metadata !"symbol_size_in_bytes", metadata !29, i32 2301, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbol_size_in_bytes] [line 2301]
!537 = metadata !{i32 786688, metadata !526, metadata !"imgsize_y", metadata !29, i32 2303, metadata !538, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imgsize_y] [line 2303]
!538 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!539 = metadata !{i32 786688, metadata !526, metadata !"imgsize_uv", metadata !29, i32 2304, metadata !538, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imgsize_uv] [line 2304]
!540 = metadata !{i32 786688, metadata !526, metadata !"bytes_y", metadata !29, i32 2306, metadata !538, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes_y] [line 2306]
!541 = metadata !{i32 786688, metadata !526, metadata !"bytes_uv", metadata !29, i32 2307, metadata !538, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes_uv] [line 2307]
!542 = metadata !{i32 786688, metadata !526, metadata !"framesize_in_bytes", metadata !29, i32 2309, metadata !543, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [framesize_in_bytes] [line 2309]
!543 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !317} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int64]
!544 = metadata !{i32 786688, metadata !526, metadata !"buf", metadata !29, i32 2310, metadata !467, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 2310]
!545 = metadata !{i32 786688, metadata !526, metadata !"rgb_input", metadata !29, i32 2312, metadata !237, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rgb_input] [line 2312]
!546 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"CalculateFrameNumber", metadata !"CalculateFrameNumber", metadata !"", i32 2166, metadata !254, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !26, i32 2167} ; [ DW_TAG_subprogram ] [line 2166] [local] [def] [scope 2167] [CalculateFrameNumber]
!547 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"PaddAutoCropBorders", metadata !"PaddAutoCropBorders", metadata !"", i32 2118, metadata !548, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !550, i32 2120} ; [ DW_TAG_subprogram ] [line 2118] [local] [def] [scope 2120] [PaddAutoCropBorders]
!548 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !549, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!549 = metadata !{null, metadata !45, metadata !45, metadata !45, metadata !45, metadata !45, metadata !45, metadata !45, metadata !45}
!550 = metadata !{metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560}
!551 = metadata !{i32 786689, metadata !547, metadata !"org_size_x", metadata !29, i32 16779334, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [org_size_x] [line 2118]
!552 = metadata !{i32 786689, metadata !547, metadata !"org_size_y", metadata !29, i32 33556550, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [org_size_y] [line 2118]
!553 = metadata !{i32 786689, metadata !547, metadata !"img_size_x", metadata !29, i32 50333766, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [img_size_x] [line 2118]
!554 = metadata !{i32 786689, metadata !547, metadata !"img_size_y", metadata !29, i32 67110982, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [img_size_y] [line 2118]
!555 = metadata !{i32 786689, metadata !547, metadata !"org_size_x_cr", metadata !29, i32 83888199, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [org_size_x_cr] [line 2119]
!556 = metadata !{i32 786689, metadata !547, metadata !"org_size_y_cr", metadata !29, i32 100665415, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [org_size_y_cr] [line 2119]
!557 = metadata !{i32 786689, metadata !547, metadata !"img_size_x_cr", metadata !29, i32 117442631, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [img_size_x_cr] [line 2119]
!558 = metadata !{i32 786689, metadata !547, metadata !"img_size_y_cr", metadata !29, i32 134219847, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [img_size_y_cr] [line 2119]
!559 = metadata !{i32 786688, metadata !547, metadata !"x", metadata !29, i32 2121, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 2121]
!560 = metadata !{i32 786688, metadata !547, metadata !"y", metadata !29, i32 2121, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 2121]
!561 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"ReportP", metadata !"ReportP", metadata !"", i32 2085, metadata !562, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !564, i32 2086} ; [ DW_TAG_subprogram ] [line 2085] [local] [def] [scope 2086] [ReportP]
!562 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!563 = metadata !{null, metadata !45, metadata !45}
!564 = metadata !{metadata !565, metadata !566}
!565 = metadata !{i32 786689, metadata !561, metadata !"tmp_time", metadata !29, i32 16779301, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2085]
!566 = metadata !{i32 786689, metadata !561, metadata !"me_time", metadata !29, i32 33556517, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [me_time] [line 2085]
!567 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"ReportB", metadata !"ReportB", metadata !"", i32 2076, metadata !562, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !568, i32 2077} ; [ DW_TAG_subprogram ] [line 2076] [local] [def] [scope 2077] [ReportB]
!568 = metadata !{metadata !569, metadata !570}
!569 = metadata !{i32 786689, metadata !567, metadata !"tmp_time", metadata !29, i32 16779292, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2076]
!570 = metadata !{i32 786689, metadata !567, metadata !"me_time", metadata !29, i32 33556508, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [me_time] [line 2076]
!571 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"ReportRB", metadata !"ReportRB", metadata !"", i32 2068, metadata !562, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !572, i32 2069} ; [ DW_TAG_subprogram ] [line 2068] [local] [def] [scope 2069] [ReportRB]
!572 = metadata !{metadata !573, metadata !574}
!573 = metadata !{i32 786689, metadata !571, metadata !"tmp_time", metadata !29, i32 16779284, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2068]
!574 = metadata !{i32 786689, metadata !571, metadata !"me_time", metadata !29, i32 33556500, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [me_time] [line 2068]
!575 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"ReportSP", metadata !"ReportSP", metadata !"", i32 2060, metadata !562, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !576, i32 2061} ; [ DW_TAG_subprogram ] [line 2060] [local] [def] [scope 2061] [ReportSP]
!576 = metadata !{metadata !577, metadata !578}
!577 = metadata !{i32 786689, metadata !575, metadata !"tmp_time", metadata !29, i32 16779276, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2060]
!578 = metadata !{i32 786689, metadata !575, metadata !"me_time", metadata !29, i32 33556492, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [me_time] [line 2060]
!579 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"ReportIntra", metadata !"ReportIntra", metadata !"", i32 2044, metadata !562, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !580, i32 2045} ; [ DW_TAG_subprogram ] [line 2044] [local] [def] [scope 2045] [ReportIntra]
!580 = metadata !{metadata !581, metadata !582}
!581 = metadata !{i32 786689, metadata !579, metadata !"tmp_time", metadata !29, i32 16779260, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2044]
!582 = metadata !{i32 786689, metadata !579, metadata !"me_time", metadata !29, i32 33556476, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [me_time] [line 2044]
!583 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"ReportFirstframe", metadata !"ReportFirstframe", metadata !"", i32 2018, metadata !562, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !584, i32 2019} ; [ DW_TAG_subprogram ] [line 2018] [local] [def] [scope 2019] [ReportFirstframe]
!584 = metadata !{metadata !585, metadata !586, metadata !587}
!585 = metadata !{i32 786689, metadata !583, metadata !"tmp_time", metadata !29, i32 16779234, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2018]
!586 = metadata !{i32 786689, metadata !583, metadata !"me_time", metadata !29, i32 33556450, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [me_time] [line 2018]
!587 = metadata !{i32 786688, metadata !583, metadata !"bits", metadata !29, i32 2021, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bits] [line 2021]
!588 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"ReportNALNonVLCBits", metadata !"ReportNALNonVLCBits", metadata !"", i32 2012, metadata !562, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !589, i32 2013} ; [ DW_TAG_subprogram ] [line 2012] [local] [def] [scope 2013] [ReportNALNonVLCBits]
!589 = metadata !{metadata !590, metadata !591}
!590 = metadata !{i32 786689, metadata !588, metadata !"tmp_time", metadata !29, i32 16779228, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2012]
!591 = metadata !{i32 786689, metadata !588, metadata !"me_time", metadata !29, i32 33556444, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [me_time] [line 2012]
!592 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"copy_motion_vectors_MB", metadata !"copy_motion_vectors_MB", metadata !"", i32 1965, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !593, i32 1966} ; [ DW_TAG_subprogram ] [line 1965] [local] [def] [scope 1966] [copy_motion_vectors_MB]
!593 = metadata !{metadata !594, metadata !595, metadata !596, metadata !597}
!594 = metadata !{i32 786688, metadata !592, metadata !"i", metadata !29, i32 1967, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1967]
!595 = metadata !{i32 786688, metadata !592, metadata !"j", metadata !29, i32 1967, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1967]
!596 = metadata !{i32 786688, metadata !592, metadata !"k", metadata !29, i32 1967, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1967]
!597 = metadata !{i32 786688, metadata !592, metadata !"l", metadata !29, i32 1967, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1967]
!598 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"find_distortion", metadata !"find_distortion", metadata !"", i32 1706, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @find_distortion, null, null, metadata !599, i32 1707} ; [ DW_TAG_subprogram ] [line 1706] [local] [def] [scope 1707] [find_distortion]
!599 = metadata !{metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605}
!600 = metadata !{i32 786688, metadata !598, metadata !"i", metadata !29, i32 1708, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1708]
!601 = metadata !{i32 786688, metadata !598, metadata !"j", metadata !29, i32 1708, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1708]
!602 = metadata !{i32 786688, metadata !598, metadata !"diff_y", metadata !29, i32 1709, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff_y] [line 1709]
!603 = metadata !{i32 786688, metadata !598, metadata !"diff_u", metadata !29, i32 1709, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff_u] [line 1709]
!604 = metadata !{i32 786688, metadata !598, metadata !"diff_v", metadata !29, i32 1709, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff_v] [line 1709]
!605 = metadata !{i32 786688, metadata !598, metadata !"impix", metadata !29, i32 1710, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [impix] [line 1710]
!606 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"find_snr", metadata !"find_snr", metadata !"", i32 1548, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !607, i32 1549} ; [ DW_TAG_subprogram ] [line 1548] [local] [def] [scope 1549] [find_snr]
!607 = metadata !{metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616}
!608 = metadata !{i32 786688, metadata !606, metadata !"i", metadata !29, i32 1550, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1550]
!609 = metadata !{i32 786688, metadata !606, metadata !"j", metadata !29, i32 1550, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1550]
!610 = metadata !{i32 786688, metadata !606, metadata !"diff_y", metadata !29, i32 1551, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff_y] [line 1551]
!611 = metadata !{i32 786688, metadata !606, metadata !"diff_u", metadata !29, i32 1551, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff_u] [line 1551]
!612 = metadata !{i32 786688, metadata !606, metadata !"diff_v", metadata !29, i32 1551, metadata !317, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff_v] [line 1551]
!613 = metadata !{i32 786688, metadata !606, metadata !"impix", metadata !29, i32 1552, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [impix] [line 1552]
!614 = metadata !{i32 786688, metadata !606, metadata !"impix_cr", metadata !29, i32 1553, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [impix_cr] [line 1553]
!615 = metadata !{i32 786688, metadata !606, metadata !"max_pix_value_sqd", metadata !29, i32 1554, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_pix_value_sqd] [line 1554]
!616 = metadata !{i32 786688, metadata !606, metadata !"max_pix_value_sqd_uv", metadata !29, i32 1555, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_pix_value_sqd_uv] [line 1555]
!617 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"GenerateFullPelRepresentation", metadata !"GenerateFullPelRepresentation", metadata !"", i32 1382, metadata !618, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !620, i32 1385} ; [ DW_TAG_subprogram ] [line 1382] [local] [def] [scope 1385] [GenerateFullPelRepresentation]
!618 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !619, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!619 = metadata !{null, metadata !40, metadata !41, metadata !45, metadata !45}
!620 = metadata !{metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626}
!621 = metadata !{i32 786689, metadata !617, metadata !"Fourthpel", metadata !29, i32 16778598, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Fourthpel] [line 1382]
!622 = metadata !{i32 786689, metadata !617, metadata !"Fullpel", metadata !29, i32 33555815, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Fullpel] [line 1383]
!623 = metadata !{i32 786689, metadata !617, metadata !"xsize", metadata !29, i32 50333031, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xsize] [line 1383]
!624 = metadata !{i32 786689, metadata !617, metadata !"ysize", metadata !29, i32 67110248, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ysize] [line 1384]
!625 = metadata !{i32 786688, metadata !617, metadata !"x", metadata !29, i32 1386, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 1386]
!626 = metadata !{i32 786688, metadata !617, metadata !"y", metadata !29, i32 1386, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 1386]
!627 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"init_field", metadata !"init_field", metadata !"", i32 1215, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @init_field, null, null, metadata !628, i32 1216} ; [ DW_TAG_subprogram ] [line 1215] [local] [def] [scope 1216] [init_field]
!628 = metadata !{metadata !629, metadata !630, metadata !631}
!629 = metadata !{i32 786688, metadata !627, metadata !"i", metadata !29, i32 1217, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1217]
!630 = metadata !{i32 786688, metadata !627, metadata !"prevP_no", metadata !29, i32 1218, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prevP_no] [line 1218]
!631 = metadata !{i32 786688, metadata !627, metadata !"nextP_no", metadata !29, i32 1218, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextP_no] [line 1218]
!632 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"init_frame", metadata !"init_frame", metadata !"", i32 1056, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !633, i32 1057} ; [ DW_TAG_subprogram ] [line 1056] [local] [def] [scope 1057] [init_frame]
!633 = metadata !{metadata !634, metadata !635, metadata !636}
!634 = metadata !{i32 786688, metadata !632, metadata !"i", metadata !29, i32 1058, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1058]
!635 = metadata !{i32 786688, metadata !632, metadata !"prevP_no", metadata !29, i32 1059, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prevP_no] [line 1059]
!636 = metadata !{i32 786688, metadata !632, metadata !"nextP_no", metadata !29, i32 1059, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextP_no] [line 1059]
!637 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"init_dec_ref_pic_marking_buffer", metadata !"init_dec_ref_pic_marking_buffer", metadata !"", i32 1044, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !26, i32 1045} ; [ DW_TAG_subprogram ] [line 1044] [local] [def] [scope 1045] [init_dec_ref_pic_marking_buffer]
!638 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"frame_mode_buffer", metadata !"frame_mode_buffer", metadata !"", i32 1008, metadata !639, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !641, i32 1009} ; [ DW_TAG_subprogram ] [line 1008] [local] [def] [scope 1009] [frame_mode_buffer]
!639 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !640, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!640 = metadata !{null, metadata !45, metadata !245, metadata !245, metadata !245}
!641 = metadata !{metadata !642, metadata !643, metadata !644, metadata !645}
!642 = metadata !{i32 786689, metadata !638, metadata !"bit_frame", metadata !29, i32 16778224, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bit_frame] [line 1008]
!643 = metadata !{i32 786689, metadata !638, metadata !"snr_frame_y", metadata !29, i32 33555440, metadata !245, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [snr_frame_y] [line 1008]
!644 = metadata !{i32 786689, metadata !638, metadata !"snr_frame_u", metadata !29, i32 50332656, metadata !245, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [snr_frame_u] [line 1008]
!645 = metadata !{i32 786689, metadata !638, metadata !"snr_frame_v", metadata !29, i32 67109872, metadata !245, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [snr_frame_v] [line 1008]
!646 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"field_mode_buffer", metadata !"field_mode_buffer", metadata !"", i32 992, metadata !639, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !647, i32 993} ; [ DW_TAG_subprogram ] [line 992] [local] [def] [scope 993] [field_mode_buffer]
!647 = metadata !{metadata !648, metadata !649, metadata !650, metadata !651}
!648 = metadata !{i32 786689, metadata !646, metadata !"bit_field", metadata !29, i32 16778208, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bit_field] [line 992]
!649 = metadata !{i32 786689, metadata !646, metadata !"snr_field_y", metadata !29, i32 33555424, metadata !245, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [snr_field_y] [line 992]
!650 = metadata !{i32 786689, metadata !646, metadata !"snr_field_u", metadata !29, i32 50332640, metadata !245, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [snr_field_u] [line 992]
!651 = metadata !{i32 786689, metadata !646, metadata !"snr_field_v", metadata !29, i32 67109856, metadata !245, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [snr_field_v] [line 992]
!652 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"picture_structure_decision", metadata !"picture_structure_decision", metadata !"", i32 967, metadata !653, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !655, i32 968} ; [ DW_TAG_subprogram ] [line 967] [local] [def] [scope 968] [picture_structure_decision]
!653 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !654, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!654 = metadata !{metadata !45, metadata !54, metadata !54, metadata !54}
!655 = metadata !{metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664}
!656 = metadata !{i32 786689, metadata !652, metadata !"frame", metadata !29, i32 16778183, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frame] [line 967]
!657 = metadata !{i32 786689, metadata !652, metadata !"top", metadata !29, i32 33555399, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 967]
!658 = metadata !{i32 786689, metadata !652, metadata !"bot", metadata !29, i32 50332615, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bot] [line 967]
!659 = metadata !{i32 786688, metadata !652, metadata !"lambda_picture", metadata !29, i32 969, metadata !445, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda_picture] [line 969]
!660 = metadata !{i32 786688, metadata !652, metadata !"bframe", metadata !29, i32 970, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bframe] [line 970]
!661 = metadata !{i32 786688, metadata !652, metadata !"snr_frame", metadata !29, i32 971, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [snr_frame] [line 971]
!662 = metadata !{i32 786688, metadata !652, metadata !"snr_field", metadata !29, i32 971, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [snr_field] [line 971]
!663 = metadata !{i32 786688, metadata !652, metadata !"bit_frame", metadata !29, i32 972, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bit_frame] [line 972]
!664 = metadata !{i32 786688, metadata !652, metadata !"bit_field", metadata !29, i32 972, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bit_field] [line 972]
!665 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"distortion_fld", metadata !"distortion_fld", metadata !"", i32 938, metadata !666, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !669, i32 939} ; [ DW_TAG_subprogram ] [line 938] [local] [def] [scope 939] [distortion_fld]
!666 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !667, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!667 = metadata !{null, metadata !668, metadata !668, metadata !668}
!668 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !245} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!669 = metadata !{metadata !670, metadata !671, metadata !672}
!670 = metadata !{i32 786689, metadata !665, metadata !"dis_fld_y", metadata !29, i32 16778154, metadata !668, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dis_fld_y] [line 938]
!671 = metadata !{i32 786689, metadata !665, metadata !"dis_fld_u", metadata !29, i32 33555370, metadata !668, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dis_fld_u] [line 938]
!672 = metadata !{i32 786689, metadata !665, metadata !"dis_fld_v", metadata !29, i32 50332586, metadata !668, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dis_fld_v] [line 938]
!673 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"writeout_picture", metadata !"writeout_picture", metadata !"", i32 680, metadata !674, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.Picture*)* @writeout_picture, null, null, metadata !676, i32 681} ; [ DW_TAG_subprogram ] [line 680] [local] [def] [scope 681] [writeout_picture]
!674 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !675, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!675 = metadata !{metadata !45, metadata !54}
!676 = metadata !{metadata !677, metadata !678, metadata !679, metadata !680, metadata !681}
!677 = metadata !{i32 786689, metadata !673, metadata !"pic", metadata !29, i32 16777896, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pic] [line 680]
!678 = metadata !{i32 786688, metadata !673, metadata !"currStream", metadata !29, i32 682, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currStream] [line 682]
!679 = metadata !{i32 786688, metadata !673, metadata !"partition", metadata !29, i32 683, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 683]
!680 = metadata !{i32 786688, metadata !673, metadata !"slice", metadata !29, i32 683, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slice] [line 683]
!681 = metadata !{i32 786688, metadata !673, metadata !"currSlice", metadata !29, i32 684, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currSlice] [line 684]
!682 = metadata !{i32 786478, metadata !1, metadata !29, metadata !"writeUnit", metadata !"writeUnit", metadata !"", i32 2438, metadata !683, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !685, i32 2439} ; [ DW_TAG_subprogram ] [line 2438] [local] [def] [scope 2439] [writeUnit]
!683 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !684, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!684 = metadata !{null, metadata !78, metadata !45}
!685 = metadata !{metadata !686, metadata !687, metadata !688}
!686 = metadata !{i32 786689, metadata !682, metadata !"currStream", metadata !29, i32 16779654, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currStream] [line 2438]
!687 = metadata !{i32 786689, metadata !682, metadata !"partition", metadata !29, i32 33556870, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [partition] [line 2438]
!688 = metadata !{i32 786688, metadata !682, metadata !"nalu", metadata !29, i32 2440, metadata !689, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nalu] [line 2440]
!689 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !690} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from NALU_t]
!690 = metadata !{i32 786454, metadata !691, null, metadata !"NALU_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !692} ; [ DW_TAG_typedef ] [NALU_t] [line 49, size 0, align 0, offset 0] [from ]
!691 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!692 = metadata !{i32 786451, metadata !693, null, metadata !"", i32 40, i64 256, i64 64, i32 0, i32 0, null, metadata !694, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 256, align 64, offset 0] [from ]
!693 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalucommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!694 = metadata !{metadata !695, metadata !696, metadata !697, metadata !698, metadata !699, metadata !700, metadata !701}
!695 = metadata !{i32 786445, metadata !693, metadata !692, metadata !"startcodeprefix_len", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [startcodeprefix_len] [line 42, size 32, align 32, offset 0] [from int]
!696 = metadata !{i32 786445, metadata !693, metadata !692, metadata !"len", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [len] [line 43, size 32, align 32, offset 32] [from unsigned int]
!697 = metadata !{i32 786445, metadata !693, metadata !692, metadata !"max_size", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [max_size] [line 44, size 32, align 32, offset 64] [from unsigned int]
!698 = metadata !{i32 786445, metadata !693, metadata !692, metadata !"nal_unit_type", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [nal_unit_type] [line 45, size 32, align 32, offset 96] [from int]
!699 = metadata !{i32 786445, metadata !693, metadata !692, metadata !"nal_reference_idc", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [nal_reference_idc] [line 46, size 32, align 32, offset 128] [from int]
!700 = metadata !{i32 786445, metadata !693, metadata !692, metadata !"forbidden_bit", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [forbidden_bit] [line 47, size 32, align 32, offset 160] [from int]
!701 = metadata !{i32 786445, metadata !693, metadata !692, metadata !"buf", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !95} ; [ DW_TAG_member ] [buf] [line 48, size 64, align 64, offset 192] [from ]
!702 = metadata !{metadata !703, metadata !705, metadata !706, metadata !707, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713, metadata !714, metadata !715, metadata !717, metadata !718, metadata !719, metadata !720, metadata !721, metadata !722, metadata !816, metadata !817, metadata !818, metadata !820, metadata !821, metadata !823, metadata !824, metadata !825, metadata !826, metadata !827, metadata !828, metadata !829, metadata !830, metadata !831, metadata !832, metadata !833, metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !845, metadata !846, metadata !847, metadata !852, metadata !855, metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !863, metadata !866, metadata !867, metadata !868, metadata !869, metadata !872, metadata !873, metadata !884, metadata !919, metadata !920, metadata !921, metadata !922, metadata !923, metadata !977, metadata !978, metadata !979, metadata !980, metadata !981, metadata !983, metadata !984, metadata !985, metadata !986, metadata !987, metadata !988, metadata !989, metadata !990, metadata !991, metadata !994, metadata !1002, metadata !1003, metadata !1013, metadata !1014, metadata !1023, metadata !1028, metadata !1031, metadata !1032, metadata !1033, metadata !1034, metadata !1035, metadata !1036, metadata !1037, metadata !1038, metadata !1039, metadata !1040, metadata !1041, metadata !1042, metadata !1043, metadata !1044, metadata !1045, metadata !1046, metadata !1047, metadata !1048, metadata !1049, metadata !1050, metadata !1054, metadata !1056, metadata !1057, metadata !1058, metadata !1059, metadata !1060, metadata !1061, metadata !1062, metadata !1063, metadata !1064, metadata !1065, metadata !1066, metadata !1067, metadata !1068, metadata !1069, metadata !1070, metadata !1071, metadata !1072, metadata !1073, metadata !1074, metadata !1075, metadata !1076, metadata !1077, metadata !1078, metadata !1079, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092, metadata !1093, metadata !1094, metadata !1095, metadata !1097, metadata !1098, metadata !1099, metadata !1100, metadata !1101, metadata !1102, metadata !1103, metadata !1104, metadata !1105, metadata !1107, metadata !1108, metadata !1109, metadata !1110, metadata !1111, metadata !1112, metadata !1113, metadata !1114, metadata !1115, metadata !1116, metadata !1117, metadata !1118, metadata !1119, metadata !1120, metadata !1121, metadata !1122, metadata !1123}
!703 = metadata !{i32 786484, i32 0, null, metadata !"ONE_FOURTH_TAP", metadata !"ONE_FOURTH_TAP", metadata !"", metadata !29, i32 114, metadata !704, i32 0, i32 1, [3 x [2 x i32]]* @ONE_FOURTH_TAP, null} ; [ DW_TAG_variable ] [ONE_FOURTH_TAP] [line 114] [def]
!704 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !538, metadata !240, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from ]
!705 = metadata !{i32 786484, i32 0, metadata !253, metadata !"prev_frame_no", metadata !"prev_frame_no", metadata !"", metadata !29, i32 268, metadata !45, i32 1, i32 1, i32* @encode_one_frame.prev_frame_no, null} ; [ DW_TAG_variable ] [prev_frame_no] [line 268] [local] [def]
!706 = metadata !{i32 786484, i32 0, metadata !253, metadata !"consecutive_non_reference_pictures", metadata !"consecutive_non_reference_pictures", metadata !"", metadata !29, i32 269, metadata !45, i32 1, i32 1, i32* @encode_one_frame.consecutive_non_reference_pictures, null} ; [ DW_TAG_variable ] [consecutive_non_reference_pictures] [line 269] [local] [def]
!707 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !708, i32 558, metadata !54, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!708 = metadata !{i32 786473, metadata !4}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!709 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !708, i32 559, metadata !54, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!710 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !708, i32 560, metadata !54, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!711 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !708, i32 561, metadata !54, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!712 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !708, i32 562, metadata !54, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!713 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !708, i32 565, metadata !40, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!714 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !708, i32 566, metadata !43, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!715 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !708, i32 567, metadata !716, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!716 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!717 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !708, i32 569, metadata !102, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!718 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !708, i32 570, metadata !102, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!719 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !708, i32 572, metadata !45, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!720 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !708, i32 572, metadata !45, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!721 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !708, i32 573, metadata !488, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!722 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !708, i32 574, metadata !723, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!723 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !724} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!724 = metadata !{i32 786454, metadata !10, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !725} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!725 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !726, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!726 = metadata !{metadata !727, metadata !728, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !757, metadata !758, metadata !759, metadata !760, metadata !761, metadata !762, metadata !763, metadata !764}
!727 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !237} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!728 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!729 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !237} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!730 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !237} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!731 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !237} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!732 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !237} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!733 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !102} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!734 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !102} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!735 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !102} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!736 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !237} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!737 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !406} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!738 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !102} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!739 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !102} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!740 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !102} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!741 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !102} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!742 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !102} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!743 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !237} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!744 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !45} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!745 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !45} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!746 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !102} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!747 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !748} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!748 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !45, metadata !749, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!749 = metadata !{metadata !750}
!750 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!751 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !102} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!752 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !237} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!753 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !102} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!754 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !102} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!755 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !237} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!756 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !237} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!757 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !237} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!758 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !237} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!759 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !102} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!760 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !102} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!761 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !102} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!762 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !102} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!763 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !237} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!764 = metadata !{i32 786445, metadata !10, metadata !725, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !765} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!765 = metadata !{i32 786454, metadata !10, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !766} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!766 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !767, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!767 = metadata !{metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773, metadata !774, metadata !775, metadata !776, metadata !777, metadata !778, metadata !779, metadata !780, metadata !781, metadata !782, metadata !783, metadata !784, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !805, metadata !806, metadata !807, metadata !808, metadata !809, metadata !810, metadata !811, metadata !812, metadata !813, metadata !814, metadata !815}
!768 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !237} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!769 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!770 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!771 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !102} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!772 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !237} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!773 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !237} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!774 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !237} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!775 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !102} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!776 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !237} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!777 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !237} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!778 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !102} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!779 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !102} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!780 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !102} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!781 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !237} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!782 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !102} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!783 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !102} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!784 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !237} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!785 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !102} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!786 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !102} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!787 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !237} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!788 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !237} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!789 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !790} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!790 = metadata !{i32 786454, metadata !10, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !791} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!791 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !792, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!792 = metadata !{metadata !793, metadata !794, metadata !795, metadata !796, metadata !799, metadata !800, metadata !801, metadata !802, metadata !803, metadata !804}
!793 = metadata !{i32 786445, metadata !10, metadata !791, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!794 = metadata !{i32 786445, metadata !10, metadata !791, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!795 = metadata !{i32 786445, metadata !10, metadata !791, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!796 = metadata !{i32 786445, metadata !10, metadata !791, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !797} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!797 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !102, metadata !798, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!798 = metadata !{metadata !38}
!799 = metadata !{i32 786445, metadata !10, metadata !791, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !797} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!800 = metadata !{i32 786445, metadata !10, metadata !791, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !797} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!801 = metadata !{i32 786445, metadata !10, metadata !791, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !102} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!802 = metadata !{i32 786445, metadata !10, metadata !791, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !102} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!803 = metadata !{i32 786445, metadata !10, metadata !791, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !102} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!804 = metadata !{i32 786445, metadata !10, metadata !791, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !102} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!805 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !237} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!806 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !790} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!807 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !237} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!808 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !237} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!809 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !237} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!810 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !102} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!811 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !102} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!812 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !102} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!813 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !102} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!814 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !102} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!815 = metadata !{i32 786445, metadata !10, metadata !766, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !102} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!816 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !708, i32 578, metadata !45, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!817 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !708, i32 579, metadata !45, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!818 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !708, i32 583, metadata !819, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!819 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !716} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!820 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !708, i32 584, metadata !819, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!821 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !708, i32 585, metadata !822, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!822 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !819} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!823 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !708, i32 586, metadata !45, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!824 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !708, i32 587, metadata !45, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!825 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !708, i32 588, metadata !45, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!826 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !708, i32 589, metadata !45, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!827 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !708, i32 592, metadata !40, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!828 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !708, i32 593, metadata !40, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!829 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !708, i32 595, metadata !43, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!830 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !708, i32 596, metadata !43, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!831 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !708, i32 598, metadata !40, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!832 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !708, i32 599, metadata !43, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!833 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !708, i32 601, metadata !40, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!834 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !708, i32 602, metadata !43, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!835 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !708, i32 604, metadata !347, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!836 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !708, i32 605, metadata !348, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!837 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !708, i32 608, metadata !358, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!838 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !708, i32 609, metadata !358, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!839 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !708, i32 610, metadata !45, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!840 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !708, i32 612, metadata !45, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!841 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !708, i32 612, metadata !45, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!842 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !708, i32 612, metadata !45, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!843 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !708, i32 613, metadata !45, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!844 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !708, i32 613, metadata !45, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!845 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !708, i32 613, metadata !45, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!846 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !708, i32 614, metadata !45, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!847 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !708, i32 617, metadata !848, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!848 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !849, metadata !850, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!849 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!850 = metadata !{metadata !851}
!851 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!852 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !708, i32 620, metadata !853, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!853 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !45, metadata !854, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!854 = metadata !{metadata !37, metadata !37}
!855 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !708, i32 620, metadata !853, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!856 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !708, i32 620, metadata !853, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!857 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !708, i32 621, metadata !853, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!858 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !708, i32 621, metadata !853, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!859 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !708, i32 621, metadata !853, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!860 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !708, i32 622, metadata !861, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!861 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !45, metadata !862, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!862 = metadata !{metadata !166, metadata !37, metadata !37}
!863 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !708, i32 623, metadata !864, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!864 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !45, metadata !865, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!865 = metadata !{metadata !171, metadata !184, metadata !184}
!866 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !708, i32 623, metadata !864, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!867 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !708, i32 624, metadata !864, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!868 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !708, i32 624, metadata !864, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!869 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !708, i32 625, metadata !870, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!870 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !45, metadata !871, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!871 = metadata !{metadata !184, metadata !184}
!872 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !708, i32 625, metadata !417, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!873 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !708, i32 1201, metadata !874, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!874 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !875} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!875 = metadata !{i32 786454, metadata !4, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !876} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!876 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !877, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!877 = metadata !{metadata !878, metadata !879, metadata !880, metadata !881, metadata !882, metadata !883}
!878 = metadata !{i32 786445, metadata !4, metadata !876, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!879 = metadata !{i32 786445, metadata !4, metadata !876, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!880 = metadata !{i32 786445, metadata !4, metadata !876, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!881 = metadata !{i32 786445, metadata !4, metadata !876, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!882 = metadata !{i32 786445, metadata !4, metadata !876, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!883 = metadata !{i32 786445, metadata !4, metadata !876, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!884 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !708, i32 1202, metadata !885, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!885 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !886} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!886 = metadata !{i32 786454, metadata !4, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !887} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!887 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !888, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!888 = metadata !{metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898, metadata !899, metadata !900, metadata !901, metadata !902, metadata !903, metadata !904, metadata !907, metadata !908, metadata !909, metadata !910, metadata !912, metadata !913, metadata !914, metadata !915, metadata !916, metadata !917, metadata !918}
!889 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !445} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!890 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !853} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!891 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !853} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!892 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !853} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!893 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !822} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!894 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !819} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!895 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !45} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!896 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !45} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!897 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !423} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!898 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !423} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!899 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !716} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!900 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !417} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!901 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !45} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!902 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !317} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!903 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !45} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!904 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !905} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!905 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !906} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!906 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !356} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!907 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !905} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!908 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !905} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!909 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !905} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!910 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !911} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!911 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !270, metadata !865, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!912 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !45} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!913 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !45} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!914 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !45} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!915 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !45} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!916 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !45} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!917 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !45} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!918 = metadata !{i32 786445, metadata !4, metadata !887, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !45} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!919 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !708, i32 1203, metadata !886, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!920 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !708, i32 1203, metadata !886, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!921 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !708, i32 1204, metadata !886, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!922 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !708, i32 1204, metadata !886, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!923 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !708, i32 1230, metadata !924, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!924 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !925} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!925 = metadata !{i32 786454, metadata !4, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !926} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!926 = metadata !{i32 786451, metadata !927, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !928, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!927 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!928 = metadata !{metadata !929, metadata !930, metadata !932, metadata !933, metadata !934, metadata !935, metadata !936, metadata !937, metadata !938, metadata !939, metadata !940, metadata !941, metadata !942, metadata !950, metadata !951, metadata !952, metadata !953, metadata !955, metadata !956, metadata !958, metadata !962, metadata !964, metadata !966, metadata !967, metadata !968, metadata !969, metadata !970, metadata !972, metadata !973}
!929 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!930 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !931} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!931 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !849} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!932 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !931} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!933 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !931} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!934 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !931} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!935 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !931} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!936 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !931} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!937 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !931} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!938 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !931} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!939 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !931} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!940 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !931} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!941 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !931} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!942 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !943} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!943 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !944} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!944 = metadata !{i32 786451, metadata !927, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !945, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!945 = metadata !{metadata !946, metadata !947, metadata !949}
!946 = metadata !{i32 786445, metadata !927, metadata !944, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !943} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!947 = metadata !{i32 786445, metadata !927, metadata !944, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !948} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!948 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !926} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!949 = metadata !{i32 786445, metadata !927, metadata !944, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!950 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !948} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!951 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !45} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!952 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !45} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!953 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !954} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!954 = metadata !{i32 786454, metadata !927, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !261} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!955 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !35} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!956 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !957} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!957 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!958 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !959} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!959 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !849, metadata !960, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!960 = metadata !{metadata !961}
!961 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!962 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !963} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!963 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!964 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !965} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!965 = metadata !{i32 786454, metadata !927, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !261} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!966 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !963} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!967 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !963} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!968 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !963} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!969 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !963} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!970 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !971} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!971 = metadata !{i32 786454, metadata !927, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !164} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!972 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !45} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!973 = metadata !{i32 786445, metadata !927, metadata !926, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !974} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!974 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !849, metadata !975, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!975 = metadata !{metadata !976}
!976 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!977 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !708, i32 1231, metadata !924, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!978 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !708, i32 1232, metadata !924, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!979 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !708, i32 1233, metadata !45, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!980 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !708, i32 1234, metadata !45, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!981 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !708, i32 1237, metadata !982, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!982 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !45, metadata !975, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!983 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !708, i32 1238, metadata !982, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!984 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !708, i32 1239, metadata !982, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!985 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !708, i32 1240, metadata !982, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!986 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !708, i32 1241, metadata !982, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!987 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !708, i32 1242, metadata !982, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!988 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !708, i32 1456, metadata !45, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!989 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !708, i32 1465, metadata !45, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!990 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !708, i32 1466, metadata !45, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!991 = metadata !{i32 786484, i32 0, null, metadata !"seiHasUser_data_unregistered_info", metadata !"seiHasUser_data_unregistered_info", metadata !"", metadata !992, i32 216, metadata !237, i32 0, i32 1, i32* @seiHasUser_data_unregistered_info, null} ; [ DW_TAG_variable ] [seiHasUser_data_unregistered_info] [line 216] [def]
!992 = metadata !{i32 786473, metadata !993}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.h]
!993 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!994 = metadata !{i32 786484, i32 0, null, metadata !"seiUser_data_unregistered", metadata !"seiUser_data_unregistered", metadata !"", metadata !992, i32 217, metadata !995, i32 0, i32 1, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, null} ; [ DW_TAG_variable ] [seiUser_data_unregistered] [line 217] [def]
!995 = metadata !{i32 786454, metadata !993, null, metadata !"user_data_unregistered_information_struct", i32 211, i64 0, i64 0, i64 0, i32 0, metadata !996} ; [ DW_TAG_typedef ] [user_data_unregistered_information_struct] [line 211, size 0, align 0, offset 0] [from ]
!996 = metadata !{i32 786451, metadata !993, null, metadata !"", i32 205, i64 256, i64 64, i32 0, i32 0, null, metadata !997, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 205, size 256, align 64, offset 0] [from ]
!997 = metadata !{metadata !998, metadata !999, metadata !1000, metadata !1001}
!998 = metadata !{i32 786445, metadata !993, metadata !996, metadata !"byte", i32 207, i64 64, i64 64, i64 0, i32 0, metadata !931} ; [ DW_TAG_member ] [byte] [line 207, size 64, align 64, offset 0] [from ]
!999 = metadata !{i32 786445, metadata !993, metadata !996, metadata !"total_byte", i32 208, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [total_byte] [line 208, size 32, align 32, offset 64] [from int]
!1000 = metadata !{i32 786445, metadata !993, metadata !996, metadata !"data", i32 209, i64 64, i64 64, i64 128, i32 0, metadata !78} ; [ DW_TAG_member ] [data] [line 209, size 64, align 64, offset 128] [from ]
!1001 = metadata !{i32 786445, metadata !993, metadata !996, metadata !"payloadSize", i32 210, i64 32, i64 32, i64 192, i32 0, metadata !45} ; [ DW_TAG_member ] [payloadSize] [line 210, size 32, align 32, offset 192] [from int]
!1002 = metadata !{i32 786484, i32 0, null, metadata !"seiHasUser_data_registered_itu_t_t35_info", metadata !"seiHasUser_data_registered_itu_t_t35_info", metadata !"", metadata !992, i32 240, metadata !237, i32 0, i32 1, i32* @seiHasUser_data_registered_itu_t_t35_info, null} ; [ DW_TAG_variable ] [seiHasUser_data_registered_itu_t_t35_info] [line 240] [def]
!1003 = metadata !{i32 786484, i32 0, null, metadata !"seiUser_data_registered_itu_t_t35", metadata !"seiUser_data_registered_itu_t_t35", metadata !"", metadata !992, i32 241, metadata !1004, i32 0, i32 1, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, null} ; [ DW_TAG_variable ] [seiUser_data_registered_itu_t_t35] [line 241] [def]
!1004 = metadata !{i32 786454, metadata !993, null, metadata !"user_data_registered_itu_t_t35_information_struct", i32 235, i64 0, i64 0, i64 0, i32 0, metadata !1005} ; [ DW_TAG_typedef ] [user_data_registered_itu_t_t35_information_struct] [line 235, size 0, align 0, offset 0] [from ]
!1005 = metadata !{i32 786451, metadata !993, null, metadata !"", i32 227, i64 320, i64 64, i32 0, i32 0, null, metadata !1006, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 227, size 320, align 64, offset 0] [from ]
!1006 = metadata !{metadata !1007, metadata !1008, metadata !1009, metadata !1010, metadata !1011, metadata !1012}
!1007 = metadata !{i32 786445, metadata !993, metadata !1005, metadata !"byte", i32 229, i64 64, i64 64, i64 0, i32 0, metadata !931} ; [ DW_TAG_member ] [byte] [line 229, size 64, align 64, offset 0] [from ]
!1008 = metadata !{i32 786445, metadata !993, metadata !1005, metadata !"total_byte", i32 230, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [total_byte] [line 230, size 32, align 32, offset 64] [from int]
!1009 = metadata !{i32 786445, metadata !993, metadata !1005, metadata !"itu_t_t35_country_code", i32 231, i64 32, i64 32, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [itu_t_t35_country_code] [line 231, size 32, align 32, offset 96] [from int]
!1010 = metadata !{i32 786445, metadata !993, metadata !1005, metadata !"itu_t_t35_country_code_extension_byte", i32 232, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [itu_t_t35_country_code_extension_byte] [line 232, size 32, align 32, offset 128] [from int]
!1011 = metadata !{i32 786445, metadata !993, metadata !1005, metadata !"data", i32 233, i64 64, i64 64, i64 192, i32 0, metadata !78} ; [ DW_TAG_member ] [data] [line 233, size 64, align 64, offset 192] [from ]
!1012 = metadata !{i32 786445, metadata !993, metadata !1005, metadata !"payloadSize", i32 234, i64 32, i64 32, i64 256, i32 0, metadata !45} ; [ DW_TAG_member ] [payloadSize] [line 234, size 32, align 32, offset 256] [from int]
!1013 = metadata !{i32 786484, i32 0, null, metadata !"seiHasRandomAccess_info", metadata !"seiHasRandomAccess_info", metadata !"", metadata !992, i32 264, metadata !237, i32 0, i32 1, i32* @seiHasRandomAccess_info, null} ; [ DW_TAG_variable ] [seiHasRandomAccess_info] [line 264] [def]
!1014 = metadata !{i32 786484, i32 0, null, metadata !"seiRandomAccess", metadata !"seiRandomAccess", metadata !"", metadata !992, i32 265, metadata !1015, i32 0, i32 1, %struct.randomaccess_information_struct* @seiRandomAccess, null} ; [ DW_TAG_variable ] [seiRandomAccess] [line 265] [def]
!1015 = metadata !{i32 786454, metadata !993, null, metadata !"randomaccess_information_struct", i32 259, i64 0, i64 0, i64 0, i32 0, metadata !1016} ; [ DW_TAG_typedef ] [randomaccess_information_struct] [line 259, size 0, align 0, offset 0] [from ]
!1016 = metadata !{i32 786451, metadata !993, null, metadata !"", i32 251, i64 192, i64 64, i32 0, i32 0, null, metadata !1017, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 251, size 192, align 64, offset 0] [from ]
!1017 = metadata !{metadata !1018, metadata !1019, metadata !1020, metadata !1021, metadata !1022}
!1018 = metadata !{i32 786445, metadata !993, metadata !1016, metadata !"recovery_point_flag", i32 253, i64 8, i64 8, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [recovery_point_flag] [line 253, size 8, align 8, offset 0] [from unsigned char]
!1019 = metadata !{i32 786445, metadata !993, metadata !1016, metadata !"exact_match_flag", i32 254, i64 8, i64 8, i64 8, i32 0, metadata !87} ; [ DW_TAG_member ] [exact_match_flag] [line 254, size 8, align 8, offset 8] [from unsigned char]
!1020 = metadata !{i32 786445, metadata !993, metadata !1016, metadata !"broken_link_flag", i32 255, i64 8, i64 8, i64 16, i32 0, metadata !87} ; [ DW_TAG_member ] [broken_link_flag] [line 255, size 8, align 8, offset 16] [from unsigned char]
!1021 = metadata !{i32 786445, metadata !993, metadata !1016, metadata !"data", i32 257, i64 64, i64 64, i64 64, i32 0, metadata !78} ; [ DW_TAG_member ] [data] [line 257, size 64, align 64, offset 64] [from ]
!1022 = metadata !{i32 786445, metadata !993, metadata !1016, metadata !"payloadSize", i32 258, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [payloadSize] [line 258, size 32, align 32, offset 128] [from int]
!1023 = metadata !{i32 786484, i32 0, null, metadata !"WriteNALU", metadata !"WriteNALU", metadata !"", metadata !1024, i32 28, metadata !1025, i32 0, i32 1, i32 (%struct.NALU_t*)** @WriteNALU, null} ; [ DW_TAG_variable ] [WriteNALU] [line 28] [def]
!1024 = metadata !{i32 786473, metadata !691}     ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h]
!1025 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1026} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!1026 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1027, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1027 = metadata !{metadata !45, metadata !689}
!1028 = metadata !{i32 786484, i32 0, null, metadata !"bit_rate", metadata !"bit_rate", metadata !"", metadata !1029, i32 124, metadata !445, i32 0, i32 1, double* @bit_rate, null} ; [ DW_TAG_variable ] [bit_rate] [line 124] [def]
!1029 = metadata !{i32 786473, metadata !1030}    ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.h]
!1030 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!1031 = metadata !{i32 786484, i32 0, null, metadata !"frame_rate", metadata !"frame_rate", metadata !"", metadata !1029, i32 125, metadata !445, i32 0, i32 1, double* @frame_rate, null} ; [ DW_TAG_variable ] [frame_rate] [line 125] [def]
!1032 = metadata !{i32 786484, i32 0, null, metadata !"GAMMAP", metadata !"GAMMAP", metadata !"", metadata !1029, i32 126, metadata !445, i32 0, i32 1, double* @GAMMAP, null} ; [ DW_TAG_variable ] [GAMMAP] [line 126] [def]
!1033 = metadata !{i32 786484, i32 0, null, metadata !"BETAP", metadata !"BETAP", metadata !"", metadata !1029, i32 127, metadata !445, i32 0, i32 1, double* @BETAP, null} ; [ DW_TAG_variable ] [BETAP] [line 127] [def]
!1034 = metadata !{i32 786484, i32 0, null, metadata !"RC_MAX_QUANT", metadata !"RC_MAX_QUANT", metadata !"", metadata !1029, i32 129, metadata !45, i32 0, i32 1, i32* @RC_MAX_QUANT, null} ; [ DW_TAG_variable ] [RC_MAX_QUANT] [line 129] [def]
!1035 = metadata !{i32 786484, i32 0, null, metadata !"RC_MIN_QUANT", metadata !"RC_MIN_QUANT", metadata !"", metadata !1029, i32 130, metadata !45, i32 0, i32 1, i32* @RC_MIN_QUANT, null} ; [ DW_TAG_variable ] [RC_MIN_QUANT] [line 130] [def]
!1036 = metadata !{i32 786484, i32 0, null, metadata !"BufferSize", metadata !"BufferSize", metadata !"", metadata !1029, i32 132, metadata !445, i32 0, i32 1, double* @BufferSize, null} ; [ DW_TAG_variable ] [BufferSize] [line 132] [def]
!1037 = metadata !{i32 786484, i32 0, null, metadata !"GOPTargetBufferLevel", metadata !"GOPTargetBufferLevel", metadata !"", metadata !1029, i32 133, metadata !445, i32 0, i32 1, double* @GOPTargetBufferLevel, null} ; [ DW_TAG_variable ] [GOPTargetBufferLevel] [line 133] [def]
!1038 = metadata !{i32 786484, i32 0, null, metadata !"CurrentBufferFullness", metadata !"CurrentBufferFullness", metadata !"", metadata !1029, i32 134, metadata !445, i32 0, i32 1, double* @CurrentBufferFullness, null} ; [ DW_TAG_variable ] [CurrentBufferFullness] [line 134] [def]
!1039 = metadata !{i32 786484, i32 0, null, metadata !"TargetBufferLevel", metadata !"TargetBufferLevel", metadata !"", metadata !1029, i32 135, metadata !445, i32 0, i32 1, double* @TargetBufferLevel, null} ; [ DW_TAG_variable ] [TargetBufferLevel] [line 135] [def]
!1040 = metadata !{i32 786484, i32 0, null, metadata !"PreviousBit_Rate", metadata !"PreviousBit_Rate", metadata !"", metadata !1029, i32 136, metadata !445, i32 0, i32 1, double* @PreviousBit_Rate, null} ; [ DW_TAG_variable ] [PreviousBit_Rate] [line 136] [def]
!1041 = metadata !{i32 786484, i32 0, null, metadata !"AWp", metadata !"AWp", metadata !"", metadata !1029, i32 137, metadata !445, i32 0, i32 1, double* @AWp, null} ; [ DW_TAG_variable ] [AWp] [line 137] [def]
!1042 = metadata !{i32 786484, i32 0, null, metadata !"AWb", metadata !"AWb", metadata !"", metadata !1029, i32 138, metadata !445, i32 0, i32 1, double* @AWb, null} ; [ DW_TAG_variable ] [AWb] [line 138] [def]
!1043 = metadata !{i32 786484, i32 0, null, metadata !"MyInitialQp", metadata !"MyInitialQp", metadata !"", metadata !1029, i32 139, metadata !45, i32 0, i32 1, i32* @MyInitialQp, null} ; [ DW_TAG_variable ] [MyInitialQp] [line 139] [def]
!1044 = metadata !{i32 786484, i32 0, null, metadata !"PAverageQp", metadata !"PAverageQp", metadata !"", metadata !1029, i32 140, metadata !45, i32 0, i32 1, i32* @PAverageQp, null} ; [ DW_TAG_variable ] [PAverageQp] [line 140] [def]
!1045 = metadata !{i32 786484, i32 0, null, metadata !"PreviousPictureMAD", metadata !"PreviousPictureMAD", metadata !"", metadata !1029, i32 144, metadata !445, i32 0, i32 1, double* @PreviousPictureMAD, null} ; [ DW_TAG_variable ] [PreviousPictureMAD] [line 144] [def]
!1046 = metadata !{i32 786484, i32 0, null, metadata !"MADPictureC1", metadata !"MADPictureC1", metadata !"", metadata !1029, i32 145, metadata !445, i32 0, i32 1, double* @MADPictureC1, null} ; [ DW_TAG_variable ] [MADPictureC1] [line 145] [def]
!1047 = metadata !{i32 786484, i32 0, null, metadata !"MADPictureC2", metadata !"MADPictureC2", metadata !"", metadata !1029, i32 146, metadata !445, i32 0, i32 1, double* @MADPictureC2, null} ; [ DW_TAG_variable ] [MADPictureC2] [line 146] [def]
!1048 = metadata !{i32 786484, i32 0, null, metadata !"PMADPictureC1", metadata !"PMADPictureC1", metadata !"", metadata !1029, i32 147, metadata !445, i32 0, i32 1, double* @PMADPictureC1, null} ; [ DW_TAG_variable ] [PMADPictureC1] [line 147] [def]
!1049 = metadata !{i32 786484, i32 0, null, metadata !"PMADPictureC2", metadata !"PMADPictureC2", metadata !"", metadata !1029, i32 148, metadata !445, i32 0, i32 1, double* @PMADPictureC2, null} ; [ DW_TAG_variable ] [PMADPictureC2] [line 148] [def]
!1050 = metadata !{i32 786484, i32 0, null, metadata !"PictureRejected", metadata !"PictureRejected", metadata !"", metadata !1029, i32 150, metadata !1051, i32 0, i32 1, [21 x i32]* @PictureRejected, null} ; [ DW_TAG_variable ] [PictureRejected] [line 150] [def]
!1051 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 672, i64 32, i32 0, i32 0, metadata !237, metadata !1052, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 672, align 32, offset 0] [from Boolean]
!1052 = metadata !{metadata !1053}
!1053 = metadata !{i32 786465, i64 0, i64 21}     ; [ DW_TAG_subrange_type ] [0, 20]
!1054 = metadata !{i32 786484, i32 0, null, metadata !"PPictureMAD", metadata !"PPictureMAD", metadata !"", metadata !1029, i32 151, metadata !1055, i32 0, i32 1, [21 x double]* @PPictureMAD, null} ; [ DW_TAG_variable ] [PPictureMAD] [line 151] [def]
!1055 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1344, i64 64, i32 0, i32 0, metadata !445, metadata !1052, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1344, align 64, offset 0] [from double]
!1056 = metadata !{i32 786484, i32 0, null, metadata !"PictureMAD", metadata !"PictureMAD", metadata !"", metadata !1029, i32 152, metadata !1055, i32 0, i32 1, [21 x double]* @PictureMAD, null} ; [ DW_TAG_variable ] [PictureMAD] [line 152] [def]
!1057 = metadata !{i32 786484, i32 0, null, metadata !"ReferenceMAD", metadata !"ReferenceMAD", metadata !"", metadata !1029, i32 153, metadata !1055, i32 0, i32 1, [21 x double]* @ReferenceMAD, null} ; [ DW_TAG_variable ] [ReferenceMAD] [line 153] [def]
!1058 = metadata !{i32 786484, i32 0, null, metadata !"m_rgRejected", metadata !"m_rgRejected", metadata !"", metadata !1029, i32 156, metadata !1051, i32 0, i32 1, [21 x i32]* @m_rgRejected, null} ; [ DW_TAG_variable ] [m_rgRejected] [line 156] [def]
!1059 = metadata !{i32 786484, i32 0, null, metadata !"m_rgQp", metadata !"m_rgQp", metadata !"", metadata !1029, i32 157, metadata !1055, i32 0, i32 1, [21 x double]* @m_rgQp, null} ; [ DW_TAG_variable ] [m_rgQp] [line 157] [def]
!1060 = metadata !{i32 786484, i32 0, null, metadata !"m_rgRp", metadata !"m_rgRp", metadata !"", metadata !1029, i32 158, metadata !1055, i32 0, i32 1, [21 x double]* @m_rgRp, null} ; [ DW_TAG_variable ] [m_rgRp] [line 158] [def]
!1061 = metadata !{i32 786484, i32 0, null, metadata !"m_X1", metadata !"m_X1", metadata !"", metadata !1029, i32 159, metadata !445, i32 0, i32 1, double* @m_X1, null} ; [ DW_TAG_variable ] [m_X1] [line 159] [def]
!1062 = metadata !{i32 786484, i32 0, null, metadata !"m_X2", metadata !"m_X2", metadata !"", metadata !1029, i32 160, metadata !445, i32 0, i32 1, double* @m_X2, null} ; [ DW_TAG_variable ] [m_X2] [line 160] [def]
!1063 = metadata !{i32 786484, i32 0, null, metadata !"m_Qc", metadata !"m_Qc", metadata !"", metadata !1029, i32 161, metadata !45, i32 0, i32 1, i32* @m_Qc, null} ; [ DW_TAG_variable ] [m_Qc] [line 161] [def]
!1064 = metadata !{i32 786484, i32 0, null, metadata !"m_Qstep", metadata !"m_Qstep", metadata !"", metadata !1029, i32 162, metadata !445, i32 0, i32 1, double* @m_Qstep, null} ; [ DW_TAG_variable ] [m_Qstep] [line 162] [def]
!1065 = metadata !{i32 786484, i32 0, null, metadata !"m_Qp", metadata !"m_Qp", metadata !"", metadata !1029, i32 163, metadata !45, i32 0, i32 1, i32* @m_Qp, null} ; [ DW_TAG_variable ] [m_Qp] [line 163] [def]
!1066 = metadata !{i32 786484, i32 0, null, metadata !"Pm_Qp", metadata !"Pm_Qp", metadata !"", metadata !1029, i32 164, metadata !45, i32 0, i32 1, i32* @Pm_Qp, null} ; [ DW_TAG_variable ] [Pm_Qp] [line 164] [def]
!1067 = metadata !{i32 786484, i32 0, null, metadata !"PreAveMBHeader", metadata !"PreAveMBHeader", metadata !"", metadata !1029, i32 165, metadata !45, i32 0, i32 1, i32* @PreAveMBHeader, null} ; [ DW_TAG_variable ] [PreAveMBHeader] [line 165] [def]
!1068 = metadata !{i32 786484, i32 0, null, metadata !"CurAveMBHeader", metadata !"CurAveMBHeader", metadata !"", metadata !1029, i32 166, metadata !45, i32 0, i32 1, i32* @CurAveMBHeader, null} ; [ DW_TAG_variable ] [CurAveMBHeader] [line 166] [def]
!1069 = metadata !{i32 786484, i32 0, null, metadata !"PPreHeader", metadata !"PPreHeader", metadata !"", metadata !1029, i32 167, metadata !45, i32 0, i32 1, i32* @PPreHeader, null} ; [ DW_TAG_variable ] [PPreHeader] [line 167] [def]
!1070 = metadata !{i32 786484, i32 0, null, metadata !"PreviousQp1", metadata !"PreviousQp1", metadata !"", metadata !1029, i32 168, metadata !45, i32 0, i32 1, i32* @PreviousQp1, null} ; [ DW_TAG_variable ] [PreviousQp1] [line 168] [def]
!1071 = metadata !{i32 786484, i32 0, null, metadata !"PreviousQp2", metadata !"PreviousQp2", metadata !"", metadata !1029, i32 169, metadata !45, i32 0, i32 1, i32* @PreviousQp2, null} ; [ DW_TAG_variable ] [PreviousQp2] [line 169] [def]
!1072 = metadata !{i32 786484, i32 0, null, metadata !"NumberofBFrames", metadata !"NumberofBFrames", metadata !"", metadata !1029, i32 170, metadata !45, i32 0, i32 1, i32* @NumberofBFrames, null} ; [ DW_TAG_variable ] [NumberofBFrames] [line 170] [def]
!1073 = metadata !{i32 786484, i32 0, null, metadata !"TotalFrameQP", metadata !"TotalFrameQP", metadata !"", metadata !1029, i32 172, metadata !45, i32 0, i32 1, i32* @TotalFrameQP, null} ; [ DW_TAG_variable ] [TotalFrameQP] [line 172] [def]
!1074 = metadata !{i32 786484, i32 0, null, metadata !"NumberofBasicUnit", metadata !"NumberofBasicUnit", metadata !"", metadata !1029, i32 173, metadata !45, i32 0, i32 1, i32* @NumberofBasicUnit, null} ; [ DW_TAG_variable ] [NumberofBasicUnit] [line 173] [def]
!1075 = metadata !{i32 786484, i32 0, null, metadata !"PAveHeaderBits1", metadata !"PAveHeaderBits1", metadata !"", metadata !1029, i32 174, metadata !45, i32 0, i32 1, i32* @PAveHeaderBits1, null} ; [ DW_TAG_variable ] [PAveHeaderBits1] [line 174] [def]
!1076 = metadata !{i32 786484, i32 0, null, metadata !"PAveHeaderBits2", metadata !"PAveHeaderBits2", metadata !"", metadata !1029, i32 175, metadata !45, i32 0, i32 1, i32* @PAveHeaderBits2, null} ; [ DW_TAG_variable ] [PAveHeaderBits2] [line 175] [def]
!1077 = metadata !{i32 786484, i32 0, null, metadata !"PAveHeaderBits3", metadata !"PAveHeaderBits3", metadata !"", metadata !1029, i32 176, metadata !45, i32 0, i32 1, i32* @PAveHeaderBits3, null} ; [ DW_TAG_variable ] [PAveHeaderBits3] [line 176] [def]
!1078 = metadata !{i32 786484, i32 0, null, metadata !"PAveFrameQP", metadata !"PAveFrameQP", metadata !"", metadata !1029, i32 177, metadata !45, i32 0, i32 1, i32* @PAveFrameQP, null} ; [ DW_TAG_variable ] [PAveFrameQP] [line 177] [def]
!1079 = metadata !{i32 786484, i32 0, null, metadata !"TotalNumberofBasicUnit", metadata !"TotalNumberofBasicUnit", metadata !"", metadata !1029, i32 178, metadata !45, i32 0, i32 1, i32* @TotalNumberofBasicUnit, null} ; [ DW_TAG_variable ] [TotalNumberofBasicUnit] [line 178] [def]
!1080 = metadata !{i32 786484, i32 0, null, metadata !"CodedBasicUnit", metadata !"CodedBasicUnit", metadata !"", metadata !1029, i32 179, metadata !45, i32 0, i32 1, i32* @CodedBasicUnit, null} ; [ DW_TAG_variable ] [CodedBasicUnit] [line 179] [def]
!1081 = metadata !{i32 786484, i32 0, null, metadata !"MINVALUE", metadata !"MINVALUE", metadata !"", metadata !1029, i32 180, metadata !445, i32 0, i32 1, double* @MINVALUE, null} ; [ DW_TAG_variable ] [MINVALUE] [line 180] [def]
!1082 = metadata !{i32 786484, i32 0, null, metadata !"CurrentFrameMAD", metadata !"CurrentFrameMAD", metadata !"", metadata !1029, i32 181, metadata !445, i32 0, i32 1, double* @CurrentFrameMAD, null} ; [ DW_TAG_variable ] [CurrentFrameMAD] [line 181] [def]
!1083 = metadata !{i32 786484, i32 0, null, metadata !"CurrentBUMAD", metadata !"CurrentBUMAD", metadata !"", metadata !1029, i32 182, metadata !445, i32 0, i32 1, double* @CurrentBUMAD, null} ; [ DW_TAG_variable ] [CurrentBUMAD] [line 182] [def]
!1084 = metadata !{i32 786484, i32 0, null, metadata !"TotalBUMAD", metadata !"TotalBUMAD", metadata !"", metadata !1029, i32 183, metadata !445, i32 0, i32 1, double* @TotalBUMAD, null} ; [ DW_TAG_variable ] [TotalBUMAD] [line 183] [def]
!1085 = metadata !{i32 786484, i32 0, null, metadata !"PreviousFrameMAD", metadata !"PreviousFrameMAD", metadata !"", metadata !1029, i32 184, metadata !445, i32 0, i32 1, double* @PreviousFrameMAD, null} ; [ DW_TAG_variable ] [PreviousFrameMAD] [line 184] [def]
!1086 = metadata !{i32 786484, i32 0, null, metadata !"m_Hp", metadata !"m_Hp", metadata !"", metadata !1029, i32 185, metadata !45, i32 0, i32 1, i32* @m_Hp, null} ; [ DW_TAG_variable ] [m_Hp] [line 185] [def]
!1087 = metadata !{i32 786484, i32 0, null, metadata !"m_windowSize", metadata !"m_windowSize", metadata !"", metadata !1029, i32 186, metadata !45, i32 0, i32 1, i32* @m_windowSize, null} ; [ DW_TAG_variable ] [m_windowSize] [line 186] [def]
!1088 = metadata !{i32 786484, i32 0, null, metadata !"MADm_windowSize", metadata !"MADm_windowSize", metadata !"", metadata !1029, i32 187, metadata !45, i32 0, i32 1, i32* @MADm_windowSize, null} ; [ DW_TAG_variable ] [MADm_windowSize] [line 187] [def]
!1089 = metadata !{i32 786484, i32 0, null, metadata !"DDquant", metadata !"DDquant", metadata !"", metadata !1029, i32 188, metadata !45, i32 0, i32 1, i32* @DDquant, null} ; [ DW_TAG_variable ] [DDquant] [line 188] [def]
!1090 = metadata !{i32 786484, i32 0, null, metadata !"MBPerRow", metadata !"MBPerRow", metadata !"", metadata !1029, i32 189, metadata !45, i32 0, i32 1, i32* @MBPerRow, null} ; [ DW_TAG_variable ] [MBPerRow] [line 189] [def]
!1091 = metadata !{i32 786484, i32 0, null, metadata !"AverageMADPreviousFrame", metadata !"AverageMADPreviousFrame", metadata !"", metadata !1029, i32 190, metadata !445, i32 0, i32 1, double* @AverageMADPreviousFrame, null} ; [ DW_TAG_variable ] [AverageMADPreviousFrame] [line 190] [def]
!1092 = metadata !{i32 786484, i32 0, null, metadata !"TotalBasicUnitBits", metadata !"TotalBasicUnitBits", metadata !"", metadata !1029, i32 191, metadata !45, i32 0, i32 1, i32* @TotalBasicUnitBits, null} ; [ DW_TAG_variable ] [TotalBasicUnitBits] [line 191] [def]
!1093 = metadata !{i32 786484, i32 0, null, metadata !"QPLastPFrame", metadata !"QPLastPFrame", metadata !"", metadata !1029, i32 192, metadata !45, i32 0, i32 1, i32* @QPLastPFrame, null} ; [ DW_TAG_variable ] [QPLastPFrame] [line 192] [def]
!1094 = metadata !{i32 786484, i32 0, null, metadata !"QPLastGOP", metadata !"QPLastGOP", metadata !"", metadata !1029, i32 193, metadata !45, i32 0, i32 1, i32* @QPLastGOP, null} ; [ DW_TAG_variable ] [QPLastGOP] [line 193] [def]
!1095 = metadata !{i32 786484, i32 0, null, metadata !"Pm_rgQp", metadata !"Pm_rgQp", metadata !"", metadata !1029, i32 197, metadata !1096, i32 0, i32 1, [20 x double]* @Pm_rgQp, null} ; [ DW_TAG_variable ] [Pm_rgQp] [line 197] [def]
!1096 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1280, i64 64, i32 0, i32 0, metadata !445, metadata !975, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1280, align 64, offset 0] [from double]
!1097 = metadata !{i32 786484, i32 0, null, metadata !"Pm_rgRp", metadata !"Pm_rgRp", metadata !"", metadata !1029, i32 198, metadata !1096, i32 0, i32 1, [20 x double]* @Pm_rgRp, null} ; [ DW_TAG_variable ] [Pm_rgRp] [line 198] [def]
!1098 = metadata !{i32 786484, i32 0, null, metadata !"Pm_X1", metadata !"Pm_X1", metadata !"", metadata !1029, i32 199, metadata !445, i32 0, i32 1, double* @Pm_X1, null} ; [ DW_TAG_variable ] [Pm_X1] [line 199] [def]
!1099 = metadata !{i32 786484, i32 0, null, metadata !"Pm_X2", metadata !"Pm_X2", metadata !"", metadata !1029, i32 200, metadata !445, i32 0, i32 1, double* @Pm_X2, null} ; [ DW_TAG_variable ] [Pm_X2] [line 200] [def]
!1100 = metadata !{i32 786484, i32 0, null, metadata !"Pm_Hp", metadata !"Pm_Hp", metadata !"", metadata !1029, i32 201, metadata !45, i32 0, i32 1, i32* @Pm_Hp, null} ; [ DW_TAG_variable ] [Pm_Hp] [line 201] [def]
!1101 = metadata !{i32 786484, i32 0, null, metadata !"FieldQPBuffer", metadata !"FieldQPBuffer", metadata !"", metadata !1029, i32 203, metadata !45, i32 0, i32 1, i32* @FieldQPBuffer, null} ; [ DW_TAG_variable ] [FieldQPBuffer] [line 203] [def]
!1102 = metadata !{i32 786484, i32 0, null, metadata !"FrameQPBuffer", metadata !"FrameQPBuffer", metadata !"", metadata !1029, i32 204, metadata !45, i32 0, i32 1, i32* @FrameQPBuffer, null} ; [ DW_TAG_variable ] [FrameQPBuffer] [line 204] [def]
!1103 = metadata !{i32 786484, i32 0, null, metadata !"FrameAveHeaderBits", metadata !"FrameAveHeaderBits", metadata !"", metadata !1029, i32 205, metadata !45, i32 0, i32 1, i32* @FrameAveHeaderBits, null} ; [ DW_TAG_variable ] [FrameAveHeaderBits] [line 205] [def]
!1104 = metadata !{i32 786484, i32 0, null, metadata !"FieldAveHeaderBits", metadata !"FieldAveHeaderBits", metadata !"", metadata !1029, i32 206, metadata !45, i32 0, i32 1, i32* @FieldAveHeaderBits, null} ; [ DW_TAG_variable ] [FieldAveHeaderBits] [line 206] [def]
!1105 = metadata !{i32 786484, i32 0, null, metadata !"BUPFMAD", metadata !"BUPFMAD", metadata !"", metadata !1029, i32 207, metadata !1106, i32 0, i32 1, double** @BUPFMAD, null} ; [ DW_TAG_variable ] [BUPFMAD] [line 207] [def]
!1106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !445} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!1107 = metadata !{i32 786484, i32 0, null, metadata !"BUCFMAD", metadata !"BUCFMAD", metadata !"", metadata !1029, i32 208, metadata !1106, i32 0, i32 1, double** @BUCFMAD, null} ; [ DW_TAG_variable ] [BUCFMAD] [line 208] [def]
!1108 = metadata !{i32 786484, i32 0, null, metadata !"FCBUCFMAD", metadata !"FCBUCFMAD", metadata !"", metadata !1029, i32 209, metadata !1106, i32 0, i32 1, double** @FCBUCFMAD, null} ; [ DW_TAG_variable ] [FCBUCFMAD] [line 209] [def]
!1109 = metadata !{i32 786484, i32 0, null, metadata !"FCBUPFMAD", metadata !"FCBUPFMAD", metadata !"", metadata !1029, i32 210, metadata !1106, i32 0, i32 1, double** @FCBUPFMAD, null} ; [ DW_TAG_variable ] [FCBUPFMAD] [line 210] [def]
!1110 = metadata !{i32 786484, i32 0, null, metadata !"GOPOverdue", metadata !"GOPOverdue", metadata !"", metadata !1029, i32 212, metadata !237, i32 0, i32 1, i32* @GOPOverdue, null} ; [ DW_TAG_variable ] [GOPOverdue] [line 212] [def]
!1111 = metadata !{i32 786484, i32 0, null, metadata !"diffy", metadata !"diffy", metadata !"", metadata !1029, i32 216, metadata !853, i32 0, i32 1, [16 x [16 x i32]]* @diffy, null} ; [ DW_TAG_variable ] [diffy] [line 216] [def]
!1112 = metadata !{i32 786484, i32 0, null, metadata !"diffyy", metadata !"diffyy", metadata !"", metadata !1029, i32 217, metadata !853, i32 0, i32 1, [16 x [16 x i32]]* @diffyy, null} ; [ DW_TAG_variable ] [diffyy] [line 217] [def]
!1113 = metadata !{i32 786484, i32 0, null, metadata !"diffy8", metadata !"diffy8", metadata !"", metadata !1029, i32 218, metadata !853, i32 0, i32 1, [16 x [16 x i32]]* @diffy8, null} ; [ DW_TAG_variable ] [diffy8] [line 218] [def]
!1114 = metadata !{i32 786484, i32 0, null, metadata !"last_P_no", metadata !"last_P_no", metadata !"", metadata !29, i32 88, metadata !109, i32 0, i32 1, i32** @last_P_no, null} ; [ DW_TAG_variable ] [last_P_no] [line 88] [def]
!1115 = metadata !{i32 786484, i32 0, null, metadata !"last_P_no_frm", metadata !"last_P_no_frm", metadata !"", metadata !29, i32 89, metadata !109, i32 0, i32 1, i32** @last_P_no_frm, null} ; [ DW_TAG_variable ] [last_P_no_frm] [line 89] [def]
!1116 = metadata !{i32 786484, i32 0, null, metadata !"last_P_no_fld", metadata !"last_P_no_fld", metadata !"", metadata !29, i32 90, metadata !109, i32 0, i32 1, i32** @last_P_no_fld, null} ; [ DW_TAG_variable ] [last_P_no_fld] [line 90] [def]
!1117 = metadata !{i32 786484, i32 0, null, metadata !"enc_picture", metadata !"enc_picture", metadata !"", metadata !29, i32 103, metadata !304, i32 0, i32 1, %struct.storable_picture** @enc_picture, null} ; [ DW_TAG_variable ] [enc_picture] [line 103] [def]
!1118 = metadata !{i32 786484, i32 0, null, metadata !"enc_frame_picture", metadata !"enc_frame_picture", metadata !"", metadata !29, i32 104, metadata !304, i32 0, i32 1, %struct.storable_picture** @enc_frame_picture, null} ; [ DW_TAG_variable ] [enc_frame_picture] [line 104] [def]
!1119 = metadata !{i32 786484, i32 0, null, metadata !"enc_frame_picture2", metadata !"enc_frame_picture2", metadata !"", metadata !29, i32 105, metadata !304, i32 0, i32 1, %struct.storable_picture** @enc_frame_picture2, null} ; [ DW_TAG_variable ] [enc_frame_picture2] [line 105] [def]
!1120 = metadata !{i32 786484, i32 0, null, metadata !"enc_frame_picture3", metadata !"enc_frame_picture3", metadata !"", metadata !29, i32 106, metadata !304, i32 0, i32 1, %struct.storable_picture** @enc_frame_picture3, null} ; [ DW_TAG_variable ] [enc_frame_picture3] [line 106] [def]
!1121 = metadata !{i32 786484, i32 0, null, metadata !"enc_top_picture", metadata !"enc_top_picture", metadata !"", metadata !29, i32 107, metadata !304, i32 0, i32 1, %struct.storable_picture** @enc_top_picture, null} ; [ DW_TAG_variable ] [enc_top_picture] [line 107] [def]
!1122 = metadata !{i32 786484, i32 0, null, metadata !"enc_bottom_picture", metadata !"enc_bottom_picture", metadata !"", metadata !29, i32 108, metadata !304, i32 0, i32 1, %struct.storable_picture** @enc_bottom_picture, null} ; [ DW_TAG_variable ] [enc_bottom_picture] [line 108] [def]
!1123 = metadata !{i32 786484, i32 0, null, metadata !"QP", metadata !"QP", metadata !"", metadata !29, i32 111, metadata !45, i32 0, i32 1, i32* @QP, null} ; [ DW_TAG_variable ] [QP] [line 111] [def]
!1124 = metadata !{i32 124, i32 0, metadata !28, null}
!1125 = metadata !{i32 126, i32 0, metadata !28, null}
!1126 = metadata !{metadata !"any pointer", metadata !1127}
!1127 = metadata !{metadata !"omnipotent char", metadata !1128}
!1128 = metadata !{metadata !"Simple C/C++ TBAA"}
!1129 = metadata !{i32 127, i32 0, metadata !28, null}
!1130 = metadata !{i32 128, i32 0, metadata !28, null}
!1131 = metadata !{i32 130, i32 0, metadata !28, null}
!1132 = metadata !{metadata !"int", metadata !1127}
!1133 = metadata !{i32 132, i32 0, metadata !1134, null}
!1134 = metadata !{i32 786443, metadata !1, metadata !1135, i32 132, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1135 = metadata !{i32 786443, metadata !1, metadata !28, i32 131, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1136 = metadata !{i32 169, i32 0, metadata !1137, null}
!1137 = metadata !{i32 786443, metadata !1, metadata !1138, i32 169, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1138 = metadata !{i32 786443, metadata !1, metadata !28, i32 168, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1139 = metadata !{i32 134, i32 0, metadata !1140, null}
!1140 = metadata !{i32 786443, metadata !1, metadata !1134, i32 133, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1141 = metadata !{i32 136, i32 0, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !1, metadata !1140, i32 135, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1143 = metadata !{i32 137, i32 0, metadata !1144, null}
!1144 = metadata !{i32 786443, metadata !1, metadata !1142, i32 137, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1145 = metadata !{i32 139, i32 0, metadata !1146, null}
!1146 = metadata !{i32 786443, metadata !1, metadata !1144, i32 138, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1147 = metadata !{i32 138, i32 0, metadata !1146, null}
!1148 = metadata !{metadata !"short", metadata !1127}
!1149 = metadata !{i32 144, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1, metadata !1151, i32 143, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1151 = metadata !{i32 786443, metadata !1, metadata !1152, i32 142, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1152 = metadata !{i32 786443, metadata !1, metadata !1142, i32 141, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1153 = metadata !{i32 145, i32 0, metadata !1150, null}
!1154 = metadata !{i32 142, i32 0, metadata !1151, null}
!1155 = metadata !{i32 141, i32 0, metadata !1152, null}
!1156 = metadata !{i32 148, i32 0, metadata !1142, null}
!1157 = metadata !{i32 149, i32 0, metadata !1142, null}
!1158 = metadata !{i32 151, i32 0, metadata !1159, null}
!1159 = metadata !{i32 786443, metadata !1, metadata !1142, i32 151, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1160 = metadata !{i32 153, i32 0, metadata !1161, null}
!1161 = metadata !{i32 786443, metadata !1, metadata !1162, i32 153, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1162 = metadata !{i32 786443, metadata !1, metadata !1159, i32 152, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1163 = metadata !{i32 160, i32 0, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !1, metadata !1165, i32 159, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1165 = metadata !{i32 786443, metadata !1, metadata !1166, i32 158, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1166 = metadata !{i32 786443, metadata !1, metadata !1162, i32 157, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1167 = metadata !{i32 161, i32 0, metadata !1164, null}
!1168 = metadata !{i32 155, i32 0, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !1, metadata !1161, i32 154, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1170 = metadata !{i32 154, i32 0, metadata !1169, null}
!1171 = metadata !{i32 157, i32 0, metadata !1166, null}
!1172 = metadata !{i32 158, i32 0, metadata !1165, null}
!1173 = metadata !{i32 171, i32 0, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !1, metadata !1137, i32 170, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1175 = metadata !{i32 173, i32 0, metadata !1176, null}
!1176 = metadata !{i32 786443, metadata !1, metadata !1174, i32 172, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1177 = metadata !{i32 174, i32 0, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !1, metadata !1176, i32 174, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1179 = metadata !{i32 176, i32 0, metadata !1180, null}
!1180 = metadata !{i32 786443, metadata !1, metadata !1178, i32 175, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1181 = metadata !{i32 175, i32 0, metadata !1180, null}
!1182 = metadata !{i32 181, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !1184, i32 180, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1184 = metadata !{i32 786443, metadata !1, metadata !1185, i32 179, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1185 = metadata !{i32 786443, metadata !1, metadata !1176, i32 178, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1186 = metadata !{i32 182, i32 0, metadata !1183, null}
!1187 = metadata !{i32 179, i32 0, metadata !1184, null}
!1188 = metadata !{i32 178, i32 0, metadata !1185, null}
!1189 = metadata !{i32 187, i32 0, metadata !28, null}
!1190 = metadata !{i32 200, i32 0, metadata !51, null}
!1191 = metadata !{i32 202, i32 0, metadata !51, null}
!1192 = metadata !{i32 203, i32 0, metadata !51, null}
!1193 = metadata !{i32 206, i32 0, metadata !51, null}
!1194 = metadata !{i32 208, i32 0, metadata !51, null}
!1195 = metadata !{i32 210, i32 0, metadata !51, null}
!1196 = metadata !{i32 211, i32 0, metadata !51, null}
!1197 = metadata !{metadata !"float", metadata !1127}
!1198 = metadata !{i32 213, i32 0, metadata !51, null}
!1199 = metadata !{i32 217, i32 0, metadata !51, null}
!1200 = metadata !{i32 218, i32 0, metadata !51, null}
!1201 = metadata !{i32 219, i32 0, metadata !51, null}
!1202 = metadata !{i32 221, i32 0, metadata !51, null}
!1203 = metadata !{i32 222, i32 0, metadata !51, null}
!1204 = metadata !{i32 224, i32 0, metadata !51, null}
!1205 = metadata !{i32 226, i32 0, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !1, metadata !51, i32 225, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1207 = metadata !{i32 227, i32 0, metadata !1206, null}
!1208 = metadata !{i32 228, i32 0, metadata !1206, null}
!1209 = metadata !{i32 230, i32 0, metadata !51, null}
!1210 = metadata !{i32 233, i32 0, metadata !1211, null}
!1211 = metadata !{i32 786443, metadata !1, metadata !51, i32 231, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1212 = metadata !{i32 236, i32 0, metadata !1213, null}
!1213 = metadata !{i32 786443, metadata !1, metadata !1211, i32 234, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1214 = metadata !{i32 237, i32 0, metadata !1213, null}
!1215 = metadata !{i32 239, i32 0, metadata !1213, null}
!1216 = metadata !{i32 240, i32 0, metadata !1213, null}
!1217 = metadata !{i32 243, i32 0, metadata !1211, null}
!1218 = metadata !{i32 245, i32 0, metadata !51, null}
!1219 = metadata !{i32 247, i32 0, metadata !51, null}
!1220 = metadata !{i32 248, i32 0, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !1, metadata !51, i32 248, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1222 = metadata !{i32 249, i32 0, metadata !1221, null}
!1223 = metadata !{i32 251, i32 0, metadata !51, null}
!1224 = metadata !{i32 253, i32 0, metadata !51, null}
!1225 = metadata !{i32 254, i32 0, metadata !51, null}
!1226 = metadata !{i32 256, i32 0, metadata !51, null}
!1227 = metadata !{i32 277, i32 0, metadata !253, null}
!1228 = metadata !{i32 278, i32 0, metadata !253, null}
!1229 = metadata !{i32 284, i32 0, metadata !253, null}
!1230 = metadata !{i32 285, i32 0, metadata !253, null}
!1231 = metadata !{i32 289, i32 0, metadata !253, null}
!1232 = metadata !{float 0.000000e+00}
!1233 = metadata !{i32 290, i32 0, metadata !253, null}
!1234 = metadata !{i32 291, i32 0, metadata !253, null}
!1235 = metadata !{i32 294, i32 0, metadata !253, null}
!1236 = metadata !{i32 296, i32 0, metadata !253, null}
!1237 = metadata !{i32 297, i32 0, metadata !253, null}
!1238 = metadata !{i32 298, i32 0, metadata !253, null}
!1239 = metadata !{i32 299, i32 0, metadata !253, null}
!1240 = metadata !{i32 300, i32 0, metadata !253, null}
!1241 = metadata !{i32 312, i32 0, metadata !253, null}
!1242 = metadata !{i32 314, i32 0, metadata !253, null}
!1243 = metadata !{i32 318, i32 0, metadata !253, null}
!1244 = metadata !{i32 331, i32 0, metadata !253, null}
!1245 = metadata !{i32 333, i32 0, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !1, metadata !253, i32 332, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1247 = metadata !{i32 335, i32 0, metadata !1246, null}
!1248 = metadata !{i32 1063, i32 0, metadata !632, metadata !1249}
!1249 = metadata !{i32 340, i32 0, metadata !253, null}
!1250 = metadata !{i32 336, i32 0, metadata !1246, null}
!1251 = metadata !{i32 2399, i32 0, metadata !525, metadata !1252}
!1252 = metadata !{i32 338, i32 0, metadata !253, null}
!1253 = metadata !{i32 2400, i32 0, metadata !525, metadata !1252}
!1254 = metadata !{i32 1061, i32 0, metadata !632, metadata !1249}
!1255 = metadata !{i32 1064, i32 0, metadata !632, metadata !1249}
!1256 = metadata !{i32 1065, i32 0, metadata !632, metadata !1249}
!1257 = metadata !{i32 1067, i32 0, metadata !632, metadata !1249}
!1258 = metadata !{i32 1069, i32 0, metadata !632, metadata !1249}
!1259 = metadata !{i32 786688, metadata !632, metadata !"i", metadata !29, i32 1058, metadata !45, i32 0, metadata !1249} ; [ DW_TAG_auto_variable ] [i] [line 1058]
!1260 = metadata !{i32 1074, i32 0, metadata !1261, metadata !1249}
!1261 = metadata !{i32 786443, metadata !1, metadata !632, i32 1074, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1262 = metadata !{i32 1075, i32 0, metadata !1261, metadata !1249}
!1263 = metadata !{i32 1078, i32 0, metadata !632, metadata !1249}
!1264 = metadata !{i32 1080, i32 0, metadata !1265, metadata !1249}
!1265 = metadata !{i32 786443, metadata !1, metadata !632, i32 1079, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1266 = metadata !{i32 1082, i32 0, metadata !1265, metadata !1249}
!1267 = metadata !{i32 1083, i32 0, metadata !1265, metadata !1249}
!1268 = metadata !{i32 1086, i32 0, metadata !1265, metadata !1249}
!1269 = metadata !{i32 1087, i32 0, metadata !1265, metadata !1249}
!1270 = metadata !{i32 1090, i32 0, metadata !1265, metadata !1249}
!1271 = metadata !{i32 1091, i32 0, metadata !1265, metadata !1249}
!1272 = metadata !{i32 1094, i32 0, metadata !1265, metadata !1249}
!1273 = metadata !{i32 1096, i32 0, metadata !1274, metadata !1249}
!1274 = metadata !{i32 786443, metadata !1, metadata !1265, i32 1095, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1275 = metadata !{i32 1098, i32 0, metadata !1274, metadata !1249}
!1276 = metadata !{i32 1099, i32 0, metadata !1274, metadata !1249}
!1277 = metadata !{i32 1102, i32 0, metadata !1274, metadata !1249}
!1278 = metadata !{i32 1106, i32 0, metadata !1279, metadata !1249}
!1279 = metadata !{i32 786443, metadata !1, metadata !1274, i32 1104, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1280 = metadata !{i32 1107, i32 0, metadata !1279, metadata !1249}
!1281 = metadata !{i32 1110, i32 0, metadata !1279, metadata !1249}
!1282 = metadata !{i32 1112, i32 0, metadata !1279, metadata !1249}
!1283 = metadata !{i32 1114, i32 0, metadata !1284, metadata !1249}
!1284 = metadata !{i32 786443, metadata !1, metadata !1279, i32 1113, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1285 = metadata !{i32 1115, i32 0, metadata !1284, metadata !1249}
!1286 = metadata !{i32 1116, i32 0, metadata !1284, metadata !1249}
!1287 = metadata !{i32 1120, i32 0, metadata !1265, metadata !1249}
!1288 = metadata !{i32 1122, i32 0, metadata !1265, metadata !1249}
!1289 = metadata !{i32 1124, i32 0, metadata !1290, metadata !1249}
!1290 = metadata !{i32 786443, metadata !1, metadata !1265, i32 1123, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1291 = metadata !{i32 1125, i32 0, metadata !1290, metadata !1249}
!1292 = metadata !{i32 1129, i32 0, metadata !1293, metadata !1249}
!1293 = metadata !{i32 786443, metadata !1, metadata !632, i32 1128, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1294 = metadata !{i32 1130, i32 0, metadata !1293, metadata !1249}
!1295 = metadata !{i32 786688, metadata !632, metadata !"prevP_no", metadata !29, i32 1059, metadata !45, i32 0, metadata !1249} ; [ DW_TAG_auto_variable ] [prevP_no] [line 1059]
!1296 = metadata !{i32 1131, i32 0, metadata !1293, metadata !1249}
!1297 = metadata !{i32 786688, metadata !632, metadata !"nextP_no", metadata !29, i32 1059, metadata !45, i32 0, metadata !1249} ; [ DW_TAG_auto_variable ] [nextP_no] [line 1059]
!1298 = metadata !{i32 1134, i32 0, metadata !1293, metadata !1249}
!1299 = metadata !{i32 1}
!1300 = metadata !{i32 1135, i32 0, metadata !1301, metadata !1249}
!1301 = metadata !{i32 786443, metadata !1, metadata !1293, i32 1135, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1302 = metadata !{i32 1136, i32 0, metadata !1301, metadata !1249}
!1303 = metadata !{i32 1138, i32 0, metadata !1293, metadata !1249}
!1304 = metadata !{i32 1140, i32 0, metadata !1305, metadata !1249}
!1305 = metadata !{i32 786443, metadata !1, metadata !1293, i32 1139, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1306 = metadata !{i32 1141, i32 0, metadata !1305, metadata !1249}
!1307 = metadata !{i32 1142, i32 0, metadata !1305, metadata !1249}
!1308 = metadata !{i32 1145, i32 0, metadata !1293, metadata !1249}
!1309 = metadata !{metadata !"double", metadata !1127}
!1310 = metadata !{i32 1148, i32 0, metadata !1293, metadata !1249}
!1311 = metadata !{i32 1149, i32 0, metadata !1293, metadata !1249}
!1312 = metadata !{i32 1152, i32 0, metadata !1293, metadata !1249}
!1313 = metadata !{i32 1151, i32 0, metadata !1293, metadata !1249}
!1314 = metadata !{i32 1154, i32 0, metadata !1293, metadata !1249}
!1315 = metadata !{i32 1157, i32 0, metadata !1293, metadata !1249}
!1316 = metadata !{i32 1158, i32 0, metadata !1293, metadata !1249}
!1317 = metadata !{i32 1160, i32 0, metadata !1293, metadata !1249}
!1318 = metadata !{i32 1163, i32 0, metadata !1319, metadata !1249}
!1319 = metadata !{i32 786443, metadata !1, metadata !1293, i32 1161, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1320 = metadata !{i32 1165, i32 0, metadata !1321, metadata !1249}
!1321 = metadata !{i32 786443, metadata !1, metadata !1319, i32 1164, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1322 = metadata !{i32 1166, i32 0, metadata !1321, metadata !1249}
!1323 = metadata !{i32 1170, i32 0, metadata !1324, metadata !1249}
!1324 = metadata !{i32 786443, metadata !1, metadata !1319, i32 1169, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1325 = metadata !{i32 1173, i32 0, metadata !1319, metadata !1249}
!1326 = metadata !{i32 1176, i32 0, metadata !1327, metadata !1249}
!1327 = metadata !{i32 786443, metadata !1, metadata !1319, i32 1174, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1328 = metadata !{i32 1178, i32 0, metadata !1329, metadata !1249}
!1329 = metadata !{i32 786443, metadata !1, metadata !1327, i32 1177, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1330 = metadata !{i32 1179, i32 0, metadata !1329, metadata !1249}
!1331 = metadata !{i32 1183, i32 0, metadata !1332, metadata !1249}
!1332 = metadata !{i32 786443, metadata !1, metadata !1327, i32 1182, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1333 = metadata !{i32 1187, i32 0, metadata !1293, metadata !1249}
!1334 = metadata !{i32 1189, i32 0, metadata !1335, metadata !1249}
!1335 = metadata !{i32 786443, metadata !1, metadata !1293, i32 1188, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1336 = metadata !{i32 1191, i32 0, metadata !1335, metadata !1249}
!1337 = metadata !{i32 1195, i32 0, metadata !632, metadata !1249}
!1338 = metadata !{i32 1196, i32 0, metadata !632, metadata !1249}
!1339 = metadata !{i32 1201, i32 0, metadata !632, metadata !1249}
!1340 = metadata !{i32 1203, i32 0, metadata !632, metadata !1249}
!1341 = metadata !{i32 1207, i32 0, metadata !632, metadata !1249}
!1342 = metadata !{i32 1204, i32 0, metadata !632, metadata !1249}
!1343 = metadata !{i32 2168, i32 0, metadata !546, metadata !1344}
!1344 = metadata !{i32 341, i32 0, metadata !253, null}
!1345 = metadata !{i32 2171, i32 0, metadata !1346, metadata !1344}
!1346 = metadata !{i32 786443, metadata !1, metadata !546, i32 2169, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1347 = metadata !{i32 2172, i32 0, metadata !1346, metadata !1344}
!1348 = metadata !{i32 2174, i32 0, metadata !1346, metadata !1344}
!1349 = metadata !{i32 2178, i32 0, metadata !1350, metadata !1344}
!1350 = metadata !{i32 786443, metadata !1, metadata !546, i32 2177, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1351 = metadata !{i32 2180, i32 0, metadata !1350, metadata !1344}
!1352 = metadata !{i32 2181, i32 0, metadata !1350, metadata !1344}
!1353 = metadata !{i32 343, i32 0, metadata !253, null}
!1354 = metadata !{i32 786689, metadata !526, metadata !"FrameNoInFile", metadata !29, i32 16779515, metadata !45, i32 0, metadata !1353} ; [ DW_TAG_arg_variable ] [FrameNoInFile] [line 2299]
!1355 = metadata !{i32 2299, i32 0, metadata !526, metadata !1353}
!1356 = metadata !{i32 786689, metadata !526, metadata !"HeaderSize", metadata !29, i32 33556731, metadata !45, i32 0, metadata !1353} ; [ DW_TAG_arg_variable ] [HeaderSize] [line 2299]
!1357 = metadata !{i32 786689, metadata !526, metadata !"xs", metadata !29, i32 50333947, metadata !45, i32 0, metadata !1353} ; [ DW_TAG_arg_variable ] [xs] [line 2299]
!1358 = metadata !{i32 786689, metadata !526, metadata !"ys", metadata !29, i32 67111163, metadata !45, i32 0, metadata !1353} ; [ DW_TAG_arg_variable ] [ys] [line 2299]
!1359 = metadata !{i32 786689, metadata !526, metadata !"xs_cr", metadata !29, i32 83888379, metadata !45, i32 0, metadata !1353} ; [ DW_TAG_arg_variable ] [xs_cr] [line 2299]
!1360 = metadata !{i32 786689, metadata !526, metadata !"ys_cr", metadata !29, i32 100665595, metadata !45, i32 0, metadata !1353} ; [ DW_TAG_arg_variable ] [ys_cr] [line 2299]
!1361 = metadata !{i32 2301, i32 0, metadata !526, metadata !1353}
!1362 = metadata !{i32 786688, metadata !526, metadata !"symbol_size_in_bytes", metadata !29, i32 2301, metadata !102, i32 0, metadata !1353} ; [ DW_TAG_auto_variable ] [symbol_size_in_bytes] [line 2301]
!1363 = metadata !{i32 2303, i32 0, metadata !526, metadata !1353}
!1364 = metadata !{i32 786688, metadata !526, metadata !"imgsize_y", metadata !29, i32 2303, metadata !538, i32 0, metadata !1353} ; [ DW_TAG_auto_variable ] [imgsize_y] [line 2303]
!1365 = metadata !{i32 2304, i32 0, metadata !526, metadata !1353}
!1366 = metadata !{i32 786688, metadata !526, metadata !"imgsize_uv", metadata !29, i32 2304, metadata !538, i32 0, metadata !1353} ; [ DW_TAG_auto_variable ] [imgsize_uv] [line 2304]
!1367 = metadata !{i32 2306, i32 0, metadata !526, metadata !1353}
!1368 = metadata !{i32 786688, metadata !526, metadata !"bytes_y", metadata !29, i32 2306, metadata !538, i32 0, metadata !1353} ; [ DW_TAG_auto_variable ] [bytes_y] [line 2306]
!1369 = metadata !{i32 2307, i32 0, metadata !526, metadata !1353}
!1370 = metadata !{i32 786688, metadata !526, metadata !"bytes_uv", metadata !29, i32 2307, metadata !538, i32 0, metadata !1353} ; [ DW_TAG_auto_variable ] [bytes_uv] [line 2307]
!1371 = metadata !{i32 2309, i32 0, metadata !526, metadata !1353}
!1372 = metadata !{i32 786688, metadata !526, metadata !"framesize_in_bytes", metadata !29, i32 2309, metadata !543, i32 0, metadata !1353} ; [ DW_TAG_auto_variable ] [framesize_in_bytes] [line 2309]
!1373 = metadata !{i32 2312, i32 0, metadata !526, metadata !1353}
!1374 = metadata !{i32 2315, i32 0, metadata !526, metadata !1353}
!1375 = metadata !{i32 2318, i32 0, metadata !526, metadata !1353}
!1376 = metadata !{i32 786688, metadata !526, metadata !"buf", metadata !29, i32 2310, metadata !467, i32 0, metadata !1353} ; [ DW_TAG_auto_variable ] [buf] [line 2310]
!1377 = metadata !{i32 2321, i32 0, metadata !526, metadata !1353}
!1378 = metadata !{i32 2323, i32 0, metadata !1379, metadata !1353}
!1379 = metadata !{i32 786443, metadata !1, metadata !526, i32 2322, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1380 = metadata !{i32 2324, i32 0, metadata !1379, metadata !1353}
!1381 = metadata !{i32 2327, i32 0, metadata !526, metadata !1353}
!1382 = metadata !{i32 2329, i32 0, metadata !1383, metadata !1353}
!1383 = metadata !{i32 786443, metadata !1, metadata !526, i32 2328, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1384 = metadata !{i32 2330, i32 0, metadata !1383, metadata !1353}
!1385 = metadata !{i32 2331, i32 0, metadata !1383, metadata !1353}
!1386 = metadata !{i32 2334, i32 0, metadata !526, metadata !1353}
!1387 = metadata !{i32 2336, i32 0, metadata !1388, metadata !1353}
!1388 = metadata !{i32 786443, metadata !1, metadata !526, i32 2335, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1389 = metadata !{i32 2337, i32 0, metadata !1388, metadata !1353}
!1390 = metadata !{i32 2338, i32 0, metadata !1388, metadata !1353}
!1391 = metadata !{i32 2342, i32 0, metadata !526, metadata !1353}
!1392 = metadata !{i32 2344, i32 0, metadata !1393, metadata !1353}
!1393 = metadata !{i32 786443, metadata !1, metadata !526, i32 2343, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1394 = metadata !{i32 2345, i32 0, metadata !1393, metadata !1353}
!1395 = metadata !{i32 2347, i32 0, metadata !1393, metadata !1353}
!1396 = metadata !{i32 2349, i32 0, metadata !1397, metadata !1353}
!1397 = metadata !{i32 786443, metadata !1, metadata !1393, i32 2348, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1398 = metadata !{i32 2350, i32 0, metadata !1397, metadata !1353}
!1399 = metadata !{i32 2351, i32 0, metadata !1397, metadata !1353}
!1400 = metadata !{i32 2354, i32 0, metadata !1393, metadata !1353}
!1401 = metadata !{i32 2356, i32 0, metadata !1393, metadata !1353}
!1402 = metadata !{i32 2358, i32 0, metadata !1403, metadata !1353}
!1403 = metadata !{i32 786443, metadata !1, metadata !1393, i32 2357, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1404 = metadata !{i32 2360, i32 0, metadata !1405, metadata !1353}
!1405 = metadata !{i32 786443, metadata !1, metadata !1403, i32 2359, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1406 = metadata !{i32 2361, i32 0, metadata !1405, metadata !1353}
!1407 = metadata !{i32 2362, i32 0, metadata !1405, metadata !1353}
!1408 = metadata !{i32 2364, i32 0, metadata !1403, metadata !1353}
!1409 = metadata !{i32 2366, i32 0, metadata !1403, metadata !1353}
!1410 = metadata !{i32 2367, i32 0, metadata !1403, metadata !1353}
!1411 = metadata !{i32 2369, i32 0, metadata !1403, metadata !1353}
!1412 = metadata !{i32 2371, i32 0, metadata !1413, metadata !1353}
!1413 = metadata !{i32 786443, metadata !1, metadata !1403, i32 2370, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1414 = metadata !{i32 2372, i32 0, metadata !1413, metadata !1353}
!1415 = metadata !{i32 2373, i32 0, metadata !1413, metadata !1353}
!1416 = metadata !{i32 2375, i32 0, metadata !1403, metadata !1353}
!1417 = metadata !{i32 2377, i32 0, metadata !1403, metadata !1353}
!1418 = metadata !{i32 2378, i32 0, metadata !1403, metadata !1353}
!1419 = metadata !{i32 2383, i32 0, metadata !1420, metadata !1353}
!1420 = metadata !{i32 786443, metadata !1, metadata !526, i32 2382, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1421 = metadata !{i32 2384, i32 0, metadata !1420, metadata !1353}
!1422 = metadata !{i32 2386, i32 0, metadata !526, metadata !1353}
!1423 = metadata !{i32 346, i32 0, metadata !253, null}
!1424 = metadata !{i32 786689, metadata !547, metadata !"org_size_x", metadata !29, i32 16779334, metadata !45, i32 0, metadata !1423} ; [ DW_TAG_arg_variable ] [org_size_x] [line 2118]
!1425 = metadata !{i32 2118, i32 0, metadata !547, metadata !1423}
!1426 = metadata !{i32 786689, metadata !547, metadata !"org_size_y", metadata !29, i32 33556550, metadata !45, i32 0, metadata !1423} ; [ DW_TAG_arg_variable ] [org_size_y] [line 2118]
!1427 = metadata !{i32 786689, metadata !547, metadata !"img_size_x", metadata !29, i32 50333766, metadata !45, i32 0, metadata !1423} ; [ DW_TAG_arg_variable ] [img_size_x] [line 2118]
!1428 = metadata !{i32 786689, metadata !547, metadata !"img_size_y", metadata !29, i32 67110982, metadata !45, i32 0, metadata !1423} ; [ DW_TAG_arg_variable ] [img_size_y] [line 2118]
!1429 = metadata !{i32 786689, metadata !547, metadata !"org_size_x_cr", metadata !29, i32 83888199, metadata !45, i32 0, metadata !1423} ; [ DW_TAG_arg_variable ] [org_size_x_cr] [line 2119]
!1430 = metadata !{i32 2119, i32 0, metadata !547, metadata !1423}
!1431 = metadata !{i32 786689, metadata !547, metadata !"org_size_y_cr", metadata !29, i32 100665415, metadata !45, i32 0, metadata !1423} ; [ DW_TAG_arg_variable ] [org_size_y_cr] [line 2119]
!1432 = metadata !{i32 786689, metadata !547, metadata !"img_size_x_cr", metadata !29, i32 117442631, metadata !45, i32 0, metadata !1423} ; [ DW_TAG_arg_variable ] [img_size_x_cr] [line 2119]
!1433 = metadata !{i32 786689, metadata !547, metadata !"img_size_y_cr", metadata !29, i32 134219847, metadata !45, i32 0, metadata !1423} ; [ DW_TAG_arg_variable ] [img_size_y_cr] [line 2119]
!1434 = metadata !{i32 786688, metadata !547, metadata !"y", metadata !29, i32 2121, metadata !45, i32 0, metadata !1423} ; [ DW_TAG_auto_variable ] [y] [line 2121]
!1435 = metadata !{i32 2124, i32 0, metadata !1436, metadata !1423}
!1436 = metadata !{i32 786443, metadata !1, metadata !547, i32 2124, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1437 = metadata !{i32 2125, i32 0, metadata !1438, metadata !1423}
!1438 = metadata !{i32 786443, metadata !1, metadata !1436, i32 2125, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1439 = metadata !{i32 2126, i32 0, metadata !1438, metadata !1423}
!1440 = metadata !{i32 2129, i32 0, metadata !1441, metadata !1423}
!1441 = metadata !{i32 786443, metadata !1, metadata !547, i32 2129, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1442 = metadata !{i32 2130, i32 0, metadata !1443, metadata !1423}
!1443 = metadata !{i32 786443, metadata !1, metadata !1441, i32 2130, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1444 = metadata !{i32 2131, i32 0, metadata !1443, metadata !1423}
!1445 = metadata !{i32 2134, i32 0, metadata !547, metadata !1423}
!1446 = metadata !{i32 2137, i32 0, metadata !1447, metadata !1423}
!1447 = metadata !{i32 786443, metadata !1, metadata !1448, i32 2137, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1448 = metadata !{i32 786443, metadata !1, metadata !547, i32 2135, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1449 = metadata !{i32 2138, i32 0, metadata !1450, metadata !1423}
!1450 = metadata !{i32 786443, metadata !1, metadata !1447, i32 2138, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1451 = metadata !{i32 2140, i32 0, metadata !1452, metadata !1423}
!1452 = metadata !{i32 786443, metadata !1, metadata !1450, i32 2139, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1453 = metadata !{i32 2141, i32 0, metadata !1452, metadata !1423}
!1454 = metadata !{i32 2145, i32 0, metadata !1455, metadata !1423}
!1455 = metadata !{i32 786443, metadata !1, metadata !1448, i32 2145, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1456 = metadata !{i32 2146, i32 0, metadata !1457, metadata !1423}
!1457 = metadata !{i32 786443, metadata !1, metadata !1455, i32 2146, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1458 = metadata !{i32 2148, i32 0, metadata !1459, metadata !1423}
!1459 = metadata !{i32 786443, metadata !1, metadata !1457, i32 2147, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1460 = metadata !{i32 2149, i32 0, metadata !1459, metadata !1423}
!1461 = metadata !{i32 350, i32 0, metadata !253, null}
!1462 = metadata !{i32 351, i32 0, metadata !253, null}
!1463 = metadata !{i32 352, i32 0, metadata !253, null}
!1464 = metadata !{i32 353, i32 0, metadata !253, null}
!1465 = metadata !{i32 357, i32 0, metadata !253, null}
!1466 = metadata !{i32 358, i32 0, metadata !253, null}
!1467 = metadata !{i32 360, i32 0, metadata !253, null}
!1468 = metadata !{i32 362, i32 0, metadata !253, null}
!1469 = metadata !{i32 364, i32 0, metadata !253, null}
!1470 = metadata !{i32 367, i32 0, metadata !1471, null}
!1471 = metadata !{i32 786443, metadata !1, metadata !253, i32 365, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1472 = metadata !{i32 369, i32 0, metadata !1471, null}
!1473 = metadata !{i32 370, i32 0, metadata !1471, null}
!1474 = metadata !{i32 371, i32 0, metadata !1471, null}
!1475 = metadata !{i32 450, i32 0, metadata !253, null}
!1476 = metadata !{i32 376, i32 0, metadata !1477, null}
!1477 = metadata !{i32 786443, metadata !1, metadata !253, i32 374, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1478 = metadata !{i32 379, i32 0, metadata !1477, null}
!1479 = metadata !{i32 380, i32 0, metadata !1477, null}
!1480 = metadata !{i32 382, i32 0, metadata !1477, null}
!1481 = metadata !{i32 385, i32 0, metadata !1477, null}
!1482 = metadata !{i32 389, i32 0, metadata !1483, null}
!1483 = metadata !{i32 786443, metadata !1, metadata !1477, i32 386, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1484 = metadata !{i32 393, i32 0, metadata !1483, null}
!1485 = metadata !{i32 391, i32 0, metadata !1483, null}
!1486 = metadata !{i32 395, i32 0, metadata !1483, null}
!1487 = metadata !{i32 396, i32 0, metadata !1483, null}
!1488 = metadata !{i32 400, i32 0, metadata !1483, null}
!1489 = metadata !{i32 401, i32 0, metadata !1483, null}
!1490 = metadata !{i32 403, i32 0, metadata !1477, null}
!1491 = metadata !{i32 404, i32 0, metadata !1477, null}
!1492 = metadata !{i32 406, i32 0, metadata !1477, null}
!1493 = metadata !{i32 407, i32 0, metadata !1477, null}
!1494 = metadata !{i32 409, i32 0, metadata !1477, null}
!1495 = metadata !{i32 411, i32 0, metadata !1477, null}
!1496 = metadata !{i32 2510, i32 0, metadata !480, metadata !1497}
!1497 = metadata !{i32 413, i32 0, metadata !1498, null}
!1498 = metadata !{i32 786443, metadata !1, metadata !1477, i32 412, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1499 = metadata !{i32 786688, metadata !480, metadata !"rd_qp", metadata !29, i32 2510, metadata !45, i32 0, metadata !1497} ; [ DW_TAG_auto_variable ] [rd_qp] [line 2510]
!1500 = metadata !{i32 2511, i32 0, metadata !480, metadata !1497}
!1501 = metadata !{i32 786688, metadata !480, metadata !"previntras", metadata !29, i32 2511, metadata !45, i32 0, metadata !1497} ; [ DW_TAG_auto_variable ] [previntras] [line 2511]
!1502 = metadata !{i32 2512, i32 0, metadata !480, metadata !1497}
!1503 = metadata !{i32 786688, metadata !480, metadata !"prevtype", metadata !29, i32 2512, metadata !45, i32 0, metadata !1497} ; [ DW_TAG_auto_variable ] [prevtype] [line 2512]
!1504 = metadata !{i32 786688, metadata !480, metadata !"skip_encode", metadata !29, i32 2513, metadata !45, i32 0, metadata !1497} ; [ DW_TAG_auto_variable ] [skip_encode] [line 2513]
!1505 = metadata !{i32 2513, i32 0, metadata !480, metadata !1497}
!1506 = metadata !{i32 2517, i32 0, metadata !480, metadata !1497}
!1507 = metadata !{i32 2519, i32 0, metadata !1508, metadata !1497}
!1508 = metadata !{i32 786443, metadata !1, metadata !480, i32 2518, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1509 = metadata !{i32 2521, i32 0, metadata !1510, metadata !1497}
!1510 = metadata !{i32 786443, metadata !1, metadata !1508, i32 2520, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1511 = metadata !{i32 2523, i32 0, metadata !1512, metadata !1497}
!1512 = metadata !{i32 786443, metadata !1, metadata !1510, i32 2522, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1513 = metadata !{i32 2543, i32 0, metadata !480, metadata !1497}
!1514 = metadata !{i32 2524, i32 0, metadata !1512, metadata !1497}
!1515 = metadata !{i32 2534, i32 0, metadata !1516, metadata !1497}
!1516 = metadata !{i32 786443, metadata !1, metadata !1508, i32 2533, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1517 = metadata !{i32 2539, i32 0, metadata !1518, metadata !1497}
!1518 = metadata !{i32 786443, metadata !1, metadata !480, i32 2538, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1519 = metadata !{i32 2542, i32 0, metadata !480, metadata !1497}
!1520 = metadata !{i32 2545, i32 0, metadata !480, metadata !1497}
!1521 = metadata !{i32 2547, i32 0, metadata !480, metadata !1497}
!1522 = metadata !{i32 2527, i32 0, metadata !1523, metadata !1497}
!1523 = metadata !{i32 786443, metadata !1, metadata !1510, i32 2526, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1524 = metadata !{i32 2528, i32 0, metadata !1523, metadata !1497}
!1525 = metadata !{i32 2529, i32 0, metadata !1523, metadata !1497}
!1526 = metadata !{i32 2549, i32 0, metadata !1527, metadata !1497}
!1527 = metadata !{i32 786443, metadata !1, metadata !480, i32 2548, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1528 = metadata !{i32 2550, i32 0, metadata !1527, metadata !1497}
!1529 = metadata !{i32 2558, i32 0, metadata !480, metadata !1497}
!1530 = metadata !{i32 2554, i32 0, metadata !1531, metadata !1497}
!1531 = metadata !{i32 786443, metadata !1, metadata !480, i32 2553, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1532 = metadata !{i32 2555, i32 0, metadata !1531, metadata !1497}
!1533 = metadata !{i32 2560, i32 0, metadata !1534, metadata !1497}
!1534 = metadata !{i32 786443, metadata !1, metadata !480, i32 2559, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1535 = metadata !{i32 2561, i32 0, metadata !1534, metadata !1497}
!1536 = metadata !{i32 2563, i32 0, metadata !1537, metadata !1497}
!1537 = metadata !{i32 786443, metadata !1, metadata !1534, i32 2562, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1538 = metadata !{i32 2564, i32 0, metadata !1537, metadata !1497}
!1539 = metadata !{i32 2565, i32 0, metadata !1537, metadata !1497}
!1540 = metadata !{i32 2568, i32 0, metadata !1541, metadata !1497}
!1541 = metadata !{i32 786443, metadata !1, metadata !1534, i32 2567, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1542 = metadata !{i32 2570, i32 0, metadata !1534, metadata !1497}
!1543 = metadata !{i32 2572, i32 0, metadata !1534, metadata !1497}
!1544 = metadata !{i32 2575, i32 0, metadata !1545, metadata !1497}
!1545 = metadata !{i32 786443, metadata !1, metadata !480, i32 2574, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1546 = metadata !{i32 2580, i32 0, metadata !480, metadata !1497}
!1547 = metadata !{i32 2582, i32 0, metadata !1548, metadata !1497}
!1548 = metadata !{i32 786443, metadata !1, metadata !480, i32 2581, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1549 = metadata !{i32 2583, i32 0, metadata !1548, metadata !1497}
!1550 = metadata !{i32 2584, i32 0, metadata !1548, metadata !1497}
!1551 = metadata !{i32 2586, i32 0, metadata !1552, metadata !1497}
!1552 = metadata !{i32 786443, metadata !1, metadata !1548, i32 2585, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1553 = metadata !{i32 2588, i32 0, metadata !1554, metadata !1497}
!1554 = metadata !{i32 786443, metadata !1, metadata !1552, i32 2587, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1555 = metadata !{i32 2589, i32 0, metadata !1554, metadata !1497}
!1556 = metadata !{i32 2592, i32 0, metadata !1557, metadata !1497}
!1557 = metadata !{i32 786443, metadata !1, metadata !1552, i32 2591, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1558 = metadata !{i32 2593, i32 0, metadata !1557, metadata !1497}
!1559 = metadata !{i32 2594, i32 0, metadata !1557, metadata !1497}
!1560 = metadata !{i32 2599, i32 0, metadata !1561, metadata !1497}
!1561 = metadata !{i32 786443, metadata !1, metadata !1548, i32 2598, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1562 = metadata !{i32 2601, i32 0, metadata !1563, metadata !1497}
!1563 = metadata !{i32 786443, metadata !1, metadata !1561, i32 2600, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1564 = metadata !{i32 2602, i32 0, metadata !1563, metadata !1497}
!1565 = metadata !{i32 2605, i32 0, metadata !1566, metadata !1497}
!1566 = metadata !{i32 786443, metadata !1, metadata !1561, i32 2604, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1567 = metadata !{i32 2607, i32 0, metadata !1566, metadata !1497}
!1568 = metadata !{i32 2608, i32 0, metadata !1566, metadata !1497}
!1569 = metadata !{i32 2610, i32 0, metadata !1566, metadata !1497}
!1570 = metadata !{i32 2616, i32 0, metadata !1571, metadata !1497}
!1571 = metadata !{i32 786443, metadata !1, metadata !480, i32 2615, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1572 = metadata !{i32 2617, i32 0, metadata !1571, metadata !1497}
!1573 = metadata !{i32 2620, i32 0, metadata !480, metadata !1497}
!1574 = metadata !{i32 2622, i32 0, metadata !1575, metadata !1497}
!1575 = metadata !{i32 786443, metadata !1, metadata !480, i32 2621, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1576 = metadata !{i32 2623, i32 0, metadata !1575, metadata !1497}
!1577 = metadata !{i32 2624, i32 0, metadata !1575, metadata !1497}
!1578 = metadata !{i32 2626, i32 0, metadata !480, metadata !1497}
!1579 = metadata !{i32 2628, i32 0, metadata !480, metadata !1497}
!1580 = metadata !{i32 2630, i32 0, metadata !1581, metadata !1497}
!1581 = metadata !{i32 786443, metadata !1, metadata !480, i32 2629, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1582 = metadata !{i32 2631, i32 0, metadata !1581, metadata !1497}
!1583 = metadata !{i32 2644, i32 0, metadata !480, metadata !1497}
!1584 = metadata !{i32 2632, i32 0, metadata !1581, metadata !1497}
!1585 = metadata !{i32 2635, i32 0, metadata !1586, metadata !1497}
!1586 = metadata !{i32 786443, metadata !1, metadata !480, i32 2634, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1587 = metadata !{i32 2637, i32 0, metadata !1586, metadata !1497}
!1588 = metadata !{i32 2638, i32 0, metadata !1586, metadata !1497}
!1589 = metadata !{i32 2640, i32 0, metadata !1586, metadata !1497}
!1590 = metadata !{i32 2646, i32 0, metadata !1591, metadata !1497}
!1591 = metadata !{i32 786443, metadata !1, metadata !480, i32 2645, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1592 = metadata !{i32 2647, i32 0, metadata !1591, metadata !1497}
!1593 = metadata !{i32 2648, i32 0, metadata !1591, metadata !1497}
!1594 = metadata !{i32 2649, i32 0, metadata !1591, metadata !1497}
!1595 = metadata !{i32 2650, i32 0, metadata !1591, metadata !1497}
!1596 = metadata !{i32 2651, i32 0, metadata !1591, metadata !1497}
!1597 = metadata !{i32 2654, i32 0, metadata !1598, metadata !1497}
!1598 = metadata !{i32 786443, metadata !1, metadata !480, i32 2653, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1599 = metadata !{i32 2655, i32 0, metadata !1598, metadata !1497}
!1600 = metadata !{i32 2656, i32 0, metadata !1598, metadata !1497}
!1601 = metadata !{i32 2657, i32 0, metadata !1598, metadata !1497}
!1602 = metadata !{i32 2658, i32 0, metadata !1598, metadata !1497}
!1603 = metadata !{i32 2659, i32 0, metadata !1598, metadata !1497}
!1604 = metadata !{i32 417, i32 0, metadata !1477, null}
!1605 = metadata !{i32 418, i32 0, metadata !1477, null}
!1606 = metadata !{i32 420, i32 0, metadata !1477, null}
!1607 = metadata !{i32 423, i32 0, metadata !1608, null}
!1608 = metadata !{i32 786443, metadata !1, metadata !1477, i32 421, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1609 = metadata !{i32 424, i32 0, metadata !1608, null}
!1610 = metadata !{i32 425, i32 0, metadata !1608, null}
!1611 = metadata !{i32 427, i32 0, metadata !1608, null}
!1612 = metadata !{i32 428, i32 0, metadata !1608, null}
!1613 = metadata !{i32 432, i32 0, metadata !1608, null}
!1614 = metadata !{i32 433, i32 0, metadata !1608, null}
!1615 = metadata !{i32 435, i32 0, metadata !1608, null}
!1616 = metadata !{i32 786689, metadata !652, metadata !"frame", metadata !29, i32 16778183, metadata !54, i32 0, metadata !1615} ; [ DW_TAG_arg_variable ] [frame] [line 967]
!1617 = metadata !{i32 967, i32 0, metadata !652, metadata !1615}
!1618 = metadata !{i32 786689, metadata !652, metadata !"top", metadata !29, i32 33555399, metadata !54, i32 0, metadata !1615} ; [ DW_TAG_arg_variable ] [top] [line 967]
!1619 = metadata !{i32 786689, metadata !652, metadata !"bot", metadata !29, i32 50332615, metadata !54, i32 0, metadata !1615} ; [ DW_TAG_arg_variable ] [bot] [line 967]
!1620 = metadata !{i32 970, i32 0, metadata !652, metadata !1615}
!1621 = metadata !{i32 974, i32 0, metadata !652, metadata !1615}
!1622 = metadata !{i32 786688, metadata !652, metadata !"lambda_picture", metadata !29, i32 969, metadata !445, i32 0, metadata !1615} ; [ DW_TAG_auto_variable ] [lambda_picture] [line 969]
!1623 = metadata !{i32 976, i32 0, metadata !652, metadata !1615}
!1624 = metadata !{i32 786688, metadata !652, metadata !"snr_frame", metadata !29, i32 971, metadata !245, i32 0, metadata !1615} ; [ DW_TAG_auto_variable ] [snr_frame] [line 971]
!1625 = metadata !{i32 978, i32 0, metadata !652, metadata !1615}
!1626 = metadata !{i32 786688, metadata !652, metadata !"snr_field", metadata !29, i32 971, metadata !245, i32 0, metadata !1615} ; [ DW_TAG_auto_variable ] [snr_field] [line 971]
!1627 = metadata !{i32 979, i32 0, metadata !652, metadata !1615}
!1628 = metadata !{i32 786688, metadata !652, metadata !"bit_field", metadata !29, i32 972, metadata !45, i32 0, metadata !1615} ; [ DW_TAG_auto_variable ] [bit_field] [line 972]
!1629 = metadata !{i32 980, i32 0, metadata !652, metadata !1615}
!1630 = metadata !{i32 786688, metadata !652, metadata !"bit_frame", metadata !29, i32 972, metadata !45, i32 0, metadata !1615} ; [ DW_TAG_auto_variable ] [bit_frame] [line 972]
!1631 = metadata !{i32 982, i32 0, metadata !652, metadata !1615}
!1632 = metadata !{i32 436, i32 0, metadata !1608, null}
!1633 = metadata !{i32 439, i32 0, metadata !1608, null}
!1634 = metadata !{i32 440, i32 0, metadata !1608, null}
!1635 = metadata !{i32 447, i32 0, metadata !1477, null}
!1636 = metadata !{i32 443, i32 0, metadata !1608, null}
!1637 = metadata !{i32 451, i32 0, metadata !253, null}
!1638 = metadata !{i32 453, i32 0, metadata !253, null}
!1639 = metadata !{i32 455, i32 0, metadata !253, null}
!1640 = metadata !{i32 463, i32 0, metadata !253, null}
!1641 = metadata !{i32 457, i32 0, metadata !1642, null}
!1642 = metadata !{i32 786443, metadata !1, metadata !253, i32 456, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1643 = metadata !{i32 458, i32 0, metadata !1642, null}
!1644 = metadata !{i32 2399, i32 0, metadata !525, metadata !1645}
!1645 = metadata !{i32 1010, i32 0, metadata !638, metadata !1646}
!1646 = metadata !{i32 471, i32 0, metadata !1647, null}
!1647 = metadata !{i32 786443, metadata !1, metadata !253, i32 470, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1648 = metadata !{i32 2400, i32 0, metadata !525, metadata !1645}
!1649 = metadata !{i32 786689, metadata !646, metadata !"bit_field", metadata !29, i32 16778208, metadata !45, i32 0, metadata !1650} ; [ DW_TAG_arg_variable ] [bit_field] [line 992]
!1650 = metadata !{i32 465, i32 0, metadata !1651, null}
!1651 = metadata !{i32 786443, metadata !1, metadata !253, i32 464, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1652 = metadata !{i32 992, i32 0, metadata !646, metadata !1650}
!1653 = metadata !{i32 786689, metadata !646, metadata !"snr_field_y", metadata !29, i32 33555424, metadata !245, i32 0, metadata !1650} ; [ DW_TAG_arg_variable ] [snr_field_y] [line 992]
!1654 = metadata !{i32 786689, metadata !646, metadata !"snr_field_u", metadata !29, i32 50332640, metadata !245, i32 0, metadata !1650} ; [ DW_TAG_arg_variable ] [snr_field_u] [line 992]
!1655 = metadata !{i32 786689, metadata !646, metadata !"snr_field_v", metadata !29, i32 67109856, metadata !245, i32 0, metadata !1650} ; [ DW_TAG_arg_variable ] [snr_field_v] [line 992]
!1656 = metadata !{i32 996, i32 0, metadata !646, metadata !1650}
!1657 = metadata !{i32 997, i32 0, metadata !646, metadata !1650}
!1658 = metadata !{i32 998, i32 0, metadata !646, metadata !1650}
!1659 = metadata !{i32 466, i32 0, metadata !1651, null}
!1660 = metadata !{i32 467, i32 0, metadata !1651, null}
!1661 = metadata !{i32 468, i32 0, metadata !1651, null}
!1662 = metadata !{i32 786689, metadata !638, metadata !"bit_frame", metadata !29, i32 16778224, metadata !45, i32 0, metadata !1646} ; [ DW_TAG_arg_variable ] [bit_frame] [line 1008]
!1663 = metadata !{i32 1008, i32 0, metadata !638, metadata !1646}
!1664 = metadata !{i32 786689, metadata !638, metadata !"snr_frame_y", metadata !29, i32 33555440, metadata !245, i32 0, metadata !1646} ; [ DW_TAG_arg_variable ] [snr_frame_y] [line 1008]
!1665 = metadata !{i32 786689, metadata !638, metadata !"snr_frame_u", metadata !29, i32 50332656, metadata !245, i32 0, metadata !1646} ; [ DW_TAG_arg_variable ] [snr_frame_u] [line 1008]
!1666 = metadata !{i32 786689, metadata !638, metadata !"snr_frame_v", metadata !29, i32 67109872, metadata !245, i32 0, metadata !1646} ; [ DW_TAG_arg_variable ] [snr_frame_v] [line 1008]
!1667 = metadata !{i32 1012, i32 0, metadata !638, metadata !1646}
!1668 = metadata !{i32 1014, i32 0, metadata !1669, metadata !1646}
!1669 = metadata !{i32 786443, metadata !1, metadata !638, i32 1013, i32 0, i32 292} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1670 = metadata !{i32 1015, i32 0, metadata !1669, metadata !1646}
!1671 = metadata !{i32 1016, i32 0, metadata !1669, metadata !1646}
!1672 = metadata !{i32 2411, i32 0, metadata !524, metadata !1673}
!1673 = metadata !{i32 1018, i32 0, metadata !1669, metadata !1646}
!1674 = metadata !{i32 1020, i32 0, metadata !1669, metadata !1646}
!1675 = metadata !{i32 2425, i32 0, metadata !523, metadata !1676}
!1676 = metadata !{i32 1021, i32 0, metadata !1669, metadata !1646}
!1677 = metadata !{i32 1023, i32 0, metadata !1669, metadata !1646}
!1678 = metadata !{i32 1024, i32 0, metadata !1669, metadata !1646}
!1679 = metadata !{i32 1025, i32 0, metadata !1669, metadata !1646}
!1680 = metadata !{i32 1026, i32 0, metadata !1669, metadata !1646}
!1681 = metadata !{i32 1029, i32 0, metadata !1669, metadata !1646}
!1682 = metadata !{i32 1030, i32 0, metadata !1669, metadata !1646}
!1683 = metadata !{i32 1031, i32 0, metadata !1669, metadata !1646}
!1684 = metadata !{i32 2399, i32 0, metadata !525, metadata !1685}
!1685 = metadata !{i32 1032, i32 0, metadata !1669, metadata !1646}
!1686 = metadata !{i32 2400, i32 0, metadata !525, metadata !1685}
!1687 = metadata !{i32 1034, i32 0, metadata !1669, metadata !1646}
!1688 = metadata !{i32 473, i32 0, metadata !1647, null}
!1689 = metadata !{i32 474, i32 0, metadata !1647, null}
!1690 = metadata !{i32 475, i32 0, metadata !1647, null}
!1691 = metadata !{i32 476, i32 0, metadata !1647, null}
!1692 = metadata !{i32 478, i32 0, metadata !1647, null}
!1693 = metadata !{i32 481, i32 0, metadata !253, null}
!1694 = metadata !{i32 482, i32 0, metadata !253, null}
!1695 = metadata !{i32 483, i32 0, metadata !253, null}
!1696 = metadata !{i32 484, i32 0, metadata !253, null}
!1697 = metadata !{i32 485, i32 0, metadata !253, null}
!1698 = metadata !{i32 486, i32 0, metadata !253, null}
!1699 = metadata !{i32 487, i32 0, metadata !253, null}
!1700 = metadata !{i32 488, i32 0, metadata !253, null}
!1701 = metadata !{i32 489, i32 0, metadata !253, null}
!1702 = metadata !{i32 490, i32 0, metadata !253, null}
!1703 = metadata !{i32 502, i32 0, metadata !253, null}
!1704 = metadata !{i32 504, i32 0, metadata !1705, null}
!1705 = metadata !{i32 786443, metadata !1, metadata !253, i32 503, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1706 = metadata !{i32 505, i32 0, metadata !1705, null}
!1707 = metadata !{i32 1560, i32 0, metadata !606, metadata !1708}
!1708 = metadata !{i32 520, i32 0, metadata !253, null}
!1709 = metadata !{i32 506, i32 0, metadata !1705, null}
!1710 = metadata !{i64 0}
!1711 = metadata !{i32 786688, metadata !606, metadata !"diff_y", metadata !29, i32 1551, metadata !317, i32 0, metadata !1708} ; [ DW_TAG_auto_variable ] [diff_y] [line 1551]
!1712 = metadata !{i32 1551, i32 0, metadata !606, metadata !1708}
!1713 = metadata !{i32 786688, metadata !606, metadata !"diff_u", metadata !29, i32 1551, metadata !317, i32 0, metadata !1708} ; [ DW_TAG_auto_variable ] [diff_u] [line 1551]
!1714 = metadata !{i32 786688, metadata !606, metadata !"diff_v", metadata !29, i32 1551, metadata !317, i32 0, metadata !1708} ; [ DW_TAG_auto_variable ] [diff_v] [line 1551]
!1715 = metadata !{i32 1554, i32 0, metadata !606, metadata !1708}
!1716 = metadata !{i32 786688, metadata !606, metadata !"max_pix_value_sqd", metadata !29, i32 1554, metadata !102, i32 0, metadata !1708} ; [ DW_TAG_auto_variable ] [max_pix_value_sqd] [line 1554]
!1717 = metadata !{i32 1555, i32 0, metadata !606, metadata !1708}
!1718 = metadata !{i32 786688, metadata !606, metadata !"max_pix_value_sqd_uv", metadata !29, i32 1555, metadata !102, i32 0, metadata !1708} ; [ DW_TAG_auto_variable ] [max_pix_value_sqd_uv] [line 1555]
!1719 = metadata !{i32 786688, metadata !606, metadata !"impix", metadata !29, i32 1552, metadata !45, i32 0, metadata !1708} ; [ DW_TAG_auto_variable ] [impix] [line 1552]
!1720 = metadata !{i32 1561, i32 0, metadata !606, metadata !1708}
!1721 = metadata !{i32 786688, metadata !606, metadata !"impix_cr", metadata !29, i32 1553, metadata !45, i32 0, metadata !1708} ; [ DW_TAG_auto_variable ] [impix_cr] [line 1553]
!1722 = metadata !{i32 1563, i32 0, metadata !606, metadata !1708}
!1723 = metadata !{i32 1567, i32 0, metadata !1724, metadata !1708}
!1724 = metadata !{i32 786443, metadata !1, metadata !1725, i32 1567, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1725 = metadata !{i32 786443, metadata !1, metadata !606, i32 1564, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1726 = metadata !{i32 1569, i32 0, metadata !1727, metadata !1708}
!1727 = metadata !{i32 786443, metadata !1, metadata !1728, i32 1569, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1728 = metadata !{i32 786443, metadata !1, metadata !1724, i32 1568, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1729 = metadata !{i32 1571, i32 0, metadata !1730, metadata !1708}
!1730 = metadata !{i32 786443, metadata !1, metadata !1727, i32 1570, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1731 = metadata !{i32 1575, i32 0, metadata !1725, metadata !1708}
!1732 = metadata !{i32 1581, i32 0, metadata !1733, metadata !1708}
!1733 = metadata !{i32 786443, metadata !1, metadata !1734, i32 1581, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1734 = metadata !{i32 786443, metadata !1, metadata !1725, i32 1576, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1735 = metadata !{i32 1583, i32 0, metadata !1736, metadata !1708}
!1736 = metadata !{i32 786443, metadata !1, metadata !1737, i32 1583, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1737 = metadata !{i32 786443, metadata !1, metadata !1733, i32 1582, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1738 = metadata !{i32 1585, i32 0, metadata !1739, metadata !1708}
!1739 = metadata !{i32 786443, metadata !1, metadata !1736, i32 1584, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1740 = metadata !{i32 1586, i32 0, metadata !1739, metadata !1708}
!1741 = metadata !{i32 1593, i32 0, metadata !1742, metadata !1708}
!1742 = metadata !{i32 786443, metadata !1, metadata !606, i32 1592, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1743 = metadata !{i32 1594, i32 0, metadata !1742, metadata !1708}
!1744 = metadata !{i32 1596, i32 0, metadata !1742, metadata !1708}
!1745 = metadata !{i32 1598, i32 0, metadata !1746, metadata !1708}
!1746 = metadata !{i32 786443, metadata !1, metadata !1742, i32 1597, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1747 = metadata !{i32 1599, i32 0, metadata !1746, metadata !1708}
!1748 = metadata !{i32 1602, i32 0, metadata !1749, metadata !1708}
!1749 = metadata !{i32 786443, metadata !1, metadata !1742, i32 1602, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1750 = metadata !{i32 1604, i32 0, metadata !1751, metadata !1708}
!1751 = metadata !{i32 786443, metadata !1, metadata !1752, i32 1604, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1752 = metadata !{i32 786443, metadata !1, metadata !1749, i32 1603, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1753 = metadata !{i32 1606, i32 0, metadata !1754, metadata !1708}
!1754 = metadata !{i32 786443, metadata !1, metadata !1751, i32 1605, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1755 = metadata !{i32 1610, i32 0, metadata !1742, metadata !1708}
!1756 = metadata !{i32 1616, i32 0, metadata !1757, metadata !1708}
!1757 = metadata !{i32 786443, metadata !1, metadata !1758, i32 1616, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1758 = metadata !{i32 786443, metadata !1, metadata !1742, i32 1611, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1759 = metadata !{i32 1618, i32 0, metadata !1760, metadata !1708}
!1760 = metadata !{i32 786443, metadata !1, metadata !1761, i32 1618, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1761 = metadata !{i32 786443, metadata !1, metadata !1757, i32 1617, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1762 = metadata !{i32 1620, i32 0, metadata !1763, metadata !1708}
!1763 = metadata !{i32 786443, metadata !1, metadata !1760, i32 1619, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1764 = metadata !{i32 1621, i32 0, metadata !1763, metadata !1708}
!1765 = metadata !{i32 1628, i32 0, metadata !606, metadata !1708}
!1766 = metadata !{i64 1}
!1767 = metadata !{i32 1629, i32 0, metadata !606, metadata !1708}
!1768 = metadata !{i32 1631, i32 0, metadata !606, metadata !1708}
!1769 = metadata !{i32 1633, i32 0, metadata !606, metadata !1708}
!1770 = metadata !{i32 1639, i32 0, metadata !1771, metadata !1708}
!1771 = metadata !{i32 786443, metadata !1, metadata !606, i32 1638, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1772 = metadata !{i32 1640, i32 0, metadata !1771, metadata !1708}
!1773 = metadata !{i32 1632, i32 0, metadata !606, metadata !1708}
!1774 = metadata !{i32 1630, i32 0, metadata !606, metadata !1708}
!1775 = metadata !{i32 1642, i32 0, metadata !1776, metadata !1708}
!1776 = metadata !{i32 786443, metadata !1, metadata !1771, i32 1641, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1777 = metadata !{i32 1643, i32 0, metadata !1776, metadata !1708}
!1778 = metadata !{i32 1653, i32 0, metadata !606, metadata !1708}
!1779 = metadata !{i32 1644, i32 0, metadata !1776, metadata !1708}
!1780 = metadata !{i32 1647, i32 0, metadata !1781, metadata !1708}
!1781 = metadata !{i32 786443, metadata !1, metadata !1771, i32 1646, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1782 = metadata !{i32 1648, i32 0, metadata !1781, metadata !1708}
!1783 = metadata !{i32 1655, i32 0, metadata !1784, metadata !1708}
!1784 = metadata !{i32 786443, metadata !1, metadata !606, i32 1654, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1785 = metadata !{i32 1656, i32 0, metadata !1784, metadata !1708}
!1786 = metadata !{i32 1657, i32 0, metadata !1784, metadata !1708}
!1787 = metadata !{i32 1658, i32 0, metadata !1784, metadata !1708}
!1788 = metadata !{i32 1659, i32 0, metadata !1784, metadata !1708}
!1789 = metadata !{i32 1660, i32 0, metadata !1784, metadata !1708}
!1790 = metadata !{i32 1664, i32 0, metadata !1784, metadata !1708}
!1791 = metadata !{i32 1670, i32 0, metadata !1784, metadata !1708}
!1792 = metadata !{i32 1674, i32 0, metadata !1793, metadata !1708}
!1793 = metadata !{i32 786443, metadata !1, metadata !606, i32 1673, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1794 = metadata !{i32 1675, i32 0, metadata !1793, metadata !1708}
!1795 = metadata !{i32 1676, i32 0, metadata !1793, metadata !1708}
!1796 = metadata !{i32 1679, i32 0, metadata !606, metadata !1708}
!1797 = metadata !{i32 1681, i32 0, metadata !1798, metadata !1708}
!1798 = metadata !{i32 786443, metadata !1, metadata !606, i32 1680, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1799 = metadata !{i32 1682, i32 0, metadata !1798, metadata !1708}
!1800 = metadata !{i32 1683, i32 0, metadata !1798, metadata !1708}
!1801 = metadata !{i32 1684, i32 0, metadata !1798, metadata !1708}
!1802 = metadata !{i32 1687, i32 0, metadata !1803, metadata !1708}
!1803 = metadata !{i32 786443, metadata !1, metadata !606, i32 1686, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1804 = metadata !{i32 1688, i32 0, metadata !1803, metadata !1708}
!1805 = metadata !{i32 1689, i32 0, metadata !1803, metadata !1708}
!1806 = metadata !{i32 1690, i32 0, metadata !1803, metadata !1708}
!1807 = metadata !{i32 1693, i32 0, metadata !1808, metadata !1708}
!1808 = metadata !{i32 786443, metadata !1, metadata !606, i32 1692, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1809 = metadata !{i32 1694, i32 0, metadata !1808, metadata !1708}
!1810 = metadata !{i32 1695, i32 0, metadata !1808, metadata !1708}
!1811 = metadata !{i32 529, i32 0, metadata !253, null}
!1812 = metadata !{i32 533, i32 0, metadata !253, null}
!1813 = metadata !{i32 537, i32 0, metadata !253, null}
!1814 = metadata !{metadata !"long", metadata !1127}
!1815 = metadata !{i32 538, i32 0, metadata !253, null}
!1816 = metadata !{i32 540, i32 0, metadata !253, null}
!1817 = metadata !{i32 542, i32 0, metadata !1818, null}
!1818 = metadata !{i32 786443, metadata !1, metadata !253, i32 541, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1819 = metadata !{i32 545, i32 0, metadata !1820, null}
!1820 = metadata !{i32 786443, metadata !1, metadata !1818, i32 543, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1821 = metadata !{i32 546, i32 0, metadata !1820, null}
!1822 = metadata !{i32 547, i32 0, metadata !1820, null}
!1823 = metadata !{i32 551, i32 0, metadata !1824, null}
!1824 = metadata !{i32 786443, metadata !1, metadata !1818, i32 549, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1825 = metadata !{i32 552, i32 0, metadata !1824, null}
!1826 = metadata !{i32 557, i32 0, metadata !1827, null}
!1827 = metadata !{i32 786443, metadata !1, metadata !253, i32 556, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1828 = metadata !{i32 559, i32 0, metadata !1829, null}
!1829 = metadata !{i32 786443, metadata !1, metadata !1827, i32 558, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1830 = metadata !{i32 560, i32 0, metadata !1829, null}
!1831 = metadata !{i32 563, i32 0, metadata !1832, null}
!1832 = metadata !{i32 786443, metadata !1, metadata !1827, i32 562, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1833 = metadata !{i32 565, i32 0, metadata !1834, null}
!1834 = metadata !{i32 786443, metadata !1, metadata !1832, i32 564, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1835 = metadata !{i32 566, i32 0, metadata !1834, null}
!1836 = metadata !{i32 567, i32 0, metadata !1834, null}
!1837 = metadata !{i32 568, i32 0, metadata !1834, null}
!1838 = metadata !{i32 571, i32 0, metadata !1839, null}
!1839 = metadata !{i32 786443, metadata !1, metadata !1832, i32 570, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1840 = metadata !{i32 572, i32 0, metadata !1839, null}
!1841 = metadata !{i32 573, i32 0, metadata !1839, null}
!1842 = metadata !{i32 574, i32 0, metadata !1839, null}
!1843 = metadata !{i32 577, i32 0, metadata !1844, null}
!1844 = metadata !{i32 786443, metadata !1, metadata !1832, i32 576, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1845 = metadata !{i32 578, i32 0, metadata !1844, null}
!1846 = metadata !{i32 579, i32 0, metadata !1844, null}
!1847 = metadata !{i32 587, i32 0, metadata !253, null}
!1848 = metadata !{i32 588, i32 0, metadata !253, null}
!1849 = metadata !{i32 593, i32 0, metadata !253, null}
!1850 = metadata !{i32 595, i32 0, metadata !1851, null}
!1851 = metadata !{i32 786443, metadata !1, metadata !253, i32 594, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1852 = metadata !{i32 596, i32 0, metadata !1851, null}
!1853 = metadata !{i32 598, i32 0, metadata !1851, null}
!1854 = metadata !{i32 599, i32 0, metadata !1851, null}
!1855 = metadata !{i32 600, i32 0, metadata !1851, null}
!1856 = metadata !{i32 603, i32 0, metadata !253, null}
!1857 = metadata !{i32 601, i32 0, metadata !1851, null}
!1858 = metadata !{i32 786689, metadata !588, metadata !"tmp_time", metadata !29, i32 16779228, metadata !45, i32 0, metadata !1859} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2012]
!1859 = metadata !{i32 604, i32 0, metadata !253, null}
!1860 = metadata !{i32 2012, i32 0, metadata !588, metadata !1859}
!1861 = metadata !{i32 786689, metadata !588, metadata !"me_time", metadata !29, i32 33556444, metadata !45, i32 0, metadata !1859} ; [ DW_TAG_arg_variable ] [me_time] [line 2012]
!1862 = metadata !{i32 2015, i32 0, metadata !588, metadata !1859}
!1863 = metadata !{i32 606, i32 0, metadata !253, null}
!1864 = metadata !{i32 607, i32 0, metadata !253, null}
!1865 = metadata !{i32 786689, metadata !583, metadata !"tmp_time", metadata !29, i32 16779234, metadata !45, i32 0, metadata !1864} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2018]
!1866 = metadata !{i32 2018, i32 0, metadata !583, metadata !1864}
!1867 = metadata !{i32 786689, metadata !583, metadata !"me_time", metadata !29, i32 33556450, metadata !45, i32 0, metadata !1864} ; [ DW_TAG_arg_variable ] [me_time] [line 2018]
!1868 = metadata !{i32 2022, i32 0, metadata !583, metadata !1864}
!1869 = metadata !{i32 2028, i32 0, metadata !583, metadata !1864}
!1870 = metadata !{i32 2030, i32 0, metadata !1871, metadata !1864}
!1871 = metadata !{i32 786443, metadata !1, metadata !583, i32 2029, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1872 = metadata !{i32 2034, i32 0, metadata !1873, metadata !1864}
!1873 = metadata !{i32 786443, metadata !1, metadata !1871, i32 2033, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1874 = metadata !{i32 2035, i32 0, metadata !1873, metadata !1864}
!1875 = metadata !{i32 2039, i32 0, metadata !583, metadata !1864}
!1876 = metadata !{i32 2040, i32 0, metadata !583, metadata !1864}
!1877 = metadata !{i32 612, i32 0, metadata !1878, null}
!1878 = metadata !{i32 786443, metadata !1, metadata !253, i32 610, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1879 = metadata !{i32 614, i32 0, metadata !1880, null}
!1880 = metadata !{i32 786443, metadata !1, metadata !1878, i32 613, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1881 = metadata !{i32 615, i32 0, metadata !1880, null}
!1882 = metadata !{i32 618, i32 0, metadata !1883, null}
!1883 = metadata !{i32 786443, metadata !1, metadata !1880, i32 617, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1884 = metadata !{i32 619, i32 0, metadata !1883, null}
!1885 = metadata !{i32 623, i32 0, metadata !1878, null}
!1886 = metadata !{i32 626, i32 0, metadata !1887, null}
!1887 = metadata !{i32 786443, metadata !1, metadata !1878, i32 624, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1888 = metadata !{i32 627, i32 0, metadata !1887, null}
!1889 = metadata !{i32 786689, metadata !579, metadata !"tmp_time", metadata !29, i32 16779260, metadata !45, i32 0, metadata !1888} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2044]
!1890 = metadata !{i32 2044, i32 0, metadata !579, metadata !1888}
!1891 = metadata !{i32 786689, metadata !579, metadata !"me_time", metadata !29, i32 33556476, metadata !45, i32 0, metadata !1888} ; [ DW_TAG_arg_variable ] [me_time] [line 2044]
!1892 = metadata !{i32 2047, i32 0, metadata !579, metadata !1888}
!1893 = metadata !{i32 2048, i32 0, metadata !579, metadata !1888}
!1894 = metadata !{i32 2053, i32 0, metadata !579, metadata !1888}
!1895 = metadata !{i32 630, i32 0, metadata !1887, null}
!1896 = metadata !{i32 631, i32 0, metadata !1887, null}
!1897 = metadata !{i32 786689, metadata !575, metadata !"tmp_time", metadata !29, i32 16779276, metadata !45, i32 0, metadata !1896} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2060]
!1898 = metadata !{i32 2060, i32 0, metadata !575, metadata !1896}
!1899 = metadata !{i32 786689, metadata !575, metadata !"me_time", metadata !29, i32 33556492, metadata !45, i32 0, metadata !1896} ; [ DW_TAG_arg_variable ] [me_time] [line 2060]
!1900 = metadata !{i32 2062, i32 0, metadata !575, metadata !1896}
!1901 = metadata !{i32 632, i32 0, metadata !1887, null}
!1902 = metadata !{i32 634, i32 0, metadata !1887, null}
!1903 = metadata !{i32 635, i32 0, metadata !1887, null}
!1904 = metadata !{i32 636, i32 0, metadata !1887, null}
!1905 = metadata !{i32 2070, i32 0, metadata !571, metadata !1904}
!1906 = metadata !{i32 786689, metadata !571, metadata !"tmp_time", metadata !29, i32 16779284, metadata !45, i32 0, metadata !1904} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2068]
!1907 = metadata !{i32 2068, i32 0, metadata !571, metadata !1904}
!1908 = metadata !{i32 786689, metadata !571, metadata !"me_time", metadata !29, i32 33556500, metadata !45, i32 0, metadata !1904} ; [ DW_TAG_arg_variable ] [me_time] [line 2068]
!1909 = metadata !{i32 786689, metadata !567, metadata !"tmp_time", metadata !29, i32 16779292, metadata !45, i32 0, metadata !1910} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2076]
!1910 = metadata !{i32 638, i32 0, metadata !1887, null}
!1911 = metadata !{i32 2076, i32 0, metadata !567, metadata !1910}
!1912 = metadata !{i32 786689, metadata !567, metadata !"me_time", metadata !29, i32 33556508, metadata !45, i32 0, metadata !1910} ; [ DW_TAG_arg_variable ] [me_time] [line 2076]
!1913 = metadata !{i32 2078, i32 0, metadata !567, metadata !1910}
!1914 = metadata !{i32 642, i32 0, metadata !1887, null}
!1915 = metadata !{i32 643, i32 0, metadata !1887, null}
!1916 = metadata !{i32 786689, metadata !561, metadata !"tmp_time", metadata !29, i32 16779301, metadata !45, i32 0, metadata !1915} ; [ DW_TAG_arg_variable ] [tmp_time] [line 2085]
!1917 = metadata !{i32 2085, i32 0, metadata !561, metadata !1915}
!1918 = metadata !{i32 786689, metadata !561, metadata !"me_time", metadata !29, i32 33556517, metadata !45, i32 0, metadata !1915} ; [ DW_TAG_arg_variable ] [me_time] [line 2085]
!1919 = metadata !{i32 2087, i32 0, metadata !561, metadata !1915}
!1920 = metadata !{i32 644, i32 0, metadata !1887, null}
!1921 = metadata !{i32 647, i32 0, metadata !253, null}
!1922 = metadata !{i32 650, i32 0, metadata !253, null}
!1923 = metadata !{i32 652, i32 0, metadata !1924, null}
!1924 = metadata !{i32 786443, metadata !1, metadata !253, i32 651, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1925 = metadata !{i32 654, i32 0, metadata !1924, null}
!1926 = metadata !{i32 655, i32 0, metadata !1924, null}
!1927 = metadata !{i32 656, i32 0, metadata !1924, null}
!1928 = metadata !{i32 658, i32 0, metadata !1924, null}
!1929 = metadata !{i32 661, i32 0, metadata !253, null}
!1930 = metadata !{i32 663, i32 0, metadata !253, null}
!1931 = metadata !{i32 664, i32 0, metadata !253, null}
!1932 = metadata !{i32 666, i32 0, metadata !253, null}
!1933 = metadata !{i32 818, i32 0, metadata !293, null}
!1934 = metadata !{i32 827, i32 0, metadata !293, null}
!1935 = metadata !{i32 828, i32 0, metadata !293, null}
!1936 = metadata !{i32 829, i32 0, metadata !293, null}
!1937 = metadata !{i32 830, i32 0, metadata !293, null}
!1938 = metadata !{i32 831, i32 0, metadata !293, null}
!1939 = metadata !{i32 832, i32 0, metadata !293, null}
!1940 = metadata !{i32 833, i32 0, metadata !293, null}
!1941 = metadata !{i32 834, i32 0, metadata !293, null}
!1942 = metadata !{i32 838, i32 0, metadata !293, null}
!1943 = metadata !{i32 839, i32 0, metadata !293, null}
!1944 = metadata !{i32 840, i32 0, metadata !293, null}
!1945 = metadata !{i32 841, i32 0, metadata !293, null}
!1946 = metadata !{i32 842, i32 0, metadata !293, null}
!1947 = metadata !{i32 843, i32 0, metadata !293, null}
!1948 = metadata !{i32 844, i32 0, metadata !293, null}
!1949 = metadata !{i32 845, i32 0, metadata !293, null}
!1950 = metadata !{i32 847, i32 0, metadata !293, null}
!1951 = metadata !{i32 848, i32 0, metadata !293, null}
!1952 = metadata !{i32 849, i32 0, metadata !293, null}
!1953 = metadata !{i32 2411, i32 0, metadata !524, metadata !1954}
!1954 = metadata !{i32 851, i32 0, metadata !293, null}
!1955 = metadata !{i32 2413, i32 0, metadata !524, metadata !1954}
!1956 = metadata !{i32 2414, i32 0, metadata !524, metadata !1954}
!1957 = metadata !{i32 852, i32 0, metadata !293, null}
!1958 = metadata !{i32 853, i32 0, metadata !293, null}
!1959 = metadata !{i32 854, i32 0, metadata !293, null}
!1960 = metadata !{i32 857, i32 0, metadata !293, null}
!1961 = metadata !{i32 861, i32 0, metadata !293, null}
!1962 = metadata !{i32 863, i32 0, metadata !1963, null}
!1963 = metadata !{i32 786443, metadata !1, metadata !293, i32 862, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!1964 = metadata !{i32 865, i32 0, metadata !1963, null}
!1965 = metadata !{i32 866, i32 0, metadata !1963, null}
!1966 = metadata !{i32 868, i32 0, metadata !1963, null}
!1967 = metadata !{i32 870, i32 0, metadata !1963, null}
!1968 = metadata !{i32 871, i32 0, metadata !1963, null}
!1969 = metadata !{i32 872, i32 0, metadata !293, null}
!1970 = metadata !{i32 874, i32 0, metadata !293, null}
!1971 = metadata !{i32 875, i32 0, metadata !293, null}
!1972 = metadata !{i32 877, i32 0, metadata !293, null}
!1973 = metadata !{i32 879, i32 0, metadata !293, null}
!1974 = metadata !{i32 882, i32 0, metadata !293, null}
!1975 = metadata !{i32 886, i32 0, metadata !293, null}
!1976 = metadata !{i32 887, i32 0, metadata !293, null}
!1977 = metadata !{i32 888, i32 0, metadata !293, null}
!1978 = metadata !{i32 889, i32 0, metadata !293, null}
!1979 = metadata !{i32 890, i32 0, metadata !293, null}
!1980 = metadata !{i32 891, i32 0, metadata !293, null}
!1981 = metadata !{i32 892, i32 0, metadata !293, null}
!1982 = metadata !{i32 893, i32 0, metadata !293, null}
!1983 = metadata !{i32 894, i32 0, metadata !293, null}
!1984 = metadata !{i32 895, i32 0, metadata !293, null}
!1985 = metadata !{i32 896, i32 0, metadata !293, null}
!1986 = metadata !{i32 2425, i32 0, metadata !523, metadata !1987}
!1987 = metadata !{i32 897, i32 0, metadata !293, null}
!1988 = metadata !{i32 2427, i32 0, metadata !523, metadata !1987}
!1989 = metadata !{i32 2428, i32 0, metadata !523, metadata !1987}
!1990 = metadata !{i32 898, i32 0, metadata !293, null}
!1991 = metadata !{i32 900, i32 0, metadata !293, null}
!1992 = metadata !{i32 902, i32 0, metadata !293, null}
!1993 = metadata !{i32 903, i32 0, metadata !293, null}
!1994 = metadata !{i32 905, i32 0, metadata !293, null}
!1995 = metadata !{i32 906, i32 0, metadata !293, null}
!1996 = metadata !{i32 908, i32 0, metadata !293, null}
!1997 = metadata !{i32 912, i32 0, metadata !293, null}
!1998 = metadata !{i32 913, i32 0, metadata !293, null}
!1999 = metadata !{i32 918, i32 0, metadata !293, null}
!2000 = metadata !{i32 915, i32 0, metadata !2001, null}
!2001 = metadata !{i32 786443, metadata !1, metadata !293, i32 914, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2002 = metadata !{i32 916, i32 0, metadata !2001, null}
!2003 = metadata !{i32 917, i32 0, metadata !2001, null}
!2004 = metadata !{i32 920, i32 0, metadata !293, null}
!2005 = metadata !{i32 921, i32 0, metadata !293, null}
!2006 = metadata !{i32 923, i32 0, metadata !293, null}
!2007 = metadata !{i32 927, i32 0, metadata !293, null}
!2008 = metadata !{i32 786689, metadata !665, metadata !"dis_fld_y", metadata !29, i32 16778154, metadata !668, i32 0, metadata !2007} ; [ DW_TAG_arg_variable ] [dis_fld_y] [line 938]
!2009 = metadata !{i32 938, i32 0, metadata !665, metadata !2007}
!2010 = metadata !{i32 786689, metadata !665, metadata !"dis_fld_u", metadata !29, i32 33555370, metadata !668, i32 0, metadata !2007} ; [ DW_TAG_arg_variable ] [dis_fld_u] [line 938]
!2011 = metadata !{i32 786689, metadata !665, metadata !"dis_fld_v", metadata !29, i32 50332586, metadata !668, i32 0, metadata !2007} ; [ DW_TAG_arg_variable ] [dis_fld_v] [line 938]
!2012 = metadata !{i32 941, i32 0, metadata !665, metadata !2007}
!2013 = metadata !{i32 942, i32 0, metadata !665, metadata !2007}
!2014 = metadata !{i32 943, i32 0, metadata !665, metadata !2007}
!2015 = metadata !{i32 944, i32 0, metadata !665, metadata !2007}
!2016 = metadata !{i32 945, i32 0, metadata !665, metadata !2007}
!2017 = metadata !{i32 948, i32 0, metadata !665, metadata !2007}
!2018 = metadata !{i32 950, i32 0, metadata !665, metadata !2007}
!2019 = metadata !{i32 951, i32 0, metadata !665, metadata !2007}
!2020 = metadata !{i32 953, i32 0, metadata !665, metadata !2007}
!2021 = metadata !{i32 955, i32 0, metadata !665, metadata !2007}
!2022 = metadata !{i32 956, i32 0, metadata !665, metadata !2007}
!2023 = metadata !{i32 957, i32 0, metadata !665, metadata !2007}
!2024 = metadata !{i32 929, i32 0, metadata !293, null}
!2025 = metadata !{i32 732, i32 0, metadata !287, null}
!2026 = metadata !{i32 735, i32 0, metadata !287, null}
!2027 = metadata !{i32 736, i32 0, metadata !287, null}
!2028 = metadata !{i32 738, i32 0, metadata !287, null}
!2029 = metadata !{i32 740, i32 0, metadata !2030, null}
!2030 = metadata !{i32 786443, metadata !1, metadata !287, i32 739, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2031 = metadata !{i32 741, i32 0, metadata !2030, null}
!2032 = metadata !{i32 742, i32 0, metadata !2030, null}
!2033 = metadata !{i32 743, i32 0, metadata !2030, null}
!2034 = metadata !{i32 745, i32 0, metadata !2030, null}
!2035 = metadata !{i32 747, i32 0, metadata !2030, null}
!2036 = metadata !{i32 748, i32 0, metadata !2030, null}
!2037 = metadata !{i32 749, i32 0, metadata !2030, null}
!2038 = metadata !{i32 751, i32 0, metadata !2030, null}
!2039 = metadata !{i32 753, i32 0, metadata !2030, null}
!2040 = metadata !{i32 754, i32 0, metadata !2030, null}
!2041 = metadata !{i32 755, i32 0, metadata !2030, null}
!2042 = metadata !{i32 756, i32 0, metadata !287, null}
!2043 = metadata !{i32 758, i32 0, metadata !2044, null}
!2044 = metadata !{i32 786443, metadata !1, metadata !287, i32 757, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2045 = metadata !{i32 759, i32 0, metadata !2044, null}
!2046 = metadata !{i32 760, i32 0, metadata !2044, null}
!2047 = metadata !{i32 761, i32 0, metadata !2044, null}
!2048 = metadata !{i32 763, i32 0, metadata !2044, null}
!2049 = metadata !{i32 765, i32 0, metadata !2044, null}
!2050 = metadata !{i32 766, i32 0, metadata !2044, null}
!2051 = metadata !{i32 767, i32 0, metadata !2044, null}
!2052 = metadata !{i32 769, i32 0, metadata !2044, null}
!2053 = metadata !{i32 771, i32 0, metadata !2044, null}
!2054 = metadata !{i32 772, i32 0, metadata !2044, null}
!2055 = metadata !{i32 773, i32 0, metadata !2044, null}
!2056 = metadata !{i32 776, i32 0, metadata !2057, null}
!2057 = metadata !{i32 786443, metadata !1, metadata !287, i32 775, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2058 = metadata !{i32 777, i32 0, metadata !2057, null}
!2059 = metadata !{i32 778, i32 0, metadata !2057, null}
!2060 = metadata !{i32 779, i32 0, metadata !2057, null}
!2061 = metadata !{i32 781, i32 0, metadata !2057, null}
!2062 = metadata !{i32 783, i32 0, metadata !2057, null}
!2063 = metadata !{i32 784, i32 0, metadata !2057, null}
!2064 = metadata !{i32 785, i32 0, metadata !2057, null}
!2065 = metadata !{i32 787, i32 0, metadata !2057, null}
!2066 = metadata !{i32 789, i32 0, metadata !2057, null}
!2067 = metadata !{i32 790, i32 0, metadata !2057, null}
!2068 = metadata !{i32 794, i32 0, metadata !287, null}
!2069 = metadata !{i32 795, i32 0, metadata !287, null}
!2070 = metadata !{i32 797, i32 0, metadata !287, null}
!2071 = metadata !{i32 798, i32 0, metadata !287, null}
!2072 = metadata !{i32 800, i32 0, metadata !287, null}
!2073 = metadata !{i32 802, i32 0, metadata !287, null}
!2074 = metadata !{i32 804, i32 0, metadata !2075, null}
!2075 = metadata !{i32 786443, metadata !1, metadata !287, i32 803, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2076 = metadata !{i32 805, i32 0, metadata !2075, null}
!2077 = metadata !{i32 806, i32 0, metadata !2075, null}
!2078 = metadata !{i32 807, i32 0, metadata !2075, null}
!2079 = metadata !{i32 808, i32 0, metadata !2075, null}
!2080 = metadata !{i32 809, i32 0, metadata !287, null}
!2081 = metadata !{i32 686, i32 0, metadata !673, null}
!2082 = metadata !{i32 688, i32 0, metadata !2083, null}
!2083 = metadata !{i32 786443, metadata !1, metadata !673, i32 688, i32 0, i32 293} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2084 = metadata !{i32 690, i32 0, metadata !2085, null}
!2085 = metadata !{i32 786443, metadata !1, metadata !2083, i32 689, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2086 = metadata !{i32 691, i32 0, metadata !2087, null}
!2087 = metadata !{i32 786443, metadata !1, metadata !2085, i32 691, i32 0, i32 295} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2088 = metadata !{i32 693, i32 0, metadata !2089, null}
!2089 = metadata !{i32 786443, metadata !1, metadata !2087, i32 692, i32 0, i32 296} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2090 = metadata !{i32 694, i32 0, metadata !2089, null}
!2091 = metadata !{i32 786689, metadata !682, metadata !"currStream", metadata !29, i32 16779654, metadata !78, i32 0, metadata !2092} ; [ DW_TAG_arg_variable ] [currStream] [line 2438]
!2092 = metadata !{i32 696, i32 0, metadata !2089, null}
!2093 = metadata !{i32 2438, i32 0, metadata !682, metadata !2092}
!2094 = metadata !{i32 undef}
!2095 = metadata !{i32 786689, metadata !682, metadata !"partition", metadata !29, i32 33556870, metadata !45, i32 0, metadata !2092} ; [ DW_TAG_arg_variable ] [partition] [line 2438]
!2096 = metadata !{i32 2442, i32 0, metadata !682, metadata !2092}
!2097 = metadata !{i32 786688, metadata !682, metadata !"nalu", metadata !29, i32 2440, metadata !689, i32 0, metadata !2092} ; [ DW_TAG_auto_variable ] [nalu] [line 2440]
!2098 = metadata !{i32 2443, i32 0, metadata !682, metadata !2092}
!2099 = metadata !{i32 2445, i32 0, metadata !682, metadata !2092}
!2100 = metadata !{i32 2447, i32 0, metadata !682, metadata !2092}
!2101 = metadata !{i32 2448, i32 0, metadata !682, metadata !2092}
!2102 = metadata !{i32 2450, i32 0, metadata !2103, metadata !2092}
!2103 = metadata !{i32 786443, metadata !1, metadata !682, i32 2449, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2104 = metadata !{i32 2451, i32 0, metadata !2103, metadata !2092}
!2105 = metadata !{i32 2452, i32 0, metadata !2103, metadata !2092}
!2106 = metadata !{i32 2453, i32 0, metadata !682, metadata !2092}
!2107 = metadata !{i32 2456, i32 0, metadata !2108, metadata !2092}
!2108 = metadata !{i32 786443, metadata !1, metadata !682, i32 2454, i32 0, i32 298} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2109 = metadata !{i32 2458, i32 0, metadata !2110, metadata !2092}
!2110 = metadata !{i32 786443, metadata !1, metadata !2108, i32 2457, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2111 = metadata !{i32 2459, i32 0, metadata !2110, metadata !2092}
!2112 = metadata !{i32 2462, i32 0, metadata !2113, metadata !2092}
!2113 = metadata !{i32 786443, metadata !1, metadata !2108, i32 2461, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2114 = metadata !{i32 2465, i32 0, metadata !2108, metadata !2092}
!2115 = metadata !{i32 2467, i32 0, metadata !2116, metadata !2092}
!2116 = metadata !{i32 786443, metadata !1, metadata !2108, i32 2466, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2117 = metadata !{i32 2468, i32 0, metadata !2116, metadata !2092}
!2118 = metadata !{i32 2471, i32 0, metadata !2119, metadata !2092}
!2119 = metadata !{i32 786443, metadata !1, metadata !2108, i32 2470, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2120 = metadata !{i32 2477, i32 0, metadata !2121, metadata !2092}
!2121 = metadata !{i32 786443, metadata !1, metadata !682, i32 2475, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2122 = metadata !{i32 2479, i32 0, metadata !2123, metadata !2092}
!2123 = metadata !{i32 786443, metadata !1, metadata !2121, i32 2478, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2124 = metadata !{i32 2480, i32 0, metadata !2123, metadata !2092}
!2125 = metadata !{i32 2483, i32 0, metadata !2126, metadata !2092}
!2126 = metadata !{i32 786443, metadata !1, metadata !2121, i32 2482, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2127 = metadata !{i32 2485, i32 0, metadata !2121, metadata !2092}
!2128 = metadata !{i32 2487, i32 0, metadata !2129, metadata !2092}
!2129 = metadata !{i32 786443, metadata !1, metadata !2121, i32 2486, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2130 = metadata !{i32 2488, i32 0, metadata !2129, metadata !2092}
!2131 = metadata !{i32 2491, i32 0, metadata !2132, metadata !2092}
!2132 = metadata !{i32 786443, metadata !1, metadata !2121, i32 2490, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2133 = metadata !{i32 2494, i32 0, metadata !682, metadata !2092}
!2134 = metadata !{i32 2495, i32 0, metadata !682, metadata !2092}
!2135 = metadata !{i32 2497, i32 0, metadata !682, metadata !2092}
!2136 = metadata !{i32 706, i32 0, metadata !286, null}
!2137 = metadata !{i32 707, i32 0, metadata !286, null}
!2138 = metadata !{i32 708, i32 0, metadata !286, null}
!2139 = metadata !{i32 710, i32 0, metadata !286, null}
!2140 = metadata !{i32 712, i32 0, metadata !2141, null}
!2141 = metadata !{i32 786443, metadata !1, metadata !286, i32 711, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2142 = metadata !{i32 713, i32 0, metadata !2141, null}
!2143 = metadata !{i32 714, i32 0, metadata !2141, null}
!2144 = metadata !{i32 715, i32 0, metadata !2141, null}
!2145 = metadata !{i32 716, i32 0, metadata !2141, null}
!2146 = metadata !{i32 719, i32 0, metadata !2147, null}
!2147 = metadata !{i32 786443, metadata !1, metadata !286, i32 718, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2148 = metadata !{i32 720, i32 0, metadata !2147, null}
!2149 = metadata !{i32 724, i32 0, metadata !286, null}
!2150 = metadata !{i32 1406, i32 0, metadata !301, null}
!2151 = metadata !{i32 1414, i32 0, metadata !301, null}
!2152 = metadata !{i32 1416, i32 0, metadata !301, null}
!2153 = metadata !{i32 1417, i32 0, metadata !301, null}
!2154 = metadata !{i32 1420, i32 0, metadata !301, null}
!2155 = metadata !{i32 1423, i32 0, metadata !301, null}
!2156 = metadata !{i32 1424, i32 0, metadata !301, null}
!2157 = metadata !{i32 1425, i32 0, metadata !301, null}
!2158 = metadata !{i32 1427, i32 0, metadata !301, null}
!2159 = metadata !{i32 1429, i32 0, metadata !301, null}
!2160 = metadata !{i32 1431, i32 0, metadata !2161, null}
!2161 = metadata !{i32 786443, metadata !1, metadata !301, i32 1430, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2162 = metadata !{i32 1432, i32 0, metadata !2161, null}
!2163 = metadata !{i32 1433, i32 0, metadata !2161, null}
!2164 = metadata !{i32 1434, i32 0, metadata !2161, null}
!2165 = metadata !{i32 1435, i32 0, metadata !2161, null}
!2166 = metadata !{i32 1436, i32 0, metadata !301, null}
!2167 = metadata !{i32 1437, i32 0, metadata !301, null}
!2168 = metadata !{i32 -4}
!2169 = metadata !{i32 1439, i32 0, metadata !2170, null}
!2170 = metadata !{i32 786443, metadata !1, metadata !301, i32 1439, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2171 = metadata !{i32 1459, i32 0, metadata !2172, null}
!2172 = metadata !{i32 786443, metadata !1, metadata !301, i32 1459, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2173 = metadata !{i32 1454, i32 0, metadata !2174, null}
!2174 = metadata !{i32 786443, metadata !1, metadata !2175, i32 1442, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2175 = metadata !{i32 786443, metadata !1, metadata !2176, i32 1441, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2176 = metadata !{i32 786443, metadata !1, metadata !2170, i32 1440, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2177 = metadata !{i32 1441, i32 0, metadata !2175, null}
!2178 = metadata !{i32 1443, i32 0, metadata !2174, null}
!2179 = metadata !{i32 1444, i32 0, metadata !2174, null}
!2180 = metadata !{i32 1455, i32 0, metadata !2174, null}
!2181 = metadata !{i32 1461, i32 0, metadata !2182, null}
!2182 = metadata !{i32 786443, metadata !1, metadata !2183, i32 1461, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2183 = metadata !{i32 786443, metadata !1, metadata !2172, i32 1460, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2184 = metadata !{i32 1474, i32 0, metadata !2185, null}
!2185 = metadata !{i32 786443, metadata !1, metadata !2182, i32 1462, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2186 = metadata !{i32 1464, i32 0, metadata !2185, null}
!2187 = metadata !{i32 1466, i32 0, metadata !2185, null}
!2188 = metadata !{i32 1477, i32 0, metadata !2185, null}
!2189 = metadata !{i32 1485, i32 0, metadata !301, null}
!2190 = metadata !{i32 1486, i32 0, metadata !301, null}
!2191 = metadata !{i32 1488, i32 0, metadata !2192, null}
!2192 = metadata !{i32 786443, metadata !1, metadata !301, i32 1488, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2193 = metadata !{i32 1489, i32 0, metadata !2194, null}
!2194 = metadata !{i32 786443, metadata !1, metadata !2192, i32 1489, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2195 = metadata !{i32 1493, i32 0, metadata !2196, null}
!2196 = metadata !{i32 786443, metadata !1, metadata !2194, i32 1490, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2197 = metadata !{i32 1492, i32 0, metadata !2196, null}
!2198 = metadata !{i32 1497, i32 0, metadata !2199, null}
!2199 = metadata !{i32 786443, metadata !1, metadata !301, i32 1497, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2200 = metadata !{i32 1499, i32 0, metadata !2201, null}
!2201 = metadata !{i32 786443, metadata !1, metadata !2202, i32 1499, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2202 = metadata !{i32 786443, metadata !1, metadata !2199, i32 1498, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2203 = metadata !{i32 1505, i32 0, metadata !2204, null}
!2204 = metadata !{i32 786443, metadata !1, metadata !2205, i32 1502, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2205 = metadata !{i32 786443, metadata !1, metadata !2201, i32 1500, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2206 = metadata !{i32 1521, i32 0, metadata !2207, null}
!2207 = metadata !{i32 786443, metadata !1, metadata !2205, i32 1518, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2208 = metadata !{i32 1501, i32 0, metadata !2205, null}
!2209 = metadata !{i32 1504, i32 0, metadata !2204, null}
!2210 = metadata !{i32 1509, i32 0, metadata !2205, null}
!2211 = metadata !{i32 1508, i32 0, metadata !2204, null}
!2212 = metadata !{i32 1512, i32 0, metadata !2213, null}
!2213 = metadata !{i32 786443, metadata !1, metadata !2205, i32 1510, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2214 = metadata !{i32 1513, i32 0, metadata !2213, null}
!2215 = metadata !{i32 1516, i32 0, metadata !2213, null}
!2216 = metadata !{i32 1520, i32 0, metadata !2207, null}
!2217 = metadata !{i32 1537, i32 0, metadata !301, null}
!2218 = metadata !{i32 786689, metadata !617, metadata !"Fourthpel", metadata !29, i32 16778598, metadata !40, i32 0, metadata !2217} ; [ DW_TAG_arg_variable ] [Fourthpel] [line 1382]
!2219 = metadata !{i32 1382, i32 0, metadata !617, metadata !2217}
!2220 = metadata !{i32 786689, metadata !617, metadata !"Fullpel", metadata !29, i32 33555815, metadata !41, i32 0, metadata !2217} ; [ DW_TAG_arg_variable ] [Fullpel] [line 1383]
!2221 = metadata !{i32 1383, i32 0, metadata !617, metadata !2217}
!2222 = metadata !{i32 786689, metadata !617, metadata !"xsize", metadata !29, i32 50333031, metadata !45, i32 0, metadata !2217} ; [ DW_TAG_arg_variable ] [xsize] [line 1383]
!2223 = metadata !{i32 786689, metadata !617, metadata !"ysize", metadata !29, i32 67110248, metadata !45, i32 0, metadata !2217} ; [ DW_TAG_arg_variable ] [ysize] [line 1384]
!2224 = metadata !{i32 1384, i32 0, metadata !617, metadata !2217}
!2225 = metadata !{i32 786688, metadata !617, metadata !"y", metadata !29, i32 1386, metadata !45, i32 0, metadata !2217} ; [ DW_TAG_auto_variable ] [y] [line 1386]
!2226 = metadata !{i32 1388, i32 0, metadata !2227, metadata !2217}
!2227 = metadata !{i32 786443, metadata !1, metadata !617, i32 1388, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2228 = metadata !{i32 1389, i32 0, metadata !2229, metadata !2217}
!2229 = metadata !{i32 786443, metadata !1, metadata !2227, i32 1389, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2230 = metadata !{i32 1390, i32 0, metadata !2229, metadata !2217}
!2231 = metadata !{i32 786688, metadata !617, metadata !"x", metadata !29, i32 1386, metadata !45, i32 0, metadata !2217} ; [ DW_TAG_auto_variable ] [x] [line 1386]
!2232 = metadata !{i32 1788, i32 0, metadata !386, null}
!2233 = metadata !{i32 1790, i32 0, metadata !386, null}
!2234 = metadata !{i32 1799, i32 0, metadata !389, null}
!2235 = metadata !{i32 1801, i32 0, metadata !389, null}
!2236 = metadata !{i32 1802, i32 0, metadata !389, null}
!2237 = metadata !{i32 1805, i32 0, metadata !389, null}
!2238 = metadata !{i32 1809, i32 0, metadata !389, null}
!2239 = metadata !{i32 1811, i32 0, metadata !389, null}
!2240 = metadata !{i32 1812, i32 0, metadata !389, null}
!2241 = metadata !{i32 1813, i32 0, metadata !389, null}
!2242 = metadata !{i32 1814, i32 0, metadata !389, null}
!2243 = metadata !{i32 1816, i32 0, metadata !389, null}
!2244 = metadata !{i32 1818, i32 0, metadata !389, null}
!2245 = metadata !{i32 1820, i32 0, metadata !389, null}
!2246 = metadata !{i32 1821, i32 0, metadata !389, null}
!2247 = metadata !{i32 1822, i32 0, metadata !389, null}
!2248 = metadata !{i32 1824, i32 0, metadata !389, null}
!2249 = metadata !{i32 1826, i32 0, metadata !2250, null}
!2250 = metadata !{i32 786443, metadata !1, metadata !389, i32 1826, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2251 = metadata !{i32 1830, i32 0, metadata !2252, null}
!2252 = metadata !{i32 786443, metadata !1, metadata !2253, i32 1829, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2253 = metadata !{i32 786443, metadata !1, metadata !2254, i32 1828, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2254 = metadata !{i32 786443, metadata !1, metadata !2250, i32 1827, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2255 = metadata !{i32 1827, i32 0, metadata !2254, null}
!2256 = metadata !{i32 1835, i32 0, metadata !2257, null}
!2257 = metadata !{i32 786443, metadata !1, metadata !2258, i32 1834, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2258 = metadata !{i32 786443, metadata !1, metadata !2259, i32 1833, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2259 = metadata !{i32 786443, metadata !1, metadata !389, i32 1832, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2260 = metadata !{i32 1832, i32 0, metadata !2259, null}
!2261 = metadata !{i32 1828, i32 0, metadata !2253, null}
!2262 = metadata !{i32 1829, i32 0, metadata !2252, null}
!2263 = metadata !{i32 1833, i32 0, metadata !2258, null}
!2264 = metadata !{i32 1841, i32 0, metadata !2265, null}
!2265 = metadata !{i32 786443, metadata !1, metadata !2266, i32 1839, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2266 = metadata !{i32 786443, metadata !1, metadata !2267, i32 1838, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2267 = metadata !{i32 786443, metadata !1, metadata !389, i32 1837, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2268 = metadata !{i32 1845, i32 0, metadata !2269, null}
!2269 = metadata !{i32 786443, metadata !1, metadata !2265, i32 1843, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2270 = metadata !{i32 1840, i32 0, metadata !2265, null}
!2271 = metadata !{i32 1837, i32 0, metadata !2267, null}
!2272 = metadata !{i32 1834, i32 0, metadata !2257, null}
!2273 = metadata !{i32 1838, i32 0, metadata !2266, null}
!2274 = metadata !{i32 1853, i32 0, metadata !2275, null}
!2275 = metadata !{i32 786443, metadata !1, metadata !2276, i32 1852, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2276 = metadata !{i32 786443, metadata !1, metadata !2277, i32 1851, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2277 = metadata !{i32 786443, metadata !1, metadata !389, i32 1850, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2278 = metadata !{i32 1850, i32 0, metadata !2277, null}
!2279 = metadata !{i32 1842, i32 0, metadata !2265, null}
!2280 = metadata !{i32 1844, i32 0, metadata !2269, null}
!2281 = metadata !{i32 1846, i32 0, metadata !2269, null}
!2282 = metadata !{i32 1851, i32 0, metadata !2276, null}
!2283 = metadata !{i32 1857, i32 0, metadata !389, null}
!2284 = metadata !{i32 1859, i32 0, metadata !2285, null}
!2285 = metadata !{i32 786443, metadata !1, metadata !2286, i32 1859, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2286 = metadata !{i32 786443, metadata !1, metadata !389, i32 1858, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2287 = metadata !{i32 1860, i32 0, metadata !2288, null}
!2288 = metadata !{i32 786443, metadata !1, metadata !2285, i32 1860, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2289 = metadata !{i32 1862, i32 0, metadata !2290, null}
!2290 = metadata !{i32 786443, metadata !1, metadata !2288, i32 1861, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2291 = metadata !{i32 1863, i32 0, metadata !2290, null}
!2292 = metadata !{i32 1869, i32 0, metadata !2293, null}
!2293 = metadata !{i32 786443, metadata !1, metadata !2294, i32 1868, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2294 = metadata !{i32 786443, metadata !1, metadata !389, i32 1867, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2295 = metadata !{i32 1870, i32 0, metadata !2293, null}
!2296 = metadata !{i32 1867, i32 0, metadata !2294, null}
!2297 = metadata !{i32 1873, i32 0, metadata !389, null}
!2298 = metadata !{i32 1877, i32 0, metadata !389, null}
!2299 = metadata !{i32 1879, i32 0, metadata !2300, null}
!2300 = metadata !{i32 786443, metadata !1, metadata !2301, i32 1879, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2301 = metadata !{i32 786443, metadata !1, metadata !389, i32 1878, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2302 = metadata !{i32 1882, i32 0, metadata !2303, null}
!2303 = metadata !{i32 786443, metadata !1, metadata !2304, i32 1881, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2304 = metadata !{i32 786443, metadata !1, metadata !2300, i32 1880, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2305 = metadata !{i32 1880, i32 0, metadata !2304, null}
!2306 = metadata !{i32 1883, i32 0, metadata !2303, null}
!2307 = metadata !{i32 1888, i32 0, metadata !2308, null}
!2308 = metadata !{i32 786443, metadata !1, metadata !2309, i32 1888, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2309 = metadata !{i32 786443, metadata !1, metadata !389, i32 1887, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2310 = metadata !{i32 1889, i32 0, metadata !2311, null}
!2311 = metadata !{i32 786443, metadata !1, metadata !2308, i32 1889, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2312 = metadata !{i32 1891, i32 0, metadata !2313, null}
!2313 = metadata !{i32 786443, metadata !1, metadata !2311, i32 1890, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2314 = metadata !{i32 1892, i32 0, metadata !2313, null}
!2315 = metadata !{i32 1895, i32 0, metadata !389, null}
!2316 = metadata !{i32 1897, i32 0, metadata !2317, null}
!2317 = metadata !{i32 786443, metadata !1, metadata !2318, i32 1897, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2318 = metadata !{i32 786443, metadata !1, metadata !389, i32 1896, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2319 = metadata !{i32 1900, i32 0, metadata !2320, null}
!2320 = metadata !{i32 786443, metadata !1, metadata !2321, i32 1899, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2321 = metadata !{i32 786443, metadata !1, metadata !2317, i32 1898, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2322 = metadata !{i32 1898, i32 0, metadata !2321, null}
!2323 = metadata !{i32 1901, i32 0, metadata !2320, null}
!2324 = metadata !{i32 1907, i32 0, metadata !389, null}
!2325 = metadata !{i32 786688, metadata !592, metadata !"i", metadata !29, i32 1967, metadata !45, i32 0, metadata !2326} ; [ DW_TAG_auto_variable ] [i] [line 1967]
!2326 = metadata !{i32 1910, i32 0, metadata !2327, null}
!2327 = metadata !{i32 786443, metadata !1, metadata !389, i32 1908, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2328 = metadata !{i32 1969, i32 0, metadata !2329, metadata !2326}
!2329 = metadata !{i32 786443, metadata !1, metadata !592, i32 1969, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2330 = metadata !{i32 1973, i32 0, metadata !2331, metadata !2326}
!2331 = metadata !{i32 786443, metadata !1, metadata !2332, i32 1973, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2332 = metadata !{i32 786443, metadata !1, metadata !2333, i32 1972, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2333 = metadata !{i32 786443, metadata !1, metadata !2334, i32 1971, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2334 = metadata !{i32 786443, metadata !1, metadata !2329, i32 1970, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2335 = metadata !{i32 1977, i32 0, metadata !2336, metadata !2326}
!2336 = metadata !{i32 786443, metadata !1, metadata !2337, i32 1976, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2337 = metadata !{i32 786443, metadata !1, metadata !2338, i32 1975, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2338 = metadata !{i32 786443, metadata !1, metadata !2331, i32 1974, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2339 = metadata !{i32 1984, i32 0, metadata !2336, metadata !2326}
!2340 = metadata !{i32 1986, i32 0, metadata !2341, metadata !2326}
!2341 = metadata !{i32 786443, metadata !1, metadata !2336, i32 1985, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2342 = metadata !{i32 1992, i32 0, metadata !2341, metadata !2326}
!2343 = metadata !{i32 1999, i32 0, metadata !2336, metadata !2326}
!2344 = metadata !{i32 1971, i32 0, metadata !2333, metadata !2326}
!2345 = metadata !{i32 1980, i32 0, metadata !2336, metadata !2326}
!2346 = metadata !{i32 2002, i32 0, metadata !2336, metadata !2326}
!2347 = metadata !{i32 1975, i32 0, metadata !2337, metadata !2326}
!2348 = metadata !{i32 1978, i32 0, metadata !2336, metadata !2326}
!2349 = metadata !{i32 1981, i32 0, metadata !2336, metadata !2326}
!2350 = metadata !{i32 1987, i32 0, metadata !2341, metadata !2326}
!2351 = metadata !{i32 1989, i32 0, metadata !2341, metadata !2326}
!2352 = metadata !{i32 1990, i32 0, metadata !2341, metadata !2326}
!2353 = metadata !{i32 1993, i32 0, metadata !2341, metadata !2326}
!2354 = metadata !{i32 1994, i32 0, metadata !2341, metadata !2326}
!2355 = metadata !{i32 1995, i32 0, metadata !2341, metadata !2326}
!2356 = metadata !{i32 1996, i32 0, metadata !2341, metadata !2326}
!2357 = metadata !{i32 2000, i32 0, metadata !2336, metadata !2326}
!2358 = metadata !{i32 2003, i32 0, metadata !2336, metadata !2326}
!2359 = metadata !{i32 1913, i32 0, metadata !2327, null}
!2360 = metadata !{i32 1951, i32 0, metadata !2361, null}
!2361 = metadata !{i32 786443, metadata !1, metadata !2362, i32 1950, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2362 = metadata !{i32 786443, metadata !1, metadata !2363, i32 1949, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2363 = metadata !{i32 786443, metadata !1, metadata !2364, i32 1948, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2364 = metadata !{i32 786443, metadata !1, metadata !2327, i32 1947, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2365 = metadata !{i32 1948, i32 0, metadata !2363, null}
!2366 = metadata !{i32 1918, i32 0, metadata !2367, null}
!2367 = metadata !{i32 786443, metadata !1, metadata !2368, i32 1917, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2368 = metadata !{i32 786443, metadata !1, metadata !2369, i32 1916, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2369 = metadata !{i32 786443, metadata !1, metadata !2370, i32 1915, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2370 = metadata !{i32 786443, metadata !1, metadata !2327, i32 1914, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2371 = metadata !{i32 1916, i32 0, metadata !2368, null}
!2372 = metadata !{i32 1919, i32 0, metadata !2367, null}
!2373 = metadata !{i32 1921, i32 0, metadata !2367, null}
!2374 = metadata !{i32 1923, i32 0, metadata !2375, null}
!2375 = metadata !{i32 786443, metadata !1, metadata !2367, i32 1922, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2376 = metadata !{i32 1924, i32 0, metadata !2375, null}
!2377 = metadata !{i32 1925, i32 0, metadata !2375, null}
!2378 = metadata !{i32 1928, i32 0, metadata !2379, null}
!2379 = metadata !{i32 786443, metadata !1, metadata !2367, i32 1927, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2380 = metadata !{i32 1929, i32 0, metadata !2379, null}
!2381 = metadata !{i32 1931, i32 0, metadata !2367, null}
!2382 = metadata !{i32 1933, i32 0, metadata !2383, null}
!2383 = metadata !{i32 786443, metadata !1, metadata !2367, i32 1932, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2384 = metadata !{i32 1935, i32 0, metadata !2385, null}
!2385 = metadata !{i32 786443, metadata !1, metadata !2383, i32 1934, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2386 = metadata !{i32 1936, i32 0, metadata !2385, null}
!2387 = metadata !{i32 1937, i32 0, metadata !2385, null}
!2388 = metadata !{i32 1940, i32 0, metadata !2389, null}
!2389 = metadata !{i32 786443, metadata !1, metadata !2383, i32 1939, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2390 = metadata !{i32 1941, i32 0, metadata !2389, null}
!2391 = metadata !{i32 1915, i32 0, metadata !2369, null}
!2392 = metadata !{i32 1949, i32 0, metadata !2362, null}
!2393 = metadata !{i32 1952, i32 0, metadata !2361, null}
!2394 = metadata !{i32 1954, i32 0, metadata !2361, null}
!2395 = metadata !{i32 1956, i32 0, metadata !2396, null}
!2396 = metadata !{i32 786443, metadata !1, metadata !2361, i32 1955, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2397 = metadata !{i32 1957, i32 0, metadata !2396, null}
!2398 = metadata !{i32 1958, i32 0, metadata !2396, null}
!2399 = metadata !{i32 1963, i32 0, metadata !389, null}
!2400 = metadata !{i32 2201, i32 0, metadata !464, null}
!2401 = metadata !{i32 2208, i32 0, metadata !464, null}
!2402 = metadata !{i32 2210, i32 0, metadata !2403, null}
!2403 = metadata !{i32 786443, metadata !1, metadata !464, i32 2209, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2404 = metadata !{i32 2211, i32 0, metadata !2403, null}
!2405 = metadata !{i32 2222, i32 0, metadata !2406, null}
!2406 = metadata !{i32 786443, metadata !1, metadata !464, i32 2220, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2407 = metadata !{i32 2269, i32 0, metadata !2408, null}
!2408 = metadata !{i32 786443, metadata !1, metadata !2409, i32 2269, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2409 = metadata !{i32 786443, metadata !1, metadata !2406, i32 2267, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2410 = metadata !{i32 2270, i32 0, metadata !2411, null}
!2411 = metadata !{i32 786443, metadata !1, metadata !2408, i32 2270, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2412 = metadata !{i32 2225, i32 0, metadata !2413, null}
!2413 = metadata !{i32 786443, metadata !1, metadata !2406, i32 2223, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2414 = metadata !{i32 2250, i32 0, metadata !2415, null}
!2415 = metadata !{i32 786443, metadata !1, metadata !2416, i32 2250, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2416 = metadata !{i32 786443, metadata !1, metadata !2417, i32 2249, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2417 = metadata !{i32 786443, metadata !1, metadata !2413, i32 2226, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2418 = metadata !{i32 2251, i32 0, metadata !2419, null}
!2419 = metadata !{i32 786443, metadata !1, metadata !2415, i32 2251, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2420 = metadata !{i32 2238, i32 0, metadata !2421, null}
!2421 = metadata !{i32 786443, metadata !1, metadata !2422, i32 2238, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2422 = metadata !{i32 786443, metadata !1, metadata !2417, i32 2237, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2423 = metadata !{i32 2239, i32 0, metadata !2424, null}
!2424 = metadata !{i32 786443, metadata !1, metadata !2421, i32 2239, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2425 = metadata !{i32 2229, i32 0, metadata !2426, null}
!2426 = metadata !{i32 786443, metadata !1, metadata !2427, i32 2229, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2427 = metadata !{i32 786443, metadata !1, metadata !2417, i32 2228, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2428 = metadata !{i32 2230, i32 0, metadata !2429, null}
!2429 = metadata !{i32 786443, metadata !1, metadata !2426, i32 2230, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2430 = metadata !{i32 2232, i32 0, metadata !2431, null}
!2431 = metadata !{i32 786443, metadata !1, metadata !2429, i32 2231, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2432 = metadata !{i32 2241, i32 0, metadata !2433, null}
!2433 = metadata !{i32 786443, metadata !1, metadata !2424, i32 2240, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2434 = metadata !{i32 2243, i32 0, metadata !2433, null}
!2435 = metadata !{i32 2242, i32 0, metadata !2433, null}
!2436 = metadata !{i32 2253, i32 0, metadata !2437, null}
!2437 = metadata !{i32 786443, metadata !1, metadata !2419, i32 2252, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2438 = metadata !{i32 2255, i32 0, metadata !2437, null}
!2439 = metadata !{i32 2254, i32 0, metadata !2437, null}
!2440 = metadata !{i32 2260, i32 0, metadata !2441, null}
!2441 = metadata !{i32 786443, metadata !1, metadata !2417, i32 2259, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2442 = metadata !{i32 2261, i32 0, metadata !2441, null}
!2443 = metadata !{i32 2272, i32 0, metadata !2444, null}
!2444 = metadata !{i32 786443, metadata !1, metadata !2411, i32 2271, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2445 = metadata !{i32 2273, i32 0, metadata !2444, null}
!2446 = metadata !{i32 2277, i32 0, metadata !464, null}
!2447 = metadata !{i32 1717, i32 0, metadata !598, null}
!2448 = metadata !{i32 1721, i32 0, metadata !2449, null}
!2449 = metadata !{i32 786443, metadata !1, metadata !2450, i32 1721, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2450 = metadata !{i32 786443, metadata !1, metadata !598, i32 1718, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2451 = metadata !{i32 1723, i32 0, metadata !2452, null}
!2452 = metadata !{i32 786443, metadata !1, metadata !2453, i32 1723, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2453 = metadata !{i32 786443, metadata !1, metadata !2449, i32 1722, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2454 = metadata !{i32 1725, i32 0, metadata !2455, null}
!2455 = metadata !{i32 786443, metadata !1, metadata !2452, i32 1724, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2456 = metadata !{i32 1729, i32 0, metadata !2450, null}
!2457 = metadata !{i32 1730, i32 0, metadata !2450, null}
!2458 = metadata !{i32 1732, i32 0, metadata !2450, null}
!2459 = metadata !{i32 1735, i32 0, metadata !2460, null}
!2460 = metadata !{i32 786443, metadata !1, metadata !2461, i32 1735, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2461 = metadata !{i32 786443, metadata !1, metadata !2450, i32 1733, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2462 = metadata !{i32 1737, i32 0, metadata !2463, null}
!2463 = metadata !{i32 786443, metadata !1, metadata !2464, i32 1737, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2464 = metadata !{i32 786443, metadata !1, metadata !2460, i32 1736, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2465 = metadata !{i32 1739, i32 0, metadata !2466, null}
!2466 = metadata !{i32 786443, metadata !1, metadata !2463, i32 1738, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2467 = metadata !{i32 1740, i32 0, metadata !2466, null}
!2468 = metadata !{i32 1747, i32 0, metadata !2469, null}
!2469 = metadata !{i32 786443, metadata !1, metadata !598, i32 1746, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2470 = metadata !{i32 1748, i32 0, metadata !2469, null}
!2471 = metadata !{i32 1750, i32 0, metadata !2469, null}
!2472 = metadata !{i32 1751, i32 0, metadata !2473, null}
!2473 = metadata !{i32 786443, metadata !1, metadata !2469, i32 1751, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2474 = metadata !{i32 1753, i32 0, metadata !2475, null}
!2475 = metadata !{i32 786443, metadata !1, metadata !2476, i32 1753, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2476 = metadata !{i32 786443, metadata !1, metadata !2473, i32 1752, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2477 = metadata !{i32 1755, i32 0, metadata !2478, null}
!2478 = metadata !{i32 786443, metadata !1, metadata !2475, i32 1754, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2479 = metadata !{i32 1759, i32 0, metadata !2469, null}
!2480 = metadata !{i32 1760, i32 0, metadata !2469, null}
!2481 = metadata !{i32 1762, i32 0, metadata !2469, null}
!2482 = metadata !{i32 1765, i32 0, metadata !2483, null}
!2483 = metadata !{i32 786443, metadata !1, metadata !2484, i32 1765, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2484 = metadata !{i32 786443, metadata !1, metadata !2469, i32 1763, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2485 = metadata !{i32 1767, i32 0, metadata !2486, null}
!2486 = metadata !{i32 786443, metadata !1, metadata !2487, i32 1767, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2487 = metadata !{i32 786443, metadata !1, metadata !2483, i32 1766, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2488 = metadata !{i32 1769, i32 0, metadata !2489, null}
!2489 = metadata !{i32 786443, metadata !1, metadata !2486, i32 1768, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2490 = metadata !{i32 1770, i32 0, metadata !2489, null}
!2491 = metadata !{i32 1776, i32 0, metadata !598, null}
!2492 = metadata !{i32 1777, i32 0, metadata !598, null}
!2493 = metadata !{i32 1778, i32 0, metadata !598, null}
!2494 = metadata !{i32 1779, i32 0, metadata !598, null}
!2495 = metadata !{i32 1220, i32 0, metadata !627, null}
!2496 = metadata !{i32 1222, i32 0, metadata !627, null}
!2497 = metadata !{i32 1223, i32 0, metadata !627, null}
!2498 = metadata !{i32 1224, i32 0, metadata !627, null}
!2499 = metadata !{i32 1226, i32 0, metadata !627, null}
!2500 = metadata !{i32 1227, i32 0, metadata !627, null}
!2501 = metadata !{i32 1228, i32 0, metadata !627, null}
!2502 = metadata !{i32 1229, i32 0, metadata !627, null}
!2503 = metadata !{i32 1231, i32 0, metadata !627, null}
!2504 = metadata !{i32 1233, i32 0, metadata !627, null}
!2505 = metadata !{i32 1235, i32 0, metadata !627, null}
!2506 = metadata !{i32 1238, i32 0, metadata !2507, null}
!2507 = metadata !{i32 786443, metadata !1, metadata !627, i32 1237, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2508 = metadata !{i32 1240, i32 0, metadata !2507, null}
!2509 = metadata !{i32 1242, i32 0, metadata !2510, null}
!2510 = metadata !{i32 786443, metadata !1, metadata !2507, i32 1241, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2511 = metadata !{i32 1243, i32 0, metadata !2510, null}
!2512 = metadata !{i32 1244, i32 0, metadata !2510, null}
!2513 = metadata !{i32 1247, i32 0, metadata !2507, null}
!2514 = metadata !{i32 1248, i32 0, metadata !2507, null}
!2515 = metadata !{i32 1250, i32 0, metadata !2507, null}
!2516 = metadata !{i32 1251, i32 0, metadata !2507, null}
!2517 = metadata !{i32 1254, i32 0, metadata !2507, null}
!2518 = metadata !{i32 1256, i32 0, metadata !2519, null}
!2519 = metadata !{i32 786443, metadata !1, metadata !2507, i32 1255, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2520 = metadata !{i32 1259, i32 0, metadata !2521, null}
!2521 = metadata !{i32 786443, metadata !1, metadata !2519, i32 1257, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2522 = metadata !{i32 1260, i32 0, metadata !2521, null}
!2523 = metadata !{i32 1263, i32 0, metadata !2521, null}
!2524 = metadata !{i32 1268, i32 0, metadata !2525, null}
!2525 = metadata !{i32 786443, metadata !1, metadata !2519, i32 1266, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2526 = metadata !{i32 1269, i32 0, metadata !2525, null}
!2527 = metadata !{i32 1272, i32 0, metadata !2525, null}
!2528 = metadata !{i32 1273, i32 0, metadata !2525, null}
!2529 = metadata !{i32 1275, i32 0, metadata !2530, null}
!2530 = metadata !{i32 786443, metadata !1, metadata !2525, i32 1274, i32 0, i32 263} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2531 = metadata !{i32 1276, i32 0, metadata !2530, null}
!2532 = metadata !{i32 1277, i32 0, metadata !2530, null}
!2533 = metadata !{i32 1281, i32 0, metadata !2507, null}
!2534 = metadata !{i32 1283, i32 0, metadata !2507, null}
!2535 = metadata !{i32 1285, i32 0, metadata !2536, null}
!2536 = metadata !{i32 786443, metadata !1, metadata !2507, i32 1284, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2537 = metadata !{i32 1287, i32 0, metadata !2536, null}
!2538 = metadata !{i32 1291, i32 0, metadata !2539, null}
!2539 = metadata !{i32 786443, metadata !1, metadata !627, i32 1290, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2540 = metadata !{i32 1292, i32 0, metadata !2539, null}
!2541 = metadata !{i32 1293, i32 0, metadata !2539, null}
!2542 = metadata !{i32 1295, i32 0, metadata !2539, null}
!2543 = metadata !{i32 1297, i32 0, metadata !2544, null}
!2544 = metadata !{i32 786443, metadata !1, metadata !2539, i32 1296, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2545 = metadata !{i32 1298, i32 0, metadata !2544, null}
!2546 = metadata !{i32 1299, i32 0, metadata !2547, null}
!2547 = metadata !{i32 786443, metadata !1, metadata !2544, i32 1299, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2548 = metadata !{i32 1301, i32 0, metadata !2549, null}
!2549 = metadata !{i32 786443, metadata !1, metadata !2547, i32 1300, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2550 = metadata !{i32 1302, i32 0, metadata !2549, null}
!2551 = metadata !{i32 1307, i32 0, metadata !2552, null}
!2552 = metadata !{i32 786443, metadata !1, metadata !2539, i32 1306, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2553 = metadata !{i32 1308, i32 0, metadata !2552, null}
!2554 = metadata !{i32 1309, i32 0, metadata !2555, null}
!2555 = metadata !{i32 786443, metadata !1, metadata !2552, i32 1309, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2556 = metadata !{i32 1311, i32 0, metadata !2557, null}
!2557 = metadata !{i32 786443, metadata !1, metadata !2555, i32 1310, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2558 = metadata !{i32 1312, i32 0, metadata !2557, null}
!2559 = metadata !{i32 1316, i32 0, metadata !2539, null}
!2560 = metadata !{i32 1318, i32 0, metadata !2561, null}
!2561 = metadata !{i32 786443, metadata !1, metadata !2539, i32 1317, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2562 = metadata !{i32 1319, i32 0, metadata !2561, null}
!2563 = metadata !{i32 1320, i32 0, metadata !2561, null}
!2564 = metadata !{i32 1322, i32 0, metadata !2539, null}
!2565 = metadata !{i32 1325, i32 0, metadata !2539, null}
!2566 = metadata !{i32 1326, i32 0, metadata !2539, null}
!2567 = metadata !{i32 1329, i32 0, metadata !2539, null}
!2568 = metadata !{i32 1328, i32 0, metadata !2539, null}
!2569 = metadata !{i32 1331, i32 0, metadata !2539, null}
!2570 = metadata !{i32 1334, i32 0, metadata !2539, null}
!2571 = metadata !{i32 1335, i32 0, metadata !2539, null}
!2572 = metadata !{i32 1337, i32 0, metadata !2539, null}
!2573 = metadata !{i32 1340, i32 0, metadata !2574, null}
!2574 = metadata !{i32 786443, metadata !1, metadata !2539, i32 1338, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2575 = metadata !{i32 1341, i32 0, metadata !2574, null}
!2576 = metadata !{i32 1344, i32 0, metadata !2574, null}
!2577 = metadata !{i32 1345, i32 0, metadata !2574, null}
!2578 = metadata !{i32 1348, i32 0, metadata !2579, null}
!2579 = metadata !{i32 786443, metadata !1, metadata !2574, i32 1346, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2580 = metadata !{i32 1349, i32 0, metadata !2579, null}
!2581 = metadata !{i32 1352, i32 0, metadata !2579, null}
!2582 = metadata !{i32 1356, i32 0, metadata !2539, null}
!2583 = metadata !{i32 1358, i32 0, metadata !2584, null}
!2584 = metadata !{i32 786443, metadata !1, metadata !2539, i32 1357, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/image.c]
!2585 = metadata !{i32 1359, i32 0, metadata !2584, null}
!2586 = metadata !{i32 1363, i32 0, metadata !627, null}
!2587 = metadata !{i32 1364, i32 0, metadata !627, null}
!2588 = metadata !{i32 1365, i32 0, metadata !627, null}
!2589 = metadata !{i32 1366, i32 0, metadata !627, null}
!2590 = metadata !{i32 1367, i32 0, metadata !627, null}
!2591 = metadata !{i32 1368, i32 0, metadata !627, null}
