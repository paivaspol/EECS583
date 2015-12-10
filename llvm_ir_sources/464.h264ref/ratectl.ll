; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c'
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
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@THETA = constant double 1.363600e+00, align 8
@Switch = constant i32 0, align 4
@Iprev_bits = global i32 0, align 4
@Pprev_bits = global i32 0, align 4
@OMEGA = constant double 9.000000e-01, align 8
@img = external global %struct.ImageParameters*
@.str = private unnamed_addr constant [23 x i8] c"rc_alloc: img->MADofMB\00", align 1
@input = external global %struct.InputParameters*
@BUPFMAD = common global double* null, align 8
@.str1 = private unnamed_addr constant [23 x i8] c"rc_alloc: img->BUPFMAD\00", align 1
@BUCFMAD = common global double* null, align 8
@.str2 = private unnamed_addr constant [23 x i8] c"rc_alloc: img->BUCFMAD\00", align 1
@FCBUCFMAD = common global double* null, align 8
@.str3 = private unnamed_addr constant [25 x i8] c"rc_alloc: img->FCBUCFMAD\00", align 1
@FCBUPFMAD = common global double* null, align 8
@.str4 = private unnamed_addr constant [25 x i8] c"rc_alloc: img->FCBUPFMAD\00", align 1
@Xp = common global i32 0, align 4
@Xb = common global i32 0, align 4
@bit_rate = common global double 0.000000e+00, align 8
@frame_rate = common global double 0.000000e+00, align 8
@PreviousBit_Rate = common global double 0.000000e+00, align 8
@TotalNumberofBasicUnit = common global i32 0, align 4
@MINVALUE = common global double 0.000000e+00, align 8
@BufferSize = common global double 0.000000e+00, align 8
@CurrentBufferFullness = common global double 0.000000e+00, align 8
@GOPTargetBufferLevel = common global double 0.000000e+00, align 8
@InitialDelayOffset = common global double 0.000000e+00, align 8
@m_windowSize = common global i32 0, align 4
@MADm_windowSize = common global i32 0, align 4
@R = internal unnamed_addr global i32 0, align 4
@GAMMAP = common global double 0.000000e+00, align 8
@BETAP = common global double 0.000000e+00, align 8
@PPreHeader = common global i32 0, align 4
@Pm_X1 = common global double 0.000000e+00, align 8
@Pm_X2 = common global double 0.000000e+00, align 8
@PMADPictureC1 = common global double 0.000000e+00, align 8
@PMADPictureC2 = common global double 0.000000e+00, align 8
@Pm_rgQp = common global [20 x double] zeroinitializer, align 16
@Pm_rgRp = common global [20 x double] zeroinitializer, align 16
@PPictureMAD = common global [21 x double] zeroinitializer, align 16
@PDuantQp = common global i32 0, align 4
@PAveHeaderBits1 = common global i32 0, align 4
@PAveHeaderBits3 = common global i32 0, align 4
@DDquant = common global i32 0, align 4
@MBPerRow = common global i32 0, align 4
@RC_MAX_QUANT = common global i32 0, align 4
@RC_MIN_QUANT = common global i32 0, align 4
@LowerBound = common global i64 0, align 8
@UpperBound1 = common global i64 0, align 8
@Np = internal unnamed_addr global i32 0, align 4
@Nb = internal unnamed_addr global i32 0, align 4
@GOPOverdue = common global i32 0, align 4
@TotalPFrame = common global i32 0, align 4
@MyInitialQp = common global i32 0, align 4
@PreviousQp2 = common global i32 0, align 4
@QPLastGOP = common global i32 0, align 4
@FrameQPBuffer = common global i32 0, align 4
@QPLastPFrame = common global i32 0, align 4
@FieldQPBuffer = common global i32 0, align 4
@PAverageQp = common global i32 0, align 4
@Pm_Qp = common global i32 0, align 4
@PAveFrameQP = common global i32 0, align 4
@PreviousQp1 = common global i32 0, align 4
@NumberofBFrames = common global i32 0, align 4
@TargetBufferLevel = common global double 0.000000e+00, align 8
@DeltaP = common global double 0.000000e+00, align 8
@Wp = common global double 0.000000e+00, align 8
@AWp = common global double 0.000000e+00, align 8
@AWb = common global double 0.000000e+00, align 8
@Wb = common global double 0.000000e+00, align 8
@T = common global i64 0, align 8
@T1 = common global i64 0, align 8
@UpperBound2 = common global i64 0, align 8
@T_field = internal unnamed_addr global i32 0, align 4
@TotalFrameQP = common global i32 0, align 4
@NumberofBasicUnit = common global i32 0, align 4
@bits_topfield = internal unnamed_addr global i32 0, align 4
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@m_Qc = common global i32 0, align 4
@Pm_Hp = common global i32 0, align 4
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@m_X1 = common global double 0.000000e+00, align 8
@m_X2 = common global double 0.000000e+00, align 8
@m_Hp = common global i32 0, align 4
@m_Qp = common global i32 0, align 4
@DuantQp = common global i32 0, align 4
@MADPictureC1 = common global double 0.000000e+00, align 8
@MADPictureC2 = common global double 0.000000e+00, align 8
@PreviousPictureMAD = common global double 0.000000e+00, align 8
@CurrentFrameMAD = common global double 0.000000e+00, align 8
@m_Qstep = common global double 0.000000e+00, align 8
@PAveHeaderBits2 = common global i32 0, align 4
@FrameAveHeaderBits = common global i32 0, align 4
@FieldAveHeaderBits = common global i32 0, align 4
@TotalBasicUnitBits = common global i32 0, align 4
@TotalBUMAD = common global double 0.000000e+00, align 8
@CurrentBUMAD = common global double 0.000000e+00, align 8
@CodedBasicUnit = common global i32 0, align 4
@m_rgQp = common global [21 x double] zeroinitializer, align 16
@m_rgRp = common global [21 x double] zeroinitializer, align 16
@PreviousFrameMAD = common global double 0.000000e+00, align 8
@m_rgRejected = common global [21 x i32] zeroinitializer, align 16
@PictureMAD = common global [21 x double] zeroinitializer, align 16
@ReferenceMAD = common global [21 x double] zeroinitializer, align 16
@PictureRejected = common global [21 x i32] zeroinitializer, align 16
@QP2Qstep.QP2QSTEP = internal unnamed_addr constant [6 x double] [double 6.250000e-01, double 6.875000e-01, double 8.125000e-01, double 8.750000e-01, double 1.000000e+00, double 1.125000e+00], align 16
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
@PreAveMBHeader = common global i32 0, align 4
@CurAveMBHeader = common global i32 0, align 4
@AverageMADPreviousFrame = common global double 0.000000e+00, align 8
@diffyy = common global [16 x [16 x i32]] zeroinitializer, align 16
@diffy8 = common global [16 x [16 x i32]] zeroinitializer, align 16
@BitRate = common global %struct._IO_FILE* null, align 8

; Function Attrs: nounwind optsize uwtable
define void @rc_alloc() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !803, !tbaa !804
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 111, !dbg !803
  %1 = load i32* %FrameSizeInMbs, align 4, !dbg !803, !tbaa !807
  %conv = zext i32 %1 to i64, !dbg !803
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #8, !dbg !803
  %2 = bitcast i8* %call to double*, !dbg !803
  %MADofMB = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 131, !dbg !803
  store double* %2, double** %MADofMB, align 8, !dbg !803, !tbaa !804
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !808, !tbaa !804
  %MADofMB1 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 131, !dbg !808
  %4 = load double** %MADofMB1, align 8, !dbg !808, !tbaa !804
  %cmp = icmp eq double* %4, null, !dbg !808
  br i1 %cmp, label %if.then, label %if.end, !dbg !808

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str, i64 0, i64 0)) #8, !dbg !809
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !811, !tbaa !804
  br label %if.end, !dbg !812

if.end:                                           ; preds = %if.then, %entry
  %5 = phi %struct.ImageParameters* [ %.pre, %if.then ], [ %3, %entry ]
  %FrameSizeInMbs3 = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 111, !dbg !811
  %6 = load i32* %FrameSizeInMbs3, align 4, !dbg !811, !tbaa !807
  %7 = load %struct.InputParameters** @input, align 8, !dbg !811, !tbaa !804
  %basicunit = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 130, !dbg !811
  %8 = load i32* %basicunit, align 4, !dbg !811, !tbaa !807
  %div = udiv i32 %6, %8, !dbg !811
  %conv4 = zext i32 %div to i64, !dbg !811
  %call5 = tail call noalias i8* @calloc(i64 %conv4, i64 8) #8, !dbg !811
  %9 = bitcast i8* %call5 to double*, !dbg !811
  store double* %9, double** @BUPFMAD, align 8, !dbg !811, !tbaa !804
  %cmp6 = icmp eq i8* %call5, null, !dbg !813
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !813

if.then8:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !814
  %.pre37 = load %struct.ImageParameters** @img, align 8, !dbg !816, !tbaa !804
  %.pre38 = load %struct.InputParameters** @input, align 8, !dbg !816, !tbaa !804
  br label %if.end9, !dbg !817

if.end9:                                          ; preds = %if.then8, %if.end
  %10 = phi %struct.InputParameters* [ %.pre38, %if.then8 ], [ %7, %if.end ]
  %11 = phi %struct.ImageParameters* [ %.pre37, %if.then8 ], [ %5, %if.end ]
  %FrameSizeInMbs10 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 111, !dbg !816
  %12 = load i32* %FrameSizeInMbs10, align 4, !dbg !816, !tbaa !807
  %basicunit11 = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 130, !dbg !816
  %13 = load i32* %basicunit11, align 4, !dbg !816, !tbaa !807
  %div12 = udiv i32 %12, %13, !dbg !816
  %conv13 = zext i32 %div12 to i64, !dbg !816
  %call14 = tail call noalias i8* @calloc(i64 %conv13, i64 8) #8, !dbg !816
  %14 = bitcast i8* %call14 to double*, !dbg !816
  store double* %14, double** @BUCFMAD, align 8, !dbg !816, !tbaa !804
  %cmp15 = icmp eq i8* %call14, null, !dbg !818
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !818

if.then17:                                        ; preds = %if.end9
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !819
  %.pre39 = load %struct.ImageParameters** @img, align 8, !dbg !821, !tbaa !804
  %.pre40 = load %struct.InputParameters** @input, align 8, !dbg !821, !tbaa !804
  br label %if.end18, !dbg !822

if.end18:                                         ; preds = %if.then17, %if.end9
  %15 = phi %struct.InputParameters* [ %.pre40, %if.then17 ], [ %10, %if.end9 ]
  %16 = phi %struct.ImageParameters* [ %.pre39, %if.then17 ], [ %11, %if.end9 ]
  %FrameSizeInMbs19 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 111, !dbg !821
  %17 = load i32* %FrameSizeInMbs19, align 4, !dbg !821, !tbaa !807
  %basicunit20 = getelementptr inbounds %struct.InputParameters* %15, i64 0, i32 130, !dbg !821
  %18 = load i32* %basicunit20, align 4, !dbg !821, !tbaa !807
  %div21 = udiv i32 %17, %18, !dbg !821
  %conv22 = zext i32 %div21 to i64, !dbg !821
  %call23 = tail call noalias i8* @calloc(i64 %conv22, i64 8) #8, !dbg !821
  %19 = bitcast i8* %call23 to double*, !dbg !821
  store double* %19, double** @FCBUCFMAD, align 8, !dbg !821, !tbaa !804
  %cmp24 = icmp eq i8* %call23, null, !dbg !823
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !823

if.then26:                                        ; preds = %if.end18
  tail call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8]* @.str3, i64 0, i64 0)) #8, !dbg !824
  %.pre41 = load %struct.ImageParameters** @img, align 8, !dbg !826, !tbaa !804
  %.pre42 = load %struct.InputParameters** @input, align 8, !dbg !826, !tbaa !804
  br label %if.end27, !dbg !827

if.end27:                                         ; preds = %if.then26, %if.end18
  %20 = phi %struct.InputParameters* [ %.pre42, %if.then26 ], [ %15, %if.end18 ]
  %21 = phi %struct.ImageParameters* [ %.pre41, %if.then26 ], [ %16, %if.end18 ]
  %FrameSizeInMbs28 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 111, !dbg !826
  %22 = load i32* %FrameSizeInMbs28, align 4, !dbg !826, !tbaa !807
  %basicunit29 = getelementptr inbounds %struct.InputParameters* %20, i64 0, i32 130, !dbg !826
  %23 = load i32* %basicunit29, align 4, !dbg !826, !tbaa !807
  %div30 = udiv i32 %22, %23, !dbg !826
  %conv31 = zext i32 %div30 to i64, !dbg !826
  %call32 = tail call noalias i8* @calloc(i64 %conv31, i64 8) #8, !dbg !826
  %24 = bitcast i8* %call32 to double*, !dbg !826
  store double* %24, double** @FCBUPFMAD, align 8, !dbg !826, !tbaa !804
  %cmp33 = icmp eq i8* %call32, null, !dbg !828
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !828

if.then35:                                        ; preds = %if.end27
  tail call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !829
  br label %if.end36, !dbg !831

if.end36:                                         ; preds = %if.then35, %if.end27
  ret void, !dbg !832
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @rc_free() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !833, !tbaa !804
  %MADofMB = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 131, !dbg !833
  %1 = load double** %MADofMB, align 8, !dbg !833, !tbaa !804
  %cmp = icmp eq double* %1, null, !dbg !833
  br i1 %cmp, label %if.end, label %if.then, !dbg !833

if.then:                                          ; preds = %entry
  %2 = bitcast double* %1 to i8*, !dbg !834
  tail call void @free(i8* %2) #8, !dbg !834
  %3 = load %struct.ImageParameters** @img, align 8, !dbg !836, !tbaa !804
  %MADofMB2 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 131, !dbg !836
  store double* null, double** %MADofMB2, align 8, !dbg !836, !tbaa !804
  br label %if.end, !dbg !837

if.end:                                           ; preds = %entry, %if.then
  %4 = load double** @BUPFMAD, align 8, !dbg !838, !tbaa !804
  %cmp3 = icmp eq double* %4, null, !dbg !838
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !838

if.then4:                                         ; preds = %if.end
  %5 = bitcast double* %4 to i8*, !dbg !839
  tail call void @free(i8* %5) #8, !dbg !839
  store double* null, double** @BUPFMAD, align 8, !dbg !841, !tbaa !804
  br label %if.end5, !dbg !842

if.end5:                                          ; preds = %if.end, %if.then4
  %6 = load double** @BUCFMAD, align 8, !dbg !843, !tbaa !804
  %cmp6 = icmp eq double* %6, null, !dbg !843
  br i1 %cmp6, label %if.end8, label %if.then7, !dbg !843

if.then7:                                         ; preds = %if.end5
  %7 = bitcast double* %6 to i8*, !dbg !844
  tail call void @free(i8* %7) #8, !dbg !844
  store double* null, double** @BUCFMAD, align 8, !dbg !846, !tbaa !804
  br label %if.end8, !dbg !847

if.end8:                                          ; preds = %if.end5, %if.then7
  %8 = load double** @FCBUCFMAD, align 8, !dbg !848, !tbaa !804
  %cmp9 = icmp eq double* %8, null, !dbg !848
  br i1 %cmp9, label %if.end11, label %if.then10, !dbg !848

if.then10:                                        ; preds = %if.end8
  %9 = bitcast double* %8 to i8*, !dbg !849
  tail call void @free(i8* %9) #8, !dbg !849
  store double* null, double** @FCBUCFMAD, align 8, !dbg !851, !tbaa !804
  br label %if.end11, !dbg !852

if.end11:                                         ; preds = %if.end8, %if.then10
  %10 = load double** @FCBUPFMAD, align 8, !dbg !853, !tbaa !804
  %cmp12 = icmp eq double* %10, null, !dbg !853
  br i1 %cmp12, label %if.end14, label %if.then13, !dbg !853

if.then13:                                        ; preds = %if.end11
  %11 = bitcast double* %10 to i8*, !dbg !854
  tail call void @free(i8* %11) #8, !dbg !854
  store double* null, double** @FCBUPFMAD, align 8, !dbg !856, !tbaa !804
  br label %if.end14, !dbg !857

if.end14:                                         ; preds = %if.end11, %if.then13
  ret void, !dbg !858
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @rc_init_seq() #0 {
entry:
  store i32 0, i32* @Xp, align 4, !dbg !859, !tbaa !807
  store i32 0, i32* @Xb, align 4, !dbg !860, !tbaa !807
  %0 = load %struct.InputParameters** @input, align 8, !dbg !861, !tbaa !804
  %bit_rate = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 128, !dbg !861
  %1 = load i32* %bit_rate, align 4, !dbg !861, !tbaa !807
  %conv = sitofp i32 %1 to double, !dbg !861
  store double %conv, double* @bit_rate, align 8, !dbg !861, !tbaa !862
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !863, !tbaa !804
  %framerate = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 12, !dbg !863
  %3 = load float* %framerate, align 4, !dbg !863, !tbaa !864
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34, !dbg !863
  %4 = load i32* %successive_Bframe, align 4, !dbg !863, !tbaa !807
  %add = add nsw i32 %4, 1, !dbg !863
  %conv1 = sitofp i32 %add to float, !dbg !863
  %mul = fmul float %3, %conv1, !dbg !863
  %jumpd = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 5, !dbg !863
  %5 = load i32* %jumpd, align 4, !dbg !863, !tbaa !807
  %add2 = add nsw i32 %5, 1, !dbg !863
  %conv3 = sitofp i32 %add2 to float, !dbg !863
  %div = fdiv float %mul, %conv3, !dbg !863
  %conv4 = fpext float %div to double, !dbg !863
  store double %conv4, double* @frame_rate, align 8, !dbg !863, !tbaa !862
  store double %conv, double* @PreviousBit_Rate, align 8, !dbg !865, !tbaa !862
  %height = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 15, !dbg !866
  %6 = load i32* %height, align 4, !dbg !866, !tbaa !807
  %width = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 13, !dbg !866
  %7 = load i32* %width, align 4, !dbg !866, !tbaa !807
  %mul5 = mul nsw i32 %7, %6, !dbg !866
  %div6 = sdiv i32 %mul5, 256, !dbg !866
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 136, !dbg !866
  store i32 %div6, i32* %Frame_Total_Number_MB, align 4, !dbg !866, !tbaa !807
  %basicunit = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 130, !dbg !867
  %8 = load i32* %basicunit, align 4, !dbg !867, !tbaa !807
  %cmp = icmp sgt i32 %8, %div6, !dbg !867
  br i1 %cmp, label %if.then, label %if.end, !dbg !867

if.then:                                          ; preds = %entry
  store i32 %div6, i32* %basicunit, align 4, !dbg !868, !tbaa !807
  %.pre = load i32* %Frame_Total_Number_MB, align 4, !dbg !869, !tbaa !807
  br label %if.end, !dbg !868

if.end:                                           ; preds = %if.then, %entry
  %9 = phi i32 [ %.pre, %if.then ], [ %div6, %entry ]
  %10 = phi i32 [ %div6, %if.then ], [ %8, %entry ]
  %cmp13 = icmp slt i32 %10, %9, !dbg !869
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !869

if.then15:                                        ; preds = %if.end
  %div18 = sdiv i32 %9, %10, !dbg !870
  store i32 %div18, i32* @TotalNumberofBasicUnit, align 4, !dbg !870, !tbaa !807
  br label %if.end19, !dbg !870

if.end19:                                         ; preds = %if.then15, %if.end
  store double 4.000000e+00, double* @MINVALUE, align 8, !dbg !871, !tbaa !862
  %mul20 = fmul double %conv, 2.560000e+00, !dbg !872
  store double %mul20, double* @BufferSize, align 8, !dbg !872, !tbaa !862
  store double 0.000000e+00, double* @CurrentBufferFullness, align 8, !dbg !873, !tbaa !862
  store double 0.000000e+00, double* @GOPTargetBufferLevel, align 8, !dbg !874, !tbaa !862
  %mul21 = fmul double %mul20, 8.000000e-01, !dbg !875
  store double %mul21, double* @InitialDelayOffset, align 8, !dbg !875, !tbaa !862
  store i32 0, i32* @m_windowSize, align 4, !dbg !876, !tbaa !807
  store i32 0, i32* @MADm_windowSize, align 4, !dbg !877, !tbaa !807
  %NumberofCodedBFrame = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 126, !dbg !878
  store i32 0, i32* %NumberofCodedBFrame, align 4, !dbg !878, !tbaa !807
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 127, !dbg !879
  store i32 0, i32* %NumberofCodedPFrame, align 4, !dbg !879, !tbaa !807
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 128, !dbg !880
  store i32 0, i32* %NumberofGOP, align 4, !dbg !880, !tbaa !807
  store i32 0, i32* @R, align 4, !dbg !881, !tbaa !807
  %11 = load i32* %successive_Bframe, align 4, !dbg !882, !tbaa !807
  %cmp23 = icmp sgt i32 %11, 0, !dbg !882
  %. = select i1 %cmp23, double 2.500000e-01, double 5.000000e-01, !dbg !883
  %.89 = select i1 %cmp23, double 9.000000e-01, double 5.000000e-01, !dbg !883
  store double %., double* @GAMMAP, align 8, !dbg !885, !tbaa !862
  store double %.89, double* @BETAP, align 8, !dbg !887, !tbaa !862
  store i32 0, i32* @PPreHeader, align 4, !dbg !888, !tbaa !807
  store double %conv, double* @Pm_X1, align 8, !dbg !889, !tbaa !862
  store double 0.000000e+00, double* @Pm_X2, align 8, !dbg !890, !tbaa !862
  store double 1.000000e+00, double* @PMADPictureC1, align 8, !dbg !891, !tbaa !862
  store double 0.000000e+00, double* @PMADPictureC2, align 8, !dbg !892, !tbaa !862
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !37), !dbg !893
  call void @llvm.memset.p0i8.i64(i8* bitcast ([20 x double]* @Pm_rgQp to i8*), i8 0, i64 160, i32 16, i1 false), !dbg !895
  call void @llvm.memset.p0i8.i64(i8* bitcast ([20 x double]* @Pm_rgRp to i8*), i8 0, i64 160, i32 16, i1 false), !dbg !897
  call void @llvm.memset.p0i8.i64(i8* bitcast ([21 x double]* @PPictureMAD to i8*), i8 0, i64 168, i32 16, i1 false), !dbg !898
  store i32 2, i32* @PDuantQp, align 4, !dbg !899, !tbaa !807
  store i32 0, i32* @PAveHeaderBits1, align 4, !dbg !900, !tbaa !807
  store i32 0, i32* @PAveHeaderBits3, align 4, !dbg !901, !tbaa !807
  %12 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !902, !tbaa !807
  %cmp34 = icmp sgt i32 %12, 8, !dbg !902
  %.90 = select i1 %cmp34, i32 1, i32 2, !dbg !903
  store i32 %.90, i32* @DDquant, align 4, !dbg !903, !tbaa !807
  %13 = load i32* %width, align 4, !dbg !904, !tbaa !807
  %div40 = sdiv i32 %13, 16, !dbg !904
  store i32 %div40, i32* @MBPerRow, align 4, !dbg !904, !tbaa !807
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 134, !dbg !905
  store i32 0, i32* %FieldControl, align 4, !dbg !905, !tbaa !807
  store i32 51, i32* @RC_MAX_QUANT, align 4, !dbg !906, !tbaa !807
  store i32 0, i32* @RC_MIN_QUANT, align 4, !dbg !907, !tbaa !807
  %14 = load i32* %width, align 4, !dbg !908, !tbaa !807
  %conv43 = sitofp i32 %14 to double, !dbg !908
  %mul44 = fmul double %conv4, %conv43, !dbg !908
  %15 = load i32* %height, align 4, !dbg !908, !tbaa !807
  %conv46 = sitofp i32 %15 to double, !dbg !908
  %mul47 = fmul double %mul44, %conv46, !dbg !908
  %div48 = fdiv double %conv, %mul47, !dbg !908
  tail call void @llvm.dbg.value(metadata !{double %div48}, i64 0, metadata !34), !dbg !908
  switch i32 %14, label %if.else58 [
    i32 176, label %if.end60
    i32 352, label %if.then57
  ], !dbg !909

if.then57:                                        ; preds = %if.end19
  tail call void @llvm.dbg.value(metadata !910, i64 0, metadata !30), !dbg !911
  tail call void @llvm.dbg.value(metadata !913, i64 0, metadata !32), !dbg !914
  tail call void @llvm.dbg.value(metadata !915, i64 0, metadata !33), !dbg !916
  br label %if.end60, !dbg !917

if.else58:                                        ; preds = %if.end19
  tail call void @llvm.dbg.value(metadata !913, i64 0, metadata !30), !dbg !918
  tail call void @llvm.dbg.value(metadata !920, i64 0, metadata !32), !dbg !921
  tail call void @llvm.dbg.value(metadata !922, i64 0, metadata !33), !dbg !923
  br label %if.end60

if.end60:                                         ; preds = %if.end19, %if.then57, %if.else58
  %L2.0 = phi double [ 6.000000e-01, %if.then57 ], [ 1.400000e+00, %if.else58 ], [ 3.000000e-01, %if.end19 ]
  %L3.0 = phi double [ 1.200000e+00, %if.then57 ], [ 2.400000e+00, %if.else58 ], [ 6.000000e-01, %if.end19 ]
  %L1.0 = phi double [ 2.000000e-01, %if.then57 ], [ 6.000000e-01, %if.else58 ], [ 1.000000e-01, %if.end19 ]
  %SeinitialQP = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 129, !dbg !924
  %16 = load i32* %SeinitialQP, align 4, !dbg !924, !tbaa !807
  %cmp61 = icmp eq i32 %16, 0, !dbg !924
  br i1 %cmp61, label %if.then63, label %if.end80, !dbg !924

if.then63:                                        ; preds = %if.end60
  %cmp64 = fcmp ugt double %div48, %L1.0, !dbg !925
  br i1 %cmp64, label %if.else67, label %if.end78, !dbg !925

if.else67:                                        ; preds = %if.then63
  %cmp68 = fcmp ugt double %div48, %L2.0, !dbg !927
  br i1 %cmp68, label %if.else71, label %if.end78, !dbg !927

if.else71:                                        ; preds = %if.else67
  %cmp72 = fcmp ugt double %div48, %L3.0, !dbg !928
  %.91 = select i1 %cmp72, i32 10, i32 20
  br label %if.end78

if.end78:                                         ; preds = %if.else71, %if.else67, %if.then63
  %qp.0 = phi i32 [ 35, %if.then63 ], [ 25, %if.else67 ], [ %.91, %if.else71 ]
  store i32 %qp.0, i32* %SeinitialQP, align 4, !dbg !929, !tbaa !807
  br label %if.end80, !dbg !930

if.end80:                                         ; preds = %if.end78, %if.end60
  ret void, !dbg !931
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #3

; Function Attrs: nounwind optsize uwtable
define void @rc_init_GOP(i32 %np, i32 %nb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %np}, i64 0, metadata !42), !dbg !932
  tail call void @llvm.dbg.value(metadata !{i32 %nb}, i64 0, metadata !43), !dbg !932
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !44), !dbg !933
  %0 = load i32* @R, align 4, !dbg !934, !tbaa !807
  %conv = sitofp i32 %0 to double, !dbg !935
  %1 = load double* @bit_rate, align 8, !dbg !935, !tbaa !862
  %2 = load double* @frame_rate, align 8, !dbg !935, !tbaa !862
  %div = fdiv double %1, %2, !dbg !935
  %add = fadd double %conv, %div, !dbg !935
  %conv1 = fptosi double %add to i64, !dbg !935
  store i64 %conv1, i64* @LowerBound, align 8, !dbg !935, !tbaa !936
  %3 = load double* @InitialDelayOffset, align 8, !dbg !937, !tbaa !862
  %add3 = fadd double %conv, %3, !dbg !937
  %conv4 = fptosi double %add3 to i64, !dbg !937
  store i64 %conv4, i64* @UpperBound1, align 8, !dbg !937, !tbaa !936
  %add5 = add i32 %np, 1, !dbg !938
  %add6 = add i32 %add5, %nb, !dbg !938
  %conv7 = sitofp i32 %add6 to double, !dbg !938
  %mul = fmul double %conv7, %1, !dbg !938
  %div8 = fdiv double %mul, %2, !dbg !938
  %add9 = fadd double %div8, 5.000000e-01, !dbg !938
  %call = tail call double @floor(double %add9) #9, !dbg !938
  %conv10 = fptosi double %call to i32, !dbg !938
  tail call void @llvm.dbg.value(metadata !{i32 %conv10}, i64 0, metadata !48), !dbg !938
  %add11 = add nsw i32 %0, %conv10, !dbg !939
  store i32 %add11, i32* @R, align 4, !dbg !939, !tbaa !807
  store i32 %np, i32* @Np, align 4, !dbg !940, !tbaa !807
  store i32 %nb, i32* @Nb, align 4, !dbg !941, !tbaa !807
  store i32 0, i32* @GOPOverdue, align 4, !dbg !942, !tbaa !805
  %4 = load %struct.ImageParameters** @img, align 8, !dbg !943, !tbaa !804
  %IFLAG = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 137, !dbg !943
  store i32 1, i32* %IFLAG, align 4, !dbg !943, !tbaa !807
  store i32 %np, i32* @TotalPFrame, align 4, !dbg !944, !tbaa !807
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 128, !dbg !945
  %5 = load i32* %NumberofGOP, align 4, !dbg !945, !tbaa !807
  %inc = add nsw i32 %5, 1, !dbg !945
  store i32 %inc, i32* %NumberofGOP, align 4, !dbg !945, !tbaa !807
  %cmp18 = icmp eq i32 %5, 0, !dbg !946
  %6 = load %struct.InputParameters** @input, align 8, !dbg !947, !tbaa !804
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !946

if.then20:                                        ; preds = %entry
  %SeinitialQP = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 129, !dbg !947
  %7 = load i32* %SeinitialQP, align 4, !dbg !947, !tbaa !807
  store i32 %7, i32* @MyInitialQp, align 4, !dbg !947, !tbaa !807
  %sub21 = add nsw i32 %7, -1, !dbg !949
  store i32 %sub21, i32* @PreviousQp2, align 4, !dbg !949, !tbaa !807
  store i32 %7, i32* @QPLastGOP, align 4, !dbg !950, !tbaa !807
  %TotalQpforPPicture84.pre = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 129, !dbg !951
  %NumberofPPicture85.pre = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 130, !dbg !952
  br label %if.end83, !dbg !953

if.else:                                          ; preds = %entry
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 91, !dbg !954
  %8 = load i32* %PicInterlace, align 4, !dbg !954, !tbaa !807
  %cmp22 = icmp eq i32 %8, 2, !dbg !954
  br i1 %cmp22, label %if.then24, label %lor.lhs.false, !dbg !954

lor.lhs.false:                                    ; preds = %if.else
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 92, !dbg !954
  %9 = load i32* %MbInterlace, align 4, !dbg !954, !tbaa !807
  %tobool = icmp eq i32 %9, 0, !dbg !954
  br i1 %tobool, label %lor.lhs.false.if.end33_crit_edge, label %if.then24, !dbg !954

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  %.pre = load i32* @QPLastPFrame, align 4, !dbg !956, !tbaa !807
  %TotalQpforPPicture34.pre = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 129, !dbg !957
  br label %if.end33, !dbg !954

if.then24:                                        ; preds = %lor.lhs.false, %if.else
  %FieldFrame = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 135, !dbg !958
  %10 = load i32* %FieldFrame, align 4, !dbg !958, !tbaa !807
  %cmp25 = icmp eq i32 %10, 1, !dbg !958
  br i1 %cmp25, label %if.then27, label %if.else29, !dbg !958

if.then27:                                        ; preds = %if.then24
  %11 = load i32* @FrameQPBuffer, align 4, !dbg !960, !tbaa !807
  %TotalQpforPPicture = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 129, !dbg !960
  %12 = load i32* %TotalQpforPPicture, align 4, !dbg !960, !tbaa !807
  %add28 = add nsw i32 %12, %11, !dbg !960
  store i32 %add28, i32* %TotalQpforPPicture, align 4, !dbg !960, !tbaa !807
  %13 = load i32* @FrameQPBuffer, align 4, !dbg !962, !tbaa !807
  store i32 %13, i32* @QPLastPFrame, align 4, !dbg !962, !tbaa !807
  br label %if.end33, !dbg !963

if.else29:                                        ; preds = %if.then24
  %14 = load i32* @FieldQPBuffer, align 4, !dbg !964, !tbaa !807
  %TotalQpforPPicture30 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 129, !dbg !964
  %15 = load i32* %TotalQpforPPicture30, align 4, !dbg !964, !tbaa !807
  %add31 = add nsw i32 %15, %14, !dbg !964
  store i32 %add31, i32* %TotalQpforPPicture30, align 4, !dbg !964, !tbaa !807
  %16 = load i32* @FieldQPBuffer, align 4, !dbg !966, !tbaa !807
  store i32 %16, i32* @QPLastPFrame, align 4, !dbg !966, !tbaa !807
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false.if.end33_crit_edge, %if.then27, %if.else29
  %TotalQpforPPicture34.pre-phi = phi i32* [ %TotalQpforPPicture34.pre, %lor.lhs.false.if.end33_crit_edge ], [ %TotalQpforPPicture, %if.then27 ], [ %TotalQpforPPicture30, %if.else29 ], !dbg !957
  %17 = phi i32 [ %.pre, %lor.lhs.false.if.end33_crit_edge ], [ %13, %if.then27 ], [ %16, %if.else29 ]
  %18 = load i32* %TotalQpforPPicture34.pre-phi, align 4, !dbg !957, !tbaa !807
  %conv35 = sitofp i32 %18 to double, !dbg !957
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 130, !dbg !957
  %19 = load i32* %NumberofPPicture, align 4, !dbg !957, !tbaa !807
  %conv37 = sitofp i32 %19 to double, !dbg !957
  %div38 = fdiv double %conv35, %conv37, !dbg !957
  %add39 = fadd double %div38, 5.000000e-01, !dbg !957
  %conv40 = fptosi double %add39 to i32, !dbg !957
  %div45 = fdiv double %conv7, 1.500000e+01, !dbg !967
  %add46 = fadd double %div45, 5.000000e-01, !dbg !967
  %conv47 = fptosi double %add46 to i32, !dbg !967
  tail call void @llvm.dbg.value(metadata !{i32 %conv47}, i64 0, metadata !49), !dbg !967
  %cmp48 = icmp sgt i32 %conv47, 2, !dbg !968
  %.conv47 = select i1 %cmp48, i32 2, i32 %conv47, !dbg !968
  tail call void @llvm.dbg.value(metadata !{i32 %.conv47}, i64 0, metadata !49), !dbg !969
  %sub52 = sub nsw i32 %conv40, %.conv47, !dbg !970
  %sub53 = add nsw i32 %17, -2, !dbg !956
  %cmp54 = icmp sgt i32 %sub52, %sub53, !dbg !956
  %dec = sext i1 %cmp54 to i32, !dbg !956
  %dec.sub52 = add nsw i32 %sub52, %dec, !dbg !956
  %20 = load i32* @QPLastGOP, align 4, !dbg !971, !tbaa !807
  %sub58 = add nsw i32 %20, -2, !dbg !971
  %cmp59 = icmp slt i32 %sub58, %dec.sub52, !dbg !971
  %.sub58 = select i1 %cmp59, i32 %dec.sub52, i32 %sub58, !dbg !971
  %add62 = add nsw i32 %20, 2, !dbg !972
  %cmp63 = icmp slt i32 %add62, %.sub58, !dbg !972
  %cond69 = select i1 %cmp63, i32 %add62, i32 %.sub58, !dbg !972
  %21 = load i32* @RC_MAX_QUANT, align 4, !dbg !973, !tbaa !807
  %cmp70 = icmp slt i32 %21, %cond69, !dbg !973
  %cond75 = select i1 %cmp70, i32 %21, i32 %cond69, !dbg !973
  %22 = load i32* @RC_MIN_QUANT, align 4, !dbg !974, !tbaa !807
  %cmp76 = icmp slt i32 %22, %cond75, !dbg !974
  %cond81 = select i1 %cmp76, i32 %cond75, i32 %22, !dbg !974
  store i32 %cond81, i32* @PAverageQp, align 4, !dbg !974, !tbaa !807
  store i32 %cond81, i32* @MyInitialQp, align 4, !dbg !975, !tbaa !807
  store i32 %cond81, i32* @QPLastGOP, align 4, !dbg !976, !tbaa !807
  store i32 %cond81, i32* @Pm_Qp, align 4, !dbg !977, !tbaa !807
  store i32 %cond81, i32* @PAveFrameQP, align 4, !dbg !978, !tbaa !807
  %23 = load i32* @PreviousQp2, align 4, !dbg !979, !tbaa !807
  store i32 %23, i32* @PreviousQp1, align 4, !dbg !979, !tbaa !807
  %sub82 = add nsw i32 %cond81, -1, !dbg !980
  store i32 %sub82, i32* @PreviousQp2, align 4, !dbg !980, !tbaa !807
  br label %if.end83

if.end83:                                         ; preds = %if.end33, %if.then20
  %NumberofPPicture85.pre-phi = phi i32* [ %NumberofPPicture, %if.end33 ], [ %NumberofPPicture85.pre, %if.then20 ], !dbg !952
  %TotalQpforPPicture84.pre-phi = phi i32* [ %TotalQpforPPicture34.pre-phi, %if.end33 ], [ %TotalQpforPPicture84.pre, %if.then20 ], !dbg !951
  store i32 0, i32* %TotalQpforPPicture84.pre-phi, align 4, !dbg !951, !tbaa !807
  store i32 0, i32* %NumberofPPicture85.pre-phi, align 4, !dbg !952, !tbaa !807
  store i32 0, i32* @NumberofBFrames, align 4, !dbg !981, !tbaa !807
  ret void, !dbg !982
}

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #4

; Function Attrs: nounwind optsize uwtable
define void @rc_init_pict(i32 %fieldpic, i32 %topfield, i32 %targetcomputation) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fieldpic}, i64 0, metadata !54), !dbg !983
  tail call void @llvm.dbg.value(metadata !{i32 %topfield}, i64 0, metadata !55), !dbg !983
  tail call void @llvm.dbg.value(metadata !{i32 %targetcomputation}, i64 0, metadata !56), !dbg !983
  %0 = load %struct.InputParameters** @input, align 8, !dbg !984, !tbaa !804
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 92, !dbg !984
  %1 = load i32* %MbInterlace, align 4, !dbg !984, !tbaa !807
  %tobool = icmp eq i32 %1, 0, !dbg !984
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !985, !tbaa !804
  br i1 %tobool, label %if.end, label %if.then, !dbg !984

if.then:                                          ; preds = %entry
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 136, !dbg !986
  %2 = load i32* %Frame_Total_Number_MB, align 4, !dbg !986, !tbaa !807
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 139, !dbg !986
  %3 = load i32* %BasicUnit, align 4, !dbg !986, !tbaa !807
  %div = sdiv i32 %2, %3, !dbg !986
  store i32 %div, i32* @TotalNumberofBasicUnit, align 4, !dbg !986, !tbaa !807
  br label %if.end, !dbg !986

if.end:                                           ; preds = %entry, %if.then
  %NumberofCodedMacroBlocks = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 138, !dbg !985
  store i32 0, i32* %NumberofCodedMacroBlocks, align 4, !dbg !985, !tbaa !807
  %channel_type = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 131, !dbg !987
  %4 = load i32* %channel_type, align 4, !dbg !987, !tbaa !807
  %cmp = icmp eq i32 %4, 1, !dbg !987
  br i1 %cmp, label %if.then1, label %if.end9, !dbg !987

if.then1:                                         ; preds = %if.end
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127, !dbg !988
  %5 = load i32* %NumberofCodedPFrame, align 4, !dbg !988, !tbaa !807
  switch i32 %5, label %if.end9 [
    i32 58, label %if.then3
    i32 59, label %if.then6
  ], !dbg !988

if.then3:                                         ; preds = %if.then1
  %6 = load double* @bit_rate, align 8, !dbg !990, !tbaa !862
  %mul = fmul double %6, 1.500000e+00, !dbg !990
  store double %mul, double* @bit_rate, align 8, !dbg !990, !tbaa !862
  br label %if.end9, !dbg !990

if.then6:                                         ; preds = %if.then1
  %7 = load double* @bit_rate, align 8, !dbg !991, !tbaa !862
  store double %7, double* @PreviousBit_Rate, align 8, !dbg !991, !tbaa !862
  br label %if.end9, !dbg !991

if.end9:                                          ; preds = %if.then1, %if.then3, %if.then6, %if.end
  %tobool10 = icmp ne i32 %fieldpic, 0, !dbg !992
  %tobool10.not = xor i1 %tobool10, true, !dbg !992
  %tobool11 = icmp eq i32 %topfield, 0, !dbg !992
  %or.cond = and i1 %tobool11, %tobool10.not, !dbg !992
  %tobool12 = icmp eq i32 %targetcomputation, 0, !dbg !992
  %or.cond441 = or i1 %or.cond, %tobool12, !dbg !992
  br i1 %or.cond441, label %if.end383, label %if.then13, !dbg !992

if.then13:                                        ; preds = %if.end9
  %type = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 6, !dbg !993
  %8 = load i32* %type, align 4, !dbg !993, !tbaa !807
  switch i32 %8, label %if.end383 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb172
  ], !dbg !993

sw.bb:                                            ; preds = %if.then13
  %9 = load double* @PreviousBit_Rate, align 8, !dbg !995, !tbaa !862
  %10 = load double* @bit_rate, align 8, !dbg !995, !tbaa !862
  %cmp14 = fcmp une double %9, %10, !dbg !995
  br i1 %cmp14, label %if.then15, label %if.end21, !dbg !995

if.then15:                                        ; preds = %sw.bb
  %sub = fsub double %10, %9, !dbg !997
  %11 = load i32* @Np, align 4, !dbg !997, !tbaa !807
  %12 = load i32* @Nb, align 4, !dbg !997, !tbaa !807
  %add = add nsw i32 %12, %11, !dbg !997
  %conv = sitofp i32 %add to double, !dbg !997
  %mul16 = fmul double %sub, %conv, !dbg !997
  %13 = load double* @frame_rate, align 8, !dbg !997, !tbaa !862
  %div17 = fdiv double %mul16, %13, !dbg !997
  %add18 = fadd double %div17, 5.000000e-01, !dbg !997
  %call = tail call double @floor(double %add18) #9, !dbg !997
  %conv19 = fptosi double %call to i32, !dbg !997
  %14 = load i32* @R, align 4, !dbg !997, !tbaa !807
  %add20 = add nsw i32 %14, %conv19, !dbg !997
  store i32 %add20, i32* @R, align 4, !dbg !997, !tbaa !807
  br label %if.end21, !dbg !997

if.end21:                                         ; preds = %if.then15, %sw.bb
  %BasicUnit22 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 139, !dbg !998
  %15 = load i32* %BasicUnit22, align 4, !dbg !998, !tbaa !807
  %Frame_Total_Number_MB23 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 136, !dbg !998
  %16 = load i32* %Frame_Total_Number_MB23, align 4, !dbg !998, !tbaa !807
  %cmp24 = icmp eq i32 %15, %16, !dbg !998
  br i1 %cmp24, label %if.then26, label %if.else43, !dbg !998

if.then26:                                        ; preds = %if.end21
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 130, !dbg !999
  %17 = load i32* %NumberofPPicture, align 4, !dbg !999, !tbaa !807
  %cmp27 = icmp eq i32 %17, 1, !dbg !999
  br i1 %cmp27, label %if.then29, label %if.else35, !dbg !999

if.then29:                                        ; preds = %if.then26
  %18 = load double* @CurrentBufferFullness, align 8, !dbg !1001, !tbaa !862
  %19 = load double* @GOPTargetBufferLevel, align 8, !dbg !1003, !tbaa !862
  %sub30 = fsub double %18, %19, !dbg !1003
  %20 = load i32* @TotalPFrame, align 4, !dbg !1003, !tbaa !807
  %sub31 = add nsw i32 %20, -1, !dbg !1003
  %conv32 = sitofp i32 %sub31 to double, !dbg !1003
  %div33 = fdiv double %sub30, %conv32, !dbg !1003
  store double %div33, double* @DeltaP, align 8, !dbg !1003, !tbaa !862
  %sub34 = fsub double %18, %div33, !dbg !1004
  store double %sub34, double* @TargetBufferLevel, align 8, !dbg !1004, !tbaa !862
  br label %if.end118, !dbg !1005

if.else35:                                        ; preds = %if.then26
  %cmp37 = icmp sgt i32 %17, 1, !dbg !1006
  br i1 %cmp37, label %if.then39, label %if.end118, !dbg !1006

if.then39:                                        ; preds = %if.else35
  %21 = load double* @DeltaP, align 8, !dbg !1007, !tbaa !862
  %22 = load double* @TargetBufferLevel, align 8, !dbg !1007, !tbaa !862
  %sub40 = fsub double %22, %21, !dbg !1007
  store double %sub40, double* @TargetBufferLevel, align 8, !dbg !1007, !tbaa !862
  br label %if.end118, !dbg !1007

if.else43:                                        ; preds = %if.end21
  %NumberofCodedPFrame44 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127, !dbg !1008
  %23 = load i32* %NumberofCodedPFrame44, align 4, !dbg !1008, !tbaa !807
  %cmp45 = icmp sgt i32 %23, 0, !dbg !1008
  br i1 %cmp45, label %if.then47, label %if.end74, !dbg !1008

if.then47:                                        ; preds = %if.else43
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 91, !dbg !1010
  %24 = load i32* %PicInterlace, align 4, !dbg !1010, !tbaa !807
  %cmp48 = icmp eq i32 %24, 2, !dbg !1010
  br i1 %cmp48, label %land.lhs.true53, label %lor.lhs.false50, !dbg !1010

lor.lhs.false50:                                  ; preds = %if.then47
  %25 = load i32* %MbInterlace, align 4, !dbg !1010, !tbaa !807
  %tobool52 = icmp eq i32 %25, 0, !dbg !1010
  br i1 %tobool52, label %for.cond62.preheader, label %land.lhs.true53, !dbg !1010

land.lhs.true53:                                  ; preds = %lor.lhs.false50, %if.then47
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 134, !dbg !1010
  %26 = load i32* %FieldControl, align 4, !dbg !1010, !tbaa !807
  %cmp54 = icmp eq i32 %26, 1, !dbg !1010
  br i1 %cmp54, label %for.cond.preheader, label %for.cond62.preheader, !dbg !1010

for.cond62.preheader:                             ; preds = %lor.lhs.false50, %land.lhs.true53
  %27 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1012, !tbaa !807
  %cmp63448 = icmp sgt i32 %27, 0, !dbg !1012
  br i1 %cmp63448, label %for.body65.lr.ph, label %if.end74, !dbg !1012

for.body65.lr.ph:                                 ; preds = %for.cond62.preheader
  %28 = load double** @BUCFMAD, align 8, !dbg !1015, !tbaa !804
  %29 = load double** @BUPFMAD, align 8, !dbg !1015, !tbaa !804
  br label %for.body65, !dbg !1012

for.cond.preheader:                               ; preds = %land.lhs.true53
  %30 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1016, !tbaa !807
  %cmp57445 = icmp sgt i32 %30, 0, !dbg !1016
  br i1 %cmp57445, label %for.body.lr.ph, label %if.end74, !dbg !1016

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %31 = load double** @FCBUCFMAD, align 8, !dbg !1019, !tbaa !804
  %32 = load double** @FCBUPFMAD, align 8, !dbg !1019, !tbaa !804
  br label %for.body, !dbg !1016

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %31, i64 %indvars.iv, !dbg !1019
  %33 = load double* %arrayidx, align 8, !dbg !1019, !tbaa !862
  %arrayidx60 = getelementptr inbounds double* %32, i64 %indvars.iv, !dbg !1019
  store double %33, double* %arrayidx60, align 8, !dbg !1019, !tbaa !862
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1016
  %34 = trunc i64 %indvars.iv.next to i32, !dbg !1016
  %cmp57 = icmp slt i32 %34, %30, !dbg !1016
  br i1 %cmp57, label %for.body, label %if.end74, !dbg !1016

for.body65:                                       ; preds = %for.body65.lr.ph, %for.body65
  %indvars.iv450 = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next451, %for.body65 ]
  %arrayidx67 = getelementptr inbounds double* %28, i64 %indvars.iv450, !dbg !1015
  %35 = load double* %arrayidx67, align 8, !dbg !1015, !tbaa !862
  %arrayidx69 = getelementptr inbounds double* %29, i64 %indvars.iv450, !dbg !1015
  store double %35, double* %arrayidx69, align 8, !dbg !1015, !tbaa !862
  %indvars.iv.next451 = add i64 %indvars.iv450, 1, !dbg !1012
  %36 = trunc i64 %indvars.iv.next451 to i32, !dbg !1012
  %cmp63 = icmp slt i32 %36, %27, !dbg !1012
  br i1 %cmp63, label %for.body65, label %if.end74, !dbg !1012

if.end74:                                         ; preds = %for.cond62.preheader, %for.body65, %for.cond.preheader, %for.body, %if.else43
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 128, !dbg !1020
  %37 = load i32* %NumberofGOP, align 4, !dbg !1020, !tbaa !807
  %cmp75 = icmp eq i32 %37, 1, !dbg !1020
  br i1 %cmp75, label %if.then77, label %if.else95, !dbg !1020

if.then77:                                        ; preds = %if.end74
  %NumberofPPicture78 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 130, !dbg !1021
  %38 = load i32* %NumberofPPicture78, align 4, !dbg !1021, !tbaa !807
  %cmp79 = icmp eq i32 %38, 1, !dbg !1021
  br i1 %cmp79, label %if.then81, label %if.else87, !dbg !1021

if.then81:                                        ; preds = %if.then77
  %39 = load double* @CurrentBufferFullness, align 8, !dbg !1023, !tbaa !862
  %40 = load double* @GOPTargetBufferLevel, align 8, !dbg !1025, !tbaa !862
  %sub82 = fsub double %39, %40, !dbg !1025
  %41 = load i32* @TotalPFrame, align 4, !dbg !1025, !tbaa !807
  %sub83 = add nsw i32 %41, -1, !dbg !1025
  %conv84 = sitofp i32 %sub83 to double, !dbg !1025
  %div85 = fdiv double %sub82, %conv84, !dbg !1025
  store double %div85, double* @DeltaP, align 8, !dbg !1025, !tbaa !862
  %sub86 = fsub double %39, %div85, !dbg !1026
  store double %sub86, double* @TargetBufferLevel, align 8, !dbg !1026, !tbaa !862
  br label %if.end118, !dbg !1027

if.else87:                                        ; preds = %if.then77
  %cmp89 = icmp sgt i32 %38, 1, !dbg !1028
  br i1 %cmp89, label %if.then91, label %if.end118, !dbg !1028

if.then91:                                        ; preds = %if.else87
  %42 = load double* @DeltaP, align 8, !dbg !1029, !tbaa !862
  %43 = load double* @TargetBufferLevel, align 8, !dbg !1029, !tbaa !862
  %sub92 = fsub double %43, %42, !dbg !1029
  store double %sub92, double* @TargetBufferLevel, align 8, !dbg !1029, !tbaa !862
  br label %if.end118, !dbg !1029

if.else95:                                        ; preds = %if.end74
  %cmp97 = icmp sgt i32 %37, 1, !dbg !1030
  br i1 %cmp97, label %if.then99, label %if.end118, !dbg !1030

if.then99:                                        ; preds = %if.else95
  %NumberofPPicture100 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 130, !dbg !1031
  %44 = load i32* %NumberofPPicture100, align 4, !dbg !1031, !tbaa !807
  %cmp101 = icmp eq i32 %44, 0, !dbg !1031
  br i1 %cmp101, label %if.then103, label %if.else108, !dbg !1031

if.then103:                                       ; preds = %if.then99
  %45 = load double* @CurrentBufferFullness, align 8, !dbg !1033, !tbaa !862
  %46 = load double* @GOPTargetBufferLevel, align 8, !dbg !1035, !tbaa !862
  %sub104 = fsub double %45, %46, !dbg !1035
  %47 = load i32* @TotalPFrame, align 4, !dbg !1035, !tbaa !807
  %conv105 = sitofp i32 %47 to double, !dbg !1035
  %div106 = fdiv double %sub104, %conv105, !dbg !1035
  store double %div106, double* @DeltaP, align 8, !dbg !1035, !tbaa !862
  %sub107 = fsub double %45, %div106, !dbg !1036
  store double %sub107, double* @TargetBufferLevel, align 8, !dbg !1036, !tbaa !862
  br label %if.end118, !dbg !1037

if.else108:                                       ; preds = %if.then99
  %cmp110 = icmp sgt i32 %44, 0, !dbg !1038
  br i1 %cmp110, label %if.then112, label %if.end118, !dbg !1038

if.then112:                                       ; preds = %if.else108
  %48 = load double* @DeltaP, align 8, !dbg !1039, !tbaa !862
  %49 = load double* @TargetBufferLevel, align 8, !dbg !1039, !tbaa !862
  %sub113 = fsub double %49, %48, !dbg !1039
  store double %sub113, double* @TargetBufferLevel, align 8, !dbg !1039, !tbaa !862
  br label %if.end118, !dbg !1039

if.end118:                                        ; preds = %if.else108, %if.else95, %if.else87, %if.else35, %if.then91, %if.then81, %if.then103, %if.then112, %if.then29, %if.then39
  %NumberofCodedPFrame119 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127, !dbg !1040
  %50 = load i32* %NumberofCodedPFrame119, align 4, !dbg !1040, !tbaa !807
  %cmp120 = icmp eq i32 %50, 1, !dbg !1040
  br i1 %cmp120, label %if.else143.thread, label %if.end123, !dbg !1040

if.else143.thread:                                ; preds = %if.end118
  %51 = load double* @Wp, align 8, !dbg !1041, !tbaa !862
  store double %51, double* @AWp, align 8, !dbg !1041, !tbaa !862
  br label %if.end153, !dbg !1042

if.end123:                                        ; preds = %if.end118
  %.off = add i32 %50, -2, !dbg !1043
  %52 = icmp ult i32 %.off, 6, !dbg !1043
  br i1 %52, label %if.then131, label %if.else143, !dbg !1043

if.then131:                                       ; preds = %if.end123
  %53 = load double* @Wp, align 8, !dbg !1044, !tbaa !862
  %sub133 = add nsw i32 %50, -1, !dbg !1044
  %conv134 = sitofp i32 %sub133 to double, !dbg !1044
  %mul135 = fmul double %conv134, %53, !dbg !1044
  %conv137 = sitofp i32 %50 to double, !dbg !1044
  %div138 = fdiv double %mul135, %conv137, !dbg !1044
  %54 = load double* @AWp, align 8, !dbg !1044, !tbaa !862
  %div141 = fdiv double %54, %conv137, !dbg !1044
  %add142 = fadd double %div138, %div141, !dbg !1044
  store double %add142, double* @AWp, align 8, !dbg !1044, !tbaa !862
  br label %if.end153, !dbg !1044

if.else143:                                       ; preds = %if.end123
  %cmp129 = icmp sgt i32 %50, 1, !dbg !1043
  br i1 %cmp129, label %if.then147, label %if.end153, !dbg !1042

if.then147:                                       ; preds = %if.else143
  %55 = load double* @Wp, align 8, !dbg !1045, !tbaa !862
  %div148 = fmul double %55, 1.250000e-01, !dbg !1045
  %56 = load double* @AWp, align 8, !dbg !1045, !tbaa !862
  %mul149 = fmul double %56, 7.000000e+00, !dbg !1045
  %div150 = fmul double %mul149, 1.250000e-01, !dbg !1045
  %add151 = fadd double %div148, %div150, !dbg !1045
  store double %add151, double* @AWp, align 8, !dbg !1045, !tbaa !862
  br label %if.end153, !dbg !1045

if.end153:                                        ; preds = %if.else143.thread, %if.else143, %if.then147, %if.then131
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34, !dbg !1046
  %57 = load i32* %successive_Bframe, align 4, !dbg !1046, !tbaa !807
  %cmp154 = icmp sgt i32 %57, 0, !dbg !1046
  br i1 %cmp154, label %if.then156, label %sw.epilog, !dbg !1046

if.then156:                                       ; preds = %if.end153
  %58 = load double* @AWp, align 8, !dbg !1047, !tbaa !862
  %add158 = add nsw i32 %57, 1, !dbg !1047
  %conv159 = sitofp i32 %add158 to double, !dbg !1047
  %mul160 = fmul double %conv159, %58, !dbg !1047
  %59 = load double* @bit_rate, align 8, !dbg !1047, !tbaa !862
  %mul161 = fmul double %mul160, %59, !dbg !1047
  %60 = load double* @frame_rate, align 8, !dbg !1047, !tbaa !862
  %61 = load double* @AWb, align 8, !dbg !1047, !tbaa !862
  %conv163 = sitofp i32 %57 to double, !dbg !1047
  %mul164 = fmul double %conv163, %61, !dbg !1047
  %add165 = fadd double %58, %mul164, !dbg !1047
  %mul166 = fmul double %60, %add165, !dbg !1047
  %div167 = fdiv double %mul161, %mul166, !dbg !1047
  %div168 = fdiv double %59, %60, !dbg !1047
  %sub169 = fsub double %div167, %div168, !dbg !1047
  %62 = load double* @TargetBufferLevel, align 8, !dbg !1047, !tbaa !862
  %add170 = fadd double %62, %sub169, !dbg !1047
  store double %add170, double* @TargetBufferLevel, align 8, !dbg !1047, !tbaa !862
  br label %sw.epilog, !dbg !1049

sw.bb172:                                         ; preds = %if.then13
  %63 = load double* @PreviousBit_Rate, align 8, !dbg !1050, !tbaa !862
  %64 = load double* @bit_rate, align 8, !dbg !1050, !tbaa !862
  %cmp173 = fcmp une double %63, %64, !dbg !1050
  br i1 %cmp173, label %if.then175, label %if.end185, !dbg !1050

if.then175:                                       ; preds = %sw.bb172
  %sub176 = fsub double %64, %63, !dbg !1051
  %65 = load i32* @Np, align 4, !dbg !1051, !tbaa !807
  %66 = load i32* @Nb, align 4, !dbg !1051, !tbaa !807
  %add177 = add nsw i32 %66, %65, !dbg !1051
  %conv178 = sitofp i32 %add177 to double, !dbg !1051
  %mul179 = fmul double %sub176, %conv178, !dbg !1051
  %67 = load double* @frame_rate, align 8, !dbg !1051, !tbaa !862
  %div180 = fdiv double %mul179, %67, !dbg !1051
  %add181 = fadd double %div180, 5.000000e-01, !dbg !1051
  %call182 = tail call double @floor(double %add181) #9, !dbg !1051
  %conv183 = fptosi double %call182 to i32, !dbg !1051
  %68 = load i32* @R, align 4, !dbg !1051, !tbaa !807
  %add184 = add nsw i32 %68, %conv183, !dbg !1051
  store i32 %add184, i32* @R, align 4, !dbg !1051, !tbaa !807
  br label %if.end185, !dbg !1051

if.end185:                                        ; preds = %sw.bb172, %if.then175
  %NumberofCodedPFrame186 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127, !dbg !1052
  %69 = load i32* %NumberofCodedPFrame186, align 4, !dbg !1052, !tbaa !807
  %cmp187 = icmp eq i32 %69, 1, !dbg !1052
  %NumberofCodedBFrame = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 126, !dbg !1052
  %70 = load i32* %NumberofCodedBFrame, align 4, !dbg !1052, !tbaa !807
  %cmp190 = icmp eq i32 %70, 1, !dbg !1052
  %or.cond457 = and i1 %cmp187, %cmp190, !dbg !1052
  br i1 %or.cond457, label %if.then192, label %if.else193, !dbg !1052

if.then192:                                       ; preds = %if.end185
  %71 = load double* @Wp, align 8, !dbg !1053, !tbaa !862
  store double %71, double* @AWp, align 8, !dbg !1053, !tbaa !862
  %72 = load double* @Wb, align 8, !dbg !1055, !tbaa !862
  store double %72, double* @AWb, align 8, !dbg !1055, !tbaa !862
  br label %sw.epilog, !dbg !1056

if.else193:                                       ; preds = %if.end185
  %cmp195 = icmp sgt i32 %70, 1, !dbg !1057
  br i1 %cmp195, label %if.then197, label %sw.epilog, !dbg !1057

if.then197:                                       ; preds = %if.else193
  %cmp199 = icmp slt i32 %70, 8, !dbg !1058
  %73 = load double* @Wb, align 8, !dbg !1060, !tbaa !862
  br i1 %cmp199, label %if.then201, label %if.else213, !dbg !1058

if.then201:                                       ; preds = %if.then197
  %sub203 = add nsw i32 %70, -1, !dbg !1060
  %conv204 = sitofp i32 %sub203 to double, !dbg !1060
  %mul205 = fmul double %conv204, %73, !dbg !1060
  %conv207 = sitofp i32 %70 to double, !dbg !1060
  %div208 = fdiv double %mul205, %conv207, !dbg !1060
  %74 = load double* @AWb, align 8, !dbg !1060, !tbaa !862
  %div211 = fdiv double %74, %conv207, !dbg !1060
  %add212 = fadd double %div208, %div211, !dbg !1060
  store double %add212, double* @AWb, align 8, !dbg !1060, !tbaa !862
  br label %sw.epilog, !dbg !1060

if.else213:                                       ; preds = %if.then197
  %div214 = fmul double %73, 1.250000e-01, !dbg !1061
  %75 = load double* @AWb, align 8, !dbg !1061, !tbaa !862
  %mul215 = fmul double %75, 7.000000e+00, !dbg !1061
  %div216 = fmul double %mul215, 1.250000e-01, !dbg !1061
  %add217 = fadd double %div214, %div216, !dbg !1061
  store double %add217, double* @AWb, align 8, !dbg !1061, !tbaa !862
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else193, %if.end153, %if.then192, %if.then201, %if.else213, %if.then156
  %.pr = load i32* %type, align 4, !dbg !1062, !tbaa !807
  %cmp222 = icmp eq i32 %.pr, 0, !dbg !1062
  br i1 %cmp222, label %if.then224, label %if.end383, !dbg !1062

if.then224:                                       ; preds = %sw.epilog
  %BasicUnit225 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 139, !dbg !1063
  %76 = load i32* %BasicUnit225, align 4, !dbg !1063, !tbaa !807
  %Frame_Total_Number_MB226 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 136, !dbg !1063
  %77 = load i32* %Frame_Total_Number_MB226, align 4, !dbg !1063, !tbaa !807
  %cmp227 = icmp eq i32 %76, %77, !dbg !1063
  br i1 %cmp227, label %if.then229, label %if.else264, !dbg !1063

if.then229:                                       ; preds = %if.then224
  %NumberofCodedPFrame230 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127, !dbg !1065
  %78 = load i32* %NumberofCodedPFrame230, align 4, !dbg !1065, !tbaa !807
  %cmp231 = icmp sgt i32 %78, 0, !dbg !1065
  br i1 %cmp231, label %if.then233, label %if.end349, !dbg !1065

if.then233:                                       ; preds = %if.then229
  %79 = load double* @Wp, align 8, !dbg !1067, !tbaa !862
  %80 = load i32* @R, align 4, !dbg !1067, !tbaa !807
  %conv234 = sitofp i32 %80 to double, !dbg !1067
  %mul235 = fmul double %79, %conv234, !dbg !1067
  %81 = load i32* @Np, align 4, !dbg !1067, !tbaa !807
  %conv236 = sitofp i32 %81 to double, !dbg !1067
  %mul237 = fmul double %79, %conv236, !dbg !1067
  %82 = load i32* @Nb, align 4, !dbg !1067, !tbaa !807
  %conv238 = sitofp i32 %82 to double, !dbg !1067
  %83 = load double* @Wb, align 8, !dbg !1067, !tbaa !862
  %mul239 = fmul double %conv238, %83, !dbg !1067
  %add240 = fadd double %mul237, %mul239, !dbg !1067
  %div241 = fdiv double %mul235, %add240, !dbg !1067
  %add242 = fadd double %div241, 5.000000e-01, !dbg !1067
  %call243 = tail call double @floor(double %add242) #9, !dbg !1067
  %conv244 = fptosi double %call243 to i64, !dbg !1067
  %84 = load double* @bit_rate, align 8, !dbg !1069, !tbaa !862
  %85 = load double* @frame_rate, align 8, !dbg !1069, !tbaa !862
  %div245 = fdiv double %84, %85, !dbg !1069
  %86 = load double* @GAMMAP, align 8, !dbg !1069, !tbaa !862
  %87 = load double* @CurrentBufferFullness, align 8, !dbg !1069, !tbaa !862
  %88 = load double* @TargetBufferLevel, align 8, !dbg !1069, !tbaa !862
  %sub246 = fsub double %87, %88, !dbg !1069
  %mul247 = fmul double %86, %sub246, !dbg !1069
  %sub248 = fsub double %div245, %mul247, !dbg !1069
  %add249 = fadd double %sub248, 5.000000e-01, !dbg !1069
  %call250 = tail call double @floor(double %add249) #9, !dbg !1069
  %conv251 = fptosi double %call250 to i64, !dbg !1069
  %cmp252 = icmp sgt i64 %conv251, 0, !dbg !1070
  %cond = select i1 %cmp252, i64 %conv251, i64 0, !dbg !1070
  store i64 %cond, i64* @T1, align 8, !dbg !1070, !tbaa !936
  %89 = load double* @BETAP, align 8, !dbg !1071, !tbaa !862
  %conv254 = sitofp i64 %conv244 to double, !dbg !1071
  %mul255 = fmul double %89, %conv254, !dbg !1071
  %sub256 = fsub double 1.000000e+00, %89, !dbg !1071
  %conv257 = sitofp i64 %cond to double, !dbg !1071
  %mul258 = fmul double %sub256, %conv257, !dbg !1071
  %add259 = fadd double %mul255, %mul258, !dbg !1071
  %add260 = fadd double %add259, 5.000000e-01, !dbg !1071
  %call261 = tail call double @floor(double %add260) #9, !dbg !1071
  %conv262 = fptosi double %call261 to i64, !dbg !1071
  store i64 %conv262, i64* @T, align 8, !dbg !1071, !tbaa !936
  br label %if.end349, !dbg !1072

if.else264:                                       ; preds = %if.then224
  %NumberofGOP265 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 128, !dbg !1073
  %90 = load i32* %NumberofGOP265, align 4, !dbg !1073, !tbaa !807
  %cmp266 = icmp eq i32 %90, 1, !dbg !1073
  br i1 %cmp266, label %land.lhs.true268, label %if.else309, !dbg !1073

land.lhs.true268:                                 ; preds = %if.else264
  %NumberofCodedPFrame269 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127, !dbg !1073
  %91 = load i32* %NumberofCodedPFrame269, align 4, !dbg !1073, !tbaa !807
  %cmp270 = icmp sgt i32 %91, 0, !dbg !1073
  br i1 %cmp270, label %if.then272, label %if.end349, !dbg !1073

if.then272:                                       ; preds = %land.lhs.true268
  %92 = load double* @Wp, align 8, !dbg !1075, !tbaa !862
  %93 = load i32* @R, align 4, !dbg !1075, !tbaa !807
  %conv273 = sitofp i32 %93 to double, !dbg !1075
  %mul274 = fmul double %92, %conv273, !dbg !1075
  %94 = load i32* @Np, align 4, !dbg !1075, !tbaa !807
  %conv275 = sitofp i32 %94 to double, !dbg !1075
  %mul276 = fmul double %92, %conv275, !dbg !1075
  %95 = load i32* @Nb, align 4, !dbg !1075, !tbaa !807
  %conv277 = sitofp i32 %95 to double, !dbg !1075
  %96 = load double* @Wb, align 8, !dbg !1075, !tbaa !862
  %mul278 = fmul double %conv277, %96, !dbg !1075
  %add279 = fadd double %mul276, %mul278, !dbg !1075
  %div280 = fdiv double %mul274, %add279, !dbg !1075
  %add281 = fadd double %div280, 5.000000e-01, !dbg !1075
  %call282 = tail call double @floor(double %add281) #9, !dbg !1075
  %conv283 = fptosi double %call282 to i32, !dbg !1075
  %97 = load double* @bit_rate, align 8, !dbg !1077, !tbaa !862
  %98 = load double* @frame_rate, align 8, !dbg !1077, !tbaa !862
  %div285 = fdiv double %97, %98, !dbg !1077
  %99 = load double* @GAMMAP, align 8, !dbg !1077, !tbaa !862
  %100 = load double* @CurrentBufferFullness, align 8, !dbg !1077, !tbaa !862
  %101 = load double* @TargetBufferLevel, align 8, !dbg !1077, !tbaa !862
  %sub286 = fsub double %100, %101, !dbg !1077
  %mul287 = fmul double %99, %sub286, !dbg !1077
  %sub288 = fsub double %div285, %mul287, !dbg !1077
  %add289 = fadd double %sub288, 5.000000e-01, !dbg !1077
  %call290 = tail call double @floor(double %add289) #9, !dbg !1077
  %conv291 = fptosi double %call290 to i32, !dbg !1077
  %conv292 = sext i32 %conv291 to i64, !dbg !1077
  %cmp293 = icmp sgt i64 %conv292, 0, !dbg !1078
  %cond298 = select i1 %cmp293, i64 %conv292, i64 0, !dbg !1078
  store i64 %cond298, i64* @T1, align 8, !dbg !1078, !tbaa !936
  %102 = load double* @BETAP, align 8, !dbg !1079, !tbaa !862
  %conv299 = sitofp i32 %conv283 to double, !dbg !1079
  %mul300 = fmul double %102, %conv299, !dbg !1079
  %sub301 = fsub double 1.000000e+00, %102, !dbg !1079
  %conv302 = sitofp i64 %cond298 to double, !dbg !1079
  %mul303 = fmul double %sub301, %conv302, !dbg !1079
  %add304 = fadd double %mul300, %mul303, !dbg !1079
  %add305 = fadd double %add304, 5.000000e-01, !dbg !1079
  %call306 = tail call double @floor(double %add305) #9, !dbg !1079
  %conv307 = fptosi double %call306 to i32, !dbg !1079
  %conv308 = sext i32 %conv307 to i64, !dbg !1079
  store i64 %conv308, i64* @T, align 8, !dbg !1079, !tbaa !936
  br label %if.end349, !dbg !1080

if.else309:                                       ; preds = %if.else264
  %cmp311 = icmp sgt i32 %90, 1, !dbg !1081
  br i1 %cmp311, label %if.then313, label %if.end349, !dbg !1081

if.then313:                                       ; preds = %if.else309
  %103 = load double* @Wp, align 8, !dbg !1082, !tbaa !862
  %104 = load i32* @R, align 4, !dbg !1082, !tbaa !807
  %conv314 = sitofp i32 %104 to double, !dbg !1082
  %mul315 = fmul double %103, %conv314, !dbg !1082
  %105 = load i32* @Np, align 4, !dbg !1082, !tbaa !807
  %conv316 = sitofp i32 %105 to double, !dbg !1082
  %mul317 = fmul double %103, %conv316, !dbg !1082
  %106 = load i32* @Nb, align 4, !dbg !1082, !tbaa !807
  %conv318 = sitofp i32 %106 to double, !dbg !1082
  %107 = load double* @Wb, align 8, !dbg !1082, !tbaa !862
  %mul319 = fmul double %conv318, %107, !dbg !1082
  %add320 = fadd double %mul317, %mul319, !dbg !1082
  %div321 = fdiv double %mul315, %add320, !dbg !1082
  %add322 = fadd double %div321, 5.000000e-01, !dbg !1082
  %call323 = tail call double @floor(double %add322) #9, !dbg !1082
  %conv324 = fptosi double %call323 to i64, !dbg !1082
  %108 = load double* @bit_rate, align 8, !dbg !1084, !tbaa !862
  %109 = load double* @frame_rate, align 8, !dbg !1084, !tbaa !862
  %div325 = fdiv double %108, %109, !dbg !1084
  %110 = load double* @GAMMAP, align 8, !dbg !1084, !tbaa !862
  %111 = load double* @CurrentBufferFullness, align 8, !dbg !1084, !tbaa !862
  %112 = load double* @TargetBufferLevel, align 8, !dbg !1084, !tbaa !862
  %sub326 = fsub double %111, %112, !dbg !1084
  %mul327 = fmul double %110, %sub326, !dbg !1084
  %sub328 = fsub double %div325, %mul327, !dbg !1084
  %add329 = fadd double %sub328, 5.000000e-01, !dbg !1084
  %call330 = tail call double @floor(double %add329) #9, !dbg !1084
  %conv331 = fptosi double %call330 to i64, !dbg !1084
  %cmp332 = icmp sgt i64 %conv331, 0, !dbg !1085
  %cond337 = select i1 %cmp332, i64 %conv331, i64 0, !dbg !1085
  store i64 %cond337, i64* @T1, align 8, !dbg !1085, !tbaa !936
  %113 = load double* @BETAP, align 8, !dbg !1086, !tbaa !862
  %conv338 = sitofp i64 %conv324 to double, !dbg !1086
  %mul339 = fmul double %113, %conv338, !dbg !1086
  %sub340 = fsub double 1.000000e+00, %113, !dbg !1086
  %conv341 = sitofp i64 %cond337 to double, !dbg !1086
  %mul342 = fmul double %sub340, %conv341, !dbg !1086
  %add343 = fadd double %mul339, %mul342, !dbg !1086
  %add344 = fadd double %add343, 5.000000e-01, !dbg !1086
  %call345 = tail call double @floor(double %add344) #9, !dbg !1086
  %conv346 = fptosi double %call345 to i64, !dbg !1086
  store i64 %conv346, i64* @T, align 8, !dbg !1086, !tbaa !936
  br label %if.end349, !dbg !1087

if.end349:                                        ; preds = %land.lhs.true268, %if.else309, %if.then229, %if.then272, %if.then313, %if.then233
  %successive_Bframe350 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34, !dbg !1088
  %114 = load i32* %successive_Bframe350, align 4, !dbg !1088, !tbaa !807
  %conv351 = sitofp i32 %114 to double, !dbg !1088
  %mul352 = fmul double %conv351, 0.000000e+00, !dbg !1088
  %sub353 = fsub double 1.000000e+00, %mul352, !dbg !1088
  %115 = load i64* @T, align 8, !dbg !1088, !tbaa !936
  %conv354 = sitofp i64 %115 to double, !dbg !1088
  %mul355 = fmul double %conv354, %sub353, !dbg !1088
  %conv356 = fptosi double %mul355 to i64, !dbg !1088
  %116 = load i64* @LowerBound, align 8, !dbg !1089, !tbaa !936
  %cmp357 = icmp slt i64 %conv356, %116, !dbg !1089
  %cond362 = select i1 %cmp357, i64 %116, i64 %conv356, !dbg !1089
  %117 = load i64* @UpperBound2, align 8, !dbg !1090, !tbaa !936
  %cmp363 = icmp slt i64 %cond362, %117, !dbg !1090
  %cond368 = select i1 %cmp363, i64 %cond362, i64 %117, !dbg !1090
  store i64 %cond368, i64* @T, align 8, !dbg !1090, !tbaa !936
  br i1 %tobool11, label %lor.lhs.false370, label %if.then379, !dbg !1091

lor.lhs.false370:                                 ; preds = %if.end349
  br i1 %tobool10, label %land.lhs.true372, label %if.end401, !dbg !1091

land.lhs.true372:                                 ; preds = %lor.lhs.false370
  %PicInterlace373 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 91, !dbg !1091
  %118 = load i32* %PicInterlace373, align 4, !dbg !1091, !tbaa !807
  %cmp374 = icmp eq i32 %118, 2, !dbg !1091
  br i1 %cmp374, label %if.then379, label %lor.lhs.false376, !dbg !1091

lor.lhs.false376:                                 ; preds = %land.lhs.true372
  %119 = load i32* %MbInterlace, align 4, !dbg !1091, !tbaa !807
  %tobool378 = icmp eq i32 %119, 0, !dbg !1091
  br i1 %tobool378, label %if.end383, label %if.then379, !dbg !1091

if.then379:                                       ; preds = %lor.lhs.false376, %if.end349, %land.lhs.true372
  %conv380 = trunc i64 %cond368 to i32, !dbg !1092
  store i32 %conv380, i32* @T_field, align 4, !dbg !1092, !tbaa !807
  br label %if.end383, !dbg !1092

if.end383:                                        ; preds = %if.then13, %if.end9, %lor.lhs.false376, %sw.epilog, %if.then379
  br i1 %or.cond, label %if.end401, label %if.then387, !dbg !1093

if.then387:                                       ; preds = %if.end383
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 119, !dbg !1094
  store i32 0, i32* %NumberofHeaderBits, align 4, !dbg !1094, !tbaa !807
  %NumberofTextureBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 120, !dbg !1096
  store i32 0, i32* %NumberofTextureBits, align 4, !dbg !1096, !tbaa !807
  %BasicUnit388 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 139, !dbg !1097
  %120 = load i32* %BasicUnit388, align 4, !dbg !1097, !tbaa !807
  %Frame_Total_Number_MB389 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 136, !dbg !1097
  %121 = load i32* %Frame_Total_Number_MB389, align 4, !dbg !1097, !tbaa !807
  %cmp390 = icmp slt i32 %120, %121, !dbg !1097
  br i1 %cmp390, label %if.then392, label %if.end401, !dbg !1097

if.then392:                                       ; preds = %if.then387
  store i32 0, i32* @TotalFrameQP, align 4, !dbg !1098, !tbaa !807
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 121, !dbg !1100
  store i32 0, i32* %NumberofBasicUnitHeaderBits, align 4, !dbg !1100, !tbaa !807
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 122, !dbg !1101
  store i32 0, i32* %NumberofBasicUnitTextureBits, align 4, !dbg !1101, !tbaa !807
  %TotalMADBasicUnit = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 123, !dbg !1102
  store double 0.000000e+00, double* %TotalMADBasicUnit, align 8, !dbg !1102, !tbaa !862
  %FieldControl393 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 134, !dbg !1103
  %122 = load i32* %FieldControl393, align 4, !dbg !1103, !tbaa !807
  %cmp394 = icmp eq i32 %122, 0, !dbg !1103
  %123 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1104, !tbaa !807
  br i1 %cmp394, label %if.then396, label %if.else397, !dbg !1103

if.then396:                                       ; preds = %if.then392
  store i32 %123, i32* @NumberofBasicUnit, align 4, !dbg !1104, !tbaa !807
  br label %if.end401, !dbg !1104

if.else397:                                       ; preds = %if.then392
  %div398 = sdiv i32 %123, 2, !dbg !1105
  store i32 %div398, i32* @NumberofBasicUnit, align 4, !dbg !1105, !tbaa !807
  br label %if.end401

if.end401:                                        ; preds = %if.then387, %if.end383, %lor.lhs.false370, %if.else397, %if.then396
  %type402 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 6, !dbg !1106
  %124 = load i32* %type402, align 4, !dbg !1106, !tbaa !807
  %cmp403 = icmp eq i32 %124, 0, !dbg !1106
  br i1 %cmp403, label %land.lhs.true405, label %if.end428, !dbg !1106

land.lhs.true405:                                 ; preds = %if.end401
  %BasicUnit406 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 139, !dbg !1106
  %125 = load i32* %BasicUnit406, align 4, !dbg !1106, !tbaa !807
  %Frame_Total_Number_MB407 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 136, !dbg !1106
  %126 = load i32* %Frame_Total_Number_MB407, align 4, !dbg !1106, !tbaa !807
  %cmp408 = icmp slt i32 %125, %126, !dbg !1106
  br i1 %cmp408, label %land.lhs.true410, label %if.end428, !dbg !1106

land.lhs.true410:                                 ; preds = %land.lhs.true405
  %FieldControl411 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 134, !dbg !1106
  %127 = load i32* %FieldControl411, align 4, !dbg !1106, !tbaa !807
  %cmp412 = icmp eq i32 %127, 1, !dbg !1106
  br i1 %cmp412, label %if.then414, label %if.end428, !dbg !1106

if.then414:                                       ; preds = %land.lhs.true410
  br i1 %tobool11, label %if.else420, label %if.then416, !dbg !1107

if.then416:                                       ; preds = %if.then414
  store i32 0, i32* @bits_topfield, align 4, !dbg !1109, !tbaa !807
  %128 = load i32* @T_field, align 4, !dbg !1111, !tbaa !807
  %conv417 = sitofp i32 %128 to double, !dbg !1111
  %mul418 = fmul double %conv417, 6.000000e-01, !dbg !1111
  %conv419 = fptosi double %mul418 to i64, !dbg !1111
  store i64 %conv419, i64* @T, align 8, !dbg !1111, !tbaa !936
  br label %if.end428, !dbg !1112

if.else420:                                       ; preds = %if.then414
  %129 = load i32* @T_field, align 4, !dbg !1113, !tbaa !807
  %130 = load i32* @bits_topfield, align 4, !dbg !1113, !tbaa !807
  %sub421 = sub nsw i32 %129, %130, !dbg !1113
  %conv422 = sext i32 %sub421 to i64, !dbg !1113
  store i64 %conv422, i64* @T, align 8, !dbg !1113, !tbaa !936
  %NumberofBasicUnitHeaderBits423 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 121, !dbg !1115
  store i32 0, i32* %NumberofBasicUnitHeaderBits423, align 4, !dbg !1115, !tbaa !807
  %NumberofBasicUnitTextureBits424 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 122, !dbg !1116
  store i32 0, i32* %NumberofBasicUnitTextureBits424, align 4, !dbg !1116, !tbaa !807
  %TotalMADBasicUnit425 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 123, !dbg !1117
  store double 0.000000e+00, double* %TotalMADBasicUnit425, align 8, !dbg !1117, !tbaa !862
  %131 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1118, !tbaa !807
  %div426 = sdiv i32 %131, 2, !dbg !1118
  store i32 %div426, i32* @NumberofBasicUnit, align 4, !dbg !1118, !tbaa !807
  br label %if.end428

if.end428:                                        ; preds = %if.then416, %if.else420, %land.lhs.true410, %land.lhs.true405, %if.end401
  ret void, !dbg !1119
}

; Function Attrs: nounwind optsize readonly uwtable
define double @calc_MAD() #5 {
entry:
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !64), !dbg !1120
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !62), !dbg !1121
  br label %for.cond1.preheader, !dbg !1121

for.cond1.preheader:                              ; preds = %for.inc6, %entry
  %indvars.iv18 = phi i64 [ 0, %entry ], [ %indvars.iv.next19, %for.inc6 ]
  %s.016 = phi i32 [ 0, %entry ], [ %add, %for.inc6 ]
  br label %for.body3, !dbg !1123

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %s.115 = phi i32 [ %s.016, %for.cond1.preheader ], [ %add, %for.body3 ]
  %arrayidx5 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv18, i64 %indvars.iv, !dbg !1125
  %0 = load i32* %arrayidx5, align 4, !dbg !1125, !tbaa !807
  %ispos = icmp sgt i32 %0, -1, !dbg !1125
  %neg = sub i32 0, %0, !dbg !1125
  %1 = select i1 %ispos, i32 %0, i32 %neg, !dbg !1125
  %add = add nsw i32 %1, %s.115, !dbg !1125
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !64), !dbg !1125
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1123
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1123
  %exitcond = icmp eq i32 %lftr.wideiv, 16, !dbg !1123
  br i1 %exitcond, label %for.inc6, label %for.body3, !dbg !1123

for.inc6:                                         ; preds = %for.body3
  %indvars.iv.next19 = add i64 %indvars.iv18, 1, !dbg !1121
  %lftr.wideiv20 = trunc i64 %indvars.iv.next19 to i32, !dbg !1121
  %exitcond21 = icmp eq i32 %lftr.wideiv20, 16, !dbg !1121
  br i1 %exitcond21, label %for.end8, label %for.cond1.preheader, !dbg !1121

for.end8:                                         ; preds = %for.inc6
  %conv = sitofp i32 %add to double, !dbg !1126
  %div = fmul double %conv, 3.906250e-03, !dbg !1126
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !65), !dbg !1126
  ret double %div, !dbg !1127
}

; Function Attrs: nounwind optsize uwtable
define void @rc_update_pict(i32 %nbits) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nbits}, i64 0, metadata !70), !dbg !1128
  %0 = load i32* @R, align 4, !dbg !1129, !tbaa !807
  %sub = sub nsw i32 %0, %nbits, !dbg !1129
  store i32 %sub, i32* @R, align 4, !dbg !1129, !tbaa !807
  %conv = sitofp i32 %nbits to double, !dbg !1130
  %1 = load double* @bit_rate, align 8, !dbg !1130, !tbaa !862
  %2 = load double* @frame_rate, align 8, !dbg !1130, !tbaa !862
  %div = fdiv double %1, %2, !dbg !1130
  %sub1 = fsub double %conv, %div, !dbg !1130
  %3 = load double* @CurrentBufferFullness, align 8, !dbg !1130, !tbaa !862
  %add = fadd double %3, %sub1, !dbg !1130
  store double %add, double* @CurrentBufferFullness, align 8, !dbg !1130, !tbaa !862
  %sub4 = fsub double %div, %conv, !dbg !1131
  %conv5 = fptosi double %sub4 to i64, !dbg !1131
  %4 = load i64* @LowerBound, align 8, !dbg !1131, !tbaa !936
  %add6 = add nsw i64 %conv5, %4, !dbg !1131
  store i64 %add6, i64* @LowerBound, align 8, !dbg !1131, !tbaa !936
  %5 = load i64* @UpperBound1, align 8, !dbg !1132, !tbaa !936
  %add11 = add nsw i64 %conv5, %5, !dbg !1132
  store i64 %add11, i64* @UpperBound1, align 8, !dbg !1132, !tbaa !936
  %conv12 = sitofp i64 %add11 to double, !dbg !1133
  %mul = fmul double %conv12, 9.000000e-01, !dbg !1133
  %conv13 = fptosi double %mul to i64, !dbg !1133
  store i64 %conv13, i64* @UpperBound2, align 8, !dbg !1133, !tbaa !936
  ret void, !dbg !1134
}

; Function Attrs: nounwind optsize uwtable
define void @rc_update_pict_frame(i32 %nbits) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nbits}, i64 0, metadata !73), !dbg !1135
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !75), !dbg !1136
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1137, !tbaa !804
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 139, !dbg !1137
  %1 = load i32* %BasicUnit, align 4, !dbg !1137, !tbaa !807
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 136, !dbg !1137
  %2 = load i32* %Frame_Total_Number_MB, align 4, !dbg !1137, !tbaa !807
  %cmp = icmp eq i32 %1, %2, !dbg !1137
  br i1 %cmp, label %if.then, label %if.else, !dbg !1137

if.then:                                          ; preds = %entry
  %3 = load i32* @m_Qc, align 4, !dbg !1138, !tbaa !807
  %mul = mul nsw i32 %3, %nbits, !dbg !1138
  %conv = sitofp i32 %mul to double, !dbg !1138
  %add = fadd double %conv, 5.000000e-01, !dbg !1138
  %call = tail call double @floor(double %add) #9, !dbg !1138
  %conv1 = fptosi double %call to i32, !dbg !1138
  tail call void @llvm.dbg.value(metadata !{i32 %conv1}, i64 0, metadata !75), !dbg !1138
  %type31.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %.pre68 = load i32* %type31.phi.trans.insert, align 4, !dbg !1139, !tbaa !807
  br label %if.end30, !dbg !1138

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1140
  %4 = load i32* %type, align 4, !dbg !1140, !tbaa !807
  switch i32 %4, label %if.end30 [
    i32 0, label %if.then4
    i32 1, label %if.end30.thread70
  ], !dbg !1140

if.then4:                                         ; preds = %if.else
  %IFLAG = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 137, !dbg !1142
  %5 = load i32* %IFLAG, align 4, !dbg !1142, !tbaa !807
  %cmp5 = icmp eq i32 %5, 0, !dbg !1142
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1142
  %6 = load i32* %FieldControl, align 4, !dbg !1142, !tbaa !807
  %cmp7 = icmp eq i32 %6, 1, !dbg !1142
  %or.cond72 = and i1 %cmp5, %cmp7, !dbg !1142
  %cmp10 = icmp eq i32 %6, 0, !dbg !1142
  %or.cond73 = or i1 %or.cond72, %cmp10, !dbg !1142
  br i1 %or.cond73, label %if.then12, label %sw.bb, !dbg !1142

if.then12:                                        ; preds = %if.then4
  %7 = load i32* @TotalFrameQP, align 4, !dbg !1144, !tbaa !807
  %8 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1144, !tbaa !807
  %div = sdiv i32 %7, %8, !dbg !1144
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !74), !dbg !1144
  %mul13 = mul nsw i32 %div, %nbits, !dbg !1146
  %conv14 = sitofp i32 %mul13 to double, !dbg !1146
  %add15 = fadd double %conv14, 5.000000e-01, !dbg !1146
  %call16 = tail call double @floor(double %add15) #9, !dbg !1146
  %conv17 = fptosi double %call16 to i32, !dbg !1146
  tail call void @llvm.dbg.value(metadata !{i32 %conv17}, i64 0, metadata !75), !dbg !1146
  br label %sw.bb, !dbg !1147

if.end30.thread70:                                ; preds = %if.else
  %9 = load i32* @m_Qc, align 4, !dbg !1148, !tbaa !807
  %mul23 = mul nsw i32 %9, %nbits, !dbg !1148
  %conv24 = sitofp i32 %mul23 to double, !dbg !1148
  %add25 = fadd double %conv24, 5.000000e-01, !dbg !1148
  %call26 = tail call double @floor(double %add25) #9, !dbg !1148
  %conv27 = fptosi double %call26 to i32, !dbg !1148
  tail call void @llvm.dbg.value(metadata !{i32 %conv27}, i64 0, metadata !75), !dbg !1148
  br label %sw.bb58, !dbg !1139

if.end30:                                         ; preds = %if.else, %if.then
  %10 = phi i32 [ %.pre68, %if.then ], [ %4, %if.else ]
  %X.0 = phi i32 [ %conv1, %if.then ], [ 0, %if.else ]
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb58
  ], !dbg !1139

sw.bb:                                            ; preds = %if.then4, %if.then12, %if.end30
  %X.069 = phi i32 [ %X.0, %if.end30 ], [ %conv17, %if.then12 ], [ 0, %if.then4 ]
  %IFLAG32 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 137, !dbg !1149
  %11 = load i32* %IFLAG32, align 4, !dbg !1149, !tbaa !807
  %cmp33 = icmp eq i32 %11, 0, !dbg !1149
  %FieldControl36 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1149
  %12 = load i32* %FieldControl36, align 4, !dbg !1149, !tbaa !807
  %cmp37 = icmp eq i32 %12, 1, !dbg !1149
  %or.cond74 = and i1 %cmp33, %cmp37, !dbg !1149
  %cmp41 = icmp eq i32 %12, 0, !dbg !1149
  %or.cond75 = or i1 %or.cond74, %cmp41, !dbg !1149
  br i1 %or.cond75, label %if.then43, label %if.else46, !dbg !1149

if.then43:                                        ; preds = %sw.bb
  store i32 %X.069, i32* @Xp, align 4, !dbg !1151, !tbaa !807
  %13 = load i32* @Np, align 4, !dbg !1153, !tbaa !807
  %dec = add nsw i32 %13, -1, !dbg !1153
  store i32 %dec, i32* @Np, align 4, !dbg !1153, !tbaa !807
  %conv44 = sitofp i32 %X.069 to double, !dbg !1154
  store double %conv44, double* @Wp, align 8, !dbg !1154, !tbaa !862
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 119, !dbg !1155
  %14 = load i32* %NumberofHeaderBits, align 4, !dbg !1155, !tbaa !807
  store i32 %14, i32* @Pm_Hp, align 4, !dbg !1155, !tbaa !807
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 127, !dbg !1156
  %15 = load i32* %NumberofCodedPFrame, align 4, !dbg !1156, !tbaa !807
  %inc = add nsw i32 %15, 1, !dbg !1156
  store i32 %inc, i32* %NumberofCodedPFrame, align 4, !dbg !1156, !tbaa !807
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 130, !dbg !1157
  %16 = load i32* %NumberofPPicture, align 4, !dbg !1157, !tbaa !807
  %inc45 = add nsw i32 %16, 1, !dbg !1157
  store i32 %inc45, i32* %NumberofPPicture, align 4, !dbg !1157, !tbaa !807
  br label %sw.epilog, !dbg !1158

if.else46:                                        ; preds = %sw.bb
  %cmp48 = icmp ne i32 %11, 0, !dbg !1159
  %cmp52 = icmp eq i32 %12, 1, !dbg !1159
  %or.cond = and i1 %cmp48, %cmp52, !dbg !1159
  br i1 %or.cond, label %if.then54, label %sw.epilog, !dbg !1159

if.then54:                                        ; preds = %if.else46
  store i32 0, i32* %IFLAG32, align 4, !dbg !1160, !tbaa !807
  br label %sw.epilog, !dbg !1160

sw.bb58:                                          ; preds = %if.end30.thread70, %if.end30
  %X.071 = phi i32 [ %conv27, %if.end30.thread70 ], [ %X.0, %if.end30 ]
  store i32 %X.071, i32* @Xb, align 4, !dbg !1161, !tbaa !807
  %17 = load i32* @Nb, align 4, !dbg !1162, !tbaa !807
  %dec59 = add nsw i32 %17, -1, !dbg !1162
  store i32 %dec59, i32* @Nb, align 4, !dbg !1162, !tbaa !807
  %conv60 = sitofp i32 %X.071 to double, !dbg !1163
  %div61 = fdiv double %conv60, 1.363600e+00, !dbg !1163
  store double %div61, double* @Wb, align 8, !dbg !1163, !tbaa !862
  %NumberofCodedBFrame = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 126, !dbg !1164
  %18 = load i32* %NumberofCodedBFrame, align 4, !dbg !1164, !tbaa !807
  %inc62 = add nsw i32 %18, 1, !dbg !1164
  store i32 %inc62, i32* %NumberofCodedBFrame, align 4, !dbg !1164, !tbaa !807
  %19 = load i32* @NumberofBFrames, align 4, !dbg !1165, !tbaa !807
  %inc63 = add nsw i32 %19, 1, !dbg !1165
  store i32 %inc63, i32* @NumberofBFrames, align 4, !dbg !1165, !tbaa !807
  br label %sw.epilog, !dbg !1166

sw.epilog:                                        ; preds = %if.else46, %if.then43, %if.then54, %if.end30, %sw.bb58
  ret void, !dbg !1167
}

; Function Attrs: nounwind optsize uwtable
define void @setbitscount(i32 %nbits) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nbits}, i64 0, metadata !78), !dbg !1168
  store i32 %nbits, i32* @bits_topfield, align 4, !dbg !1169, !tbaa !807
  ret void, !dbg !1170
}

; Function Attrs: nounwind optsize uwtable
define i32 @updateQuantizationParameter(i32 %topfield) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %topfield}, i64 0, metadata !83), !dbg !1171
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1172, !tbaa !804
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 139, !dbg !1172
  %1 = load i32* %BasicUnit, align 4, !dbg !1172, !tbaa !807
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 136, !dbg !1172
  %2 = load i32* %Frame_Total_Number_MB, align 4, !dbg !1172, !tbaa !807
  %cmp = icmp eq i32 %1, %2, !dbg !1172
  br i1 %cmp, label %if.then, label %if.else314, !dbg !1172

if.then:                                          ; preds = %entry
  %tobool = icmp eq i32 %topfield, 0, !dbg !1173
  br i1 %tobool, label %lor.lhs.false, label %if.then2, !dbg !1173

lor.lhs.false:                                    ; preds = %if.then
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1173
  %3 = load i32* %FieldControl, align 4, !dbg !1173, !tbaa !807
  %cmp1 = icmp eq i32 %3, 0, !dbg !1173
  br i1 %cmp1, label %if.then2, label %if.else296, !dbg !1173

if.then2:                                         ; preds = %if.then, %lor.lhs.false
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1175
  %4 = load i32* %type, align 4, !dbg !1175, !tbaa !807
  switch i32 %4, label %if.else175 [
    i32 2, label %if.then4
    i32 1, label %if.then7
    i32 0, label %land.lhs.true
  ], !dbg !1175

if.then4:                                         ; preds = %if.then2
  %5 = load i32* @MyInitialQp, align 4, !dbg !1177, !tbaa !807
  store i32 %5, i32* @m_Qc, align 4, !dbg !1177, !tbaa !807
  br label %return, !dbg !1179

if.then7:                                         ; preds = %if.then2
  %6 = load %struct.InputParameters** @input, align 8, !dbg !1180, !tbaa !804
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 34, !dbg !1180
  %7 = load i32* %successive_Bframe, align 4, !dbg !1180, !tbaa !807
  %cmp8 = icmp eq i32 %7, 1, !dbg !1180
  br i1 %cmp8, label %if.then9, label %if.else34, !dbg !1180

if.then9:                                         ; preds = %if.then7
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 91, !dbg !1182
  %8 = load i32* %PicInterlace, align 4, !dbg !1182, !tbaa !807
  %cmp10 = icmp eq i32 %8, 2, !dbg !1182
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11, !dbg !1182

lor.lhs.false11:                                  ; preds = %if.then9
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 92, !dbg !1182
  %9 = load i32* %MbInterlace, align 4, !dbg !1182, !tbaa !807
  %tobool12 = icmp eq i32 %9, 0, !dbg !1182
  br i1 %tobool12, label %if.end21, label %if.then13, !dbg !1182

if.then13:                                        ; preds = %lor.lhs.false11, %if.then9
  %FieldControl14 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1184
  %10 = load i32* %FieldControl14, align 4, !dbg !1184, !tbaa !807
  %cmp15 = icmp eq i32 %10, 0, !dbg !1184
  br i1 %cmp15, label %if.then16, label %if.end21, !dbg !1184

if.then16:                                        ; preds = %if.then13
  %FieldFrame = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135, !dbg !1186
  %11 = load i32* %FieldFrame, align 4, !dbg !1186, !tbaa !807
  %cmp17 = icmp eq i32 %11, 1, !dbg !1186
  %12 = load i32* @PreviousQp2, align 4, !dbg !1188, !tbaa !807
  store i32 %12, i32* @PreviousQp1, align 4, !dbg !1188, !tbaa !807
  br i1 %cmp17, label %if.then18, label %if.else19, !dbg !1186

if.then18:                                        ; preds = %if.then16
  %13 = load i32* @FrameQPBuffer, align 4, !dbg !1190, !tbaa !807
  store i32 %13, i32* @PreviousQp2, align 4, !dbg !1190, !tbaa !807
  br label %if.end21, !dbg !1191

if.else19:                                        ; preds = %if.then16
  %14 = load i32* @FieldQPBuffer, align 4, !dbg !1192, !tbaa !807
  store i32 %14, i32* @PreviousQp2, align 4, !dbg !1192, !tbaa !807
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %lor.lhs.false11, %if.else19, %if.then18
  %15 = load i32* @PreviousQp1, align 4, !dbg !1194, !tbaa !807
  %16 = load i32* @PreviousQp2, align 4, !dbg !1194, !tbaa !807
  %cmp22 = icmp eq i32 %15, %16, !dbg !1194
  br i1 %cmp22, label %if.then23, label %if.else24, !dbg !1194

if.then23:                                        ; preds = %if.end21
  %add = add nsw i32 %15, 2, !dbg !1195
  br label %if.end27, !dbg !1195

if.else24:                                        ; preds = %if.end21
  %add25 = add nsw i32 %16, %15, !dbg !1196
  %div = sdiv i32 %add25, 2, !dbg !1196
  %add26 = add nsw i32 %div, 1, !dbg !1196
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then23
  %storemerge1102 = phi i32 [ %add26, %if.else24 ], [ %add, %if.then23 ]
  %17 = load i32* @RC_MAX_QUANT, align 4, !dbg !1197, !tbaa !807
  %cmp28 = icmp slt i32 %storemerge1102, %17, !dbg !1197
  %cond = select i1 %cmp28, i32 %storemerge1102, i32 %17, !dbg !1197
  store i32 %cond, i32* @m_Qc, align 4, !dbg !1197, !tbaa !807
  %18 = load i32* @RC_MIN_QUANT, align 4, !dbg !1198, !tbaa !807
  %cmp29 = icmp slt i32 %18, %cond, !dbg !1198
  %cond33 = select i1 %cmp29, i32 %cond, i32 %18, !dbg !1198
  br label %if.end160, !dbg !1199

if.else34:                                        ; preds = %if.then7
  %19 = load i32* @NumberofBFrames, align 4, !dbg !1200, !tbaa !807
  %add35 = add nsw i32 %19, 1, !dbg !1200
  %rem = srem i32 %add35, %7, !dbg !1200
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !86), !dbg !1200
  %cmp37 = icmp eq i32 %rem, 0, !dbg !1202
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !86), !dbg !1203
  %.rem = select i1 %cmp37, i32 %7, i32 %rem, !dbg !1202
  %cmp41 = icmp eq i32 %.rem, 1, !dbg !1204
  br i1 %cmp41, label %if.then42, label %if.end59, !dbg !1204

if.then42:                                        ; preds = %if.else34
  %PicInterlace43 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 91, !dbg !1205
  %20 = load i32* %PicInterlace43, align 4, !dbg !1205, !tbaa !807
  %cmp44 = icmp eq i32 %20, 2, !dbg !1205
  br i1 %cmp44, label %if.then48, label %lor.lhs.false45, !dbg !1205

lor.lhs.false45:                                  ; preds = %if.then42
  %MbInterlace46 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 92, !dbg !1205
  %21 = load i32* %MbInterlace46, align 4, !dbg !1205, !tbaa !807
  %tobool47 = icmp eq i32 %21, 0, !dbg !1205
  br i1 %tobool47, label %if.end59, label %if.then48, !dbg !1205

if.then48:                                        ; preds = %lor.lhs.false45, %if.then42
  %FieldControl49 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1207
  %22 = load i32* %FieldControl49, align 4, !dbg !1207, !tbaa !807
  %cmp50 = icmp eq i32 %22, 0, !dbg !1207
  br i1 %cmp50, label %if.then51, label %if.end59, !dbg !1207

if.then51:                                        ; preds = %if.then48
  %FieldFrame52 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135, !dbg !1209
  %23 = load i32* %FieldFrame52, align 4, !dbg !1209, !tbaa !807
  %cmp53 = icmp eq i32 %23, 1, !dbg !1209
  %24 = load i32* @PreviousQp2, align 4, !dbg !1211, !tbaa !807
  store i32 %24, i32* @PreviousQp1, align 4, !dbg !1211, !tbaa !807
  br i1 %cmp53, label %if.then54, label %if.else55, !dbg !1209

if.then54:                                        ; preds = %if.then51
  %25 = load i32* @FrameQPBuffer, align 4, !dbg !1213, !tbaa !807
  store i32 %25, i32* @PreviousQp2, align 4, !dbg !1213, !tbaa !807
  br label %if.end59, !dbg !1214

if.else55:                                        ; preds = %if.then51
  %26 = load i32* @FieldQPBuffer, align 4, !dbg !1215, !tbaa !807
  store i32 %26, i32* @PreviousQp2, align 4, !dbg !1215, !tbaa !807
  br label %if.end59

if.end59:                                         ; preds = %if.then48, %lor.lhs.false45, %if.else34, %if.then54, %if.else55
  %27 = load i32* @PreviousQp2, align 4, !dbg !1217, !tbaa !807
  %28 = load i32* @PreviousQp1, align 4, !dbg !1217, !tbaa !807
  %sub = sub nsw i32 %27, %28, !dbg !1217
  %29 = load i32* %successive_Bframe, align 4, !dbg !1217, !tbaa !807
  %mul = mul nsw i32 %29, -2, !dbg !1217
  %sub61 = add nsw i32 %mul, -3, !dbg !1217
  %cmp62 = icmp sgt i32 %sub, %sub61, !dbg !1217
  br i1 %cmp62, label %if.else64, label %if.end96, !dbg !1217

if.else64:                                        ; preds = %if.end59
  %sub68 = add nsw i32 %mul, -2, !dbg !1218
  %cmp69 = icmp eq i32 %sub, %sub68, !dbg !1218
  br i1 %cmp69, label %if.end96, label %if.else71, !dbg !1218

if.else71:                                        ; preds = %if.else64
  %sub75 = add nsw i32 %mul, -1, !dbg !1219
  %cmp76 = icmp eq i32 %sub, %sub75, !dbg !1219
  br i1 %cmp76, label %if.end96, label %if.else78, !dbg !1219

if.else78:                                        ; preds = %if.else71
  %cmp82 = icmp eq i32 %sub, %mul, !dbg !1220
  br i1 %cmp82, label %if.end96, label %if.else84, !dbg !1220

if.else84:                                        ; preds = %if.else78
  %add881100 = or i32 %mul, 1, !dbg !1221
  %cmp89 = icmp eq i32 %sub, %add881100, !dbg !1221
  %. = select i1 %cmp89, i32 1, i32 2, !dbg !1222
  br label %if.end96, !dbg !1222

if.end96:                                         ; preds = %if.else84, %if.else78, %if.else71, %if.else64, %if.end59
  %StepSize.0 = phi i32 [ -3, %if.end59 ], [ -2, %if.else64 ], [ -1, %if.else71 ], [ 0, %if.else78 ], [ %., %if.else84 ]
  %add97 = add nsw i32 %28, %StepSize.0, !dbg !1223
  store i32 %add97, i32* @m_Qc, align 4, !dbg !1223, !tbaa !807
  %sub98 = add nsw i32 %.rem, -1, !dbg !1224
  %mul99 = shl nsw i32 %sub98, 1, !dbg !1224
  %mul101 = mul nsw i32 %sub98, -2, !dbg !1224
  %mul104 = mul nsw i32 %sub, %sub98, !dbg !1224
  %30 = load i32* %successive_Bframe, align 4, !dbg !1224, !tbaa !807
  %sub106 = add nsw i32 %30, -1, !dbg !1224
  %div107 = sdiv i32 %mul104, %sub106, !dbg !1224
  %cmp108 = icmp slt i32 %mul101, %div107, !dbg !1224
  %div107.mul101 = select i1 %cmp108, i32 %div107, i32 %mul101, !dbg !1224
  %cmp121 = icmp slt i32 %mul99, %div107.mul101, !dbg !1224
  %mul99.div107.mul101 = select i1 %cmp121, i32 %mul99, i32 %div107.mul101, !dbg !1224
  %add149 = add nsw i32 %mul99.div107.mul101, %add97, !dbg !1224
  %31 = load i32* @RC_MAX_QUANT, align 4, !dbg !1225, !tbaa !807
  %cmp150 = icmp slt i32 %add149, %31, !dbg !1225
  %cond154 = select i1 %cmp150, i32 %add149, i32 %31, !dbg !1225
  store i32 %cond154, i32* @m_Qc, align 4, !dbg !1225, !tbaa !807
  %32 = load i32* @RC_MIN_QUANT, align 4, !dbg !1226, !tbaa !807
  %cmp155 = icmp slt i32 %32, %cond154, !dbg !1226
  %cond159 = select i1 %cmp155, i32 %cond154, i32 %32, !dbg !1226
  br label %if.end160

if.end160:                                        ; preds = %if.end96, %if.end27
  %storemerge1101 = phi i32 [ %cond159, %if.end96 ], [ %cond33, %if.end27 ]
  store i32 %storemerge1101, i32* @m_Qc, align 4, !dbg !1198, !tbaa !807
  br label %return, !dbg !1227

land.lhs.true:                                    ; preds = %if.then2
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 130, !dbg !1228
  %33 = load i32* %NumberofPPicture, align 4, !dbg !1228, !tbaa !807
  %cmp164 = icmp eq i32 %33, 0, !dbg !1228
  br i1 %cmp164, label %if.then165, label %if.else175, !dbg !1228

if.then165:                                       ; preds = %land.lhs.true
  %34 = load i32* @MyInitialQp, align 4, !dbg !1229, !tbaa !807
  store i32 %34, i32* @m_Qc, align 4, !dbg !1229, !tbaa !807
  %FieldControl166 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1231
  %35 = load i32* %FieldControl166, align 4, !dbg !1231, !tbaa !807
  %cmp167 = icmp eq i32 %35, 0, !dbg !1231
  br i1 %cmp167, label %if.then168, label %return, !dbg !1231

if.then168:                                       ; preds = %if.then165
  %36 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1232, !tbaa !804
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %36, i64 0, i32 25, !dbg !1232
  %37 = load i32* %frame_mbs_only_flag, align 4, !dbg !1232, !tbaa !805
  %tobool169 = icmp eq i32 %37, 0, !dbg !1232
  br i1 %tobool169, label %if.else172, label %if.then170, !dbg !1232

if.then170:                                       ; preds = %if.then168
  %TotalQpforPPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129, !dbg !1234
  %38 = load i32* %TotalQpforPPicture, align 4, !dbg !1234, !tbaa !807
  %add171 = add nsw i32 %38, %34, !dbg !1234
  store i32 %add171, i32* %TotalQpforPPicture, align 4, !dbg !1234, !tbaa !807
  %39 = load i32* @PreviousQp2, align 4, !dbg !1236, !tbaa !807
  store i32 %39, i32* @PreviousQp1, align 4, !dbg !1236, !tbaa !807
  %40 = load i32* @m_Qc, align 4, !dbg !1237, !tbaa !807
  store i32 %40, i32* @PreviousQp2, align 4, !dbg !1237, !tbaa !807
  store i32 %40, i32* @Pm_Qp, align 4, !dbg !1238, !tbaa !807
  br label %return, !dbg !1239

if.else172:                                       ; preds = %if.then168
  store i32 %34, i32* @FrameQPBuffer, align 4, !dbg !1240, !tbaa !807
  br label %return

if.else175:                                       ; preds = %if.then2, %land.lhs.true
  %41 = load %struct.InputParameters** @input, align 8, !dbg !1241, !tbaa !804
  %PicInterlace176 = getelementptr inbounds %struct.InputParameters* %41, i64 0, i32 91, !dbg !1241
  %42 = load i32* %PicInterlace176, align 4, !dbg !1241, !tbaa !807
  %cmp177 = icmp eq i32 %42, 2, !dbg !1241
  br i1 %cmp177, label %land.lhs.true181, label %lor.lhs.false178, !dbg !1241

lor.lhs.false178:                                 ; preds = %if.else175
  %MbInterlace179 = getelementptr inbounds %struct.InputParameters* %41, i64 0, i32 92, !dbg !1241
  %43 = load i32* %MbInterlace179, align 4, !dbg !1241, !tbaa !807
  %tobool180 = icmp eq i32 %43, 0, !dbg !1241
  br i1 %tobool180, label %if.end194, label %land.lhs.true181, !dbg !1241

land.lhs.true181:                                 ; preds = %lor.lhs.false178, %if.else175
  %FieldControl182 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1241
  %44 = load i32* %FieldControl182, align 4, !dbg !1241, !tbaa !807
  %cmp183 = icmp eq i32 %44, 0, !dbg !1241
  br i1 %cmp183, label %if.then184, label %if.end194, !dbg !1241

if.then184:                                       ; preds = %land.lhs.true181
  %FieldFrame185 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135, !dbg !1243
  %45 = load i32* %FieldFrame185, align 4, !dbg !1243, !tbaa !807
  %cmp186 = icmp eq i32 %45, 1, !dbg !1243
  br i1 %cmp186, label %if.then187, label %if.else190, !dbg !1243

if.then187:                                       ; preds = %if.then184
  %46 = load i32* @FrameQPBuffer, align 4, !dbg !1245, !tbaa !807
  %TotalQpforPPicture188 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129, !dbg !1245
  %47 = load i32* %TotalQpforPPicture188, align 4, !dbg !1245, !tbaa !807
  %add189 = add nsw i32 %47, %46, !dbg !1245
  store i32 %add189, i32* %TotalQpforPPicture188, align 4, !dbg !1245, !tbaa !807
  %48 = load i32* @FrameQPBuffer, align 4, !dbg !1247, !tbaa !807
  store i32 %48, i32* @Pm_Qp, align 4, !dbg !1247, !tbaa !807
  br label %if.end194, !dbg !1248

if.else190:                                       ; preds = %if.then184
  %49 = load i32* @FieldQPBuffer, align 4, !dbg !1249, !tbaa !807
  %TotalQpforPPicture191 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129, !dbg !1249
  %50 = load i32* %TotalQpforPPicture191, align 4, !dbg !1249, !tbaa !807
  %add192 = add nsw i32 %50, %49, !dbg !1249
  store i32 %add192, i32* %TotalQpforPPicture191, align 4, !dbg !1249, !tbaa !807
  %51 = load i32* @FieldQPBuffer, align 4, !dbg !1251, !tbaa !807
  store i32 %51, i32* @Pm_Qp, align 4, !dbg !1251, !tbaa !807
  br label %if.end194

if.end194:                                        ; preds = %land.lhs.true181, %lor.lhs.false178, %if.then187, %if.else190
  %52 = load double* @Pm_X1, align 8, !dbg !1252, !tbaa !862
  store double %52, double* @m_X1, align 8, !dbg !1252, !tbaa !862
  %53 = load double* @Pm_X2, align 8, !dbg !1253, !tbaa !862
  store double %53, double* @m_X2, align 8, !dbg !1253, !tbaa !862
  %54 = load i32* @PPreHeader, align 4, !dbg !1254, !tbaa !807
  store i32 %54, i32* @m_Hp, align 4, !dbg !1254, !tbaa !807
  %55 = load i32* @Pm_Qp, align 4, !dbg !1255, !tbaa !807
  store i32 %55, i32* @m_Qp, align 4, !dbg !1255, !tbaa !807
  %56 = load i32* @PDuantQp, align 4, !dbg !1256, !tbaa !807
  store i32 %56, i32* @DuantQp, align 4, !dbg !1256, !tbaa !807
  %57 = load double* @PMADPictureC1, align 8, !dbg !1257, !tbaa !862
  store double %57, double* @MADPictureC1, align 8, !dbg !1257, !tbaa !862
  %58 = load double* @PMADPictureC2, align 8, !dbg !1258, !tbaa !862
  store double %58, double* @MADPictureC2, align 8, !dbg !1258, !tbaa !862
  %59 = load double* getelementptr inbounds ([21 x double]* @PPictureMAD, i64 0, i64 0), align 16, !dbg !1259, !tbaa !862
  store double %59, double* @PreviousPictureMAD, align 8, !dbg !1259, !tbaa !862
  %mul195 = fmul double %57, %59, !dbg !1260
  %add196 = fadd double %58, %mul195, !dbg !1260
  store double %add196, double* @CurrentFrameMAD, align 8, !dbg !1260, !tbaa !862
  %60 = load i64* @T, align 8, !dbg !1261, !tbaa !936
  %cmp197 = icmp slt i64 %60, 0, !dbg !1261
  br i1 %cmp197, label %if.then198, label %if.else205, !dbg !1261

if.then198:                                       ; preds = %if.end194
  %add199 = add nsw i32 %56, %55, !dbg !1262
  store i32 %add199, i32* @m_Qc, align 4, !dbg !1262, !tbaa !807
  %61 = load i32* @RC_MAX_QUANT, align 4, !dbg !1264, !tbaa !807
  %cmp200 = icmp slt i32 %add199, %61, !dbg !1264
  %cond204 = select i1 %cmp200, i32 %add199, i32 %61, !dbg !1264
  br label %if.end283, !dbg !1265

if.else205:                                       ; preds = %if.end194
  %conv1097 = zext i32 %54 to i64, !dbg !1266
  %sub206 = sub nsw i64 %60, %conv1097, !dbg !1266
  %conv207 = trunc i64 %sub206 to i32, !dbg !1266
  tail call void @llvm.dbg.value(metadata !{i32 %conv207}, i64 0, metadata !85), !dbg !1266
  %62 = load double* @bit_rate, align 8, !dbg !1268, !tbaa !862
  %63 = load double* @MINVALUE, align 8, !dbg !1268, !tbaa !862
  %64 = load double* @frame_rate, align 8, !dbg !1268, !tbaa !862
  %mul208 = fmul double %63, %64, !dbg !1268
  %div209 = fdiv double %62, %mul208, !dbg !1268
  %conv210 = fptosi double %div209 to i32, !dbg !1268
  %cmp211 = icmp slt i32 %conv207, %conv210, !dbg !1268
  %conv210.conv207 = select i1 %cmp211, i32 %conv210, i32 %conv207, !dbg !1268
  tail call void @llvm.dbg.value(metadata !{i32 %conv210.conv207}, i64 0, metadata !85), !dbg !1268
  %mul220 = fmul double %add196, %52, !dbg !1269
  %mul221 = fmul double %add196, %mul220, !dbg !1269
  %mul222 = fmul double %52, %mul221, !dbg !1269
  %mul223 = fmul double %53, 4.000000e+00, !dbg !1269
  %mul224 = fmul double %add196, %mul223, !dbg !1269
  %conv225 = sitofp i32 %conv210.conv207 to double, !dbg !1269
  %mul226 = fmul double %mul224, %conv225, !dbg !1269
  %add227 = fadd double %mul222, %mul226, !dbg !1269
  tail call void @llvm.dbg.value(metadata !{double %add227}, i64 0, metadata !84), !dbg !1269
  %cmp228 = fcmp oeq double %53, 0.000000e+00, !dbg !1270
  %cmp231 = fcmp olt double %add227, 0.000000e+00, !dbg !1270
  %or.cond = or i1 %cmp228, %cmp231, !dbg !1270
  br i1 %or.cond, label %if.then238, label %lor.lhs.false233, !dbg !1270

lor.lhs.false233:                                 ; preds = %if.else205
  %call = tail call double @sqrt(double %add227) #8, !dbg !1270
  %65 = load double* @m_X1, align 8, !dbg !1270, !tbaa !862
  %66 = load double* @CurrentFrameMAD, align 8, !dbg !1270, !tbaa !862
  %mul234 = fmul double %65, %66, !dbg !1270
  %sub235 = fsub double %call, %mul234, !dbg !1270
  %cmp236 = fcmp ugt double %sub235, 0.000000e+00, !dbg !1270
  br i1 %cmp236, label %if.else244, label %if.then238, !dbg !1270

if.then238:                                       ; preds = %lor.lhs.false233, %if.else205
  %67 = phi double [ %66, %lor.lhs.false233 ], [ %add196, %if.else205 ]
  %68 = phi double [ %65, %lor.lhs.false233 ], [ %52, %if.else205 ]
  %mul239 = fmul double %68, %67, !dbg !1271
  %div241 = fdiv double %mul239, %conv225, !dbg !1271
  br label %if.end253, !dbg !1271

if.else244:                                       ; preds = %lor.lhs.false233
  %69 = load double* @m_X2, align 8, !dbg !1272, !tbaa !862
  %mul245 = fmul double %69, 2.000000e+00, !dbg !1272
  %mul246 = fmul double %66, %mul245, !dbg !1272
  %call247 = tail call double @sqrt(double %add227) #8, !dbg !1272
  %70 = load double* @m_X1, align 8, !dbg !1272, !tbaa !862
  %71 = load double* @CurrentFrameMAD, align 8, !dbg !1272, !tbaa !862
  %mul248 = fmul double %70, %71, !dbg !1272
  %sub249 = fsub double %call247, %mul248, !dbg !1272
  %div250 = fdiv double %mul246, %sub249, !dbg !1272
  br label %if.end253

if.end253:                                        ; preds = %if.else244, %if.then238
  %storemerge1098.in.in = phi double [ %div250, %if.else244 ], [ %div241, %if.then238 ]
  %storemerge1098.in = fptrunc double %storemerge1098.in.in to float, !dbg !1272
  %storemerge1098 = fpext float %storemerge1098.in to double, !dbg !1272
  store double %storemerge1098, double* @m_Qstep, align 8, !dbg !1271, !tbaa !862
  %call254 = tail call i32 @Qstep2QP(double %storemerge1098) #10, !dbg !1273
  %72 = load i32* @m_Qp, align 4, !dbg !1274, !tbaa !807
  %73 = load i32* @DuantQp, align 4, !dbg !1274, !tbaa !807
  %add255 = add nsw i32 %73, %72, !dbg !1274
  %cmp256 = icmp slt i32 %add255, %call254, !dbg !1274
  %add255.call254 = select i1 %cmp256, i32 %add255, i32 %call254, !dbg !1274
  %74 = load i32* @RC_MAX_QUANT, align 4, !dbg !1275, !tbaa !807
  %cmp263 = icmp slt i32 %add255.call254, %74, !dbg !1275
  %cond268 = select i1 %cmp263, i32 %add255.call254, i32 %74, !dbg !1275
  %sub269 = sub nsw i32 %72, %73, !dbg !1276
  %cmp270 = icmp slt i32 %sub269, %cond268, !dbg !1276
  %cond276 = select i1 %cmp270, i32 %cond268, i32 %sub269, !dbg !1276
  store i32 %cond276, i32* @m_Qc, align 4, !dbg !1276, !tbaa !807
  %75 = load i32* @RC_MIN_QUANT, align 4, !dbg !1277, !tbaa !807
  %cmp277 = icmp slt i32 %75, %cond276, !dbg !1277
  %cond282 = select i1 %cmp277, i32 %cond276, i32 %75, !dbg !1277
  %.pre = load %struct.ImageParameters** @img, align 8, !dbg !1278, !tbaa !804
  br label %if.end283

if.end283:                                        ; preds = %if.end253, %if.then198
  %76 = phi %struct.ImageParameters* [ %.pre, %if.end253 ], [ %0, %if.then198 ]
  %storemerge1099 = phi i32 [ %cond282, %if.end253 ], [ %cond204, %if.then198 ]
  store i32 %storemerge1099, i32* @m_Qc, align 4, !dbg !1264, !tbaa !807
  %FieldControl284 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 134, !dbg !1278
  %77 = load i32* %FieldControl284, align 4, !dbg !1278, !tbaa !807
  %cmp285 = icmp eq i32 %77, 0, !dbg !1278
  br i1 %cmp285, label %if.then287, label %return, !dbg !1278

if.then287:                                       ; preds = %if.end283
  %78 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1279, !tbaa !804
  %frame_mbs_only_flag288 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %78, i64 0, i32 25, !dbg !1279
  %79 = load i32* %frame_mbs_only_flag288, align 4, !dbg !1279, !tbaa !805
  %tobool289 = icmp eq i32 %79, 0, !dbg !1279
  br i1 %tobool289, label %if.else293, label %if.then290, !dbg !1279

if.then290:                                       ; preds = %if.then287
  %TotalQpforPPicture291 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 129, !dbg !1281
  %80 = load i32* %TotalQpforPPicture291, align 4, !dbg !1281, !tbaa !807
  %add292 = add nsw i32 %80, %storemerge1099, !dbg !1281
  store i32 %add292, i32* %TotalQpforPPicture291, align 4, !dbg !1281, !tbaa !807
  %81 = load i32* @PreviousQp2, align 4, !dbg !1283, !tbaa !807
  store i32 %81, i32* @PreviousQp1, align 4, !dbg !1283, !tbaa !807
  %82 = load i32* @m_Qc, align 4, !dbg !1284, !tbaa !807
  store i32 %82, i32* @PreviousQp2, align 4, !dbg !1284, !tbaa !807
  store i32 %82, i32* @Pm_Qp, align 4, !dbg !1285, !tbaa !807
  br label %return, !dbg !1286

if.else293:                                       ; preds = %if.then287
  store i32 %storemerge1099, i32* @FrameQPBuffer, align 4, !dbg !1287, !tbaa !807
  br label %return

if.else296:                                       ; preds = %lor.lhs.false
  %type297 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1288
  %83 = load i32* %type297, align 4, !dbg !1288, !tbaa !807
  %cmp298 = icmp eq i32 %83, 0, !dbg !1288
  br i1 %cmp298, label %land.lhs.true300, label %if.end313, !dbg !1288

land.lhs.true300:                                 ; preds = %if.else296
  %IFLAG = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 137, !dbg !1288
  %84 = load i32* %IFLAG, align 4, !dbg !1288, !tbaa !807
  %cmp301 = icmp eq i32 %84, 0, !dbg !1288
  br i1 %cmp301, label %if.then303, label %if.end313, !dbg !1288

if.then303:                                       ; preds = %land.lhs.true300
  %85 = load %struct.InputParameters** @input, align 8, !dbg !1290, !tbaa !804
  %PicInterlace304 = getelementptr inbounds %struct.InputParameters* %85, i64 0, i32 91, !dbg !1290
  %86 = load i32* %PicInterlace304, align 4, !dbg !1290, !tbaa !807
  %cmp305 = icmp eq i32 %86, 1, !dbg !1290
  %87 = load i32* @m_Qc, align 4, !dbg !1292, !tbaa !807
  br i1 %cmp305, label %if.then307, label %if.else311, !dbg !1290

if.then307:                                       ; preds = %if.then303
  %TotalQpforPPicture308 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129, !dbg !1292
  %88 = load i32* %TotalQpforPPicture308, align 4, !dbg !1292, !tbaa !807
  %add309 = add nsw i32 %88, %87, !dbg !1292
  store i32 %add309, i32* %TotalQpforPPicture308, align 4, !dbg !1292, !tbaa !807
  %89 = load i32* @PreviousQp2, align 4, !dbg !1294, !tbaa !807
  %add310 = add nsw i32 %89, 1, !dbg !1294
  store i32 %add310, i32* @PreviousQp1, align 4, !dbg !1294, !tbaa !807
  %90 = load i32* @m_Qc, align 4, !dbg !1295, !tbaa !807
  store i32 %90, i32* @PreviousQp2, align 4, !dbg !1295, !tbaa !807
  store i32 %90, i32* @Pm_Qp, align 4, !dbg !1296, !tbaa !807
  br label %if.end313, !dbg !1297

if.else311:                                       ; preds = %if.then303
  store i32 %87, i32* @FieldQPBuffer, align 4, !dbg !1298, !tbaa !807
  br label %if.end313

if.end313:                                        ; preds = %land.lhs.true300, %if.else296, %if.then307, %if.else311
  %91 = load i32* @m_Qc, align 4, !dbg !1299, !tbaa !807
  br label %return, !dbg !1299

if.else314:                                       ; preds = %entry
  %type315 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1300
  %92 = load i32* %type315, align 4, !dbg !1300, !tbaa !807
  switch i32 %92, label %if.end1036 [
    i32 2, label %if.then318
    i32 0, label %land.lhs.true323
    i32 1, label %if.then336
  ], !dbg !1300

if.then318:                                       ; preds = %if.else314
  %93 = load i32* @MyInitialQp, align 4, !dbg !1302, !tbaa !807
  store i32 %93, i32* @m_Qc, align 4, !dbg !1302, !tbaa !807
  br label %return, !dbg !1304

land.lhs.true323:                                 ; preds = %if.else314
  %IFLAG324 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 137, !dbg !1305
  %94 = load i32* %IFLAG324, align 4, !dbg !1305, !tbaa !807
  %cmp325 = icmp eq i32 %94, 1, !dbg !1305
  br i1 %cmp325, label %land.lhs.true327, label %if.then537, !dbg !1305

land.lhs.true327:                                 ; preds = %land.lhs.true323
  %FieldControl328 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1305
  %95 = load i32* %FieldControl328, align 4, !dbg !1305, !tbaa !807
  %cmp329 = icmp eq i32 %95, 1, !dbg !1305
  br i1 %cmp329, label %if.then331, label %if.else332, !dbg !1305

if.then331:                                       ; preds = %land.lhs.true327
  %96 = load i32* @MyInitialQp, align 4, !dbg !1306, !tbaa !807
  store i32 %96, i32* @m_Qc, align 4, !dbg !1306, !tbaa !807
  br label %return, !dbg !1308

if.else332:                                       ; preds = %land.lhs.true327
  switch i32 %92, label %if.end1036 [
    i32 1, label %if.then336
    i32 0, label %if.then537
  ], !dbg !1309

if.then336:                                       ; preds = %if.else314, %if.else332
  %tobool337 = icmp eq i32 %topfield, 0, !dbg !1310
  br i1 %tobool337, label %lor.lhs.false338, label %if.then342, !dbg !1310

lor.lhs.false338:                                 ; preds = %if.then336
  %FieldControl339 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1310
  %97 = load i32* %FieldControl339, align 4, !dbg !1310, !tbaa !807
  %cmp340 = icmp eq i32 %97, 0, !dbg !1310
  br i1 %cmp340, label %if.then342, label %if.else532, !dbg !1310

if.then342:                                       ; preds = %if.then336, %lor.lhs.false338
  %98 = load %struct.InputParameters** @input, align 8, !dbg !1312, !tbaa !804
  %successive_Bframe343 = getelementptr inbounds %struct.InputParameters* %98, i64 0, i32 34, !dbg !1312
  %99 = load i32* %successive_Bframe343, align 4, !dbg !1312, !tbaa !807
  %cmp344 = icmp eq i32 %99, 1, !dbg !1312
  br i1 %cmp344, label %if.then346, label %if.else387, !dbg !1312

if.then346:                                       ; preds = %if.then342
  %PicInterlace347 = getelementptr inbounds %struct.InputParameters* %98, i64 0, i32 91, !dbg !1314
  %100 = load i32* %PicInterlace347, align 4, !dbg !1314, !tbaa !807
  %cmp348 = icmp eq i32 %100, 2, !dbg !1314
  br i1 %cmp348, label %if.then353, label %lor.lhs.false350, !dbg !1314

lor.lhs.false350:                                 ; preds = %if.then346
  %MbInterlace351 = getelementptr inbounds %struct.InputParameters* %98, i64 0, i32 92, !dbg !1314
  %101 = load i32* %MbInterlace351, align 4, !dbg !1314, !tbaa !807
  %tobool352 = icmp eq i32 %101, 0, !dbg !1314
  br i1 %tobool352, label %if.end365, label %if.then353, !dbg !1314

if.then353:                                       ; preds = %lor.lhs.false350, %if.then346
  %FieldControl354 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1316
  %102 = load i32* %FieldControl354, align 4, !dbg !1316, !tbaa !807
  %cmp355 = icmp eq i32 %102, 0, !dbg !1316
  br i1 %cmp355, label %if.then357, label %if.end365, !dbg !1316

if.then357:                                       ; preds = %if.then353
  %FieldFrame358 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135, !dbg !1318
  %103 = load i32* %FieldFrame358, align 4, !dbg !1318, !tbaa !807
  %cmp359 = icmp eq i32 %103, 1, !dbg !1318
  %104 = load i32* @PreviousQp2, align 4, !dbg !1320, !tbaa !807
  store i32 %104, i32* @PreviousQp1, align 4, !dbg !1320, !tbaa !807
  br i1 %cmp359, label %if.then361, label %if.else362, !dbg !1318

if.then361:                                       ; preds = %if.then357
  %105 = load i32* @FrameQPBuffer, align 4, !dbg !1322, !tbaa !807
  store i32 %105, i32* @PreviousQp2, align 4, !dbg !1322, !tbaa !807
  br label %if.end365, !dbg !1323

if.else362:                                       ; preds = %if.then357
  %106 = load i32* @FieldQPBuffer, align 4, !dbg !1324, !tbaa !807
  store i32 %106, i32* @PreviousQp2, align 4, !dbg !1324, !tbaa !807
  br label %if.end365

if.end365:                                        ; preds = %if.then353, %lor.lhs.false350, %if.else362, %if.then361
  %107 = load i32* @PreviousQp1, align 4, !dbg !1326, !tbaa !807
  %108 = load i32* @PreviousQp2, align 4, !dbg !1326, !tbaa !807
  %cmp366 = icmp eq i32 %107, %108, !dbg !1326
  br i1 %cmp366, label %if.then368, label %if.else370, !dbg !1326

if.then368:                                       ; preds = %if.end365
  %add369 = add nsw i32 %107, 2, !dbg !1327
  br label %if.end374, !dbg !1327

if.else370:                                       ; preds = %if.end365
  %add371 = add nsw i32 %108, %107, !dbg !1328
  %div372 = sdiv i32 %add371, 2, !dbg !1328
  %add373 = add nsw i32 %div372, 1, !dbg !1328
  br label %if.end374

if.end374:                                        ; preds = %if.else370, %if.then368
  %storemerge1096 = phi i32 [ %add373, %if.else370 ], [ %add369, %if.then368 ]
  %109 = load i32* @RC_MAX_QUANT, align 4, !dbg !1329, !tbaa !807
  %cmp375 = icmp slt i32 %storemerge1096, %109, !dbg !1329
  %cond380 = select i1 %cmp375, i32 %storemerge1096, i32 %109, !dbg !1329
  store i32 %cond380, i32* @m_Qc, align 4, !dbg !1329, !tbaa !807
  %110 = load i32* @RC_MIN_QUANT, align 4, !dbg !1330, !tbaa !807
  %cmp381 = icmp slt i32 %110, %cond380, !dbg !1330
  %cond386 = select i1 %cmp381, i32 %cond380, i32 %110, !dbg !1330
  br label %if.end531, !dbg !1331

if.else387:                                       ; preds = %if.then342
  %111 = load i32* @NumberofBFrames, align 4, !dbg !1332, !tbaa !807
  %add388 = add nsw i32 %111, 1, !dbg !1332
  %rem390 = srem i32 %add388, %99, !dbg !1332
  tail call void @llvm.dbg.value(metadata !{i32 %rem390}, i64 0, metadata !86), !dbg !1332
  %cmp391 = icmp eq i32 %rem390, 0, !dbg !1334
  tail call void @llvm.dbg.value(metadata !{i32 %99}, i64 0, metadata !86), !dbg !1335
  %.rem390 = select i1 %cmp391, i32 %99, i32 %rem390, !dbg !1334
  %cmp396 = icmp eq i32 %.rem390, 1, !dbg !1336
  br i1 %cmp396, label %if.then398, label %if.end418, !dbg !1336

if.then398:                                       ; preds = %if.else387
  %PicInterlace399 = getelementptr inbounds %struct.InputParameters* %98, i64 0, i32 91, !dbg !1337
  %112 = load i32* %PicInterlace399, align 4, !dbg !1337, !tbaa !807
  %cmp400 = icmp eq i32 %112, 2, !dbg !1337
  br i1 %cmp400, label %if.then405, label %lor.lhs.false402, !dbg !1337

lor.lhs.false402:                                 ; preds = %if.then398
  %MbInterlace403 = getelementptr inbounds %struct.InputParameters* %98, i64 0, i32 92, !dbg !1337
  %113 = load i32* %MbInterlace403, align 4, !dbg !1337, !tbaa !807
  %tobool404 = icmp eq i32 %113, 0, !dbg !1337
  br i1 %tobool404, label %if.end418, label %if.then405, !dbg !1337

if.then405:                                       ; preds = %lor.lhs.false402, %if.then398
  %FieldControl406 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1339
  %114 = load i32* %FieldControl406, align 4, !dbg !1339, !tbaa !807
  %cmp407 = icmp eq i32 %114, 0, !dbg !1339
  br i1 %cmp407, label %if.then409, label %if.end418, !dbg !1339

if.then409:                                       ; preds = %if.then405
  %FieldFrame410 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135, !dbg !1341
  %115 = load i32* %FieldFrame410, align 4, !dbg !1341, !tbaa !807
  %cmp411 = icmp eq i32 %115, 1, !dbg !1341
  %116 = load i32* @PreviousQp2, align 4, !dbg !1343, !tbaa !807
  store i32 %116, i32* @PreviousQp1, align 4, !dbg !1343, !tbaa !807
  br i1 %cmp411, label %if.then413, label %if.else414, !dbg !1341

if.then413:                                       ; preds = %if.then409
  %117 = load i32* @FrameQPBuffer, align 4, !dbg !1345, !tbaa !807
  store i32 %117, i32* @PreviousQp2, align 4, !dbg !1345, !tbaa !807
  br label %if.end418, !dbg !1346

if.else414:                                       ; preds = %if.then409
  %118 = load i32* @FieldQPBuffer, align 4, !dbg !1347, !tbaa !807
  store i32 %118, i32* @PreviousQp2, align 4, !dbg !1347, !tbaa !807
  br label %if.end418

if.end418:                                        ; preds = %if.then405, %lor.lhs.false402, %if.else387, %if.then413, %if.else414
  %119 = load i32* @PreviousQp2, align 4, !dbg !1349, !tbaa !807
  %120 = load i32* @PreviousQp1, align 4, !dbg !1349, !tbaa !807
  %sub419 = sub nsw i32 %119, %120, !dbg !1349
  %121 = load i32* %successive_Bframe343, align 4, !dbg !1349, !tbaa !807
  %mul421 = mul nsw i32 %121, -2, !dbg !1349
  %sub422 = add nsw i32 %mul421, -3, !dbg !1349
  %cmp423 = icmp sgt i32 %sub419, %sub422, !dbg !1349
  br i1 %cmp423, label %if.else426, label %if.end462, !dbg !1349

if.else426:                                       ; preds = %if.end418
  %sub430 = add nsw i32 %mul421, -2, !dbg !1350
  %cmp431 = icmp eq i32 %sub419, %sub430, !dbg !1350
  br i1 %cmp431, label %if.end462, label %if.else434, !dbg !1350

if.else434:                                       ; preds = %if.else426
  %sub438 = add nsw i32 %mul421, -1, !dbg !1351
  %cmp439 = icmp eq i32 %sub419, %sub438, !dbg !1351
  br i1 %cmp439, label %if.end462, label %if.else442, !dbg !1351

if.else442:                                       ; preds = %if.else434
  %cmp446 = icmp eq i32 %sub419, %mul421, !dbg !1352
  br i1 %cmp446, label %if.end462, label %if.else449, !dbg !1352

if.else449:                                       ; preds = %if.else442
  %add4531094 = or i32 %mul421, 1, !dbg !1353
  %cmp454 = icmp eq i32 %sub419, %add4531094, !dbg !1353
  %.1103 = select i1 %cmp454, i32 1, i32 2, !dbg !1354
  br label %if.end462, !dbg !1354

if.end462:                                        ; preds = %if.else449, %if.else442, %if.else434, %if.else426, %if.end418
  %StepSize.1 = phi i32 [ -3, %if.end418 ], [ -2, %if.else426 ], [ -1, %if.else434 ], [ 0, %if.else442 ], [ %.1103, %if.else449 ]
  %add463 = add nsw i32 %120, %StepSize.1, !dbg !1355
  store i32 %add463, i32* @m_Qc, align 4, !dbg !1355, !tbaa !807
  %sub464 = add nsw i32 %.rem390, -1, !dbg !1356
  %mul465 = shl nsw i32 %sub464, 1, !dbg !1356
  %mul467 = mul nsw i32 %sub464, -2, !dbg !1356
  %mul470 = mul nsw i32 %sub419, %sub464, !dbg !1356
  %122 = load i32* %successive_Bframe343, align 4, !dbg !1356, !tbaa !807
  %sub472 = add nsw i32 %122, -1, !dbg !1356
  %div473 = sdiv i32 %mul470, %sub472, !dbg !1356
  %cmp474 = icmp slt i32 %mul467, %div473, !dbg !1356
  %div473.mul467 = select i1 %cmp474, i32 %div473, i32 %mul467, !dbg !1356
  %cmp488 = icmp slt i32 %mul465, %div473.mul467, !dbg !1356
  %mul465.div473.mul467 = select i1 %cmp488, i32 %mul465, i32 %div473.mul467, !dbg !1356
  %add518 = add nsw i32 %mul465.div473.mul467, %add463, !dbg !1356
  %123 = load i32* @RC_MAX_QUANT, align 4, !dbg !1357, !tbaa !807
  %cmp519 = icmp slt i32 %add518, %123, !dbg !1357
  %cond524 = select i1 %cmp519, i32 %add518, i32 %123, !dbg !1357
  store i32 %cond524, i32* @m_Qc, align 4, !dbg !1357, !tbaa !807
  %124 = load i32* @RC_MIN_QUANT, align 4, !dbg !1358, !tbaa !807
  %cmp525 = icmp slt i32 %124, %cond524, !dbg !1358
  %cond530 = select i1 %cmp525, i32 %cond524, i32 %124, !dbg !1358
  br label %if.end531

if.end531:                                        ; preds = %if.end462, %if.end374
  %storemerge1095 = phi i32 [ %cond530, %if.end462 ], [ %cond386, %if.end374 ]
  store i32 %storemerge1095, i32* @m_Qc, align 4, !dbg !1330, !tbaa !807
  br label %return, !dbg !1359

if.else532:                                       ; preds = %lor.lhs.false338
  %125 = load i32* @m_Qc, align 4, !dbg !1360, !tbaa !807
  br label %return, !dbg !1360

if.then537:                                       ; preds = %land.lhs.true323, %if.else332
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 128, !dbg !1361
  %126 = load i32* %NumberofGOP, align 4, !dbg !1361, !tbaa !807
  %cmp538 = icmp eq i32 %126, 1, !dbg !1361
  br i1 %cmp538, label %land.lhs.true540, label %if.else590, !dbg !1361

land.lhs.true540:                                 ; preds = %if.then537
  %NumberofPPicture541 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 130, !dbg !1361
  %127 = load i32* %NumberofPPicture541, align 4, !dbg !1361, !tbaa !807
  %cmp542 = icmp eq i32 %127, 0, !dbg !1361
  br i1 %cmp542, label %if.then544, label %if.else590, !dbg !1361

if.then544:                                       ; preds = %land.lhs.true540
  %FieldControl545 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1363
  %128 = load i32* %FieldControl545, align 4, !dbg !1363, !tbaa !807
  switch i32 %128, label %if.end1036 [
    i32 0, label %if.then556
    i32 1, label %land.lhs.true552
  ], !dbg !1363

land.lhs.true552:                                 ; preds = %if.then544
  %IFLAG553 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 137, !dbg !1363
  %129 = load i32* %IFLAG553, align 4, !dbg !1363, !tbaa !807
  %cmp554 = icmp eq i32 %129, 0, !dbg !1363
  br i1 %cmp554, label %if.then556, label %if.end1036, !dbg !1363

if.then556:                                       ; preds = %if.then544, %land.lhs.true552
  %130 = load i32* @MyInitialQp, align 4, !dbg !1365, !tbaa !807
  store i32 %130, i32* @m_Qc, align 4, !dbg !1365, !tbaa !807
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 121, !dbg !1367
  store i32 0, i32* %NumberofBasicUnitHeaderBits, align 4, !dbg !1367, !tbaa !807
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 122, !dbg !1368
  store i32 0, i32* %NumberofBasicUnitTextureBits, align 4, !dbg !1368, !tbaa !807
  %131 = load i32* @NumberofBasicUnit, align 4, !dbg !1369, !tbaa !807
  %dec = add nsw i32 %131, -1, !dbg !1369
  store i32 %dec, i32* @NumberofBasicUnit, align 4, !dbg !1369, !tbaa !807
  %132 = or i32 %dec, %topfield, !dbg !1370
  %133 = icmp eq i32 %132, 0, !dbg !1370
  br i1 %133, label %if.then561, label %if.end587, !dbg !1370

if.then561:                                       ; preds = %if.then556
  %134 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1371, !tbaa !804
  %frame_mbs_only_flag562 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %134, i64 0, i32 25, !dbg !1371
  %135 = load i32* %frame_mbs_only_flag562, align 4, !dbg !1371, !tbaa !805
  %tobool563 = icmp eq i32 %135, 0, !dbg !1371
  br i1 %tobool563, label %lor.lhs.false564, label %if.then568, !dbg !1371

lor.lhs.false564:                                 ; preds = %if.then561
  %136 = load %struct.InputParameters** @input, align 8, !dbg !1371, !tbaa !804
  %PicInterlace565 = getelementptr inbounds %struct.InputParameters* %136, i64 0, i32 91, !dbg !1371
  %137 = load i32* %PicInterlace565, align 4, !dbg !1371, !tbaa !807
  switch i32 %137, label %lor.lhs.false575 [
    i32 1, label %if.then568
    i32 2, label %if.then578
  ], !dbg !1371

if.then568:                                       ; preds = %lor.lhs.false564, %if.then561
  %138 = load i32* @m_Qc, align 4, !dbg !1373, !tbaa !807
  %TotalQpforPPicture569 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129, !dbg !1373
  %139 = load i32* %TotalQpforPPicture569, align 4, !dbg !1373, !tbaa !807
  %add570 = add nsw i32 %139, %138, !dbg !1373
  store i32 %add570, i32* %TotalQpforPPicture569, align 4, !dbg !1373, !tbaa !807
  %140 = load i32* @PreviousQp2, align 4, !dbg !1375, !tbaa !807
  store i32 %140, i32* @PreviousQp1, align 4, !dbg !1375, !tbaa !807
  %141 = load i32* @m_Qc, align 4, !dbg !1376, !tbaa !807
  store i32 %141, i32* @PreviousQp2, align 4, !dbg !1376, !tbaa !807
  store i32 %141, i32* @PAveFrameQP, align 4, !dbg !1377, !tbaa !807
  %142 = load i32* @PAveHeaderBits2, align 4, !dbg !1378, !tbaa !807
  store i32 %142, i32* @PAveHeaderBits3, align 4, !dbg !1378, !tbaa !807
  br label %if.end587, !dbg !1379

lor.lhs.false575:                                 ; preds = %lor.lhs.false564
  %MbInterlace576 = getelementptr inbounds %struct.InputParameters* %136, i64 0, i32 92, !dbg !1380
  %143 = load i32* %MbInterlace576, align 4, !dbg !1380, !tbaa !807
  %tobool577 = icmp eq i32 %143, 0, !dbg !1380
  br i1 %tobool577, label %if.end587, label %if.then578, !dbg !1380

if.then578:                                       ; preds = %lor.lhs.false564, %lor.lhs.false575
  %144 = load i32* %FieldControl545, align 4, !dbg !1381, !tbaa !807
  %cmp580 = icmp eq i32 %144, 0, !dbg !1381
  %145 = load i32* @m_Qc, align 4, !dbg !1383, !tbaa !807
  br i1 %cmp580, label %if.then582, label %if.else583, !dbg !1381

if.then582:                                       ; preds = %if.then578
  store i32 %145, i32* @FrameQPBuffer, align 4, !dbg !1383, !tbaa !807
  %146 = load i32* @PAveHeaderBits2, align 4, !dbg !1385, !tbaa !807
  store i32 %146, i32* @FrameAveHeaderBits, align 4, !dbg !1385, !tbaa !807
  br label %if.end587, !dbg !1386

if.else583:                                       ; preds = %if.then578
  store i32 %145, i32* @FieldQPBuffer, align 4, !dbg !1387, !tbaa !807
  %147 = load i32* @PAveHeaderBits2, align 4, !dbg !1389, !tbaa !807
  store i32 %147, i32* @FieldAveHeaderBits, align 4, !dbg !1389, !tbaa !807
  br label %if.end587

if.end587:                                        ; preds = %lor.lhs.false575, %if.then556, %if.then568, %if.then582, %if.else583
  %148 = load i32* @m_Qc, align 4, !dbg !1390, !tbaa !807
  store i32 %148, i32* @Pm_Qp, align 4, !dbg !1390, !tbaa !807
  %149 = load i32* @TotalFrameQP, align 4, !dbg !1391, !tbaa !807
  %add588 = add nsw i32 %149, %148, !dbg !1391
  store i32 %add588, i32* @TotalFrameQP, align 4, !dbg !1391, !tbaa !807
  br label %return, !dbg !1392

if.else590:                                       ; preds = %land.lhs.true540, %if.then537
  %150 = load double* @Pm_X1, align 8, !dbg !1393, !tbaa !862
  store double %150, double* @m_X1, align 8, !dbg !1393, !tbaa !862
  %151 = load double* @Pm_X2, align 8, !dbg !1395, !tbaa !862
  store double %151, double* @m_X2, align 8, !dbg !1395, !tbaa !862
  %152 = load i32* @PPreHeader, align 4, !dbg !1396, !tbaa !807
  store i32 %152, i32* @m_Hp, align 4, !dbg !1396, !tbaa !807
  %153 = load i32* @Pm_Qp, align 4, !dbg !1397, !tbaa !807
  store i32 %153, i32* @m_Qp, align 4, !dbg !1397, !tbaa !807
  %154 = load i32* @PDuantQp, align 4, !dbg !1398, !tbaa !807
  store i32 %154, i32* @DuantQp, align 4, !dbg !1398, !tbaa !807
  %155 = load double* @PMADPictureC1, align 8, !dbg !1399, !tbaa !862
  store double %155, double* @MADPictureC1, align 8, !dbg !1399, !tbaa !862
  %156 = load double* @PMADPictureC2, align 8, !dbg !1400, !tbaa !862
  store double %156, double* @MADPictureC2, align 8, !dbg !1400, !tbaa !862
  %FieldControl591 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134, !dbg !1401
  %157 = load i32* %FieldControl591, align 4, !dbg !1401, !tbaa !807
  %cmp592 = icmp eq i32 %157, 0, !dbg !1401
  %158 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1402, !tbaa !807
  br i1 %cmp592, label %if.end597, label %if.else595, !dbg !1401

if.else595:                                       ; preds = %if.else590
  %div596 = sdiv i32 %158, 2, !dbg !1403
  tail call void @llvm.dbg.value(metadata !{i32 %div596}, i64 0, metadata !89), !dbg !1403
  br label %if.end597

if.end597:                                        ; preds = %if.else590, %if.else595
  %SumofBasicUnit.0 = phi i32 [ %div596, %if.else595 ], [ %158, %if.else590 ]
  %159 = load i32* @NumberofBasicUnit, align 4, !dbg !1404, !tbaa !807
  %cmp598 = icmp eq i32 %159, %SumofBasicUnit.0, !dbg !1404
  br i1 %cmp598, label %if.then600, label %if.else652, !dbg !1404

if.then600:                                       ; preds = %if.end597
  %160 = load %struct.InputParameters** @input, align 8, !dbg !1405, !tbaa !804
  %PicInterlace601 = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 91, !dbg !1405
  %161 = load i32* %PicInterlace601, align 4, !dbg !1405, !tbaa !807
  %cmp602 = icmp eq i32 %161, 2, !dbg !1405
  br i1 %cmp602, label %land.lhs.true607, label %lor.lhs.false604, !dbg !1405

lor.lhs.false604:                                 ; preds = %if.then600
  %MbInterlace605 = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 92, !dbg !1405
  %162 = load i32* %MbInterlace605, align 4, !dbg !1405, !tbaa !807
  %tobool606 = icmp eq i32 %162, 0, !dbg !1405
  %cmp592.not = xor i1 %cmp592, true, !dbg !1405
  %brmerge = or i1 %tobool606, %cmp592.not, !dbg !1405
  br i1 %brmerge, label %if.end632, label %if.then611, !dbg !1405

land.lhs.true607:                                 ; preds = %if.then600
  br i1 %cmp592, label %if.then611, label %if.end632, !dbg !1405

if.then611:                                       ; preds = %lor.lhs.false604, %land.lhs.true607
  %FieldFrame612 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135, !dbg !1407
  %163 = load i32* %FieldFrame612, align 4, !dbg !1407, !tbaa !807
  %cmp613 = icmp eq i32 %163, 1, !dbg !1407
  %NumberofPPicture616 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 130, !dbg !1409
  %164 = load i32* %NumberofPPicture616, align 4, !dbg !1409, !tbaa !807
  %cmp617 = icmp sgt i32 %164, 0, !dbg !1409
  br i1 %cmp613, label %if.then615, label %if.else623, !dbg !1407

if.then615:                                       ; preds = %if.then611
  br i1 %cmp617, label %if.then619, label %if.end622, !dbg !1409

if.then619:                                       ; preds = %if.then615
  %165 = load i32* @FrameQPBuffer, align 4, !dbg !1411, !tbaa !807
  %TotalQpforPPicture620 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129, !dbg !1411
  %166 = load i32* %TotalQpforPPicture620, align 4, !dbg !1411, !tbaa !807
  %add621 = add nsw i32 %166, %165, !dbg !1411
  store i32 %add621, i32* %TotalQpforPPicture620, align 4, !dbg !1411, !tbaa !807
  br label %if.end622, !dbg !1411

if.end622:                                        ; preds = %if.then619, %if.then615
  %167 = load i32* @FrameQPBuffer, align 4, !dbg !1412, !tbaa !807
  store i32 %167, i32* @PAveFrameQP, align 4, !dbg !1412, !tbaa !807
  %168 = load i32* @FrameAveHeaderBits, align 4, !dbg !1413, !tbaa !807
  store i32 %168, i32* @PAveHeaderBits3, align 4, !dbg !1413, !tbaa !807
  br label %if.end632, !dbg !1414

if.else623:                                       ; preds = %if.then611
  br i1 %cmp617, label %if.then627, label %if.end630, !dbg !1415

if.then627:                                       ; preds = %if.else623
  %169 = load i32* @FieldQPBuffer, align 4, !dbg !1417, !tbaa !807
  %TotalQpforPPicture628 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129, !dbg !1417
  %170 = load i32* %TotalQpforPPicture628, align 4, !dbg !1417, !tbaa !807
  %add629 = add nsw i32 %170, %169, !dbg !1417
  store i32 %add629, i32* %TotalQpforPPicture628, align 4, !dbg !1417, !tbaa !807
  br label %if.end630, !dbg !1417

if.end630:                                        ; preds = %if.then627, %if.else623
  %171 = load i32* @FieldQPBuffer, align 4, !dbg !1418, !tbaa !807
  store i32 %171, i32* @PAveFrameQP, align 4, !dbg !1418, !tbaa !807
  %172 = load i32* @FieldAveHeaderBits, align 4, !dbg !1419, !tbaa !807
  store i32 %172, i32* @PAveHeaderBits3, align 4, !dbg !1419, !tbaa !807
  br label %if.end632

if.end632:                                        ; preds = %lor.lhs.false604, %land.lhs.true607, %if.end622, %if.end630
  %173 = load i64* @T, align 8, !dbg !1420, !tbaa !936
  %cmp633 = icmp slt i64 %173, 1, !dbg !1420
  %174 = load i32* @PAveFrameQP, align 4, !dbg !1421, !tbaa !807
  br i1 %cmp633, label %if.then635, label %if.else648, !dbg !1420

if.then635:                                       ; preds = %if.end632
  %add636 = add nsw i32 %174, 2, !dbg !1421
  %175 = load i32* @RC_MAX_QUANT, align 4, !dbg !1423, !tbaa !807
  %cmp637 = icmp sgt i32 %add636, %175, !dbg !1423
  %.add636 = select i1 %cmp637, i32 %175, i32 %add636, !dbg !1423
  store i32 %.add636, i32* @m_Qc, align 4, !dbg !1424, !tbaa !807
  %tobool641 = icmp eq i32 %topfield, 0, !dbg !1425
  br i1 %tobool641, label %lor.lhs.false642, label %if.then646, !dbg !1425

lor.lhs.false642:                                 ; preds = %if.then635
  %176 = load i32* %FieldControl591, align 4, !dbg !1425, !tbaa !807
  %cmp644 = icmp eq i32 %176, 0, !dbg !1425
  br i1 %cmp644, label %if.then646, label %if.end649, !dbg !1425

if.then646:                                       ; preds = %if.then635, %lor.lhs.false642
  store i32 1, i32* @GOPOverdue, align 4, !dbg !1426, !tbaa !805
  br label %if.end649, !dbg !1426

if.else648:                                       ; preds = %if.end632
  store i32 %174, i32* @m_Qc, align 4, !dbg !1427, !tbaa !807
  br label %if.end649

if.end649:                                        ; preds = %lor.lhs.false642, %if.then646, %if.else648
  %177 = phi i32 [ %.add636, %if.then646 ], [ %174, %if.else648 ], [ %.add636, %lor.lhs.false642 ]
  %178 = load i32* @TotalFrameQP, align 4, !dbg !1429, !tbaa !807
  %add650 = add nsw i32 %178, %177, !dbg !1429
  store i32 %add650, i32* @TotalFrameQP, align 4, !dbg !1429, !tbaa !807
  %179 = load i32* @NumberofBasicUnit, align 4, !dbg !1430, !tbaa !807
  %dec651 = add nsw i32 %179, -1, !dbg !1430
  store i32 %dec651, i32* @NumberofBasicUnit, align 4, !dbg !1430, !tbaa !807
  store i32 %174, i32* @Pm_Qp, align 4, !dbg !1431, !tbaa !807
  br label %return, !dbg !1432

if.else652:                                       ; preds = %if.end597
  %NumberofBasicUnitHeaderBits653 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 121, !dbg !1433
  %180 = load i32* %NumberofBasicUnitHeaderBits653, align 4, !dbg !1433, !tbaa !807
  %NumberofBasicUnitTextureBits654 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 122, !dbg !1433
  %181 = load i32* %NumberofBasicUnitTextureBits654, align 4, !dbg !1433, !tbaa !807
  %add655 = add nsw i32 %181, %180, !dbg !1433
  store i32 %add655, i32* @TotalBasicUnitBits, align 4, !dbg !1433, !tbaa !807
  %conv656 = sext i32 %add655 to i64, !dbg !1435
  %182 = load i64* @T, align 8, !dbg !1435, !tbaa !936
  %sub657 = sub nsw i64 %182, %conv656, !dbg !1435
  store i64 %sub657, i64* @T, align 8, !dbg !1435, !tbaa !936
  store i32 0, i32* %NumberofBasicUnitHeaderBits653, align 4, !dbg !1436, !tbaa !807
  store i32 0, i32* %NumberofBasicUnitTextureBits654, align 4, !dbg !1437, !tbaa !807
  %cmp660 = icmp slt i64 %sub657, 0, !dbg !1438
  br i1 %cmp660, label %if.then662, label %if.else786, !dbg !1438

if.then662:                                       ; preds = %if.else652
  %183 = load i32* @GOPOverdue, align 4, !dbg !1439, !tbaa !805
  %cmp663 = icmp eq i32 %183, 1, !dbg !1439
  %184 = load i32* @m_Qp, align 4, !dbg !1441, !tbaa !807
  %185 = load i32* @DDquant, align 4, !dbg !1442, !tbaa !807
  %.pn = select i1 %cmp663, i32 2, i32 %185, !dbg !1439
  %storemerge1091 = add nsw i32 %.pn, %184, !dbg !1442
  %186 = load i32* @RC_MAX_QUANT, align 4, !dbg !1443, !tbaa !807
  %cmp670 = icmp slt i32 %storemerge1091, %186, !dbg !1443
  %cond675 = select i1 %cmp670, i32 %storemerge1091, i32 %186, !dbg !1443
  store i32 %cond675, i32* @m_Qc, align 4, !dbg !1443, !tbaa !807
  %187 = load %struct.InputParameters** @input, align 8, !dbg !1444, !tbaa !804
  %basicunit = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 130, !dbg !1444
  %188 = load i32* %basicunit, align 4, !dbg !1444, !tbaa !807
  %189 = load i32* @MBPerRow, align 4, !dbg !1444, !tbaa !807
  %cmp676 = icmp slt i32 %188, %189, !dbg !1444
  %190 = load i32* @PAveFrameQP, align 4, !dbg !1445, !tbaa !807
  br i1 %cmp676, label %if.else687, label %if.then678, !dbg !1444

if.then678:                                       ; preds = %if.then662
  %add679 = add nsw i32 %190, 6, !dbg !1445
  %cmp680 = icmp slt i32 %cond675, %add679, !dbg !1445
  %cond675.add679 = select i1 %cmp680, i32 %cond675, i32 %add679, !dbg !1445
  br label %if.end696, !dbg !1445

if.else687:                                       ; preds = %if.then662
  %add688 = add nsw i32 %190, 3, !dbg !1446
  %cmp689 = icmp slt i32 %cond675, %add688, !dbg !1446
  %cond675.add688 = select i1 %cmp689, i32 %cond675, i32 %add688, !dbg !1446
  br label %if.end696

if.end696:                                        ; preds = %if.else687, %if.then678
  %storemerge1092 = phi i32 [ %cond675.add688, %if.else687 ], [ %cond675.add679, %if.then678 ]
  store i32 %storemerge1092, i32* @m_Qc, align 4, !dbg !1445, !tbaa !807
  %191 = load i32* @TotalFrameQP, align 4, !dbg !1447, !tbaa !807
  %add697 = add nsw i32 %191, %storemerge1092, !dbg !1447
  store i32 %add697, i32* @TotalFrameQP, align 4, !dbg !1447, !tbaa !807
  %192 = load i32* @NumberofBasicUnit, align 4, !dbg !1448, !tbaa !807
  %dec698 = add nsw i32 %192, -1, !dbg !1448
  store i32 %dec698, i32* @NumberofBasicUnit, align 4, !dbg !1448, !tbaa !807
  %cmp699 = icmp eq i32 %dec698, 0, !dbg !1449
  br i1 %cmp699, label %if.then701, label %if.end780, !dbg !1449

if.then701:                                       ; preds = %if.end696
  %tobool702 = icmp eq i32 %topfield, 0, !dbg !1450
  br i1 %tobool702, label %if.then707, label %lor.lhs.false703, !dbg !1450

lor.lhs.false703:                                 ; preds = %if.then701
  %193 = load i32* %FieldControl591, align 4, !dbg !1450, !tbaa !807
  %cmp705 = icmp eq i32 %193, 0, !dbg !1450
  br i1 %cmp705, label %if.then707, label %if.end780, !dbg !1450

if.then707:                                       ; preds = %if.then701, %lor.lhs.false703
  %194 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1452, !tbaa !804
  %frame_mbs_only_flag708 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %194, i64 0, i32 25, !dbg !1452
  %195 = load i32* %frame_mbs_only_flag708, align 4, !dbg !1452, !tbaa !805
  %tobool709 = icmp eq i32 %195, 0, !dbg !1452
  br i1 %tobool709, label %lor.lhs.false710, label %if.then714, !dbg !1452

lor.lhs.false710:                                 ; preds = %if.then707
  %PicInterlace711 = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 91, !dbg !1452
  %196 = load i32* %PicInterlace711, align 4, !dbg !1452, !tbaa !807
  switch i32 %196, label %lor.lhs.false755 [
    i32 1, label %if.then714
    i32 2, label %if.then758
  ], !dbg !1452

if.then714:                                       ; preds = %lor.lhs.false710, %if.then707
  %conv715 = sitofp i32 %add697 to double, !dbg !1454
  %197 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1454, !tbaa !807
  %conv717 = sitofp i32 %197 to double, !dbg !1454
  %div718 = fdiv double %conv715, %conv717, !dbg !1454
  %add719 = fadd double %div718, 5.000000e-01, !dbg !1454
  %conv720 = fptosi double %add719 to i32, !dbg !1454
  tail call void @llvm.dbg.value(metadata !{i32 %conv720}, i64 0, metadata !88), !dbg !1454
  %NumberofPPicture721 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 130, !dbg !1456
  %198 = load i32* %NumberofPPicture721, align 4, !dbg !1456, !tbaa !807
  %intra_period = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 31, !dbg !1456
  %199 = load i32* %intra_period, align 4, !dbg !1456, !tbaa !807
  %sub722 = add nsw i32 %199, -2, !dbg !1456
  %cmp723 = icmp eq i32 %198, %sub722, !dbg !1456
  br i1 %cmp723, label %if.then725, label %if.end726, !dbg !1456

if.then725:                                       ; preds = %if.then714
  store i32 %conv720, i32* @QPLastPFrame, align 4, !dbg !1457, !tbaa !807
  br label %if.end726, !dbg !1457

if.end726:                                        ; preds = %if.then725, %if.then714
  %TotalQpforPPicture727 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129, !dbg !1458
  %200 = load i32* %TotalQpforPPicture727, align 4, !dbg !1458, !tbaa !807
  %add728 = add nsw i32 %200, %conv720, !dbg !1458
  store i32 %add728, i32* %TotalQpforPPicture727, align 4, !dbg !1458, !tbaa !807
  %201 = load i32* @GOPOverdue, align 4, !dbg !1459, !tbaa !805
  %cmp729 = icmp eq i32 %201, 1, !dbg !1459
  br i1 %cmp729, label %if.then731, label %if.else733, !dbg !1459

if.then731:                                       ; preds = %if.end726
  %202 = load i32* @PreviousQp2, align 4, !dbg !1460, !tbaa !807
  %add732 = add nsw i32 %202, 1, !dbg !1460
  store i32 %add732, i32* @PreviousQp1, align 4, !dbg !1460, !tbaa !807
  store i32 %conv720, i32* @PreviousQp2, align 4, !dbg !1462, !tbaa !807
  br label %if.end750, !dbg !1463

if.else733:                                       ; preds = %if.end726
  %203 = load i32* %NumberofPPicture721, align 4, !dbg !1464, !tbaa !807
  %cmp735 = icmp eq i32 %203, 0, !dbg !1464
  br i1 %cmp735, label %land.lhs.true737, label %if.else742, !dbg !1464

land.lhs.true737:                                 ; preds = %if.else733
  %204 = load i32* %NumberofGOP, align 4, !dbg !1464, !tbaa !807
  %cmp739 = icmp sgt i32 %204, 1, !dbg !1464
  br i1 %cmp739, label %if.then741, label %if.end750, !dbg !1464

if.then741:                                       ; preds = %land.lhs.true737
  %205 = load i32* @PreviousQp2, align 4, !dbg !1466, !tbaa !807
  store i32 %205, i32* @PreviousQp1, align 4, !dbg !1466, !tbaa !807
  store i32 %conv720, i32* @PreviousQp2, align 4, !dbg !1468, !tbaa !807
  br label %if.end750, !dbg !1469

if.else742:                                       ; preds = %if.else733
  %cmp744 = icmp sgt i32 %203, 0, !dbg !1470
  br i1 %cmp744, label %if.then746, label %if.end750, !dbg !1470

if.then746:                                       ; preds = %if.else742
  %206 = load i32* @PreviousQp2, align 4, !dbg !1471, !tbaa !807
  %add747 = add nsw i32 %206, 1, !dbg !1471
  store i32 %add747, i32* @PreviousQp1, align 4, !dbg !1471, !tbaa !807
  store i32 %conv720, i32* @PreviousQp2, align 4, !dbg !1473, !tbaa !807
  br label %if.end750, !dbg !1474

if.end750:                                        ; preds = %land.lhs.true737, %if.then741, %if.then746, %if.else742, %if.then731
  store i32 %conv720, i32* @PAveFrameQP, align 4, !dbg !1475, !tbaa !807
  %207 = load i32* @PAveHeaderBits2, align 4, !dbg !1476, !tbaa !807
  store i32 %207, i32* @PAveHeaderBits3, align 4, !dbg !1476, !tbaa !807
  %.pre1116 = load i32* @m_Qc, align 4, !dbg !1477, !tbaa !807
  br label %if.end780, !dbg !1478

lor.lhs.false755:                                 ; preds = %lor.lhs.false710
  %MbInterlace756 = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 92, !dbg !1479
  %208 = load i32* %MbInterlace756, align 4, !dbg !1479, !tbaa !807
  %tobool757 = icmp eq i32 %208, 0, !dbg !1479
  br i1 %tobool757, label %if.end780, label %if.then758, !dbg !1479

if.then758:                                       ; preds = %lor.lhs.false755, %lor.lhs.false710
  %209 = load i32* %FieldControl591, align 4, !dbg !1480, !tbaa !807
  %cmp760 = icmp eq i32 %209, 0, !dbg !1480
  %conv763 = sitofp i32 %add697 to double, !dbg !1482
  %210 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1482, !tbaa !807
  %conv765 = sitofp i32 %210 to double, !dbg !1482
  %div766 = fdiv double %conv763, %conv765, !dbg !1482
  %add767 = fadd double %div766, 5.000000e-01, !dbg !1482
  %conv768 = fptosi double %add767 to i32, !dbg !1482
  tail call void @llvm.dbg.value(metadata !{i32 %conv768}, i64 0, metadata !88), !dbg !1482
  br i1 %cmp760, label %if.then762, label %if.else769, !dbg !1480

if.then762:                                       ; preds = %if.then758
  store i32 %conv768, i32* @FrameQPBuffer, align 4, !dbg !1484, !tbaa !807
  %211 = load i32* @PAveHeaderBits2, align 4, !dbg !1485, !tbaa !807
  store i32 %211, i32* @FrameAveHeaderBits, align 4, !dbg !1485, !tbaa !807
  br label %if.end780, !dbg !1486

if.else769:                                       ; preds = %if.then758
  store i32 %conv768, i32* @FieldQPBuffer, align 4, !dbg !1487, !tbaa !807
  %212 = load i32* @PAveHeaderBits2, align 4, !dbg !1489, !tbaa !807
  store i32 %212, i32* @FieldAveHeaderBits, align 4, !dbg !1489, !tbaa !807
  br label %if.end780

if.end780:                                        ; preds = %lor.lhs.false755, %lor.lhs.false703, %if.else769, %if.then762, %if.end750, %if.end696
  %213 = phi i32 [ %storemerge1092, %lor.lhs.false755 ], [ %storemerge1092, %lor.lhs.false703 ], [ %storemerge1092, %if.else769 ], [ %storemerge1092, %if.then762 ], [ %.pre1116, %if.end750 ], [ %storemerge1092, %if.end696 ]
  %214 = phi i32 [ %183, %lor.lhs.false755 ], [ %183, %lor.lhs.false703 ], [ %183, %if.else769 ], [ %183, %if.then762 ], [ %201, %if.end750 ], [ %183, %if.end696 ]
  %cmp781 = icmp eq i32 %214, 1, !dbg !1490
  %PAveFrameQP.m_Qc = select i1 %cmp781, i32* @PAveFrameQP, i32* @m_Qc, !dbg !1491
  %storemerge1093 = load i32* %PAveFrameQP.m_Qc, align 4, !dbg !1492
  store i32 %storemerge1093, i32* @Pm_Qp, align 4, !dbg !1491, !tbaa !807
  br label %return, !dbg !1477

if.else786:                                       ; preds = %if.else652
  %215 = load %struct.InputParameters** @input, align 8, !dbg !1493, !tbaa !804
  %PicInterlace787 = getelementptr inbounds %struct.InputParameters* %215, i64 0, i32 91, !dbg !1493
  %216 = load i32* %PicInterlace787, align 4, !dbg !1493, !tbaa !807
  %cmp788 = icmp eq i32 %216, 2, !dbg !1493
  br i1 %cmp788, label %land.lhs.true793, label %lor.lhs.false790, !dbg !1493

lor.lhs.false790:                                 ; preds = %if.else786
  %MbInterlace791 = getelementptr inbounds %struct.InputParameters* %215, i64 0, i32 92, !dbg !1493
  %217 = load i32* %MbInterlace791, align 4, !dbg !1493, !tbaa !807
  %tobool792 = icmp eq i32 %217, 0, !dbg !1493
  br i1 %tobool792, label %if.else812, label %land.lhs.true793, !dbg !1493

land.lhs.true793:                                 ; preds = %lor.lhs.false790, %if.else786
  %218 = load i32* %FieldControl591, align 4, !dbg !1493, !tbaa !807
  %cmp795 = icmp eq i32 %218, 1, !dbg !1493
  br i1 %cmp795, label %if.then797, label %if.else812, !dbg !1493

if.then797:                                       ; preds = %land.lhs.true793
  %219 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1495, !tbaa !807
  %220 = load i32* @NumberofBasicUnit, align 4, !dbg !1495, !tbaa !807
  %sub798 = sub nsw i32 %219, %220, !dbg !1495
  %idxprom = sext i32 %sub798 to i64, !dbg !1495
  %221 = load double** @FCBUPFMAD, align 8, !dbg !1495, !tbaa !804
  %arrayidx = getelementptr inbounds double* %221, i64 %idxprom, !dbg !1495
  %222 = load double* %arrayidx, align 8, !dbg !1495, !tbaa !862
  %mul799 = fmul double %155, %222, !dbg !1495
  %add800 = fadd double %mul799, %156, !dbg !1495
  store double %add800, double* @CurrentFrameMAD, align 8, !dbg !1495, !tbaa !862
  store double 0.000000e+00, double* @TotalBUMAD, align 8, !dbg !1497, !tbaa !862
  %cmp8031107 = icmp sgt i32 %220, 0, !dbg !1498
  br i1 %cmp8031107, label %for.body.lr.ph, label %if.end833, !dbg !1498

for.body.lr.ph:                                   ; preds = %if.then797
  %223 = sext i32 %219 to i64
  br label %for.body, !dbg !1498

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %224 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add810, %for.body ], !dbg !1498
  %indvars.iv = phi i64 [ %223, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !1498
  %arrayidx806 = getelementptr inbounds double* %221, i64 %indvars.iv.next, !dbg !1500
  %225 = load double* %arrayidx806, align 8, !dbg !1500, !tbaa !862
  %mul807 = fmul double %155, %225, !dbg !1500
  %add808 = fadd double %mul807, %156, !dbg !1500
  store double %add808, double* @CurrentBUMAD, align 8, !dbg !1500, !tbaa !862
  %mul809 = fmul double %add808, %add808, !dbg !1502
  %add810 = fadd double %224, %mul809, !dbg !1502
  store double %add810, double* @TotalBUMAD, align 8, !dbg !1502, !tbaa !862
  %226 = trunc i64 %indvars.iv.next to i32, !dbg !1498
  %cmp803 = icmp sgt i32 %226, %sub798, !dbg !1498
  br i1 %cmp803, label %for.body, label %if.end833, !dbg !1498

if.else812:                                       ; preds = %lor.lhs.false790, %land.lhs.true793
  %227 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1503, !tbaa !807
  %228 = load i32* @NumberofBasicUnit, align 4, !dbg !1503, !tbaa !807
  %sub813 = sub nsw i32 %227, %228, !dbg !1503
  %idxprom814 = sext i32 %sub813 to i64, !dbg !1503
  %229 = load double** @BUPFMAD, align 8, !dbg !1503, !tbaa !804
  %arrayidx815 = getelementptr inbounds double* %229, i64 %idxprom814, !dbg !1503
  %230 = load double* %arrayidx815, align 8, !dbg !1503, !tbaa !862
  %mul816 = fmul double %155, %230, !dbg !1503
  %add817 = fadd double %mul816, %156, !dbg !1503
  store double %add817, double* @CurrentFrameMAD, align 8, !dbg !1503, !tbaa !862
  store double 0.000000e+00, double* @TotalBUMAD, align 8, !dbg !1505, !tbaa !862
  %cmp8211112 = icmp sgt i32 %228, 0, !dbg !1506
  br i1 %cmp8211112, label %for.body823.lr.ph, label %if.end833, !dbg !1506

for.body823.lr.ph:                                ; preds = %if.else812
  %231 = sext i32 %227 to i64
  br label %for.body823, !dbg !1506

for.body823:                                      ; preds = %for.body823.lr.ph, %for.body823
  %232 = phi double [ 0.000000e+00, %for.body823.lr.ph ], [ %add829, %for.body823 ], !dbg !1506
  %indvars.iv1114 = phi i64 [ %231, %for.body823.lr.ph ], [ %indvars.iv.next1115, %for.body823 ]
  %indvars.iv.next1115 = add i64 %indvars.iv1114, -1, !dbg !1506
  %arrayidx825 = getelementptr inbounds double* %229, i64 %indvars.iv.next1115, !dbg !1508
  %233 = load double* %arrayidx825, align 8, !dbg !1508, !tbaa !862
  %mul826 = fmul double %155, %233, !dbg !1508
  %add827 = fadd double %mul826, %156, !dbg !1508
  store double %add827, double* @CurrentBUMAD, align 8, !dbg !1508, !tbaa !862
  %mul828 = fmul double %add827, %add827, !dbg !1510
  %add829 = fadd double %232, %mul828, !dbg !1510
  store double %add829, double* @TotalBUMAD, align 8, !dbg !1510, !tbaa !862
  %234 = trunc i64 %indvars.iv.next1115 to i32, !dbg !1506
  %cmp821 = icmp sgt i32 %234, %sub813, !dbg !1506
  br i1 %cmp821, label %for.body823, label %if.end833, !dbg !1506

if.end833:                                        ; preds = %if.else812, %for.body823, %if.then797, %for.body
  %235 = phi i32 [ %219, %for.body ], [ %219, %if.then797 ], [ %227, %for.body823 ], [ %227, %if.else812 ]
  %236 = phi double [ %add810, %for.body ], [ 0.000000e+00, %if.then797 ], [ %add829, %for.body823 ], [ 0.000000e+00, %if.else812 ]
  %237 = phi double [ %add800, %for.body ], [ %add800, %if.then797 ], [ %add817, %for.body823 ], [ %add817, %if.else812 ]
  %conv834 = sitofp i64 %sub657 to double, !dbg !1511
  %mul835 = fmul double %conv834, %237, !dbg !1511
  %mul836 = fmul double %237, %mul835, !dbg !1511
  %div837 = fdiv double %mul836, %236, !dbg !1511
  %conv838 = fptosi double %div837 to i32, !dbg !1511
  tail call void @llvm.dbg.value(metadata !{i32 %conv838}, i64 0, metadata !85), !dbg !1511
  %238 = load i32* @PAveHeaderBits2, align 4, !dbg !1512, !tbaa !807
  %sub839 = sub nsw i32 %conv838, %238, !dbg !1512
  tail call void @llvm.dbg.value(metadata !{i32 %sub839}, i64 0, metadata !85), !dbg !1512
  %239 = load double* @bit_rate, align 8, !dbg !1513, !tbaa !862
  %240 = load double* @MINVALUE, align 8, !dbg !1513, !tbaa !862
  %241 = load double* @frame_rate, align 8, !dbg !1513, !tbaa !862
  %mul840 = fmul double %240, %241, !dbg !1513
  %conv841 = sitofp i32 %235 to double, !dbg !1513
  %mul842 = fmul double %mul840, %conv841, !dbg !1513
  %div843 = fdiv double %239, %mul842, !dbg !1513
  %conv844 = fptosi double %div843 to i32, !dbg !1513
  %cmp845 = icmp slt i32 %sub839, %conv844, !dbg !1513
  %conv844.sub839 = select i1 %cmp845, i32 %conv844, i32 %sub839, !dbg !1513
  tail call void @llvm.dbg.value(metadata !{i32 %conv844.sub839}, i64 0, metadata !85), !dbg !1513
  %mul856 = fmul double %237, %150, !dbg !1514
  %mul857 = fmul double %237, %mul856, !dbg !1514
  %mul858 = fmul double %150, %mul857, !dbg !1514
  %mul859 = fmul double %151, 4.000000e+00, !dbg !1514
  %mul860 = fmul double %237, %mul859, !dbg !1514
  %conv861 = sitofp i32 %conv844.sub839 to double, !dbg !1514
  %mul862 = fmul double %mul860, %conv861, !dbg !1514
  %add863 = fadd double %mul858, %mul862, !dbg !1514
  tail call void @llvm.dbg.value(metadata !{double %add863}, i64 0, metadata !84), !dbg !1514
  %cmp864 = fcmp oeq double %151, 0.000000e+00, !dbg !1515
  %cmp867 = fcmp olt double %add863, 0.000000e+00, !dbg !1515
  %or.cond1104 = or i1 %cmp864, %cmp867, !dbg !1515
  br i1 %or.cond1104, label %if.then875, label %lor.lhs.false869, !dbg !1515

lor.lhs.false869:                                 ; preds = %if.end833
  %call870 = tail call double @sqrt(double %add863) #8, !dbg !1515
  %242 = load double* @m_X1, align 8, !dbg !1515, !tbaa !862
  %243 = load double* @CurrentFrameMAD, align 8, !dbg !1515, !tbaa !862
  %mul871 = fmul double %242, %243, !dbg !1515
  %sub872 = fsub double %call870, %mul871, !dbg !1515
  %cmp873 = fcmp ugt double %sub872, 0.000000e+00, !dbg !1515
  br i1 %cmp873, label %if.else881, label %if.then875, !dbg !1515

if.then875:                                       ; preds = %lor.lhs.false869, %if.end833
  %244 = phi double [ %243, %lor.lhs.false869 ], [ %237, %if.end833 ]
  %245 = phi double [ %242, %lor.lhs.false869 ], [ %150, %if.end833 ]
  %mul876 = fmul double %245, %244, !dbg !1516
  %div878 = fdiv double %mul876, %conv861, !dbg !1516
  br label %if.end890, !dbg !1516

if.else881:                                       ; preds = %lor.lhs.false869
  %246 = load double* @m_X2, align 8, !dbg !1517, !tbaa !862
  %mul882 = fmul double %246, 2.000000e+00, !dbg !1517
  %mul883 = fmul double %243, %mul882, !dbg !1517
  %call884 = tail call double @sqrt(double %add863) #8, !dbg !1517
  %247 = load double* @m_X1, align 8, !dbg !1517, !tbaa !862
  %248 = load double* @CurrentFrameMAD, align 8, !dbg !1517, !tbaa !862
  %mul885 = fmul double %247, %248, !dbg !1517
  %sub886 = fsub double %call884, %mul885, !dbg !1517
  %div887 = fdiv double %mul883, %sub886, !dbg !1517
  br label %if.end890

if.end890:                                        ; preds = %if.else881, %if.then875
  %storemerge.in.in = phi double [ %div887, %if.else881 ], [ %div878, %if.then875 ]
  %storemerge.in = fptrunc double %storemerge.in.in to float, !dbg !1517
  %storemerge = fpext float %storemerge.in to double, !dbg !1517
  store double %storemerge, double* @m_Qstep, align 8, !dbg !1516, !tbaa !862
  %call891 = tail call i32 @Qstep2QP(double %storemerge) #10, !dbg !1518
  %249 = load i32* @m_Qp, align 4, !dbg !1519, !tbaa !807
  %250 = load i32* @DDquant, align 4, !dbg !1519, !tbaa !807
  %add892 = add nsw i32 %250, %249, !dbg !1519
  %cmp893 = icmp slt i32 %add892, %call891, !dbg !1519
  %add892.call891 = select i1 %cmp893, i32 %add892, i32 %call891, !dbg !1519
  store i32 %add892.call891, i32* @m_Qc, align 4, !dbg !1519, !tbaa !807
  %251 = load %struct.InputParameters** @input, align 8, !dbg !1520, !tbaa !804
  %basicunit900 = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 130, !dbg !1520
  %252 = load i32* %basicunit900, align 4, !dbg !1520, !tbaa !807
  %253 = load i32* @MBPerRow, align 4, !dbg !1520, !tbaa !807
  %cmp901 = icmp slt i32 %252, %253, !dbg !1520
  %254 = load i32* @PAveFrameQP, align 4, !dbg !1521, !tbaa !807
  br i1 %cmp901, label %if.else912, label %if.then903, !dbg !1520

if.then903:                                       ; preds = %if.end890
  %add904 = add nsw i32 %254, 6, !dbg !1521
  %cmp905 = icmp slt i32 %add904, %add892.call891, !dbg !1521
  %add904.add892.call891 = select i1 %cmp905, i32 %add904, i32 %add892.call891, !dbg !1521
  br label %if.end921, !dbg !1521

if.else912:                                       ; preds = %if.end890
  %add913 = add nsw i32 %254, 3, !dbg !1522
  %cmp914 = icmp slt i32 %add913, %add892.call891, !dbg !1522
  %add913.add892.call891 = select i1 %cmp914, i32 %add913, i32 %add892.call891, !dbg !1522
  br label %if.end921

if.end921:                                        ; preds = %if.else912, %if.then903
  %storemerge1089 = phi i32 [ %add913.add892.call891, %if.else912 ], [ %add904.add892.call891, %if.then903 ]
  %255 = load i32* @RC_MAX_QUANT, align 4, !dbg !1523, !tbaa !807
  %cmp922 = icmp slt i32 %storemerge1089, %255, !dbg !1523
  %cond927 = select i1 %cmp922, i32 %storemerge1089, i32 %255, !dbg !1523
  %sub928 = sub nsw i32 %249, %250, !dbg !1524
  %cmp929 = icmp slt i32 %sub928, %cond927, !dbg !1524
  %cond927.sub928 = select i1 %cmp929, i32 %cond927, i32 %sub928, !dbg !1524
  store i32 %cond927.sub928, i32* @m_Qc, align 4, !dbg !1524, !tbaa !807
  %256 = load i32* %basicunit900, align 4, !dbg !1525, !tbaa !807
  %cmp937 = icmp slt i32 %256, %253, !dbg !1525
  br i1 %cmp937, label %if.else948, label %if.then939, !dbg !1525

if.then939:                                       ; preds = %if.end921
  %sub940 = add nsw i32 %254, -6, !dbg !1526
  %cmp941 = icmp slt i32 %sub940, %cond927.sub928, !dbg !1526
  %cond927.sub928.sub940 = select i1 %cmp941, i32 %cond927.sub928, i32 %sub940, !dbg !1526
  br label %if.end957, !dbg !1526

if.else948:                                       ; preds = %if.end921
  %sub949 = add nsw i32 %254, -3, !dbg !1527
  %cmp950 = icmp slt i32 %sub949, %cond927.sub928, !dbg !1527
  %cond927.sub928.sub949 = select i1 %cmp950, i32 %cond927.sub928, i32 %sub949, !dbg !1527
  br label %if.end957

if.end957:                                        ; preds = %if.else948, %if.then939
  %storemerge1090 = phi i32 [ %cond927.sub928.sub949, %if.else948 ], [ %cond927.sub928.sub940, %if.then939 ]
  %257 = load i32* @RC_MIN_QUANT, align 4, !dbg !1528, !tbaa !807
  %cmp958 = icmp slt i32 %257, %storemerge1090, !dbg !1528
  %cond963 = select i1 %cmp958, i32 %storemerge1090, i32 %257, !dbg !1528
  store i32 %cond963, i32* @m_Qc, align 4, !dbg !1528, !tbaa !807
  %258 = load i32* @TotalFrameQP, align 4, !dbg !1529, !tbaa !807
  %add964 = add nsw i32 %cond963, %258, !dbg !1529
  store i32 %add964, i32* @TotalFrameQP, align 4, !dbg !1529, !tbaa !807
  store i32 %cond963, i32* @Pm_Qp, align 4, !dbg !1530, !tbaa !807
  %259 = load i32* @NumberofBasicUnit, align 4, !dbg !1531, !tbaa !807
  %dec965 = add nsw i32 %259, -1, !dbg !1531
  store i32 %dec965, i32* @NumberofBasicUnit, align 4, !dbg !1531, !tbaa !807
  %cmp966 = icmp eq i32 %dec965, 0, !dbg !1532
  br i1 %cmp966, label %land.lhs.true968, label %return, !dbg !1532

land.lhs.true968:                                 ; preds = %if.end957
  %260 = load %struct.ImageParameters** @img, align 8, !dbg !1532, !tbaa !804
  %type969 = getelementptr inbounds %struct.ImageParameters* %260, i64 0, i32 6, !dbg !1532
  %261 = load i32* %type969, align 4, !dbg !1532, !tbaa !807
  %cmp970 = icmp eq i32 %261, 0, !dbg !1532
  br i1 %cmp970, label %if.then972, label %return, !dbg !1532

if.then972:                                       ; preds = %land.lhs.true968
  %tobool973 = icmp eq i32 %topfield, 0, !dbg !1533
  br i1 %tobool973, label %if.then978, label %lor.lhs.false974, !dbg !1533

lor.lhs.false974:                                 ; preds = %if.then972
  %FieldControl975 = getelementptr inbounds %struct.ImageParameters* %260, i64 0, i32 134, !dbg !1533
  %262 = load i32* %FieldControl975, align 4, !dbg !1533, !tbaa !807
  %cmp976 = icmp eq i32 %262, 0, !dbg !1533
  br i1 %cmp976, label %if.then978, label %return, !dbg !1533

if.then978:                                       ; preds = %if.then972, %lor.lhs.false974
  %263 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !dbg !1535, !tbaa !804
  %frame_mbs_only_flag979 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %263, i64 0, i32 25, !dbg !1535
  %264 = load i32* %frame_mbs_only_flag979, align 4, !dbg !1535, !tbaa !805
  %tobool980 = icmp eq i32 %264, 0, !dbg !1535
  br i1 %tobool980, label %lor.lhs.false981, label %if.then985, !dbg !1535

lor.lhs.false981:                                 ; preds = %if.then978
  %PicInterlace982 = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 91, !dbg !1535
  %265 = load i32* %PicInterlace982, align 4, !dbg !1535, !tbaa !807
  switch i32 %265, label %lor.lhs.false1005 [
    i32 1, label %if.then985
    i32 2, label %if.then1008
  ], !dbg !1535

if.then985:                                       ; preds = %lor.lhs.false981, %if.then978
  %conv986 = sitofp i32 %add964 to double, !dbg !1537
  %266 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1537, !tbaa !807
  %conv988 = sitofp i32 %266 to double, !dbg !1537
  %div989 = fdiv double %conv986, %conv988, !dbg !1537
  %add990 = fadd double %div989, 5.000000e-01, !dbg !1537
  %conv991 = fptosi double %add990 to i32, !dbg !1537
  tail call void @llvm.dbg.value(metadata !{i32 %conv991}, i64 0, metadata !88), !dbg !1537
  %NumberofPPicture992 = getelementptr inbounds %struct.ImageParameters* %260, i64 0, i32 130, !dbg !1539
  %267 = load i32* %NumberofPPicture992, align 4, !dbg !1539, !tbaa !807
  %intra_period993 = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 31, !dbg !1539
  %268 = load i32* %intra_period993, align 4, !dbg !1539, !tbaa !807
  %sub994 = add nsw i32 %268, -2, !dbg !1539
  %cmp995 = icmp eq i32 %267, %sub994, !dbg !1539
  br i1 %cmp995, label %if.then997, label %if.end998, !dbg !1539

if.then997:                                       ; preds = %if.then985
  store i32 %conv991, i32* @QPLastPFrame, align 4, !dbg !1540, !tbaa !807
  br label %if.end998, !dbg !1540

if.end998:                                        ; preds = %if.then997, %if.then985
  %TotalQpforPPicture999 = getelementptr inbounds %struct.ImageParameters* %260, i64 0, i32 129, !dbg !1541
  %269 = load i32* %TotalQpforPPicture999, align 4, !dbg !1541, !tbaa !807
  %add1000 = add nsw i32 %269, %conv991, !dbg !1541
  store i32 %add1000, i32* %TotalQpforPPicture999, align 4, !dbg !1541, !tbaa !807
  %270 = load i32* @PreviousQp2, align 4, !dbg !1542, !tbaa !807
  store i32 %270, i32* @PreviousQp1, align 4, !dbg !1542, !tbaa !807
  store i32 %conv991, i32* @PreviousQp2, align 4, !dbg !1543, !tbaa !807
  store i32 %conv991, i32* @PAveFrameQP, align 4, !dbg !1544, !tbaa !807
  %271 = load i32* @PAveHeaderBits2, align 4, !dbg !1545, !tbaa !807
  store i32 %271, i32* @PAveHeaderBits3, align 4, !dbg !1545, !tbaa !807
  %.pre1117 = load i32* @m_Qc, align 4, !dbg !1546, !tbaa !807
  br label %return, !dbg !1547

lor.lhs.false1005:                                ; preds = %lor.lhs.false981
  %MbInterlace1006 = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 92, !dbg !1548
  %272 = load i32* %MbInterlace1006, align 4, !dbg !1548, !tbaa !807
  %tobool1007 = icmp eq i32 %272, 0, !dbg !1548
  br i1 %tobool1007, label %return, label %if.then1008, !dbg !1548

if.then1008:                                      ; preds = %lor.lhs.false1005, %lor.lhs.false981
  %FieldControl1009 = getelementptr inbounds %struct.ImageParameters* %260, i64 0, i32 134, !dbg !1549
  %273 = load i32* %FieldControl1009, align 4, !dbg !1549, !tbaa !807
  %cmp1010 = icmp eq i32 %273, 0, !dbg !1549
  %conv1013 = sitofp i32 %add964 to double, !dbg !1551
  %274 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1551, !tbaa !807
  %conv1015 = sitofp i32 %274 to double, !dbg !1551
  %div1016 = fdiv double %conv1013, %conv1015, !dbg !1551
  %add1017 = fadd double %div1016, 5.000000e-01, !dbg !1551
  %conv1018 = fptosi double %add1017 to i32, !dbg !1551
  tail call void @llvm.dbg.value(metadata !{i32 %conv1018}, i64 0, metadata !88), !dbg !1551
  br i1 %cmp1010, label %if.then1012, label %if.else1019, !dbg !1549

if.then1012:                                      ; preds = %if.then1008
  store i32 %conv1018, i32* @FrameQPBuffer, align 4, !dbg !1553, !tbaa !807
  %275 = load i32* @PAveHeaderBits2, align 4, !dbg !1554, !tbaa !807
  store i32 %275, i32* @FrameAveHeaderBits, align 4, !dbg !1554, !tbaa !807
  br label %return, !dbg !1555

if.else1019:                                      ; preds = %if.then1008
  store i32 %conv1018, i32* @FieldQPBuffer, align 4, !dbg !1556, !tbaa !807
  %276 = load i32* @PAveHeaderBits2, align 4, !dbg !1558, !tbaa !807
  store i32 %276, i32* @FieldAveHeaderBits, align 4, !dbg !1558, !tbaa !807
  br label %return

if.end1036:                                       ; preds = %if.else314, %if.then544, %if.else332, %land.lhs.true552
  %277 = load i32* @m_Qc, align 4, !dbg !1559, !tbaa !807
  br label %return, !dbg !1559

return:                                           ; preds = %if.end957, %land.lhs.true968, %if.end998, %if.then1012, %if.else1019, %lor.lhs.false974, %lor.lhs.false1005, %if.end283, %if.else293, %if.then290, %if.then165, %if.else172, %if.then170, %if.end1036, %if.end780, %if.end649, %if.end587, %if.else532, %if.end531, %if.then331, %if.then318, %if.end313, %if.end160, %if.then4
  %retval.0 = phi i32 [ %5, %if.then4 ], [ %storemerge1101, %if.end160 ], [ %91, %if.end313 ], [ %93, %if.then318 ], [ %96, %if.then331 ], [ %storemerge1095, %if.end531 ], [ %125, %if.else532 ], [ %148, %if.end587 ], [ %277, %if.end1036 ], [ %177, %if.end649 ], [ %213, %if.end780 ], [ %40, %if.then170 ], [ %34, %if.else172 ], [ %34, %if.then165 ], [ %82, %if.then290 ], [ %storemerge1099, %if.else293 ], [ %storemerge1099, %if.end283 ], [ %cond963, %lor.lhs.false1005 ], [ %cond963, %lor.lhs.false974 ], [ %cond963, %if.else1019 ], [ %cond963, %if.then1012 ], [ %.pre1117, %if.end998 ], [ %cond963, %land.lhs.true968 ], [ %cond963, %if.end957 ]
  ret i32 %retval.0, !dbg !1560
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @Qstep2QP(double %Qstep) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{double %Qstep}, i64 0, metadata !154), !dbg !1561
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !155), !dbg !1562
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !156), !dbg !1562
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !1563), !dbg !1565
  tail call void @llvm.dbg.value(metadata !1566, i64 0, metadata !1567), !dbg !1568
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !1569), !dbg !1570
  %cmp = fcmp olt double %Qstep, 6.250000e-01, !dbg !1564
  br i1 %cmp, label %return, label %for.body.i, !dbg !1564

for.body.i:                                       ; preds = %entry, %for.body.i
  %Qstep.05.i = phi double [ %mul.i, %for.body.i ], [ 8.750000e-01, %entry ]
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %mul.i = fmul double %Qstep.05.i, 2.000000e+00, !dbg !1572
  tail call void @llvm.dbg.value(metadata !{double %mul.i}, i64 0, metadata !1574), !dbg !1572
  %inc.i = add nsw i32 %i.04.i, 1, !dbg !1575
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !1576), !dbg !1575
  %exitcond = icmp eq i32 %inc.i, 8, !dbg !1575
  br i1 %exitcond, label %QP2Qstep.exit, label %for.body.i, !dbg !1575

QP2Qstep.exit:                                    ; preds = %for.body.i
  %cmp2 = fcmp olt double %mul.i, %Qstep, !dbg !1573
  br i1 %cmp2, label %return, label %while.cond.preheader, !dbg !1573

while.cond.preheader:                             ; preds = %QP2Qstep.exit
  tail call void @llvm.dbg.value(metadata !1577, i64 0, metadata !1578), !dbg !1580
  tail call void @llvm.dbg.value(metadata !1581, i64 0, metadata !1582), !dbg !1583
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !1584), !dbg !1585
  %cmp636 = fcmp ogt double %Qstep, 1.125000e+00, !dbg !1579
  br i1 %cmp636, label %while.body, label %while.end, !dbg !1579

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %q_per.038 = phi i32 [ %add, %while.body ], [ 0, %while.cond.preheader ]
  %Qstep.addr.037 = phi double [ %div, %while.body ], [ %Qstep, %while.cond.preheader ]
  %div = fmul double %Qstep.addr.037, 5.000000e-01, !dbg !1586
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !154), !dbg !1586
  %add = add nsw i32 %q_per.038, 1, !dbg !1588
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !155), !dbg !1588
  tail call void @llvm.dbg.value(metadata !1577, i64 0, metadata !1578), !dbg !1580
  tail call void @llvm.dbg.value(metadata !1581, i64 0, metadata !1582), !dbg !1583
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !1584), !dbg !1585
  %cmp6 = fcmp ogt double %div, 1.125000e+00, !dbg !1579
  br i1 %cmp6, label %while.body, label %while.cond.while.end_crit_edge, !dbg !1579

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %phitmp = mul i32 %add, 6, !dbg !1579
  br label %while.end, !dbg !1579

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader
  %q_per.0.lcssa = phi i32 [ %phitmp, %while.cond.while.end_crit_edge ], [ 0, %while.cond.preheader ]
  %Qstep.addr.0.lcssa = phi double [ %div, %while.cond.while.end_crit_edge ], [ %Qstep, %while.cond.preheader ]
  %cmp7 = fcmp ugt double %Qstep.addr.0.lcssa, 6.562500e-01, !dbg !1589
  br i1 %cmp7, label %if.else9, label %if.end26, !dbg !1589

if.else9:                                         ; preds = %while.end
  %cmp10 = fcmp ugt double %Qstep.addr.0.lcssa, 7.500000e-01, !dbg !1590
  br i1 %cmp10, label %if.else12, label %if.end26, !dbg !1590

if.else12:                                        ; preds = %if.else9
  %cmp13 = fcmp ugt double %Qstep.addr.0.lcssa, 8.437500e-01, !dbg !1591
  br i1 %cmp13, label %if.else15, label %if.end26, !dbg !1591

if.else15:                                        ; preds = %if.else12
  %cmp16 = fcmp ugt double %Qstep.addr.0.lcssa, 9.375000e-01, !dbg !1592
  br i1 %cmp16, label %if.else18, label %if.end26, !dbg !1592

if.else18:                                        ; preds = %if.else15
  %cmp19 = fcmp ugt double %Qstep.addr.0.lcssa, 1.062500e+00, !dbg !1593
  %. = select i1 %cmp19, i32 5, i32 4
  br label %if.end26

if.end26:                                         ; preds = %if.else18, %if.else15, %if.else12, %if.else9, %while.end
  %q_rem.0 = phi i32 [ 0, %while.end ], [ 1, %if.else9 ], [ 2, %if.else12 ], [ 3, %if.else15 ], [ %., %if.else18 ]
  %add27 = add nsw i32 %q_rem.0, %q_per.0.lcssa, !dbg !1594
  br label %return, !dbg !1594

return:                                           ; preds = %QP2Qstep.exit, %entry, %if.end26
  %retval.0 = phi i32 [ %add27, %if.end26 ], [ 0, %entry ], [ 51, %QP2Qstep.exit ]
  ret i32 %retval.0, !dbg !1595
}

; Function Attrs: nounwind optsize uwtable
define void @updateRCModel() #0 {
entry:
  %error = alloca [20 x double], align 16
  %0 = bitcast [20 x double]* %error to i8*, !dbg !1596
  call void @llvm.lifetime.start(i64 160, i8* %0) #7, !dbg !1596
  call void @llvm.dbg.declare(metadata !{[20 x double]* %error}, metadata !95), !dbg !1596
  call void @llvm.dbg.value(metadata !1597, i64 0, metadata !99), !dbg !1596
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !102), !dbg !1598
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1599, !tbaa !804
  %type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6, !dbg !1599
  %2 = load i32* %type, align 4, !dbg !1599, !tbaa !807
  %cmp = icmp eq i32 %2, 0, !dbg !1599
  br i1 %cmp, label %if.then, label %if.end210, !dbg !1599

if.then:                                          ; preds = %entry
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 139, !dbg !1600
  %3 = load i32* %BasicUnit, align 4, !dbg !1600, !tbaa !807
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 136, !dbg !1600
  %4 = load i32* %Frame_Total_Number_MB, align 4, !dbg !1600, !tbaa !807
  %cmp1 = icmp eq i32 %3, %4, !dbg !1600
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !1600

if.then2:                                         ; preds = %if.then
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !1602), !dbg !1605
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !1606), !dbg !1607
  %cmp7.i = icmp sgt i32 %3, 0, !dbg !1607
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %ComputeFrameMAD.exit, !dbg !1607

for.body.lr.ph.i:                                 ; preds = %if.then2
  %MADofMB.phi.trans.insert.i = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 131
  %.pre.i = load double** %MADofMB.phi.trans.insert.i, align 8, !dbg !1609, !tbaa !804
  br label %for.body.i, !dbg !1607

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %TotalMAD.08.i = phi double [ 0.000000e+00, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds double* %.pre.i, i64 %indvars.iv.i, !dbg !1609
  %5 = load double* %arrayidx.i, align 8, !dbg !1609, !tbaa !862
  %add.i = fadd double %TotalMAD.08.i, %5, !dbg !1609
  tail call void @llvm.dbg.value(metadata !{double %add.i}, i64 0, metadata !1602), !dbg !1609
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1607
  %lftr.wideiv276 = trunc i64 %indvars.iv.next.i to i32, !dbg !1607
  %exitcond277 = icmp eq i32 %lftr.wideiv276, %3, !dbg !1607
  br i1 %exitcond277, label %ComputeFrameMAD.exit, label %for.body.i, !dbg !1607

ComputeFrameMAD.exit:                             ; preds = %for.body.i, %if.then2
  %TotalMAD.0.lcssa.i = phi double [ 0.000000e+00, %if.then2 ], [ %add.i, %for.body.i ]
  %conv.i = sitofp i32 %3 to double, !dbg !1610
  %div.i = fdiv double %TotalMAD.0.lcssa.i, %conv.i, !dbg !1610
  tail call void @llvm.dbg.value(metadata !{double %div.i}, i64 0, metadata !1602), !dbg !1610
  store double %div.i, double* @CurrentFrameMAD, align 8, !dbg !1603, !tbaa !862
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 127, !dbg !1611
  %6 = load i32* %NumberofCodedPFrame, align 4, !dbg !1611, !tbaa !807
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !101), !dbg !1611
  br label %if.end67, !dbg !1612

if.else:                                          ; preds = %if.then
  %7 = load %struct.InputParameters** @input, align 8, !dbg !1613, !tbaa !804
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 92, !dbg !1613
  %8 = load i32* %MbInterlace, align 4, !dbg !1613, !tbaa !807
  %tobool = icmp eq i32 %8, 0, !dbg !1613
  br i1 %tobool, label %if.else7, label %land.lhs.true, !dbg !1613

land.lhs.true:                                    ; preds = %if.else
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 134, !dbg !1613
  %9 = load i32* %FieldControl, align 4, !dbg !1613, !tbaa !807
  %cmp3 = icmp eq i32 %9, 0, !dbg !1613
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !1613

if.then4:                                         ; preds = %land.lhs.true
  %TotalMADBasicUnit = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 123, !dbg !1615
  %10 = load double* %TotalMADBasicUnit, align 8, !dbg !1615, !tbaa !862
  %conv = sitofp i32 %3 to double, !dbg !1615
  %div = fdiv double %10, %conv, !dbg !1615
  %div6 = fmul double %div, 5.000000e-01, !dbg !1615
  br label %if.end, !dbg !1615

if.else7:                                         ; preds = %if.else, %land.lhs.true
  %TotalMADBasicUnit8 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 123, !dbg !1616
  %11 = load double* %TotalMADBasicUnit8, align 8, !dbg !1616, !tbaa !862
  %conv10 = sitofp i32 %3 to double, !dbg !1616
  %div11 = fdiv double %11, %conv10, !dbg !1616
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then4
  %storemerge = phi double [ %div11, %if.else7 ], [ %div6, %if.then4 ]
  store double %storemerge, double* @CurrentFrameMAD, align 8, !dbg !1615, !tbaa !862
  %TotalMADBasicUnit12 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 123, !dbg !1617
  store double 0.000000e+00, double* %TotalMADBasicUnit12, align 8, !dbg !1617, !tbaa !862
  %12 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1618, !tbaa !807
  %13 = load i32* @NumberofBasicUnit, align 4, !dbg !1618, !tbaa !807
  %sub = sub nsw i32 %12, %13, !dbg !1618
  store i32 %sub, i32* @CodedBasicUnit, align 4, !dbg !1618, !tbaa !807
  %cmp13 = icmp sgt i32 %sub, 0, !dbg !1619
  br i1 %cmp13, label %if.then15, label %if.end37, !dbg !1619

if.then15:                                        ; preds = %if.end
  %14 = load i32* @PAveHeaderBits1, align 4, !dbg !1620, !tbaa !807
  %sub16 = add nsw i32 %sub, -1, !dbg !1620
  %mul = mul nsw i32 %14, %sub16, !dbg !1620
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 121, !dbg !1620
  %15 = load i32* %NumberofBasicUnitHeaderBits, align 4, !dbg !1620, !tbaa !807
  %add = add nsw i32 %15, %mul, !dbg !1620
  %conv17 = sitofp i32 %add to double, !dbg !1620
  %conv19 = sitofp i32 %sub to double, !dbg !1620
  %div20 = fdiv double %conv17, %conv19, !dbg !1620
  %add21 = fadd double %div20, 5.000000e-01, !dbg !1620
  %conv22 = fptosi double %add21 to i32, !dbg !1620
  store i32 %conv22, i32* @PAveHeaderBits1, align 4, !dbg !1620, !tbaa !807
  %16 = load i32* @PAveHeaderBits3, align 4, !dbg !1622, !tbaa !807
  %cmp23 = icmp eq i32 %16, 0, !dbg !1622
  br i1 %cmp23, label %if.then25, label %if.else26, !dbg !1622

if.then25:                                        ; preds = %if.then15
  store i32 %conv22, i32* @PAveHeaderBits2, align 4, !dbg !1623, !tbaa !807
  br label %if.end37, !dbg !1623

if.else26:                                        ; preds = %if.then15
  %mul27 = mul nsw i32 %sub, %conv22, !dbg !1624
  %mul28 = mul nsw i32 %13, %16, !dbg !1624
  %add29 = add nsw i32 %mul28, %mul27, !dbg !1624
  %conv30 = sitofp i32 %add29 to double, !dbg !1624
  %conv32 = sitofp i32 %12 to double, !dbg !1624
  %div33 = fdiv double %conv30, %conv32, !dbg !1624
  %add34 = fadd double %div33, 5.000000e-01, !dbg !1624
  %conv35 = fptosi double %add34 to i32, !dbg !1624
  store i32 %conv35, i32* @PAveHeaderBits2, align 4, !dbg !1624, !tbaa !807
  br label %if.end37

if.end37:                                         ; preds = %if.then25, %if.else26, %if.end
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 91, !dbg !1625
  %17 = load i32* %PicInterlace, align 4, !dbg !1625, !tbaa !807
  %cmp38 = icmp eq i32 %17, 2, !dbg !1625
  br i1 %cmp38, label %land.lhs.true42, label %lor.lhs.false, !dbg !1625

lor.lhs.false:                                    ; preds = %if.end37
  %18 = load i32* %MbInterlace, align 4, !dbg !1625, !tbaa !807
  %tobool41 = icmp eq i32 %18, 0, !dbg !1625
  br i1 %tobool41, label %if.else49, label %land.lhs.true42, !dbg !1625

land.lhs.true42:                                  ; preds = %lor.lhs.false, %if.end37
  %FieldControl43 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 134, !dbg !1625
  %19 = load i32* %FieldControl43, align 4, !dbg !1625, !tbaa !807
  %cmp44 = icmp eq i32 %19, 1, !dbg !1625
  br i1 %cmp44, label %if.then46, label %if.else49, !dbg !1625

if.then46:                                        ; preds = %land.lhs.true42
  %20 = load double* @CurrentFrameMAD, align 8, !dbg !1626, !tbaa !862
  %sub47 = add nsw i32 %12, -1, !dbg !1626
  %sub48 = sub i32 %sub47, %13, !dbg !1626
  %idxprom = sext i32 %sub48 to i64, !dbg !1626
  %21 = load double** @FCBUCFMAD, align 8, !dbg !1626, !tbaa !804
  %arrayidx = getelementptr inbounds double* %21, i64 %idxprom, !dbg !1626
  store double %20, double* %arrayidx, align 8, !dbg !1626, !tbaa !862
  br label %if.end54, !dbg !1626

if.else49:                                        ; preds = %lor.lhs.false, %land.lhs.true42
  %22 = load double* @CurrentFrameMAD, align 8, !dbg !1627, !tbaa !862
  %sub50 = add nsw i32 %12, -1, !dbg !1627
  %sub51 = sub i32 %sub50, %13, !dbg !1627
  %idxprom52 = sext i32 %sub51 to i64, !dbg !1627
  %23 = load double** @BUCFMAD, align 8, !dbg !1627, !tbaa !804
  %arrayidx53 = getelementptr inbounds double* %23, i64 %idxprom52, !dbg !1627
  store double %22, double* %arrayidx53, align 8, !dbg !1627, !tbaa !862
  br label %if.end54

if.end54:                                         ; preds = %if.else49, %if.then46
  %cmp55 = icmp eq i32 %13, 0, !dbg !1628
  %NumberofCodedPFrame58 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 127, !dbg !1629
  %24 = load i32* %NumberofCodedPFrame58, align 4, !dbg !1629, !tbaa !807
  br i1 %cmp55, label %if.else61, label %if.then57, !dbg !1628

if.then57:                                        ; preds = %if.end54
  %mul59 = mul nsw i32 %12, %24, !dbg !1629
  %add60 = add nsw i32 %mul59, %sub, !dbg !1629
  call void @llvm.dbg.value(metadata !{i32 %add60}, i64 0, metadata !101), !dbg !1629
  br label %if.end67, !dbg !1629

if.else61:                                        ; preds = %if.end54
  %sub63 = add nsw i32 %24, -1, !dbg !1630
  %mul64 = mul nsw i32 %12, %sub63, !dbg !1630
  %add65 = add nsw i32 %mul64, %sub, !dbg !1630
  call void @llvm.dbg.value(metadata !{i32 %add65}, i64 0, metadata !101), !dbg !1630
  br label %if.end67

if.end67:                                         ; preds = %if.then57, %if.else61, %ComputeFrameMAD.exit
  %m_Nc.0 = phi i32 [ %6, %ComputeFrameMAD.exit ], [ %add60, %if.then57 ], [ %add65, %if.else61 ]
  call void @llvm.dbg.value(metadata !1631, i64 0, metadata !102), !dbg !1632
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 119, !dbg !1633
  %25 = load i32* %NumberofHeaderBits, align 4, !dbg !1633, !tbaa !807
  store i32 %25, i32* @PPreHeader, align 4, !dbg !1633, !tbaa !807
  call void @llvm.dbg.value(metadata !1634, i64 0, metadata !94), !dbg !1635
  br label %for.body, !dbg !1635

for.body:                                         ; preds = %if.end67, %for.body
  %indvars.iv274 = phi i64 [ 19, %if.end67 ], [ %indvars.iv.next275, %for.body ]
  %indvars.iv.next275 = add i64 %indvars.iv274, -1, !dbg !1635
  %arrayidx76 = getelementptr inbounds [20 x double]* @Pm_rgQp, i64 0, i64 %indvars.iv.next275, !dbg !1637
  %26 = load double* %arrayidx76, align 8, !dbg !1637, !tbaa !862
  %arrayidx78 = getelementptr inbounds [20 x double]* @Pm_rgQp, i64 0, i64 %indvars.iv274, !dbg !1637
  store double %26, double* %arrayidx78, align 8, !dbg !1637, !tbaa !862
  %arrayidx82 = getelementptr inbounds [21 x double]* @m_rgQp, i64 0, i64 %indvars.iv274, !dbg !1639
  store double %26, double* %arrayidx82, align 8, !dbg !1639, !tbaa !862
  %arrayidx85 = getelementptr inbounds [20 x double]* @Pm_rgRp, i64 0, i64 %indvars.iv.next275, !dbg !1640
  %27 = load double* %arrayidx85, align 8, !dbg !1640, !tbaa !862
  %arrayidx87 = getelementptr inbounds [20 x double]* @Pm_rgRp, i64 0, i64 %indvars.iv274, !dbg !1640
  store double %27, double* %arrayidx87, align 8, !dbg !1640, !tbaa !862
  %arrayidx91 = getelementptr inbounds [21 x double]* @m_rgRp, i64 0, i64 %indvars.iv274, !dbg !1641
  store double %27, double* %arrayidx91, align 8, !dbg !1641, !tbaa !862
  %28 = trunc i64 %indvars.iv.next275 to i32, !dbg !1635
  %cmp72 = icmp sgt i32 %28, 0, !dbg !1635
  br i1 %cmp72, label %for.body, label %for.end, !dbg !1635

for.end:                                          ; preds = %for.body
  %cmp68 = icmp sgt i32 %m_Nc.0, 1, !dbg !1642
  %29 = load i32* @m_Qc, align 4, !dbg !1643, !tbaa !807
  tail call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !1644), !dbg !1645
  %rem.i = srem i32 %29, 6, !dbg !1646
  %idxprom.i = sext i32 %rem.i to i64, !dbg !1646
  %arrayidx.i254 = getelementptr inbounds [6 x double]* @QP2Qstep.QP2QSTEP, i64 0, i64 %idxprom.i, !dbg !1646
  %30 = load double* %arrayidx.i254, align 8, !dbg !1646, !tbaa !862
  tail call void @llvm.dbg.value(metadata !{double %30}, i64 0, metadata !1647), !dbg !1646
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !1648), !dbg !1649
  %div.i255 = sdiv i32 %29, 6, !dbg !1649
  %cmp3.i = icmp sgt i32 %29, 5, !dbg !1649
  br i1 %cmp3.i, label %for.body.i257, label %QP2Qstep.exit, !dbg !1649

for.body.i257:                                    ; preds = %for.end, %for.body.i257
  %Qstep.05.i = phi double [ %mul.i, %for.body.i257 ], [ %30, %for.end ]
  %i.04.i = phi i32 [ %inc.i, %for.body.i257 ], [ 0, %for.end ]
  %mul.i = fmul double %Qstep.05.i, 2.000000e+00, !dbg !1650
  tail call void @llvm.dbg.value(metadata !{double %mul.i}, i64 0, metadata !1647), !dbg !1650
  %inc.i = add nsw i32 %i.04.i, 1, !dbg !1649
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !1648), !dbg !1649
  %cmp.i256 = icmp slt i32 %inc.i, %div.i255, !dbg !1649
  br i1 %cmp.i256, label %for.body.i257, label %QP2Qstep.exit, !dbg !1649

QP2Qstep.exit:                                    ; preds = %for.body.i257, %for.end
  %31 = phi double [ %30, %for.end ], [ %mul.i, %for.body.i257 ]
  store double %31, double* getelementptr inbounds ([20 x double]* @Pm_rgQp, i64 0, i64 0), align 16, !dbg !1643, !tbaa !862
  %32 = load i32* %BasicUnit, align 4, !dbg !1651, !tbaa !807
  %33 = load i32* %Frame_Total_Number_MB, align 4, !dbg !1651, !tbaa !807
  %cmp95 = icmp eq i32 %32, %33, !dbg !1651
  br i1 %cmp95, label %if.then97, label %if.else101, !dbg !1651

if.then97:                                        ; preds = %QP2Qstep.exit
  %NumberofTextureBits = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 120, !dbg !1652
  %34 = load i32* %NumberofTextureBits, align 4, !dbg !1652, !tbaa !807
  %conv98 = sitofp i32 %34 to double, !dbg !1652
  %35 = load double* @CurrentFrameMAD, align 8, !dbg !1652, !tbaa !862
  %div100 = fdiv double %conv98, %35, !dbg !1652
  br label %if.end105, !dbg !1652

if.else101:                                       ; preds = %QP2Qstep.exit
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 122, !dbg !1653
  %36 = load i32* %NumberofBasicUnitTextureBits, align 4, !dbg !1653, !tbaa !807
  %conv102 = sitofp i32 %36 to double, !dbg !1653
  %37 = load double* @CurrentFrameMAD, align 8, !dbg !1653, !tbaa !862
  %div104 = fdiv double %conv102, %37, !dbg !1653
  br label %if.end105

if.end105:                                        ; preds = %if.else101, %if.then97
  %38 = phi double [ %35, %if.then97 ], [ %37, %if.else101 ]
  %storemerge253 = phi double [ %div100, %if.then97 ], [ %div104, %if.else101 ]
  store double %storemerge253, double* getelementptr inbounds ([20 x double]* @Pm_rgRp, i64 0, i64 0), align 16, !dbg !1653, !tbaa !862
  store double %31, double* getelementptr inbounds ([21 x double]* @m_rgQp, i64 0, i64 0), align 16, !dbg !1654, !tbaa !862
  store double %storemerge253, double* getelementptr inbounds ([21 x double]* @m_rgRp, i64 0, i64 0), align 16, !dbg !1655, !tbaa !862
  %39 = load double* @Pm_X1, align 8, !dbg !1656, !tbaa !862
  store double %39, double* @m_X1, align 8, !dbg !1656, !tbaa !862
  %40 = load double* @Pm_X2, align 8, !dbg !1657, !tbaa !862
  store double %40, double* @m_X2, align 8, !dbg !1657, !tbaa !862
  %41 = load double* @PreviousFrameMAD, align 8, !dbg !1658, !tbaa !862
  %cmp106 = fcmp ogt double %38, %41, !dbg !1658
  br i1 %cmp106, label %cond.true, label %cond.false, !dbg !1658

cond.true:                                        ; preds = %if.end105
  %div108 = fdiv double %41, %38, !dbg !1658
  br label %cond.end, !dbg !1658

cond.false:                                       ; preds = %if.end105
  %div111 = fdiv double %38, %41, !dbg !1658
  br label %cond.end, !dbg !1658

cond.end:                                         ; preds = %cond.false, %cond.true
  %div108.sink = phi double [ %div108, %cond.true ], [ %div111, %cond.false ]
  %mul109 = fmul double %div108.sink, 2.000000e+01, !dbg !1658
  %conv110 = fptosi double %mul109 to i32, !dbg !1658
  call void @llvm.dbg.value(metadata !{i32 %conv110}, i64 0, metadata !93), !dbg !1658
  %cmp114 = icmp slt i32 %conv110, 1, !dbg !1659
  %cond119 = select i1 %cmp114, i32 1, i32 %conv110, !dbg !1659
  call void @llvm.dbg.value(metadata !{i32 %cond119}, i64 0, metadata !93), !dbg !1659
  %cmp120 = icmp slt i32 %cond119, %m_Nc.0, !dbg !1660
  %cond125 = select i1 %cmp120, i32 %cond119, i32 %m_Nc.0, !dbg !1660
  call void @llvm.dbg.value(metadata !{i32 %cond125}, i64 0, metadata !93), !dbg !1660
  %42 = load i32* @m_windowSize, align 4, !dbg !1661, !tbaa !807
  %add126 = add nsw i32 %42, 1, !dbg !1661
  %cmp127 = icmp slt i32 %cond125, %add126, !dbg !1661
  %cond125.add126 = select i1 %cmp127, i32 %cond125, i32 %add126, !dbg !1661
  call void @llvm.dbg.value(metadata !{i32 %cond125.add126}, i64 0, metadata !93), !dbg !1661
  %cmp134 = icmp slt i32 %cond125.add126, 20, !dbg !1662
  %cond139 = select i1 %cmp134, i32 %cond125.add126, i32 20, !dbg !1662
  call void @llvm.dbg.value(metadata !{i32 %cond139}, i64 0, metadata !93), !dbg !1662
  store i32 %cond139, i32* @m_windowSize, align 4, !dbg !1663, !tbaa !807
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !94), !dbg !1664
  call void @llvm.memset.p0i8.i64(i8* bitcast ([21 x i32]* @m_rgRejected to i8*), i8 0, i64 80, i32 16, i1 false), !dbg !1666
  call void @RCModelEstimator(i32 %cond139) #10, !dbg !1668
  %43 = load i32* @m_windowSize, align 4, !dbg !1669, !tbaa !807
  call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !93), !dbg !1669
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !94), !dbg !1670
  %cmp149261 = icmp sgt i32 %43, 0, !dbg !1670
  br i1 %cmp149261, label %for.body151.lr.ph, label %cond.false179, !dbg !1670

for.body151.lr.ph:                                ; preds = %cond.end
  %44 = load double* @m_X1, align 8, !dbg !1672, !tbaa !862
  %45 = load double* @m_X2, align 8, !dbg !1672, !tbaa !862
  br label %for.body151, !dbg !1670

for.body151:                                      ; preds = %for.body151, %for.body151.lr.ph
  %indvars.iv266 = phi i64 [ 0, %for.body151.lr.ph ], [ %indvars.iv.next267, %for.body151 ]
  %std.0263 = phi double [ 0.000000e+00, %for.body151.lr.ph ], [ %add172, %for.body151 ]
  %arrayidx153 = getelementptr inbounds [21 x double]* @m_rgQp, i64 0, i64 %indvars.iv266, !dbg !1672
  %46 = load double* %arrayidx153, align 8, !dbg !1672, !tbaa !862
  %div154 = fdiv double %44, %46, !dbg !1672
  %mul159 = fmul double %46, %46, !dbg !1672
  %div160 = fdiv double %45, %mul159, !dbg !1672
  %add161 = fadd double %div154, %div160, !dbg !1672
  %arrayidx163 = getelementptr inbounds [21 x double]* @m_rgRp, i64 0, i64 %indvars.iv266, !dbg !1672
  %47 = load double* %arrayidx163, align 8, !dbg !1672, !tbaa !862
  %sub164 = fsub double %add161, %47, !dbg !1672
  %arrayidx166 = getelementptr inbounds [20 x double]* %error, i64 0, i64 %indvars.iv266, !dbg !1672
  store double %sub164, double* %arrayidx166, align 8, !dbg !1672, !tbaa !862
  %mul171 = fmul double %sub164, %sub164, !dbg !1674
  %add172 = fadd double %std.0263, %mul171, !dbg !1674
  call void @llvm.dbg.value(metadata !{double %add172}, i64 0, metadata !99), !dbg !1674
  %indvars.iv.next267 = add i64 %indvars.iv266, 1, !dbg !1670
  %lftr.wideiv268 = trunc i64 %indvars.iv.next267 to i32, !dbg !1670
  %exitcond269 = icmp eq i32 %lftr.wideiv268, %43, !dbg !1670
  br i1 %exitcond269, label %for.end175, label %for.body151, !dbg !1670

for.end175:                                       ; preds = %for.body151
  %cmp176 = icmp eq i32 %43, 2, !dbg !1675
  br i1 %cmp176, label %cond.end183, label %cond.false179, !dbg !1675

cond.false179:                                    ; preds = %cond.end, %for.end175
  %std.0.lcssa279 = phi double [ %add172, %for.end175 ], [ 0.000000e+00, %cond.end ]
  %conv180 = sitofp i32 %43 to double, !dbg !1675
  %div181 = fdiv double %std.0.lcssa279, %conv180, !dbg !1675
  %call182 = call double @sqrt(double %div181) #8, !dbg !1675
  br label %cond.end183, !dbg !1675

cond.end183:                                      ; preds = %for.end175, %cond.false179
  %cond184 = phi double [ %call182, %cond.false179 ], [ 0.000000e+00, %for.end175 ], !dbg !1675
  call void @llvm.dbg.value(metadata !{double %cond184}, i64 0, metadata !100), !dbg !1675
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !94), !dbg !1676
  br i1 %cmp149261, label %for.body188, label %for.end200, !dbg !1676

for.body188:                                      ; preds = %cond.end183, %for.inc198
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc198 ], [ 0, %cond.end183 ]
  %arrayidx190 = getelementptr inbounds [20 x double]* %error, i64 0, i64 %indvars.iv, !dbg !1678
  %48 = load double* %arrayidx190, align 8, !dbg !1678, !tbaa !862
  %call191 = call double @fabs(double %48) #9, !dbg !1678
  %cmp192 = fcmp ogt double %call191, %cond184, !dbg !1678
  br i1 %cmp192, label %if.then194, label %for.inc198, !dbg !1678

if.then194:                                       ; preds = %for.body188
  %arrayidx196 = getelementptr inbounds [21 x i32]* @m_rgRejected, i64 0, i64 %indvars.iv, !dbg !1680
  store i32 1, i32* %arrayidx196, align 4, !dbg !1680, !tbaa !805
  br label %for.inc198, !dbg !1680

for.inc198:                                       ; preds = %for.body188, %if.then194
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1676
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1676
  %exitcond = icmp eq i32 %lftr.wideiv, %43, !dbg !1676
  br i1 %exitcond, label %for.end200, label %for.body188, !dbg !1676

for.end200:                                       ; preds = %for.inc198, %cond.end183
  store i32 0, i32* getelementptr inbounds ([21 x i32]* @m_rgRejected, i64 0, i64 0), align 16, !dbg !1681, !tbaa !805
  call void @RCModelEstimator(i32 %43) #10, !dbg !1682
  br i1 %cmp68, label %if.then202, label %if.else203, !dbg !1683

if.then202:                                       ; preds = %for.end200
  call void @updateMADModel() #10, !dbg !1684
  br label %if.end210, !dbg !1684

if.else203:                                       ; preds = %for.end200
  %49 = load %struct.ImageParameters** @img, align 8, !dbg !1685, !tbaa !804
  %type204 = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 6, !dbg !1685
  %50 = load i32* %type204, align 4, !dbg !1685, !tbaa !807
  %cmp205 = icmp eq i32 %50, 0, !dbg !1685
  br i1 %cmp205, label %if.then207, label %if.end210, !dbg !1685

if.then207:                                       ; preds = %if.else203
  %51 = load double* @CurrentFrameMAD, align 8, !dbg !1686, !tbaa !862
  store double %51, double* getelementptr inbounds ([21 x double]* @PPictureMAD, i64 0, i64 0), align 16, !dbg !1686, !tbaa !862
  br label %if.end210, !dbg !1686

if.end210:                                        ; preds = %if.then202, %if.then207, %if.else203, %entry
  call void @llvm.lifetime.end(i64 160, i8* %0) #7, !dbg !1687
  ret void, !dbg !1687
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize readnone uwtable
define double @QP2Qstep(i32 %QP) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %QP}, i64 0, metadata !147), !dbg !1688
  %rem = srem i32 %QP, 6, !dbg !1689
  %idxprom = sext i32 %rem to i64, !dbg !1689
  %arrayidx = getelementptr inbounds [6 x double]* @QP2Qstep.QP2QSTEP, i64 0, i64 %idxprom, !dbg !1689
  %0 = load double* %arrayidx, align 8, !dbg !1689, !tbaa !862
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !149), !dbg !1689
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !148), !dbg !1690
  %div = sdiv i32 %QP, 6, !dbg !1690
  %cmp3 = icmp sgt i32 %QP, 5, !dbg !1690
  br i1 %cmp3, label %for.body, label %for.end, !dbg !1690

for.body:                                         ; preds = %entry, %for.body
  %Qstep.05 = phi double [ %mul, %for.body ], [ %0, %entry ]
  %i.04 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %mul = fmul double %Qstep.05, 2.000000e+00, !dbg !1691
  tail call void @llvm.dbg.value(metadata !{double %mul}, i64 0, metadata !149), !dbg !1691
  %inc = add nsw i32 %i.04, 1, !dbg !1690
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !148), !dbg !1690
  %cmp = icmp slt i32 %inc, %div, !dbg !1690
  br i1 %cmp, label %for.body, label %for.end, !dbg !1690

for.end:                                          ; preds = %for.body, %entry
  %Qstep.0.lcssa = phi double [ %0, %entry ], [ %mul, %for.body ]
  ret double %Qstep.0.lcssa, !dbg !1692
}

; Function Attrs: nounwind optsize uwtable
define void @RCModelEstimator(i32 %n_windowSize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n_windowSize}, i64 0, metadata !105), !dbg !1693
  tail call void @llvm.dbg.value(metadata !{i32 %n_windowSize}, i64 0, metadata !106), !dbg !1694
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !109), !dbg !1695
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !110), !dbg !1695
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !111), !dbg !1695
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !112), !dbg !1695
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !113), !dbg !1695
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !114), !dbg !1695
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !116), !dbg !1696
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !107), !dbg !1697
  %cmp159 = icmp sgt i32 %n_windowSize, 0, !dbg !1697
  br i1 %cmp159, label %for.body, label %for.end.thread, !dbg !1697

for.end.thread:                                   ; preds = %entry
  store double 0.000000e+00, double* @m_X2, align 8, !dbg !1699, !tbaa !862
  store double 0.000000e+00, double* @m_X1, align 8, !dbg !1699, !tbaa !862
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !107), !dbg !1700
  br label %if.end90, !dbg !1700

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %for.body ], [ 0, %entry ]
  %n_realSize.0161 = phi i32 [ %n_realSize.0.dec, %for.body ], [ %n_windowSize, %entry ]
  %arrayidx = getelementptr inbounds [21 x i32]* @m_rgRejected, i64 0, i64 %indvars.iv171, !dbg !1702
  %0 = load i32* %arrayidx, align 4, !dbg !1702, !tbaa !805
  %not.tobool = icmp ne i32 %0, 0, !dbg !1702
  %dec = sext i1 %not.tobool to i32, !dbg !1702
  %n_realSize.0.dec = add nsw i32 %dec, %n_realSize.0161, !dbg !1702
  %indvars.iv.next172 = add i64 %indvars.iv171, 1, !dbg !1697
  %lftr.wideiv173 = trunc i64 %indvars.iv.next172 to i32, !dbg !1697
  %exitcond174 = icmp eq i32 %lftr.wideiv173, %n_windowSize, !dbg !1697
  br i1 %exitcond174, label %for.end, label %for.body, !dbg !1697

for.end:                                          ; preds = %for.body
  store double 0.000000e+00, double* @m_X2, align 8, !dbg !1699, !tbaa !862
  store double 0.000000e+00, double* @m_X1, align 8, !dbg !1699, !tbaa !862
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !107), !dbg !1700
  br i1 %cmp159, label %for.body3, label %if.end90, !dbg !1700

for.cond14.preheader:                             ; preds = %for.inc11
  br i1 %cmp159, label %for.body16.lr.ph, label %if.end90, !dbg !1704

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %conv = sitofp i32 %n_realSize.0.dec to double, !dbg !1706
  br label %for.body16, !dbg !1704

for.body3:                                        ; preds = %for.end, %for.inc11
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %for.inc11 ], [ 0, %for.end ]
  %oneSampleQ.0157 = phi double [ %oneSampleQ.1, %for.inc11 ], [ undef, %for.end ]
  %arrayidx5 = getelementptr inbounds [21 x i32]* @m_rgRejected, i64 0, i64 %indvars.iv167, !dbg !1708
  %1 = load i32* %arrayidx5, align 4, !dbg !1708, !tbaa !805
  %tobool6 = icmp eq i32 %1, 0, !dbg !1708
  br i1 %tobool6, label %if.then7, label %for.inc11, !dbg !1708

if.then7:                                         ; preds = %for.body3
  %arrayidx9 = getelementptr inbounds [21 x double]* @m_rgQp, i64 0, i64 %indvars.iv167, !dbg !1710
  %2 = load double* %arrayidx9, align 8, !dbg !1710, !tbaa !862
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !108), !dbg !1710
  br label %for.inc11, !dbg !1710

for.inc11:                                        ; preds = %for.body3, %if.then7
  %oneSampleQ.1 = phi double [ %oneSampleQ.0157, %for.body3 ], [ %2, %if.then7 ]
  %indvars.iv.next168 = add i64 %indvars.iv167, 1, !dbg !1700
  %lftr.wideiv169 = trunc i64 %indvars.iv.next168 to i32, !dbg !1700
  %exitcond170 = icmp eq i32 %lftr.wideiv169, %n_windowSize, !dbg !1700
  br i1 %exitcond170, label %for.cond14.preheader, label %for.body3, !dbg !1700

for.body16:                                       ; preds = %for.inc34, %for.body16.lr.ph
  %3 = phi double [ 0.000000e+00, %for.body16.lr.ph ], [ %7, %for.inc34 ]
  %indvars.iv163 = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next164, %for.inc34 ]
  %estimateX2.0153 = phi i32 [ 0, %for.body16.lr.ph ], [ %estimateX2.1, %for.inc34 ]
  %arrayidx18 = getelementptr inbounds [21 x double]* @m_rgQp, i64 0, i64 %indvars.iv163, !dbg !1711
  %4 = load double* %arrayidx18, align 8, !dbg !1711, !tbaa !862
  %cmp19 = fcmp une double %4, %oneSampleQ.1, !dbg !1711
  %arrayidx21 = getelementptr inbounds [21 x i32]* @m_rgRejected, i64 0, i64 %indvars.iv163, !dbg !1711
  %5 = load i32* %arrayidx21, align 4, !dbg !1711, !tbaa !805
  br i1 %cmp19, label %land.lhs.true, label %if.end24, !dbg !1711

land.lhs.true:                                    ; preds = %for.body16
  %tobool22 = icmp eq i32 %5, 0, !dbg !1711
  tail call void @llvm.dbg.value(metadata !1631, i64 0, metadata !116), !dbg !1712
  %.estimateX2.0 = select i1 %tobool22, i32 1, i32 %estimateX2.0153, !dbg !1711
  br label %if.end24, !dbg !1711

if.end24:                                         ; preds = %for.body16, %land.lhs.true
  %estimateX2.1 = phi i32 [ %.estimateX2.0, %land.lhs.true ], [ %estimateX2.0153, %for.body16 ]
  %tobool27 = icmp eq i32 %5, 0, !dbg !1713
  br i1 %tobool27, label %if.then28, label %for.inc34, !dbg !1713

if.then28:                                        ; preds = %if.end24
  %arrayidx32 = getelementptr inbounds [21 x double]* @m_rgRp, i64 0, i64 %indvars.iv163, !dbg !1706
  %6 = load double* %arrayidx32, align 8, !dbg !1706, !tbaa !862
  %mul = fmul double %4, %6, !dbg !1706
  %div = fdiv double %mul, %conv, !dbg !1706
  %add = fadd double %div, %3, !dbg !1706
  store double %add, double* @m_X1, align 8, !dbg !1706, !tbaa !862
  br label %for.inc34, !dbg !1706

for.inc34:                                        ; preds = %if.end24, %if.then28
  %7 = phi double [ %3, %if.end24 ], [ %add, %if.then28 ]
  %indvars.iv.next164 = add i64 %indvars.iv163, 1, !dbg !1704
  %lftr.wideiv165 = trunc i64 %indvars.iv.next164 to i32, !dbg !1704
  %exitcond166 = icmp eq i32 %lftr.wideiv165, %n_windowSize, !dbg !1704
  br i1 %exitcond166, label %for.end36, label %for.body16, !dbg !1704

for.end36:                                        ; preds = %for.inc34
  %cmp37 = icmp slt i32 %n_realSize.0.dec, 1, !dbg !1714
  %tobool40 = icmp eq i32 %estimateX2.1, 0, !dbg !1714
  %or.cond = or i1 %cmp37, %tobool40, !dbg !1714
  br i1 %or.cond, label %if.end90, label %for.cond42.preheader, !dbg !1714

for.cond42.preheader:                             ; preds = %for.end36
  br i1 %cmp159, label %for.body45, label %for.end74, !dbg !1715

for.body45:                                       ; preds = %for.cond42.preheader, %for.inc72
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc72 ], [ 0, %for.cond42.preheader ]
  %b1.0145 = phi double [ %b1.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %b0.0144 = phi double [ %b0.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a11.0143 = phi double [ %a11.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a10.0142 = phi double [ %a10.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a01.0141 = phi double [ %a01.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a00.0140 = phi double [ %a00.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %arrayidx47 = getelementptr inbounds [21 x i32]* @m_rgRejected, i64 0, i64 %indvars.iv, !dbg !1718
  %8 = load i32* %arrayidx47, align 4, !dbg !1718, !tbaa !805
  %tobool48 = icmp eq i32 %8, 0, !dbg !1718
  br i1 %tobool48, label %if.then49, label %for.inc72, !dbg !1718

if.then49:                                        ; preds = %for.body45
  %add50 = fadd double %a00.0140, 1.000000e+00, !dbg !1720
  tail call void @llvm.dbg.value(metadata !{double %add50}, i64 0, metadata !109), !dbg !1720
  %arrayidx52 = getelementptr inbounds [21 x double]* @m_rgQp, i64 0, i64 %indvars.iv, !dbg !1722
  %9 = load double* %arrayidx52, align 8, !dbg !1722, !tbaa !862
  %div53 = fdiv double 1.000000e+00, %9, !dbg !1722
  %add54 = fadd double %a01.0141, %div53, !dbg !1722
  tail call void @llvm.dbg.value(metadata !{double %add54}, i64 0, metadata !110), !dbg !1722
  tail call void @llvm.dbg.value(metadata !{double %add54}, i64 0, metadata !111), !dbg !1723
  %mul59 = fmul double %9, %9, !dbg !1724
  %div60 = fdiv double 1.000000e+00, %mul59, !dbg !1724
  %add61 = fadd double %a11.0143, %div60, !dbg !1724
  tail call void @llvm.dbg.value(metadata !{double %add61}, i64 0, metadata !112), !dbg !1724
  %arrayidx65 = getelementptr inbounds [21 x double]* @m_rgRp, i64 0, i64 %indvars.iv, !dbg !1725
  %10 = load double* %arrayidx65, align 8, !dbg !1725, !tbaa !862
  %mul66 = fmul double %9, %10, !dbg !1725
  %add67 = fadd double %b0.0144, %mul66, !dbg !1725
  tail call void @llvm.dbg.value(metadata !{double %add67}, i64 0, metadata !113), !dbg !1725
  %add70 = fadd double %b1.0145, %10, !dbg !1726
  tail call void @llvm.dbg.value(metadata !{double %add70}, i64 0, metadata !114), !dbg !1726
  br label %for.inc72, !dbg !1727

for.inc72:                                        ; preds = %for.body45, %if.then49
  %a00.1 = phi double [ %a00.0140, %for.body45 ], [ %add50, %if.then49 ]
  %a01.1 = phi double [ %a01.0141, %for.body45 ], [ %add54, %if.then49 ]
  %a10.1 = phi double [ %a10.0142, %for.body45 ], [ %add54, %if.then49 ]
  %a11.1 = phi double [ %a11.0143, %for.body45 ], [ %add61, %if.then49 ]
  %b0.1 = phi double [ %b0.0144, %for.body45 ], [ %add67, %if.then49 ]
  %b1.1 = phi double [ %b1.0145, %for.body45 ], [ %add70, %if.then49 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1715
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1715
  %exitcond = icmp eq i32 %lftr.wideiv, %n_windowSize, !dbg !1715
  br i1 %exitcond, label %for.end74, label %for.body45, !dbg !1715

for.end74:                                        ; preds = %for.inc72, %for.cond42.preheader
  %b1.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %b1.1, %for.inc72 ]
  %b0.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %b0.1, %for.inc72 ]
  %a11.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a11.1, %for.inc72 ]
  %a10.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a10.1, %for.inc72 ]
  %a01.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a01.1, %for.inc72 ]
  %a00.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a00.1, %for.inc72 ]
  %mul75 = fmul double %a00.0.lcssa, %a11.0.lcssa, !dbg !1728
  %mul76 = fmul double %a01.0.lcssa, %a10.0.lcssa, !dbg !1728
  %sub = fsub double %mul75, %mul76, !dbg !1728
  tail call void @llvm.dbg.value(metadata !{double %sub}, i64 0, metadata !115), !dbg !1728
  %call = tail call double @fabs(double %sub) #9, !dbg !1729
  %cmp77 = fcmp ogt double %call, 1.000000e-06, !dbg !1729
  br i1 %cmp77, label %if.then79, label %if.else, !dbg !1729

if.then79:                                        ; preds = %for.end74
  %mul80 = fmul double %a11.0.lcssa, %b0.0.lcssa, !dbg !1730
  %mul81 = fmul double %a01.0.lcssa, %b1.0.lcssa, !dbg !1730
  %sub82 = fsub double %mul80, %mul81, !dbg !1730
  %div83 = fdiv double %sub82, %sub, !dbg !1730
  store double %div83, double* @m_X1, align 8, !dbg !1730, !tbaa !862
  %mul84 = fmul double %a00.0.lcssa, %b1.0.lcssa, !dbg !1732
  %mul85 = fmul double %a10.0.lcssa, %b0.0.lcssa, !dbg !1732
  %sub86 = fsub double %mul84, %mul85, !dbg !1732
  %div87 = fdiv double %sub86, %sub, !dbg !1732
  store double %div87, double* @m_X2, align 8, !dbg !1732, !tbaa !862
  br label %if.end90, !dbg !1733

if.else:                                          ; preds = %for.end74
  %div88 = fdiv double %b0.0.lcssa, %a00.0.lcssa, !dbg !1734
  store double %div88, double* @m_X1, align 8, !dbg !1734, !tbaa !862
  store double 0.000000e+00, double* @m_X2, align 8, !dbg !1736, !tbaa !862
  br label %if.end90

if.end90:                                         ; preds = %for.end, %for.end.thread, %for.cond14.preheader, %for.end36, %if.then79, %if.else
  %11 = phi double [ 0.000000e+00, %for.end36 ], [ %div87, %if.then79 ], [ 0.000000e+00, %if.else ], [ 0.000000e+00, %for.cond14.preheader ], [ 0.000000e+00, %for.end.thread ], [ 0.000000e+00, %for.end ]
  %12 = phi double [ %7, %for.end36 ], [ %div83, %if.then79 ], [ %div88, %if.else ], [ 0.000000e+00, %for.cond14.preheader ], [ 0.000000e+00, %for.end.thread ], [ 0.000000e+00, %for.end ]
  %13 = load %struct.ImageParameters** @img, align 8, !dbg !1737, !tbaa !804
  %type = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 6, !dbg !1737
  %14 = load i32* %type, align 4, !dbg !1737, !tbaa !807
  %cmp91 = icmp eq i32 %14, 0, !dbg !1737
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !1737

if.then93:                                        ; preds = %if.end90
  store double %12, double* @Pm_X1, align 8, !dbg !1738, !tbaa !862
  store double %11, double* @Pm_X2, align 8, !dbg !1740, !tbaa !862
  br label %if.end94, !dbg !1741

if.end94:                                         ; preds = %if.then93, %if.end90
  ret void, !dbg !1742
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize readonly uwtable
define double @ComputeFrameMAD() #5 {
entry:
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !119), !dbg !1743
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !120), !dbg !1744
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1744, !tbaa !804
  %Frame_Total_Number_MB6 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 136, !dbg !1744
  %1 = load i32* %Frame_Total_Number_MB6, align 4, !dbg !1744, !tbaa !807
  %cmp7 = icmp sgt i32 %1, 0, !dbg !1744
  br i1 %cmp7, label %for.body.lr.ph, label %for.end, !dbg !1744

for.body.lr.ph:                                   ; preds = %entry
  %MADofMB.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 131
  %.pre = load double** %MADofMB.phi.trans.insert, align 8, !dbg !1745, !tbaa !804
  br label %for.body, !dbg !1744

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %TotalMAD.08 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds double* %.pre, i64 %indvars.iv, !dbg !1745
  %2 = load double* %arrayidx, align 8, !dbg !1745, !tbaa !862
  %add = fadd double %TotalMAD.08, %2, !dbg !1745
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !119), !dbg !1745
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1744
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !1744
  %cmp = icmp slt i32 %3, %1, !dbg !1744
  br i1 %cmp, label %for.body, label %for.end, !dbg !1744

for.end:                                          ; preds = %for.body, %entry
  %TotalMAD.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %conv = sitofp i32 %1 to double, !dbg !1746
  %div = fdiv double %TotalMAD.0.lcssa, %conv, !dbg !1746
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !119), !dbg !1746
  ret double %div, !dbg !1747
}

; Function Attrs: nounwind optsize uwtable
define void @updateMADModel() #0 {
entry:
  %error = alloca [20 x double], align 16
  %0 = bitcast [20 x double]* %error to i8*, !dbg !1748
  call void @llvm.lifetime.start(i64 160, i8* %0) #7, !dbg !1748
  call void @llvm.dbg.declare(metadata !{[20 x double]* %error}, metadata !125), !dbg !1748
  call void @llvm.dbg.value(metadata !1597, i64 0, metadata !126), !dbg !1748
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1749, !tbaa !804
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 127, !dbg !1749
  %2 = load i32* %NumberofCodedPFrame, align 4, !dbg !1749, !tbaa !807
  %cmp = icmp sgt i32 %2, 0, !dbg !1749
  br i1 %cmp, label %if.then, label %if.end127, !dbg !1749

if.then:                                          ; preds = %entry
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 139, !dbg !1750
  %3 = load i32* %BasicUnit, align 4, !dbg !1750, !tbaa !807
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 136, !dbg !1750
  %4 = load i32* %Frame_Total_Number_MB, align 4, !dbg !1750, !tbaa !807
  %cmp1 = icmp eq i32 %3, %4, !dbg !1750
  br i1 %cmp1, label %if.end, label %if.else, !dbg !1750

if.else:                                          ; preds = %if.then
  %5 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1752, !tbaa !807
  %mul = mul nsw i32 %5, %2, !dbg !1752
  %6 = load i32* @CodedBasicUnit, align 4, !dbg !1752, !tbaa !807
  %add = add nsw i32 %mul, %6, !dbg !1752
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !128), !dbg !1752
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %m_Nc.0 = phi i32 [ %add, %if.else ], [ %2, %if.then ]
  call void @llvm.dbg.value(metadata !1634, i64 0, metadata !124), !dbg !1753
  br label %for.body, !dbg !1753

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv188 = phi i64 [ 19, %if.end ], [ %indvars.iv.next189, %for.body ]
  %indvars.iv.next189 = add i64 %indvars.iv188, -1, !dbg !1753
  %arrayidx = getelementptr inbounds [21 x double]* @PPictureMAD, i64 0, i64 %indvars.iv.next189, !dbg !1755
  %7 = load double* %arrayidx, align 8, !dbg !1755, !tbaa !862
  %arrayidx7 = getelementptr inbounds [21 x double]* @PPictureMAD, i64 0, i64 %indvars.iv188, !dbg !1755
  store double %7, double* %arrayidx7, align 8, !dbg !1755, !tbaa !862
  %arrayidx11 = getelementptr inbounds [21 x double]* @PictureMAD, i64 0, i64 %indvars.iv188, !dbg !1757
  store double %7, double* %arrayidx11, align 8, !dbg !1757, !tbaa !862
  %arrayidx14 = getelementptr inbounds [21 x double]* @ReferenceMAD, i64 0, i64 %indvars.iv.next189, !dbg !1758
  %8 = load double* %arrayidx14, align 8, !dbg !1758, !tbaa !862
  %arrayidx16 = getelementptr inbounds [21 x double]* @ReferenceMAD, i64 0, i64 %indvars.iv188, !dbg !1758
  store double %8, double* %arrayidx16, align 8, !dbg !1758, !tbaa !862
  %9 = trunc i64 %indvars.iv.next189 to i32, !dbg !1753
  %cmp5 = icmp sgt i32 %9, 0, !dbg !1753
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1753

for.end:                                          ; preds = %for.body
  %10 = load double* @CurrentFrameMAD, align 8, !dbg !1759, !tbaa !862
  store double %10, double* getelementptr inbounds ([21 x double]* @PPictureMAD, i64 0, i64 0), align 16, !dbg !1759, !tbaa !862
  store double %10, double* getelementptr inbounds ([21 x double]* @PictureMAD, i64 0, i64 0), align 16, !dbg !1760, !tbaa !862
  br i1 %cmp1, label %if.then20, label %if.else21, !dbg !1761

if.then20:                                        ; preds = %for.end
  %11 = load double* getelementptr inbounds ([21 x double]* @PictureMAD, i64 0, i64 1), align 8, !dbg !1762, !tbaa !862
  store double %11, double* getelementptr inbounds ([21 x double]* @ReferenceMAD, i64 0, i64 0), align 16, !dbg !1762, !tbaa !862
  br label %if.end35, !dbg !1762

if.else21:                                        ; preds = %for.end
  %12 = load %struct.InputParameters** @input, align 8, !dbg !1763, !tbaa !804
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 91, !dbg !1763
  %13 = load i32* %PicInterlace, align 4, !dbg !1763, !tbaa !807
  %cmp22 = icmp eq i32 %13, 2, !dbg !1763
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false, !dbg !1763

lor.lhs.false:                                    ; preds = %if.else21
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 92, !dbg !1763
  %14 = load i32* %MbInterlace, align 4, !dbg !1763, !tbaa !807
  %tobool = icmp eq i32 %14, 0, !dbg !1763
  br i1 %tobool, label %if.else29, label %land.lhs.true, !dbg !1763

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else21
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 134, !dbg !1763
  %15 = load i32* %FieldControl, align 4, !dbg !1763, !tbaa !807
  %cmp23 = icmp eq i32 %15, 1, !dbg !1763
  br i1 %cmp23, label %if.then24, label %if.else29, !dbg !1763

if.then24:                                        ; preds = %land.lhs.true
  %16 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1765, !tbaa !807
  %sub25 = add nsw i32 %16, -1, !dbg !1765
  %17 = load i32* @NumberofBasicUnit, align 4, !dbg !1765, !tbaa !807
  %sub26 = sub i32 %sub25, %17, !dbg !1765
  %idxprom27 = sext i32 %sub26 to i64, !dbg !1765
  %18 = load double** @FCBUPFMAD, align 8, !dbg !1765, !tbaa !804
  %arrayidx28 = getelementptr inbounds double* %18, i64 %idxprom27, !dbg !1765
  %19 = load double* %arrayidx28, align 8, !dbg !1765, !tbaa !862
  store double %19, double* getelementptr inbounds ([21 x double]* @ReferenceMAD, i64 0, i64 0), align 16, !dbg !1765, !tbaa !862
  br label %if.end35, !dbg !1765

if.else29:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %20 = load i32* @TotalNumberofBasicUnit, align 4, !dbg !1766, !tbaa !807
  %sub30 = add nsw i32 %20, -1, !dbg !1766
  %21 = load i32* @NumberofBasicUnit, align 4, !dbg !1766, !tbaa !807
  %sub31 = sub i32 %sub30, %21, !dbg !1766
  %idxprom32 = sext i32 %sub31 to i64, !dbg !1766
  %22 = load double** @BUPFMAD, align 8, !dbg !1766, !tbaa !804
  %arrayidx33 = getelementptr inbounds double* %22, i64 %idxprom32, !dbg !1766
  %23 = load double* %arrayidx33, align 8, !dbg !1766, !tbaa !862
  store double %23, double* getelementptr inbounds ([21 x double]* @ReferenceMAD, i64 0, i64 0), align 16, !dbg !1766, !tbaa !862
  br label %if.end35

if.end35:                                         ; preds = %if.then24, %if.else29, %if.then20
  %24 = load double* @PMADPictureC1, align 8, !dbg !1767, !tbaa !862
  store double %24, double* @MADPictureC1, align 8, !dbg !1767, !tbaa !862
  %25 = load double* @PMADPictureC2, align 8, !dbg !1768, !tbaa !862
  store double %25, double* @MADPictureC2, align 8, !dbg !1768, !tbaa !862
  %26 = load double* @PreviousFrameMAD, align 8, !dbg !1769, !tbaa !862
  %cmp36 = fcmp ogt double %10, %26, !dbg !1769
  br i1 %cmp36, label %cond.true, label %cond.false, !dbg !1769

cond.true:                                        ; preds = %if.end35
  %div = fdiv double %26, %10, !dbg !1769
  br label %cond.end, !dbg !1769

cond.false:                                       ; preds = %if.end35
  %div38 = fdiv double %10, %26, !dbg !1769
  br label %cond.end, !dbg !1769

cond.end:                                         ; preds = %cond.false, %cond.true
  %div.sink = phi double [ %div, %cond.true ], [ %div38, %cond.false ]
  %mul37 = fmul double %div.sink, 2.000000e+01, !dbg !1769
  %conv = fptosi double %mul37 to i32, !dbg !1769
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !123), !dbg !1769
  %sub41 = add nsw i32 %m_Nc.0, -1, !dbg !1770
  %cmp42 = icmp slt i32 %conv, %sub41, !dbg !1770
  %conv.sub41 = select i1 %cmp42, i32 %conv, i32 %sub41, !dbg !1770
  call void @llvm.dbg.value(metadata !{i32 %conv.sub41}, i64 0, metadata !123), !dbg !1770
  %cmp49 = icmp slt i32 %conv.sub41, 1, !dbg !1771
  %cond54 = select i1 %cmp49, i32 1, i32 %conv.sub41, !dbg !1771
  call void @llvm.dbg.value(metadata !{i32 %cond54}, i64 0, metadata !123), !dbg !1771
  %27 = load i32* @MADm_windowSize, align 4, !dbg !1772, !tbaa !807
  %add55 = add nsw i32 %27, 1, !dbg !1772
  %cmp56 = icmp slt i32 %cond54, %add55, !dbg !1772
  %cond62 = select i1 %cmp56, i32 %cond54, i32 %add55, !dbg !1772
  call void @llvm.dbg.value(metadata !{i32 %cond62}, i64 0, metadata !123), !dbg !1772
  %cmp63 = icmp sgt i32 %cond62, 20, !dbg !1773
  %cond68 = select i1 %cmp63, i32 20, i32 %cond62, !dbg !1773
  call void @llvm.dbg.value(metadata !{i32 %cond68}, i64 0, metadata !123), !dbg !1773
  store i32 %cond68, i32* @MADm_windowSize, align 4, !dbg !1774, !tbaa !807
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !124), !dbg !1775
  call void @llvm.memset.p0i8.i64(i8* bitcast ([21 x i32]* @PictureRejected to i8*), i8 0, i64 80, i32 16, i1 false), !dbg !1777
  %type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6, !dbg !1779
  %28 = load i32* %type, align 4, !dbg !1779, !tbaa !807
  %cmp77 = icmp eq i32 %28, 0, !dbg !1779
  br i1 %cmp77, label %if.then79, label %if.end80, !dbg !1779

if.then79:                                        ; preds = %cond.end
  store double %10, double* @PreviousFrameMAD, align 8, !dbg !1780, !tbaa !862
  br label %if.end80, !dbg !1780

if.end80:                                         ; preds = %if.then79, %cond.end
  call void @MADModelEstimator(i32 %cond68) #10, !dbg !1781
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !124), !dbg !1782
  %cmp82168 = icmp sgt i32 %cond68, 0, !dbg !1782
  br i1 %cmp82168, label %for.body84.lr.ph, label %cond.false106, !dbg !1782

for.body84.lr.ph:                                 ; preds = %if.end80
  %29 = load double* @MADPictureC1, align 8, !dbg !1784, !tbaa !862
  %30 = load double* @MADPictureC2, align 8, !dbg !1784, !tbaa !862
  %31 = sub i32 0, %m_Nc.0, !dbg !1782
  %32 = xor i32 %conv, -1, !dbg !1782
  %33 = icmp sgt i32 %31, %32, !dbg !1782
  %smax178 = select i1 %33, i32 %31, i32 %32, !dbg !1782
  %34 = icmp slt i32 %smax178, -2, !dbg !1782
  %35 = select i1 %34, i32 %smax178, i32 -2, !dbg !1782
  %36 = sub i32 -2, %27, !dbg !1782
  %37 = icmp sgt i32 %35, %36, !dbg !1782
  %smax180 = select i1 %37, i32 %35, i32 %36, !dbg !1782
  %38 = icmp sgt i32 %smax180, -21, !dbg !1782
  %smax180.op = xor i32 %smax180, -1, !dbg !1782
  %39 = select i1 %38, i32 %smax180.op, i32 20, !dbg !1782
  br label %for.body84, !dbg !1782

for.body84:                                       ; preds = %for.body84, %for.body84.lr.ph
  %indvars.iv176 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next177, %for.body84 ]
  %std.0170 = phi double [ 0.000000e+00, %for.body84.lr.ph ], [ %add99, %for.body84 ]
  %arrayidx86 = getelementptr inbounds [21 x double]* @ReferenceMAD, i64 0, i64 %indvars.iv176, !dbg !1784
  %40 = load double* %arrayidx86, align 8, !dbg !1784, !tbaa !862
  %mul87 = fmul double %29, %40, !dbg !1784
  %add88 = fadd double %mul87, %30, !dbg !1784
  %arrayidx90 = getelementptr inbounds [21 x double]* @PictureMAD, i64 0, i64 %indvars.iv176, !dbg !1784
  %41 = load double* %arrayidx90, align 8, !dbg !1784, !tbaa !862
  %sub91 = fsub double %add88, %41, !dbg !1784
  %arrayidx93 = getelementptr inbounds [20 x double]* %error, i64 0, i64 %indvars.iv176, !dbg !1784
  store double %sub91, double* %arrayidx93, align 8, !dbg !1784, !tbaa !862
  %mul98 = fmul double %sub91, %sub91, !dbg !1786
  %add99 = fadd double %std.0170, %mul98, !dbg !1786
  call void @llvm.dbg.value(metadata !{double %add99}, i64 0, metadata !126), !dbg !1786
  %indvars.iv.next177 = add i64 %indvars.iv176, 1, !dbg !1782
  %lftr.wideiv182 = trunc i64 %indvars.iv.next177 to i32, !dbg !1782
  %exitcond183 = icmp eq i32 %lftr.wideiv182, %39, !dbg !1782
  br i1 %exitcond183, label %for.end102, label %for.body84, !dbg !1782

for.end102:                                       ; preds = %for.body84
  %cmp103 = icmp eq i32 %cond68, 2, !dbg !1787
  br i1 %cmp103, label %cond.end109, label %cond.false106, !dbg !1787

cond.false106:                                    ; preds = %if.end80, %for.end102
  %std.0.lcssa191 = phi double [ %add99, %for.end102 ], [ 0.000000e+00, %if.end80 ]
  %conv107 = sitofp i32 %cond68 to double, !dbg !1787
  %div108 = fdiv double %std.0.lcssa191, %conv107, !dbg !1787
  %call = call double @sqrt(double %div108) #8, !dbg !1787
  br label %cond.end109, !dbg !1787

cond.end109:                                      ; preds = %for.end102, %cond.false106
  %cond110 = phi double [ %call, %cond.false106 ], [ 0.000000e+00, %for.end102 ], !dbg !1787
  call void @llvm.dbg.value(metadata !{double %cond110}, i64 0, metadata !127), !dbg !1787
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !124), !dbg !1788
  br i1 %cmp82168, label %for.body114.lr.ph, label %for.end126, !dbg !1788

for.body114.lr.ph:                                ; preds = %cond.end109
  %42 = sub i32 0, %m_Nc.0, !dbg !1788
  %43 = xor i32 %conv, -1, !dbg !1788
  %44 = icmp sgt i32 %42, %43, !dbg !1788
  %smax = select i1 %44, i32 %42, i32 %43, !dbg !1788
  %45 = icmp slt i32 %smax, -2, !dbg !1788
  %46 = select i1 %45, i32 %smax, i32 -2, !dbg !1788
  %47 = sub i32 -2, %27, !dbg !1788
  %48 = icmp sgt i32 %46, %47, !dbg !1788
  %smax174 = select i1 %48, i32 %46, i32 %47, !dbg !1788
  %49 = icmp sgt i32 %smax174, -21, !dbg !1788
  %smax174.op = xor i32 %smax174, -1, !dbg !1788
  %50 = select i1 %49, i32 %smax174.op, i32 20, !dbg !1788
  br label %for.body114, !dbg !1788

for.body114:                                      ; preds = %for.inc124, %for.body114.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body114.lr.ph ], [ %indvars.iv.next, %for.inc124 ]
  %arrayidx116 = getelementptr inbounds [20 x double]* %error, i64 0, i64 %indvars.iv, !dbg !1790
  %51 = load double* %arrayidx116, align 8, !dbg !1790, !tbaa !862
  %call117 = call double @fabs(double %51) #9, !dbg !1790
  %cmp118 = fcmp ogt double %call117, %cond110, !dbg !1790
  br i1 %cmp118, label %if.then120, label %for.inc124, !dbg !1790

if.then120:                                       ; preds = %for.body114
  %arrayidx122 = getelementptr inbounds [21 x i32]* @PictureRejected, i64 0, i64 %indvars.iv, !dbg !1792
  store i32 1, i32* %arrayidx122, align 4, !dbg !1792, !tbaa !805
  br label %for.inc124, !dbg !1792

for.inc124:                                       ; preds = %for.body114, %if.then120
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1788
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1788
  %exitcond = icmp eq i32 %lftr.wideiv, %50, !dbg !1788
  br i1 %exitcond, label %for.end126, label %for.body114, !dbg !1788

for.end126:                                       ; preds = %for.inc124, %cond.end109
  store i32 0, i32* getelementptr inbounds ([21 x i32]* @PictureRejected, i64 0, i64 0), align 16, !dbg !1793, !tbaa !805
  call void @MADModelEstimator(i32 %cond68) #10, !dbg !1794
  br label %if.end127, !dbg !1795

if.end127:                                        ; preds = %for.end126, %entry
  call void @llvm.lifetime.end(i64 160, i8* %0) #7, !dbg !1796
  ret void, !dbg !1796
}

; Function Attrs: nounwind optsize uwtable
define void @MADModelEstimator(i32 %n_windowSize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n_windowSize}, i64 0, metadata !131), !dbg !1797
  tail call void @llvm.dbg.value(metadata !{i32 %n_windowSize}, i64 0, metadata !132), !dbg !1798
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !135), !dbg !1799
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !136), !dbg !1799
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !137), !dbg !1799
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !138), !dbg !1799
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !139), !dbg !1799
  tail call void @llvm.dbg.value(metadata !1597, i64 0, metadata !140), !dbg !1799
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !142), !dbg !1800
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !133), !dbg !1801
  %cmp157 = icmp sgt i32 %n_windowSize, 0, !dbg !1801
  br i1 %cmp157, label %for.body, label %for.end.thread, !dbg !1801

for.end.thread:                                   ; preds = %entry
  store double 0.000000e+00, double* @MADPictureC2, align 8, !dbg !1803, !tbaa !862
  store double 0.000000e+00, double* @MADPictureC1, align 8, !dbg !1803, !tbaa !862
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !133), !dbg !1804
  br label %if.end88, !dbg !1804

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %for.body ], [ 0, %entry ]
  %n_realSize.0159 = phi i32 [ %n_realSize.0.dec, %for.body ], [ %n_windowSize, %entry ]
  %arrayidx = getelementptr inbounds [21 x i32]* @PictureRejected, i64 0, i64 %indvars.iv169, !dbg !1806
  %0 = load i32* %arrayidx, align 4, !dbg !1806, !tbaa !805
  %not.tobool = icmp ne i32 %0, 0, !dbg !1806
  %dec = sext i1 %not.tobool to i32, !dbg !1806
  %n_realSize.0.dec = add nsw i32 %dec, %n_realSize.0159, !dbg !1806
  %indvars.iv.next170 = add i64 %indvars.iv169, 1, !dbg !1801
  %lftr.wideiv171 = trunc i64 %indvars.iv.next170 to i32, !dbg !1801
  %exitcond172 = icmp eq i32 %lftr.wideiv171, %n_windowSize, !dbg !1801
  br i1 %exitcond172, label %for.end, label %for.body, !dbg !1801

for.end:                                          ; preds = %for.body
  store double 0.000000e+00, double* @MADPictureC2, align 8, !dbg !1803, !tbaa !862
  store double 0.000000e+00, double* @MADPictureC1, align 8, !dbg !1803, !tbaa !862
  tail call void @llvm.dbg.value(metadata !21, i64 0, metadata !133), !dbg !1804
  br i1 %cmp157, label %for.body3, label %if.end88, !dbg !1804

for.cond14.preheader:                             ; preds = %for.inc11
  br i1 %cmp157, label %for.body16.lr.ph, label %if.end88, !dbg !1808

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %conv = sitofp i32 %n_realSize.0.dec to double, !dbg !1810
  br label %for.body16, !dbg !1808

for.body3:                                        ; preds = %for.end, %for.inc11
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %for.inc11 ], [ 0, %for.end ]
  %oneSampleQ.0155 = phi double [ %oneSampleQ.1, %for.inc11 ], [ undef, %for.end ]
  %arrayidx5 = getelementptr inbounds [21 x i32]* @PictureRejected, i64 0, i64 %indvars.iv165, !dbg !1812
  %1 = load i32* %arrayidx5, align 4, !dbg !1812, !tbaa !805
  %tobool6 = icmp eq i32 %1, 0, !dbg !1812
  br i1 %tobool6, label %if.then7, label %for.inc11, !dbg !1812

if.then7:                                         ; preds = %for.body3
  %arrayidx9 = getelementptr inbounds [21 x double]* @PictureMAD, i64 0, i64 %indvars.iv165, !dbg !1814
  %2 = load double* %arrayidx9, align 8, !dbg !1814, !tbaa !862
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !134), !dbg !1814
  br label %for.inc11, !dbg !1814

for.inc11:                                        ; preds = %for.body3, %if.then7
  %oneSampleQ.1 = phi double [ %oneSampleQ.0155, %for.body3 ], [ %2, %if.then7 ]
  %indvars.iv.next166 = add i64 %indvars.iv165, 1, !dbg !1804
  %lftr.wideiv167 = trunc i64 %indvars.iv.next166 to i32, !dbg !1804
  %exitcond168 = icmp eq i32 %lftr.wideiv167, %n_windowSize, !dbg !1804
  br i1 %exitcond168, label %for.cond14.preheader, label %for.body3, !dbg !1804

for.body16:                                       ; preds = %for.inc34, %for.body16.lr.ph
  %3 = phi double [ 0.000000e+00, %for.body16.lr.ph ], [ %7, %for.inc34 ]
  %indvars.iv161 = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next162, %for.inc34 ]
  %estimateX2.0151 = phi i32 [ 0, %for.body16.lr.ph ], [ %estimateX2.1, %for.inc34 ]
  %arrayidx18 = getelementptr inbounds [21 x double]* @PictureMAD, i64 0, i64 %indvars.iv161, !dbg !1815
  %4 = load double* %arrayidx18, align 8, !dbg !1815, !tbaa !862
  %cmp19 = fcmp une double %4, %oneSampleQ.1, !dbg !1815
  %arrayidx21 = getelementptr inbounds [21 x i32]* @PictureRejected, i64 0, i64 %indvars.iv161, !dbg !1815
  %5 = load i32* %arrayidx21, align 4, !dbg !1815, !tbaa !805
  br i1 %cmp19, label %land.lhs.true, label %if.end24, !dbg !1815

land.lhs.true:                                    ; preds = %for.body16
  %tobool22 = icmp eq i32 %5, 0, !dbg !1815
  tail call void @llvm.dbg.value(metadata !1631, i64 0, metadata !142), !dbg !1816
  %.estimateX2.0 = select i1 %tobool22, i32 1, i32 %estimateX2.0151, !dbg !1815
  br label %if.end24, !dbg !1815

if.end24:                                         ; preds = %for.body16, %land.lhs.true
  %estimateX2.1 = phi i32 [ %.estimateX2.0, %land.lhs.true ], [ %estimateX2.0151, %for.body16 ]
  %tobool27 = icmp eq i32 %5, 0, !dbg !1817
  br i1 %tobool27, label %if.then28, label %for.inc34, !dbg !1817

if.then28:                                        ; preds = %if.end24
  %arrayidx32 = getelementptr inbounds [21 x double]* @ReferenceMAD, i64 0, i64 %indvars.iv161, !dbg !1810
  %6 = load double* %arrayidx32, align 8, !dbg !1810, !tbaa !862
  %mul = fmul double %conv, %6, !dbg !1810
  %div = fdiv double %4, %mul, !dbg !1810
  %add = fadd double %div, %3, !dbg !1810
  store double %add, double* @MADPictureC1, align 8, !dbg !1810, !tbaa !862
  br label %for.inc34, !dbg !1810

for.inc34:                                        ; preds = %if.end24, %if.then28
  %7 = phi double [ %3, %if.end24 ], [ %add, %if.then28 ]
  %indvars.iv.next162 = add i64 %indvars.iv161, 1, !dbg !1808
  %lftr.wideiv163 = trunc i64 %indvars.iv.next162 to i32, !dbg !1808
  %exitcond164 = icmp eq i32 %lftr.wideiv163, %n_windowSize, !dbg !1808
  br i1 %exitcond164, label %for.end36, label %for.body16, !dbg !1808

for.end36:                                        ; preds = %for.inc34
  %cmp37 = icmp slt i32 %n_realSize.0.dec, 1, !dbg !1818
  %tobool40 = icmp eq i32 %estimateX2.1, 0, !dbg !1818
  %or.cond = or i1 %cmp37, %tobool40, !dbg !1818
  br i1 %or.cond, label %if.end88, label %for.cond42.preheader, !dbg !1818

for.cond42.preheader:                             ; preds = %for.end36
  br i1 %cmp157, label %for.body45, label %for.end72, !dbg !1819

for.body45:                                       ; preds = %for.cond42.preheader, %for.inc70
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc70 ], [ 0, %for.cond42.preheader ]
  %b1.0143 = phi double [ %b1.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %b0.0142 = phi double [ %b0.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a11.0141 = phi double [ %a11.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a10.0140 = phi double [ %a10.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a01.0139 = phi double [ %a01.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a00.0138 = phi double [ %a00.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %arrayidx47 = getelementptr inbounds [21 x i32]* @PictureRejected, i64 0, i64 %indvars.iv, !dbg !1822
  %8 = load i32* %arrayidx47, align 4, !dbg !1822, !tbaa !805
  %tobool48 = icmp eq i32 %8, 0, !dbg !1822
  br i1 %tobool48, label %if.then49, label %for.inc70, !dbg !1822

if.then49:                                        ; preds = %for.body45
  %add50 = fadd double %a00.0138, 1.000000e+00, !dbg !1824
  tail call void @llvm.dbg.value(metadata !{double %add50}, i64 0, metadata !135), !dbg !1824
  %arrayidx52 = getelementptr inbounds [21 x double]* @ReferenceMAD, i64 0, i64 %indvars.iv, !dbg !1826
  %9 = load double* %arrayidx52, align 8, !dbg !1826, !tbaa !862
  %add53 = fadd double %a01.0139, %9, !dbg !1826
  tail call void @llvm.dbg.value(metadata !{double %add53}, i64 0, metadata !136), !dbg !1826
  tail call void @llvm.dbg.value(metadata !{double %add53}, i64 0, metadata !137), !dbg !1827
  %mul58 = fmul double %9, %9, !dbg !1828
  %add59 = fadd double %a11.0141, %mul58, !dbg !1828
  tail call void @llvm.dbg.value(metadata !{double %add59}, i64 0, metadata !138), !dbg !1828
  %arrayidx61 = getelementptr inbounds [21 x double]* @PictureMAD, i64 0, i64 %indvars.iv, !dbg !1829
  %10 = load double* %arrayidx61, align 8, !dbg !1829, !tbaa !862
  %add62 = fadd double %b0.0142, %10, !dbg !1829
  tail call void @llvm.dbg.value(metadata !{double %add62}, i64 0, metadata !139), !dbg !1829
  %mul67 = fmul double %9, %10, !dbg !1830
  %add68 = fadd double %b1.0143, %mul67, !dbg !1830
  tail call void @llvm.dbg.value(metadata !{double %add68}, i64 0, metadata !140), !dbg !1830
  br label %for.inc70, !dbg !1831

for.inc70:                                        ; preds = %for.body45, %if.then49
  %a00.1 = phi double [ %a00.0138, %for.body45 ], [ %add50, %if.then49 ]
  %a01.1 = phi double [ %a01.0139, %for.body45 ], [ %add53, %if.then49 ]
  %a10.1 = phi double [ %a10.0140, %for.body45 ], [ %add53, %if.then49 ]
  %a11.1 = phi double [ %a11.0141, %for.body45 ], [ %add59, %if.then49 ]
  %b0.1 = phi double [ %b0.0142, %for.body45 ], [ %add62, %if.then49 ]
  %b1.1 = phi double [ %b1.0143, %for.body45 ], [ %add68, %if.then49 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1819
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1819
  %exitcond = icmp eq i32 %lftr.wideiv, %n_windowSize, !dbg !1819
  br i1 %exitcond, label %for.end72, label %for.body45, !dbg !1819

for.end72:                                        ; preds = %for.inc70, %for.cond42.preheader
  %b1.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %b1.1, %for.inc70 ]
  %b0.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %b0.1, %for.inc70 ]
  %a11.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a11.1, %for.inc70 ]
  %a10.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a10.1, %for.inc70 ]
  %a01.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a01.1, %for.inc70 ]
  %a00.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a00.1, %for.inc70 ]
  %mul73 = fmul double %a00.0.lcssa, %a11.0.lcssa, !dbg !1832
  %mul74 = fmul double %a01.0.lcssa, %a10.0.lcssa, !dbg !1832
  %sub = fsub double %mul73, %mul74, !dbg !1832
  tail call void @llvm.dbg.value(metadata !{double %sub}, i64 0, metadata !141), !dbg !1832
  %call = tail call double @fabs(double %sub) #9, !dbg !1833
  %cmp75 = fcmp ogt double %call, 1.000000e-06, !dbg !1833
  br i1 %cmp75, label %if.then77, label %if.else, !dbg !1833

if.then77:                                        ; preds = %for.end72
  %mul78 = fmul double %a11.0.lcssa, %b0.0.lcssa, !dbg !1834
  %mul79 = fmul double %a01.0.lcssa, %b1.0.lcssa, !dbg !1834
  %sub80 = fsub double %mul78, %mul79, !dbg !1834
  %div81 = fdiv double %sub80, %sub, !dbg !1834
  store double %div81, double* @MADPictureC2, align 8, !dbg !1834, !tbaa !862
  %mul82 = fmul double %a00.0.lcssa, %b1.0.lcssa, !dbg !1836
  %mul83 = fmul double %a10.0.lcssa, %b0.0.lcssa, !dbg !1836
  %sub84 = fsub double %mul82, %mul83, !dbg !1836
  %div85 = fdiv double %sub84, %sub, !dbg !1836
  store double %div85, double* @MADPictureC1, align 8, !dbg !1836, !tbaa !862
  br label %if.end88, !dbg !1837

if.else:                                          ; preds = %for.end72
  %div86 = fdiv double %b0.0.lcssa, %a01.0.lcssa, !dbg !1838
  store double %div86, double* @MADPictureC1, align 8, !dbg !1838, !tbaa !862
  store double 0.000000e+00, double* @MADPictureC2, align 8, !dbg !1840, !tbaa !862
  br label %if.end88

if.end88:                                         ; preds = %for.end, %for.end.thread, %for.cond14.preheader, %for.end36, %if.then77, %if.else
  %11 = phi double [ 0.000000e+00, %for.end36 ], [ %div81, %if.then77 ], [ 0.000000e+00, %if.else ], [ 0.000000e+00, %for.cond14.preheader ], [ 0.000000e+00, %for.end.thread ], [ 0.000000e+00, %for.end ]
  %12 = phi double [ %7, %for.end36 ], [ %div85, %if.then77 ], [ %div86, %if.else ], [ 0.000000e+00, %for.cond14.preheader ], [ 0.000000e+00, %for.end.thread ], [ 0.000000e+00, %for.end ]
  %13 = load %struct.ImageParameters** @img, align 8, !dbg !1841, !tbaa !804
  %type = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 6, !dbg !1841
  %14 = load i32* %type, align 4, !dbg !1841, !tbaa !807
  %cmp89 = icmp eq i32 %14, 0, !dbg !1841
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !1841

if.then91:                                        ; preds = %if.end88
  store double %12, double* @PMADPictureC1, align 8, !dbg !1842, !tbaa !862
  store double %11, double* @PMADPictureC2, align 8, !dbg !1844, !tbaa !862
  br label %if.end92, !dbg !1845

if.end92:                                         ; preds = %if.then91, %if.end88
  ret void, !dbg !1846
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !21, metadata !22, metadata !157, metadata !21, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!14 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 192, i64 32, i64 32, i32 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 192, size 32, align 32, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!16 = metadata !{i32 786472, metadata !"P_SLICE", i64 0} ; [ DW_TAG_enumerator ] [P_SLICE :: 0]
!17 = metadata !{i32 786472, metadata !"B_SLICE", i64 1} ; [ DW_TAG_enumerator ] [B_SLICE :: 1]
!18 = metadata !{i32 786472, metadata !"I_SLICE", i64 2} ; [ DW_TAG_enumerator ] [I_SLICE :: 2]
!19 = metadata !{i32 786472, metadata !"SP_SLICE", i64 3} ; [ DW_TAG_enumerator ] [SP_SLICE :: 3]
!20 = metadata !{i32 786472, metadata !"SI_SLICE", i64 4} ; [ DW_TAG_enumerator ] [SI_SLICE :: 4]
!21 = metadata !{i32 0}
!22 = metadata !{metadata !23, metadata !27, metadata !28, metadata !38, metadata !50, metadata !58, metadata !66, metadata !71, metadata !76, metadata !79, metadata !91, metadata !103, metadata !117, metadata !121, metadata !129, metadata !143, metadata !150}
!23 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"rc_alloc", metadata !"rc_alloc", metadata !"", i32 157, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @rc_alloc, null, null, metadata !21, i32 158} ; [ DW_TAG_subprogram ] [line 157] [def] [scope 158] [rc_alloc]
!24 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{null}
!27 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"rc_free", metadata !"rc_free", metadata !"", i32 198, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @rc_free, null, null, metadata !21, i32 199} ; [ DW_TAG_subprogram ] [line 198] [def] [scope 199] [rc_free]
!28 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"rc_init_seq", metadata !"rc_init_seq", metadata !"", i32 235, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @rc_init_seq, null, null, metadata !29, i32 236} ; [ DW_TAG_subprogram ] [line 235] [def] [scope 236] [rc_init_seq]
!29 = metadata !{metadata !30, metadata !32, metadata !33, metadata !34, metadata !35, metadata !37}
!30 = metadata !{i32 786688, metadata !28, metadata !"L1", metadata !24, i32 237, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L1] [line 237]
!31 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786688, metadata !28, metadata !"L2", metadata !24, i32 237, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L2] [line 237]
!33 = metadata !{i32 786688, metadata !28, metadata !"L3", metadata !24, i32 237, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L3] [line 237]
!34 = metadata !{i32 786688, metadata !28, metadata !"bpp", metadata !24, i32 237, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bpp] [line 237]
!35 = metadata !{i32 786688, metadata !28, metadata !"qp", metadata !24, i32 238, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qp] [line 238]
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{i32 786688, metadata !28, metadata !"i", metadata !24, i32 239, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 239]
!38 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"rc_init_GOP", metadata !"rc_init_GOP", metadata !"", i32 363, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32)* @rc_init_GOP, null, null, metadata !41, i32 364} ; [ DW_TAG_subprogram ] [line 363] [def] [scope 364] [rc_init_GOP]
!39 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null, metadata !36, metadata !36}
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !46, metadata !47, metadata !48, metadata !49}
!42 = metadata !{i32 786689, metadata !38, metadata !"np", metadata !24, i32 16777579, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [np] [line 363]
!43 = metadata !{i32 786689, metadata !38, metadata !"nb", metadata !24, i32 33554795, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nb] [line 363]
!44 = metadata !{i32 786688, metadata !38, metadata !"Overum", metadata !24, i32 365, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Overum] [line 365]
!45 = metadata !{i32 786454, metadata !9, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!46 = metadata !{i32 786688, metadata !38, metadata !"OverBits", metadata !24, i32 366, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [OverBits] [line 366]
!47 = metadata !{i32 786688, metadata !38, metadata !"OverDuantQp", metadata !24, i32 367, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [OverDuantQp] [line 367]
!48 = metadata !{i32 786688, metadata !38, metadata !"AllocatedBits", metadata !24, i32 368, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [AllocatedBits] [line 368]
!49 = metadata !{i32 786688, metadata !38, metadata !"GOPDquant", metadata !24, i32 369, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GOPDquant] [line 369]
!50 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"rc_init_pict", metadata !"rc_init_pict", metadata !"", i32 460, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32)* @rc_init_pict, null, null, metadata !53, i32 461} ; [ DW_TAG_subprogram ] [line 460] [def] [scope 461] [rc_init_pict]
!51 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{null, metadata !36, metadata !36, metadata !36}
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57}
!54 = metadata !{i32 786689, metadata !50, metadata !"fieldpic", metadata !24, i32 16777676, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fieldpic] [line 460]
!55 = metadata !{i32 786689, metadata !50, metadata !"topfield", metadata !24, i32 33554892, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [topfield] [line 460]
!56 = metadata !{i32 786689, metadata !50, metadata !"targetcomputation", metadata !24, i32 50332108, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [targetcomputation] [line 460]
!57 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !24, i32 462, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 462]
!58 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"calc_MAD", metadata !"calc_MAD", metadata !"", i32 685, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, double ()* @calc_MAD, null, null, metadata !61, i32 686} ; [ DW_TAG_subprogram ] [line 685] [def] [scope 686] [calc_MAD]
!59 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{metadata !31}
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65}
!62 = metadata !{i32 786688, metadata !58, metadata !"k", metadata !24, i32 687, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 687]
!63 = metadata !{i32 786688, metadata !58, metadata !"l", metadata !24, i32 687, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 687]
!64 = metadata !{i32 786688, metadata !58, metadata !"s", metadata !24, i32 688, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 688]
!65 = metadata !{i32 786688, metadata !58, metadata !"MAD", metadata !24, i32 689, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MAD] [line 689]
!66 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"rc_update_pict", metadata !"rc_update_pict", metadata !"", i32 710, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @rc_update_pict, null, null, metadata !69, i32 711} ; [ DW_TAG_subprogram ] [line 710] [def] [scope 711] [rc_update_pict]
!67 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!68 = metadata !{null, metadata !36}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786689, metadata !66, metadata !"nbits", metadata !24, i32 16777926, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbits] [line 710]
!71 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"rc_update_pict_frame", metadata !"rc_update_pict_frame", metadata !"", i32 734, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @rc_update_pict_frame, null, null, metadata !72, i32 735} ; [ DW_TAG_subprogram ] [line 734] [def] [scope 735] [rc_update_pict_frame]
!72 = metadata !{metadata !73, metadata !74, metadata !75}
!73 = metadata !{i32 786689, metadata !71, metadata !"nbits", metadata !24, i32 16777950, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbits] [line 734]
!74 = metadata !{i32 786688, metadata !71, metadata !"Avem_Qc", metadata !24, i32 738, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Avem_Qc] [line 738]
!75 = metadata !{i32 786688, metadata !71, metadata !"X", metadata !24, i32 739, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [X] [line 739]
!76 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"setbitscount", metadata !"setbitscount", metadata !"", i32 800, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @setbitscount, null, null, metadata !77, i32 801} ; [ DW_TAG_subprogram ] [line 800] [def] [scope 801] [setbitscount]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786689, metadata !76, metadata !"nbits", metadata !24, i32 16778016, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbits] [line 800]
!79 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"updateQuantizationParameter", metadata !"updateQuantizationParameter", metadata !"", i32 813, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @updateQuantizationParameter, null, null, metadata !82, i32 814} ; [ DW_TAG_subprogram ] [line 813] [def] [scope 814] [updateQuantizationParameter]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{metadata !36, metadata !36}
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90}
!83 = metadata !{i32 786689, metadata !79, metadata !"topfield", metadata !24, i32 16778029, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [topfield] [line 813]
!84 = metadata !{i32 786688, metadata !79, metadata !"dtmp", metadata !24, i32 815, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtmp] [line 815]
!85 = metadata !{i32 786688, metadata !79, metadata !"m_Bits", metadata !24, i32 816, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m_Bits] [line 816]
!86 = metadata !{i32 786688, metadata !79, metadata !"BFrameNumber", metadata !24, i32 817, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [BFrameNumber] [line 817]
!87 = metadata !{i32 786688, metadata !79, metadata !"StepSize", metadata !24, i32 818, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [StepSize] [line 818]
!88 = metadata !{i32 786688, metadata !79, metadata !"PAverageQP", metadata !24, i32 819, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [PAverageQP] [line 819]
!89 = metadata !{i32 786688, metadata !79, metadata !"SumofBasicUnit", metadata !24, i32 820, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [SumofBasicUnit] [line 820]
!90 = metadata !{i32 786688, metadata !79, metadata !"i", metadata !24, i32 821, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 821]
!91 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"updateRCModel", metadata !"updateRCModel", metadata !"", i32 1432, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @updateRCModel, null, null, metadata !92, i32 1433} ; [ DW_TAG_subprogram ] [line 1432] [def] [scope 1433] [updateRCModel]
!92 = metadata !{metadata !93, metadata !94, metadata !95, metadata !99, metadata !100, metadata !101, metadata !102}
!93 = metadata !{i32 786688, metadata !91, metadata !"n_windowSize", metadata !24, i32 1435, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_windowSize] [line 1435]
!94 = metadata !{i32 786688, metadata !91, metadata !"i", metadata !24, i32 1436, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1436]
!95 = metadata !{i32 786688, metadata !91, metadata !"error", metadata !24, i32 1437, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [error] [line 1437]
!96 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1280, i64 64, i32 0, i32 0, metadata !31, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1280, align 64, offset 0] [from double]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!99 = metadata !{i32 786688, metadata !91, metadata !"std", metadata !24, i32 1437, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [std] [line 1437]
!100 = metadata !{i32 786688, metadata !91, metadata !"threshold", metadata !24, i32 1437, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [threshold] [line 1437]
!101 = metadata !{i32 786688, metadata !91, metadata !"m_Nc", metadata !24, i32 1438, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m_Nc] [line 1438]
!102 = metadata !{i32 786688, metadata !91, metadata !"MADModelFlag", metadata !24, i32 1439, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MADModelFlag] [line 1439]
!103 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"RCModelEstimator", metadata !"RCModelEstimator", metadata !"", i32 1566, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @RCModelEstimator, null, null, metadata !104, i32 1567} ; [ DW_TAG_subprogram ] [line 1566] [def] [scope 1567] [RCModelEstimator]
!104 = metadata !{metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116}
!105 = metadata !{i32 786689, metadata !103, metadata !"n_windowSize", metadata !24, i32 16778782, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_windowSize] [line 1566]
!106 = metadata !{i32 786688, metadata !103, metadata !"n_realSize", metadata !24, i32 1568, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_realSize] [line 1568]
!107 = metadata !{i32 786688, metadata !103, metadata !"i", metadata !24, i32 1569, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1569]
!108 = metadata !{i32 786688, metadata !103, metadata !"oneSampleQ", metadata !24, i32 1570, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oneSampleQ] [line 1570]
!109 = metadata !{i32 786688, metadata !103, metadata !"a00", metadata !24, i32 1571, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a00] [line 1571]
!110 = metadata !{i32 786688, metadata !103, metadata !"a01", metadata !24, i32 1571, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a01] [line 1571]
!111 = metadata !{i32 786688, metadata !103, metadata !"a10", metadata !24, i32 1571, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a10] [line 1571]
!112 = metadata !{i32 786688, metadata !103, metadata !"a11", metadata !24, i32 1571, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a11] [line 1571]
!113 = metadata !{i32 786688, metadata !103, metadata !"b0", metadata !24, i32 1571, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b0] [line 1571]
!114 = metadata !{i32 786688, metadata !103, metadata !"b1", metadata !24, i32 1571, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b1] [line 1571]
!115 = metadata !{i32 786688, metadata !103, metadata !"MatrixValue", metadata !24, i32 1572, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MatrixValue] [line 1572]
!116 = metadata !{i32 786688, metadata !103, metadata !"estimateX2", metadata !24, i32 1573, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [estimateX2] [line 1573]
!117 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"ComputeFrameMAD", metadata !"ComputeFrameMAD", metadata !"", i32 1642, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, double ()* @ComputeFrameMAD, null, null, metadata !118, i32 1643} ; [ DW_TAG_subprogram ] [line 1642] [def] [scope 1643] [ComputeFrameMAD]
!118 = metadata !{metadata !119, metadata !120}
!119 = metadata !{i32 786688, metadata !117, metadata !"TotalMAD", metadata !24, i32 1644, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [TotalMAD] [line 1644]
!120 = metadata !{i32 786688, metadata !117, metadata !"i", metadata !24, i32 1645, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1645]
!121 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"updateMADModel", metadata !"updateMADModel", metadata !"", i32 1661, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @updateMADModel, null, null, metadata !122, i32 1662} ; [ DW_TAG_subprogram ] [line 1661] [def] [scope 1662] [updateMADModel]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!123 = metadata !{i32 786688, metadata !121, metadata !"n_windowSize", metadata !24, i32 1664, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_windowSize] [line 1664]
!124 = metadata !{i32 786688, metadata !121, metadata !"i", metadata !24, i32 1665, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1665]
!125 = metadata !{i32 786688, metadata !121, metadata !"error", metadata !24, i32 1666, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [error] [line 1666]
!126 = metadata !{i32 786688, metadata !121, metadata !"std", metadata !24, i32 1666, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [std] [line 1666]
!127 = metadata !{i32 786688, metadata !121, metadata !"threshold", metadata !24, i32 1666, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [threshold] [line 1666]
!128 = metadata !{i32 786688, metadata !121, metadata !"m_Nc", metadata !24, i32 1667, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m_Nc] [line 1667]
!129 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"MADModelEstimator", metadata !"MADModelEstimator", metadata !"", i32 1753, metadata !67, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @MADModelEstimator, null, null, metadata !130, i32 1754} ; [ DW_TAG_subprogram ] [line 1753] [def] [scope 1754] [MADModelEstimator]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142}
!131 = metadata !{i32 786689, metadata !129, metadata !"n_windowSize", metadata !24, i32 16778969, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_windowSize] [line 1753]
!132 = metadata !{i32 786688, metadata !129, metadata !"n_realSize", metadata !24, i32 1755, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_realSize] [line 1755]
!133 = metadata !{i32 786688, metadata !129, metadata !"i", metadata !24, i32 1756, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1756]
!134 = metadata !{i32 786688, metadata !129, metadata !"oneSampleQ", metadata !24, i32 1757, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oneSampleQ] [line 1757]
!135 = metadata !{i32 786688, metadata !129, metadata !"a00", metadata !24, i32 1758, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a00] [line 1758]
!136 = metadata !{i32 786688, metadata !129, metadata !"a01", metadata !24, i32 1758, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a01] [line 1758]
!137 = metadata !{i32 786688, metadata !129, metadata !"a10", metadata !24, i32 1758, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a10] [line 1758]
!138 = metadata !{i32 786688, metadata !129, metadata !"a11", metadata !24, i32 1758, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a11] [line 1758]
!139 = metadata !{i32 786688, metadata !129, metadata !"b0", metadata !24, i32 1758, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b0] [line 1758]
!140 = metadata !{i32 786688, metadata !129, metadata !"b1", metadata !24, i32 1758, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b1] [line 1758]
!141 = metadata !{i32 786688, metadata !129, metadata !"MatrixValue", metadata !24, i32 1759, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MatrixValue] [line 1759]
!142 = metadata !{i32 786688, metadata !129, metadata !"estimateX2", metadata !24, i32 1760, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [estimateX2] [line 1760]
!143 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"QP2Qstep", metadata !"QP2Qstep", metadata !"", i32 1830, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32)* @QP2Qstep, null, null, metadata !146, i32 1831} ; [ DW_TAG_subprogram ] [line 1830] [def] [scope 1831] [QP2Qstep]
!144 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!145 = metadata !{metadata !31, metadata !36}
!146 = metadata !{metadata !147, metadata !148, metadata !149}
!147 = metadata !{i32 786689, metadata !143, metadata !"QP", metadata !24, i32 16779046, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [QP] [line 1830]
!148 = metadata !{i32 786688, metadata !143, metadata !"i", metadata !24, i32 1832, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1832]
!149 = metadata !{i32 786688, metadata !143, metadata !"Qstep", metadata !24, i32 1833, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Qstep] [line 1833]
!150 = metadata !{i32 786478, metadata !1, metadata !24, metadata !"Qstep2QP", metadata !"Qstep2QP", metadata !"", i32 1851, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double)* @Qstep2QP, null, null, metadata !153, i32 1852} ; [ DW_TAG_subprogram ] [line 1851] [def] [scope 1852] [Qstep2QP]
!151 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!152 = metadata !{metadata !36, metadata !31}
!153 = metadata !{metadata !154, metadata !155, metadata !156}
!154 = metadata !{i32 786689, metadata !150, metadata !"Qstep", metadata !24, i32 16779067, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Qstep] [line 1851]
!155 = metadata !{i32 786688, metadata !150, metadata !"q_per", metadata !24, i32 1853, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_per] [line 1853]
!156 = metadata !{i32 786688, metadata !150, metadata !"q_rem", metadata !24, i32 1853, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q_rem] [line 1853]
!157 = metadata !{metadata !158, metadata !160, metadata !162, metadata !163, metadata !164, metadata !165, metadata !169, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !370, metadata !372, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !417, metadata !512, metadata !513, metadata !514, metadata !516, metadata !517, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !536, metadata !537, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !553, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !565, metadata !568, metadata !569, metadata !570, metadata !571, metadata !574, metadata !577, metadata !588, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !701, metadata !702, metadata !703, metadata !704, metadata !705, metadata !706, metadata !707, metadata !708, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713, metadata !714, metadata !715, metadata !716, metadata !717, metadata !718, metadata !719, metadata !720, metadata !724, metadata !726, metadata !727, metadata !728, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !757, metadata !758, metadata !759, metadata !760, metadata !761, metadata !762, metadata !763, metadata !764, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773, metadata !774, metadata !776, metadata !777, metadata !778, metadata !779, metadata !780, metadata !781, metadata !782, metadata !783, metadata !784, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796, metadata !797, metadata !798, metadata !799, metadata !800, metadata !801, metadata !802}
!158 = metadata !{i32 786484, i32 0, null, metadata !"THETA", metadata !"THETA", metadata !"", metadata !24, i32 125, metadata !159, i32 0, i32 1, double* @THETA, null} ; [ DW_TAG_variable ] [THETA] [line 125] [def]
!159 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!160 = metadata !{i32 786484, i32 0, null, metadata !"Switch", metadata !"Switch", metadata !"", metadata !24, i32 126, metadata !161, i32 0, i32 1, i32* @Switch, null} ; [ DW_TAG_variable ] [Switch] [line 126] [def]
!161 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!162 = metadata !{i32 786484, i32 0, null, metadata !"Iprev_bits", metadata !"Iprev_bits", metadata !"", metadata !24, i32 128, metadata !36, i32 0, i32 1, i32* @Iprev_bits, null} ; [ DW_TAG_variable ] [Iprev_bits] [line 128] [def]
!163 = metadata !{i32 786484, i32 0, null, metadata !"Pprev_bits", metadata !"Pprev_bits", metadata !"", metadata !24, i32 129, metadata !36, i32 0, i32 1, i32* @Pprev_bits, null} ; [ DW_TAG_variable ] [Pprev_bits] [line 129] [def]
!164 = metadata !{i32 786484, i32 0, null, metadata !"OMEGA", metadata !"OMEGA", metadata !"", metadata !24, i32 140, metadata !159, i32 0, i32 1, double* @OMEGA, null} ; [ DW_TAG_variable ] [OMEGA] [line 140] [def]
!165 = metadata !{i32 786484, i32 0, metadata !143, metadata !"QP2QSTEP", metadata !"QP2QSTEP", metadata !"", metadata !24, i32 1834, metadata !166, i32 1, i32 1, [6 x double]* @QP2Qstep.QP2QSTEP, null} ; [ DW_TAG_variable ] [QP2QSTEP] [line 1834] [local] [def]
!166 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !159, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from ]
!167 = metadata !{metadata !168}
!168 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!169 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !170, i32 558, metadata !171, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!170 = metadata !{i32 786473, metadata !9}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!172 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!173 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !174, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!174 = metadata !{metadata !175, metadata !176, metadata !177, metadata !358, metadata !359, metadata !361, metadata !362}
!175 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!176 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!177 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !178} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!178 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !179, metadata !356, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !180} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!180 = metadata !{i32 786454, metadata !9, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !181} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!181 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !182, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!182 = metadata !{metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !267, metadata !305, metadata !332, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !353}
!183 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!184 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!185 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!186 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!187 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!188 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!189 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !190} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!190 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!191 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!192 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !193, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!193 = metadata !{metadata !194, metadata !213, metadata !239}
!194 = metadata !{i32 786445, metadata !9, metadata !192, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !195} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!195 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !196} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!196 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !197} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!197 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !198, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!198 = metadata !{metadata !199, metadata !200, metadata !201, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !212}
!199 = metadata !{i32 786445, metadata !9, metadata !197, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!200 = metadata !{i32 786445, metadata !9, metadata !197, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!201 = metadata !{i32 786445, metadata !9, metadata !197, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !202} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!202 = metadata !{i32 786454, metadata !9, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!203 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!204 = metadata !{i32 786445, metadata !9, metadata !197, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!205 = metadata !{i32 786445, metadata !9, metadata !197, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!206 = metadata !{i32 786445, metadata !9, metadata !197, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !202} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!207 = metadata !{i32 786445, metadata !9, metadata !197, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !202} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!208 = metadata !{i32 786445, metadata !9, metadata !197, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!209 = metadata !{i32 786445, metadata !9, metadata !197, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!210 = metadata !{i32 786445, metadata !9, metadata !197, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!211 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!212 = metadata !{i32 786445, metadata !9, metadata !197, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!213 = metadata !{i32 786445, metadata !9, metadata !192, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !214} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!214 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !215} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!215 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !216, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!216 = metadata !{metadata !217, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238}
!217 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!218 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!219 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !218} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!220 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !218} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!221 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !218} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!222 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !218} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!223 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !211} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!224 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !225} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!225 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!226 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !218} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!227 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !218} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!228 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !218} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!229 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !218} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!230 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !218} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!231 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !211} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!232 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !225} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!233 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!234 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !36} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!235 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!236 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !36} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!237 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !36} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!238 = metadata !{i32 786445, metadata !9, metadata !215, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !36} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!239 = metadata !{i32 786445, metadata !9, metadata !192, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !240} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!240 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !241} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!241 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!242 = metadata !{metadata !36, metadata !243, metadata !266}
!243 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !244} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!244 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !245} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!245 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !246, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!246 = metadata !{metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !259}
!247 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!248 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!249 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!250 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!251 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!252 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !218} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!253 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!254 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!255 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !256} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!256 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !257} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!257 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!258 = metadata !{null, metadata !36, metadata !36, metadata !225, metadata !225}
!259 = metadata !{i32 786445, metadata !9, metadata !245, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !260} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!260 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !261} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!261 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!262 = metadata !{null, metadata !263, metadata !264}
!263 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !245} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!264 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !265} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!265 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!266 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !192} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!267 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !268} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !269} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!269 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!270 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !271, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!271 = metadata !{metadata !272, metadata !285, metadata !290, metadata !294, metadata !297, metadata !301, metadata !302}
!272 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !273} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!273 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !274, metadata !282, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!274 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !275} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!275 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !276, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!276 = metadata !{metadata !277, metadata !279, metadata !280}
!277 = metadata !{i32 786445, metadata !9, metadata !275, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !278} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!278 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!279 = metadata !{i32 786445, metadata !9, metadata !275, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !203} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!280 = metadata !{i32 786445, metadata !9, metadata !275, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !281} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!281 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!282 = metadata !{metadata !283, metadata !284}
!283 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!284 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!285 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !286} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!286 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !274, metadata !287, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!287 = metadata !{metadata !288, metadata !289}
!288 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!289 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!290 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !291} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!291 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !274, metadata !292, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!292 = metadata !{metadata !288, metadata !293}
!293 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!294 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !295} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!295 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !274, metadata !296, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!296 = metadata !{metadata !288, metadata !168}
!297 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !298} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!298 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !274, metadata !299, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!299 = metadata !{metadata !300}
!300 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!301 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !298} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!302 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !303} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!303 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !274, metadata !304, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!304 = metadata !{metadata !283}
!305 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !306} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!306 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !307} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!307 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !308} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!308 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !309, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!309 = metadata !{metadata !310, metadata !313, metadata !314, metadata !317, metadata !320, metadata !324, metadata !325, metadata !329, metadata !330, metadata !331}
!310 = metadata !{i32 786445, metadata !9, metadata !308, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !311} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!311 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !274, metadata !312, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!312 = metadata !{metadata !288}
!313 = metadata !{i32 786445, metadata !9, metadata !308, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !298} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!314 = metadata !{i32 786445, metadata !9, metadata !308, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !315} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!315 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !274, metadata !316, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!316 = metadata !{metadata !283, metadata !300}
!317 = metadata !{i32 786445, metadata !9, metadata !308, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !318} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!318 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !274, metadata !319, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!319 = metadata !{metadata !293, metadata !300}
!320 = metadata !{i32 786445, metadata !9, metadata !308, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !321} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!321 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !274, metadata !322, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!322 = metadata !{metadata !293, metadata !323}
!323 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!324 = metadata !{i32 786445, metadata !9, metadata !308, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !321} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!325 = metadata !{i32 786445, metadata !9, metadata !308, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !326} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!326 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !274, metadata !327, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!327 = metadata !{metadata !293, metadata !328}
!328 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!329 = metadata !{i32 786445, metadata !9, metadata !308, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !326} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!330 = metadata !{i32 786445, metadata !9, metadata !308, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !321} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!331 = metadata !{i32 786445, metadata !9, metadata !308, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !321} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!332 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !333} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!333 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !334} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!334 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !335} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!335 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !336, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!336 = metadata !{metadata !337, metadata !338, metadata !339}
!337 = metadata !{i32 786445, metadata !9, metadata !335, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!338 = metadata !{i32 786445, metadata !9, metadata !335, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!339 = metadata !{i32 786445, metadata !9, metadata !335, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !340} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!340 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !335} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!341 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!342 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !225} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!343 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !225} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!344 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !225} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!345 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!346 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !225} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!347 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !225} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!348 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !225} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!349 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !350} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!350 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !351} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!351 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!352 = metadata !{metadata !45, metadata !36}
!353 = metadata !{i32 786445, metadata !9, metadata !181, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !354} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!354 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !36, metadata !355, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!355 = metadata !{metadata !283, metadata !288}
!356 = metadata !{metadata !357}
!357 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!358 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !36} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!359 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !360} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!360 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!361 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !360} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!362 = metadata !{i32 786445, metadata !9, metadata !173, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !360} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!363 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !170, i32 559, metadata !171, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!364 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !170, i32 560, metadata !171, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!365 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !170, i32 561, metadata !171, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!366 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !170, i32 562, metadata !171, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!367 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !170, i32 565, metadata !368, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!368 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !369} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!369 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !278} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!370 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !170, i32 566, metadata !371, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!371 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !368} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!372 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !170, i32 567, metadata !373, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!373 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !225} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!374 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !170, i32 569, metadata !218, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!375 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !170, i32 570, metadata !218, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!376 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !170, i32 572, metadata !36, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!377 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !170, i32 572, metadata !36, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!378 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !170, i32 573, metadata !379, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!379 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !380} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!380 = metadata !{i32 786454, metadata !9, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !381} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!381 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !382, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!382 = metadata !{metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !393, metadata !394, metadata !395, metadata !396, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416}
!383 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!384 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !218} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!385 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !218} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!386 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!387 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!388 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!389 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !390} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!390 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !36, metadata !391, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!391 = metadata !{metadata !392}
!392 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!393 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !45} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!394 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !218} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!395 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !218} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!396 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !397} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!397 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !218, metadata !391, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!398 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !397} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!399 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !397} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!400 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !45} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!401 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !218} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!402 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !218} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!403 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !211} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!404 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !36} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!405 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !36} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!406 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !45} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!407 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !218} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!408 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !36} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!409 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !36} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!410 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !36} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!411 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !36} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!412 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !36} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!413 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !45} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!414 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !45} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!415 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !45} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!416 = metadata !{i32 786445, metadata !4, metadata !381, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !45} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!417 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !170, i32 574, metadata !418, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!418 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !419} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!419 = metadata !{i32 786454, metadata !4, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !420} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!420 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !421, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!421 = metadata !{metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459}
!422 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!423 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !218} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!424 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!425 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!426 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!427 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!428 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !218} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!429 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !218} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!430 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !218} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!431 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !45} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!432 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !390} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!433 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !218} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!434 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !218} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!435 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !218} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!436 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !218} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!437 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !218} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!438 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !45} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!439 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !36} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!440 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !36} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!441 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !218} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!442 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !443} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!443 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !36, metadata !444, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!444 = metadata !{metadata !445}
!445 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!446 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !218} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!447 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !45} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!448 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !218} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!449 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !218} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!450 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !45} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!451 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !45} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!452 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !45} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!453 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !45} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!454 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !218} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!455 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !218} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!456 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !218} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!457 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !218} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!458 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !45} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!459 = metadata !{i32 786445, metadata !4, metadata !420, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !460} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!460 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !461} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!461 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !462, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!462 = metadata !{metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511}
!463 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!464 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !218} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!465 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !218} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!466 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !218} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!467 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!468 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!469 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !45} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!470 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !218} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!471 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !45} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!472 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !45} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!473 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !218} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!474 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !218} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!475 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !218} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!476 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !45} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!477 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !218} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!478 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !218} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!479 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !45} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!480 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !218} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!481 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !218} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!482 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !45} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!483 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !45} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!484 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !485} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!485 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !486} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!486 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !487, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!487 = metadata !{metadata !488, metadata !489, metadata !490, metadata !491, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500}
!488 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!489 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !218} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!490 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !218} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!491 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !492} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!492 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !218, metadata !493, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!493 = metadata !{metadata !494}
!494 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!495 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !492} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!496 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !492} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!497 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !218} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!498 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !218} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!499 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !218} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!500 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !218} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!501 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !45} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!502 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !485} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!503 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !45} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!504 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !45} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!505 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !45} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!506 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !218} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!507 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !218} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!508 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !218} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!509 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !218} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!510 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !218} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!511 = metadata !{i32 786445, metadata !4, metadata !461, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !218} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!512 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !170, i32 578, metadata !36, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!513 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !170, i32 579, metadata !36, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!514 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !170, i32 583, metadata !515, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!515 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !373} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!516 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !170, i32 584, metadata !515, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!517 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !170, i32 585, metadata !518, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!518 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !515} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!519 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !170, i32 586, metadata !36, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!520 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !170, i32 587, metadata !36, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!521 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !170, i32 588, metadata !36, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!522 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !170, i32 589, metadata !36, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!523 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !170, i32 592, metadata !368, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!524 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !170, i32 593, metadata !368, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!525 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !170, i32 595, metadata !371, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!526 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !170, i32 596, metadata !371, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!527 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !170, i32 598, metadata !368, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!528 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !170, i32 599, metadata !371, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!529 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !170, i32 601, metadata !368, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!530 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !170, i32 602, metadata !371, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!531 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !170, i32 604, metadata !532, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!532 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !533} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!533 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !534} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!534 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !535} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!535 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!536 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !170, i32 605, metadata !533, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!537 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !170, i32 608, metadata !538, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!538 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !211} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!539 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !170, i32 609, metadata !538, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!540 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !170, i32 610, metadata !36, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!541 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !170, i32 612, metadata !36, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!542 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !170, i32 612, metadata !36, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!543 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !170, i32 612, metadata !36, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!544 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !170, i32 613, metadata !36, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!545 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !170, i32 613, metadata !36, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!546 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !170, i32 613, metadata !36, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!547 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !170, i32 614, metadata !36, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!548 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !170, i32 617, metadata !549, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!549 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !550, metadata !551, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!550 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!551 = metadata !{metadata !552}
!552 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!553 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !170, i32 620, metadata !554, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!554 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !36, metadata !555, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!555 = metadata !{metadata !556, metadata !556}
!556 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!557 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !170, i32 620, metadata !554, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!558 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !170, i32 620, metadata !554, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!559 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !170, i32 621, metadata !554, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!560 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !170, i32 621, metadata !554, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!561 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !170, i32 621, metadata !554, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!562 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !170, i32 622, metadata !563, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!563 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !36, metadata !564, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!564 = metadata !{metadata !283, metadata !556, metadata !556}
!565 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !170, i32 623, metadata !566, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!566 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !36, metadata !567, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!567 = metadata !{metadata !288, metadata !300, metadata !300}
!568 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !170, i32 623, metadata !566, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!569 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !170, i32 624, metadata !566, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!570 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !170, i32 624, metadata !566, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!571 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !170, i32 625, metadata !572, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!572 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !36, metadata !573, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!573 = metadata !{metadata !300, metadata !300}
!574 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !170, i32 625, metadata !575, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!575 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !36, metadata !576, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!576 = metadata !{metadata !556}
!577 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !170, i32 1201, metadata !578, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!578 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !579} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!579 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !580} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!580 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !581, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!581 = metadata !{metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587}
!582 = metadata !{i32 786445, metadata !9, metadata !580, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!583 = metadata !{i32 786445, metadata !9, metadata !580, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!584 = metadata !{i32 786445, metadata !9, metadata !580, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!585 = metadata !{i32 786445, metadata !9, metadata !580, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!586 = metadata !{i32 786445, metadata !9, metadata !580, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!587 = metadata !{i32 786445, metadata !9, metadata !580, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!588 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !170, i32 1202, metadata !589, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!589 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !590} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!590 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !591} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!591 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !592, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!592 = metadata !{metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !611, metadata !612, metadata !616, metadata !617, metadata !618, metadata !619, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627}
!593 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!594 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !554} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!595 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !554} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!596 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !554} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!597 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !518} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!598 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !515} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!599 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !36} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!600 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !36} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!601 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !602} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!602 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !36, metadata !299, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!603 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !602} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!604 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !373} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!605 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !575} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!606 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !36} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!607 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !608} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!608 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !609} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!609 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !610} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!610 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!611 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !36} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!612 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !613} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!613 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !614} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!614 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !615} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!615 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !532} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!616 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !613} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!617 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !613} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!618 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !613} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!619 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !620} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!620 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !535, metadata !567, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!621 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !36} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!622 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !36} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!623 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !36} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!624 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !36} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!625 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !36} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!626 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !36} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!627 = metadata !{i32 786445, metadata !9, metadata !591, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !36} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!628 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !170, i32 1203, metadata !590, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!629 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !170, i32 1203, metadata !590, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!630 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !170, i32 1204, metadata !590, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!631 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !170, i32 1204, metadata !590, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!632 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !170, i32 1230, metadata !633, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!633 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !634} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!634 = metadata !{i32 786454, metadata !9, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !635} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!635 = metadata !{i32 786451, metadata !636, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !637, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!636 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!637 = metadata !{metadata !638, metadata !639, metadata !641, metadata !642, metadata !643, metadata !644, metadata !645, metadata !646, metadata !647, metadata !648, metadata !649, metadata !650, metadata !651, metadata !659, metadata !660, metadata !661, metadata !662, metadata !664, metadata !665, metadata !667, metadata !671, metadata !673, metadata !675, metadata !676, metadata !677, metadata !678, metadata !679, metadata !681, metadata !682}
!638 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!639 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !640} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!640 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !550} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!641 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !640} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!642 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !640} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!643 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !640} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!644 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !640} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!645 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !640} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!646 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !640} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!647 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !640} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!648 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !640} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!649 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !640} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!650 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !640} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!651 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !652} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!652 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !653} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!653 = metadata !{i32 786451, metadata !636, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !654, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!654 = metadata !{metadata !655, metadata !656, metadata !658}
!655 = metadata !{i32 786445, metadata !636, metadata !653, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !652} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!656 = metadata !{i32 786445, metadata !636, metadata !653, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !657} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!657 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !635} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!658 = metadata !{i32 786445, metadata !636, metadata !653, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!659 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !657} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!660 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!661 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!662 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !663} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!663 = metadata !{i32 786454, metadata !636, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !610} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!664 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !278} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!665 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !666} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!666 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!667 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !668} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!668 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !550, metadata !669, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!669 = metadata !{metadata !670}
!670 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!671 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !672} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!672 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!673 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !674} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!674 = metadata !{i32 786454, metadata !636, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !610} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!675 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !672} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!676 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !672} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!677 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !672} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!678 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !672} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!679 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !680} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!680 = metadata !{i32 786454, metadata !636, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!681 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !36} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!682 = metadata !{i32 786445, metadata !636, metadata !635, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !683} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!683 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !550, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!684 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !170, i32 1231, metadata !633, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!685 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !170, i32 1232, metadata !633, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!686 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !170, i32 1233, metadata !36, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!687 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !170, i32 1234, metadata !36, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!688 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !170, i32 1237, metadata !689, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!689 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !36, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!690 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !170, i32 1238, metadata !689, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!691 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !170, i32 1239, metadata !689, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!692 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !170, i32 1240, metadata !689, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!693 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !170, i32 1241, metadata !689, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!694 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !170, i32 1242, metadata !689, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!695 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !170, i32 1456, metadata !36, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!696 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !170, i32 1465, metadata !36, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!697 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !170, i32 1466, metadata !36, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!698 = metadata !{i32 786484, i32 0, null, metadata !"bit_rate", metadata !"bit_rate", metadata !"", metadata !699, i32 124, metadata !31, i32 0, i32 1, double* @bit_rate, null} ; [ DW_TAG_variable ] [bit_rate] [line 124] [def]
!699 = metadata !{i32 786473, metadata !700}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.h]
!700 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!701 = metadata !{i32 786484, i32 0, null, metadata !"frame_rate", metadata !"frame_rate", metadata !"", metadata !699, i32 125, metadata !31, i32 0, i32 1, double* @frame_rate, null} ; [ DW_TAG_variable ] [frame_rate] [line 125] [def]
!702 = metadata !{i32 786484, i32 0, null, metadata !"GAMMAP", metadata !"GAMMAP", metadata !"", metadata !699, i32 126, metadata !31, i32 0, i32 1, double* @GAMMAP, null} ; [ DW_TAG_variable ] [GAMMAP] [line 126] [def]
!703 = metadata !{i32 786484, i32 0, null, metadata !"BETAP", metadata !"BETAP", metadata !"", metadata !699, i32 127, metadata !31, i32 0, i32 1, double* @BETAP, null} ; [ DW_TAG_variable ] [BETAP] [line 127] [def]
!704 = metadata !{i32 786484, i32 0, null, metadata !"RC_MAX_QUANT", metadata !"RC_MAX_QUANT", metadata !"", metadata !699, i32 129, metadata !36, i32 0, i32 1, i32* @RC_MAX_QUANT, null} ; [ DW_TAG_variable ] [RC_MAX_QUANT] [line 129] [def]
!705 = metadata !{i32 786484, i32 0, null, metadata !"RC_MIN_QUANT", metadata !"RC_MIN_QUANT", metadata !"", metadata !699, i32 130, metadata !36, i32 0, i32 1, i32* @RC_MIN_QUANT, null} ; [ DW_TAG_variable ] [RC_MIN_QUANT] [line 130] [def]
!706 = metadata !{i32 786484, i32 0, null, metadata !"BufferSize", metadata !"BufferSize", metadata !"", metadata !699, i32 132, metadata !31, i32 0, i32 1, double* @BufferSize, null} ; [ DW_TAG_variable ] [BufferSize] [line 132] [def]
!707 = metadata !{i32 786484, i32 0, null, metadata !"GOPTargetBufferLevel", metadata !"GOPTargetBufferLevel", metadata !"", metadata !699, i32 133, metadata !31, i32 0, i32 1, double* @GOPTargetBufferLevel, null} ; [ DW_TAG_variable ] [GOPTargetBufferLevel] [line 133] [def]
!708 = metadata !{i32 786484, i32 0, null, metadata !"CurrentBufferFullness", metadata !"CurrentBufferFullness", metadata !"", metadata !699, i32 134, metadata !31, i32 0, i32 1, double* @CurrentBufferFullness, null} ; [ DW_TAG_variable ] [CurrentBufferFullness] [line 134] [def]
!709 = metadata !{i32 786484, i32 0, null, metadata !"TargetBufferLevel", metadata !"TargetBufferLevel", metadata !"", metadata !699, i32 135, metadata !31, i32 0, i32 1, double* @TargetBufferLevel, null} ; [ DW_TAG_variable ] [TargetBufferLevel] [line 135] [def]
!710 = metadata !{i32 786484, i32 0, null, metadata !"PreviousBit_Rate", metadata !"PreviousBit_Rate", metadata !"", metadata !699, i32 136, metadata !31, i32 0, i32 1, double* @PreviousBit_Rate, null} ; [ DW_TAG_variable ] [PreviousBit_Rate] [line 136] [def]
!711 = metadata !{i32 786484, i32 0, null, metadata !"AWp", metadata !"AWp", metadata !"", metadata !699, i32 137, metadata !31, i32 0, i32 1, double* @AWp, null} ; [ DW_TAG_variable ] [AWp] [line 137] [def]
!712 = metadata !{i32 786484, i32 0, null, metadata !"AWb", metadata !"AWb", metadata !"", metadata !699, i32 138, metadata !31, i32 0, i32 1, double* @AWb, null} ; [ DW_TAG_variable ] [AWb] [line 138] [def]
!713 = metadata !{i32 786484, i32 0, null, metadata !"MyInitialQp", metadata !"MyInitialQp", metadata !"", metadata !699, i32 139, metadata !36, i32 0, i32 1, i32* @MyInitialQp, null} ; [ DW_TAG_variable ] [MyInitialQp] [line 139] [def]
!714 = metadata !{i32 786484, i32 0, null, metadata !"PAverageQp", metadata !"PAverageQp", metadata !"", metadata !699, i32 140, metadata !36, i32 0, i32 1, i32* @PAverageQp, null} ; [ DW_TAG_variable ] [PAverageQp] [line 140] [def]
!715 = metadata !{i32 786484, i32 0, null, metadata !"PreviousPictureMAD", metadata !"PreviousPictureMAD", metadata !"", metadata !699, i32 144, metadata !31, i32 0, i32 1, double* @PreviousPictureMAD, null} ; [ DW_TAG_variable ] [PreviousPictureMAD] [line 144] [def]
!716 = metadata !{i32 786484, i32 0, null, metadata !"MADPictureC1", metadata !"MADPictureC1", metadata !"", metadata !699, i32 145, metadata !31, i32 0, i32 1, double* @MADPictureC1, null} ; [ DW_TAG_variable ] [MADPictureC1] [line 145] [def]
!717 = metadata !{i32 786484, i32 0, null, metadata !"MADPictureC2", metadata !"MADPictureC2", metadata !"", metadata !699, i32 146, metadata !31, i32 0, i32 1, double* @MADPictureC2, null} ; [ DW_TAG_variable ] [MADPictureC2] [line 146] [def]
!718 = metadata !{i32 786484, i32 0, null, metadata !"PMADPictureC1", metadata !"PMADPictureC1", metadata !"", metadata !699, i32 147, metadata !31, i32 0, i32 1, double* @PMADPictureC1, null} ; [ DW_TAG_variable ] [PMADPictureC1] [line 147] [def]
!719 = metadata !{i32 786484, i32 0, null, metadata !"PMADPictureC2", metadata !"PMADPictureC2", metadata !"", metadata !699, i32 148, metadata !31, i32 0, i32 1, double* @PMADPictureC2, null} ; [ DW_TAG_variable ] [PMADPictureC2] [line 148] [def]
!720 = metadata !{i32 786484, i32 0, null, metadata !"PictureRejected", metadata !"PictureRejected", metadata !"", metadata !699, i32 150, metadata !721, i32 0, i32 1, [21 x i32]* @PictureRejected, null} ; [ DW_TAG_variable ] [PictureRejected] [line 150] [def]
!721 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 672, i64 32, i32 0, i32 0, metadata !45, metadata !722, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 672, align 32, offset 0] [from Boolean]
!722 = metadata !{metadata !723}
!723 = metadata !{i32 786465, i64 0, i64 21}      ; [ DW_TAG_subrange_type ] [0, 20]
!724 = metadata !{i32 786484, i32 0, null, metadata !"PPictureMAD", metadata !"PPictureMAD", metadata !"", metadata !699, i32 151, metadata !725, i32 0, i32 1, [21 x double]* @PPictureMAD, null} ; [ DW_TAG_variable ] [PPictureMAD] [line 151] [def]
!725 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1344, i64 64, i32 0, i32 0, metadata !31, metadata !722, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1344, align 64, offset 0] [from double]
!726 = metadata !{i32 786484, i32 0, null, metadata !"PictureMAD", metadata !"PictureMAD", metadata !"", metadata !699, i32 152, metadata !725, i32 0, i32 1, [21 x double]* @PictureMAD, null} ; [ DW_TAG_variable ] [PictureMAD] [line 152] [def]
!727 = metadata !{i32 786484, i32 0, null, metadata !"ReferenceMAD", metadata !"ReferenceMAD", metadata !"", metadata !699, i32 153, metadata !725, i32 0, i32 1, [21 x double]* @ReferenceMAD, null} ; [ DW_TAG_variable ] [ReferenceMAD] [line 153] [def]
!728 = metadata !{i32 786484, i32 0, null, metadata !"m_rgRejected", metadata !"m_rgRejected", metadata !"", metadata !699, i32 156, metadata !721, i32 0, i32 1, [21 x i32]* @m_rgRejected, null} ; [ DW_TAG_variable ] [m_rgRejected] [line 156] [def]
!729 = metadata !{i32 786484, i32 0, null, metadata !"m_rgQp", metadata !"m_rgQp", metadata !"", metadata !699, i32 157, metadata !725, i32 0, i32 1, [21 x double]* @m_rgQp, null} ; [ DW_TAG_variable ] [m_rgQp] [line 157] [def]
!730 = metadata !{i32 786484, i32 0, null, metadata !"m_rgRp", metadata !"m_rgRp", metadata !"", metadata !699, i32 158, metadata !725, i32 0, i32 1, [21 x double]* @m_rgRp, null} ; [ DW_TAG_variable ] [m_rgRp] [line 158] [def]
!731 = metadata !{i32 786484, i32 0, null, metadata !"m_X1", metadata !"m_X1", metadata !"", metadata !699, i32 159, metadata !31, i32 0, i32 1, double* @m_X1, null} ; [ DW_TAG_variable ] [m_X1] [line 159] [def]
!732 = metadata !{i32 786484, i32 0, null, metadata !"m_X2", metadata !"m_X2", metadata !"", metadata !699, i32 160, metadata !31, i32 0, i32 1, double* @m_X2, null} ; [ DW_TAG_variable ] [m_X2] [line 160] [def]
!733 = metadata !{i32 786484, i32 0, null, metadata !"m_Qc", metadata !"m_Qc", metadata !"", metadata !699, i32 161, metadata !36, i32 0, i32 1, i32* @m_Qc, null} ; [ DW_TAG_variable ] [m_Qc] [line 161] [def]
!734 = metadata !{i32 786484, i32 0, null, metadata !"m_Qstep", metadata !"m_Qstep", metadata !"", metadata !699, i32 162, metadata !31, i32 0, i32 1, double* @m_Qstep, null} ; [ DW_TAG_variable ] [m_Qstep] [line 162] [def]
!735 = metadata !{i32 786484, i32 0, null, metadata !"m_Qp", metadata !"m_Qp", metadata !"", metadata !699, i32 163, metadata !36, i32 0, i32 1, i32* @m_Qp, null} ; [ DW_TAG_variable ] [m_Qp] [line 163] [def]
!736 = metadata !{i32 786484, i32 0, null, metadata !"Pm_Qp", metadata !"Pm_Qp", metadata !"", metadata !699, i32 164, metadata !36, i32 0, i32 1, i32* @Pm_Qp, null} ; [ DW_TAG_variable ] [Pm_Qp] [line 164] [def]
!737 = metadata !{i32 786484, i32 0, null, metadata !"PreAveMBHeader", metadata !"PreAveMBHeader", metadata !"", metadata !699, i32 165, metadata !36, i32 0, i32 1, i32* @PreAveMBHeader, null} ; [ DW_TAG_variable ] [PreAveMBHeader] [line 165] [def]
!738 = metadata !{i32 786484, i32 0, null, metadata !"CurAveMBHeader", metadata !"CurAveMBHeader", metadata !"", metadata !699, i32 166, metadata !36, i32 0, i32 1, i32* @CurAveMBHeader, null} ; [ DW_TAG_variable ] [CurAveMBHeader] [line 166] [def]
!739 = metadata !{i32 786484, i32 0, null, metadata !"PPreHeader", metadata !"PPreHeader", metadata !"", metadata !699, i32 167, metadata !36, i32 0, i32 1, i32* @PPreHeader, null} ; [ DW_TAG_variable ] [PPreHeader] [line 167] [def]
!740 = metadata !{i32 786484, i32 0, null, metadata !"PreviousQp1", metadata !"PreviousQp1", metadata !"", metadata !699, i32 168, metadata !36, i32 0, i32 1, i32* @PreviousQp1, null} ; [ DW_TAG_variable ] [PreviousQp1] [line 168] [def]
!741 = metadata !{i32 786484, i32 0, null, metadata !"PreviousQp2", metadata !"PreviousQp2", metadata !"", metadata !699, i32 169, metadata !36, i32 0, i32 1, i32* @PreviousQp2, null} ; [ DW_TAG_variable ] [PreviousQp2] [line 169] [def]
!742 = metadata !{i32 786484, i32 0, null, metadata !"NumberofBFrames", metadata !"NumberofBFrames", metadata !"", metadata !699, i32 170, metadata !36, i32 0, i32 1, i32* @NumberofBFrames, null} ; [ DW_TAG_variable ] [NumberofBFrames] [line 170] [def]
!743 = metadata !{i32 786484, i32 0, null, metadata !"TotalFrameQP", metadata !"TotalFrameQP", metadata !"", metadata !699, i32 172, metadata !36, i32 0, i32 1, i32* @TotalFrameQP, null} ; [ DW_TAG_variable ] [TotalFrameQP] [line 172] [def]
!744 = metadata !{i32 786484, i32 0, null, metadata !"NumberofBasicUnit", metadata !"NumberofBasicUnit", metadata !"", metadata !699, i32 173, metadata !36, i32 0, i32 1, i32* @NumberofBasicUnit, null} ; [ DW_TAG_variable ] [NumberofBasicUnit] [line 173] [def]
!745 = metadata !{i32 786484, i32 0, null, metadata !"PAveHeaderBits1", metadata !"PAveHeaderBits1", metadata !"", metadata !699, i32 174, metadata !36, i32 0, i32 1, i32* @PAveHeaderBits1, null} ; [ DW_TAG_variable ] [PAveHeaderBits1] [line 174] [def]
!746 = metadata !{i32 786484, i32 0, null, metadata !"PAveHeaderBits2", metadata !"PAveHeaderBits2", metadata !"", metadata !699, i32 175, metadata !36, i32 0, i32 1, i32* @PAveHeaderBits2, null} ; [ DW_TAG_variable ] [PAveHeaderBits2] [line 175] [def]
!747 = metadata !{i32 786484, i32 0, null, metadata !"PAveHeaderBits3", metadata !"PAveHeaderBits3", metadata !"", metadata !699, i32 176, metadata !36, i32 0, i32 1, i32* @PAveHeaderBits3, null} ; [ DW_TAG_variable ] [PAveHeaderBits3] [line 176] [def]
!748 = metadata !{i32 786484, i32 0, null, metadata !"PAveFrameQP", metadata !"PAveFrameQP", metadata !"", metadata !699, i32 177, metadata !36, i32 0, i32 1, i32* @PAveFrameQP, null} ; [ DW_TAG_variable ] [PAveFrameQP] [line 177] [def]
!749 = metadata !{i32 786484, i32 0, null, metadata !"TotalNumberofBasicUnit", metadata !"TotalNumberofBasicUnit", metadata !"", metadata !699, i32 178, metadata !36, i32 0, i32 1, i32* @TotalNumberofBasicUnit, null} ; [ DW_TAG_variable ] [TotalNumberofBasicUnit] [line 178] [def]
!750 = metadata !{i32 786484, i32 0, null, metadata !"CodedBasicUnit", metadata !"CodedBasicUnit", metadata !"", metadata !699, i32 179, metadata !36, i32 0, i32 1, i32* @CodedBasicUnit, null} ; [ DW_TAG_variable ] [CodedBasicUnit] [line 179] [def]
!751 = metadata !{i32 786484, i32 0, null, metadata !"MINVALUE", metadata !"MINVALUE", metadata !"", metadata !699, i32 180, metadata !31, i32 0, i32 1, double* @MINVALUE, null} ; [ DW_TAG_variable ] [MINVALUE] [line 180] [def]
!752 = metadata !{i32 786484, i32 0, null, metadata !"CurrentFrameMAD", metadata !"CurrentFrameMAD", metadata !"", metadata !699, i32 181, metadata !31, i32 0, i32 1, double* @CurrentFrameMAD, null} ; [ DW_TAG_variable ] [CurrentFrameMAD] [line 181] [def]
!753 = metadata !{i32 786484, i32 0, null, metadata !"CurrentBUMAD", metadata !"CurrentBUMAD", metadata !"", metadata !699, i32 182, metadata !31, i32 0, i32 1, double* @CurrentBUMAD, null} ; [ DW_TAG_variable ] [CurrentBUMAD] [line 182] [def]
!754 = metadata !{i32 786484, i32 0, null, metadata !"TotalBUMAD", metadata !"TotalBUMAD", metadata !"", metadata !699, i32 183, metadata !31, i32 0, i32 1, double* @TotalBUMAD, null} ; [ DW_TAG_variable ] [TotalBUMAD] [line 183] [def]
!755 = metadata !{i32 786484, i32 0, null, metadata !"PreviousFrameMAD", metadata !"PreviousFrameMAD", metadata !"", metadata !699, i32 184, metadata !31, i32 0, i32 1, double* @PreviousFrameMAD, null} ; [ DW_TAG_variable ] [PreviousFrameMAD] [line 184] [def]
!756 = metadata !{i32 786484, i32 0, null, metadata !"m_Hp", metadata !"m_Hp", metadata !"", metadata !699, i32 185, metadata !36, i32 0, i32 1, i32* @m_Hp, null} ; [ DW_TAG_variable ] [m_Hp] [line 185] [def]
!757 = metadata !{i32 786484, i32 0, null, metadata !"m_windowSize", metadata !"m_windowSize", metadata !"", metadata !699, i32 186, metadata !36, i32 0, i32 1, i32* @m_windowSize, null} ; [ DW_TAG_variable ] [m_windowSize] [line 186] [def]
!758 = metadata !{i32 786484, i32 0, null, metadata !"MADm_windowSize", metadata !"MADm_windowSize", metadata !"", metadata !699, i32 187, metadata !36, i32 0, i32 1, i32* @MADm_windowSize, null} ; [ DW_TAG_variable ] [MADm_windowSize] [line 187] [def]
!759 = metadata !{i32 786484, i32 0, null, metadata !"DDquant", metadata !"DDquant", metadata !"", metadata !699, i32 188, metadata !36, i32 0, i32 1, i32* @DDquant, null} ; [ DW_TAG_variable ] [DDquant] [line 188] [def]
!760 = metadata !{i32 786484, i32 0, null, metadata !"MBPerRow", metadata !"MBPerRow", metadata !"", metadata !699, i32 189, metadata !36, i32 0, i32 1, i32* @MBPerRow, null} ; [ DW_TAG_variable ] [MBPerRow] [line 189] [def]
!761 = metadata !{i32 786484, i32 0, null, metadata !"AverageMADPreviousFrame", metadata !"AverageMADPreviousFrame", metadata !"", metadata !699, i32 190, metadata !31, i32 0, i32 1, double* @AverageMADPreviousFrame, null} ; [ DW_TAG_variable ] [AverageMADPreviousFrame] [line 190] [def]
!762 = metadata !{i32 786484, i32 0, null, metadata !"TotalBasicUnitBits", metadata !"TotalBasicUnitBits", metadata !"", metadata !699, i32 191, metadata !36, i32 0, i32 1, i32* @TotalBasicUnitBits, null} ; [ DW_TAG_variable ] [TotalBasicUnitBits] [line 191] [def]
!763 = metadata !{i32 786484, i32 0, null, metadata !"QPLastPFrame", metadata !"QPLastPFrame", metadata !"", metadata !699, i32 192, metadata !36, i32 0, i32 1, i32* @QPLastPFrame, null} ; [ DW_TAG_variable ] [QPLastPFrame] [line 192] [def]
!764 = metadata !{i32 786484, i32 0, null, metadata !"QPLastGOP", metadata !"QPLastGOP", metadata !"", metadata !699, i32 193, metadata !36, i32 0, i32 1, i32* @QPLastGOP, null} ; [ DW_TAG_variable ] [QPLastGOP] [line 193] [def]
!765 = metadata !{i32 786484, i32 0, null, metadata !"Pm_rgQp", metadata !"Pm_rgQp", metadata !"", metadata !699, i32 197, metadata !96, i32 0, i32 1, [20 x double]* @Pm_rgQp, null} ; [ DW_TAG_variable ] [Pm_rgQp] [line 197] [def]
!766 = metadata !{i32 786484, i32 0, null, metadata !"Pm_rgRp", metadata !"Pm_rgRp", metadata !"", metadata !699, i32 198, metadata !96, i32 0, i32 1, [20 x double]* @Pm_rgRp, null} ; [ DW_TAG_variable ] [Pm_rgRp] [line 198] [def]
!767 = metadata !{i32 786484, i32 0, null, metadata !"Pm_X1", metadata !"Pm_X1", metadata !"", metadata !699, i32 199, metadata !31, i32 0, i32 1, double* @Pm_X1, null} ; [ DW_TAG_variable ] [Pm_X1] [line 199] [def]
!768 = metadata !{i32 786484, i32 0, null, metadata !"Pm_X2", metadata !"Pm_X2", metadata !"", metadata !699, i32 200, metadata !31, i32 0, i32 1, double* @Pm_X2, null} ; [ DW_TAG_variable ] [Pm_X2] [line 200] [def]
!769 = metadata !{i32 786484, i32 0, null, metadata !"Pm_Hp", metadata !"Pm_Hp", metadata !"", metadata !699, i32 201, metadata !36, i32 0, i32 1, i32* @Pm_Hp, null} ; [ DW_TAG_variable ] [Pm_Hp] [line 201] [def]
!770 = metadata !{i32 786484, i32 0, null, metadata !"FieldQPBuffer", metadata !"FieldQPBuffer", metadata !"", metadata !699, i32 203, metadata !36, i32 0, i32 1, i32* @FieldQPBuffer, null} ; [ DW_TAG_variable ] [FieldQPBuffer] [line 203] [def]
!771 = metadata !{i32 786484, i32 0, null, metadata !"FrameQPBuffer", metadata !"FrameQPBuffer", metadata !"", metadata !699, i32 204, metadata !36, i32 0, i32 1, i32* @FrameQPBuffer, null} ; [ DW_TAG_variable ] [FrameQPBuffer] [line 204] [def]
!772 = metadata !{i32 786484, i32 0, null, metadata !"FrameAveHeaderBits", metadata !"FrameAveHeaderBits", metadata !"", metadata !699, i32 205, metadata !36, i32 0, i32 1, i32* @FrameAveHeaderBits, null} ; [ DW_TAG_variable ] [FrameAveHeaderBits] [line 205] [def]
!773 = metadata !{i32 786484, i32 0, null, metadata !"FieldAveHeaderBits", metadata !"FieldAveHeaderBits", metadata !"", metadata !699, i32 206, metadata !36, i32 0, i32 1, i32* @FieldAveHeaderBits, null} ; [ DW_TAG_variable ] [FieldAveHeaderBits] [line 206] [def]
!774 = metadata !{i32 786484, i32 0, null, metadata !"BUPFMAD", metadata !"BUPFMAD", metadata !"", metadata !699, i32 207, metadata !775, i32 0, i32 1, double** @BUPFMAD, null} ; [ DW_TAG_variable ] [BUPFMAD] [line 207] [def]
!775 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!776 = metadata !{i32 786484, i32 0, null, metadata !"BUCFMAD", metadata !"BUCFMAD", metadata !"", metadata !699, i32 208, metadata !775, i32 0, i32 1, double** @BUCFMAD, null} ; [ DW_TAG_variable ] [BUCFMAD] [line 208] [def]
!777 = metadata !{i32 786484, i32 0, null, metadata !"FCBUCFMAD", metadata !"FCBUCFMAD", metadata !"", metadata !699, i32 209, metadata !775, i32 0, i32 1, double** @FCBUCFMAD, null} ; [ DW_TAG_variable ] [FCBUCFMAD] [line 209] [def]
!778 = metadata !{i32 786484, i32 0, null, metadata !"FCBUPFMAD", metadata !"FCBUPFMAD", metadata !"", metadata !699, i32 210, metadata !775, i32 0, i32 1, double** @FCBUPFMAD, null} ; [ DW_TAG_variable ] [FCBUPFMAD] [line 210] [def]
!779 = metadata !{i32 786484, i32 0, null, metadata !"GOPOverdue", metadata !"GOPOverdue", metadata !"", metadata !699, i32 212, metadata !45, i32 0, i32 1, i32* @GOPOverdue, null} ; [ DW_TAG_variable ] [GOPOverdue] [line 212] [def]
!780 = metadata !{i32 786484, i32 0, null, metadata !"diffy", metadata !"diffy", metadata !"", metadata !699, i32 216, metadata !554, i32 0, i32 1, [16 x [16 x i32]]* @diffy, null} ; [ DW_TAG_variable ] [diffy] [line 216] [def]
!781 = metadata !{i32 786484, i32 0, null, metadata !"diffyy", metadata !"diffyy", metadata !"", metadata !699, i32 217, metadata !554, i32 0, i32 1, [16 x [16 x i32]]* @diffyy, null} ; [ DW_TAG_variable ] [diffyy] [line 217] [def]
!782 = metadata !{i32 786484, i32 0, null, metadata !"diffy8", metadata !"diffy8", metadata !"", metadata !699, i32 218, metadata !554, i32 0, i32 1, [16 x [16 x i32]]* @diffy8, null} ; [ DW_TAG_variable ] [diffy8] [line 218] [def]
!783 = metadata !{i32 786484, i32 0, null, metadata !"Xp", metadata !"Xp", metadata !"", metadata !24, i32 133, metadata !36, i32 0, i32 1, i32* @Xp, null} ; [ DW_TAG_variable ] [Xp] [line 133] [def]
!784 = metadata !{i32 786484, i32 0, null, metadata !"Xb", metadata !"Xb", metadata !"", metadata !24, i32 133, metadata !36, i32 0, i32 1, i32* @Xb, null} ; [ DW_TAG_variable ] [Xb] [line 133] [def]
!785 = metadata !{i32 786484, i32 0, null, metadata !"R", metadata !"R", metadata !"", metadata !24, i32 134, metadata !36, i32 1, i32 1, i32* @R, null} ; [ DW_TAG_variable ] [R] [line 134] [local] [def]
!786 = metadata !{i32 786484, i32 0, null, metadata !"T_field", metadata !"T_field", metadata !"", metadata !24, i32 134, metadata !36, i32 1, i32 1, i32* @T_field, null} ; [ DW_TAG_variable ] [T_field] [line 134] [local] [def]
!787 = metadata !{i32 786484, i32 0, null, metadata !"Np", metadata !"Np", metadata !"", metadata !24, i32 135, metadata !36, i32 1, i32 1, i32* @Np, null} ; [ DW_TAG_variable ] [Np] [line 135] [local] [def]
!788 = metadata !{i32 786484, i32 0, null, metadata !"Nb", metadata !"Nb", metadata !"", metadata !24, i32 135, metadata !36, i32 1, i32 1, i32* @Nb, null} ; [ DW_TAG_variable ] [Nb] [line 135] [local] [def]
!789 = metadata !{i32 786484, i32 0, null, metadata !"bits_topfield", metadata !"bits_topfield", metadata !"", metadata !24, i32 135, metadata !36, i32 1, i32 1, i32* @bits_topfield, null} ; [ DW_TAG_variable ] [bits_topfield] [line 135] [local] [def]
!790 = metadata !{i32 786484, i32 0, null, metadata !"T", metadata !"T", metadata !"", metadata !24, i32 136, metadata !610, i32 0, i32 1, i64* @T, null} ; [ DW_TAG_variable ] [T] [line 136] [def]
!791 = metadata !{i32 786484, i32 0, null, metadata !"T1", metadata !"T1", metadata !"", metadata !24, i32 136, metadata !610, i32 0, i32 1, i64* @T1, null} ; [ DW_TAG_variable ] [T1] [line 136] [def]
!792 = metadata !{i32 786484, i32 0, null, metadata !"UpperBound1", metadata !"UpperBound1", metadata !"", metadata !24, i32 138, metadata !610, i32 0, i32 1, i64* @UpperBound1, null} ; [ DW_TAG_variable ] [UpperBound1] [line 138] [def]
!793 = metadata !{i32 786484, i32 0, null, metadata !"UpperBound2", metadata !"UpperBound2", metadata !"", metadata !24, i32 138, metadata !610, i32 0, i32 1, i64* @UpperBound2, null} ; [ DW_TAG_variable ] [UpperBound2] [line 138] [def]
!794 = metadata !{i32 786484, i32 0, null, metadata !"LowerBound", metadata !"LowerBound", metadata !"", metadata !24, i32 138, metadata !610, i32 0, i32 1, i64* @LowerBound, null} ; [ DW_TAG_variable ] [LowerBound] [line 138] [def]
!795 = metadata !{i32 786484, i32 0, null, metadata !"InitialDelayOffset", metadata !"InitialDelayOffset", metadata !"", metadata !24, i32 139, metadata !31, i32 0, i32 1, double* @InitialDelayOffset, null} ; [ DW_TAG_variable ] [InitialDelayOffset] [line 139] [def]
!796 = metadata !{i32 786484, i32 0, null, metadata !"Wp", metadata !"Wp", metadata !"", metadata !24, i32 142, metadata !31, i32 0, i32 1, double* @Wp, null} ; [ DW_TAG_variable ] [Wp] [line 142] [def]
!797 = metadata !{i32 786484, i32 0, null, metadata !"Wb", metadata !"Wb", metadata !"", metadata !24, i32 142, metadata !31, i32 0, i32 1, double* @Wb, null} ; [ DW_TAG_variable ] [Wb] [line 142] [def]
!798 = metadata !{i32 786484, i32 0, null, metadata !"TotalPFrame", metadata !"TotalPFrame", metadata !"", metadata !24, i32 143, metadata !36, i32 0, i32 1, i32* @TotalPFrame, null} ; [ DW_TAG_variable ] [TotalPFrame] [line 143] [def]
!799 = metadata !{i32 786484, i32 0, null, metadata !"DuantQp", metadata !"DuantQp", metadata !"", metadata !24, i32 144, metadata !36, i32 0, i32 1, i32* @DuantQp, null} ; [ DW_TAG_variable ] [DuantQp] [line 144] [def]
!800 = metadata !{i32 786484, i32 0, null, metadata !"PDuantQp", metadata !"PDuantQp", metadata !"", metadata !24, i32 145, metadata !36, i32 0, i32 1, i32* @PDuantQp, null} ; [ DW_TAG_variable ] [PDuantQp] [line 145] [def]
!801 = metadata !{i32 786484, i32 0, null, metadata !"BitRate", metadata !"BitRate", metadata !"", metadata !24, i32 146, metadata !633, i32 0, i32 1, %struct._IO_FILE** @BitRate, null} ; [ DW_TAG_variable ] [BitRate] [line 146] [def]
!802 = metadata !{i32 786484, i32 0, null, metadata !"DeltaP", metadata !"DeltaP", metadata !"", metadata !24, i32 147, metadata !31, i32 0, i32 1, double* @DeltaP, null} ; [ DW_TAG_variable ] [DeltaP] [line 147] [def]
!803 = metadata !{i32 159, i32 0, metadata !23, null}
!804 = metadata !{metadata !"any pointer", metadata !805}
!805 = metadata !{metadata !"omnipotent char", metadata !806}
!806 = metadata !{metadata !"Simple C/C++ TBAA"}
!807 = metadata !{metadata !"int", metadata !805}
!808 = metadata !{i32 160, i32 0, metadata !23, null}
!809 = metadata !{i32 162, i32 0, metadata !810, null}
!810 = metadata !{i32 786443, metadata !1, metadata !23, i32 161, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!811 = metadata !{i32 165, i32 0, metadata !23, null}
!812 = metadata !{i32 163, i32 0, metadata !810, null}
!813 = metadata !{i32 166, i32 0, metadata !23, null}
!814 = metadata !{i32 168, i32 0, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !23, i32 167, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!816 = metadata !{i32 171, i32 0, metadata !23, null}
!817 = metadata !{i32 169, i32 0, metadata !815, null}
!818 = metadata !{i32 172, i32 0, metadata !23, null}
!819 = metadata !{i32 174, i32 0, metadata !820, null}
!820 = metadata !{i32 786443, metadata !1, metadata !23, i32 173, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!821 = metadata !{i32 177, i32 0, metadata !23, null}
!822 = metadata !{i32 175, i32 0, metadata !820, null}
!823 = metadata !{i32 178, i32 0, metadata !23, null}
!824 = metadata !{i32 180, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !1, metadata !23, i32 179, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!826 = metadata !{i32 183, i32 0, metadata !23, null}
!827 = metadata !{i32 181, i32 0, metadata !825, null}
!828 = metadata !{i32 184, i32 0, metadata !23, null}
!829 = metadata !{i32 186, i32 0, metadata !830, null}
!830 = metadata !{i32 786443, metadata !1, metadata !23, i32 185, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!831 = metadata !{i32 187, i32 0, metadata !830, null}
!832 = metadata !{i32 189, i32 0, metadata !23, null}
!833 = metadata !{i32 200, i32 0, metadata !27, null}
!834 = metadata !{i32 202, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !27, i32 201, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!836 = metadata !{i32 203, i32 0, metadata !835, null}
!837 = metadata !{i32 204, i32 0, metadata !835, null}
!838 = metadata !{i32 205, i32 0, metadata !27, null}
!839 = metadata !{i32 207, i32 0, metadata !840, null}
!840 = metadata !{i32 786443, metadata !1, metadata !27, i32 206, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!841 = metadata !{i32 208, i32 0, metadata !840, null}
!842 = metadata !{i32 209, i32 0, metadata !840, null}
!843 = metadata !{i32 210, i32 0, metadata !27, null}
!844 = metadata !{i32 212, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !27, i32 211, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!846 = metadata !{i32 213, i32 0, metadata !845, null}
!847 = metadata !{i32 214, i32 0, metadata !845, null}
!848 = metadata !{i32 215, i32 0, metadata !27, null}
!849 = metadata !{i32 217, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !27, i32 216, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!851 = metadata !{i32 218, i32 0, metadata !850, null}
!852 = metadata !{i32 219, i32 0, metadata !850, null}
!853 = metadata !{i32 220, i32 0, metadata !27, null}
!854 = metadata !{i32 222, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !27, i32 221, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!856 = metadata !{i32 223, i32 0, metadata !855, null}
!857 = metadata !{i32 224, i32 0, metadata !855, null}
!858 = metadata !{i32 225, i32 0, metadata !27, null}
!859 = metadata !{i32 241, i32 0, metadata !28, null}
!860 = metadata !{i32 242, i32 0, metadata !28, null}
!861 = metadata !{i32 244, i32 0, metadata !28, null}
!862 = metadata !{metadata !"double", metadata !805}
!863 = metadata !{i32 245, i32 0, metadata !28, null}
!864 = metadata !{metadata !"float", metadata !805}
!865 = metadata !{i32 246, i32 0, metadata !28, null}
!866 = metadata !{i32 250, i32 0, metadata !28, null}
!867 = metadata !{i32 251, i32 0, metadata !28, null}
!868 = metadata !{i32 252, i32 0, metadata !28, null}
!869 = metadata !{i32 253, i32 0, metadata !28, null}
!870 = metadata !{i32 254, i32 0, metadata !28, null}
!871 = metadata !{i32 256, i32 0, metadata !28, null}
!872 = metadata !{i32 259, i32 0, metadata !28, null}
!873 = metadata !{i32 260, i32 0, metadata !28, null}
!874 = metadata !{i32 261, i32 0, metadata !28, null}
!875 = metadata !{i32 263, i32 0, metadata !28, null}
!876 = metadata !{i32 266, i32 0, metadata !28, null}
!877 = metadata !{i32 267, i32 0, metadata !28, null}
!878 = metadata !{i32 268, i32 0, metadata !28, null}
!879 = metadata !{i32 269, i32 0, metadata !28, null}
!880 = metadata !{i32 270, i32 0, metadata !28, null}
!881 = metadata !{i32 272, i32 0, metadata !28, null}
!882 = metadata !{i32 274, i32 0, metadata !28, null}
!883 = metadata !{i32 278, i32 0, metadata !884, null}
!884 = metadata !{i32 786443, metadata !1, metadata !28, i32 275, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!885 = metadata !{i32 281, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !28, i32 280, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!887 = metadata !{i32 277, i32 0, metadata !884, null}
!888 = metadata !{i32 286, i32 0, metadata !28, null}
!889 = metadata !{i32 288, i32 0, metadata !28, null}
!890 = metadata !{i32 289, i32 0, metadata !28, null}
!891 = metadata !{i32 291, i32 0, metadata !28, null}
!892 = metadata !{i32 292, i32 0, metadata !28, null}
!893 = metadata !{i32 294, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !28, i32 294, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!895 = metadata !{i32 296, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !894, i32 295, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!897 = metadata !{i32 297, i32 0, metadata !896, null}
!898 = metadata !{i32 300, i32 0, metadata !28, null}
!899 = metadata !{i32 303, i32 0, metadata !28, null}
!900 = metadata !{i32 306, i32 0, metadata !28, null}
!901 = metadata !{i32 307, i32 0, metadata !28, null}
!902 = metadata !{i32 308, i32 0, metadata !28, null}
!903 = metadata !{i32 309, i32 0, metadata !28, null}
!904 = metadata !{i32 313, i32 0, metadata !28, null}
!905 = metadata !{i32 316, i32 0, metadata !28, null}
!906 = metadata !{i32 318, i32 0, metadata !28, null}
!907 = metadata !{i32 319, i32 0, metadata !28, null}
!908 = metadata !{i32 322, i32 0, metadata !28, null}
!909 = metadata !{i32 323, i32 0, metadata !28, null}
!910 = metadata !{double 2.000000e-01}
!911 = metadata !{i32 330, i32 0, metadata !912, null}
!912 = metadata !{i32 786443, metadata !1, metadata !28, i32 329, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!913 = metadata !{double 6.000000e-01}
!914 = metadata !{i32 331, i32 0, metadata !912, null}
!915 = metadata !{double 1.200000e+00}
!916 = metadata !{i32 332, i32 0, metadata !912, null}
!917 = metadata !{i32 333, i32 0, metadata !912, null}
!918 = metadata !{i32 335, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !1, metadata !28, i32 334, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!920 = metadata !{double 1.400000e+00}
!921 = metadata !{i32 336, i32 0, metadata !919, null}
!922 = metadata !{double 2.400000e+00}
!923 = metadata !{i32 337, i32 0, metadata !919, null}
!924 = metadata !{i32 340, i32 0, metadata !28, null}
!925 = metadata !{i32 342, i32 0, metadata !926, null}
!926 = metadata !{i32 786443, metadata !1, metadata !28, i32 341, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!927 = metadata !{i32 345, i32 0, metadata !926, null}
!928 = metadata !{i32 348, i32 0, metadata !926, null}
!929 = metadata !{i32 352, i32 0, metadata !926, null}
!930 = metadata !{i32 353, i32 0, metadata !926, null}
!931 = metadata !{i32 354, i32 0, metadata !28, null}
!932 = metadata !{i32 363, i32 0, metadata !38, null}
!933 = metadata !{i32 365, i32 0, metadata !38, null}
!934 = metadata !{i32 374, i32 0, metadata !38, null}
!935 = metadata !{i32 379, i32 0, metadata !38, null}
!936 = metadata !{metadata !"long", metadata !805}
!937 = metadata !{i32 380, i32 0, metadata !38, null}
!938 = metadata !{i32 383, i32 0, metadata !38, null}
!939 = metadata !{i32 384, i32 0, metadata !38, null}
!940 = metadata !{i32 385, i32 0, metadata !38, null}
!941 = metadata !{i32 386, i32 0, metadata !38, null}
!942 = metadata !{i32 389, i32 0, metadata !38, null}
!943 = metadata !{i32 392, i32 0, metadata !38, null}
!944 = metadata !{i32 395, i32 0, metadata !38, null}
!945 = metadata !{i32 396, i32 0, metadata !38, null}
!946 = metadata !{i32 397, i32 0, metadata !38, null}
!947 = metadata !{i32 399, i32 0, metadata !948, null}
!948 = metadata !{i32 786443, metadata !1, metadata !38, i32 398, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!949 = metadata !{i32 400, i32 0, metadata !948, null}
!950 = metadata !{i32 401, i32 0, metadata !948, null}
!951 = metadata !{i32 447, i32 0, metadata !38, null}
!952 = metadata !{i32 448, i32 0, metadata !38, null}
!953 = metadata !{i32 403, i32 0, metadata !948, null}
!954 = metadata !{i32 407, i32 0, metadata !955, null}
!955 = metadata !{i32 786443, metadata !1, metadata !38, i32 405, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!956 = metadata !{i32 431, i32 0, metadata !955, null}
!957 = metadata !{i32 423, i32 0, metadata !955, null}
!958 = metadata !{i32 410, i32 0, metadata !959, null}
!959 = metadata !{i32 786443, metadata !1, metadata !955, i32 409, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!960 = metadata !{i32 412, i32 0, metadata !961, null}
!961 = metadata !{i32 786443, metadata !1, metadata !959, i32 411, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!962 = metadata !{i32 413, i32 0, metadata !961, null}
!963 = metadata !{i32 414, i32 0, metadata !961, null}
!964 = metadata !{i32 417, i32 0, metadata !965, null}
!965 = metadata !{i32 786443, metadata !1, metadata !959, i32 416, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!966 = metadata !{i32 418, i32 0, metadata !965, null}
!967 = metadata !{i32 425, i32 0, metadata !955, null}
!968 = metadata !{i32 426, i32 0, metadata !955, null}
!969 = metadata !{i32 427, i32 0, metadata !955, null}
!970 = metadata !{i32 429, i32 0, metadata !955, null}
!971 = metadata !{i32 433, i32 0, metadata !955, null}
!972 = metadata !{i32 434, i32 0, metadata !955, null}
!973 = metadata !{i32 435, i32 0, metadata !955, null}
!974 = metadata !{i32 436, i32 0, metadata !955, null}
!975 = metadata !{i32 439, i32 0, metadata !955, null}
!976 = metadata !{i32 440, i32 0, metadata !955, null}
!977 = metadata !{i32 441, i32 0, metadata !955, null}
!978 = metadata !{i32 442, i32 0, metadata !955, null}
!979 = metadata !{i32 443, i32 0, metadata !955, null}
!980 = metadata !{i32 444, i32 0, metadata !955, null}
!981 = metadata !{i32 449, i32 0, metadata !38, null}
!982 = metadata !{i32 450, i32 0, metadata !38, null}
!983 = metadata !{i32 460, i32 0, metadata !50, null}
!984 = metadata !{i32 465, i32 0, metadata !50, null}
!985 = metadata !{i32 467, i32 0, metadata !50, null}
!986 = metadata !{i32 466, i32 0, metadata !50, null}
!987 = metadata !{i32 472, i32 0, metadata !50, null}
!988 = metadata !{i32 474, i32 0, metadata !989, null}
!989 = metadata !{i32 786443, metadata !1, metadata !50, i32 473, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!990 = metadata !{i32 475, i32 0, metadata !989, null}
!991 = metadata !{i32 477, i32 0, metadata !989, null}
!992 = metadata !{i32 481, i32 0, metadata !50, null}
!993 = metadata !{i32 483, i32 0, metadata !994, null}
!994 = metadata !{i32 786443, metadata !1, metadata !50, i32 482, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!995 = metadata !{i32 488, i32 0, metadata !996, null}
!996 = metadata !{i32 786443, metadata !1, metadata !994, i32 484, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!997 = metadata !{i32 489, i32 0, metadata !996, null}
!998 = metadata !{i32 493, i32 0, metadata !996, null}
!999 = metadata !{i32 495, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !996, i32 494, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1001 = metadata !{i32 497, i32 0, metadata !1002, null}
!1002 = metadata !{i32 786443, metadata !1, metadata !1000, i32 496, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1003 = metadata !{i32 498, i32 0, metadata !1002, null}
!1004 = metadata !{i32 499, i32 0, metadata !1002, null}
!1005 = metadata !{i32 500, i32 0, metadata !1002, null}
!1006 = metadata !{i32 501, i32 0, metadata !1000, null}
!1007 = metadata !{i32 502, i32 0, metadata !1000, null}
!1008 = metadata !{i32 507, i32 0, metadata !1009, null}
!1009 = metadata !{i32 786443, metadata !1, metadata !996, i32 506, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1010 = metadata !{i32 510, i32 0, metadata !1011, null}
!1011 = metadata !{i32 786443, metadata !1, metadata !1009, i32 508, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1012 = metadata !{i32 518, i32 0, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !1, metadata !1014, i32 518, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1014 = metadata !{i32 786443, metadata !1, metadata !1011, i32 517, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1015 = metadata !{i32 519, i32 0, metadata !1013, null}
!1016 = metadata !{i32 513, i32 0, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !1018, i32 513, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1018 = metadata !{i32 786443, metadata !1, metadata !1011, i32 512, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1019 = metadata !{i32 514, i32 0, metadata !1017, null}
!1020 = metadata !{i32 523, i32 0, metadata !1009, null}
!1021 = metadata !{i32 525, i32 0, metadata !1022, null}
!1022 = metadata !{i32 786443, metadata !1, metadata !1009, i32 524, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1023 = metadata !{i32 527, i32 0, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !1, metadata !1022, i32 526, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1025 = metadata !{i32 528, i32 0, metadata !1024, null}
!1026 = metadata !{i32 529, i32 0, metadata !1024, null}
!1027 = metadata !{i32 530, i32 0, metadata !1024, null}
!1028 = metadata !{i32 531, i32 0, metadata !1022, null}
!1029 = metadata !{i32 532, i32 0, metadata !1022, null}
!1030 = metadata !{i32 534, i32 0, metadata !1009, null}
!1031 = metadata !{i32 536, i32 0, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1, metadata !1009, i32 535, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1033 = metadata !{i32 538, i32 0, metadata !1034, null}
!1034 = metadata !{i32 786443, metadata !1, metadata !1032, i32 537, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1035 = metadata !{i32 539, i32 0, metadata !1034, null}
!1036 = metadata !{i32 540, i32 0, metadata !1034, null}
!1037 = metadata !{i32 541, i32 0, metadata !1034, null}
!1038 = metadata !{i32 542, i32 0, metadata !1032, null}
!1039 = metadata !{i32 543, i32 0, metadata !1032, null}
!1040 = metadata !{i32 547, i32 0, metadata !996, null}
!1041 = metadata !{i32 548, i32 0, metadata !996, null}
!1042 = metadata !{i32 552, i32 0, metadata !996, null}
!1043 = metadata !{i32 549, i32 0, metadata !996, null}
!1044 = metadata !{i32 550, i32 0, metadata !996, null}
!1045 = metadata !{i32 553, i32 0, metadata !996, null}
!1046 = metadata !{i32 556, i32 0, metadata !996, null}
!1047 = metadata !{i32 559, i32 0, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !1, metadata !996, i32 557, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1049 = metadata !{i32 561, i32 0, metadata !1048, null}
!1050 = metadata !{i32 567, i32 0, metadata !996, null}
!1051 = metadata !{i32 568, i32 0, metadata !996, null}
!1052 = metadata !{i32 569, i32 0, metadata !996, null}
!1053 = metadata !{i32 571, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !996, i32 570, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1055 = metadata !{i32 572, i32 0, metadata !1054, null}
!1056 = metadata !{i32 573, i32 0, metadata !1054, null}
!1057 = metadata !{i32 574, i32 0, metadata !996, null}
!1058 = metadata !{i32 577, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !996, i32 575, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1060 = metadata !{i32 578, i32 0, metadata !1059, null}
!1061 = metadata !{i32 581, i32 0, metadata !1059, null}
!1062 = metadata !{i32 587, i32 0, metadata !994, null}
!1063 = metadata !{i32 590, i32 0, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !1, metadata !994, i32 588, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1065 = metadata !{i32 592, i32 0, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !1, metadata !1064, i32 591, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1067 = metadata !{i32 594, i32 0, metadata !1068, null}
!1068 = metadata !{i32 786443, metadata !1, metadata !1066, i32 593, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1069 = metadata !{i32 596, i32 0, metadata !1068, null}
!1070 = metadata !{i32 597, i32 0, metadata !1068, null}
!1071 = metadata !{i32 598, i32 0, metadata !1068, null}
!1072 = metadata !{i32 599, i32 0, metadata !1068, null}
!1073 = metadata !{i32 604, i32 0, metadata !1074, null}
!1074 = metadata !{i32 786443, metadata !1, metadata !1064, i32 603, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1075 = metadata !{i32 606, i32 0, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !1, metadata !1074, i32 605, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1077 = metadata !{i32 607, i32 0, metadata !1076, null}
!1078 = metadata !{i32 608, i32 0, metadata !1076, null}
!1079 = metadata !{i32 609, i32 0, metadata !1076, null}
!1080 = metadata !{i32 610, i32 0, metadata !1076, null}
!1081 = metadata !{i32 611, i32 0, metadata !1074, null}
!1082 = metadata !{i32 613, i32 0, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !1, metadata !1074, i32 612, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1084 = metadata !{i32 614, i32 0, metadata !1083, null}
!1085 = metadata !{i32 615, i32 0, metadata !1083, null}
!1086 = metadata !{i32 616, i32 0, metadata !1083, null}
!1087 = metadata !{i32 617, i32 0, metadata !1083, null}
!1088 = metadata !{i32 622, i32 0, metadata !1064, null}
!1089 = metadata !{i32 624, i32 0, metadata !1064, null}
!1090 = metadata !{i32 625, i32 0, metadata !1064, null}
!1091 = metadata !{i32 627, i32 0, metadata !1064, null}
!1092 = metadata !{i32 629, i32 0, metadata !1064, null}
!1093 = metadata !{i32 633, i32 0, metadata !50, null}
!1094 = metadata !{i32 636, i32 0, metadata !1095, null}
!1095 = metadata !{i32 786443, metadata !1, metadata !50, i32 634, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1096 = metadata !{i32 637, i32 0, metadata !1095, null}
!1097 = metadata !{i32 640, i32 0, metadata !1095, null}
!1098 = metadata !{i32 642, i32 0, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !1, metadata !1095, i32 641, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1100 = metadata !{i32 643, i32 0, metadata !1099, null}
!1101 = metadata !{i32 644, i32 0, metadata !1099, null}
!1102 = metadata !{i32 645, i32 0, metadata !1099, null}
!1103 = metadata !{i32 646, i32 0, metadata !1099, null}
!1104 = metadata !{i32 647, i32 0, metadata !1099, null}
!1105 = metadata !{i32 649, i32 0, metadata !1099, null}
!1106 = metadata !{i32 653, i32 0, metadata !50, null}
!1107 = metadata !{i32 657, i32 0, metadata !1108, null}
!1108 = metadata !{i32 786443, metadata !1, metadata !50, i32 655, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1109 = metadata !{i32 659, i32 0, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !1, metadata !1108, i32 658, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1111 = metadata !{i32 660, i32 0, metadata !1110, null}
!1112 = metadata !{i32 661, i32 0, metadata !1110, null}
!1113 = metadata !{i32 665, i32 0, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !1, metadata !1108, i32 664, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1115 = metadata !{i32 666, i32 0, metadata !1114, null}
!1116 = metadata !{i32 667, i32 0, metadata !1114, null}
!1117 = metadata !{i32 668, i32 0, metadata !1114, null}
!1118 = metadata !{i32 669, i32 0, metadata !1114, null}
!1119 = metadata !{i32 672, i32 0, metadata !50, null}
!1120 = metadata !{i32 688, i32 0, metadata !58, null}
!1121 = metadata !{i32 691, i32 0, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !1, metadata !58, i32 691, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1123 = metadata !{i32 692, i32 0, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !1, metadata !1122, i32 692, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1125 = metadata !{i32 693, i32 0, metadata !1124, null}
!1126 = metadata !{i32 695, i32 0, metadata !58, null}
!1127 = metadata !{i32 696, i32 0, metadata !58, null}
!1128 = metadata !{i32 710, i32 0, metadata !66, null}
!1129 = metadata !{i32 712, i32 0, metadata !66, null}
!1130 = metadata !{i32 713, i32 0, metadata !66, null}
!1131 = metadata !{i32 716, i32 0, metadata !66, null}
!1132 = metadata !{i32 717, i32 0, metadata !66, null}
!1133 = metadata !{i32 718, i32 0, metadata !66, null}
!1134 = metadata !{i32 720, i32 0, metadata !66, null}
!1135 = metadata !{i32 734, i32 0, metadata !71, null}
!1136 = metadata !{i32 739, i32 0, metadata !71, null}
!1137 = metadata !{i32 742, i32 0, metadata !71, null}
!1138 = metadata !{i32 743, i32 0, metadata !71, null}
!1139 = metadata !{i32 761, i32 0, metadata !71, null}
!1140 = metadata !{i32 747, i32 0, metadata !1141, null}
!1141 = metadata !{i32 786443, metadata !1, metadata !71, i32 746, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1142 = metadata !{i32 749, i32 0, metadata !1143, null}
!1143 = metadata !{i32 786443, metadata !1, metadata !1141, i32 748, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1144 = metadata !{i32 752, i32 0, metadata !1145, null}
!1145 = metadata !{i32 786443, metadata !1, metadata !1143, i32 751, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1146 = metadata !{i32 753, i32 0, metadata !1145, null}
!1147 = metadata !{i32 754, i32 0, metadata !1145, null}
!1148 = metadata !{i32 757, i32 0, metadata !1141, null}
!1149 = metadata !{i32 765, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1, metadata !71, i32 762, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1151 = metadata !{i32 768, i32 0, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1, metadata !1150, i32 767, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1153 = metadata !{i32 769, i32 0, metadata !1152, null}
!1154 = metadata !{i32 770, i32 0, metadata !1152, null}
!1155 = metadata !{i32 771, i32 0, metadata !1152, null}
!1156 = metadata !{i32 772, i32 0, metadata !1152, null}
!1157 = metadata !{i32 773, i32 0, metadata !1152, null}
!1158 = metadata !{i32 774, i32 0, metadata !1152, null}
!1159 = metadata !{i32 775, i32 0, metadata !1150, null}
!1160 = metadata !{i32 776, i32 0, metadata !1150, null}
!1161 = metadata !{i32 779, i32 0, metadata !1150, null}
!1162 = metadata !{i32 780, i32 0, metadata !1150, null}
!1163 = metadata !{i32 781, i32 0, metadata !1150, null}
!1164 = metadata !{i32 783, i32 0, metadata !1150, null}
!1165 = metadata !{i32 784, i32 0, metadata !1150, null}
!1166 = metadata !{i32 786, i32 0, metadata !1150, null}
!1167 = metadata !{i32 788, i32 0, metadata !71, null}
!1168 = metadata !{i32 800, i32 0, metadata !76, null}
!1169 = metadata !{i32 802, i32 0, metadata !76, null}
!1170 = metadata !{i32 803, i32 0, metadata !76, null}
!1171 = metadata !{i32 813, i32 0, metadata !79, null}
!1172 = metadata !{i32 824, i32 0, metadata !79, null}
!1173 = metadata !{i32 830, i32 0, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !1, metadata !79, i32 825, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1175 = metadata !{i32 832, i32 0, metadata !1176, null}
!1176 = metadata !{i32 786443, metadata !1, metadata !1174, i32 831, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1177 = metadata !{i32 834, i32 0, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !1, metadata !1176, i32 833, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1179 = metadata !{i32 835, i32 0, metadata !1178, null}
!1180 = metadata !{i32 839, i32 0, metadata !1181, null}
!1181 = metadata !{i32 786443, metadata !1, metadata !1176, i32 838, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1182 = metadata !{i32 841, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !1181, i32 840, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1184 = metadata !{i32 844, i32 0, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !1, metadata !1183, i32 843, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1186 = metadata !{i32 847, i32 0, metadata !1187, null}
!1187 = metadata !{i32 786443, metadata !1, metadata !1185, i32 845, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1188 = metadata !{i32 849, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !1, metadata !1187, i32 848, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1190 = metadata !{i32 850, i32 0, metadata !1189, null}
!1191 = metadata !{i32 851, i32 0, metadata !1189, null}
!1192 = metadata !{i32 856, i32 0, metadata !1193, null}
!1193 = metadata !{i32 786443, metadata !1, metadata !1187, i32 854, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1194 = metadata !{i32 861, i32 0, metadata !1183, null}
!1195 = metadata !{i32 862, i32 0, metadata !1183, null}
!1196 = metadata !{i32 864, i32 0, metadata !1183, null}
!1197 = metadata !{i32 865, i32 0, metadata !1183, null}
!1198 = metadata !{i32 866, i32 0, metadata !1183, null}
!1199 = metadata !{i32 867, i32 0, metadata !1183, null}
!1200 = metadata !{i32 870, i32 0, metadata !1201, null}
!1201 = metadata !{i32 786443, metadata !1, metadata !1181, i32 869, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1202 = metadata !{i32 871, i32 0, metadata !1201, null}
!1203 = metadata !{i32 872, i32 0, metadata !1201, null}
!1204 = metadata !{i32 875, i32 0, metadata !1201, null}
!1205 = metadata !{i32 877, i32 0, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !1, metadata !1201, i32 876, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1207 = metadata !{i32 880, i32 0, metadata !1208, null}
!1208 = metadata !{i32 786443, metadata !1, metadata !1206, i32 879, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1209 = metadata !{i32 883, i32 0, metadata !1210, null}
!1210 = metadata !{i32 786443, metadata !1, metadata !1208, i32 881, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1211 = metadata !{i32 885, i32 0, metadata !1212, null}
!1212 = metadata !{i32 786443, metadata !1, metadata !1210, i32 884, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1213 = metadata !{i32 886, i32 0, metadata !1212, null}
!1214 = metadata !{i32 887, i32 0, metadata !1212, null}
!1215 = metadata !{i32 892, i32 0, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !1, metadata !1210, i32 890, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1217 = metadata !{i32 898, i32 0, metadata !1201, null}
!1218 = metadata !{i32 900, i32 0, metadata !1201, null}
!1219 = metadata !{i32 902, i32 0, metadata !1201, null}
!1220 = metadata !{i32 904, i32 0, metadata !1201, null}
!1221 = metadata !{i32 906, i32 0, metadata !1201, null}
!1222 = metadata !{i32 907, i32 0, metadata !1201, null}
!1223 = metadata !{i32 911, i32 0, metadata !1201, null}
!1224 = metadata !{i32 912, i32 0, metadata !1201, null}
!1225 = metadata !{i32 914, i32 0, metadata !1201, null}
!1226 = metadata !{i32 915, i32 0, metadata !1201, null}
!1227 = metadata !{i32 917, i32 0, metadata !1181, null}
!1228 = metadata !{i32 919, i32 0, metadata !1176, null}
!1229 = metadata !{i32 921, i32 0, metadata !1230, null}
!1230 = metadata !{i32 786443, metadata !1, metadata !1176, i32 920, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1231 = metadata !{i32 923, i32 0, metadata !1230, null}
!1232 = metadata !{i32 925, i32 0, metadata !1233, null}
!1233 = metadata !{i32 786443, metadata !1, metadata !1230, i32 924, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1234 = metadata !{i32 927, i32 0, metadata !1235, null}
!1235 = metadata !{i32 786443, metadata !1, metadata !1233, i32 926, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1236 = metadata !{i32 928, i32 0, metadata !1235, null}
!1237 = metadata !{i32 929, i32 0, metadata !1235, null}
!1238 = metadata !{i32 930, i32 0, metadata !1235, null}
!1239 = metadata !{i32 931, i32 0, metadata !1235, null}
!1240 = metadata !{i32 934, i32 0, metadata !1233, null}
!1241 = metadata !{i32 942, i32 0, metadata !1242, null}
!1242 = metadata !{i32 786443, metadata !1, metadata !1176, i32 940, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1243 = metadata !{i32 947, i32 0, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !1, metadata !1242, i32 945, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1245 = metadata !{i32 949, i32 0, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !1, metadata !1244, i32 948, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1247 = metadata !{i32 950, i32 0, metadata !1246, null}
!1248 = metadata !{i32 951, i32 0, metadata !1246, null}
!1249 = metadata !{i32 955, i32 0, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !1, metadata !1244, i32 954, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1251 = metadata !{i32 956, i32 0, metadata !1250, null}
!1252 = metadata !{i32 960, i32 0, metadata !1242, null}
!1253 = metadata !{i32 961, i32 0, metadata !1242, null}
!1254 = metadata !{i32 962, i32 0, metadata !1242, null}
!1255 = metadata !{i32 963, i32 0, metadata !1242, null}
!1256 = metadata !{i32 964, i32 0, metadata !1242, null}
!1257 = metadata !{i32 965, i32 0, metadata !1242, null}
!1258 = metadata !{i32 966, i32 0, metadata !1242, null}
!1259 = metadata !{i32 967, i32 0, metadata !1242, null}
!1260 = metadata !{i32 970, i32 0, metadata !1242, null}
!1261 = metadata !{i32 974, i32 0, metadata !1242, null}
!1262 = metadata !{i32 976, i32 0, metadata !1263, null}
!1263 = metadata !{i32 786443, metadata !1, metadata !1242, i32 975, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1264 = metadata !{i32 977, i32 0, metadata !1263, null}
!1265 = metadata !{i32 978, i32 0, metadata !1263, null}
!1266 = metadata !{i32 981, i32 0, metadata !1267, null}
!1267 = metadata !{i32 786443, metadata !1, metadata !1242, i32 980, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1268 = metadata !{i32 982, i32 0, metadata !1267, null}
!1269 = metadata !{i32 983, i32 0, metadata !1267, null}
!1270 = metadata !{i32 985, i32 0, metadata !1267, null}
!1271 = metadata !{i32 986, i32 0, metadata !1267, null}
!1272 = metadata !{i32 988, i32 0, metadata !1267, null}
!1273 = metadata !{i32 990, i32 0, metadata !1267, null}
!1274 = metadata !{i32 992, i32 0, metadata !1267, null}
!1275 = metadata !{i32 993, i32 0, metadata !1267, null}
!1276 = metadata !{i32 994, i32 0, metadata !1267, null}
!1277 = metadata !{i32 995, i32 0, metadata !1267, null}
!1278 = metadata !{i32 998, i32 0, metadata !1242, null}
!1279 = metadata !{i32 1001, i32 0, metadata !1280, null}
!1280 = metadata !{i32 786443, metadata !1, metadata !1242, i32 999, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1281 = metadata !{i32 1003, i32 0, metadata !1282, null}
!1282 = metadata !{i32 786443, metadata !1, metadata !1280, i32 1002, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1283 = metadata !{i32 1004, i32 0, metadata !1282, null}
!1284 = metadata !{i32 1005, i32 0, metadata !1282, null}
!1285 = metadata !{i32 1006, i32 0, metadata !1282, null}
!1286 = metadata !{i32 1007, i32 0, metadata !1282, null}
!1287 = metadata !{i32 1010, i32 0, metadata !1280, null}
!1288 = metadata !{i32 1019, i32 0, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !1, metadata !1174, i32 1018, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1290 = metadata !{i32 1022, i32 0, metadata !1291, null}
!1291 = metadata !{i32 786443, metadata !1, metadata !1289, i32 1020, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1292 = metadata !{i32 1024, i32 0, metadata !1293, null}
!1293 = metadata !{i32 786443, metadata !1, metadata !1291, i32 1023, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1294 = metadata !{i32 1025, i32 0, metadata !1293, null}
!1295 = metadata !{i32 1026, i32 0, metadata !1293, null}
!1296 = metadata !{i32 1027, i32 0, metadata !1293, null}
!1297 = metadata !{i32 1028, i32 0, metadata !1293, null}
!1298 = metadata !{i32 1031, i32 0, metadata !1291, null}
!1299 = metadata !{i32 1033, i32 0, metadata !1289, null}
!1300 = metadata !{i32 1040, i32 0, metadata !1301, null}
!1301 = metadata !{i32 786443, metadata !1, metadata !79, i32 1038, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1302 = metadata !{i32 1042, i32 0, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !1, metadata !1301, i32 1041, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1304 = metadata !{i32 1043, i32 0, metadata !1303, null}
!1305 = metadata !{i32 1046, i32 0, metadata !1301, null}
!1306 = metadata !{i32 1048, i32 0, metadata !1307, null}
!1307 = metadata !{i32 786443, metadata !1, metadata !1301, i32 1047, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1308 = metadata !{i32 1049, i32 0, metadata !1307, null}
!1309 = metadata !{i32 1051, i32 0, metadata !1301, null}
!1310 = metadata !{i32 1054, i32 0, metadata !1311, null}
!1311 = metadata !{i32 786443, metadata !1, metadata !1301, i32 1052, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1312 = metadata !{i32 1056, i32 0, metadata !1313, null}
!1313 = metadata !{i32 786443, metadata !1, metadata !1311, i32 1055, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1314 = metadata !{i32 1059, i32 0, metadata !1315, null}
!1315 = metadata !{i32 786443, metadata !1, metadata !1313, i32 1057, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1316 = metadata !{i32 1062, i32 0, metadata !1317, null}
!1317 = metadata !{i32 786443, metadata !1, metadata !1315, i32 1061, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1318 = metadata !{i32 1065, i32 0, metadata !1319, null}
!1319 = metadata !{i32 786443, metadata !1, metadata !1317, i32 1063, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1320 = metadata !{i32 1067, i32 0, metadata !1321, null}
!1321 = metadata !{i32 786443, metadata !1, metadata !1319, i32 1066, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1322 = metadata !{i32 1068, i32 0, metadata !1321, null}
!1323 = metadata !{i32 1069, i32 0, metadata !1321, null}
!1324 = metadata !{i32 1074, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !1, metadata !1319, i32 1072, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1326 = metadata !{i32 1079, i32 0, metadata !1315, null}
!1327 = metadata !{i32 1080, i32 0, metadata !1315, null}
!1328 = metadata !{i32 1082, i32 0, metadata !1315, null}
!1329 = metadata !{i32 1083, i32 0, metadata !1315, null}
!1330 = metadata !{i32 1084, i32 0, metadata !1315, null}
!1331 = metadata !{i32 1085, i32 0, metadata !1315, null}
!1332 = metadata !{i32 1088, i32 0, metadata !1333, null}
!1333 = metadata !{i32 786443, metadata !1, metadata !1313, i32 1087, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1334 = metadata !{i32 1089, i32 0, metadata !1333, null}
!1335 = metadata !{i32 1090, i32 0, metadata !1333, null}
!1336 = metadata !{i32 1093, i32 0, metadata !1333, null}
!1337 = metadata !{i32 1095, i32 0, metadata !1338, null}
!1338 = metadata !{i32 786443, metadata !1, metadata !1333, i32 1094, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1339 = metadata !{i32 1098, i32 0, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !1, metadata !1338, i32 1097, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1341 = metadata !{i32 1101, i32 0, metadata !1342, null}
!1342 = metadata !{i32 786443, metadata !1, metadata !1340, i32 1099, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1343 = metadata !{i32 1103, i32 0, metadata !1344, null}
!1344 = metadata !{i32 786443, metadata !1, metadata !1342, i32 1102, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1345 = metadata !{i32 1104, i32 0, metadata !1344, null}
!1346 = metadata !{i32 1105, i32 0, metadata !1344, null}
!1347 = metadata !{i32 1110, i32 0, metadata !1348, null}
!1348 = metadata !{i32 786443, metadata !1, metadata !1342, i32 1108, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1349 = metadata !{i32 1116, i32 0, metadata !1333, null}
!1350 = metadata !{i32 1118, i32 0, metadata !1333, null}
!1351 = metadata !{i32 1120, i32 0, metadata !1333, null}
!1352 = metadata !{i32 1122, i32 0, metadata !1333, null}
!1353 = metadata !{i32 1124, i32 0, metadata !1333, null}
!1354 = metadata !{i32 1125, i32 0, metadata !1333, null}
!1355 = metadata !{i32 1128, i32 0, metadata !1333, null}
!1356 = metadata !{i32 1129, i32 0, metadata !1333, null}
!1357 = metadata !{i32 1131, i32 0, metadata !1333, null}
!1358 = metadata !{i32 1132, i32 0, metadata !1333, null}
!1359 = metadata !{i32 1134, i32 0, metadata !1313, null}
!1360 = metadata !{i32 1138, i32 0, metadata !1311, null}
!1361 = metadata !{i32 1142, i32 0, metadata !1362, null}
!1362 = metadata !{i32 786443, metadata !1, metadata !1301, i32 1141, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1363 = metadata !{i32 1144, i32 0, metadata !1364, null}
!1364 = metadata !{i32 786443, metadata !1, metadata !1362, i32 1143, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1365 = metadata !{i32 1148, i32 0, metadata !1366, null}
!1366 = metadata !{i32 786443, metadata !1, metadata !1364, i32 1146, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1367 = metadata !{i32 1149, i32 0, metadata !1366, null}
!1368 = metadata !{i32 1150, i32 0, metadata !1366, null}
!1369 = metadata !{i32 1151, i32 0, metadata !1366, null}
!1370 = metadata !{i32 1153, i32 0, metadata !1366, null}
!1371 = metadata !{i32 1156, i32 0, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !1, metadata !1366, i32 1154, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1373 = metadata !{i32 1158, i32 0, metadata !1374, null}
!1374 = metadata !{i32 786443, metadata !1, metadata !1372, i32 1157, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1375 = metadata !{i32 1159, i32 0, metadata !1374, null}
!1376 = metadata !{i32 1160, i32 0, metadata !1374, null}
!1377 = metadata !{i32 1161, i32 0, metadata !1374, null}
!1378 = metadata !{i32 1162, i32 0, metadata !1374, null}
!1379 = metadata !{i32 1163, i32 0, metadata !1374, null}
!1380 = metadata !{i32 1165, i32 0, metadata !1372, null}
!1381 = metadata !{i32 1168, i32 0, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !1, metadata !1372, i32 1167, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1383 = metadata !{i32 1170, i32 0, metadata !1384, null}
!1384 = metadata !{i32 786443, metadata !1, metadata !1382, i32 1169, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1385 = metadata !{i32 1171, i32 0, metadata !1384, null}
!1386 = metadata !{i32 1172, i32 0, metadata !1384, null}
!1387 = metadata !{i32 1175, i32 0, metadata !1388, null}
!1388 = metadata !{i32 786443, metadata !1, metadata !1382, i32 1174, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1389 = metadata !{i32 1176, i32 0, metadata !1388, null}
!1390 = metadata !{i32 1180, i32 0, metadata !1366, null}
!1391 = metadata !{i32 1181, i32 0, metadata !1366, null}
!1392 = metadata !{i32 1182, i32 0, metadata !1366, null}
!1393 = metadata !{i32 1187, i32 0, metadata !1394, null}
!1394 = metadata !{i32 786443, metadata !1, metadata !1362, i32 1186, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1395 = metadata !{i32 1188, i32 0, metadata !1394, null}
!1396 = metadata !{i32 1189, i32 0, metadata !1394, null}
!1397 = metadata !{i32 1190, i32 0, metadata !1394, null}
!1398 = metadata !{i32 1191, i32 0, metadata !1394, null}
!1399 = metadata !{i32 1192, i32 0, metadata !1394, null}
!1400 = metadata !{i32 1193, i32 0, metadata !1394, null}
!1401 = metadata !{i32 1195, i32 0, metadata !1394, null}
!1402 = metadata !{i32 1196, i32 0, metadata !1394, null}
!1403 = metadata !{i32 1198, i32 0, metadata !1394, null}
!1404 = metadata !{i32 1201, i32 0, metadata !1394, null}
!1405 = metadata !{i32 1205, i32 0, metadata !1406, null}
!1406 = metadata !{i32 786443, metadata !1, metadata !1394, i32 1202, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1407 = metadata !{i32 1210, i32 0, metadata !1408, null}
!1408 = metadata !{i32 786443, metadata !1, metadata !1406, i32 1208, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1409 = metadata !{i32 1212, i32 0, metadata !1410, null}
!1410 = metadata !{i32 786443, metadata !1, metadata !1408, i32 1211, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1411 = metadata !{i32 1213, i32 0, metadata !1410, null}
!1412 = metadata !{i32 1214, i32 0, metadata !1410, null}
!1413 = metadata !{i32 1215, i32 0, metadata !1410, null}
!1414 = metadata !{i32 1216, i32 0, metadata !1410, null}
!1415 = metadata !{i32 1220, i32 0, metadata !1416, null}
!1416 = metadata !{i32 786443, metadata !1, metadata !1408, i32 1219, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1417 = metadata !{i32 1221, i32 0, metadata !1416, null}
!1418 = metadata !{i32 1222, i32 0, metadata !1416, null}
!1419 = metadata !{i32 1223, i32 0, metadata !1416, null}
!1420 = metadata !{i32 1227, i32 0, metadata !1406, null}
!1421 = metadata !{i32 1229, i32 0, metadata !1422, null}
!1422 = metadata !{i32 786443, metadata !1, metadata !1406, i32 1228, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1423 = metadata !{i32 1230, i32 0, metadata !1422, null}
!1424 = metadata !{i32 1231, i32 0, metadata !1422, null}
!1425 = metadata !{i32 1232, i32 0, metadata !1422, null}
!1426 = metadata !{i32 1233, i32 0, metadata !1422, null}
!1427 = metadata !{i32 1237, i32 0, metadata !1428, null}
!1428 = metadata !{i32 786443, metadata !1, metadata !1406, i32 1236, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1429 = metadata !{i32 1239, i32 0, metadata !1406, null}
!1430 = metadata !{i32 1240, i32 0, metadata !1406, null}
!1431 = metadata !{i32 1241, i32 0, metadata !1406, null}
!1432 = metadata !{i32 1242, i32 0, metadata !1406, null}
!1433 = metadata !{i32 1246, i32 0, metadata !1434, null}
!1434 = metadata !{i32 786443, metadata !1, metadata !1394, i32 1244, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1435 = metadata !{i32 1247, i32 0, metadata !1434, null}
!1436 = metadata !{i32 1248, i32 0, metadata !1434, null}
!1437 = metadata !{i32 1249, i32 0, metadata !1434, null}
!1438 = metadata !{i32 1250, i32 0, metadata !1434, null}
!1439 = metadata !{i32 1252, i32 0, metadata !1440, null}
!1440 = metadata !{i32 786443, metadata !1, metadata !1434, i32 1251, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1441 = metadata !{i32 1253, i32 0, metadata !1440, null}
!1442 = metadata !{i32 1255, i32 0, metadata !1440, null}
!1443 = metadata !{i32 1256, i32 0, metadata !1440, null}
!1444 = metadata !{i32 1257, i32 0, metadata !1440, null}
!1445 = metadata !{i32 1258, i32 0, metadata !1440, null}
!1446 = metadata !{i32 1260, i32 0, metadata !1440, null}
!1447 = metadata !{i32 1262, i32 0, metadata !1440, null}
!1448 = metadata !{i32 1263, i32 0, metadata !1440, null}
!1449 = metadata !{i32 1264, i32 0, metadata !1440, null}
!1450 = metadata !{i32 1266, i32 0, metadata !1451, null}
!1451 = metadata !{i32 786443, metadata !1, metadata !1440, i32 1265, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1452 = metadata !{i32 1269, i32 0, metadata !1453, null}
!1453 = metadata !{i32 786443, metadata !1, metadata !1451, i32 1267, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1454 = metadata !{i32 1271, i32 0, metadata !1455, null}
!1455 = metadata !{i32 786443, metadata !1, metadata !1453, i32 1270, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1456 = metadata !{i32 1272, i32 0, metadata !1455, null}
!1457 = metadata !{i32 1273, i32 0, metadata !1455, null}
!1458 = metadata !{i32 1275, i32 0, metadata !1455, null}
!1459 = metadata !{i32 1276, i32 0, metadata !1455, null}
!1460 = metadata !{i32 1278, i32 0, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !1, metadata !1455, i32 1277, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1462 = metadata !{i32 1279, i32 0, metadata !1461, null}
!1463 = metadata !{i32 1280, i32 0, metadata !1461, null}
!1464 = metadata !{i32 1283, i32 0, metadata !1465, null}
!1465 = metadata !{i32 786443, metadata !1, metadata !1455, i32 1282, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1466 = metadata !{i32 1285, i32 0, metadata !1467, null}
!1467 = metadata !{i32 786443, metadata !1, metadata !1465, i32 1284, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1468 = metadata !{i32 1286, i32 0, metadata !1467, null}
!1469 = metadata !{i32 1287, i32 0, metadata !1467, null}
!1470 = metadata !{i32 1288, i32 0, metadata !1465, null}
!1471 = metadata !{i32 1290, i32 0, metadata !1472, null}
!1472 = metadata !{i32 786443, metadata !1, metadata !1465, i32 1289, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1473 = metadata !{i32 1291, i32 0, metadata !1472, null}
!1474 = metadata !{i32 1292, i32 0, metadata !1472, null}
!1475 = metadata !{i32 1294, i32 0, metadata !1455, null}
!1476 = metadata !{i32 1295, i32 0, metadata !1455, null}
!1477 = metadata !{i32 1320, i32 0, metadata !1440, null}
!1478 = metadata !{i32 1296, i32 0, metadata !1455, null}
!1479 = metadata !{i32 1298, i32 0, metadata !1453, null}
!1480 = metadata !{i32 1301, i32 0, metadata !1481, null}
!1481 = metadata !{i32 786443, metadata !1, metadata !1453, i32 1300, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1482 = metadata !{i32 1303, i32 0, metadata !1483, null}
!1483 = metadata !{i32 786443, metadata !1, metadata !1481, i32 1302, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1484 = metadata !{i32 1304, i32 0, metadata !1483, null}
!1485 = metadata !{i32 1305, i32 0, metadata !1483, null}
!1486 = metadata !{i32 1306, i32 0, metadata !1483, null}
!1487 = metadata !{i32 1310, i32 0, metadata !1488, null}
!1488 = metadata !{i32 786443, metadata !1, metadata !1481, i32 1308, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1489 = metadata !{i32 1311, i32 0, metadata !1488, null}
!1490 = metadata !{i32 1316, i32 0, metadata !1440, null}
!1491 = metadata !{i32 1317, i32 0, metadata !1440, null}
!1492 = metadata !{i32 1319, i32 0, metadata !1440, null}
!1493 = metadata !{i32 1325, i32 0, metadata !1494, null}
!1494 = metadata !{i32 786443, metadata !1, metadata !1434, i32 1323, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1495 = metadata !{i32 1328, i32 0, metadata !1496, null}
!1496 = metadata !{i32 786443, metadata !1, metadata !1494, i32 1327, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1497 = metadata !{i32 1329, i32 0, metadata !1496, null}
!1498 = metadata !{i32 1330, i32 0, metadata !1499, null}
!1499 = metadata !{i32 786443, metadata !1, metadata !1496, i32 1330, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1500 = metadata !{i32 1332, i32 0, metadata !1501, null}
!1501 = metadata !{i32 786443, metadata !1, metadata !1499, i32 1331, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1502 = metadata !{i32 1333, i32 0, metadata !1501, null}
!1503 = metadata !{i32 1338, i32 0, metadata !1504, null}
!1504 = metadata !{i32 786443, metadata !1, metadata !1494, i32 1337, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1505 = metadata !{i32 1339, i32 0, metadata !1504, null}
!1506 = metadata !{i32 1340, i32 0, metadata !1507, null}
!1507 = metadata !{i32 786443, metadata !1, metadata !1504, i32 1340, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1508 = metadata !{i32 1342, i32 0, metadata !1509, null}
!1509 = metadata !{i32 786443, metadata !1, metadata !1507, i32 1341, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1510 = metadata !{i32 1343, i32 0, metadata !1509, null}
!1511 = metadata !{i32 1348, i32 0, metadata !1494, null}
!1512 = metadata !{i32 1350, i32 0, metadata !1494, null}
!1513 = metadata !{i32 1352, i32 0, metadata !1494, null}
!1514 = metadata !{i32 1354, i32 0, metadata !1494, null}
!1515 = metadata !{i32 1356, i32 0, metadata !1494, null}
!1516 = metadata !{i32 1357, i32 0, metadata !1494, null}
!1517 = metadata !{i32 1359, i32 0, metadata !1494, null}
!1518 = metadata !{i32 1361, i32 0, metadata !1494, null}
!1519 = metadata !{i32 1362, i32 0, metadata !1494, null}
!1520 = metadata !{i32 1364, i32 0, metadata !1494, null}
!1521 = metadata !{i32 1365, i32 0, metadata !1494, null}
!1522 = metadata !{i32 1367, i32 0, metadata !1494, null}
!1523 = metadata !{i32 1369, i32 0, metadata !1494, null}
!1524 = metadata !{i32 1370, i32 0, metadata !1494, null}
!1525 = metadata !{i32 1371, i32 0, metadata !1494, null}
!1526 = metadata !{i32 1372, i32 0, metadata !1494, null}
!1527 = metadata !{i32 1374, i32 0, metadata !1494, null}
!1528 = metadata !{i32 1376, i32 0, metadata !1494, null}
!1529 = metadata !{i32 1377, i32 0, metadata !1494, null}
!1530 = metadata !{i32 1378, i32 0, metadata !1494, null}
!1531 = metadata !{i32 1379, i32 0, metadata !1494, null}
!1532 = metadata !{i32 1380, i32 0, metadata !1494, null}
!1533 = metadata !{i32 1382, i32 0, metadata !1534, null}
!1534 = metadata !{i32 786443, metadata !1, metadata !1494, i32 1381, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1535 = metadata !{i32 1385, i32 0, metadata !1536, null}
!1536 = metadata !{i32 786443, metadata !1, metadata !1534, i32 1383, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1537 = metadata !{i32 1387, i32 0, metadata !1538, null}
!1538 = metadata !{i32 786443, metadata !1, metadata !1536, i32 1386, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1539 = metadata !{i32 1388, i32 0, metadata !1538, null}
!1540 = metadata !{i32 1389, i32 0, metadata !1538, null}
!1541 = metadata !{i32 1391, i32 0, metadata !1538, null}
!1542 = metadata !{i32 1392, i32 0, metadata !1538, null}
!1543 = metadata !{i32 1393, i32 0, metadata !1538, null}
!1544 = metadata !{i32 1394, i32 0, metadata !1538, null}
!1545 = metadata !{i32 1395, i32 0, metadata !1538, null}
!1546 = metadata !{i32 1415, i32 0, metadata !1494, null}
!1547 = metadata !{i32 1396, i32 0, metadata !1538, null}
!1548 = metadata !{i32 1397, i32 0, metadata !1536, null}
!1549 = metadata !{i32 1400, i32 0, metadata !1550, null}
!1550 = metadata !{i32 786443, metadata !1, metadata !1536, i32 1399, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1551 = metadata !{i32 1402, i32 0, metadata !1552, null}
!1552 = metadata !{i32 786443, metadata !1, metadata !1550, i32 1401, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1553 = metadata !{i32 1403, i32 0, metadata !1552, null}
!1554 = metadata !{i32 1404, i32 0, metadata !1552, null}
!1555 = metadata !{i32 1405, i32 0, metadata !1552, null}
!1556 = metadata !{i32 1409, i32 0, metadata !1557, null}
!1557 = metadata !{i32 786443, metadata !1, metadata !1550, i32 1407, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1558 = metadata !{i32 1410, i32 0, metadata !1557, null}
!1559 = metadata !{i32 1421, i32 0, metadata !79, null}
!1560 = metadata !{i32 1422, i32 0, metadata !79, null}
!1561 = metadata !{i32 1851, i32 0, metadata !150, null}
!1562 = metadata !{i32 1853, i32 0, metadata !150, null}
!1563 = metadata !{i32 786689, metadata !143, metadata !"QP", metadata !24, i32 16779046, metadata !36, i32 0, metadata !1564} ; [ DW_TAG_arg_variable ] [QP] [line 1830]
!1564 = metadata !{i32 1856, i32 0, metadata !150, null}
!1565 = metadata !{i32 1830, i32 0, metadata !143, metadata !1564}
!1566 = metadata !{double 6.250000e-01}
!1567 = metadata !{i32 786688, metadata !143, metadata !"Qstep", metadata !24, i32 1833, metadata !31, i32 0, metadata !1564} ; [ DW_TAG_auto_variable ] [Qstep] [line 1833]
!1568 = metadata !{i32 1836, i32 0, metadata !143, metadata !1564}
!1569 = metadata !{i32 786688, metadata !143, metadata !"i", metadata !24, i32 1832, metadata !36, i32 0, metadata !1564} ; [ DW_TAG_auto_variable ] [i] [line 1832]
!1570 = metadata !{i32 1837, i32 0, metadata !1571, metadata !1564}
!1571 = metadata !{i32 786443, metadata !1, metadata !143, i32 1837, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1572 = metadata !{i32 1838, i32 0, metadata !1571, metadata !1573}
!1573 = metadata !{i32 1858, i32 0, metadata !150, null}
!1574 = metadata !{i32 786688, metadata !143, metadata !"Qstep", metadata !24, i32 1833, metadata !31, i32 0, metadata !1573} ; [ DW_TAG_auto_variable ] [Qstep] [line 1833]
!1575 = metadata !{i32 1837, i32 0, metadata !1571, metadata !1573}
!1576 = metadata !{i32 786688, metadata !143, metadata !"i", metadata !24, i32 1832, metadata !36, i32 0, metadata !1573} ; [ DW_TAG_auto_variable ] [i] [line 1832]
!1577 = metadata !{i32 5}
!1578 = metadata !{i32 786689, metadata !143, metadata !"QP", metadata !24, i32 16779046, metadata !36, i32 0, metadata !1579} ; [ DW_TAG_arg_variable ] [QP] [line 1830]
!1579 = metadata !{i32 1861, i32 0, metadata !150, null}
!1580 = metadata !{i32 1830, i32 0, metadata !143, metadata !1579}
!1581 = metadata !{double 1.125000e+00}
!1582 = metadata !{i32 786688, metadata !143, metadata !"Qstep", metadata !24, i32 1833, metadata !31, i32 0, metadata !1579} ; [ DW_TAG_auto_variable ] [Qstep] [line 1833]
!1583 = metadata !{i32 1836, i32 0, metadata !143, metadata !1579}
!1584 = metadata !{i32 786688, metadata !143, metadata !"i", metadata !24, i32 1832, metadata !36, i32 0, metadata !1579} ; [ DW_TAG_auto_variable ] [i] [line 1832]
!1585 = metadata !{i32 1837, i32 0, metadata !1571, metadata !1579}
!1586 = metadata !{i32 1863, i32 0, metadata !1587, null}
!1587 = metadata !{i32 786443, metadata !1, metadata !150, i32 1862, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1588 = metadata !{i32 1864, i32 0, metadata !1587, null}
!1589 = metadata !{i32 1867, i32 0, metadata !150, null}
!1590 = metadata !{i32 1872, i32 0, metadata !150, null}
!1591 = metadata !{i32 1877, i32 0, metadata !150, null}
!1592 = metadata !{i32 1882, i32 0, metadata !150, null}
!1593 = metadata !{i32 1887, i32 0, metadata !150, null}
!1594 = metadata !{i32 1898, i32 0, metadata !150, null}
!1595 = metadata !{i32 1899, i32 0, metadata !150, null}
!1596 = metadata !{i32 1437, i32 0, metadata !91, null}
!1597 = metadata !{double 0.000000e+00}
!1598 = metadata !{i32 1439, i32 0, metadata !91, null}
!1599 = metadata !{i32 1441, i32 0, metadata !91, null}
!1600 = metadata !{i32 1444, i32 0, metadata !1601, null}
!1601 = metadata !{i32 786443, metadata !1, metadata !91, i32 1442, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1602 = metadata !{i32 786688, metadata !117, metadata !"TotalMAD", metadata !24, i32 1644, metadata !31, i32 0, metadata !1603} ; [ DW_TAG_auto_variable ] [TotalMAD] [line 1644]
!1603 = metadata !{i32 1446, i32 0, metadata !1604, null}
!1604 = metadata !{i32 786443, metadata !1, metadata !1601, i32 1445, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1605 = metadata !{i32 1646, i32 0, metadata !117, metadata !1603}
!1606 = metadata !{i32 786688, metadata !117, metadata !"i", metadata !24, i32 1645, metadata !36, i32 0, metadata !1603} ; [ DW_TAG_auto_variable ] [i] [line 1645]
!1607 = metadata !{i32 1647, i32 0, metadata !1608, metadata !1603}
!1608 = metadata !{i32 786443, metadata !1, metadata !117, i32 1647, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1609 = metadata !{i32 1648, i32 0, metadata !1608, metadata !1603}
!1610 = metadata !{i32 1649, i32 0, metadata !117, metadata !1603}
!1611 = metadata !{i32 1447, i32 0, metadata !1604, null}
!1612 = metadata !{i32 1448, i32 0, metadata !1604, null}
!1613 = metadata !{i32 1453, i32 0, metadata !1614, null}
!1614 = metadata !{i32 786443, metadata !1, metadata !1601, i32 1451, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1615 = metadata !{i32 1454, i32 0, metadata !1614, null}
!1616 = metadata !{i32 1456, i32 0, metadata !1614, null}
!1617 = metadata !{i32 1459, i32 0, metadata !1614, null}
!1618 = metadata !{i32 1463, i32 0, metadata !1614, null}
!1619 = metadata !{i32 1464, i32 0, metadata !1614, null}
!1620 = metadata !{i32 1466, i32 0, metadata !1621, null}
!1621 = metadata !{i32 786443, metadata !1, metadata !1614, i32 1465, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1622 = metadata !{i32 1468, i32 0, metadata !1621, null}
!1623 = metadata !{i32 1469, i32 0, metadata !1621, null}
!1624 = metadata !{i32 1471, i32 0, metadata !1621, null}
!1625 = metadata !{i32 1475, i32 0, metadata !1614, null}
!1626 = metadata !{i32 1477, i32 0, metadata !1614, null}
!1627 = metadata !{i32 1479, i32 0, metadata !1614, null}
!1628 = metadata !{i32 1481, i32 0, metadata !1614, null}
!1629 = metadata !{i32 1482, i32 0, metadata !1614, null}
!1630 = metadata !{i32 1484, i32 0, metadata !1614, null}
!1631 = metadata !{i32 1}
!1632 = metadata !{i32 1489, i32 0, metadata !1601, null}
!1633 = metadata !{i32 1491, i32 0, metadata !1601, null}
!1634 = metadata !{i32 19}
!1635 = metadata !{i32 1492, i32 0, metadata !1636, null}
!1636 = metadata !{i32 786443, metadata !1, metadata !1601, i32 1492, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1637 = metadata !{i32 1494, i32 0, metadata !1638, null}
!1638 = metadata !{i32 786443, metadata !1, metadata !1636, i32 1493, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1639 = metadata !{i32 1495, i32 0, metadata !1638, null}
!1640 = metadata !{i32 1496, i32 0, metadata !1638, null}
!1641 = metadata !{i32 1497, i32 0, metadata !1638, null}
!1642 = metadata !{i32 1488, i32 0, metadata !1601, null}
!1643 = metadata !{i32 1499, i32 0, metadata !1601, null}
!1644 = metadata !{i32 786689, metadata !143, metadata !"QP", metadata !24, i32 16779046, metadata !36, i32 0, metadata !1643} ; [ DW_TAG_arg_variable ] [QP] [line 1830]
!1645 = metadata !{i32 1830, i32 0, metadata !143, metadata !1643}
!1646 = metadata !{i32 1836, i32 0, metadata !143, metadata !1643}
!1647 = metadata !{i32 786688, metadata !143, metadata !"Qstep", metadata !24, i32 1833, metadata !31, i32 0, metadata !1643} ; [ DW_TAG_auto_variable ] [Qstep] [line 1833]
!1648 = metadata !{i32 786688, metadata !143, metadata !"i", metadata !24, i32 1832, metadata !36, i32 0, metadata !1643} ; [ DW_TAG_auto_variable ] [i] [line 1832]
!1649 = metadata !{i32 1837, i32 0, metadata !1571, metadata !1643}
!1650 = metadata !{i32 1838, i32 0, metadata !1571, metadata !1643}
!1651 = metadata !{i32 1501, i32 0, metadata !1601, null}
!1652 = metadata !{i32 1502, i32 0, metadata !1601, null}
!1653 = metadata !{i32 1505, i32 0, metadata !1601, null}
!1654 = metadata !{i32 1507, i32 0, metadata !1601, null}
!1655 = metadata !{i32 1508, i32 0, metadata !1601, null}
!1656 = metadata !{i32 1509, i32 0, metadata !1601, null}
!1657 = metadata !{i32 1510, i32 0, metadata !1601, null}
!1658 = metadata !{i32 1514, i32 0, metadata !1601, null}
!1659 = metadata !{i32 1516, i32 0, metadata !1601, null}
!1660 = metadata !{i32 1517, i32 0, metadata !1601, null}
!1661 = metadata !{i32 1518, i32 0, metadata !1601, null}
!1662 = metadata !{i32 1519, i32 0, metadata !1601, null}
!1663 = metadata !{i32 1522, i32 0, metadata !1601, null}
!1664 = metadata !{i32 1524, i32 0, metadata !1665, null}
!1665 = metadata !{i32 786443, metadata !1, metadata !1601, i32 1524, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1666 = metadata !{i32 1526, i32 0, metadata !1667, null}
!1667 = metadata !{i32 786443, metadata !1, metadata !1665, i32 1525, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1668 = metadata !{i32 1530, i32 0, metadata !1601, null}
!1669 = metadata !{i32 1532, i32 0, metadata !1601, null}
!1670 = metadata !{i32 1535, i32 0, metadata !1671, null}
!1671 = metadata !{i32 786443, metadata !1, metadata !1601, i32 1535, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1672 = metadata !{i32 1537, i32 0, metadata !1673, null}
!1673 = metadata !{i32 786443, metadata !1, metadata !1671, i32 1536, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1674 = metadata !{i32 1538, i32 0, metadata !1673, null}
!1675 = metadata !{i32 1540, i32 0, metadata !1601, null}
!1676 = metadata !{i32 1541, i32 0, metadata !1677, null}
!1677 = metadata !{i32 786443, metadata !1, metadata !1601, i32 1541, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1678 = metadata !{i32 1543, i32 0, metadata !1679, null}
!1679 = metadata !{i32 786443, metadata !1, metadata !1677, i32 1542, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1680 = metadata !{i32 1544, i32 0, metadata !1679, null}
!1681 = metadata !{i32 1547, i32 0, metadata !1601, null}
!1682 = metadata !{i32 1550, i32 0, metadata !1601, null}
!1683 = metadata !{i32 1552, i32 0, metadata !1601, null}
!1684 = metadata !{i32 1553, i32 0, metadata !1601, null}
!1685 = metadata !{i32 1554, i32 0, metadata !1601, null}
!1686 = metadata !{i32 1555, i32 0, metadata !1601, null}
!1687 = metadata !{i32 1557, i32 0, metadata !91, null}
!1688 = metadata !{i32 1830, i32 0, metadata !143, null}
!1689 = metadata !{i32 1836, i32 0, metadata !143, null}
!1690 = metadata !{i32 1837, i32 0, metadata !1571, null}
!1691 = metadata !{i32 1838, i32 0, metadata !1571, null}
!1692 = metadata !{i32 1840, i32 0, metadata !143, null}
!1693 = metadata !{i32 1566, i32 0, metadata !103, null}
!1694 = metadata !{i32 1568, i32 0, metadata !103, null}
!1695 = metadata !{i32 1571, i32 0, metadata !103, null}
!1696 = metadata !{i32 1573, i32 0, metadata !103, null}
!1697 = metadata !{i32 1575, i32 0, metadata !1698, null}
!1698 = metadata !{i32 786443, metadata !1, metadata !103, i32 1575, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1699 = metadata !{i32 1583, i32 0, metadata !103, null}
!1700 = metadata !{i32 1585, i32 0, metadata !1701, null}
!1701 = metadata !{i32 786443, metadata !1, metadata !103, i32 1585, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1702 = metadata !{i32 1577, i32 0, metadata !1703, null}
!1703 = metadata !{i32 786443, metadata !1, metadata !1698, i32 1576, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1704 = metadata !{i32 1590, i32 0, metadata !1705, null}
!1705 = metadata !{i32 786443, metadata !1, metadata !103, i32 1590, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1706 = metadata !{i32 1595, i32 0, metadata !1707, null}
!1707 = metadata !{i32 786443, metadata !1, metadata !1705, i32 1591, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1708 = metadata !{i32 1587, i32 0, metadata !1709, null}
!1709 = metadata !{i32 786443, metadata !1, metadata !1701, i32 1586, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1710 = metadata !{i32 1588, i32 0, metadata !1709, null}
!1711 = metadata !{i32 1592, i32 0, metadata !1707, null}
!1712 = metadata !{i32 1593, i32 0, metadata !1707, null}
!1713 = metadata !{i32 1594, i32 0, metadata !1707, null}
!1714 = metadata !{i32 1599, i32 0, metadata !103, null}
!1715 = metadata !{i32 1601, i32 0, metadata !1716, null}
!1716 = metadata !{i32 786443, metadata !1, metadata !1717, i32 1601, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1717 = metadata !{i32 786443, metadata !1, metadata !103, i32 1600, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1718 = metadata !{i32 1603, i32 0, metadata !1719, null}
!1719 = metadata !{i32 786443, metadata !1, metadata !1716, i32 1602, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1720 = metadata !{i32 1605, i32 0, metadata !1721, null}
!1721 = metadata !{i32 786443, metadata !1, metadata !1719, i32 1604, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1722 = metadata !{i32 1606, i32 0, metadata !1721, null}
!1723 = metadata !{i32 1607, i32 0, metadata !1721, null}
!1724 = metadata !{i32 1608, i32 0, metadata !1721, null}
!1725 = metadata !{i32 1609, i32 0, metadata !1721, null}
!1726 = metadata !{i32 1610, i32 0, metadata !1721, null}
!1727 = metadata !{i32 1611, i32 0, metadata !1721, null}
!1728 = metadata !{i32 1614, i32 0, metadata !1717, null}
!1729 = metadata !{i32 1615, i32 0, metadata !1717, null}
!1730 = metadata !{i32 1617, i32 0, metadata !1731, null}
!1731 = metadata !{i32 786443, metadata !1, metadata !1717, i32 1616, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1732 = metadata !{i32 1618, i32 0, metadata !1731, null}
!1733 = metadata !{i32 1619, i32 0, metadata !1731, null}
!1734 = metadata !{i32 1622, i32 0, metadata !1735, null}
!1735 = metadata !{i32 786443, metadata !1, metadata !1717, i32 1621, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1736 = metadata !{i32 1623, i32 0, metadata !1735, null}
!1737 = metadata !{i32 1627, i32 0, metadata !103, null}
!1738 = metadata !{i32 1629, i32 0, metadata !1739, null}
!1739 = metadata !{i32 786443, metadata !1, metadata !103, i32 1628, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1740 = metadata !{i32 1630, i32 0, metadata !1739, null}
!1741 = metadata !{i32 1631, i32 0, metadata !1739, null}
!1742 = metadata !{i32 1632, i32 0, metadata !103, null}
!1743 = metadata !{i32 1646, i32 0, metadata !117, null}
!1744 = metadata !{i32 1647, i32 0, metadata !1608, null}
!1745 = metadata !{i32 1648, i32 0, metadata !1608, null}
!1746 = metadata !{i32 1649, i32 0, metadata !117, null}
!1747 = metadata !{i32 1650, i32 0, metadata !117, null}
!1748 = metadata !{i32 1666, i32 0, metadata !121, null}
!1749 = metadata !{i32 1669, i32 0, metadata !121, null}
!1750 = metadata !{i32 1674, i32 0, metadata !1751, null}
!1751 = metadata !{i32 786443, metadata !1, metadata !121, i32 1670, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1752 = metadata !{i32 1678, i32 0, metadata !1751, null}
!1753 = metadata !{i32 1680, i32 0, metadata !1754, null}
!1754 = metadata !{i32 786443, metadata !1, metadata !1751, i32 1680, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1755 = metadata !{i32 1682, i32 0, metadata !1756, null}
!1756 = metadata !{i32 786443, metadata !1, metadata !1754, i32 1681, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1757 = metadata !{i32 1683, i32 0, metadata !1756, null}
!1758 = metadata !{i32 1684, i32 0, metadata !1756, null}
!1759 = metadata !{i32 1686, i32 0, metadata !1751, null}
!1760 = metadata !{i32 1687, i32 0, metadata !1751, null}
!1761 = metadata !{i32 1688, i32 0, metadata !1751, null}
!1762 = metadata !{i32 1689, i32 0, metadata !1751, null}
!1763 = metadata !{i32 1692, i32 0, metadata !1764, null}
!1764 = metadata !{i32 786443, metadata !1, metadata !1751, i32 1691, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1765 = metadata !{i32 1694, i32 0, metadata !1764, null}
!1766 = metadata !{i32 1696, i32 0, metadata !1764, null}
!1767 = metadata !{i32 1698, i32 0, metadata !1751, null}
!1768 = metadata !{i32 1699, i32 0, metadata !1751, null}
!1769 = metadata !{i32 1704, i32 0, metadata !1751, null}
!1770 = metadata !{i32 1706, i32 0, metadata !1751, null}
!1771 = metadata !{i32 1707, i32 0, metadata !1751, null}
!1772 = metadata !{i32 1708, i32 0, metadata !1751, null}
!1773 = metadata !{i32 1709, i32 0, metadata !1751, null}
!1774 = metadata !{i32 1711, i32 0, metadata !1751, null}
!1775 = metadata !{i32 1713, i32 0, metadata !1776, null}
!1776 = metadata !{i32 786443, metadata !1, metadata !1751, i32 1713, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1777 = metadata !{i32 1715, i32 0, metadata !1778, null}
!1778 = metadata !{i32 786443, metadata !1, metadata !1776, i32 1714, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1779 = metadata !{i32 1718, i32 0, metadata !1751, null}
!1780 = metadata !{i32 1719, i32 0, metadata !1751, null}
!1781 = metadata !{i32 1722, i32 0, metadata !1751, null}
!1782 = metadata !{i32 1726, i32 0, metadata !1783, null}
!1783 = metadata !{i32 786443, metadata !1, metadata !1751, i32 1726, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1784 = metadata !{i32 1728, i32 0, metadata !1785, null}
!1785 = metadata !{i32 786443, metadata !1, metadata !1783, i32 1727, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1786 = metadata !{i32 1729, i32 0, metadata !1785, null}
!1787 = metadata !{i32 1731, i32 0, metadata !1751, null}
!1788 = metadata !{i32 1732, i32 0, metadata !1789, null}
!1789 = metadata !{i32 786443, metadata !1, metadata !1751, i32 1732, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1790 = metadata !{i32 1734, i32 0, metadata !1791, null}
!1791 = metadata !{i32 786443, metadata !1, metadata !1789, i32 1733, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1792 = metadata !{i32 1735, i32 0, metadata !1791, null}
!1793 = metadata !{i32 1738, i32 0, metadata !1751, null}
!1794 = metadata !{i32 1741, i32 0, metadata !1751, null}
!1795 = metadata !{i32 1742, i32 0, metadata !1751, null}
!1796 = metadata !{i32 1743, i32 0, metadata !121, null}
!1797 = metadata !{i32 1753, i32 0, metadata !129, null}
!1798 = metadata !{i32 1755, i32 0, metadata !129, null}
!1799 = metadata !{i32 1758, i32 0, metadata !129, null}
!1800 = metadata !{i32 1760, i32 0, metadata !129, null}
!1801 = metadata !{i32 1762, i32 0, metadata !1802, null}
!1802 = metadata !{i32 786443, metadata !1, metadata !129, i32 1762, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1803 = metadata !{i32 1770, i32 0, metadata !129, null}
!1804 = metadata !{i32 1772, i32 0, metadata !1805, null}
!1805 = metadata !{i32 786443, metadata !1, metadata !129, i32 1772, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1806 = metadata !{i32 1764, i32 0, metadata !1807, null}
!1807 = metadata !{i32 786443, metadata !1, metadata !1802, i32 1763, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1808 = metadata !{i32 1778, i32 0, metadata !1809, null}
!1809 = metadata !{i32 786443, metadata !1, metadata !129, i32 1778, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1810 = metadata !{i32 1783, i32 0, metadata !1811, null}
!1811 = metadata !{i32 786443, metadata !1, metadata !1809, i32 1779, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1812 = metadata !{i32 1774, i32 0, metadata !1813, null}
!1813 = metadata !{i32 786443, metadata !1, metadata !1805, i32 1773, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1814 = metadata !{i32 1775, i32 0, metadata !1813, null}
!1815 = metadata !{i32 1780, i32 0, metadata !1811, null}
!1816 = metadata !{i32 1781, i32 0, metadata !1811, null}
!1817 = metadata !{i32 1782, i32 0, metadata !1811, null}
!1818 = metadata !{i32 1787, i32 0, metadata !129, null}
!1819 = metadata !{i32 1789, i32 0, metadata !1820, null}
!1820 = metadata !{i32 786443, metadata !1, metadata !1821, i32 1789, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1821 = metadata !{i32 786443, metadata !1, metadata !129, i32 1788, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1822 = metadata !{i32 1791, i32 0, metadata !1823, null}
!1823 = metadata !{i32 786443, metadata !1, metadata !1820, i32 1790, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1824 = metadata !{i32 1793, i32 0, metadata !1825, null}
!1825 = metadata !{i32 786443, metadata !1, metadata !1823, i32 1792, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1826 = metadata !{i32 1794, i32 0, metadata !1825, null}
!1827 = metadata !{i32 1795, i32 0, metadata !1825, null}
!1828 = metadata !{i32 1796, i32 0, metadata !1825, null}
!1829 = metadata !{i32 1797, i32 0, metadata !1825, null}
!1830 = metadata !{i32 1798, i32 0, metadata !1825, null}
!1831 = metadata !{i32 1799, i32 0, metadata !1825, null}
!1832 = metadata !{i32 1802, i32 0, metadata !1821, null}
!1833 = metadata !{i32 1803, i32 0, metadata !1821, null}
!1834 = metadata !{i32 1805, i32 0, metadata !1835, null}
!1835 = metadata !{i32 786443, metadata !1, metadata !1821, i32 1804, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1836 = metadata !{i32 1806, i32 0, metadata !1835, null}
!1837 = metadata !{i32 1807, i32 0, metadata !1835, null}
!1838 = metadata !{i32 1810, i32 0, metadata !1839, null}
!1839 = metadata !{i32 786443, metadata !1, metadata !1821, i32 1809, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1840 = metadata !{i32 1811, i32 0, metadata !1839, null}
!1841 = metadata !{i32 1815, i32 0, metadata !129, null}
!1842 = metadata !{i32 1817, i32 0, metadata !1843, null}
!1843 = metadata !{i32 786443, metadata !1, metadata !129, i32 1816, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c]
!1844 = metadata !{i32 1818, i32 0, metadata !1843, null}
!1845 = metadata !{i32 1819, i32 0, metadata !1843, null}
!1846 = metadata !{i32 1820, i32 0, metadata !129, null}
