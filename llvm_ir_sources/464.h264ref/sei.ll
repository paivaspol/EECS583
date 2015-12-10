; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sei_struct = type { i32, i32, i8, i8* }
%struct.spare_picture_struct = type { i32, i32, i32, %struct.Bitstream* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.subseq_information_struct = type { i32, i32, i32, i32, i32, %struct.Bitstream* }
%struct.subseq_layer_information_struct = type { [2 x i16], [2 x i16], [8 x i8], i32, i32 }
%struct.subseq_char_information_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], %struct.Bitstream*, i32 }
%struct.scene_information_struct = type { i32, i32, i32, %struct.Bitstream*, i32 }
%struct.panscanrect_information_struct = type { i32, i32, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.user_data_unregistered_information_struct = type { i8*, i32, %struct.Bitstream*, i32 }
%struct.user_data_registered_itu_t_t35_information_struct = type { i8*, i32, i32, i32, %struct.Bitstream*, i32 }
%struct.randomaccess_information_struct = type { i8, i8, i8, %struct.Bitstream*, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@seiHasTemporal_reference = global i32 0, align 4
@seiHasClock_timestamp = global i32 0, align 4
@seiHasPanscan_rect = global i32 0, align 4
@seiHasBuffering_period = global i32 0, align 4
@seiHasHrd_picture = global i32 0, align 4
@seiHasFiller_payload = global i32 0, align 4
@seiHasUser_data_registered_itu_t_t35 = global i32 0, align 4
@seiHasUser_data_unregistered = global i32 0, align 4
@seiHasRandom_access_point = global i32 0, align 4
@seiHasRef_pic_buffer_management_repetition = global i32 0, align 4
@seiHasSpare_picture = global i32 0, align 4
@seiHasSceneInformation = global i32 0, align 4
@seiHasSubseq_information = global i32 0, align 4
@seiHasSubseq_layer_characteristics = global i32 0, align 4
@seiHasSubseq_characteristics = global i32 0, align 4
@sei_message = common global [2 x %struct.sei_struct] zeroinitializer, align 16
@.str = private unnamed_addr constant [37 x i8] c"InitSEIMessages: sei_message[i].data\00", align 1
@seiSparePicturePayload = common global %struct.spare_picture_struct zeroinitializer, align 8
@input = external global %struct.InputParameters*
@img = external global %struct.ImageParameters*
@seiHasSubseqInfo = global i32 0, align 4
@seiHasSubseqLayerInfo = global i32 0, align 4
@seiHasSubseqChar = global i32 0, align 4
@seiHasPanScanRectInfo = global i32 0, align 4
@seiHasUser_data_unregistered_info = common global i32 0, align 4
@seiHasUser_data_registered_itu_t_t35_info = common global i32 0, align 4
@seiHasRandomAccess_info = common global i32 0, align 4
@.str1 = private unnamed_addr constant [59 x i8] c"payload_type > SEI_ZERO && payload_type < SEI_MAX_ELEMENTS\00", align 1
@.str2 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c\00", align 1
@__PRETTY_FUNCTION__.write_sei_message = private unnamed_addr constant [46 x i8] c"void write_sei_message(int, byte *, int, int)\00", align 1
@seiHasSparePicture = global i32 0, align 4
@.str3 = private unnamed_addr constant [46 x i8] c"InitSparePicture: seiSparePicturePayload.data\00", align 1
@.str4 = private unnamed_addr constant [60 x i8] c"InitSparePicture: seiSparePicturePayload.data->streamBuffer\00", align 1
@.str5 = private unnamed_addr constant [25 x i8] c"FinalizeSpareMBMap: dest\00", align 1
@.str6 = private unnamed_addr constant [39 x i8] c"FinalizeSpareMBMap: dest->streamBuffer\00", align 1
@InitSubseqInfo.id = internal unnamed_addr global i16 0, align 2
@seiSubseqInfo = common global [2 x %struct.subseq_information_struct] zeroinitializer, align 16
@.str7 = private unnamed_addr constant [46 x i8] c"InitSubseqInfo: seiSubseqInfo[currLayer].data\00", align 1
@.str8 = private unnamed_addr constant [60 x i8] c"InitSubseqInfo: seiSubseqInfo[currLayer].data->streamBuffer\00", align 1
@start_frame_no_in_this_IGOP = external global i32
@seiSubseqLayerInfo = common global %struct.subseq_layer_information_struct zeroinitializer, align 4
@seiSubseqChar = common global %struct.subseq_char_information_struct zeroinitializer, align 8
@.str9 = private unnamed_addr constant [35 x i8] c"InitSubseqChar: seiSubseqChar.data\00", align 1
@.str10 = private unnamed_addr constant [49 x i8] c"InitSubseqChar: seiSubseqChar.data->streamBuffer\00", align 1
@seiSceneInformation = common global %struct.scene_information_struct zeroinitializer, align 8
@.str11 = private unnamed_addr constant [47 x i8] c"InitSceneInformation: seiSceneInformation.data\00", align 1
@.str12 = private unnamed_addr constant [61 x i8] c"InitSceneInformation: seiSceneInformation.data->streamBuffer\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"sceneID < 256\00", align 1
@__PRETTY_FUNCTION__.UpdateSceneInformation = private unnamed_addr constant [52 x i8] c"void UpdateSceneInformation(Boolean, int, int, int)\00", align 1
@.str14 = private unnamed_addr constant [20 x i8] c"sceneTransType <= 6\00", align 1
@.str15 = private unnamed_addr constant [20 x i8] c"secondSceneID < 256\00", align 1
@seiPanScanRectInfo = common global %struct.panscanrect_information_struct zeroinitializer, align 8
@.str16 = private unnamed_addr constant [45 x i8] c"InitPanScanRectInfo: seiPanScanRectInfo.data\00", align 1
@.str17 = private unnamed_addr constant [59 x i8] c"InitPanScanRectInfo: seiPanScanRectInfo.data->streamBuffer\00", align 1
@seiUser_data_unregistered = common global %struct.user_data_unregistered_information_struct zeroinitializer, align 8
@.str18 = private unnamed_addr constant [59 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.data\00", align 1
@.str19 = private unnamed_addr constant [73 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.data->streamBuffer\00", align 1
@.str20 = private unnamed_addr constant [59 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.byte\00", align 1
@seiUser_data_registered_itu_t_t35 = common global %struct.user_data_registered_itu_t_t35_information_struct zeroinitializer, align 8
@.str21 = private unnamed_addr constant [67 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data\00", align 1
@.str22 = private unnamed_addr constant [81 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data->streamBuffer\00", align 1
@.str23 = private unnamed_addr constant [67 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.byte\00", align 1
@seiRandomAccess = common global %struct.randomaccess_information_struct zeroinitializer, align 8
@.str24 = private unnamed_addr constant [39 x i8] c"InitRandomAccess: seiRandomAccess.data\00", align 1
@.str25 = private unnamed_addr constant [53 x i8] c"InitRandomAccess: seiRandomAccess.data->streamBuffer\00", align 1
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
@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8

; Function Attrs: nounwind optsize uwtable
define void @InitSEIMessages() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !67), !dbg !922
  br label %for.body, !dbg !922

for.body:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %call = tail call noalias i8* @malloc(i64 65496) #8, !dbg !924
  %data = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %indvars.iv, i32 3, !dbg !924
  store i8* %call, i8** %data, align 8, !dbg !924, !tbaa !926
  %cmp4 = icmp eq i8* %call, null, !dbg !929
  br i1 %cmp4, label %if.then, label %if.end, !dbg !929

if.then:                                          ; preds = %for.body
  tail call void @no_mem_exit(i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0)) #8, !dbg !929
  %.pre = load i8** %data, align 8, !dbg !930, !tbaa !926
  br label %if.end, !dbg !929

if.end:                                           ; preds = %if.then, %for.body
  %0 = phi i8* [ %.pre, %if.then ], [ %call, %for.body ]
  %subPacketType = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %indvars.iv, i32 2, !dbg !932
  store i8 5, i8* %subPacketType, align 8, !dbg !932, !tbaa !927
  tail call void @llvm.dbg.value(metadata !933, i64 0, metadata !934) #6, !dbg !935
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 65496, i32 1, i1 false) #6, !dbg !930
  %payloadSize.i = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %indvars.iv, i32 1, !dbg !936
  store i32 0, i32* %payloadSize.i, align 4, !dbg !936, !tbaa !937
  %available.i = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %indvars.iv, i32 0, !dbg !938
  store i32 0, i32* %available.i, align 8, !dbg !938, !tbaa !927
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !922
  %lftr.wideiv16 = trunc i64 %indvars.iv.next to i32, !dbg !922
  %exitcond17 = icmp eq i32 %lftr.wideiv16, 2, !dbg !922
  br i1 %exitcond17, label %for.end, label %for.body, !dbg !922

for.end:                                          ; preds = %if.end
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !939, !tbaa !926
  tail call void @InitSparePicture() #9, !dbg !940
  tail call void @InitSubseqChar() #9, !dbg !941
  %1 = load %struct.InputParameters** @input, align 8, !dbg !942, !tbaa !926
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 99, !dbg !942
  %2 = load i32* %NumFramesInELSubSeq, align 4, !dbg !942, !tbaa !937
  %cmp7 = icmp eq i32 %2, 0, !dbg !942
  br i1 %cmp7, label %if.end9, label %if.then8, !dbg !942

if.then8:                                         ; preds = %for.end
  store i32 1, i32* @seiHasSubseqLayerInfo, align 4, !dbg !943, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !dbg !945, !tbaa !937
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !946), !dbg !947
  br label %for.body.i, !dbg !947

for.body.i:                                       ; preds = %for.body.i, %if.then8
  %indvars.iv.i = phi i64 [ 0, %if.then8 ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 0, i64 %indvars.iv.i, !dbg !949
  store i16 0, i16* %arrayidx.i, align 2, !dbg !949, !tbaa !951
  %arrayidx2.i = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 1, i64 %indvars.iv.i, !dbg !952
  store i16 0, i16* %arrayidx2.i, align 2, !dbg !952, !tbaa !951
  %3 = load i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !dbg !953, !tbaa !937
  %inc.i = add nsw i32 %3, 1, !dbg !953
  store i32 %inc.i, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !dbg !953, !tbaa !937
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !947
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !947
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !947
  br i1 %exitcond, label %if.end9, label %for.body.i, !dbg !947

if.end9:                                          ; preds = %for.body.i, %for.end
  tail call void @InitSceneInformation() #9, !dbg !954
  tail call void @InitPanScanRectInfo() #9, !dbg !955
  tail call void @InitUser_data_unregistered() #9, !dbg !956
  tail call void @InitUser_data_registered_itu_t_t35() #9, !dbg !957
  tail call void @InitRandomAccess() #9, !dbg !958
  ret void, !dbg !959
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @clear_sei_message(i32 %id) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !98), !dbg !960
  %idxprom = sext i32 %id to i64, !dbg !961
  %data = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 3, !dbg !961
  %0 = load i8** %data, align 8, !dbg !961, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 65496, i32 1, i1 false), !dbg !961
  %payloadSize = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 1, !dbg !962
  store i32 0, i32* %payloadSize, align 4, !dbg !962, !tbaa !937
  %available = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 0, !dbg !963
  store i32 0, i32* %available, align 8, !dbg !963, !tbaa !927
  ret void, !dbg !964
}

; Function Attrs: nounwind optsize uwtable
define void @CloseSEIMessages() #0 {
entry:
  tail call void @CloseSubseqChar() #9, !dbg !965
  tail call void @CloseSparePicture() #9, !dbg !966
  tail call void @CloseSceneInformation() #9, !dbg !967
  tail call void @ClosePanScanRectInfo() #9, !dbg !968
  tail call void @CloseUser_data_unregistered() #9, !dbg !969
  tail call void @CloseUser_data_registered_itu_t_t35() #9, !dbg !970
  tail call void @CloseRandomAccess() #9, !dbg !971
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !71), !dbg !972
  br label %for.body, !dbg !972

for.body:                                         ; preds = %if.end6, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end6 ]
  %data = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %indvars.iv, i32 3, !dbg !974
  %0 = load i8** %data, align 8, !dbg !974, !tbaa !926
  %tobool = icmp eq i8* %0, null, !dbg !974
  br i1 %tobool, label %if.end6, label %if.then2, !dbg !974

if.then2:                                         ; preds = %for.body
  tail call void @free(i8* %0) #8, !dbg !974
  br label %if.end6, !dbg !974

if.end6:                                          ; preds = %for.body, %if.then2
  store i8* null, i8** %data, align 8, !dbg !976, !tbaa !926
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !972
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !972
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !972
  br i1 %exitcond, label %for.end, label %for.body, !dbg !972

for.end:                                          ; preds = %if.end6
  ret void, !dbg !977
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define i32 @HaveAggregationSEI() #4 {
entry:
  %0 = load i32* getelementptr inbounds ([2 x %struct.sei_struct]* @sei_message, i64 0, i64 1, i32 0), align 8, !dbg !978, !tbaa !927
  %tobool = icmp eq i32 %0, 0, !dbg !978
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !978

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !978, !tbaa !926
  %type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6, !dbg !978
  %2 = load i32* %type, align 4, !dbg !978, !tbaa !937
  %cmp = icmp eq i32 %2, 1, !dbg !978
  %3 = load i32* @seiHasSubseqInfo, align 4, !dbg !979, !tbaa !927
  %tobool1 = icmp eq i32 %3, 0, !dbg !979
  %or.cond = and i1 %cmp, %tobool1, !dbg !978
  br i1 %or.cond, label %if.end3, label %return, !dbg !978

if.end:                                           ; preds = %entry
  %.old = load i32* @seiHasSubseqInfo, align 4, !dbg !979, !tbaa !927
  %tobool1.old = icmp eq i32 %.old, 0, !dbg !979
  br i1 %tobool1.old, label %if.end3, label %return, !dbg !979

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %4 = load i32* @seiHasSubseqLayerInfo, align 4, !dbg !980, !tbaa !927
  %tobool4 = icmp eq i32 %4, 0, !dbg !980
  br i1 %tobool4, label %if.end8, label %land.lhs.true5, !dbg !980

land.lhs.true5:                                   ; preds = %if.end3
  %5 = load %struct.ImageParameters** @img, align 8, !dbg !980, !tbaa !926
  %number = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 0, !dbg !980
  %6 = load i32* %number, align 4, !dbg !980, !tbaa !937
  %cmp6 = icmp ne i32 %6, 0, !dbg !980
  %7 = load i32* @seiHasSubseqChar, align 4, !dbg !981, !tbaa !927
  %tobool9 = icmp eq i32 %7, 0, !dbg !981
  %or.cond28 = and i1 %cmp6, %tobool9, !dbg !980
  %8 = load i32* @seiHasSceneInformation, align 4, !dbg !982, !tbaa !927
  %tobool12 = icmp eq i32 %8, 0, !dbg !982
  %or.cond30 = and i1 %or.cond28, %tobool12, !dbg !980
  %.old33 = load i32* @seiHasPanScanRectInfo, align 4, !dbg !983, !tbaa !927
  %tobool15.old = icmp eq i32 %.old33, 0, !dbg !983
  %or.cond36 = and i1 %or.cond30, %tobool15.old, !dbg !980
  %9 = load i32* @seiHasUser_data_unregistered_info, align 4, !dbg !984, !tbaa !927
  %tobool18 = icmp eq i32 %9, 0, !dbg !984
  %or.cond38 = and i1 %or.cond36, %tobool18, !dbg !980
  %.old41 = load i32* @seiHasUser_data_registered_itu_t_t35_info, align 4, !dbg !985, !tbaa !927
  %tobool21.old = icmp eq i32 %.old41, 0, !dbg !985
  %or.cond44 = and i1 %or.cond38, %tobool21.old, !dbg !980
  br i1 %or.cond44, label %if.end23, label %return, !dbg !980

if.end8:                                          ; preds = %if.end3
  %.old27 = load i32* @seiHasSubseqChar, align 4, !dbg !981, !tbaa !927
  %.old29 = load i32* @seiHasSceneInformation, align 4, !dbg !982, !tbaa !927
  %10 = or i32 %.old29, %.old27, !dbg !981
  %11 = load i32* @seiHasPanScanRectInfo, align 4, !dbg !983, !tbaa !927
  %12 = or i32 %10, %11, !dbg !981
  %.old37 = load i32* @seiHasUser_data_unregistered_info, align 4, !dbg !984, !tbaa !927
  %13 = or i32 %12, %.old37, !dbg !981
  %14 = load i32* @seiHasUser_data_registered_itu_t_t35_info, align 4, !dbg !985, !tbaa !927
  %15 = or i32 %13, %14, !dbg !981
  %16 = icmp eq i32 %15, 0, !dbg !981
  br i1 %16, label %if.end23, label %return, !dbg !981

if.end23:                                         ; preds = %land.lhs.true5, %if.end8
  %17 = load i32* @seiHasRandomAccess_info, align 4, !dbg !986, !tbaa !927
  %not.tobool24 = icmp ne i32 %17, 0, !dbg !987
  %. = zext i1 %not.tobool24 to i32, !dbg !987
  br label %return, !dbg !987

return:                                           ; preds = %land.lhs.true5, %if.end23, %if.end8, %if.end, %land.lhs.true
  %retval.0 = phi i32 [ 1, %land.lhs.true ], [ 1, %if.end ], [ 1, %land.lhs.true5 ], [ 1, %if.end8 ], [ %., %if.end23 ]
  ret i32 %retval.0, !dbg !987
}

; Function Attrs: nounwind optsize uwtable
define void @write_sei_message(i32 %id, i8* nocapture %payload, i32 %payload_size, i32 %payload_type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !83), !dbg !988
  tail call void @llvm.dbg.value(metadata !{i8* %payload}, i64 0, metadata !84), !dbg !988
  tail call void @llvm.dbg.value(metadata !{i32 %payload_size}, i64 0, metadata !85), !dbg !988
  tail call void @llvm.dbg.value(metadata !{i32 %payload_type}, i64 0, metadata !86), !dbg !988
  %payload_type.off = add i32 %payload_type, -1, !dbg !989
  %0 = icmp ult i32 %payload_type.off, 15, !dbg !989
  br i1 %0, label %cond.end.while.end_crit_edge, label %cond.false, !dbg !989

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str2, i64 0, i64 0), i32 162, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.write_sei_message, i64 0, i64 0)) #10, !dbg !989
  unreachable, !dbg !989

cond.end.while.end_crit_edge:                     ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %payload_type}, i64 0, metadata !88), !dbg !990
  tail call void @llvm.dbg.value(metadata !{i32 %payload_size}, i64 0, metadata !89), !dbg !991
  %idxprom = sext i32 %id to i64, !dbg !992
  %payloadSize = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 1, !dbg !992
  %1 = load i32* %payloadSize, align 4, !dbg !992, !tbaa !937
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !87), !dbg !992
  %data11.pre = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 3, !dbg !993
  %conv = trunc i32 %payload_type to i8, !dbg !993
  %idxprom8 = sext i32 %1 to i64, !dbg !993
  %2 = load i8** %data11.pre, align 8, !dbg !993, !tbaa !926
  %arrayidx12 = getelementptr inbounds i8* %2, i64 %idxprom8, !dbg !993
  store i8 %conv, i8* %arrayidx12, align 1, !dbg !993, !tbaa !927
  %offset.159 = add i32 %1, 1, !dbg !993
  %cmp1460 = icmp sgt i32 %payload_size, 255, !dbg !994
  br i1 %cmp1460, label %while.body16.lr.ph, label %while.end24, !dbg !994

while.body16.lr.ph:                               ; preds = %cond.end.while.end_crit_edge
  %3 = sext i32 %offset.159 to i64
  %4 = add i32 %payload_size, -256, !dbg !994
  %5 = udiv i32 %4, 255, !dbg !994
  %6 = add i32 %1, %5, !dbg !994
  %7 = add i32 %payload_size, -255, !dbg !994
  %8 = mul i32 %5, -255, !dbg !994
  %9 = add i32 %7, %8, !dbg !994
  br label %while.body16, !dbg !994

while.body16:                                     ; preds = %while.body16.lr.ph, %while.body16
  %indvars.iv = phi i64 [ %3, %while.body16.lr.ph ], [ %indvars.iv.next, %while.body16 ]
  %size.061 = phi i32 [ %payload_size, %while.body16.lr.ph ], [ %sub23, %while.body16 ]
  %10 = load i8** %data11.pre, align 8, !dbg !995, !tbaa !926
  %arrayidx22 = getelementptr inbounds i8* %10, i64 %indvars.iv, !dbg !995
  store i8 -1, i8* %arrayidx22, align 1, !dbg !995, !tbaa !927
  %sub23 = add nsw i32 %size.061, -255, !dbg !997
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !89), !dbg !997
  %cmp14 = icmp sgt i32 %sub23, 255, !dbg !994
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !994
  br i1 %cmp14, label %while.body16, label %while.cond13.while.end24_crit_edge, !dbg !994

while.cond13.while.end24_crit_edge:               ; preds = %while.body16
  %11 = add i32 %6, 2, !dbg !994
  %12 = add i32 %6, 1, !dbg !994
  br label %while.end24, !dbg !994

while.end24:                                      ; preds = %while.cond13.while.end24_crit_edge, %cond.end.while.end_crit_edge
  %offset.1.lcssa = phi i32 [ %11, %while.cond13.while.end24_crit_edge ], [ %offset.159, %cond.end.while.end_crit_edge ]
  %size.0.lcssa = phi i32 [ %9, %while.cond13.while.end24_crit_edge ], [ %payload_size, %cond.end.while.end_crit_edge ]
  %offset.1.in.lcssa = phi i32 [ %12, %while.cond13.while.end24_crit_edge ], [ %1, %cond.end.while.end_crit_edge ]
  %conv25 = trunc i32 %size.0.lcssa to i8, !dbg !998
  %inc26 = add nsw i32 %offset.1.in.lcssa, 2, !dbg !998
  tail call void @llvm.dbg.value(metadata !{i32 %inc26}, i64 0, metadata !87), !dbg !998
  %idxprom27 = sext i32 %offset.1.lcssa to i64, !dbg !998
  %13 = load i8** %data11.pre, align 8, !dbg !998, !tbaa !926
  %arrayidx31 = getelementptr inbounds i8* %13, i64 %idxprom27, !dbg !998
  store i8 %conv25, i8* %arrayidx31, align 1, !dbg !998, !tbaa !927
  %14 = load i8** %data11.pre, align 8, !dbg !999, !tbaa !926
  %idx.ext = sext i32 %inc26 to i64, !dbg !999
  %add.ptr = getelementptr inbounds i8* %14, i64 %idx.ext, !dbg !999
  %conv35 = sext i32 %payload_size to i64, !dbg !999
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %payload, i64 %conv35, i32 1, i1 false), !dbg !999
  %add = add nsw i32 %inc26, %payload_size, !dbg !1000
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !87), !dbg !1000
  store i32 %add, i32* %payloadSize, align 4, !dbg !1001, !tbaa !937
  ret void, !dbg !1002
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #6

; Function Attrs: nounwind optsize uwtable
define void @finalize_sei_message(i32 %id) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !94), !dbg !1003
  %idxprom = sext i32 %id to i64, !dbg !1004
  %payloadSize = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 1, !dbg !1004
  %0 = load i32* %payloadSize, align 4, !dbg !1004, !tbaa !937
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !95), !dbg !1004
  %idxprom1 = sext i32 %0 to i64, !dbg !1005
  %data = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 3, !dbg !1005
  %1 = load i8** %data, align 8, !dbg !1005, !tbaa !926
  %arrayidx4 = getelementptr inbounds i8* %1, i64 %idxprom1, !dbg !1005
  store i8 -128, i8* %arrayidx4, align 1, !dbg !1005, !tbaa !927
  %2 = load i32* %payloadSize, align 4, !dbg !1006, !tbaa !937
  %inc = add nsw i32 %2, 1, !dbg !1006
  store i32 %inc, i32* %payloadSize, align 4, !dbg !1006, !tbaa !937
  %available = getelementptr inbounds [2 x %struct.sei_struct]* @sei_message, i64 0, i64 %idxprom, i32 0, !dbg !1007
  store i32 1, i32* %available, align 8, !dbg !1007, !tbaa !927
  ret void, !dbg !1008
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind optsize uwtable
define void @AppendTmpbits2Buf(%struct.Bitstream* nocapture %dest, %struct.Bitstream* nocapture %source) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %dest}, i64 0, metadata !118), !dbg !1009
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %source}, i64 0, metadata !119), !dbg !1009
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !120), !dbg !1010
  %byte_pos = getelementptr inbounds %struct.Bitstream* %source, i64 0, i32 0, !dbg !1010
  %0 = load i32* %byte_pos, align 4, !dbg !1010, !tbaa !937
  %cmp113 = icmp sgt i32 %0, 0, !dbg !1010
  br i1 %cmp113, label %for.cond1.preheader.lr.ph, label %for.end27, !dbg !1010

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %byte_buf = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 2, !dbg !1012
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %source, i64 0, i32 9, !dbg !1016
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 1, !dbg !1017
  %byte_pos18 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 0, !dbg !1018
  %streamBuffer20 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 9, !dbg !1018
  %.pre116.pre = load i8* %byte_buf, align 1, !dbg !1012, !tbaa !927
  br label %for.cond1.preheader, !dbg !1010

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc25
  %.pre116 = phi i8 [ %.pre116.pre, %for.cond1.preheader.lr.ph ], [ %8, %for.inc25 ]
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next, %for.inc25 ]
  br label %for.body3, !dbg !1020

for.body3:                                        ; preds = %for.inc, %for.cond1.preheader
  %1 = phi i8 [ %.pre116, %for.cond1.preheader ], [ %8, %for.inc ], !dbg !1012
  %mask.0112 = phi i32 [ 128, %for.cond1.preheader ], [ %shr107, %for.inc ]
  %j.0111 = phi i32 [ 0, %for.cond1.preheader ], [ %inc24, %for.inc ]
  %shl = shl i8 %1, 1, !dbg !1012
  store i8 %shl, i8* %byte_buf, align 1, !dbg !1012, !tbaa !927
  %2 = load i8** %streamBuffer, align 8, !dbg !1016, !tbaa !926
  %arrayidx = getelementptr inbounds i8* %2, i64 %indvars.iv, !dbg !1016
  %3 = load i8* %arrayidx, align 1, !dbg !1016, !tbaa !927
  %conv5 = zext i8 %3 to i32, !dbg !1016
  %and = and i32 %conv5, %mask.0112, !dbg !1016
  %tobool = icmp eq i32 %and, 0, !dbg !1016
  br i1 %tobool, label %if.end, label %if.then, !dbg !1016

if.then:                                          ; preds = %for.body3
  %or = or i8 %shl, 1, !dbg !1021
  store i8 %or, i8* %byte_buf, align 1, !dbg !1021, !tbaa !927
  br label %if.end, !dbg !1021

if.end:                                           ; preds = %for.body3, %if.then
  %4 = phi i8 [ %or, %if.then ], [ %shl, %for.body3 ]
  %5 = load i32* %bits_to_go, align 4, !dbg !1017, !tbaa !937
  %dec = add nsw i32 %5, -1, !dbg !1017
  store i32 %dec, i32* %bits_to_go, align 4, !dbg !1017, !tbaa !937
  %shr107 = lshr i32 %mask.0112, 1, !dbg !1022
  %cmp13 = icmp eq i32 %dec, 0, !dbg !1023
  br i1 %cmp13, label %if.then15, label %for.inc, !dbg !1023

if.then15:                                        ; preds = %if.end
  store i32 8, i32* %bits_to_go, align 4, !dbg !1024, !tbaa !937
  %6 = load i32* %byte_pos18, align 4, !dbg !1018, !tbaa !937
  %inc = add nsw i32 %6, 1, !dbg !1018
  store i32 %inc, i32* %byte_pos18, align 4, !dbg !1018, !tbaa !937
  %idxprom19 = sext i32 %6 to i64, !dbg !1018
  %7 = load i8** %streamBuffer20, align 8, !dbg !1018, !tbaa !926
  %arrayidx21 = getelementptr inbounds i8* %7, i64 %idxprom19, !dbg !1018
  store i8 %4, i8* %arrayidx21, align 1, !dbg !1018, !tbaa !927
  store i8 0, i8* %byte_buf, align 1, !dbg !1025, !tbaa !927
  br label %for.inc, !dbg !1026

for.inc:                                          ; preds = %if.end, %if.then15
  %8 = phi i8 [ %4, %if.end ], [ 0, %if.then15 ]
  %inc24 = add nsw i32 %j.0111, 1, !dbg !1020
  tail call void @llvm.dbg.value(metadata !{i32 %inc24}, i64 0, metadata !121), !dbg !1020
  %exitcond115 = icmp eq i32 %inc24, 8, !dbg !1020
  br i1 %exitcond115, label %for.inc25, label %for.body3, !dbg !1020

for.inc25:                                        ; preds = %for.inc
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1010
  %9 = load i32* %byte_pos, align 4, !dbg !1010, !tbaa !937
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !1010
  %cmp = icmp slt i32 %10, %9, !dbg !1010
  br i1 %cmp, label %for.cond1.preheader, label %for.end27, !dbg !1010

for.end27:                                        ; preds = %for.inc25, %entry
  %bits_to_go28 = getelementptr inbounds %struct.Bitstream* %source, i64 0, i32 1, !dbg !1027
  %11 = load i32* %bits_to_go28, align 4, !dbg !1027, !tbaa !937
  %sub = sub i32 8, %11, !dbg !1027
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !123), !dbg !1027
  %cmp29 = icmp sgt i32 %sub, 0, !dbg !1028
  br i1 %cmp29, label %for.body38.lr.ph, label %if.end75, !dbg !1028

for.body38.lr.ph:                                 ; preds = %for.end27
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !121), !dbg !1029
  %sub32 = add nsw i32 %sub, -1, !dbg !1032
  %shl33 = shl i32 1, %sub32, !dbg !1032
  %byte_buf39 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 2, !dbg !1033
  %byte_buf43 = getelementptr inbounds %struct.Bitstream* %source, i64 0, i32 2, !dbg !1035
  %bits_to_go54 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 1, !dbg !1036
  %byte_pos65 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 0, !dbg !1037
  %streamBuffer68 = getelementptr inbounds %struct.Bitstream* %dest, i64 0, i32 9, !dbg !1037
  %.pre = load i8* %byte_buf39, align 1, !dbg !1033, !tbaa !927
  br label %for.body38, !dbg !1029

for.body38:                                       ; preds = %for.inc72, %for.body38.lr.ph
  %12 = phi i8 [ %.pre, %for.body38.lr.ph ], [ %18, %for.inc72 ], !dbg !1033
  %mask.1.in110 = phi i32 [ %shl33, %for.body38.lr.ph ], [ %shr57106, %for.inc72 ]
  %j.1109 = phi i32 [ 0, %for.body38.lr.ph ], [ %inc73, %for.inc72 ]
  %shl41 = shl i8 %12, 1, !dbg !1033
  store i8 %shl41, i8* %byte_buf39, align 1, !dbg !1033, !tbaa !927
  %13 = load i8* %byte_buf43, align 1, !dbg !1035, !tbaa !927
  %conv44 = zext i8 %13 to i32, !dbg !1035
  %conv45 = and i32 %mask.1.in110, 255, !dbg !1035
  %and46 = and i32 %conv44, %conv45, !dbg !1035
  %tobool47 = icmp eq i32 %and46, 0, !dbg !1035
  br i1 %tobool47, label %if.end53, label %if.then48, !dbg !1035

if.then48:                                        ; preds = %for.body38
  %or51 = or i8 %shl41, 1, !dbg !1039
  store i8 %or51, i8* %byte_buf39, align 1, !dbg !1039, !tbaa !927
  br label %if.end53, !dbg !1039

if.end53:                                         ; preds = %for.body38, %if.then48
  %14 = phi i8 [ %or51, %if.then48 ], [ %shl41, %for.body38 ]
  %15 = load i32* %bits_to_go54, align 4, !dbg !1036, !tbaa !937
  %dec55 = add nsw i32 %15, -1, !dbg !1036
  store i32 %dec55, i32* %bits_to_go54, align 4, !dbg !1036, !tbaa !937
  %shr57106 = lshr i32 %conv45, 1, !dbg !1040
  %cmp60 = icmp eq i32 %dec55, 0, !dbg !1041
  br i1 %cmp60, label %if.then62, label %for.inc72, !dbg !1041

if.then62:                                        ; preds = %if.end53
  store i32 8, i32* %bits_to_go54, align 4, !dbg !1042, !tbaa !937
  %16 = load i32* %byte_pos65, align 4, !dbg !1037, !tbaa !937
  %inc66 = add nsw i32 %16, 1, !dbg !1037
  store i32 %inc66, i32* %byte_pos65, align 4, !dbg !1037, !tbaa !937
  %idxprom67 = sext i32 %16 to i64, !dbg !1037
  %17 = load i8** %streamBuffer68, align 8, !dbg !1037, !tbaa !926
  %arrayidx69 = getelementptr inbounds i8* %17, i64 %idxprom67, !dbg !1037
  store i8 %14, i8* %arrayidx69, align 1, !dbg !1037, !tbaa !927
  store i8 0, i8* %byte_buf39, align 1, !dbg !1043, !tbaa !927
  br label %for.inc72, !dbg !1044

for.inc72:                                        ; preds = %if.end53, %if.then62
  %18 = phi i8 [ %14, %if.end53 ], [ 0, %if.then62 ]
  %inc73 = add nsw i32 %j.1109, 1, !dbg !1029
  tail call void @llvm.dbg.value(metadata !{i32 %inc73}, i64 0, metadata !121), !dbg !1029
  %exitcond = icmp eq i32 %inc73, %sub, !dbg !1029
  br i1 %exitcond, label %if.end75, label %for.body38, !dbg !1029

if.end75:                                         ; preds = %for.inc72, %for.end27
  ret void, !dbg !1045
}

; Function Attrs: nounwind optsize uwtable
define void @InitSparePicture() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1046, !tbaa !926
  %cmp = icmp eq %struct.Bitstream* %0, null, !dbg !1046
  br i1 %cmp, label %if.end, label %if.then, !dbg !1046

if.then:                                          ; preds = %entry
  tail call void @CloseSparePicture() #9, !dbg !1046
  br label %if.end, !dbg !1046

if.end:                                           ; preds = %entry, %if.then
  %call = tail call noalias i8* @malloc(i64 48) #8, !dbg !1047
  %1 = bitcast i8* %call to %struct.Bitstream*, !dbg !1047
  store %struct.Bitstream* %1, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1047, !tbaa !926
  %cmp1 = icmp eq i8* %call, null, !dbg !1048
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1048

if.then2:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0)) #8, !dbg !1048
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1049, !tbaa !926
  br label %if.end3, !dbg !1048

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = phi %struct.Bitstream* [ %.pre, %if.then2 ], [ %1, %if.end ]
  %call4 = tail call noalias i8* @malloc(i64 65496) #8, !dbg !1049
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9, !dbg !1049
  store i8* %call4, i8** %streamBuffer, align 8, !dbg !1049, !tbaa !926
  %3 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1050, !tbaa !926
  %streamBuffer5 = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 9, !dbg !1050
  %4 = load i8** %streamBuffer5, align 8, !dbg !1050, !tbaa !926
  %cmp6 = icmp eq i8* %4, null, !dbg !1050
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1050

if.then7:                                         ; preds = %if.end3
  tail call void @no_mem_exit(i8* getelementptr inbounds ([60 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !1050
  %.pre10 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1051, !tbaa !926
  %streamBuffer9.phi.trans.insert = getelementptr inbounds %struct.Bitstream* %.pre10, i64 0, i32 9
  %.pre11 = load i8** %streamBuffer9.phi.trans.insert, align 8, !dbg !1051, !tbaa !926
  br label %if.end8, !dbg !1050

if.end8:                                          ; preds = %if.then7, %if.end3
  %5 = phi i8* [ %.pre11, %if.then7 ], [ %4, %if.end3 ]
  tail call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 65496, i32 1, i1 false), !dbg !1051
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 1), align 4, !dbg !1052, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 0), align 8, !dbg !1053, !tbaa !937
  %6 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1054, !tbaa !926
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 1, !dbg !1054
  store i32 8, i32* %bits_to_go, align 4, !dbg !1054, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 0, !dbg !1055
  store i32 0, i32* %byte_pos, align 4, !dbg !1055, !tbaa !937
  %byte_buf = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 2, !dbg !1056
  store i8 0, i8* %byte_buf, align 1, !dbg !1056, !tbaa !927
  ret void, !dbg !1057
}

; Function Attrs: nounwind optsize uwtable
define void @CloseSparePicture() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1058, !tbaa !926
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1058
  %1 = load i8** %streamBuffer, align 8, !dbg !1058, !tbaa !926
  %tobool = icmp eq i8* %1, null, !dbg !1058
  br i1 %tobool, label %if.end, label %if.then, !dbg !1058

if.then:                                          ; preds = %entry
  tail call void @free(i8* %1) #8, !dbg !1059
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1060, !tbaa !926
  br label %if.end, !dbg !1059

if.end:                                           ; preds = %entry, %if.then
  %2 = phi %struct.Bitstream* [ %0, %entry ], [ %.pre, %if.then ]
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9, !dbg !1060
  store i8* null, i8** %streamBuffer2, align 8, !dbg !1060, !tbaa !926
  %3 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1061, !tbaa !926
  %tobool3 = icmp eq %struct.Bitstream* %3, null, !dbg !1061
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1061

if.then4:                                         ; preds = %if.end
  %4 = bitcast %struct.Bitstream* %3 to i8*, !dbg !1062
  tail call void @free(i8* %4) #8, !dbg !1062
  br label %if.end5, !dbg !1062

if.end5:                                          ; preds = %if.end, %if.then4
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1063, !tbaa !926
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 1), align 4, !dbg !1064, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 0), align 8, !dbg !1065, !tbaa !937
  ret void, !dbg !1066
}

; Function Attrs: nounwind optsize readnone uwtable
define void @CalculateSparePicture() #7 {
entry:
  ret void, !dbg !1067
}

; Function Attrs: nounwind optsize uwtable
define void @ComposeSparePictureMessage(i32 %delta_spare_frame_num, i32 %ref_area_indicator, %struct.Bitstream* nocapture %tmpBitstream) #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  call void @llvm.dbg.value(metadata !{i32 %delta_spare_frame_num}, i64 0, metadata !131), !dbg !1068
  call void @llvm.dbg.value(metadata !{i32 %ref_area_indicator}, i64 0, metadata !132), !dbg !1068
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %tmpBitstream}, i64 0, metadata !133), !dbg !1068
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1069, !tbaa !926
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %0}, i64 0, metadata !134), !dbg !1069
  %1 = bitcast %struct.syntaxelement* %sym to i8*, !dbg !1070
  call void @llvm.lifetime.start(i64 48, i8* %1) #6, !dbg !1070
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %sym}, metadata !135), !dbg !1070
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0, !dbg !1071
  store i32 0, i32* %type, align 8, !dbg !1071, !tbaa !937
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8, !dbg !1072
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !1072, !tbaa !926
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1, !dbg !1073
  store i32 %delta_spare_frame_num, i32* %value1, align 4, !dbg !1073, !tbaa !937
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %0) #8, !dbg !1074
  store i32 %ref_area_indicator, i32* %value1, align 4, !dbg !1075, !tbaa !937
  %call2 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %0) #8, !dbg !1076
  call void @AppendTmpbits2Buf(%struct.Bitstream* %0, %struct.Bitstream* %tmpBitstream) #9, !dbg !1077
  call void @llvm.lifetime.end(i64 48, i8* %1) #6, !dbg !1078
  ret void, !dbg !1078
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @ue_linfo(i32, i32, i32*, i32*) #3

; Function Attrs: optsize
declare i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement*, %struct.Bitstream*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i32 @CompressSpareMBMap(i8** nocapture %map_sp, %struct.Bitstream* %bitstream) #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  call void @llvm.dbg.value(metadata !{i8** %map_sp}, i64 0, metadata !189), !dbg !1079
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %bitstream}, i64 0, metadata !190), !dbg !1079
  %0 = bitcast %struct.syntaxelement* %sym to i8*, !dbg !1080
  call void @llvm.lifetime.start(i64 48, i8* %0) #6, !dbg !1080
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %sym}, metadata !197), !dbg !1080
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1081, !tbaa !926
  %height = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 15, !dbg !1081
  %2 = load i32* %height, align 4, !dbg !1081, !tbaa !937
  %div = sdiv i32 %2, 16, !dbg !1081
  %width = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 13, !dbg !1081
  %3 = load i32* %width, align 4, !dbg !1081, !tbaa !937
  %div1 = sdiv i32 %3, 16, !dbg !1081
  %mul = mul nsw i32 %div1, %div, !dbg !1081
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !206), !dbg !1081
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !207), !dbg !1082
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0, !dbg !1083
  store i32 0, i32* %type, align 8, !dbg !1083, !tbaa !937
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8, !dbg !1084
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !1084, !tbaa !926
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !193), !dbg !1085
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !194), !dbg !1086
  call void @llvm.dbg.value(metadata !1087, i64 0, metadata !195), !dbg !1088
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !196), !dbg !1089
  %4 = load i32* %width, align 4, !dbg !1090, !tbaa !937
  %div3 = sdiv i32 %4, 16, !dbg !1090
  %sub = add nsw i32 %div3, -1, !dbg !1090
  %div4 = sdiv i32 %sub, 2, !dbg !1090
  call void @llvm.dbg.value(metadata !{i32 %div4}, i64 0, metadata !198), !dbg !1090
  %5 = load i32* %height, align 4, !dbg !1091, !tbaa !937
  %div6 = sdiv i32 %5, 16, !dbg !1091
  %sub7 = add nsw i32 %div6, -1, !dbg !1091
  %div8 = sdiv i32 %sub7, 2, !dbg !1091
  call void @llvm.dbg.value(metadata !{i32 %div8}, i64 0, metadata !199), !dbg !1091
  call void @llvm.dbg.value(metadata !{i32 %div4}, i64 0, metadata !201), !dbg !1092
  call void @llvm.dbg.value(metadata !{i32 %div4}, i64 0, metadata !200), !dbg !1092
  call void @llvm.dbg.value(metadata !{i32 %div8}, i64 0, metadata !202), !dbg !1093
  call void @llvm.dbg.value(metadata !{i32 %div8}, i64 0, metadata !203), !dbg !1093
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !204), !dbg !1094
  call void @llvm.dbg.value(metadata !1087, i64 0, metadata !205), !dbg !1095
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !191), !dbg !1096
  %cmp294 = icmp sgt i32 %5, 15, !dbg !1096
  br i1 %cmp294, label %for.cond11.preheader.lr.ph, label %if.end141, !dbg !1096

for.cond11.preheader.lr.ph:                       ; preds = %entry
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1, !dbg !1098
  br label %for.cond11.preheader, !dbg !1096

for.cond11.preheader:                             ; preds = %for.inc132.for.cond11.preheader_crit_edge, %for.cond11.preheader.lr.ph
  %6 = phi i32 [ %4, %for.cond11.preheader.lr.ph ], [ %.pre, %for.inc132.for.cond11.preheader_crit_edge ]
  %7 = phi %struct.ImageParameters* [ %1, %for.cond11.preheader.lr.ph ], [ %18, %for.inc132.for.cond11.preheader_crit_edge ]
  %j.0305 = phi i32 [ 1, %for.cond11.preheader.lr.ph ], [ %phitmp, %for.inc132.for.cond11.preheader_crit_edge ]
  %size_compressed.0304 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %size_compressed.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %noc.0303 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %noc.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %directy.0302 = phi i32 [ 1, %for.cond11.preheader.lr.ph ], [ %directy.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %directx.0301 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %directx.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %top.0300 = phi i32 [ %div8, %for.cond11.preheader.lr.ph ], [ %top.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %bottom.0299 = phi i32 [ %div8, %for.cond11.preheader.lr.ph ], [ %bottom.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %right.0298 = phi i32 [ %div4, %for.cond11.preheader.lr.ph ], [ %right.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %left.0297 = phi i32 [ %div4, %for.cond11.preheader.lr.ph ], [ %left.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %y.0296 = phi i32 [ %div8, %for.cond11.preheader.lr.ph ], [ %y.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %x.0295 = phi i32 [ %div4, %for.cond11.preheader.lr.ph ], [ %x.1.lcssa, %for.inc132.for.cond11.preheader_crit_edge ]
  %cmp14271 = icmp sgt i32 %6, 15, !dbg !1102
  br i1 %cmp14271, label %for.body15, label %for.inc132, !dbg !1102

for.body15:                                       ; preds = %for.cond11.preheader, %for.inc
  %k.0282 = phi i32 [ %inc131, %for.inc ], [ 0, %for.cond11.preheader ]
  %size_compressed.1281 = phi i32 [ %size_compressed.2, %for.inc ], [ %size_compressed.0304, %for.cond11.preheader ]
  %noc.1280 = phi i32 [ %noc.2, %for.inc ], [ %noc.0303, %for.cond11.preheader ]
  %directy.1279 = phi i32 [ %directy.2, %for.inc ], [ %directy.0302, %for.cond11.preheader ]
  %directx.1278 = phi i32 [ %directx.2, %for.inc ], [ %directx.0301, %for.cond11.preheader ]
  %top.1277 = phi i32 [ %top.2, %for.inc ], [ %top.0300, %for.cond11.preheader ]
  %bottom.1276 = phi i32 [ %bottom.2, %for.inc ], [ %bottom.0299, %for.cond11.preheader ]
  %right.1275 = phi i32 [ %right.2, %for.inc ], [ %right.0298, %for.cond11.preheader ]
  %left.1274 = phi i32 [ %left.2, %for.inc ], [ %left.0297, %for.cond11.preheader ]
  %y.1273 = phi i32 [ %y.2, %for.inc ], [ %y.0296, %for.cond11.preheader ]
  %x.1272 = phi i32 [ %x.2, %for.inc ], [ %x.0295, %for.cond11.preheader ]
  %idxprom = sext i32 %x.1272 to i64, !dbg !1103
  %idxprom16 = sext i32 %y.1273 to i64, !dbg !1103
  %arrayidx = getelementptr inbounds i8** %map_sp, i64 %idxprom16, !dbg !1103
  %8 = load i8** %arrayidx, align 8, !dbg !1103, !tbaa !926
  %arrayidx17 = getelementptr inbounds i8* %8, i64 %idxprom, !dbg !1103
  %9 = load i8* %arrayidx17, align 1, !dbg !1103, !tbaa !927
  %cmp18 = icmp eq i8 %9, 0, !dbg !1103
  br i1 %cmp18, label %if.then, label %if.else, !dbg !1103

if.then:                                          ; preds = %for.body15
  %inc = add nsw i32 %noc.1280, 1, !dbg !1103
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !193), !dbg !1103
  br label %if.end, !dbg !1103

if.else:                                          ; preds = %for.body15
  store i32 %noc.1280, i32* %value1, align 4, !dbg !1098, !tbaa !937
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %bitstream) #8, !dbg !1104
  %add = add nsw i32 %call, %size_compressed.1281, !dbg !1104
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !207), !dbg !1104
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !193), !dbg !1105
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %noc.2 = phi i32 [ %inc, %if.then ], [ 0, %if.else ]
  %size_compressed.2 = phi i32 [ %size_compressed.1281, %if.then ], [ %add, %if.else ]
  %cmp20 = icmp eq i32 %directx.1278, -1, !dbg !1106
  %cmp22 = icmp eq i32 %directy.1279, 0, !dbg !1106
  %or.cond = and i1 %cmp20, %cmp22, !dbg !1106
  br i1 %or.cond, label %if.then24, label %if.else43, !dbg !1106

if.then24:                                        ; preds = %if.end
  %cmp25 = icmp sgt i32 %x.1272, %left.1274, !dbg !1107
  br i1 %cmp25, label %if.then27, label %if.else28, !dbg !1107

if.then27:                                        ; preds = %if.then24
  %dec = add nsw i32 %x.1272, -1, !dbg !1107
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !198), !dbg !1107
  br label %for.inc, !dbg !1107

if.else28:                                        ; preds = %if.then24
  %cmp29 = icmp eq i32 %x.1272, 0, !dbg !1109
  br i1 %cmp29, label %if.then31, label %if.else34, !dbg !1109

if.then31:                                        ; preds = %if.else28
  %add32 = add nsw i32 %bottom.1276, 1, !dbg !1110
  call void @llvm.dbg.value(metadata !{i32 %add32}, i64 0, metadata !199), !dbg !1110
  call void @llvm.dbg.value(metadata !{i32 %add32}, i64 0, metadata !202), !dbg !1112
  call void @llvm.dbg.value(metadata !1087, i64 0, metadata !204), !dbg !1113
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !205), !dbg !1114
  br label %for.inc, !dbg !1115

if.else34:                                        ; preds = %if.else28
  %cmp35 = icmp eq i32 %x.1272, %left.1274, !dbg !1116
  %dec38 = add nsw i32 %left.1274, -1, !dbg !1117
  call void @llvm.dbg.value(metadata !{i32 %dec38}, i64 0, metadata !198), !dbg !1117
  call void @llvm.dbg.value(metadata !{i32 %dec38}, i64 0, metadata !200), !dbg !1119
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !204), !dbg !1120
  call void @llvm.dbg.value(metadata !1087, i64 0, metadata !205), !dbg !1121
  %dec38.x.1272 = select i1 %cmp35, i32 %dec38, i32 %x.1272, !dbg !1116
  %dec38.left.1274 = select i1 %cmp35, i32 %dec38, i32 %left.1274, !dbg !1116
  %not.cmp35 = xor i1 %cmp35, true, !dbg !1116
  %. = sext i1 %not.cmp35 to i32, !dbg !1116
  %.312 = zext i1 %cmp35 to i32, !dbg !1116
  br label %for.inc, !dbg !1116

if.else43:                                        ; preds = %if.end
  %cmp44 = icmp eq i32 %directx.1278, 1, !dbg !1122
  %or.cond258 = and i1 %cmp44, %cmp22, !dbg !1122
  br i1 %or.cond258, label %if.then49, label %if.else72, !dbg !1122

if.then49:                                        ; preds = %if.else43
  %cmp50 = icmp slt i32 %x.1272, %right.1275, !dbg !1123
  br i1 %cmp50, label %if.then52, label %if.else54, !dbg !1123

if.then52:                                        ; preds = %if.then49
  %inc53 = add nsw i32 %x.1272, 1, !dbg !1123
  call void @llvm.dbg.value(metadata !{i32 %inc53}, i64 0, metadata !198), !dbg !1123
  br label %for.inc, !dbg !1123

if.else54:                                        ; preds = %if.then49
  %10 = load %struct.ImageParameters** @img, align 8, !dbg !1125, !tbaa !926
  %width55 = getelementptr inbounds %struct.ImageParameters* %10, i64 0, i32 13, !dbg !1125
  %11 = load i32* %width55, align 4, !dbg !1125, !tbaa !937
  %div56 = sdiv i32 %11, 16, !dbg !1125
  %sub57 = add nsw i32 %div56, -1, !dbg !1125
  %cmp58 = icmp eq i32 %x.1272, %sub57, !dbg !1125
  br i1 %cmp58, label %if.then60, label %if.else63, !dbg !1125

if.then60:                                        ; preds = %if.else54
  %sub61 = add nsw i32 %top.1277, -1, !dbg !1126
  call void @llvm.dbg.value(metadata !{i32 %sub61}, i64 0, metadata !199), !dbg !1126
  call void @llvm.dbg.value(metadata !{i32 %sub61}, i64 0, metadata !203), !dbg !1128
  call void @llvm.dbg.value(metadata !1129, i64 0, metadata !204), !dbg !1130
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !205), !dbg !1131
  br label %for.inc, !dbg !1132

if.else63:                                        ; preds = %if.else54
  %cmp64 = icmp eq i32 %x.1272, %right.1275, !dbg !1133
  %inc67 = add nsw i32 %right.1275, 1, !dbg !1134
  call void @llvm.dbg.value(metadata !{i32 %inc67}, i64 0, metadata !198), !dbg !1134
  call void @llvm.dbg.value(metadata !{i32 %inc67}, i64 0, metadata !201), !dbg !1136
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !204), !dbg !1137
  call void @llvm.dbg.value(metadata !1129, i64 0, metadata !205), !dbg !1138
  %inc67.x.1272 = select i1 %cmp64, i32 %inc67, i32 %x.1272, !dbg !1133
  %inc67.right.1275 = select i1 %cmp64, i32 %inc67, i32 %right.1275, !dbg !1133
  %12 = zext i1 %cmp64 to i32, !dbg !1133
  %.313 = xor i32 %12, 1, !dbg !1133
  %.314 = sext i1 %cmp64 to i32, !dbg !1133
  br label %for.inc, !dbg !1133

if.else72:                                        ; preds = %if.else43
  %cmp73 = icmp eq i32 %directx.1278, 0, !dbg !1139
  %cmp76 = icmp eq i32 %directy.1279, -1, !dbg !1139
  %or.cond259 = and i1 %cmp73, %cmp76, !dbg !1139
  br i1 %or.cond259, label %if.then78, label %if.else98, !dbg !1139

if.then78:                                        ; preds = %if.else72
  %cmp79 = icmp sgt i32 %y.1273, %top.1277, !dbg !1140
  br i1 %cmp79, label %if.then81, label %if.else83, !dbg !1140

if.then81:                                        ; preds = %if.then78
  %dec82 = add nsw i32 %y.1273, -1, !dbg !1140
  call void @llvm.dbg.value(metadata !{i32 %dec82}, i64 0, metadata !199), !dbg !1140
  br label %for.inc, !dbg !1140

if.else83:                                        ; preds = %if.then78
  %cmp84 = icmp eq i32 %y.1273, 0, !dbg !1142
  br i1 %cmp84, label %if.then86, label %if.else89, !dbg !1142

if.then86:                                        ; preds = %if.else83
  %sub87 = add nsw i32 %left.1274, -1, !dbg !1143
  call void @llvm.dbg.value(metadata !{i32 %sub87}, i64 0, metadata !198), !dbg !1143
  call void @llvm.dbg.value(metadata !{i32 %sub87}, i64 0, metadata !200), !dbg !1145
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !204), !dbg !1146
  call void @llvm.dbg.value(metadata !1087, i64 0, metadata !205), !dbg !1147
  br label %for.inc, !dbg !1148

if.else89:                                        ; preds = %if.else83
  %cmp90 = icmp eq i32 %y.1273, %top.1277, !dbg !1149
  %dec93 = add nsw i32 %top.1277, -1, !dbg !1150
  call void @llvm.dbg.value(metadata !{i32 %dec93}, i64 0, metadata !199), !dbg !1150
  call void @llvm.dbg.value(metadata !{i32 %dec93}, i64 0, metadata !203), !dbg !1152
  call void @llvm.dbg.value(metadata !1129, i64 0, metadata !204), !dbg !1153
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !205), !dbg !1154
  %dec93.y.1273 = select i1 %cmp90, i32 %dec93, i32 %y.1273, !dbg !1149
  %dec93.top.1277 = select i1 %cmp90, i32 %dec93, i32 %top.1277, !dbg !1149
  %.315 = sext i1 %cmp90 to i32, !dbg !1149
  %not.cmp90 = xor i1 %cmp90, true, !dbg !1149
  %.316 = sext i1 %not.cmp90 to i32, !dbg !1149
  br label %for.inc, !dbg !1149

if.else98:                                        ; preds = %if.else72
  %cmp102 = icmp eq i32 %directy.1279, 1, !dbg !1155
  %or.cond260 = and i1 %cmp73, %cmp102, !dbg !1155
  br i1 %or.cond260, label %if.then104, label %for.inc, !dbg !1155

if.then104:                                       ; preds = %if.else98
  %cmp105 = icmp slt i32 %y.1273, %bottom.1276, !dbg !1156
  br i1 %cmp105, label %if.then107, label %if.else109, !dbg !1156

if.then107:                                       ; preds = %if.then104
  %inc108 = add nsw i32 %y.1273, 1, !dbg !1156
  call void @llvm.dbg.value(metadata !{i32 %inc108}, i64 0, metadata !199), !dbg !1156
  br label %for.inc, !dbg !1156

if.else109:                                       ; preds = %if.then104
  %13 = load %struct.ImageParameters** @img, align 8, !dbg !1158, !tbaa !926
  %height110 = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 15, !dbg !1158
  %14 = load i32* %height110, align 4, !dbg !1158, !tbaa !937
  %div111 = sdiv i32 %14, 16, !dbg !1158
  %sub112 = add nsw i32 %div111, -1, !dbg !1158
  %cmp113 = icmp eq i32 %y.1273, %sub112, !dbg !1158
  br i1 %cmp113, label %if.then115, label %if.else118, !dbg !1158

if.then115:                                       ; preds = %if.else109
  %add116 = add nsw i32 %right.1275, 1, !dbg !1159
  call void @llvm.dbg.value(metadata !{i32 %add116}, i64 0, metadata !198), !dbg !1159
  call void @llvm.dbg.value(metadata !{i32 %add116}, i64 0, metadata !201), !dbg !1161
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !204), !dbg !1162
  call void @llvm.dbg.value(metadata !1129, i64 0, metadata !205), !dbg !1163
  br label %for.inc, !dbg !1164

if.else118:                                       ; preds = %if.else109
  %cmp119 = icmp eq i32 %y.1273, %bottom.1276, !dbg !1165
  %inc122 = add nsw i32 %bottom.1276, 1, !dbg !1166
  call void @llvm.dbg.value(metadata !{i32 %inc122}, i64 0, metadata !199), !dbg !1166
  call void @llvm.dbg.value(metadata !{i32 %inc122}, i64 0, metadata !202), !dbg !1168
  call void @llvm.dbg.value(metadata !1087, i64 0, metadata !204), !dbg !1169
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !205), !dbg !1170
  %inc122.y.1273 = select i1 %cmp119, i32 %inc122, i32 %y.1273, !dbg !1165
  %inc122.bottom.1276 = select i1 %cmp119, i32 %inc122, i32 %bottom.1276, !dbg !1165
  %.317 = zext i1 %cmp119 to i32, !dbg !1165
  %15 = zext i1 %cmp119 to i32, !dbg !1165
  %.318 = xor i32 %15, 1, !dbg !1165
  br label %for.inc, !dbg !1165

for.inc:                                          ; preds = %if.else118, %if.else89, %if.else63, %if.else34, %if.else98, %if.then31, %if.then27, %if.then86, %if.then81, %if.then107, %if.then115, %if.then52, %if.then60
  %x.2 = phi i32 [ %dec, %if.then27 ], [ 0, %if.then31 ], [ %inc53, %if.then52 ], [ %x.1272, %if.then60 ], [ %x.1272, %if.then81 ], [ %sub87, %if.then86 ], [ %x.1272, %if.then107 ], [ %add116, %if.then115 ], [ %x.1272, %if.else98 ], [ %dec38.x.1272, %if.else34 ], [ %inc67.x.1272, %if.else63 ], [ %x.1272, %if.else89 ], [ %x.1272, %if.else118 ]
  %y.2 = phi i32 [ %y.1273, %if.then27 ], [ %add32, %if.then31 ], [ %y.1273, %if.then52 ], [ %sub61, %if.then60 ], [ %dec82, %if.then81 ], [ 0, %if.then86 ], [ %inc108, %if.then107 ], [ %y.1273, %if.then115 ], [ %y.1273, %if.else98 ], [ %y.1273, %if.else34 ], [ %y.1273, %if.else63 ], [ %dec93.y.1273, %if.else89 ], [ %inc122.y.1273, %if.else118 ]
  %left.2 = phi i32 [ %left.1274, %if.then27 ], [ %left.1274, %if.then31 ], [ %left.1274, %if.then52 ], [ %left.1274, %if.then60 ], [ %left.1274, %if.then81 ], [ %sub87, %if.then86 ], [ %left.1274, %if.then107 ], [ %left.1274, %if.then115 ], [ %left.1274, %if.else98 ], [ %dec38.left.1274, %if.else34 ], [ %left.1274, %if.else63 ], [ %left.1274, %if.else89 ], [ %left.1274, %if.else118 ]
  %right.2 = phi i32 [ %right.1275, %if.then27 ], [ %right.1275, %if.then31 ], [ %right.1275, %if.then52 ], [ %right.1275, %if.then60 ], [ %right.1275, %if.then81 ], [ %right.1275, %if.then86 ], [ %right.1275, %if.then107 ], [ %add116, %if.then115 ], [ %right.1275, %if.else98 ], [ %right.1275, %if.else34 ], [ %inc67.right.1275, %if.else63 ], [ %right.1275, %if.else89 ], [ %right.1275, %if.else118 ]
  %bottom.2 = phi i32 [ %bottom.1276, %if.then27 ], [ %add32, %if.then31 ], [ %bottom.1276, %if.then52 ], [ %bottom.1276, %if.then60 ], [ %bottom.1276, %if.then81 ], [ %bottom.1276, %if.then86 ], [ %bottom.1276, %if.then107 ], [ %bottom.1276, %if.then115 ], [ %bottom.1276, %if.else98 ], [ %bottom.1276, %if.else34 ], [ %bottom.1276, %if.else63 ], [ %bottom.1276, %if.else89 ], [ %inc122.bottom.1276, %if.else118 ]
  %top.2 = phi i32 [ %top.1277, %if.then27 ], [ %top.1277, %if.then31 ], [ %top.1277, %if.then52 ], [ %sub61, %if.then60 ], [ %top.1277, %if.then81 ], [ %top.1277, %if.then86 ], [ %top.1277, %if.then107 ], [ %top.1277, %if.then115 ], [ %top.1277, %if.else98 ], [ %top.1277, %if.else34 ], [ %top.1277, %if.else63 ], [ %dec93.top.1277, %if.else89 ], [ %top.1277, %if.else118 ]
  %directx.2 = phi i32 [ -1, %if.then27 ], [ 1, %if.then31 ], [ 1, %if.then52 ], [ -1, %if.then60 ], [ 0, %if.then81 ], [ 0, %if.then86 ], [ 0, %if.then107 ], [ 0, %if.then115 ], [ %directx.1278, %if.else98 ], [ %., %if.else34 ], [ %.313, %if.else63 ], [ %.315, %if.else89 ], [ %.317, %if.else118 ]
  %directy.2 = phi i32 [ 0, %if.then27 ], [ 0, %if.then31 ], [ 0, %if.then52 ], [ 0, %if.then60 ], [ -1, %if.then81 ], [ 1, %if.then86 ], [ 1, %if.then107 ], [ -1, %if.then115 ], [ %directy.1279, %if.else98 ], [ %.312, %if.else34 ], [ %.314, %if.else63 ], [ %.316, %if.else89 ], [ %.318, %if.else118 ]
  %inc131 = add nsw i32 %k.0282, 1, !dbg !1102
  call void @llvm.dbg.value(metadata !{i32 %inc131}, i64 0, metadata !192), !dbg !1102
  %16 = load %struct.ImageParameters** @img, align 8, !dbg !1102, !tbaa !926
  %width12 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 13, !dbg !1102
  %17 = load i32* %width12, align 4, !dbg !1102, !tbaa !937
  %div13 = sdiv i32 %17, 16, !dbg !1102
  %cmp14 = icmp slt i32 %inc131, %div13, !dbg !1102
  br i1 %cmp14, label %for.body15, label %for.inc132, !dbg !1102

for.inc132:                                       ; preds = %for.inc, %for.cond11.preheader
  %.pre = phi i32 [ %6, %for.cond11.preheader ], [ %17, %for.inc ]
  %18 = phi %struct.ImageParameters* [ %7, %for.cond11.preheader ], [ %16, %for.inc ], !dbg !1096
  %size_compressed.1.lcssa = phi i32 [ %size_compressed.0304, %for.cond11.preheader ], [ %size_compressed.2, %for.inc ]
  %noc.1.lcssa = phi i32 [ %noc.0303, %for.cond11.preheader ], [ %noc.2, %for.inc ]
  %directy.1.lcssa = phi i32 [ %directy.0302, %for.cond11.preheader ], [ %directy.2, %for.inc ]
  %directx.1.lcssa = phi i32 [ %directx.0301, %for.cond11.preheader ], [ %directx.2, %for.inc ]
  %top.1.lcssa = phi i32 [ %top.0300, %for.cond11.preheader ], [ %top.2, %for.inc ]
  %bottom.1.lcssa = phi i32 [ %bottom.0299, %for.cond11.preheader ], [ %bottom.2, %for.inc ]
  %right.1.lcssa = phi i32 [ %right.0298, %for.cond11.preheader ], [ %right.2, %for.inc ]
  %left.1.lcssa = phi i32 [ %left.0297, %for.cond11.preheader ], [ %left.2, %for.inc ]
  %y.1.lcssa = phi i32 [ %y.0296, %for.cond11.preheader ], [ %y.2, %for.inc ]
  %x.1.lcssa = phi i32 [ %x.0295, %for.cond11.preheader ], [ %x.2, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32 %j.0305}, i64 0, metadata !191), !dbg !1096
  %height9 = getelementptr inbounds %struct.ImageParameters* %18, i64 0, i32 15, !dbg !1096
  %19 = load i32* %height9, align 4, !dbg !1096, !tbaa !937
  %div10 = sdiv i32 %19, 16, !dbg !1096
  %cmp = icmp slt i32 %j.0305, %div10, !dbg !1096
  br i1 %cmp, label %for.inc132.for.cond11.preheader_crit_edge, label %for.end134, !dbg !1096

for.inc132.for.cond11.preheader_crit_edge:        ; preds = %for.inc132
  %phitmp = add i32 %j.0305, 1, !dbg !1096
  br label %for.cond11.preheader, !dbg !1096

for.end134:                                       ; preds = %for.inc132
  %cmp135 = icmp eq i32 %noc.1.lcssa, 0, !dbg !1171
  br i1 %cmp135, label %if.end141, label %if.then137, !dbg !1171

if.then137:                                       ; preds = %for.end134
  %value1138 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1, !dbg !1172
  store i32 %noc.1.lcssa, i32* %value1138, align 4, !dbg !1172, !tbaa !937
  %call139 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %bitstream) #8, !dbg !1174
  %add140 = add nsw i32 %call139, %size_compressed.1.lcssa, !dbg !1174
  call void @llvm.dbg.value(metadata !{i32 %add140}, i64 0, metadata !207), !dbg !1174
  br label %if.end141, !dbg !1175

if.end141:                                        ; preds = %entry, %for.end134, %if.then137
  %size_compressed.3 = phi i32 [ %add140, %if.then137 ], [ %size_compressed.1.lcssa, %for.end134 ], [ 0, %entry ]
  %cmp142 = icmp slt i32 %size_compressed.3, %mul, !dbg !1176
  %cond = zext i1 %cmp142 to i32, !dbg !1176
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !208), !dbg !1176
  br i1 %cmp142, label %if.end190, label %if.then144, !dbg !1177

if.then144:                                       ; preds = %if.end141
  %byte_buf = getelementptr inbounds %struct.Bitstream* %bitstream, i64 0, i32 2, !dbg !1178
  store i8 0, i8* %byte_buf, align 1, !dbg !1178, !tbaa !927
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %bitstream, i64 0, i32 1, !dbg !1180
  store i32 8, i32* %bits_to_go, align 4, !dbg !1180, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %bitstream, i64 0, i32 0, !dbg !1181
  store i32 0, i32* %byte_pos, align 4, !dbg !1181, !tbaa !937
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !191), !dbg !1182
  %20 = load %struct.ImageParameters** @img, align 8, !dbg !1182, !tbaa !926
  %height146265 = getelementptr inbounds %struct.ImageParameters* %20, i64 0, i32 15, !dbg !1182
  %21 = load i32* %height146265, align 4, !dbg !1182, !tbaa !937
  %cmp148267 = icmp sgt i32 %21, 15, !dbg !1182
  br i1 %cmp148267, label %for.cond151.preheader.lr.ph, label %if.end190, !dbg !1182

for.cond151.preheader.lr.ph:                      ; preds = %if.then144
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %bitstream, i64 0, i32 9, !dbg !1184
  br label %for.cond151.preheader, !dbg !1182

for.cond151.preheader:                            ; preds = %for.cond151.preheader.lr.ph, %for.inc187
  %22 = phi i8 [ 0, %for.cond151.preheader.lr.ph ], [ %36, %for.inc187 ]
  %23 = phi %struct.ImageParameters* [ %20, %for.cond151.preheader.lr.ph ], [ %37, %for.inc187 ]
  %indvars.iv308 = phi i64 [ 0, %for.cond151.preheader.lr.ph ], [ %indvars.iv.next309, %for.inc187 ]
  %width152261 = getelementptr inbounds %struct.ImageParameters* %23, i64 0, i32 13, !dbg !1189
  %24 = load i32* %width152261, align 4, !dbg !1189, !tbaa !937
  %cmp154263 = icmp sgt i32 %24, 15, !dbg !1189
  br i1 %cmp154263, label %for.body156.lr.ph, label %for.inc187, !dbg !1189

for.body156.lr.ph:                                ; preds = %for.cond151.preheader
  %arrayidx162 = getelementptr inbounds i8** %map_sp, i64 %indvars.iv308, !dbg !1190
  br label %for.body156, !dbg !1189

for.body156:                                      ; preds = %for.body156.lr.ph, %for.inc184
  %25 = phi i8 [ %22, %for.body156.lr.ph ], [ %32, %for.inc184 ], !dbg !1191
  %indvars.iv = phi i64 [ 0, %for.body156.lr.ph ], [ %indvars.iv.next, %for.inc184 ]
  %shl = shl i8 %25, 1, !dbg !1191
  store i8 %shl, i8* %byte_buf, align 1, !dbg !1191, !tbaa !927
  %26 = load i8** %arrayidx162, align 8, !dbg !1190, !tbaa !926
  %arrayidx163 = getelementptr inbounds i8* %26, i64 %indvars.iv, !dbg !1190
  %27 = load i8* %arrayidx163, align 1, !dbg !1190, !tbaa !927
  %tobool164 = icmp eq i8 %27, 0, !dbg !1190
  br i1 %tobool164, label %if.end169, label %if.then165, !dbg !1190

if.then165:                                       ; preds = %for.body156
  %or = or i8 %shl, 1, !dbg !1190
  store i8 %or, i8* %byte_buf, align 1, !dbg !1190, !tbaa !927
  br label %if.end169, !dbg !1190

if.end169:                                        ; preds = %for.body156, %if.then165
  %28 = phi i8 [ %or, %if.then165 ], [ %shl, %for.body156 ]
  %29 = load i32* %bits_to_go, align 4, !dbg !1192, !tbaa !937
  %dec171 = add nsw i32 %29, -1, !dbg !1192
  store i32 %dec171, i32* %bits_to_go, align 4, !dbg !1192, !tbaa !937
  %cmp173 = icmp eq i32 %dec171, 0, !dbg !1193
  br i1 %cmp173, label %if.then175, label %for.inc184, !dbg !1193

if.then175:                                       ; preds = %if.end169
  store i32 8, i32* %bits_to_go, align 4, !dbg !1194, !tbaa !937
  %30 = load i32* %byte_pos, align 4, !dbg !1184, !tbaa !937
  %inc179 = add nsw i32 %30, 1, !dbg !1184
  store i32 %inc179, i32* %byte_pos, align 4, !dbg !1184, !tbaa !937
  %idxprom180 = sext i32 %30 to i64, !dbg !1184
  %31 = load i8** %streamBuffer, align 8, !dbg !1184, !tbaa !926
  %arrayidx181 = getelementptr inbounds i8* %31, i64 %idxprom180, !dbg !1184
  store i8 %28, i8* %arrayidx181, align 1, !dbg !1184, !tbaa !927
  store i8 0, i8* %byte_buf, align 1, !dbg !1195, !tbaa !927
  br label %for.inc184, !dbg !1196

for.inc184:                                       ; preds = %if.end169, %if.then175
  %32 = phi i8 [ %28, %if.end169 ], [ 0, %if.then175 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1189
  %33 = load %struct.ImageParameters** @img, align 8, !dbg !1189, !tbaa !926
  %width152 = getelementptr inbounds %struct.ImageParameters* %33, i64 0, i32 13, !dbg !1189
  %34 = load i32* %width152, align 4, !dbg !1189, !tbaa !937
  %div153 = sdiv i32 %34, 16, !dbg !1189
  %35 = trunc i64 %indvars.iv.next to i32, !dbg !1189
  %cmp154 = icmp slt i32 %35, %div153, !dbg !1189
  br i1 %cmp154, label %for.body156, label %for.inc187, !dbg !1189

for.inc187:                                       ; preds = %for.inc184, %for.cond151.preheader
  %36 = phi i8 [ %22, %for.cond151.preheader ], [ %32, %for.inc184 ]
  %37 = phi %struct.ImageParameters* [ %23, %for.cond151.preheader ], [ %33, %for.inc184 ], !dbg !1182
  %indvars.iv.next309 = add i64 %indvars.iv308, 1, !dbg !1182
  %height146 = getelementptr inbounds %struct.ImageParameters* %37, i64 0, i32 15, !dbg !1182
  %38 = load i32* %height146, align 4, !dbg !1182, !tbaa !937
  %div147 = sdiv i32 %38, 16, !dbg !1182
  %39 = trunc i64 %indvars.iv.next309 to i32, !dbg !1182
  %cmp148 = icmp slt i32 %39, %div147, !dbg !1182
  br i1 %cmp148, label %for.cond151.preheader, label %if.end190, !dbg !1182

if.end190:                                        ; preds = %if.then144, %for.inc187, %if.end141
  call void @llvm.lifetime.end(i64 48, i8* %0) #6, !dbg !1197
  ret i32 %cond, !dbg !1197
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeSpareMBMap() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1198, !tbaa !926
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0, !dbg !1198
  %1 = load i32* %number, align 4, !dbg !1198, !tbaa !937
  %rem = srem i32 %1, 256, !dbg !1198
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !211), !dbg !1198
  %2 = bitcast %struct.syntaxelement* %sym to i8*, !dbg !1199
  call void @llvm.lifetime.start(i64 48, i8* %2) #6, !dbg !1199
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %sym}, metadata !213), !dbg !1199
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0, !dbg !1200
  store i32 0, i32* %type, align 8, !dbg !1200, !tbaa !937
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8, !dbg !1201
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !1201, !tbaa !926
  %3 = load %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1202, !tbaa !926
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %3}, i64 0, metadata !215), !dbg !1202
  %call = call noalias i8* @malloc(i64 48) #8, !dbg !1203
  %4 = bitcast i8* %call to %struct.Bitstream*, !dbg !1203
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %4}, i64 0, metadata !214), !dbg !1203
  %cmp = icmp eq i8* %call, null, !dbg !1204
  br i1 %cmp, label %if.then, label %if.end, !dbg !1204

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0)) #8, !dbg !1204
  br label %if.end, !dbg !1204

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @malloc(i64 65496) #8, !dbg !1205
  %streamBuffer = getelementptr inbounds i8* %call, i64 32, !dbg !1205
  %5 = bitcast i8* %streamBuffer to i8**, !dbg !1205
  store i8* %call1, i8** %5, align 8, !dbg !1205, !tbaa !926
  %cmp3 = icmp eq i8* %call1, null, !dbg !1206
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1206

if.then4:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([39 x i8]* @.str6, i64 0, i64 0)) #8, !dbg !1206
  %.pre = load i8** %5, align 8, !dbg !1207, !tbaa !926
  br label %if.end5, !dbg !1206

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = phi i8* [ %.pre, %if.then4 ], [ %call1, %if.end ]
  %bits_to_go = getelementptr inbounds i8* %call, i64 4, !dbg !1208
  %7 = bitcast i8* %bits_to_go to i32*, !dbg !1208
  store i32 8, i32* %7, align 4, !dbg !1208, !tbaa !937
  %byte_pos = bitcast i8* %call to i32*, !dbg !1209
  store i32 0, i32* %byte_pos, align 4, !dbg !1209, !tbaa !937
  %8 = getelementptr inbounds i8* %call, i64 8, !dbg !1210
  store i8 0, i8* %8, align 1, !dbg !1210, !tbaa !927
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 65496, i32 1, i1 false), !dbg !1207
  %9 = load i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 0), align 8, !dbg !1211, !tbaa !937
  %sub = sub nsw i32 %rem, %9, !dbg !1211
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !212), !dbg !1211
  %cmp7 = icmp slt i32 %sub, 0, !dbg !1212
  %add = add nsw i32 %sub, 256, !dbg !1212
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !212), !dbg !1212
  %add.sub = select i1 %cmp7, i32 %add, i32 %sub, !dbg !1212
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1, !dbg !1213
  store i32 %add.sub, i32* %value1, align 4, !dbg !1213, !tbaa !937
  %call10 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %4) #8, !dbg !1214
  %10 = load i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 1), align 4, !dbg !1215, !tbaa !937
  %sub11 = add nsw i32 %10, -1, !dbg !1215
  store i32 %sub11, i32* %value1, align 4, !dbg !1215, !tbaa !937
  %call13 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %4) #8, !dbg !1216
  call void @AppendTmpbits2Buf(%struct.Bitstream* %4, %struct.Bitstream* %3) #9, !dbg !1217
  %11 = load i32* %7, align 4, !dbg !1218, !tbaa !937
  %cmp15 = icmp eq i32 %11, 8, !dbg !1218
  br i1 %cmp15, label %if.end38, label %if.then16, !dbg !1218

if.then16:                                        ; preds = %if.end5
  %12 = load i8* %8, align 1, !dbg !1219, !tbaa !927
  %shl = shl i8 %12, 1, !dbg !1219
  %or = or i8 %shl, 1, !dbg !1221
  store i8 %or, i8* %8, align 1, !dbg !1221, !tbaa !927
  %dec = add nsw i32 %11, -1, !dbg !1222
  store i32 %dec, i32* %7, align 4, !dbg !1222, !tbaa !937
  %cmp24 = icmp eq i32 %dec, 0, !dbg !1223
  br i1 %cmp24, label %if.end32, label %if.then26, !dbg !1223

if.then26:                                        ; preds = %if.then16
  %conv29 = zext i8 %or to i32, !dbg !1223
  %shl30 = shl i32 %conv29, %dec, !dbg !1223
  %conv31 = trunc i32 %shl30 to i8, !dbg !1223
  store i8 %conv31, i8* %8, align 1, !dbg !1223, !tbaa !927
  br label %if.end32, !dbg !1223

if.end32:                                         ; preds = %if.then16, %if.then26
  %13 = phi i8 [ %or, %if.then16 ], [ %conv31, %if.then26 ]
  store i32 8, i32* %7, align 4, !dbg !1224, !tbaa !937
  %14 = load i32* %byte_pos, align 4, !dbg !1225, !tbaa !937
  %inc = add nsw i32 %14, 1, !dbg !1225
  store i32 %inc, i32* %byte_pos, align 4, !dbg !1225, !tbaa !937
  %idxprom = sext i32 %14 to i64, !dbg !1225
  %15 = load i8** %5, align 8, !dbg !1225, !tbaa !926
  %arrayidx = getelementptr inbounds i8* %15, i64 %idxprom, !dbg !1225
  store i8 %13, i8* %arrayidx, align 1, !dbg !1225, !tbaa !927
  store i8 0, i8* %8, align 1, !dbg !1226, !tbaa !927
  br label %if.end38, !dbg !1227

if.end38:                                         ; preds = %if.end5, %if.end32
  %16 = load i32* %byte_pos, align 4, !dbg !1228, !tbaa !937
  store i32 %16, i32* getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 2), align 8, !dbg !1228, !tbaa !937
  store %struct.Bitstream* %4, %struct.Bitstream** getelementptr inbounds (%struct.spare_picture_struct* @seiSparePicturePayload, i64 0, i32 3), align 8, !dbg !1229, !tbaa !926
  %streamBuffer40 = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 9, !dbg !1230
  %17 = load i8** %streamBuffer40, align 8, !dbg !1230, !tbaa !926
  call void @free(i8* %17) #8, !dbg !1230
  %18 = bitcast %struct.Bitstream* %3 to i8*, !dbg !1231
  call void @free(i8* %18) #8, !dbg !1231
  call void @llvm.lifetime.end(i64 48, i8* %2) #6, !dbg !1232
  ret void, !dbg !1232
}

; Function Attrs: nounwind optsize uwtable
define void @InitSubseqInfo(i32 %currLayer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %currLayer}, i64 0, metadata !218), !dbg !1233
  store i32 1, i32* @seiHasSubseqInfo, align 4, !dbg !1234, !tbaa !927
  %idxprom = sext i32 %currLayer to i64, !dbg !1235
  %subseq_layer_num = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 0, !dbg !1235
  store i32 %currLayer, i32* %subseq_layer_num, align 16, !dbg !1235, !tbaa !937
  %0 = load i16* @InitSubseqInfo.id, align 2, !dbg !1236, !tbaa !951
  %inc = add i16 %0, 1, !dbg !1236
  store i16 %inc, i16* @InitSubseqInfo.id, align 2, !dbg !1236, !tbaa !951
  %conv = zext i16 %0 to i32, !dbg !1236
  %subseq_id = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 1, !dbg !1236
  store i32 %conv, i32* %subseq_id, align 4, !dbg !1236, !tbaa !937
  %last_picture_flag = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 2, !dbg !1237
  store i32 0, i32* %last_picture_flag, align 8, !dbg !1237, !tbaa !937
  %stored_frame_cnt = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 3, !dbg !1238
  store i32 -1, i32* %stored_frame_cnt, align 4, !dbg !1238, !tbaa !937
  %payloadSize = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 4, !dbg !1239
  store i32 0, i32* %payloadSize, align 16, !dbg !1239, !tbaa !937
  %call = tail call noalias i8* @malloc(i64 48) #8, !dbg !1240
  %1 = bitcast i8* %call to %struct.Bitstream*, !dbg !1240
  %data = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 5, !dbg !1240
  store %struct.Bitstream* %1, %struct.Bitstream** %data, align 8, !dbg !1240, !tbaa !926
  %cmp = icmp eq i8* %call, null, !dbg !1241
  br i1 %cmp, label %if.then, label %if.end, !dbg !1241

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([46 x i8]* @.str7, i64 0, i64 0)) #8, !dbg !1241
  %.pre = load %struct.Bitstream** %data, align 8, !dbg !1242, !tbaa !926
  br label %if.end, !dbg !1241

if.end:                                           ; preds = %if.then, %entry
  %2 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %1, %entry ]
  %call15 = tail call noalias i8* @malloc(i64 65496) #8, !dbg !1242
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9, !dbg !1242
  store i8* %call15, i8** %streamBuffer, align 8, !dbg !1242, !tbaa !926
  %3 = load %struct.Bitstream** %data, align 8, !dbg !1243, !tbaa !926
  %streamBuffer22 = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 9, !dbg !1243
  %4 = load i8** %streamBuffer22, align 8, !dbg !1243, !tbaa !926
  %cmp23 = icmp eq i8* %4, null, !dbg !1243
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1243

if.then25:                                        ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([60 x i8]* @.str8, i64 0, i64 0)) #8, !dbg !1243
  %.pre53 = load %struct.Bitstream** %data, align 8, !dbg !1244, !tbaa !926
  br label %if.end26, !dbg !1243

if.end26:                                         ; preds = %if.then25, %if.end
  %5 = phi %struct.Bitstream* [ %.pre53, %if.then25 ], [ %3, %if.end ]
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 1, !dbg !1244
  store i32 8, i32* %bits_to_go, align 4, !dbg !1244, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 0, !dbg !1245
  store i32 0, i32* %byte_pos, align 4, !dbg !1245, !tbaa !937
  %byte_buf = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 2, !dbg !1246
  store i8 0, i8* %byte_buf, align 1, !dbg !1246, !tbaa !927
  %6 = load %struct.Bitstream** %data, align 8, !dbg !1247, !tbaa !926
  %streamBuffer39 = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 9, !dbg !1247
  %7 = load i8** %streamBuffer39, align 8, !dbg !1247, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 65496, i32 1, i1 false), !dbg !1247
  ret void, !dbg !1248
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateSubseqInfo(i32 %currLayer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %currLayer}, i64 0, metadata !221), !dbg !1249
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1250, !tbaa !926
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1250
  %1 = load i32* %type, align 4, !dbg !1250, !tbaa !937
  %cmp = icmp eq i32 %1, 1, !dbg !1250
  br i1 %cmp, label %if.end, label %if.then, !dbg !1250

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %currLayer to i64, !dbg !1251
  %stored_frame_cnt = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 3, !dbg !1251
  %2 = load i32* %stored_frame_cnt, align 4, !dbg !1251, !tbaa !937
  %inc = add i32 %2, 1, !dbg !1251
  %rem = and i32 %inc, 255, !dbg !1253
  store i32 %rem, i32* %stored_frame_cnt, align 4, !dbg !1253, !tbaa !937
  br label %if.end, !dbg !1254

if.end:                                           ; preds = %entry, %if.then
  switch i32 %currLayer, label %if.end48 [
    i32 0, label %if.then8
    i32 1, label %if.then19
  ], !dbg !1255

if.then8:                                         ; preds = %if.end
  %number = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0, !dbg !1256
  %3 = load i32* %number, align 4, !dbg !1256, !tbaa !937
  %4 = load %struct.InputParameters** @input, align 8, !dbg !1256, !tbaa !926
  %no_frames = getelementptr inbounds %struct.InputParameters* %4, i64 0, i32 2, !dbg !1256
  %5 = load i32* %no_frames, align 4, !dbg !1256, !tbaa !937
  %sub = add nsw i32 %5, -1, !dbg !1256
  %cmp9 = icmp eq i32 %3, %sub, !dbg !1256
  br i1 %cmp9, label %if.end17, label %if.end17.thread, !dbg !1256

if.end17.thread:                                  ; preds = %if.then8
  store i32 0, i32* getelementptr inbounds ([2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 0, i32 2), align 8, !dbg !1258, !tbaa !937
  br label %if.end48, !dbg !1259

if.end17:                                         ; preds = %if.then8
  store i32 1, i32* getelementptr inbounds ([2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 0, i32 2), align 8, !dbg !1260, !tbaa !937
  br label %if.end48

if.then19:                                        ; preds = %if.end
  %number20 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 0, !dbg !1261
  %6 = load i32* %number20, align 4, !dbg !1261, !tbaa !937
  %7 = load i32* @start_frame_no_in_this_IGOP, align 4, !dbg !1261, !tbaa !937
  %sub21 = sub nsw i32 %6, %7, !dbg !1261
  %8 = load %struct.InputParameters** @input, align 8, !dbg !1261, !tbaa !926
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 99, !dbg !1261
  %9 = load i32* %NumFramesInELSubSeq, align 4, !dbg !1261, !tbaa !937
  %add = add nsw i32 %9, 1, !dbg !1261
  %rem22 = srem i32 %sub21, %add, !dbg !1261
  %cmp23 = icmp eq i32 %rem22, 0, !dbg !1261
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false, !dbg !1261

land.lhs.true:                                    ; preds = %if.then19
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 34, !dbg !1261
  %10 = load i32* %successive_Bframe, align 4, !dbg !1261, !tbaa !937
  %cmp24 = icmp ne i32 %10, 0, !dbg !1261
  %cmp28 = icmp sgt i32 %sub21, 0, !dbg !1261
  %or.cond = and i1 %cmp24, %cmp28, !dbg !1261
  br i1 %or.cond, label %if.then39, label %lor.lhs.false, !dbg !1261

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then19
  %cmp35 = icmp eq i32 %rem22, %9, !dbg !1261
  br i1 %cmp35, label %land.lhs.true36, label %if.else43, !dbg !1261

land.lhs.true36:                                  ; preds = %lor.lhs.false
  %successive_Bframe37 = getelementptr inbounds %struct.InputParameters* %8, i64 0, i32 34, !dbg !1261
  %11 = load i32* %successive_Bframe37, align 4, !dbg !1261, !tbaa !937
  %cmp38 = icmp eq i32 %11, 0, !dbg !1261
  br i1 %cmp38, label %if.then39, label %if.else43, !dbg !1261

if.then39:                                        ; preds = %land.lhs.true, %land.lhs.true36
  store i32 1, i32* getelementptr inbounds ([2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 1, i32 2), align 8, !dbg !1263, !tbaa !937
  br label %if.end48, !dbg !1263

if.else43:                                        ; preds = %land.lhs.true36, %lor.lhs.false
  store i32 0, i32* getelementptr inbounds ([2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 1, i32 2), align 8, !dbg !1264, !tbaa !937
  br label %if.end48

if.end48:                                         ; preds = %if.end17, %if.end17.thread, %if.end, %if.then39, %if.else43
  ret void, !dbg !1265
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeSubseqInfo(i32 %currLayer) #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  call void @llvm.dbg.value(metadata !{i32 %currLayer}, i64 0, metadata !224), !dbg !1266
  %0 = bitcast %struct.syntaxelement* %sym to i8*, !dbg !1267
  call void @llvm.lifetime.start(i64 48, i8* %0) #6, !dbg !1267
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %sym}, metadata !225), !dbg !1267
  %idxprom = sext i32 %currLayer to i64, !dbg !1268
  %data = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 5, !dbg !1268
  %1 = load %struct.Bitstream** %data, align 8, !dbg !1268, !tbaa !926
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %1}, i64 0, metadata !226), !dbg !1268
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0, !dbg !1269
  store i32 0, i32* %type, align 8, !dbg !1269, !tbaa !937
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8, !dbg !1270
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !1270, !tbaa !926
  %subseq_layer_num = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 0, !dbg !1271
  %2 = load i32* %subseq_layer_num, align 16, !dbg !1271, !tbaa !937
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1, !dbg !1271
  store i32 %2, i32* %value1, align 4, !dbg !1271, !tbaa !937
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1272
  %subseq_id = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 1, !dbg !1273
  %3 = load i32* %subseq_id, align 4, !dbg !1273, !tbaa !937
  store i32 %3, i32* %value1, align 4, !dbg !1273, !tbaa !937
  %call6 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1274
  %last_picture_flag = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 2, !dbg !1275
  %4 = load i32* %last_picture_flag, align 8, !dbg !1275, !tbaa !937
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5, !dbg !1275
  store i32 %4, i32* %bitpattern, align 4, !dbg !1275, !tbaa !937
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3, !dbg !1276
  store i32 1, i32* %len, align 4, !dbg !1276, !tbaa !937
  %call9 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1277
  %stored_frame_cnt = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 3, !dbg !1278
  %5 = load i32* %stored_frame_cnt, align 4, !dbg !1278, !tbaa !937
  store i32 %5, i32* %value1, align 4, !dbg !1278, !tbaa !937
  %call13 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1279
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1, !dbg !1280
  %6 = load i32* %bits_to_go, align 4, !dbg !1280, !tbaa !937
  %cmp = icmp eq i32 %6, 8, !dbg !1280
  br i1 %cmp, label %entry.if.end33_crit_edge, label %if.then, !dbg !1280

entry.if.end33_crit_edge:                         ; preds = %entry
  %byte_pos34.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1281
  br label %if.end33, !dbg !1280

if.then:                                          ; preds = %entry
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2, !dbg !1282
  %7 = load i8* %byte_buf, align 1, !dbg !1282, !tbaa !927
  %shl = shl i8 %7, 1, !dbg !1282
  %or = or i8 %shl, 1, !dbg !1284
  store i8 %or, i8* %byte_buf, align 1, !dbg !1284, !tbaa !927
  %dec = add nsw i32 %6, -1, !dbg !1285
  store i32 %dec, i32* %bits_to_go, align 4, !dbg !1285, !tbaa !937
  %cmp20 = icmp eq i32 %dec, 0, !dbg !1286
  br i1 %cmp20, label %if.end, label %if.then22, !dbg !1286

if.then22:                                        ; preds = %if.then
  %conv25 = zext i8 %or to i32, !dbg !1286
  %shl26 = shl i32 %conv25, %dec, !dbg !1286
  %conv27 = trunc i32 %shl26 to i8, !dbg !1286
  store i8 %conv27, i8* %byte_buf, align 1, !dbg !1286, !tbaa !927
  br label %if.end, !dbg !1286

if.end:                                           ; preds = %if.then, %if.then22
  %8 = phi i8 [ %or, %if.then ], [ %conv27, %if.then22 ]
  store i32 8, i32* %bits_to_go, align 4, !dbg !1287, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1288
  %9 = load i32* %byte_pos, align 4, !dbg !1288, !tbaa !937
  %inc = add nsw i32 %9, 1, !dbg !1288
  store i32 %inc, i32* %byte_pos, align 4, !dbg !1288, !tbaa !937
  %idxprom30 = sext i32 %9 to i64, !dbg !1288
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1288
  %10 = load i8** %streamBuffer, align 8, !dbg !1288, !tbaa !926
  %arrayidx31 = getelementptr inbounds i8* %10, i64 %idxprom30, !dbg !1288
  store i8 %8, i8* %arrayidx31, align 1, !dbg !1288, !tbaa !927
  store i8 0, i8* %byte_buf, align 1, !dbg !1289, !tbaa !927
  br label %if.end33, !dbg !1290

if.end33:                                         ; preds = %entry.if.end33_crit_edge, %if.end
  %byte_pos34.pre-phi = phi i32* [ %byte_pos34.pre, %entry.if.end33_crit_edge ], [ %byte_pos, %if.end ], !dbg !1281
  %11 = load i32* %byte_pos34.pre-phi, align 4, !dbg !1281, !tbaa !937
  %payloadSize = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 4, !dbg !1281
  store i32 %11, i32* %payloadSize, align 16, !dbg !1281, !tbaa !937
  call void @llvm.lifetime.end(i64 48, i8* %0) #6, !dbg !1291
  ret void, !dbg !1291
}

; Function Attrs: optsize
declare i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement*, %struct.Bitstream*) #3

; Function Attrs: nounwind optsize uwtable
define void @ClearSubseqInfoPayload(i32 %currLayer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %currLayer}, i64 0, metadata !229), !dbg !1292
  %idxprom = sext i32 %currLayer to i64, !dbg !1293
  %data = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 5, !dbg !1293
  %0 = load %struct.Bitstream** %data, align 8, !dbg !1293, !tbaa !926
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 1, !dbg !1293
  store i32 8, i32* %bits_to_go, align 4, !dbg !1293, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 0, !dbg !1294
  store i32 0, i32* %byte_pos, align 4, !dbg !1294, !tbaa !937
  %byte_buf = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 2, !dbg !1295
  store i8 0, i8* %byte_buf, align 1, !dbg !1295, !tbaa !927
  %1 = load %struct.Bitstream** %data, align 8, !dbg !1296, !tbaa !926
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1296
  %2 = load i8** %streamBuffer, align 8, !dbg !1296, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 65496, i32 1, i1 false), !dbg !1296
  %payloadSize = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 4, !dbg !1297
  store i32 0, i32* %payloadSize, align 16, !dbg !1297, !tbaa !937
  ret void, !dbg !1298
}

; Function Attrs: nounwind optsize uwtable
define void @CloseSubseqInfo(i32 %currLayer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %currLayer}, i64 0, metadata !232), !dbg !1299
  %idxprom = sext i32 %currLayer to i64, !dbg !1300
  %stored_frame_cnt = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 3, !dbg !1300
  store i32 -1, i32* %stored_frame_cnt, align 4, !dbg !1300, !tbaa !937
  %payloadSize = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 4, !dbg !1301
  store i32 0, i32* %payloadSize, align 16, !dbg !1301, !tbaa !937
  %data = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 5, !dbg !1302
  %0 = load %struct.Bitstream** %data, align 8, !dbg !1302, !tbaa !926
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1302
  %1 = load i8** %streamBuffer, align 8, !dbg !1302, !tbaa !926
  tail call void @free(i8* %1) #8, !dbg !1302
  %2 = load %struct.Bitstream** %data, align 8, !dbg !1303, !tbaa !926
  %3 = bitcast %struct.Bitstream* %2 to i8*, !dbg !1303
  tail call void @free(i8* %3) #8, !dbg !1303
  ret void, !dbg !1304
}

; Function Attrs: nounwind optsize uwtable
define void @InitSubseqLayerInfo() #0 {
entry:
  store i32 1, i32* @seiHasSubseqLayerInfo, align 4, !dbg !1305, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !dbg !1306, !tbaa !937
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !235), !dbg !1307
  br label %for.body, !dbg !1307

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 0, i64 %indvars.iv, !dbg !1308
  store i16 0, i16* %arrayidx, align 2, !dbg !1308, !tbaa !951
  %arrayidx2 = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 1, i64 %indvars.iv, !dbg !1309
  store i16 0, i16* %arrayidx2, align 2, !dbg !1309, !tbaa !951
  %0 = load i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !dbg !1310, !tbaa !937
  %inc = add nsw i32 %0, 1, !dbg !1310
  store i32 %inc, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !dbg !1310, !tbaa !937
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1307
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1307
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !1307
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1307

for.end:                                          ; preds = %for.body
  ret void, !dbg !1311
}

; Function Attrs: nounwind optsize readnone uwtable
define void @CloseSubseqLayerInfo() #7 {
entry:
  ret void, !dbg !1312
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeSubseqLayerInfo() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !240), !dbg !1313
  store i32 0, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 4), align 4, !dbg !1314, !tbaa !937
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !239), !dbg !1315
  %0 = load i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !dbg !1315, !tbaa !937
  %cmp16 = icmp sgt i32 %0, 0, !dbg !1315
  br i1 %cmp16, label %for.body, label %for.end, !dbg !1315

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body ], [ 0, %entry ], !dbg !1315
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 0, i64 %indvars.iv20, !dbg !1317
  %1 = load i16* %arrayidx, align 2, !dbg !1317, !tbaa !951
  %arrayidx2 = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 2, i64 %indvars.iv, !dbg !1317
  %2 = bitcast i8* %arrayidx2 to i16*, !dbg !1317
  store i16 %1, i16* %2, align 4, !dbg !1317, !tbaa !951
  %3 = or i64 %indvars.iv, 2, !dbg !1319
  %arrayidx4 = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 1, i64 %indvars.iv20, !dbg !1320
  %4 = load i16* %arrayidx4, align 2, !dbg !1320, !tbaa !951
  %arrayidx6 = getelementptr inbounds %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 2, i64 %3, !dbg !1320
  %5 = bitcast i8* %arrayidx6 to i16*, !dbg !1320
  store i16 %4, i16* %5, align 2, !dbg !1320, !tbaa !951
  %indvars.iv.next = add i64 %indvars.iv, 4, !dbg !1315
  %6 = load i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 4), align 4, !dbg !1321, !tbaa !937
  %add8 = add nsw i32 %6, 4, !dbg !1321
  store i32 %add8, i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 4), align 4, !dbg !1321, !tbaa !937
  %indvars.iv.next21 = add i64 %indvars.iv20, 1, !dbg !1315
  %7 = load i32* getelementptr inbounds (%struct.subseq_layer_information_struct* @seiSubseqLayerInfo, i64 0, i32 3), align 4, !dbg !1315, !tbaa !937
  %8 = trunc i64 %indvars.iv.next21 to i32, !dbg !1315
  %cmp = icmp slt i32 %8, %7, !dbg !1315
  br i1 %cmp, label %for.body, label %for.end, !dbg !1315

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !1322
}

; Function Attrs: nounwind optsize uwtable
define void @InitSubseqChar() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #8, !dbg !1323
  %0 = bitcast i8* %call to %struct.Bitstream*, !dbg !1323
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !dbg !1323, !tbaa !926
  %cmp = icmp eq i8* %call, null, !dbg !1324
  br i1 %cmp, label %if.then, label %if.end, !dbg !1324

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str9, i64 0, i64 0)) #8, !dbg !1324
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !dbg !1325, !tbaa !926
  br label %if.end, !dbg !1324

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #8, !dbg !1325
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1325
  store i8* %call1, i8** %streamBuffer, align 8, !dbg !1325, !tbaa !926
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !dbg !1326, !tbaa !926
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9, !dbg !1326
  %3 = load i8** %streamBuffer2, align 8, !dbg !1326, !tbaa !926
  %cmp3 = icmp eq i8* %3, null, !dbg !1326
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1326

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([49 x i8]* @.str10, i64 0, i64 0)) #8, !dbg !1326
  %.pre7 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !dbg !1327, !tbaa !926
  %streamBuffer.i.phi.trans.insert = getelementptr inbounds %struct.Bitstream* %.pre7, i64 0, i32 9
  %.pre8 = load i8** %streamBuffer.i.phi.trans.insert, align 8, !dbg !1327, !tbaa !926
  br label %if.end5, !dbg !1326

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = phi i8* [ %.pre8, %if.then4 ], [ %3, %if.end ]
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 65496, i32 1, i1 false) #6, !dbg !1327
  %5 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !dbg !1329, !tbaa !926
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 1, !dbg !1329
  store i32 8, i32* %bits_to_go.i, align 4, !dbg !1329, !tbaa !937
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 0, !dbg !1330
  store i32 0, i32* %byte_pos.i, align 4, !dbg !1330, !tbaa !937
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 2, !dbg !1331
  store i8 0, i8* %byte_buf.i, align 1, !dbg !1331, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 11), align 8, !dbg !1332, !tbaa !937
  store i32 0, i32* @seiHasSubseqChar, align 4, !dbg !1333, !tbaa !927
  %6 = load %struct.ImageParameters** @img, align 8, !dbg !1334, !tbaa !926
  %layer = getelementptr inbounds %struct.ImageParameters* %6, i64 0, i32 86, !dbg !1334
  %7 = load i32* %layer, align 4, !dbg !1334, !tbaa !937
  store i32 %7, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 0), align 8, !dbg !1334, !tbaa !937
  %8 = load i32* %layer, align 4, !dbg !1335, !tbaa !937
  %idxprom = sext i32 %8 to i64, !dbg !1335
  %subseq_id = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 1, !dbg !1335
  %9 = load i32* %subseq_id, align 4, !dbg !1335, !tbaa !937
  store i32 %9, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 1), align 4, !dbg !1335, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 2), align 8, !dbg !1336, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 4), align 8, !dbg !1337, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 7), align 4, !dbg !1338, !tbaa !937
  ret void, !dbg !1339
}

; Function Attrs: nounwind optsize uwtable
define void @ClearSubseqCharPayload() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !dbg !1340, !tbaa !926
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1340
  %1 = load i8** %streamBuffer, align 8, !dbg !1340, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false), !dbg !1340
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !dbg !1341, !tbaa !926
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 1, !dbg !1341
  store i32 8, i32* %bits_to_go, align 4, !dbg !1341, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 0, !dbg !1342
  store i32 0, i32* %byte_pos, align 4, !dbg !1342, !tbaa !937
  %byte_buf = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 2, !dbg !1343
  store i8 0, i8* %byte_buf, align 1, !dbg !1343, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 11), align 8, !dbg !1344, !tbaa !937
  store i32 0, i32* @seiHasSubseqChar, align 4, !dbg !1345, !tbaa !927
  ret void, !dbg !1346
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateSubseqChar() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1347, !tbaa !926
  %layer = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 86, !dbg !1347
  %1 = load i32* %layer, align 4, !dbg !1347, !tbaa !937
  store i32 %1, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 0), align 8, !dbg !1347, !tbaa !937
  %2 = load i32* %layer, align 4, !dbg !1348, !tbaa !937
  %idxprom = sext i32 %2 to i64, !dbg !1348
  %subseq_id = getelementptr inbounds [2 x %struct.subseq_information_struct]* @seiSubseqInfo, i64 0, i64 %idxprom, i32 1, !dbg !1348
  %3 = load i32* %subseq_id, align 4, !dbg !1348, !tbaa !937
  store i32 %3, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 1), align 4, !dbg !1348, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 2), align 8, !dbg !1349, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 4), align 8, !dbg !1350, !tbaa !937
  store i32 100, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 5), align 4, !dbg !1351, !tbaa !937
  store i32 30, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 6), align 8, !dbg !1352, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 7), align 4, !dbg !1353, !tbaa !937
  store i32 1, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 8, i64 0), align 8, !dbg !1354, !tbaa !937
  store i32 2, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 9, i64 0), align 4, !dbg !1355, !tbaa !937
  store i32 3, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 8, i64 1), align 4, !dbg !1356, !tbaa !937
  store i32 4, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 9, i64 1), align 4, !dbg !1357, !tbaa !937
  store i32 1, i32* @seiHasSubseqChar, align 4, !dbg !1358, !tbaa !927
  ret void, !dbg !1359
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeSubseqChar() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*, !dbg !1360
  call void @llvm.lifetime.start(i64 48, i8* %0) #6, !dbg !1360
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %sym}, metadata !247), !dbg !1360
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !dbg !1361, !tbaa !926
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %1}, i64 0, metadata !248), !dbg !1361
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0, !dbg !1362
  store i32 0, i32* %type, align 8, !dbg !1362, !tbaa !937
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8, !dbg !1363
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !1363, !tbaa !926
  %2 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 0), align 8, !dbg !1364, !tbaa !937
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1, !dbg !1364
  store i32 %2, i32* %value1, align 4, !dbg !1364, !tbaa !937
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1365
  %3 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 1), align 4, !dbg !1366, !tbaa !937
  store i32 %3, i32* %value1, align 4, !dbg !1366, !tbaa !937
  %call2 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1367
  %4 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 2), align 8, !dbg !1368, !tbaa !937
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5, !dbg !1368
  store i32 %4, i32* %bitpattern, align 4, !dbg !1368, !tbaa !937
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3, !dbg !1369
  store i32 1, i32* %len, align 4, !dbg !1369, !tbaa !937
  %call3 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1370
  %5 = load i64* bitcast (i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 2) to i64*), align 8, !dbg !1371
  %6 = trunc i64 %5 to i32, !dbg !1371
  %tobool = icmp eq i32 %6, 0, !dbg !1371
  br i1 %tobool, label %if.end, label %if.then, !dbg !1371

if.then:                                          ; preds = %entry
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %bitpattern, align 4, !dbg !1372, !tbaa !937
  store i32 32, i32* %len, align 4, !dbg !1374, !tbaa !937
  %call6 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1375
  br label %if.end, !dbg !1376

if.end:                                           ; preds = %entry, %if.then
  %9 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 4), align 8, !dbg !1377, !tbaa !937
  store i32 %9, i32* %bitpattern, align 4, !dbg !1377, !tbaa !937
  store i32 1, i32* %len, align 4, !dbg !1378, !tbaa !937
  %call9 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1379
  %10 = load i64* bitcast (i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 4) to i64*), align 8, !dbg !1380
  %11 = trunc i64 %10 to i32, !dbg !1380
  %tobool10 = icmp eq i32 %11, 0, !dbg !1380
  br i1 %tobool10, label %if.end18, label %if.then11, !dbg !1380

if.then11:                                        ; preds = %if.end
  %12 = lshr i64 %10, 32
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %bitpattern, align 4, !dbg !1381, !tbaa !937
  store i32 16, i32* %len, align 4, !dbg !1383, !tbaa !937
  %call14 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1384
  %14 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 6), align 8, !dbg !1385, !tbaa !937
  store i32 %14, i32* %bitpattern, align 4, !dbg !1385, !tbaa !937
  store i32 16, i32* %len, align 4, !dbg !1386, !tbaa !937
  %call17 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1387
  br label %if.end18, !dbg !1388

if.end18:                                         ; preds = %if.end, %if.then11
  %15 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 7), align 4, !dbg !1389, !tbaa !937
  store i32 %15, i32* %value1, align 4, !dbg !1389, !tbaa !937
  %call20 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1390
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !246), !dbg !1391
  %16 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 7), align 4, !dbg !1391, !tbaa !937
  %cmp77 = icmp sgt i32 %16, 0, !dbg !1391
  br i1 %cmp77, label %for.body, label %for.end, !dbg !1391

for.body:                                         ; preds = %if.end18, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end18 ]
  %arrayidx = getelementptr inbounds %struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 8, i64 %indvars.iv, !dbg !1393
  %17 = load i32* %arrayidx, align 4, !dbg !1393, !tbaa !937
  store i32 %17, i32* %value1, align 4, !dbg !1393, !tbaa !937
  %call22 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1395
  %arrayidx24 = getelementptr inbounds %struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 9, i64 %indvars.iv, !dbg !1396
  %18 = load i32* %arrayidx24, align 4, !dbg !1396, !tbaa !937
  store i32 %18, i32* %value1, align 4, !dbg !1396, !tbaa !937
  %call26 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1397
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1391
  %19 = load i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 7), align 4, !dbg !1391, !tbaa !937
  %20 = trunc i64 %indvars.iv.next to i32, !dbg !1391
  %cmp = icmp slt i32 %20, %19, !dbg !1391
  br i1 %cmp, label %for.body, label %for.end, !dbg !1391

for.end:                                          ; preds = %for.body, %if.end18
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1, !dbg !1398
  %21 = load i32* %bits_to_go, align 4, !dbg !1398, !tbaa !937
  %cmp27 = icmp eq i32 %21, 8, !dbg !1398
  br i1 %cmp27, label %for.end.if.end50_crit_edge, label %if.then28, !dbg !1398

for.end.if.end50_crit_edge:                       ; preds = %for.end
  %byte_pos51.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1399
  br label %if.end50, !dbg !1398

if.then28:                                        ; preds = %for.end
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2, !dbg !1400
  %22 = load i8* %byte_buf, align 1, !dbg !1400, !tbaa !927
  %shl = shl i8 %22, 1, !dbg !1400
  %or = or i8 %shl, 1, !dbg !1402
  store i8 %or, i8* %byte_buf, align 1, !dbg !1402, !tbaa !927
  %dec = add nsw i32 %21, -1, !dbg !1403
  store i32 %dec, i32* %bits_to_go, align 4, !dbg !1403, !tbaa !937
  %cmp35 = icmp eq i32 %dec, 0, !dbg !1404
  br i1 %cmp35, label %if.end43, label %if.then37, !dbg !1404

if.then37:                                        ; preds = %if.then28
  %conv40 = zext i8 %or to i32, !dbg !1404
  %shl41 = shl i32 %conv40, %dec, !dbg !1404
  %conv42 = trunc i32 %shl41 to i8, !dbg !1404
  store i8 %conv42, i8* %byte_buf, align 1, !dbg !1404, !tbaa !927
  br label %if.end43, !dbg !1404

if.end43:                                         ; preds = %if.then28, %if.then37
  %23 = phi i8 [ %or, %if.then28 ], [ %conv42, %if.then37 ]
  store i32 8, i32* %bits_to_go, align 4, !dbg !1405, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1406
  %24 = load i32* %byte_pos, align 4, !dbg !1406, !tbaa !937
  %inc46 = add nsw i32 %24, 1, !dbg !1406
  store i32 %inc46, i32* %byte_pos, align 4, !dbg !1406, !tbaa !937
  %idxprom47 = sext i32 %24 to i64, !dbg !1406
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1406
  %25 = load i8** %streamBuffer, align 8, !dbg !1406, !tbaa !926
  %arrayidx48 = getelementptr inbounds i8* %25, i64 %idxprom47, !dbg !1406
  store i8 %23, i8* %arrayidx48, align 1, !dbg !1406, !tbaa !927
  store i8 0, i8* %byte_buf, align 1, !dbg !1407, !tbaa !927
  br label %if.end50, !dbg !1408

if.end50:                                         ; preds = %for.end.if.end50_crit_edge, %if.end43
  %byte_pos51.pre-phi = phi i32* [ %byte_pos51.pre, %for.end.if.end50_crit_edge ], [ %byte_pos, %if.end43 ], !dbg !1399
  %26 = load i32* %byte_pos51.pre-phi, align 4, !dbg !1399, !tbaa !937
  store i32 %26, i32* getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 11), align 8, !dbg !1399, !tbaa !937
  call void @llvm.lifetime.end(i64 48, i8* %0) #6, !dbg !1409
  ret void, !dbg !1409
}

; Function Attrs: nounwind optsize uwtable
define void @CloseSubseqChar() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !dbg !1410, !tbaa !926
  %tobool = icmp eq %struct.Bitstream* %0, null, !dbg !1410
  br i1 %tobool, label %if.end, label %if.then, !dbg !1410

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1411
  %1 = load i8** %streamBuffer, align 8, !dbg !1411, !tbaa !926
  tail call void @free(i8* %1) #8, !dbg !1411
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !dbg !1413, !tbaa !926
  %3 = bitcast %struct.Bitstream* %2 to i8*, !dbg !1413
  tail call void @free(i8* %3) #8, !dbg !1413
  br label %if.end, !dbg !1414

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.subseq_char_information_struct* @seiSubseqChar, i64 0, i32 10), align 8, !dbg !1415, !tbaa !926
  ret void, !dbg !1416
}

; Function Attrs: nounwind optsize uwtable
define void @InitSceneInformation() #0 {
entry:
  store i32 1, i32* @seiHasSceneInformation, align 4, !dbg !1417, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 0), align 8, !dbg !1418, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 1), align 4, !dbg !1419, !tbaa !937
  store i32 -1, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 2), align 8, !dbg !1420, !tbaa !937
  %call = tail call noalias i8* @malloc(i64 48) #8, !dbg !1421
  %0 = bitcast i8* %call to %struct.Bitstream*, !dbg !1421
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !dbg !1421, !tbaa !926
  %cmp = icmp eq i8* %call, null, !dbg !1422
  br i1 %cmp, label %if.then, label %if.end, !dbg !1422

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([47 x i8]* @.str11, i64 0, i64 0)) #8, !dbg !1422
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !dbg !1423, !tbaa !926
  br label %if.end, !dbg !1422

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #8, !dbg !1423
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1423
  store i8* %call1, i8** %streamBuffer, align 8, !dbg !1423, !tbaa !926
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !dbg !1424, !tbaa !926
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9, !dbg !1424
  %3 = load i8** %streamBuffer2, align 8, !dbg !1424, !tbaa !926
  %cmp3 = icmp eq i8* %3, null, !dbg !1424
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1424

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([61 x i8]* @.str12, i64 0, i64 0)) #8, !dbg !1424
  %.pre7 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !dbg !1425, !tbaa !926
  br label %if.end5, !dbg !1424

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = phi %struct.Bitstream* [ %.pre7, %if.then4 ], [ %2, %if.end ]
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 1, !dbg !1425
  store i32 8, i32* %bits_to_go, align 4, !dbg !1425, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 0, !dbg !1426
  store i32 0, i32* %byte_pos, align 4, !dbg !1426, !tbaa !937
  %byte_buf = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 2, !dbg !1427
  store i8 0, i8* %byte_buf, align 1, !dbg !1427, !tbaa !927
  %5 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !dbg !1428, !tbaa !926
  %streamBuffer6 = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 9, !dbg !1428
  %6 = load i8** %streamBuffer6, align 8, !dbg !1428, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 65496, i32 1, i1 false), !dbg !1428
  ret void, !dbg !1429
}

; Function Attrs: nounwind optsize uwtable
define void @CloseSceneInformation() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !dbg !1430, !tbaa !926
  %tobool = icmp eq %struct.Bitstream* %0, null, !dbg !1430
  br i1 %tobool, label %if.end, label %if.then, !dbg !1430

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1431
  %1 = load i8** %streamBuffer, align 8, !dbg !1431, !tbaa !926
  tail call void @free(i8* %1) #8, !dbg !1431
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !dbg !1433, !tbaa !926
  %3 = bitcast %struct.Bitstream* %2 to i8*, !dbg !1433
  tail call void @free(i8* %3) #8, !dbg !1433
  br label %if.end, !dbg !1434

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !dbg !1435, !tbaa !926
  ret void, !dbg !1436
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeSceneInformation() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*, !dbg !1437
  call void @llvm.lifetime.start(i64 48, i8* %0) #6, !dbg !1437
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %sym}, metadata !254), !dbg !1437
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 3), align 8, !dbg !1438, !tbaa !926
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %1}, i64 0, metadata !255), !dbg !1438
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0, !dbg !1439
  store i32 0, i32* %type, align 8, !dbg !1439, !tbaa !937
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8, !dbg !1440
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !1440, !tbaa !926
  %2 = load i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 0), align 8, !dbg !1441, !tbaa !937
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5, !dbg !1441
  store i32 %2, i32* %bitpattern, align 4, !dbg !1441, !tbaa !937
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3, !dbg !1442
  store i32 8, i32* %len, align 4, !dbg !1442, !tbaa !937
  %call = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1443
  %3 = load i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 1), align 4, !dbg !1444, !tbaa !937
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1, !dbg !1444
  store i32 %3, i32* %value1, align 4, !dbg !1444, !tbaa !937
  %call1 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1445
  %4 = load i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 1), align 4, !dbg !1446, !tbaa !937
  %cmp = icmp sgt i32 %4, 3, !dbg !1446
  br i1 %cmp, label %if.then, label %if.end, !dbg !1446

if.then:                                          ; preds = %entry
  %5 = load i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 2), align 8, !dbg !1447, !tbaa !937
  store i32 %5, i32* %bitpattern, align 4, !dbg !1447, !tbaa !937
  store i32 8, i32* %len, align 4, !dbg !1449, !tbaa !937
  %call4 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1450
  br label %if.end, !dbg !1451

if.end:                                           ; preds = %if.then, %entry
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1, !dbg !1452
  %6 = load i32* %bits_to_go, align 4, !dbg !1452, !tbaa !937
  %cmp5 = icmp eq i32 %6, 8, !dbg !1452
  br i1 %cmp5, label %if.end.if.end25_crit_edge, label %if.then6, !dbg !1452

if.end.if.end25_crit_edge:                        ; preds = %if.end
  %byte_pos26.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1453
  br label %if.end25, !dbg !1452

if.then6:                                         ; preds = %if.end
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2, !dbg !1454
  %7 = load i8* %byte_buf, align 1, !dbg !1454, !tbaa !927
  %shl = shl i8 %7, 1, !dbg !1454
  %or = or i8 %shl, 1, !dbg !1456
  store i8 %or, i8* %byte_buf, align 1, !dbg !1456, !tbaa !927
  %dec = add nsw i32 %6, -1, !dbg !1457
  store i32 %dec, i32* %bits_to_go, align 4, !dbg !1457, !tbaa !937
  %cmp13 = icmp eq i32 %dec, 0, !dbg !1458
  br i1 %cmp13, label %if.end21, label %if.then15, !dbg !1458

if.then15:                                        ; preds = %if.then6
  %conv18 = zext i8 %or to i32, !dbg !1458
  %shl19 = shl i32 %conv18, %dec, !dbg !1458
  %conv20 = trunc i32 %shl19 to i8, !dbg !1458
  store i8 %conv20, i8* %byte_buf, align 1, !dbg !1458, !tbaa !927
  br label %if.end21, !dbg !1458

if.end21:                                         ; preds = %if.then6, %if.then15
  %8 = phi i8 [ %or, %if.then6 ], [ %conv20, %if.then15 ]
  store i32 8, i32* %bits_to_go, align 4, !dbg !1459, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1460
  %9 = load i32* %byte_pos, align 4, !dbg !1460, !tbaa !937
  %inc = add nsw i32 %9, 1, !dbg !1460
  store i32 %inc, i32* %byte_pos, align 4, !dbg !1460, !tbaa !937
  %idxprom = sext i32 %9 to i64, !dbg !1460
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1460
  %10 = load i8** %streamBuffer, align 8, !dbg !1460, !tbaa !926
  %arrayidx = getelementptr inbounds i8* %10, i64 %idxprom, !dbg !1460
  store i8 %8, i8* %arrayidx, align 1, !dbg !1460, !tbaa !927
  store i8 0, i8* %byte_buf, align 1, !dbg !1461, !tbaa !927
  br label %if.end25, !dbg !1462

if.end25:                                         ; preds = %if.end.if.end25_crit_edge, %if.end21
  %byte_pos26.pre-phi = phi i32* [ %byte_pos26.pre, %if.end.if.end25_crit_edge ], [ %byte_pos, %if.end21 ], !dbg !1453
  %11 = load i32* %byte_pos26.pre-phi, align 4, !dbg !1453, !tbaa !937
  store i32 %11, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 4), align 8, !dbg !1453, !tbaa !937
  call void @llvm.lifetime.end(i64 48, i8* %0) #6, !dbg !1463
  ret void, !dbg !1463
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateSceneInformation(i32 %HasSceneInformation, i32 %sceneID, i32 %sceneTransType, i32 %secondSceneID) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %HasSceneInformation}, i64 0, metadata !260), !dbg !1464
  tail call void @llvm.dbg.value(metadata !{i32 %sceneID}, i64 0, metadata !261), !dbg !1464
  tail call void @llvm.dbg.value(metadata !{i32 %sceneTransType}, i64 0, metadata !262), !dbg !1464
  tail call void @llvm.dbg.value(metadata !{i32 %secondSceneID}, i64 0, metadata !263), !dbg !1464
  store i32 %HasSceneInformation, i32* @seiHasSceneInformation, align 4, !dbg !1465, !tbaa !927
  %cmp = icmp slt i32 %sceneID, 256, !dbg !1466
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !1466

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str2, i64 0, i64 0), i32 1196, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.UpdateSceneInformation, i64 0, i64 0)) #10, !dbg !1466
  unreachable, !dbg !1466

cond.end:                                         ; preds = %entry
  store i32 %sceneID, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 0), align 8, !dbg !1467, !tbaa !937
  %cmp1 = icmp slt i32 %sceneTransType, 7, !dbg !1468
  br i1 %cmp1, label %cond.end4, label %cond.false3, !dbg !1468

cond.false3:                                      ; preds = %cond.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str2, i64 0, i64 0), i32 1199, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.UpdateSceneInformation, i64 0, i64 0)) #10, !dbg !1468
  unreachable, !dbg !1468

cond.end4:                                        ; preds = %cond.end
  store i32 %sceneTransType, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 1), align 4, !dbg !1469, !tbaa !937
  %cmp5 = icmp sgt i32 %sceneTransType, 3, !dbg !1470
  br i1 %cmp5, label %if.then, label %if.end, !dbg !1470

if.then:                                          ; preds = %cond.end4
  %cmp6 = icmp slt i32 %secondSceneID, 256, !dbg !1471
  br i1 %cmp6, label %cond.end9, label %cond.false8, !dbg !1471

cond.false8:                                      ; preds = %if.then
  tail call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str2, i64 0, i64 0), i32 1204, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.UpdateSceneInformation, i64 0, i64 0)) #10, !dbg !1471
  unreachable, !dbg !1471

cond.end9:                                        ; preds = %if.then
  store i32 %secondSceneID, i32* getelementptr inbounds (%struct.scene_information_struct* @seiSceneInformation, i64 0, i32 2), align 8, !dbg !1473, !tbaa !937
  br label %if.end, !dbg !1474

if.end:                                           ; preds = %cond.end9, %cond.end4
  ret void, !dbg !1475
}

; Function Attrs: nounwind optsize uwtable
define void @InitPanScanRectInfo() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #8, !dbg !1476
  %0 = bitcast i8* %call to %struct.Bitstream*, !dbg !1476
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !dbg !1476, !tbaa !926
  %cmp = icmp eq i8* %call, null, !dbg !1477
  br i1 %cmp, label %if.then, label %if.end, !dbg !1477

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([45 x i8]* @.str16, i64 0, i64 0)) #8, !dbg !1477
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !dbg !1478, !tbaa !926
  br label %if.end, !dbg !1477

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #8, !dbg !1478
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1478
  store i8* %call1, i8** %streamBuffer, align 8, !dbg !1478, !tbaa !926
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !dbg !1479, !tbaa !926
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9, !dbg !1479
  %3 = load i8** %streamBuffer2, align 8, !dbg !1479, !tbaa !926
  %cmp3 = icmp eq i8* %3, null, !dbg !1479
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1479

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0)) #8, !dbg !1479
  %.pre6 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !dbg !1480, !tbaa !926
  %streamBuffer.i.phi.trans.insert = getelementptr inbounds %struct.Bitstream* %.pre6, i64 0, i32 9
  %.pre7 = load i8** %streamBuffer.i.phi.trans.insert, align 8, !dbg !1480, !tbaa !926
  br label %if.end5, !dbg !1479

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = phi i8* [ %.pre7, %if.then4 ], [ %3, %if.end ]
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 65496, i32 1, i1 false) #6, !dbg !1480
  %5 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !dbg !1482, !tbaa !926
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 1, !dbg !1482
  store i32 8, i32* %bits_to_go.i, align 4, !dbg !1482, !tbaa !937
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 0, !dbg !1483
  store i32 0, i32* %byte_pos.i, align 4, !dbg !1483, !tbaa !937
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 2, !dbg !1484
  store i8 0, i8* %byte_buf.i, align 1, !dbg !1484, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 6), align 8, !dbg !1485, !tbaa !937
  store i32 1, i32* @seiHasPanScanRectInfo, align 4, !dbg !1486, !tbaa !927
  call void @llvm.memset.p0i8.i64(i8* bitcast (i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 1) to i8*), i8 0, i64 16, i32 4, i1 false), !dbg !1487
  ret void, !dbg !1488
}

; Function Attrs: nounwind optsize uwtable
define void @ClearPanScanRectInfoPayload() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !dbg !1489, !tbaa !926
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1489
  %1 = load i8** %streamBuffer, align 8, !dbg !1489, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false), !dbg !1489
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !dbg !1490, !tbaa !926
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 1, !dbg !1490
  store i32 8, i32* %bits_to_go, align 4, !dbg !1490, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 0, !dbg !1491
  store i32 0, i32* %byte_pos, align 4, !dbg !1491, !tbaa !937
  %byte_buf = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 2, !dbg !1492
  store i8 0, i8* %byte_buf, align 1, !dbg !1492, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 6), align 8, !dbg !1493, !tbaa !937
  store i32 1, i32* @seiHasPanScanRectInfo, align 4, !dbg !1494, !tbaa !927
  ret void, !dbg !1495
}

; Function Attrs: nounwind optsize uwtable
define void @UpdatePanScanRectInfo() #0 {
entry:
  store i32 3, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 0), align 8, !dbg !1496, !tbaa !937
  store i32 10, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 1), align 4, !dbg !1497, !tbaa !937
  store i32 40, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 2), align 8, !dbg !1498, !tbaa !937
  store i32 20, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 3), align 4, !dbg !1499, !tbaa !937
  store i32 32, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 4), align 8, !dbg !1500, !tbaa !937
  store i32 1, i32* @seiHasPanScanRectInfo, align 4, !dbg !1501, !tbaa !927
  ret void, !dbg !1502
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizePanScanRectInfo() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*, !dbg !1503
  call void @llvm.lifetime.start(i64 48, i8* %0) #6, !dbg !1503
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %sym}, metadata !269), !dbg !1503
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !dbg !1504, !tbaa !926
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %1}, i64 0, metadata !270), !dbg !1504
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0, !dbg !1505
  store i32 0, i32* %type, align 8, !dbg !1505, !tbaa !937
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8, !dbg !1506
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !1506, !tbaa !926
  %2 = load i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 0), align 8, !dbg !1507, !tbaa !937
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1, !dbg !1507
  store i32 %2, i32* %value1, align 4, !dbg !1507, !tbaa !937
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1508
  %3 = load i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 1), align 4, !dbg !1509, !tbaa !937
  store i32 %3, i32* %value1, align 4, !dbg !1509, !tbaa !937
  %call2 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1510
  %4 = load i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 2), align 8, !dbg !1511, !tbaa !937
  store i32 %4, i32* %value1, align 4, !dbg !1511, !tbaa !937
  %call4 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1512
  %5 = load i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 3), align 4, !dbg !1513, !tbaa !937
  store i32 %5, i32* %value1, align 4, !dbg !1513, !tbaa !937
  %call6 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1514
  %6 = load i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 4), align 8, !dbg !1515, !tbaa !937
  store i32 %6, i32* %value1, align 4, !dbg !1515, !tbaa !937
  %call8 = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1516
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1, !dbg !1517
  %7 = load i32* %bits_to_go, align 4, !dbg !1517, !tbaa !937
  %cmp = icmp eq i32 %7, 8, !dbg !1517
  br i1 %cmp, label %entry.if.end26_crit_edge, label %if.then, !dbg !1517

entry.if.end26_crit_edge:                         ; preds = %entry
  %byte_pos27.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1518
  br label %if.end26, !dbg !1517

if.then:                                          ; preds = %entry
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2, !dbg !1519
  %8 = load i8* %byte_buf, align 1, !dbg !1519, !tbaa !927
  %shl = shl i8 %8, 1, !dbg !1519
  %or = or i8 %shl, 1, !dbg !1521
  store i8 %or, i8* %byte_buf, align 1, !dbg !1521, !tbaa !927
  %dec = add nsw i32 %7, -1, !dbg !1522
  store i32 %dec, i32* %bits_to_go, align 4, !dbg !1522, !tbaa !937
  %cmp15 = icmp eq i32 %dec, 0, !dbg !1523
  br i1 %cmp15, label %if.end, label %if.then17, !dbg !1523

if.then17:                                        ; preds = %if.then
  %conv20 = zext i8 %or to i32, !dbg !1523
  %shl21 = shl i32 %conv20, %dec, !dbg !1523
  %conv22 = trunc i32 %shl21 to i8, !dbg !1523
  store i8 %conv22, i8* %byte_buf, align 1, !dbg !1523, !tbaa !927
  br label %if.end, !dbg !1523

if.end:                                           ; preds = %if.then, %if.then17
  %9 = phi i8 [ %or, %if.then ], [ %conv22, %if.then17 ]
  store i32 8, i32* %bits_to_go, align 4, !dbg !1524, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1525
  %10 = load i32* %byte_pos, align 4, !dbg !1525, !tbaa !937
  %inc = add nsw i32 %10, 1, !dbg !1525
  store i32 %inc, i32* %byte_pos, align 4, !dbg !1525, !tbaa !937
  %idxprom = sext i32 %10 to i64, !dbg !1525
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1525
  %11 = load i8** %streamBuffer, align 8, !dbg !1525, !tbaa !926
  %arrayidx = getelementptr inbounds i8* %11, i64 %idxprom, !dbg !1525
  store i8 %9, i8* %arrayidx, align 1, !dbg !1525, !tbaa !927
  store i8 0, i8* %byte_buf, align 1, !dbg !1526, !tbaa !927
  br label %if.end26, !dbg !1527

if.end26:                                         ; preds = %entry.if.end26_crit_edge, %if.end
  %byte_pos27.pre-phi = phi i32* [ %byte_pos27.pre, %entry.if.end26_crit_edge ], [ %byte_pos, %if.end ], !dbg !1518
  %12 = load i32* %byte_pos27.pre-phi, align 4, !dbg !1518, !tbaa !937
  store i32 %12, i32* getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 6), align 8, !dbg !1518, !tbaa !937
  call void @llvm.lifetime.end(i64 48, i8* %0) #6, !dbg !1528
  ret void, !dbg !1528
}

; Function Attrs: nounwind optsize uwtable
define void @ClosePanScanRectInfo() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !dbg !1529, !tbaa !926
  %tobool = icmp eq %struct.Bitstream* %0, null, !dbg !1529
  br i1 %tobool, label %if.end, label %if.then, !dbg !1529

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1530
  %1 = load i8** %streamBuffer, align 8, !dbg !1530, !tbaa !926
  tail call void @free(i8* %1) #8, !dbg !1530
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !dbg !1532, !tbaa !926
  %3 = bitcast %struct.Bitstream* %2 to i8*, !dbg !1532
  tail call void @free(i8* %3) #8, !dbg !1532
  br label %if.end, !dbg !1533

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.panscanrect_information_struct* @seiPanScanRectInfo, i64 0, i32 5), align 8, !dbg !1534, !tbaa !926
  ret void, !dbg !1535
}

; Function Attrs: nounwind optsize uwtable
define void @InitUser_data_unregistered() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #8, !dbg !1536
  %0 = bitcast i8* %call to %struct.Bitstream*, !dbg !1536
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !dbg !1536, !tbaa !926
  %cmp = icmp eq i8* %call, null, !dbg !1537
  br i1 %cmp, label %if.then, label %if.end, !dbg !1537

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([59 x i8]* @.str18, i64 0, i64 0)) #8, !dbg !1537
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !dbg !1538, !tbaa !926
  br label %if.end, !dbg !1537

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #8, !dbg !1538
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1538
  store i8* %call1, i8** %streamBuffer, align 8, !dbg !1538, !tbaa !926
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !dbg !1539, !tbaa !926
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9, !dbg !1539
  %3 = load i8** %streamBuffer2, align 8, !dbg !1539, !tbaa !926
  %cmp3 = icmp eq i8* %3, null, !dbg !1539
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1539

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([73 x i8]* @.str19, i64 0, i64 0)) #8, !dbg !1539
  br label %if.end5, !dbg !1539

if.end5:                                          ; preds = %if.then4, %if.end
  %call6 = tail call noalias i8* @malloc(i64 65496) #8, !dbg !1540
  store i8* %call6, i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !dbg !1540, !tbaa !926
  %cmp7 = icmp eq i8* %call6, null, !dbg !1541
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1541

if.then8:                                         ; preds = %if.end5
  tail call void @no_mem_exit(i8* getelementptr inbounds ([59 x i8]* @.str20, i64 0, i64 0)) #8, !dbg !1541
  br label %if.end9, !dbg !1541

if.end9:                                          ; preds = %if.end5, %if.then8
  %4 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !dbg !1542, !tbaa !926
  %streamBuffer.i = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 9, !dbg !1542
  %5 = load i8** %streamBuffer.i, align 8, !dbg !1542, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 65496, i32 1, i1 false) #6, !dbg !1542
  %6 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !dbg !1544, !tbaa !926
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 1, !dbg !1544
  store i32 8, i32* %bits_to_go.i, align 4, !dbg !1544, !tbaa !937
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 0, !dbg !1545
  store i32 0, i32* %byte_pos.i, align 4, !dbg !1545, !tbaa !937
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %6, i64 0, i32 2, !dbg !1546
  store i8 0, i8* %byte_buf.i, align 1, !dbg !1546, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 3), align 8, !dbg !1547, !tbaa !937
  %7 = load i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !dbg !1548, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 65496, i32 1, i1 false) #6, !dbg !1548
  store i32 0, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 1), align 8, !dbg !1549, !tbaa !937
  store i32 1, i32* @seiHasUser_data_unregistered_info, align 4, !dbg !1550, !tbaa !927
  ret void, !dbg !1551
}

; Function Attrs: nounwind optsize uwtable
define void @ClearUser_data_unregistered() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !dbg !1552, !tbaa !926
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1552
  %1 = load i8** %streamBuffer, align 8, !dbg !1552, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false), !dbg !1552
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !dbg !1553, !tbaa !926
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 1, !dbg !1553
  store i32 8, i32* %bits_to_go, align 4, !dbg !1553, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 0, !dbg !1554
  store i32 0, i32* %byte_pos, align 4, !dbg !1554, !tbaa !937
  %byte_buf = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 2, !dbg !1555
  store i8 0, i8* %byte_buf, align 1, !dbg !1555, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 3), align 8, !dbg !1556, !tbaa !937
  %3 = load i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !dbg !1557, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 65496, i32 1, i1 false), !dbg !1557
  store i32 0, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 1), align 8, !dbg !1558, !tbaa !937
  store i32 1, i32* @seiHasUser_data_unregistered_info, align 4, !dbg !1559, !tbaa !927
  ret void, !dbg !1560
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateUser_data_unregistered() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !1561, i64 0, metadata !278), !dbg !1562
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !276), !dbg !1563
  br label %for.body, !dbg !1563

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = shl nsw i64 %indvars.iv, 2, !dbg !1565
  %1 = trunc i64 %0 to i32, !dbg !1567
  %cmp2 = icmp slt i32 %1, 0, !dbg !1567
  %phitmp = trunc i64 %0 to i8, !dbg !1567
  %.phitmp = select i1 %cmp2, i8 0, i8 %phitmp, !dbg !1567
  %2 = load i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !dbg !1567, !tbaa !926
  %arrayidx = getelementptr inbounds i8* %2, i64 %indvars.iv, !dbg !1567
  store i8 %.phitmp, i8* %arrayidx, align 1, !dbg !1567, !tbaa !927
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1563
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1563
  %exitcond = icmp eq i32 %lftr.wideiv, 7, !dbg !1563
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1563

for.end:                                          ; preds = %for.body
  store i32 7, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 1), align 8, !dbg !1568, !tbaa !937
  ret void, !dbg !1569
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeUser_data_unregistered() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*, !dbg !1570
  call void @llvm.lifetime.start(i64 48, i8* %0) #6, !dbg !1570
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %sym}, metadata !282), !dbg !1570
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !dbg !1571, !tbaa !926
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %1}, i64 0, metadata !283), !dbg !1571
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0, !dbg !1572
  store i32 0, i32* %type, align 8, !dbg !1572, !tbaa !937
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8, !dbg !1573
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !1573, !tbaa !926
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !281), !dbg !1574
  %2 = load i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 1), align 8, !dbg !1574, !tbaa !937
  %cmp41 = icmp sgt i32 %2, 0, !dbg !1574
  br i1 %cmp41, label %for.body.lr.ph, label %for.end, !dbg !1574

for.body.lr.ph:                                   ; preds = %entry
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5, !dbg !1576
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3, !dbg !1578
  br label %for.body, !dbg !1574

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %3 = load i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !dbg !1576, !tbaa !926
  %arrayidx = getelementptr inbounds i8* %3, i64 %indvars.iv, !dbg !1576
  %4 = load i8* %arrayidx, align 1, !dbg !1576, !tbaa !927
  %conv = sext i8 %4 to i32, !dbg !1576
  store i32 %conv, i32* %bitpattern, align 4, !dbg !1576, !tbaa !937
  store i32 8, i32* %len, align 4, !dbg !1578, !tbaa !937
  %call = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1579
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1574
  %5 = load i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 1), align 8, !dbg !1574, !tbaa !937
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !1574
  %cmp = icmp slt i32 %6, %5, !dbg !1574
  br i1 %cmp, label %for.body, label %for.end, !dbg !1574

for.end:                                          ; preds = %for.body, %entry
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1, !dbg !1580
  %7 = load i32* %bits_to_go, align 4, !dbg !1580, !tbaa !937
  %cmp1 = icmp eq i32 %7, 8, !dbg !1580
  br i1 %cmp1, label %for.end.if.end24_crit_edge, label %if.then, !dbg !1580

for.end.if.end24_crit_edge:                       ; preds = %for.end
  %byte_pos25.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1581
  br label %if.end24, !dbg !1580

if.then:                                          ; preds = %for.end
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2, !dbg !1582
  %8 = load i8* %byte_buf, align 1, !dbg !1582, !tbaa !927
  %shl = shl i8 %8, 1, !dbg !1582
  %or = or i8 %shl, 1, !dbg !1584
  store i8 %or, i8* %byte_buf, align 1, !dbg !1584, !tbaa !927
  %dec = add nsw i32 %7, -1, !dbg !1585
  store i32 %dec, i32* %bits_to_go, align 4, !dbg !1585, !tbaa !937
  %cmp10 = icmp eq i32 %dec, 0, !dbg !1586
  br i1 %cmp10, label %if.end, label %if.then12, !dbg !1586

if.then12:                                        ; preds = %if.then
  %conv15 = zext i8 %or to i32, !dbg !1586
  %shl16 = shl i32 %conv15, %dec, !dbg !1586
  %conv17 = trunc i32 %shl16 to i8, !dbg !1586
  store i8 %conv17, i8* %byte_buf, align 1, !dbg !1586, !tbaa !927
  br label %if.end, !dbg !1586

if.end:                                           ; preds = %if.then, %if.then12
  %9 = phi i8 [ %or, %if.then ], [ %conv17, %if.then12 ]
  store i32 8, i32* %bits_to_go, align 4, !dbg !1587, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1588
  %10 = load i32* %byte_pos, align 4, !dbg !1588, !tbaa !937
  %inc20 = add nsw i32 %10, 1, !dbg !1588
  store i32 %inc20, i32* %byte_pos, align 4, !dbg !1588, !tbaa !937
  %idxprom21 = sext i32 %10 to i64, !dbg !1588
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1588
  %11 = load i8** %streamBuffer, align 8, !dbg !1588, !tbaa !926
  %arrayidx22 = getelementptr inbounds i8* %11, i64 %idxprom21, !dbg !1588
  store i8 %9, i8* %arrayidx22, align 1, !dbg !1588, !tbaa !927
  store i8 0, i8* %byte_buf, align 1, !dbg !1589, !tbaa !927
  br label %if.end24, !dbg !1590

if.end24:                                         ; preds = %for.end.if.end24_crit_edge, %if.end
  %byte_pos25.pre-phi = phi i32* [ %byte_pos25.pre, %for.end.if.end24_crit_edge ], [ %byte_pos, %if.end ], !dbg !1581
  %12 = load i32* %byte_pos25.pre-phi, align 4, !dbg !1581, !tbaa !937
  store i32 %12, i32* getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 3), align 8, !dbg !1581, !tbaa !937
  call void @llvm.lifetime.end(i64 48, i8* %0) #6, !dbg !1591
  ret void, !dbg !1591
}

; Function Attrs: nounwind optsize uwtable
define void @CloseUser_data_unregistered() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !dbg !1592, !tbaa !926
  %tobool = icmp eq %struct.Bitstream* %0, null, !dbg !1592
  br i1 %tobool, label %if.end, label %if.then, !dbg !1592

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1593
  %1 = load i8** %streamBuffer, align 8, !dbg !1593, !tbaa !926
  tail call void @free(i8* %1) #8, !dbg !1593
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !dbg !1595, !tbaa !926
  %3 = bitcast %struct.Bitstream* %2 to i8*, !dbg !1595
  tail call void @free(i8* %3) #8, !dbg !1595
  br label %if.end, !dbg !1596

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 2), align 8, !dbg !1597, !tbaa !926
  %4 = load i8** getelementptr inbounds (%struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, i64 0, i32 0), align 8, !dbg !1598, !tbaa !926
  %tobool1 = icmp eq i8* %4, null, !dbg !1598
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1598

if.then2:                                         ; preds = %if.end
  tail call void @free(i8* %4) #8, !dbg !1599
  br label %if.end3, !dbg !1601

if.end3:                                          ; preds = %if.end, %if.then2
  ret void, !dbg !1602
}

; Function Attrs: nounwind optsize uwtable
define void @InitUser_data_registered_itu_t_t35() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #8, !dbg !1603
  %0 = bitcast i8* %call to %struct.Bitstream*, !dbg !1603
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1603, !tbaa !926
  %cmp = icmp eq i8* %call, null, !dbg !1604
  br i1 %cmp, label %if.then, label %if.end, !dbg !1604

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([67 x i8]* @.str21, i64 0, i64 0)) #8, !dbg !1604
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1605, !tbaa !926
  br label %if.end, !dbg !1604

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #8, !dbg !1605
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1605
  store i8* %call1, i8** %streamBuffer, align 8, !dbg !1605, !tbaa !926
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1606, !tbaa !926
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9, !dbg !1606
  %3 = load i8** %streamBuffer2, align 8, !dbg !1606, !tbaa !926
  %cmp3 = icmp eq i8* %3, null, !dbg !1606
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1606

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([81 x i8]* @.str22, i64 0, i64 0)) #8, !dbg !1606
  %.pre10 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1607, !tbaa !926
  br label %if.end5, !dbg !1606

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = phi %struct.Bitstream* [ %.pre10, %if.then4 ], [ %2, %if.end ]
  %call6 = tail call noalias i8* @malloc(i64 65496) #8, !dbg !1608
  store i8* %call6, i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !dbg !1608, !tbaa !926
  %cmp7 = icmp eq %struct.Bitstream* %4, null, !dbg !1607
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1607

if.then8:                                         ; preds = %if.end5
  tail call void @no_mem_exit(i8* getelementptr inbounds ([67 x i8]* @.str23, i64 0, i64 0)) #8, !dbg !1607
  %.pre11 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1609, !tbaa !926
  br label %if.end9, !dbg !1607

if.end9:                                          ; preds = %if.then8, %if.end5
  %5 = phi %struct.Bitstream* [ %.pre11, %if.then8 ], [ %4, %if.end5 ]
  %streamBuffer.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 9, !dbg !1609
  %6 = load i8** %streamBuffer.i, align 8, !dbg !1609, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 65496, i32 1, i1 false) #6, !dbg !1609
  %7 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1611, !tbaa !926
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 1, !dbg !1611
  store i32 8, i32* %bits_to_go.i, align 4, !dbg !1611, !tbaa !937
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 0, !dbg !1612
  store i32 0, i32* %byte_pos.i, align 4, !dbg !1612, !tbaa !937
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 2, !dbg !1613
  store i8 0, i8* %byte_buf.i, align 1, !dbg !1613, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 5), align 8, !dbg !1614, !tbaa !937
  %8 = load i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !dbg !1615, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 65496, i32 1, i1 false) #6, !dbg !1615
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 1), align 8, !dbg !1616, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 2), align 4, !dbg !1617, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 3), align 8, !dbg !1618, !tbaa !937
  store i32 1, i32* @seiHasUser_data_registered_itu_t_t35_info, align 4, !dbg !1619, !tbaa !927
  ret void, !dbg !1620
}

; Function Attrs: nounwind optsize uwtable
define void @ClearUser_data_registered_itu_t_t35() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1621, !tbaa !926
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1621
  %1 = load i8** %streamBuffer, align 8, !dbg !1621, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false), !dbg !1621
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1622, !tbaa !926
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 1, !dbg !1622
  store i32 8, i32* %bits_to_go, align 4, !dbg !1622, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 0, !dbg !1623
  store i32 0, i32* %byte_pos, align 4, !dbg !1623, !tbaa !937
  %byte_buf = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 2, !dbg !1624
  store i8 0, i8* %byte_buf, align 1, !dbg !1624, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 5), align 8, !dbg !1625, !tbaa !937
  %3 = load i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !dbg !1626, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 65496, i32 1, i1 false), !dbg !1626
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 1), align 8, !dbg !1627, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 2), align 4, !dbg !1628, !tbaa !937
  store i32 0, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 3), align 8, !dbg !1629, !tbaa !937
  store i32 1, i32* @seiHasUser_data_registered_itu_t_t35_info, align 4, !dbg !1630, !tbaa !927
  ret void, !dbg !1631
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateUser_data_registered_itu_t_t35() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !1632, i64 0, metadata !292), !dbg !1633
  store i32 82, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 2), align 4, !dbg !1634, !tbaa !937
  tail call void @llvm.dbg.value(metadata !1561, i64 0, metadata !291), !dbg !1636
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !289), !dbg !1637
  br label %for.body, !dbg !1637

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %mul = mul nsw i32 %i.022, 3, !dbg !1639
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !290), !dbg !1639
  %phitmp = trunc i32 %mul to i8, !dbg !1641
  %0 = load i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !dbg !1641, !tbaa !926
  %arrayidx = getelementptr inbounds i8* %0, i64 %indvars.iv, !dbg !1641
  store i8 %phitmp, i8* %arrayidx, align 1, !dbg !1641, !tbaa !927
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1637
  %inc = add nsw i32 %i.022, 1, !dbg !1637
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !289), !dbg !1637
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1637
  %exitcond = icmp eq i32 %lftr.wideiv, 7, !dbg !1637
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1637

for.end:                                          ; preds = %for.body
  store i32 7, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 1), align 8, !dbg !1642, !tbaa !937
  ret void, !dbg !1643
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeUser_data_registered_itu_t_t35() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*, !dbg !1644
  call void @llvm.lifetime.start(i64 48, i8* %0) #6, !dbg !1644
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %sym}, metadata !296), !dbg !1644
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1645, !tbaa !926
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %1}, i64 0, metadata !297), !dbg !1645
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0, !dbg !1646
  store i32 0, i32* %type, align 8, !dbg !1646, !tbaa !937
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8, !dbg !1647
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !1647, !tbaa !926
  %2 = load i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 2), align 4, !dbg !1648, !tbaa !937
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5, !dbg !1648
  store i32 %2, i32* %bitpattern, align 4, !dbg !1648, !tbaa !937
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3, !dbg !1649
  store i32 8, i32* %len, align 4, !dbg !1649, !tbaa !937
  %call = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1650
  %3 = load i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 2), align 4, !dbg !1651, !tbaa !937
  %cmp = icmp eq i32 %3, 255, !dbg !1651
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !1651

if.then:                                          ; preds = %entry
  %4 = load i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 3), align 8, !dbg !1652, !tbaa !937
  store i32 %4, i32* %bitpattern, align 4, !dbg !1652, !tbaa !937
  store i32 8, i32* %len, align 4, !dbg !1654, !tbaa !937
  %call3 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1655
  br label %for.cond.preheader, !dbg !1656

for.cond.preheader:                               ; preds = %if.then, %entry
  %5 = load i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 1), align 8, !dbg !1657, !tbaa !937
  %cmp452 = icmp sgt i32 %5, 0, !dbg !1657
  br i1 %cmp452, label %for.body, label %for.end, !dbg !1657

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %6 = load i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !dbg !1659, !tbaa !926
  %arrayidx = getelementptr inbounds i8* %6, i64 %indvars.iv, !dbg !1659
  %7 = load i8* %arrayidx, align 1, !dbg !1659, !tbaa !927
  %conv = sext i8 %7 to i32, !dbg !1659
  store i32 %conv, i32* %bitpattern, align 4, !dbg !1659, !tbaa !937
  store i32 8, i32* %len, align 4, !dbg !1661, !tbaa !937
  %call7 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1662
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1657
  %8 = load i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 1), align 8, !dbg !1657, !tbaa !937
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !1657
  %cmp4 = icmp slt i32 %9, %8, !dbg !1657
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1657

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1, !dbg !1663
  %10 = load i32* %bits_to_go, align 4, !dbg !1663, !tbaa !937
  %cmp8 = icmp eq i32 %10, 8, !dbg !1663
  br i1 %cmp8, label %for.end.if.end33_crit_edge, label %if.then10, !dbg !1663

for.end.if.end33_crit_edge:                       ; preds = %for.end
  %byte_pos34.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1664
  br label %if.end33, !dbg !1663

if.then10:                                        ; preds = %for.end
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2, !dbg !1665
  %11 = load i8* %byte_buf, align 1, !dbg !1665, !tbaa !927
  %shl = shl i8 %11, 1, !dbg !1665
  %or = or i8 %shl, 1, !dbg !1667
  store i8 %or, i8* %byte_buf, align 1, !dbg !1667, !tbaa !927
  %dec = add nsw i32 %10, -1, !dbg !1668
  store i32 %dec, i32* %bits_to_go, align 4, !dbg !1668, !tbaa !937
  %cmp18 = icmp eq i32 %dec, 0, !dbg !1669
  br i1 %cmp18, label %if.end26, label %if.then20, !dbg !1669

if.then20:                                        ; preds = %if.then10
  %conv23 = zext i8 %or to i32, !dbg !1669
  %shl24 = shl i32 %conv23, %dec, !dbg !1669
  %conv25 = trunc i32 %shl24 to i8, !dbg !1669
  store i8 %conv25, i8* %byte_buf, align 1, !dbg !1669, !tbaa !927
  br label %if.end26, !dbg !1669

if.end26:                                         ; preds = %if.then10, %if.then20
  %12 = phi i8 [ %or, %if.then10 ], [ %conv25, %if.then20 ]
  store i32 8, i32* %bits_to_go, align 4, !dbg !1670, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1671
  %13 = load i32* %byte_pos, align 4, !dbg !1671, !tbaa !937
  %inc29 = add nsw i32 %13, 1, !dbg !1671
  store i32 %inc29, i32* %byte_pos, align 4, !dbg !1671, !tbaa !937
  %idxprom30 = sext i32 %13 to i64, !dbg !1671
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1671
  %14 = load i8** %streamBuffer, align 8, !dbg !1671, !tbaa !926
  %arrayidx31 = getelementptr inbounds i8* %14, i64 %idxprom30, !dbg !1671
  store i8 %12, i8* %arrayidx31, align 1, !dbg !1671, !tbaa !927
  store i8 0, i8* %byte_buf, align 1, !dbg !1672, !tbaa !927
  br label %if.end33, !dbg !1673

if.end33:                                         ; preds = %for.end.if.end33_crit_edge, %if.end26
  %byte_pos34.pre-phi = phi i32* [ %byte_pos34.pre, %for.end.if.end33_crit_edge ], [ %byte_pos, %if.end26 ], !dbg !1664
  %15 = load i32* %byte_pos34.pre-phi, align 4, !dbg !1664, !tbaa !937
  store i32 %15, i32* getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 5), align 8, !dbg !1664, !tbaa !937
  call void @llvm.lifetime.end(i64 48, i8* %0) #6, !dbg !1674
  ret void, !dbg !1674
}

; Function Attrs: nounwind optsize uwtable
define void @CloseUser_data_registered_itu_t_t35() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1675, !tbaa !926
  %tobool = icmp eq %struct.Bitstream* %0, null, !dbg !1675
  br i1 %tobool, label %if.end, label %if.then, !dbg !1675

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1676
  %1 = load i8** %streamBuffer, align 8, !dbg !1676, !tbaa !926
  tail call void @free(i8* %1) #8, !dbg !1676
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1678, !tbaa !926
  %3 = bitcast %struct.Bitstream* %2 to i8*, !dbg !1678
  tail call void @free(i8* %3) #8, !dbg !1678
  br label %if.end, !dbg !1679

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 4), align 8, !dbg !1680, !tbaa !926
  %4 = load i8** getelementptr inbounds (%struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, i64 0, i32 0), align 8, !dbg !1681, !tbaa !926
  %tobool1 = icmp eq i8* %4, null, !dbg !1681
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1681

if.then2:                                         ; preds = %if.end
  tail call void @free(i8* %4) #8, !dbg !1682
  br label %if.end3, !dbg !1684

if.end3:                                          ; preds = %if.end, %if.then2
  ret void, !dbg !1685
}

; Function Attrs: nounwind optsize uwtable
define void @InitRandomAccess() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #8, !dbg !1686
  %0 = bitcast i8* %call to %struct.Bitstream*, !dbg !1686
  store %struct.Bitstream* %0, %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !dbg !1686, !tbaa !926
  %cmp = icmp eq i8* %call, null, !dbg !1687
  br i1 %cmp, label %if.then, label %if.end, !dbg !1687

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([39 x i8]* @.str24, i64 0, i64 0)) #8, !dbg !1687
  %.pre = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !dbg !1688, !tbaa !926
  br label %if.end, !dbg !1687

if.end:                                           ; preds = %if.then, %entry
  %1 = phi %struct.Bitstream* [ %.pre, %if.then ], [ %0, %entry ]
  %call1 = tail call noalias i8* @malloc(i64 65496) #8, !dbg !1688
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1688
  store i8* %call1, i8** %streamBuffer, align 8, !dbg !1688, !tbaa !926
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !dbg !1689, !tbaa !926
  %streamBuffer2 = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 9, !dbg !1689
  %3 = load i8** %streamBuffer2, align 8, !dbg !1689, !tbaa !926
  %cmp3 = icmp eq i8* %3, null, !dbg !1689
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1689

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([53 x i8]* @.str25, i64 0, i64 0)) #8, !dbg !1689
  %.pre6 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !dbg !1690, !tbaa !926
  %streamBuffer.i.phi.trans.insert = getelementptr inbounds %struct.Bitstream* %.pre6, i64 0, i32 9
  %.pre7 = load i8** %streamBuffer.i.phi.trans.insert, align 8, !dbg !1690, !tbaa !926
  br label %if.end5, !dbg !1689

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = phi i8* [ %.pre7, %if.then4 ], [ %3, %if.end ]
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 65496, i32 1, i1 false) #6, !dbg !1690
  %5 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !dbg !1692, !tbaa !926
  %bits_to_go.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 1, !dbg !1692
  store i32 8, i32* %bits_to_go.i, align 4, !dbg !1692, !tbaa !937
  %byte_pos.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 0, !dbg !1693
  store i32 0, i32* %byte_pos.i, align 4, !dbg !1693, !tbaa !937
  %byte_buf.i = getelementptr inbounds %struct.Bitstream* %5, i64 0, i32 2, !dbg !1694
  store i8 0, i8* %byte_buf.i, align 1, !dbg !1694, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 4), align 8, !dbg !1695, !tbaa !937
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 0), align 8, !dbg !1696, !tbaa !927
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 2), align 2, !dbg !1697, !tbaa !927
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 1), align 1, !dbg !1698, !tbaa !927
  store i32 0, i32* @seiHasRandomAccess_info, align 4, !dbg !1699, !tbaa !927
  ret void, !dbg !1700
}

; Function Attrs: nounwind optsize uwtable
define void @ClearRandomAccess() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !dbg !1701, !tbaa !926
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1701
  %1 = load i8** %streamBuffer, align 8, !dbg !1701, !tbaa !926
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 65496, i32 1, i1 false), !dbg !1701
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !dbg !1702, !tbaa !926
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 1, !dbg !1702
  store i32 8, i32* %bits_to_go, align 4, !dbg !1702, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 0, !dbg !1703
  store i32 0, i32* %byte_pos, align 4, !dbg !1703, !tbaa !937
  %byte_buf = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 2, !dbg !1704
  store i8 0, i8* %byte_buf, align 1, !dbg !1704, !tbaa !927
  store i32 0, i32* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 4), align 8, !dbg !1705, !tbaa !937
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 0), align 8, !dbg !1706, !tbaa !927
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 2), align 2, !dbg !1707, !tbaa !927
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 1), align 1, !dbg !1708, !tbaa !927
  store i32 0, i32* @seiHasRandomAccess_info, align 4, !dbg !1709, !tbaa !927
  ret void, !dbg !1710
}

; Function Attrs: nounwind optsize uwtable
define void @UpdateRandomAccess() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1711, !tbaa !926
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6, !dbg !1711
  %1 = load i32* %type, align 4, !dbg !1711, !tbaa !937
  %cmp = icmp eq i32 %1, 2, !dbg !1711
  br i1 %cmp, label %if.then, label %if.end, !dbg !1711

if.then:                                          ; preds = %entry
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 0), align 8, !dbg !1712, !tbaa !927
  store i8 1, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 1), align 1, !dbg !1714, !tbaa !927
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 2), align 2, !dbg !1715, !tbaa !927
  br label %if.end, !dbg !1716

if.end:                                           ; preds = %entry, %if.then
  %storemerge = phi i32 [ 1, %if.then ], [ 0, %entry ]
  store i32 %storemerge, i32* @seiHasRandomAccess_info, align 4, !dbg !1717, !tbaa !927
  ret void, !dbg !1718
}

; Function Attrs: nounwind optsize uwtable
define void @FinalizeRandomAccess() #0 {
entry:
  %sym = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %sym to i8*, !dbg !1719
  call void @llvm.lifetime.start(i64 48, i8* %0) #6, !dbg !1719
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %sym}, metadata !304), !dbg !1719
  %1 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !dbg !1720, !tbaa !926
  call void @llvm.dbg.value(metadata !{%struct.Bitstream* %1}, i64 0, metadata !305), !dbg !1720
  %type = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 0, !dbg !1721
  store i32 0, i32* %type, align 8, !dbg !1721, !tbaa !937
  %mapping = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 8, !dbg !1722
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !1722, !tbaa !926
  %2 = load i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 0), align 8, !dbg !1723, !tbaa !927
  %conv = zext i8 %2 to i32, !dbg !1723
  %value1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 1, !dbg !1723
  store i32 %conv, i32* %value1, align 4, !dbg !1723, !tbaa !937
  %call = call i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1724
  %3 = load i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 1), align 1, !dbg !1725, !tbaa !927
  %conv1 = zext i8 %3 to i32, !dbg !1725
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5, !dbg !1725
  store i32 %conv1, i32* %bitpattern, align 4, !dbg !1725, !tbaa !937
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3, !dbg !1726
  store i32 1, i32* %len, align 4, !dbg !1726, !tbaa !937
  %call2 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1727
  %4 = load i8* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 2), align 2, !dbg !1728, !tbaa !927
  %conv3 = zext i8 %4 to i32, !dbg !1728
  store i32 %conv3, i32* %bitpattern, align 4, !dbg !1728, !tbaa !937
  store i32 1, i32* %len, align 4, !dbg !1729, !tbaa !937
  %call6 = call i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* %sym, %struct.Bitstream* %1) #8, !dbg !1730
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 1, !dbg !1731
  %5 = load i32* %bits_to_go, align 4, !dbg !1731, !tbaa !937
  %cmp = icmp eq i32 %5, 8, !dbg !1731
  br i1 %cmp, label %entry.if.end26_crit_edge, label %if.then, !dbg !1731

entry.if.end26_crit_edge:                         ; preds = %entry
  %byte_pos27.pre = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1732
  br label %if.end26, !dbg !1731

if.then:                                          ; preds = %entry
  %byte_buf = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 2, !dbg !1733
  %6 = load i8* %byte_buf, align 1, !dbg !1733, !tbaa !927
  %shl = shl i8 %6, 1, !dbg !1733
  %or = or i8 %shl, 1, !dbg !1735
  store i8 %or, i8* %byte_buf, align 1, !dbg !1735, !tbaa !927
  %dec = add nsw i32 %5, -1, !dbg !1736
  store i32 %dec, i32* %bits_to_go, align 4, !dbg !1736, !tbaa !937
  %cmp15 = icmp eq i32 %dec, 0, !dbg !1737
  br i1 %cmp15, label %if.end, label %if.then17, !dbg !1737

if.then17:                                        ; preds = %if.then
  %conv20 = zext i8 %or to i32, !dbg !1737
  %shl21 = shl i32 %conv20, %dec, !dbg !1737
  %conv22 = trunc i32 %shl21 to i8, !dbg !1737
  store i8 %conv22, i8* %byte_buf, align 1, !dbg !1737, !tbaa !927
  br label %if.end, !dbg !1737

if.end:                                           ; preds = %if.then, %if.then17
  %7 = phi i8 [ %or, %if.then ], [ %conv22, %if.then17 ]
  store i32 8, i32* %bits_to_go, align 4, !dbg !1738, !tbaa !937
  %byte_pos = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 0, !dbg !1739
  %8 = load i32* %byte_pos, align 4, !dbg !1739, !tbaa !937
  %inc = add nsw i32 %8, 1, !dbg !1739
  store i32 %inc, i32* %byte_pos, align 4, !dbg !1739, !tbaa !937
  %idxprom = sext i32 %8 to i64, !dbg !1739
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !1739
  %9 = load i8** %streamBuffer, align 8, !dbg !1739, !tbaa !926
  %arrayidx = getelementptr inbounds i8* %9, i64 %idxprom, !dbg !1739
  store i8 %7, i8* %arrayidx, align 1, !dbg !1739, !tbaa !927
  store i8 0, i8* %byte_buf, align 1, !dbg !1740, !tbaa !927
  br label %if.end26, !dbg !1741

if.end26:                                         ; preds = %entry.if.end26_crit_edge, %if.end
  %byte_pos27.pre-phi = phi i32* [ %byte_pos27.pre, %entry.if.end26_crit_edge ], [ %byte_pos, %if.end ], !dbg !1732
  %10 = load i32* %byte_pos27.pre-phi, align 4, !dbg !1732, !tbaa !937
  store i32 %10, i32* getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 4), align 8, !dbg !1732, !tbaa !937
  call void @llvm.lifetime.end(i64 48, i8* %0) #6, !dbg !1742
  ret void, !dbg !1742
}

; Function Attrs: nounwind optsize uwtable
define void @CloseRandomAccess() #0 {
entry:
  %0 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !dbg !1743, !tbaa !926
  %tobool = icmp eq %struct.Bitstream* %0, null, !dbg !1743
  br i1 %tobool, label %if.end, label %if.then, !dbg !1743

if.then:                                          ; preds = %entry
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %0, i64 0, i32 9, !dbg !1744
  %1 = load i8** %streamBuffer, align 8, !dbg !1744, !tbaa !926
  tail call void @free(i8* %1) #8, !dbg !1744
  %2 = load %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !dbg !1746, !tbaa !926
  %3 = bitcast %struct.Bitstream* %2 to i8*, !dbg !1746
  tail call void @free(i8* %3) #8, !dbg !1746
  br label %if.end, !dbg !1747

if.end:                                           ; preds = %entry, %if.then
  store %struct.Bitstream* null, %struct.Bitstream** getelementptr inbounds (%struct.randomaccess_information_struct* @seiRandomAccess, i64 0, i32 3), align 8, !dbg !1748, !tbaa !926
  ret void, !dbg !1749
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !60, metadata !61, metadata !307, metadata !60, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8, metadata !16, metadata !36}
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
!16 = metadata !{i32 786436, metadata !17, null, metadata !"", i32 23, i64 32, i64 32, i32 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 23, size 32, align 32, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!19 = metadata !{i32 786472, metadata !"SEI_ZERO", i64 0} ; [ DW_TAG_enumerator ] [SEI_ZERO :: 0]
!20 = metadata !{i32 786472, metadata !"SEI_TEMPORAL_REF", i64 1} ; [ DW_TAG_enumerator ] [SEI_TEMPORAL_REF :: 1]
!21 = metadata !{i32 786472, metadata !"SEI_CLOCK_TIMESTAMP", i64 2} ; [ DW_TAG_enumerator ] [SEI_CLOCK_TIMESTAMP :: 2]
!22 = metadata !{i32 786472, metadata !"SEI_PANSCAN_RECT", i64 3} ; [ DW_TAG_enumerator ] [SEI_PANSCAN_RECT :: 3]
!23 = metadata !{i32 786472, metadata !"SEI_BUFFERING_PERIOD", i64 4} ; [ DW_TAG_enumerator ] [SEI_BUFFERING_PERIOD :: 4]
!24 = metadata !{i32 786472, metadata !"SEI_HRD_PICTURE", i64 5} ; [ DW_TAG_enumerator ] [SEI_HRD_PICTURE :: 5]
!25 = metadata !{i32 786472, metadata !"SEI_FILLER_PAYLOAD", i64 6} ; [ DW_TAG_enumerator ] [SEI_FILLER_PAYLOAD :: 6]
!26 = metadata !{i32 786472, metadata !"SEI_USER_DATA_REGISTERED_ITU_T_T35", i64 7} ; [ DW_TAG_enumerator ] [SEI_USER_DATA_REGISTERED_ITU_T_T35 :: 7]
!27 = metadata !{i32 786472, metadata !"SEI_USER_DATA_UNREGISTERED", i64 8} ; [ DW_TAG_enumerator ] [SEI_USER_DATA_UNREGISTERED :: 8]
!28 = metadata !{i32 786472, metadata !"SEI_RANDOM_ACCESS_POINT", i64 9} ; [ DW_TAG_enumerator ] [SEI_RANDOM_ACCESS_POINT :: 9]
!29 = metadata !{i32 786472, metadata !"SEI_REF_PIC_BUFFER_MANAGEMENT_REPETITION", i64 10} ; [ DW_TAG_enumerator ] [SEI_REF_PIC_BUFFER_MANAGEMENT_REPETITION :: 10]
!30 = metadata !{i32 786472, metadata !"SEI_SPARE_PICTURE", i64 11} ; [ DW_TAG_enumerator ] [SEI_SPARE_PICTURE :: 11]
!31 = metadata !{i32 786472, metadata !"SEI_SCENE_INFORMATION", i64 12} ; [ DW_TAG_enumerator ] [SEI_SCENE_INFORMATION :: 12]
!32 = metadata !{i32 786472, metadata !"SEI_SUBSEQ_INFORMATION", i64 13} ; [ DW_TAG_enumerator ] [SEI_SUBSEQ_INFORMATION :: 13]
!33 = metadata !{i32 786472, metadata !"SEI_SUBSEQ_LAYER_CHARACTERISTICS", i64 14} ; [ DW_TAG_enumerator ] [SEI_SUBSEQ_LAYER_CHARACTERISTICS :: 14]
!34 = metadata !{i32 786472, metadata !"SEI_SUBSEQ_CHARACTERISTICS", i64 15} ; [ DW_TAG_enumerator ] [SEI_SUBSEQ_CHARACTERISTICS :: 15]
!35 = metadata !{i32 786472, metadata !"SEI_MAX_ELEMENTS", i64 16} ; [ DW_TAG_enumerator ] [SEI_MAX_ELEMENTS :: 16]
!36 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 119, i64 32, i64 32, i32 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 119, size 32, align 32, offset 0] [from ]
!37 = metadata !{metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59}
!38 = metadata !{i32 786472, metadata !"SE_HEADER", i64 0} ; [ DW_TAG_enumerator ] [SE_HEADER :: 0]
!39 = metadata !{i32 786472, metadata !"SE_PTYPE", i64 1} ; [ DW_TAG_enumerator ] [SE_PTYPE :: 1]
!40 = metadata !{i32 786472, metadata !"SE_MBTYPE", i64 2} ; [ DW_TAG_enumerator ] [SE_MBTYPE :: 2]
!41 = metadata !{i32 786472, metadata !"SE_REFFRAME", i64 3} ; [ DW_TAG_enumerator ] [SE_REFFRAME :: 3]
!42 = metadata !{i32 786472, metadata !"SE_INTRAPREDMODE", i64 4} ; [ DW_TAG_enumerator ] [SE_INTRAPREDMODE :: 4]
!43 = metadata !{i32 786472, metadata !"SE_MVD", i64 5} ; [ DW_TAG_enumerator ] [SE_MVD :: 5]
!44 = metadata !{i32 786472, metadata !"SE_CBP_INTRA", i64 6} ; [ DW_TAG_enumerator ] [SE_CBP_INTRA :: 6]
!45 = metadata !{i32 786472, metadata !"SE_LUM_DC_INTRA", i64 7} ; [ DW_TAG_enumerator ] [SE_LUM_DC_INTRA :: 7]
!46 = metadata !{i32 786472, metadata !"SE_CHR_DC_INTRA", i64 8} ; [ DW_TAG_enumerator ] [SE_CHR_DC_INTRA :: 8]
!47 = metadata !{i32 786472, metadata !"SE_LUM_AC_INTRA", i64 9} ; [ DW_TAG_enumerator ] [SE_LUM_AC_INTRA :: 9]
!48 = metadata !{i32 786472, metadata !"SE_CHR_AC_INTRA", i64 10} ; [ DW_TAG_enumerator ] [SE_CHR_AC_INTRA :: 10]
!49 = metadata !{i32 786472, metadata !"SE_CBP_INTER", i64 11} ; [ DW_TAG_enumerator ] [SE_CBP_INTER :: 11]
!50 = metadata !{i32 786472, metadata !"SE_LUM_DC_INTER", i64 12} ; [ DW_TAG_enumerator ] [SE_LUM_DC_INTER :: 12]
!51 = metadata !{i32 786472, metadata !"SE_CHR_DC_INTER", i64 13} ; [ DW_TAG_enumerator ] [SE_CHR_DC_INTER :: 13]
!52 = metadata !{i32 786472, metadata !"SE_LUM_AC_INTER", i64 14} ; [ DW_TAG_enumerator ] [SE_LUM_AC_INTER :: 14]
!53 = metadata !{i32 786472, metadata !"SE_CHR_AC_INTER", i64 15} ; [ DW_TAG_enumerator ] [SE_CHR_AC_INTER :: 15]
!54 = metadata !{i32 786472, metadata !"SE_DELTA_QUANT_INTER", i64 16} ; [ DW_TAG_enumerator ] [SE_DELTA_QUANT_INTER :: 16]
!55 = metadata !{i32 786472, metadata !"SE_DELTA_QUANT_INTRA", i64 17} ; [ DW_TAG_enumerator ] [SE_DELTA_QUANT_INTRA :: 17]
!56 = metadata !{i32 786472, metadata !"SE_BFRAME", i64 18} ; [ DW_TAG_enumerator ] [SE_BFRAME :: 18]
!57 = metadata !{i32 786472, metadata !"SE_EOS", i64 19} ; [ DW_TAG_enumerator ] [SE_EOS :: 19]
!58 = metadata !{i32 786472, metadata !"SE_TRANSFORM_SIZE_FLAG", i64 20} ; [ DW_TAG_enumerator ] [SE_TRANSFORM_SIZE_FLAG :: 20]
!59 = metadata !{i32 786472, metadata !"SE_MAX_ELEMENTS", i64 21} ; [ DW_TAG_enumerator ] [SE_MAX_ELEMENTS :: 21]
!60 = metadata !{i32 0}
!61 = metadata !{metadata !62, metadata !69, metadata !72, metadata !76, metadata !90, metadata !96, metadata !99, metadata !124, metadata !125, metadata !126, metadata !127, metadata !183, metadata !209, metadata !216, metadata !219, metadata !222, metadata !227, metadata !230, metadata !233, metadata !236, metadata !237, metadata !241, metadata !242, metadata !243, metadata !244, metadata !249, metadata !250, metadata !251, metadata !252, metadata !256, metadata !264, metadata !265, metadata !266, metadata !267, metadata !271, metadata !272, metadata !273, metadata !274, metadata !279, metadata !284, metadata !285, metadata !286, metadata !287, metadata !293, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !306}
!62 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"InitSEIMessages", metadata !"InitSEIMessages", metadata !"", i32 65, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @InitSEIMessages, null, null, metadata !66, i32 66} ; [ DW_TAG_subprogram ] [line 65] [def] [scope 66] [InitSEIMessages]
!63 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{null}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786688, metadata !62, metadata !"i", metadata !63, i32 67, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 67]
!68 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!69 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"CloseSEIMessages", metadata !"CloseSEIMessages", metadata !"", i32 93, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CloseSEIMessages, null, null, metadata !70, i32 94} ; [ DW_TAG_subprogram ] [line 93] [def] [scope 94] [CloseSEIMessages]
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786688, metadata !69, metadata !"i", metadata !63, i32 95, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 95]
!72 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"HaveAggregationSEI", metadata !"HaveAggregationSEI", metadata !"", i32 116, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @HaveAggregationSEI, null, null, metadata !60, i32 117} ; [ DW_TAG_subprogram ] [line 116] [def] [scope 117] [HaveAggregationSEI]
!73 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786454, metadata !1, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!76 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"write_sei_message", metadata !"write_sei_message", metadata !"", i32 159, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8*, i32, i32)* @write_sei_message, null, null, metadata !82, i32 160} ; [ DW_TAG_subprogram ] [line 159] [def] [scope 160] [write_sei_message]
!77 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{null, metadata !68, metadata !79, metadata !68, metadata !68}
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!80 = metadata !{i32 786454, metadata !9, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!81 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89}
!83 = metadata !{i32 786689, metadata !76, metadata !"id", metadata !63, i32 16777375, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 159]
!84 = metadata !{i32 786689, metadata !76, metadata !"payload", metadata !63, i32 33554591, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [payload] [line 159]
!85 = metadata !{i32 786689, metadata !76, metadata !"payload_size", metadata !63, i32 50331807, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [payload_size] [line 159]
!86 = metadata !{i32 786689, metadata !76, metadata !"payload_type", metadata !63, i32 67109023, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [payload_type] [line 159]
!87 = metadata !{i32 786688, metadata !76, metadata !"offset", metadata !63, i32 161, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 161]
!88 = metadata !{i32 786688, metadata !76, metadata !"type", metadata !63, i32 161, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 161]
!89 = metadata !{i32 786688, metadata !76, metadata !"size", metadata !63, i32 161, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 161]
!90 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"finalize_sei_message", metadata !"finalize_sei_message", metadata !"", i32 199, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @finalize_sei_message, null, null, metadata !93, i32 200} ; [ DW_TAG_subprogram ] [line 199] [def] [scope 200] [finalize_sei_message]
!91 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{null, metadata !68}
!93 = metadata !{metadata !94, metadata !95}
!94 = metadata !{i32 786689, metadata !90, metadata !"id", metadata !63, i32 16777415, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 199]
!95 = metadata !{i32 786688, metadata !90, metadata !"offset", metadata !63, i32 201, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 201]
!96 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"clear_sei_message", metadata !"clear_sei_message", metadata !"", i32 221, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @clear_sei_message, null, null, metadata !97, i32 222} ; [ DW_TAG_subprogram ] [line 221] [def] [scope 222] [clear_sei_message]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786689, metadata !96, metadata !"id", metadata !63, i32 16777437, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 221]
!99 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"AppendTmpbits2Buf", metadata !"AppendTmpbits2Buf", metadata !"", i32 240, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.Bitstream*, %struct.Bitstream*)* @AppendTmpbits2Buf, null, null, metadata !117, i32 241} ; [ DW_TAG_subprogram ] [line 240] [def] [scope 241] [AppendTmpbits2Buf]
!100 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{null, metadata !102, metadata !102}
!102 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!103 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!104 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !105, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116}
!106 = metadata !{i32 786445, metadata !9, metadata !104, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!107 = metadata !{i32 786445, metadata !9, metadata !104, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!108 = metadata !{i32 786445, metadata !9, metadata !104, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !80} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!109 = metadata !{i32 786445, metadata !9, metadata !104, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !68} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!110 = metadata !{i32 786445, metadata !9, metadata !104, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!111 = metadata !{i32 786445, metadata !9, metadata !104, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !80} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!112 = metadata !{i32 786445, metadata !9, metadata !104, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !80} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!113 = metadata !{i32 786445, metadata !9, metadata !104, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !68} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!114 = metadata !{i32 786445, metadata !9, metadata !104, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !68} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!115 = metadata !{i32 786445, metadata !9, metadata !104, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !79} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!116 = metadata !{i32 786445, metadata !9, metadata !104, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !68} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123}
!118 = metadata !{i32 786689, metadata !99, metadata !"dest", metadata !63, i32 16777456, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 240]
!119 = metadata !{i32 786689, metadata !99, metadata !"source", metadata !63, i32 33554672, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [source] [line 240]
!120 = metadata !{i32 786688, metadata !99, metadata !"i", metadata !63, i32 242, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 242]
!121 = metadata !{i32 786688, metadata !99, metadata !"j", metadata !63, i32 242, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 242]
!122 = metadata !{i32 786688, metadata !99, metadata !"mask", metadata !63, i32 243, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mask] [line 243]
!123 = metadata !{i32 786688, metadata !99, metadata !"bits_in_last_byte", metadata !63, i32 244, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bits_in_last_byte] [line 244]
!124 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"InitSparePicture", metadata !"InitSparePicture", metadata !"", i32 313, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @InitSparePicture, null, null, metadata !60, i32 314} ; [ DW_TAG_subprogram ] [line 313] [def] [scope 314] [InitSparePicture]
!125 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"CloseSparePicture", metadata !"CloseSparePicture", metadata !"", i32 336, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CloseSparePicture, null, null, metadata !60, i32 337} ; [ DW_TAG_subprogram ] [line 336] [def] [scope 337] [CloseSparePicture]
!126 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"CalculateSparePicture", metadata !"CalculateSparePicture", metadata !"", i32 359, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CalculateSparePicture, null, null, metadata !60, i32 360} ; [ DW_TAG_subprogram ] [line 359] [def] [scope 360] [CalculateSparePicture]
!127 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"ComposeSparePictureMessage", metadata !"ComposeSparePictureMessage", metadata !"", i32 540, metadata !128, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, %struct.Bitstream*)* @ComposeSparePictureMessage, null, null, metadata !130, i32 541} ; [ DW_TAG_subprogram ] [line 540] [def] [scope 541] [ComposeSparePictureMessage]
!128 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{null, metadata !68, metadata !68, metadata !102}
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!131 = metadata !{i32 786689, metadata !127, metadata !"delta_spare_frame_num", metadata !63, i32 16777756, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delta_spare_frame_num] [line 540]
!132 = metadata !{i32 786689, metadata !127, metadata !"ref_area_indicator", metadata !63, i32 33554972, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ref_area_indicator] [line 540]
!133 = metadata !{i32 786689, metadata !127, metadata !"tmpBitstream", metadata !63, i32 50332188, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmpBitstream] [line 540]
!134 = metadata !{i32 786688, metadata !127, metadata !"bitstream", metadata !63, i32 542, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitstream] [line 542]
!135 = metadata !{i32 786688, metadata !127, metadata !"sym", metadata !63, i32 543, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 543]
!136 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!137 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !138, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!138 = metadata !{metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !146, metadata !147, metadata !148, metadata !153}
!139 = metadata !{i32 786445, metadata !9, metadata !137, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!140 = metadata !{i32 786445, metadata !9, metadata !137, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!141 = metadata !{i32 786445, metadata !9, metadata !137, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!142 = metadata !{i32 786445, metadata !9, metadata !137, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !68} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!143 = metadata !{i32 786445, metadata !9, metadata !137, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!144 = metadata !{i32 786445, metadata !9, metadata !137, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !145} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!145 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!146 = metadata !{i32 786445, metadata !9, metadata !137, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !68} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!147 = metadata !{i32 786445, metadata !9, metadata !137, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !68} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!148 = metadata !{i32 786445, metadata !9, metadata !137, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !149} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!150 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{null, metadata !68, metadata !68, metadata !152, metadata !152}
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!153 = metadata !{i32 786445, metadata !9, metadata !137, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !154} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!154 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!155 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!156 = metadata !{null, metadata !157, metadata !158}
!157 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!158 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!160 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!161 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !162, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182}
!163 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !145} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!164 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !145} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!165 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!166 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !145} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!167 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !145} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!168 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !79} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!169 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !152} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!170 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !145} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!171 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !145} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!172 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !145} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!173 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !145} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!174 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !145} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!175 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !79} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!176 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !152} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!177 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !68} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!178 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !68} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!179 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !68} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!180 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !68} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!181 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !68} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!182 = metadata !{i32 786445, metadata !9, metadata !161, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !68} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!183 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"CompressSpareMBMap", metadata !"CompressSpareMBMap", metadata !"", i32 570, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, %struct.Bitstream*)* @CompressSpareMBMap, null, null, metadata !188, i32 571} ; [ DW_TAG_subprogram ] [line 570] [def] [scope 571] [CompressSpareMBMap]
!184 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!185 = metadata !{metadata !75, metadata !186, metadata !102}
!186 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !187} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!187 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208}
!189 = metadata !{i32 786689, metadata !183, metadata !"map_sp", metadata !63, i32 16777786, metadata !186, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [map_sp] [line 570]
!190 = metadata !{i32 786689, metadata !183, metadata !"bitstream", metadata !63, i32 33555002, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitstream] [line 570]
!191 = metadata !{i32 786688, metadata !183, metadata !"j", metadata !63, i32 572, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 572]
!192 = metadata !{i32 786688, metadata !183, metadata !"k", metadata !63, i32 572, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 572]
!193 = metadata !{i32 786688, metadata !183, metadata !"noc", metadata !63, i32 573, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [noc] [line 573]
!194 = metadata !{i32 786688, metadata !183, metadata !"bit0", metadata !63, i32 573, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bit0] [line 573]
!195 = metadata !{i32 786688, metadata !183, metadata !"bit1", metadata !63, i32 573, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bit1] [line 573]
!196 = metadata !{i32 786688, metadata !183, metadata !"bitc", metadata !63, i32 573, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitc] [line 573]
!197 = metadata !{i32 786688, metadata !183, metadata !"sym", metadata !63, i32 574, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 574]
!198 = metadata !{i32 786688, metadata !183, metadata !"x", metadata !63, i32 575, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 575]
!199 = metadata !{i32 786688, metadata !183, metadata !"y", metadata !63, i32 575, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 575]
!200 = metadata !{i32 786688, metadata !183, metadata !"left", metadata !63, i32 575, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left] [line 575]
!201 = metadata !{i32 786688, metadata !183, metadata !"right", metadata !63, i32 575, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [right] [line 575]
!202 = metadata !{i32 786688, metadata !183, metadata !"bottom", metadata !63, i32 575, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bottom] [line 575]
!203 = metadata !{i32 786688, metadata !183, metadata !"top", metadata !63, i32 575, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top] [line 575]
!204 = metadata !{i32 786688, metadata !183, metadata !"directx", metadata !63, i32 575, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [directx] [line 575]
!205 = metadata !{i32 786688, metadata !183, metadata !"directy", metadata !63, i32 575, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [directy] [line 575]
!206 = metadata !{i32 786688, metadata !183, metadata !"size_uncompressed", metadata !63, i32 578, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size_uncompressed] [line 578]
!207 = metadata !{i32 786688, metadata !183, metadata !"size_compressed", metadata !63, i32 579, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size_compressed] [line 579]
!208 = metadata !{i32 786688, metadata !183, metadata !"ret", metadata !63, i32 580, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 580]
!209 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"FinalizeSpareMBMap", metadata !"FinalizeSpareMBMap", metadata !"", i32 730, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @FinalizeSpareMBMap, null, null, metadata !210, i32 731} ; [ DW_TAG_subprogram ] [line 730] [def] [scope 731] [FinalizeSpareMBMap]
!210 = metadata !{metadata !211, metadata !212, metadata !213, metadata !214, metadata !215}
!211 = metadata !{i32 786688, metadata !209, metadata !"CurrFrameNum", metadata !63, i32 732, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CurrFrameNum] [line 732]
!212 = metadata !{i32 786688, metadata !209, metadata !"delta_frame_num", metadata !63, i32 733, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta_frame_num] [line 733]
!213 = metadata !{i32 786688, metadata !209, metadata !"sym", metadata !63, i32 734, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 734]
!214 = metadata !{i32 786688, metadata !209, metadata !"dest", metadata !63, i32 735, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 735]
!215 = metadata !{i32 786688, metadata !209, metadata !"source", metadata !63, i32 735, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [source] [line 735]
!216 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"InitSubseqInfo", metadata !"InitSubseqInfo", metadata !"", i32 801, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @InitSubseqInfo, null, null, metadata !217, i32 802} ; [ DW_TAG_subprogram ] [line 801] [def] [scope 802] [InitSubseqInfo]
!217 = metadata !{metadata !218}
!218 = metadata !{i32 786689, metadata !216, metadata !"currLayer", metadata !63, i32 16778017, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currLayer] [line 801]
!219 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"UpdateSubseqInfo", metadata !"UpdateSubseqInfo", metadata !"", i32 828, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @UpdateSubseqInfo, null, null, metadata !220, i32 829} ; [ DW_TAG_subprogram ] [line 828] [def] [scope 829] [UpdateSubseqInfo]
!220 = metadata !{metadata !221}
!221 = metadata !{i32 786689, metadata !219, metadata !"currLayer", metadata !63, i32 16778044, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currLayer] [line 828]
!222 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"FinalizeSubseqInfo", metadata !"FinalizeSubseqInfo", metadata !"", i32 860, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @FinalizeSubseqInfo, null, null, metadata !223, i32 861} ; [ DW_TAG_subprogram ] [line 860] [def] [scope 861] [FinalizeSubseqInfo]
!223 = metadata !{metadata !224, metadata !225, metadata !226}
!224 = metadata !{i32 786689, metadata !222, metadata !"currLayer", metadata !63, i32 16778076, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currLayer] [line 860]
!225 = metadata !{i32 786688, metadata !222, metadata !"sym", metadata !63, i32 862, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 862]
!226 = metadata !{i32 786688, metadata !222, metadata !"dest", metadata !63, i32 863, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 863]
!227 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"ClearSubseqInfoPayload", metadata !"ClearSubseqInfoPayload", metadata !"", i32 900, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @ClearSubseqInfoPayload, null, null, metadata !228, i32 901} ; [ DW_TAG_subprogram ] [line 900] [def] [scope 901] [ClearSubseqInfoPayload]
!228 = metadata !{metadata !229}
!229 = metadata !{i32 786689, metadata !227, metadata !"currLayer", metadata !63, i32 16778116, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currLayer] [line 900]
!230 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"CloseSubseqInfo", metadata !"CloseSubseqInfo", metadata !"", i32 915, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @CloseSubseqInfo, null, null, metadata !231, i32 916} ; [ DW_TAG_subprogram ] [line 915] [def] [scope 916] [CloseSubseqInfo]
!231 = metadata !{metadata !232}
!232 = metadata !{i32 786689, metadata !230, metadata !"currLayer", metadata !63, i32 16778131, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currLayer] [line 915]
!233 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"InitSubseqLayerInfo", metadata !"InitSubseqLayerInfo", metadata !"", i32 943, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @InitSubseqLayerInfo, null, null, metadata !234, i32 944} ; [ DW_TAG_subprogram ] [line 943] [def] [scope 944] [InitSubseqLayerInfo]
!234 = metadata !{metadata !235}
!235 = metadata !{i32 786688, metadata !233, metadata !"i", metadata !63, i32 945, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 945]
!236 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"CloseSubseqLayerInfo", metadata !"CloseSubseqLayerInfo", metadata !"", i32 962, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CloseSubseqLayerInfo, null, null, metadata !60, i32 963} ; [ DW_TAG_subprogram ] [line 962] [def] [scope 963] [CloseSubseqLayerInfo]
!237 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"FinalizeSubseqLayerInfo", metadata !"FinalizeSubseqLayerInfo", metadata !"", i32 972, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @FinalizeSubseqLayerInfo, null, null, metadata !238, i32 973} ; [ DW_TAG_subprogram ] [line 972] [def] [scope 973] [FinalizeSubseqLayerInfo]
!238 = metadata !{metadata !239, metadata !240}
!239 = metadata !{i32 786688, metadata !237, metadata !"i", metadata !63, i32 974, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 974]
!240 = metadata !{i32 786688, metadata !237, metadata !"pos", metadata !63, i32 974, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 974]
!241 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"InitSubseqChar", metadata !"InitSubseqChar", metadata !"", i32 1000, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @InitSubseqChar, null, null, metadata !60, i32 1001} ; [ DW_TAG_subprogram ] [line 1000] [def] [scope 1001] [InitSubseqChar]
!242 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"ClearSubseqCharPayload", metadata !"ClearSubseqCharPayload", metadata !"", i32 1015, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @ClearSubseqCharPayload, null, null, metadata !60, i32 1016} ; [ DW_TAG_subprogram ] [line 1015] [def] [scope 1016] [ClearSubseqCharPayload]
!243 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"UpdateSubseqChar", metadata !"UpdateSubseqChar", metadata !"", i32 1026, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @UpdateSubseqChar, null, null, metadata !60, i32 1027} ; [ DW_TAG_subprogram ] [line 1026] [def] [scope 1027] [UpdateSubseqChar]
!244 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"FinalizeSubseqChar", metadata !"FinalizeSubseqChar", metadata !"", i32 1043, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @FinalizeSubseqChar, null, null, metadata !245, i32 1044} ; [ DW_TAG_subprogram ] [line 1043] [def] [scope 1044] [FinalizeSubseqChar]
!245 = metadata !{metadata !246, metadata !247, metadata !248}
!246 = metadata !{i32 786688, metadata !244, metadata !"i", metadata !63, i32 1045, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1045]
!247 = metadata !{i32 786688, metadata !244, metadata !"sym", metadata !63, i32 1046, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 1046]
!248 = metadata !{i32 786688, metadata !244, metadata !"dest", metadata !63, i32 1047, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 1047]
!249 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"CloseSubseqChar", metadata !"CloseSubseqChar", metadata !"", i32 1101, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CloseSubseqChar, null, null, metadata !60, i32 1102} ; [ DW_TAG_subprogram ] [line 1101] [def] [scope 1102] [CloseSubseqChar]
!250 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"InitSceneInformation", metadata !"InitSceneInformation", metadata !"", i32 1125, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @InitSceneInformation, null, null, metadata !60, i32 1126} ; [ DW_TAG_subprogram ] [line 1125] [def] [scope 1126] [InitSceneInformation]
!251 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"CloseSceneInformation", metadata !"CloseSceneInformation", metadata !"", i32 1143, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CloseSceneInformation, null, null, metadata !60, i32 1144} ; [ DW_TAG_subprogram ] [line 1143] [def] [scope 1144] [CloseSceneInformation]
!252 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"FinalizeSceneInformation", metadata !"FinalizeSceneInformation", metadata !"", i32 1153, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @FinalizeSceneInformation, null, null, metadata !253, i32 1154} ; [ DW_TAG_subprogram ] [line 1153] [def] [scope 1154] [FinalizeSceneInformation]
!253 = metadata !{metadata !254, metadata !255}
!254 = metadata !{i32 786688, metadata !252, metadata !"sym", metadata !63, i32 1155, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 1155]
!255 = metadata !{i32 786688, metadata !252, metadata !"dest", metadata !63, i32 1156, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 1156]
!256 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"UpdateSceneInformation", metadata !"UpdateSceneInformation", metadata !"", i32 1192, metadata !257, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32)* @UpdateSceneInformation, null, null, metadata !259, i32 1193} ; [ DW_TAG_subprogram ] [line 1192] [def] [scope 1193] [UpdateSceneInformation]
!257 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!258 = metadata !{null, metadata !75, metadata !68, metadata !68, metadata !68}
!259 = metadata !{metadata !260, metadata !261, metadata !262, metadata !263}
!260 = metadata !{i32 786689, metadata !256, metadata !"HasSceneInformation", metadata !63, i32 16778408, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HasSceneInformation] [line 1192]
!261 = metadata !{i32 786689, metadata !256, metadata !"sceneID", metadata !63, i32 33555624, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sceneID] [line 1192]
!262 = metadata !{i32 786689, metadata !256, metadata !"sceneTransType", metadata !63, i32 50332840, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sceneTransType] [line 1192]
!263 = metadata !{i32 786689, metadata !256, metadata !"secondSceneID", metadata !63, i32 67110056, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [secondSceneID] [line 1192]
!264 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"InitPanScanRectInfo", metadata !"InitPanScanRectInfo", metadata !"", i32 1224, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @InitPanScanRectInfo, null, null, metadata !60, i32 1225} ; [ DW_TAG_subprogram ] [line 1224] [def] [scope 1225] [InitPanScanRectInfo]
!265 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"ClearPanScanRectInfoPayload", metadata !"ClearPanScanRectInfoPayload", metadata !"", i32 1241, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @ClearPanScanRectInfoPayload, null, null, metadata !60, i32 1242} ; [ DW_TAG_subprogram ] [line 1241] [def] [scope 1242] [ClearPanScanRectInfoPayload]
!266 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"UpdatePanScanRectInfo", metadata !"UpdatePanScanRectInfo", metadata !"", i32 1252, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @UpdatePanScanRectInfo, null, null, metadata !60, i32 1253} ; [ DW_TAG_subprogram ] [line 1252] [def] [scope 1253] [UpdatePanScanRectInfo]
!267 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"FinalizePanScanRectInfo", metadata !"FinalizePanScanRectInfo", metadata !"", i32 1262, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @FinalizePanScanRectInfo, null, null, metadata !268, i32 1263} ; [ DW_TAG_subprogram ] [line 1262] [def] [scope 1263] [FinalizePanScanRectInfo]
!268 = metadata !{metadata !269, metadata !270}
!269 = metadata !{i32 786688, metadata !267, metadata !"sym", metadata !63, i32 1264, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 1264]
!270 = metadata !{i32 786688, metadata !267, metadata !"dest", metadata !63, i32 1265, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 1265]
!271 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"ClosePanScanRectInfo", metadata !"ClosePanScanRectInfo", metadata !"", i32 1305, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @ClosePanScanRectInfo, null, null, metadata !60, i32 1306} ; [ DW_TAG_subprogram ] [line 1305] [def] [scope 1306] [ClosePanScanRectInfo]
!272 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"InitUser_data_unregistered", metadata !"InitUser_data_unregistered", metadata !"", i32 1326, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @InitUser_data_unregistered, null, null, metadata !60, i32 1327} ; [ DW_TAG_subprogram ] [line 1326] [def] [scope 1327] [InitUser_data_unregistered]
!273 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"ClearUser_data_unregistered", metadata !"ClearUser_data_unregistered", metadata !"", i32 1340, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @ClearUser_data_unregistered, null, null, metadata !60, i32 1341} ; [ DW_TAG_subprogram ] [line 1340] [def] [scope 1341] [ClearUser_data_unregistered]
!274 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"UpdateUser_data_unregistered", metadata !"UpdateUser_data_unregistered", metadata !"", i32 1354, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @UpdateUser_data_unregistered, null, null, metadata !275, i32 1355} ; [ DW_TAG_subprogram ] [line 1354] [def] [scope 1355] [UpdateUser_data_unregistered]
!275 = metadata !{metadata !276, metadata !277, metadata !278}
!276 = metadata !{i32 786688, metadata !274, metadata !"i", metadata !63, i32 1356, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1356]
!277 = metadata !{i32 786688, metadata !274, metadata !"temp_data", metadata !63, i32 1356, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp_data] [line 1356]
!278 = metadata !{i32 786688, metadata !274, metadata !"total_byte", metadata !63, i32 1357, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total_byte] [line 1357]
!279 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"FinalizeUser_data_unregistered", metadata !"FinalizeUser_data_unregistered", metadata !"", i32 1369, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @FinalizeUser_data_unregistered, null, null, metadata !280, i32 1370} ; [ DW_TAG_subprogram ] [line 1369] [def] [scope 1370] [FinalizeUser_data_unregistered]
!280 = metadata !{metadata !281, metadata !282, metadata !283}
!281 = metadata !{i32 786688, metadata !279, metadata !"i", metadata !63, i32 1371, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1371]
!282 = metadata !{i32 786688, metadata !279, metadata !"sym", metadata !63, i32 1372, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 1372]
!283 = metadata !{i32 786688, metadata !279, metadata !"dest", metadata !63, i32 1373, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 1373]
!284 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"CloseUser_data_unregistered", metadata !"CloseUser_data_unregistered", metadata !"", i32 1405, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CloseUser_data_unregistered, null, null, metadata !60, i32 1406} ; [ DW_TAG_subprogram ] [line 1405] [def] [scope 1406] [CloseUser_data_unregistered]
!285 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"InitUser_data_registered_itu_t_t35", metadata !"InitUser_data_registered_itu_t_t35", metadata !"", i32 1431, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @InitUser_data_registered_itu_t_t35, null, null, metadata !60, i32 1432} ; [ DW_TAG_subprogram ] [line 1431] [def] [scope 1432] [InitUser_data_registered_itu_t_t35]
!286 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"ClearUser_data_registered_itu_t_t35", metadata !"ClearUser_data_registered_itu_t_t35", metadata !"", i32 1445, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @ClearUser_data_registered_itu_t_t35, null, null, metadata !60, i32 1446} ; [ DW_TAG_subprogram ] [line 1445] [def] [scope 1446] [ClearUser_data_registered_itu_t_t35]
!287 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"UpdateUser_data_registered_itu_t_t35", metadata !"UpdateUser_data_registered_itu_t_t35", metadata !"", i32 1461, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @UpdateUser_data_registered_itu_t_t35, null, null, metadata !288, i32 1462} ; [ DW_TAG_subprogram ] [line 1461] [def] [scope 1462] [UpdateUser_data_registered_itu_t_t35]
!288 = metadata !{metadata !289, metadata !290, metadata !291, metadata !292}
!289 = metadata !{i32 786688, metadata !287, metadata !"i", metadata !63, i32 1463, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1463]
!290 = metadata !{i32 786688, metadata !287, metadata !"temp_data", metadata !63, i32 1463, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp_data] [line 1463]
!291 = metadata !{i32 786688, metadata !287, metadata !"total_byte", metadata !63, i32 1464, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total_byte] [line 1464]
!292 = metadata !{i32 786688, metadata !287, metadata !"country_code", metadata !63, i32 1465, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [country_code] [line 1465]
!293 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"FinalizeUser_data_registered_itu_t_t35", metadata !"FinalizeUser_data_registered_itu_t_t35", metadata !"", i32 1488, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @FinalizeUser_data_registered_itu_t_t35, null, null, metadata !294, i32 1489} ; [ DW_TAG_subprogram ] [line 1488] [def] [scope 1489] [FinalizeUser_data_registered_itu_t_t35]
!294 = metadata !{metadata !295, metadata !296, metadata !297}
!295 = metadata !{i32 786688, metadata !293, metadata !"i", metadata !63, i32 1490, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1490]
!296 = metadata !{i32 786688, metadata !293, metadata !"sym", metadata !63, i32 1491, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 1491]
!297 = metadata !{i32 786688, metadata !293, metadata !"dest", metadata !63, i32 1492, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 1492]
!298 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"CloseUser_data_registered_itu_t_t35", metadata !"CloseUser_data_registered_itu_t_t35", metadata !"", i32 1542, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CloseUser_data_registered_itu_t_t35, null, null, metadata !60, i32 1543} ; [ DW_TAG_subprogram ] [line 1542] [def] [scope 1543] [CloseUser_data_registered_itu_t_t35]
!299 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"InitRandomAccess", metadata !"InitRandomAccess", metadata !"", i32 1567, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @InitRandomAccess, null, null, metadata !60, i32 1568} ; [ DW_TAG_subprogram ] [line 1567] [def] [scope 1568] [InitRandomAccess]
!300 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"ClearRandomAccess", metadata !"ClearRandomAccess", metadata !"", i32 1579, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @ClearRandomAccess, null, null, metadata !60, i32 1580} ; [ DW_TAG_subprogram ] [line 1579] [def] [scope 1580] [ClearRandomAccess]
!301 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"UpdateRandomAccess", metadata !"UpdateRandomAccess", metadata !"", i32 1594, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @UpdateRandomAccess, null, null, metadata !60, i32 1595} ; [ DW_TAG_subprogram ] [line 1594] [def] [scope 1595] [UpdateRandomAccess]
!302 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"FinalizeRandomAccess", metadata !"FinalizeRandomAccess", metadata !"", i32 1610, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @FinalizeRandomAccess, null, null, metadata !303, i32 1611} ; [ DW_TAG_subprogram ] [line 1610] [def] [scope 1611] [FinalizeRandomAccess]
!303 = metadata !{metadata !304, metadata !305}
!304 = metadata !{i32 786688, metadata !302, metadata !"sym", metadata !63, i32 1612, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 1612]
!305 = metadata !{i32 786688, metadata !302, metadata !"dest", metadata !63, i32 1613, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 1613]
!306 = metadata !{i32 786478, metadata !1, metadata !63, metadata !"CloseRandomAccess", metadata !"CloseRandomAccess", metadata !"", i32 1651, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CloseRandomAccess, null, null, metadata !60, i32 1652} ; [ DW_TAG_subprogram ] [line 1651] [def] [scope 1652] [CloseRandomAccess]
!307 = metadata !{metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !327, metadata !328, metadata !329, metadata !330, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !466, metadata !468, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !513, metadata !608, metadata !609, metadata !610, metadata !612, metadata !613, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !632, metadata !633, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644, metadata !649, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !661, metadata !664, metadata !665, metadata !666, metadata !667, metadata !670, metadata !673, metadata !684, metadata !725, metadata !726, metadata !727, metadata !728, metadata !729, metadata !783, metadata !784, metadata !785, metadata !786, metadata !787, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796, metadata !797, metadata !815, metadata !816, metadata !824, metadata !825, metadata !835, metadata !836, metadata !845, metadata !854, metadata !862, metadata !873, metadata !884, metadata !902, metadata !911}
!308 = metadata !{i32 786484, i32 0, null, metadata !"seiHasTemporal_reference", metadata !"seiHasTemporal_reference", metadata !"", metadata !63, i32 35, metadata !75, i32 0, i32 1, i32* @seiHasTemporal_reference, null} ; [ DW_TAG_variable ] [seiHasTemporal_reference] [line 35] [def]
!309 = metadata !{i32 786484, i32 0, null, metadata !"seiHasClock_timestamp", metadata !"seiHasClock_timestamp", metadata !"", metadata !63, i32 36, metadata !75, i32 0, i32 1, i32* @seiHasClock_timestamp, null} ; [ DW_TAG_variable ] [seiHasClock_timestamp] [line 36] [def]
!310 = metadata !{i32 786484, i32 0, null, metadata !"seiHasPanscan_rect", metadata !"seiHasPanscan_rect", metadata !"", metadata !63, i32 37, metadata !75, i32 0, i32 1, i32* @seiHasPanscan_rect, null} ; [ DW_TAG_variable ] [seiHasPanscan_rect] [line 37] [def]
!311 = metadata !{i32 786484, i32 0, null, metadata !"seiHasBuffering_period", metadata !"seiHasBuffering_period", metadata !"", metadata !63, i32 38, metadata !75, i32 0, i32 1, i32* @seiHasBuffering_period, null} ; [ DW_TAG_variable ] [seiHasBuffering_period] [line 38] [def]
!312 = metadata !{i32 786484, i32 0, null, metadata !"seiHasHrd_picture", metadata !"seiHasHrd_picture", metadata !"", metadata !63, i32 39, metadata !75, i32 0, i32 1, i32* @seiHasHrd_picture, null} ; [ DW_TAG_variable ] [seiHasHrd_picture] [line 39] [def]
!313 = metadata !{i32 786484, i32 0, null, metadata !"seiHasFiller_payload", metadata !"seiHasFiller_payload", metadata !"", metadata !63, i32 40, metadata !75, i32 0, i32 1, i32* @seiHasFiller_payload, null} ; [ DW_TAG_variable ] [seiHasFiller_payload] [line 40] [def]
!314 = metadata !{i32 786484, i32 0, null, metadata !"seiHasUser_data_registered_itu_t_t35", metadata !"seiHasUser_data_registered_itu_t_t35", metadata !"", metadata !63, i32 41, metadata !75, i32 0, i32 1, i32* @seiHasUser_data_registered_itu_t_t35, null} ; [ DW_TAG_variable ] [seiHasUser_data_registered_itu_t_t35] [line 41] [def]
!315 = metadata !{i32 786484, i32 0, null, metadata !"seiHasUser_data_unregistered", metadata !"seiHasUser_data_unregistered", metadata !"", metadata !63, i32 42, metadata !75, i32 0, i32 1, i32* @seiHasUser_data_unregistered, null} ; [ DW_TAG_variable ] [seiHasUser_data_unregistered] [line 42] [def]
!316 = metadata !{i32 786484, i32 0, null, metadata !"seiHasRandom_access_point", metadata !"seiHasRandom_access_point", metadata !"", metadata !63, i32 43, metadata !75, i32 0, i32 1, i32* @seiHasRandom_access_point, null} ; [ DW_TAG_variable ] [seiHasRandom_access_point] [line 43] [def]
!317 = metadata !{i32 786484, i32 0, null, metadata !"seiHasRef_pic_buffer_management_repetition", metadata !"seiHasRef_pic_buffer_management_repetition", metadata !"", metadata !63, i32 44, metadata !75, i32 0, i32 1, i32* @seiHasRef_pic_buffer_management_repetition, null} ; [ DW_TAG_variable ] [seiHasRef_pic_buffer_management_repetition] [line 44] [def]
!318 = metadata !{i32 786484, i32 0, null, metadata !"seiHasSpare_picture", metadata !"seiHasSpare_picture", metadata !"", metadata !63, i32 45, metadata !75, i32 0, i32 1, i32* @seiHasSpare_picture, null} ; [ DW_TAG_variable ] [seiHasSpare_picture] [line 45] [def]
!319 = metadata !{i32 786484, i32 0, null, metadata !"seiHasSceneInformation", metadata !"seiHasSceneInformation", metadata !"", metadata !63, i32 47, metadata !75, i32 0, i32 1, i32* @seiHasSceneInformation, null} ; [ DW_TAG_variable ] [seiHasSceneInformation] [line 47] [def]
!320 = metadata !{i32 786484, i32 0, null, metadata !"seiHasSubseq_information", metadata !"seiHasSubseq_information", metadata !"", metadata !63, i32 49, metadata !75, i32 0, i32 1, i32* @seiHasSubseq_information, null} ; [ DW_TAG_variable ] [seiHasSubseq_information] [line 49] [def]
!321 = metadata !{i32 786484, i32 0, null, metadata !"seiHasSubseq_layer_characteristics", metadata !"seiHasSubseq_layer_characteristics", metadata !"", metadata !63, i32 50, metadata !75, i32 0, i32 1, i32* @seiHasSubseq_layer_characteristics, null} ; [ DW_TAG_variable ] [seiHasSubseq_layer_characteristics] [line 50] [def]
!322 = metadata !{i32 786484, i32 0, null, metadata !"seiHasSubseq_characteristics", metadata !"seiHasSubseq_characteristics", metadata !"", metadata !63, i32 51, metadata !75, i32 0, i32 1, i32* @seiHasSubseq_characteristics, null} ; [ DW_TAG_variable ] [seiHasSubseq_characteristics] [line 51] [def]
!323 = metadata !{i32 786484, i32 0, null, metadata !"seiHasSparePicture", metadata !"seiHasSparePicture", metadata !"", metadata !63, i32 304, metadata !75, i32 0, i32 1, i32* @seiHasSparePicture, null} ; [ DW_TAG_variable ] [seiHasSparePicture] [line 304] [def]
!324 = metadata !{i32 786484, i32 0, null, metadata !"seiHasSubseqInfo", metadata !"seiHasSubseqInfo", metadata !"", metadata !63, i32 792, metadata !75, i32 0, i32 1, i32* @seiHasSubseqInfo, null} ; [ DW_TAG_variable ] [seiHasSubseqInfo] [line 792] [def]
!325 = metadata !{i32 786484, i32 0, metadata !216, metadata !"id", metadata !"id", metadata !"", metadata !63, i32 803, metadata !326, i32 1, i32 1, i16* @InitSubseqInfo.id, null} ; [ DW_TAG_variable ] [id] [line 803] [local] [def]
!326 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!327 = metadata !{i32 786484, i32 0, null, metadata !"seiHasSubseqLayerInfo", metadata !"seiHasSubseqLayerInfo", metadata !"", metadata !63, i32 934, metadata !75, i32 0, i32 1, i32* @seiHasSubseqLayerInfo, null} ; [ DW_TAG_variable ] [seiHasSubseqLayerInfo] [line 934] [def]
!328 = metadata !{i32 786484, i32 0, null, metadata !"seiHasSubseqChar", metadata !"seiHasSubseqChar", metadata !"", metadata !63, i32 997, metadata !75, i32 0, i32 1, i32* @seiHasSubseqChar, null} ; [ DW_TAG_variable ] [seiHasSubseqChar] [line 997] [def]
!329 = metadata !{i32 786484, i32 0, null, metadata !"seiHasPanScanRectInfo", metadata !"seiHasPanScanRectInfo", metadata !"", metadata !63, i32 1221, metadata !75, i32 0, i32 1, i32* @seiHasPanScanRectInfo, null} ; [ DW_TAG_variable ] [seiHasPanScanRectInfo] [line 1221] [def]
!330 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !331, i32 558, metadata !332, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!331 = metadata !{i32 786473, metadata !9}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!332 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !333} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!333 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !334} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!334 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !335, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!335 = metadata !{metadata !336, metadata !337, metadata !338, metadata !454, metadata !455, metadata !457, metadata !458}
!336 = metadata !{i32 786445, metadata !9, metadata !334, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!337 = metadata !{i32 786445, metadata !9, metadata !334, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!338 = metadata !{i32 786445, metadata !9, metadata !334, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !339} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!339 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !340, metadata !452, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!340 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !341} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!341 = metadata !{i32 786454, metadata !9, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !342} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!342 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !343, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!343 = metadata !{metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !363, metadata !401, metadata !428, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !449}
!344 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!345 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!346 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!347 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !68} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!348 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!349 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !68} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!350 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !351} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!351 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !352} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!352 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !353} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!353 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !354, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!354 = metadata !{metadata !355, metadata !356, metadata !357}
!355 = metadata !{i32 786445, metadata !9, metadata !353, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!356 = metadata !{i32 786445, metadata !9, metadata !353, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !160} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!357 = metadata !{i32 786445, metadata !9, metadata !353, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !358} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!358 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !359} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!359 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!360 = metadata !{metadata !68, metadata !361, metadata !362}
!361 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!362 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !353} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!363 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !364} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!364 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !365} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!365 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !366} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!366 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !367, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!367 = metadata !{metadata !368, metadata !380, metadata !385, metadata !389, metadata !393, metadata !397, metadata !398}
!368 = metadata !{i32 786445, metadata !9, metadata !366, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !369} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!369 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !370, metadata !377, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!370 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !371} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!371 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !372, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!372 = metadata !{metadata !373, metadata !374, metadata !375}
!373 = metadata !{i32 786445, metadata !9, metadata !371, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !326} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!374 = metadata !{i32 786445, metadata !9, metadata !371, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !81} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!375 = metadata !{i32 786445, metadata !9, metadata !371, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !376} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!376 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!377 = metadata !{metadata !378, metadata !379}
!378 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!379 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!380 = metadata !{i32 786445, metadata !9, metadata !366, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !381} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!381 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !370, metadata !382, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!382 = metadata !{metadata !383, metadata !384}
!383 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!384 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!385 = metadata !{i32 786445, metadata !9, metadata !366, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !386} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!386 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !370, metadata !387, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!387 = metadata !{metadata !383, metadata !388}
!388 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!389 = metadata !{i32 786445, metadata !9, metadata !366, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !390} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!390 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !370, metadata !391, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!391 = metadata !{metadata !383, metadata !392}
!392 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!393 = metadata !{i32 786445, metadata !9, metadata !366, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !394} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!394 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !370, metadata !395, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!395 = metadata !{metadata !396}
!396 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!397 = metadata !{i32 786445, metadata !9, metadata !366, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !394} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!398 = metadata !{i32 786445, metadata !9, metadata !366, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !399} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!399 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !370, metadata !400, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!400 = metadata !{metadata !378}
!401 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !402} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!402 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !403} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!403 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !404} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!404 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !405, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!405 = metadata !{metadata !406, metadata !409, metadata !410, metadata !413, metadata !416, metadata !420, metadata !421, metadata !425, metadata !426, metadata !427}
!406 = metadata !{i32 786445, metadata !9, metadata !404, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !407} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!407 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !370, metadata !408, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!408 = metadata !{metadata !383}
!409 = metadata !{i32 786445, metadata !9, metadata !404, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !394} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!410 = metadata !{i32 786445, metadata !9, metadata !404, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !411} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!411 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !370, metadata !412, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!412 = metadata !{metadata !378, metadata !396}
!413 = metadata !{i32 786445, metadata !9, metadata !404, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !414} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!414 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !370, metadata !415, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!415 = metadata !{metadata !388, metadata !396}
!416 = metadata !{i32 786445, metadata !9, metadata !404, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !417} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!417 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !370, metadata !418, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!418 = metadata !{metadata !388, metadata !419}
!419 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!420 = metadata !{i32 786445, metadata !9, metadata !404, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !417} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!421 = metadata !{i32 786445, metadata !9, metadata !404, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !422} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!422 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !370, metadata !423, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!423 = metadata !{metadata !388, metadata !424}
!424 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!425 = metadata !{i32 786445, metadata !9, metadata !404, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !422} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!426 = metadata !{i32 786445, metadata !9, metadata !404, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !417} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!427 = metadata !{i32 786445, metadata !9, metadata !404, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !417} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!428 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !429} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!429 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !430} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!430 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !431} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!431 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !432, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!432 = metadata !{metadata !433, metadata !434, metadata !435}
!433 = metadata !{i32 786445, metadata !9, metadata !431, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!434 = metadata !{i32 786445, metadata !9, metadata !431, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!435 = metadata !{i32 786445, metadata !9, metadata !431, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !436} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!436 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !431} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!437 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !68} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!438 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !152} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!439 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !152} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!440 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !152} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!441 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !68} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!442 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !152} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!443 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !152} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!444 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !152} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!445 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !446} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!446 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !447} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!447 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !448, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!448 = metadata !{metadata !75, metadata !68}
!449 = metadata !{i32 786445, metadata !9, metadata !342, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !450} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!450 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !68, metadata !451, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!451 = metadata !{metadata !378, metadata !383}
!452 = metadata !{metadata !453}
!453 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!454 = metadata !{i32 786445, metadata !9, metadata !334, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !68} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!455 = metadata !{i32 786445, metadata !9, metadata !334, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !456} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!456 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!457 = metadata !{i32 786445, metadata !9, metadata !334, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !456} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!458 = metadata !{i32 786445, metadata !9, metadata !334, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !456} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!459 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !331, i32 559, metadata !332, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!460 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !331, i32 560, metadata !332, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!461 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !331, i32 561, metadata !332, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!462 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !331, i32 562, metadata !332, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!463 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !331, i32 565, metadata !464, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!464 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!465 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !326} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!466 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !331, i32 566, metadata !467, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!467 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !464} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!468 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !331, i32 567, metadata !469, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!469 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !152} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!470 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !331, i32 569, metadata !145, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!471 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !331, i32 570, metadata !145, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!472 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !331, i32 572, metadata !68, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!473 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !331, i32 572, metadata !68, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!474 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !331, i32 573, metadata !475, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!475 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !476} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!476 = metadata !{i32 786454, metadata !9, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !477} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!477 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !478, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!478 = metadata !{metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !489, metadata !490, metadata !491, metadata !492, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512}
!479 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!480 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !145} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!481 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!482 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !75} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!483 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !75} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!484 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !75} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!485 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !486} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!486 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !68, metadata !487, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!487 = metadata !{metadata !488}
!488 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!489 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !75} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!490 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !145} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!491 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !145} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!492 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !493} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!493 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !145, metadata !487, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!494 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !493} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!495 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !493} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!496 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !75} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!497 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !145} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!498 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !145} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!499 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !79} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!500 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !68} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!501 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !68} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!502 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !75} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!503 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !145} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!504 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !68} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!505 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !68} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!506 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !68} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!507 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !68} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!508 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !68} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!509 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !75} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!510 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !75} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!511 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !75} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!512 = metadata !{i32 786445, metadata !4, metadata !477, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !75} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!513 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !331, i32 574, metadata !514, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!514 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !515} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!515 = metadata !{i32 786454, metadata !9, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !516} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!516 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !517, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!517 = metadata !{metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555}
!518 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!519 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !145} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!520 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!521 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !75} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!522 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !75} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!523 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !75} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!524 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !145} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!525 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !145} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!526 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !145} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!527 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !75} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!528 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !486} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!529 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !145} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!530 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !145} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!531 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !145} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!532 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !145} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!533 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !145} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!534 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !75} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!535 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !68} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!536 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !68} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!537 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !145} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!538 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !539} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!539 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !68, metadata !540, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!540 = metadata !{metadata !541}
!541 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!542 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !145} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!543 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !75} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!544 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !145} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!545 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !145} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!546 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !75} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!547 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !75} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!548 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !75} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!549 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !75} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!550 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !145} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!551 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !145} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!552 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !145} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!553 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !145} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!554 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !75} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!555 = metadata !{i32 786445, metadata !4, metadata !516, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !556} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!556 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !557} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!557 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !558, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!558 = metadata !{metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607}
!559 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!560 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !145} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!561 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!562 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !145} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!563 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !75} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!564 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !75} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!565 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!566 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !145} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!567 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !75} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!568 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !75} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!569 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !145} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!570 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !145} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!571 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !145} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!572 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !75} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!573 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !145} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!574 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !145} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!575 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !75} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!576 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !145} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!577 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !145} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!578 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !75} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!579 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !75} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!580 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !581} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!581 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !582} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!582 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !583, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!583 = metadata !{metadata !584, metadata !585, metadata !586, metadata !587, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596}
!584 = metadata !{i32 786445, metadata !4, metadata !582, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !145} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!585 = metadata !{i32 786445, metadata !4, metadata !582, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !145} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!586 = metadata !{i32 786445, metadata !4, metadata !582, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!587 = metadata !{i32 786445, metadata !4, metadata !582, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !588} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!588 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !145, metadata !589, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!589 = metadata !{metadata !590}
!590 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!591 = metadata !{i32 786445, metadata !4, metadata !582, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !588} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!592 = metadata !{i32 786445, metadata !4, metadata !582, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !588} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!593 = metadata !{i32 786445, metadata !4, metadata !582, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !145} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!594 = metadata !{i32 786445, metadata !4, metadata !582, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !145} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!595 = metadata !{i32 786445, metadata !4, metadata !582, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !145} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!596 = metadata !{i32 786445, metadata !4, metadata !582, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !145} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!597 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !75} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!598 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !581} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!599 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !75} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!600 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !75} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!601 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !75} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!602 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !145} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!603 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !145} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!604 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !145} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!605 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !145} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!606 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !145} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!607 = metadata !{i32 786445, metadata !4, metadata !557, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !145} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!608 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !331, i32 578, metadata !68, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!609 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !331, i32 579, metadata !68, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!610 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !331, i32 583, metadata !611, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!611 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !469} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!612 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !331, i32 584, metadata !611, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!613 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !331, i32 585, metadata !614, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!614 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !611} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!615 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !331, i32 586, metadata !68, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!616 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !331, i32 587, metadata !68, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!617 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !331, i32 588, metadata !68, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!618 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !331, i32 589, metadata !68, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!619 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !331, i32 592, metadata !464, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!620 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !331, i32 593, metadata !464, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!621 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !331, i32 595, metadata !467, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!622 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !331, i32 596, metadata !467, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!623 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !331, i32 598, metadata !464, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!624 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !331, i32 599, metadata !467, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!625 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !331, i32 601, metadata !464, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!626 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !331, i32 602, metadata !467, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!627 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !331, i32 604, metadata !628, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!628 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !629} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!629 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !630} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!630 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !631} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!631 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!632 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !331, i32 605, metadata !629, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!633 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !331, i32 608, metadata !634, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!634 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!635 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !331, i32 609, metadata !634, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!636 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !331, i32 610, metadata !68, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!637 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !331, i32 612, metadata !68, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!638 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !331, i32 612, metadata !68, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!639 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !331, i32 612, metadata !68, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!640 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !331, i32 613, metadata !68, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!641 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !331, i32 613, metadata !68, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!642 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !331, i32 613, metadata !68, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!643 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !331, i32 614, metadata !68, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!644 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !331, i32 617, metadata !645, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!645 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !646, metadata !647, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!646 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!647 = metadata !{metadata !648}
!648 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!649 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !331, i32 620, metadata !650, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!650 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !68, metadata !651, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!651 = metadata !{metadata !652, metadata !652}
!652 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!653 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !331, i32 620, metadata !650, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!654 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !331, i32 620, metadata !650, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!655 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !331, i32 621, metadata !650, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!656 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !331, i32 621, metadata !650, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!657 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !331, i32 621, metadata !650, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!658 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !331, i32 622, metadata !659, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!659 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !68, metadata !660, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!660 = metadata !{metadata !378, metadata !652, metadata !652}
!661 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !331, i32 623, metadata !662, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!662 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !68, metadata !663, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!663 = metadata !{metadata !383, metadata !396, metadata !396}
!664 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !331, i32 623, metadata !662, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!665 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !331, i32 624, metadata !662, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!666 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !331, i32 624, metadata !662, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!667 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !331, i32 625, metadata !668, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!668 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !68, metadata !669, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!669 = metadata !{metadata !396, metadata !396}
!670 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !331, i32 625, metadata !671, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!671 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !68, metadata !672, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!672 = metadata !{metadata !652}
!673 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !331, i32 1201, metadata !674, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!674 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !675} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!675 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!676 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !677, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!677 = metadata !{metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683}
!678 = metadata !{i32 786445, metadata !9, metadata !676, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!679 = metadata !{i32 786445, metadata !9, metadata !676, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!680 = metadata !{i32 786445, metadata !9, metadata !676, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!681 = metadata !{i32 786445, metadata !9, metadata !676, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !68} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!682 = metadata !{i32 786445, metadata !9, metadata !676, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!683 = metadata !{i32 786445, metadata !9, metadata !676, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !68} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!684 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !331, i32 1202, metadata !685, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!685 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !686} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!686 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !687} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!687 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !688, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!688 = metadata !{metadata !689, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !700, metadata !701, metadata !702, metadata !703, metadata !704, metadata !708, metadata !709, metadata !713, metadata !714, metadata !715, metadata !716, metadata !718, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724}
!689 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !690} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!690 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!691 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !650} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!692 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !650} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!693 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !650} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!694 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !614} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!695 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !611} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!696 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !68} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!697 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !68} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!698 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !699} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!699 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !68, metadata !395, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!700 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !699} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!701 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !469} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!702 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !671} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!703 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !68} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!704 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !705} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!705 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !706} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!706 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !707} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!707 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!708 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !68} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!709 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !710} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!710 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !711} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!711 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !712} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!712 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !628} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!713 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !710} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!714 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !710} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!715 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !710} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!716 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !717} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!717 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !631, metadata !663, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!718 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !68} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!719 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !68} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!720 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !68} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!721 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !68} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!722 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !68} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!723 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !68} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!724 = metadata !{i32 786445, metadata !9, metadata !687, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !68} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!725 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !331, i32 1203, metadata !686, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!726 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !331, i32 1203, metadata !686, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!727 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !331, i32 1204, metadata !686, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!728 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !331, i32 1204, metadata !686, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!729 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !331, i32 1230, metadata !730, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!730 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !731} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!731 = metadata !{i32 786454, metadata !9, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !732} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!732 = metadata !{i32 786451, metadata !733, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !734, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!733 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!734 = metadata !{metadata !735, metadata !736, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !756, metadata !757, metadata !758, metadata !759, metadata !761, metadata !762, metadata !764, metadata !768, metadata !770, metadata !772, metadata !773, metadata !774, metadata !775, metadata !776, metadata !778, metadata !779}
!735 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!736 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !737} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!737 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !646} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!738 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !737} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!739 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !737} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!740 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !737} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!741 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !737} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!742 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !737} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!743 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !737} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!744 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !737} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!745 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !737} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!746 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !737} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!747 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !737} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!748 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !749} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!749 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !750} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!750 = metadata !{i32 786451, metadata !733, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !751, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!751 = metadata !{metadata !752, metadata !753, metadata !755}
!752 = metadata !{i32 786445, metadata !733, metadata !750, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !749} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!753 = metadata !{i32 786445, metadata !733, metadata !750, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !754} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!754 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !732} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!755 = metadata !{i32 786445, metadata !733, metadata !750, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!756 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !754} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!757 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !68} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!758 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !68} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!759 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !760} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!760 = metadata !{i32 786454, metadata !733, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !707} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!761 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !326} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!762 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !763} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!763 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!764 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !765} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!765 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !646, metadata !766, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!766 = metadata !{metadata !767}
!767 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!768 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !769} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!769 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!770 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !771} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!771 = metadata !{i32 786454, metadata !733, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !707} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!772 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !769} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!773 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !769} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!774 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !769} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!775 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !769} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!776 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !777} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!777 = metadata !{i32 786454, metadata !733, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !376} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!778 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !68} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!779 = metadata !{i32 786445, metadata !733, metadata !732, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !780} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!780 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !646, metadata !781, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!781 = metadata !{metadata !782}
!782 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!783 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !331, i32 1231, metadata !730, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!784 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !331, i32 1232, metadata !730, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!785 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !331, i32 1233, metadata !68, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!786 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !331, i32 1234, metadata !68, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!787 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !331, i32 1237, metadata !788, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!788 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !68, metadata !781, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!789 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !331, i32 1238, metadata !788, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!790 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !331, i32 1239, metadata !788, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!791 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !331, i32 1240, metadata !788, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!792 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !331, i32 1241, metadata !788, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!793 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !331, i32 1242, metadata !788, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!794 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !331, i32 1456, metadata !68, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!795 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !331, i32 1465, metadata !68, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!796 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !331, i32 1466, metadata !68, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!797 = metadata !{i32 786484, i32 0, null, metadata !"WriteNALU", metadata !"WriteNALU", metadata !"", metadata !798, i32 28, metadata !800, i32 0, i32 1, i32 (%struct.NALU_t*)** @WriteNALU, null} ; [ DW_TAG_variable ] [WriteNALU] [line 28] [def]
!798 = metadata !{i32 786473, metadata !799}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h]
!799 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!800 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !801} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!801 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !802, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!802 = metadata !{metadata !68, metadata !803}
!803 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !804} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from NALU_t]
!804 = metadata !{i32 786454, metadata !799, null, metadata !"NALU_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !805} ; [ DW_TAG_typedef ] [NALU_t] [line 49, size 0, align 0, offset 0] [from ]
!805 = metadata !{i32 786451, metadata !806, null, metadata !"", i32 40, i64 256, i64 64, i32 0, i32 0, null, metadata !807, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 256, align 64, offset 0] [from ]
!806 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalucommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!807 = metadata !{metadata !808, metadata !809, metadata !810, metadata !811, metadata !812, metadata !813, metadata !814}
!808 = metadata !{i32 786445, metadata !806, metadata !805, metadata !"startcodeprefix_len", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [startcodeprefix_len] [line 42, size 32, align 32, offset 0] [from int]
!809 = metadata !{i32 786445, metadata !806, metadata !805, metadata !"len", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !145} ; [ DW_TAG_member ] [len] [line 43, size 32, align 32, offset 32] [from unsigned int]
!810 = metadata !{i32 786445, metadata !806, metadata !805, metadata !"max_size", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [max_size] [line 44, size 32, align 32, offset 64] [from unsigned int]
!811 = metadata !{i32 786445, metadata !806, metadata !805, metadata !"nal_unit_type", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !68} ; [ DW_TAG_member ] [nal_unit_type] [line 45, size 32, align 32, offset 96] [from int]
!812 = metadata !{i32 786445, metadata !806, metadata !805, metadata !"nal_reference_idc", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [nal_reference_idc] [line 46, size 32, align 32, offset 128] [from int]
!813 = metadata !{i32 786445, metadata !806, metadata !805, metadata !"forbidden_bit", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !68} ; [ DW_TAG_member ] [forbidden_bit] [line 47, size 32, align 32, offset 160] [from int]
!814 = metadata !{i32 786445, metadata !806, metadata !805, metadata !"buf", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !79} ; [ DW_TAG_member ] [buf] [line 48, size 64, align 64, offset 192] [from ]
!815 = metadata !{i32 786484, i32 0, null, metadata !"seiHasUser_data_unregistered_info", metadata !"seiHasUser_data_unregistered_info", metadata !"", metadata !63, i32 1324, metadata !75, i32 0, i32 1, i32* @seiHasUser_data_unregistered_info, null} ; [ DW_TAG_variable ] [seiHasUser_data_unregistered_info] [line 1324] [def]
!816 = metadata !{i32 786484, i32 0, null, metadata !"seiUser_data_unregistered", metadata !"seiUser_data_unregistered", metadata !"", metadata !63, i32 1325, metadata !817, i32 0, i32 1, %struct.user_data_unregistered_information_struct* @seiUser_data_unregistered, null} ; [ DW_TAG_variable ] [seiUser_data_unregistered] [line 1325] [def]
!817 = metadata !{i32 786454, metadata !1, null, metadata !"user_data_unregistered_information_struct", i32 211, i64 0, i64 0, i64 0, i32 0, metadata !818} ; [ DW_TAG_typedef ] [user_data_unregistered_information_struct] [line 211, size 0, align 0, offset 0] [from ]
!818 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 205, i64 256, i64 64, i32 0, i32 0, null, metadata !819, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 205, size 256, align 64, offset 0] [from ]
!819 = metadata !{metadata !820, metadata !821, metadata !822, metadata !823}
!820 = metadata !{i32 786445, metadata !17, metadata !818, metadata !"byte", i32 207, i64 64, i64 64, i64 0, i32 0, metadata !737} ; [ DW_TAG_member ] [byte] [line 207, size 64, align 64, offset 0] [from ]
!821 = metadata !{i32 786445, metadata !17, metadata !818, metadata !"total_byte", i32 208, i64 32, i64 32, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [total_byte] [line 208, size 32, align 32, offset 64] [from int]
!822 = metadata !{i32 786445, metadata !17, metadata !818, metadata !"data", i32 209, i64 64, i64 64, i64 128, i32 0, metadata !102} ; [ DW_TAG_member ] [data] [line 209, size 64, align 64, offset 128] [from ]
!823 = metadata !{i32 786445, metadata !17, metadata !818, metadata !"payloadSize", i32 210, i64 32, i64 32, i64 192, i32 0, metadata !68} ; [ DW_TAG_member ] [payloadSize] [line 210, size 32, align 32, offset 192] [from int]
!824 = metadata !{i32 786484, i32 0, null, metadata !"seiHasUser_data_registered_itu_t_t35_info", metadata !"seiHasUser_data_registered_itu_t_t35_info", metadata !"", metadata !63, i32 1429, metadata !75, i32 0, i32 1, i32* @seiHasUser_data_registered_itu_t_t35_info, null} ; [ DW_TAG_variable ] [seiHasUser_data_registered_itu_t_t35_info] [line 1429] [def]
!825 = metadata !{i32 786484, i32 0, null, metadata !"seiUser_data_registered_itu_t_t35", metadata !"seiUser_data_registered_itu_t_t35", metadata !"", metadata !63, i32 1430, metadata !826, i32 0, i32 1, %struct.user_data_registered_itu_t_t35_information_struct* @seiUser_data_registered_itu_t_t35, null} ; [ DW_TAG_variable ] [seiUser_data_registered_itu_t_t35] [line 1430] [def]
!826 = metadata !{i32 786454, metadata !1, null, metadata !"user_data_registered_itu_t_t35_information_struct", i32 235, i64 0, i64 0, i64 0, i32 0, metadata !827} ; [ DW_TAG_typedef ] [user_data_registered_itu_t_t35_information_struct] [line 235, size 0, align 0, offset 0] [from ]
!827 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 227, i64 320, i64 64, i32 0, i32 0, null, metadata !828, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 227, size 320, align 64, offset 0] [from ]
!828 = metadata !{metadata !829, metadata !830, metadata !831, metadata !832, metadata !833, metadata !834}
!829 = metadata !{i32 786445, metadata !17, metadata !827, metadata !"byte", i32 229, i64 64, i64 64, i64 0, i32 0, metadata !737} ; [ DW_TAG_member ] [byte] [line 229, size 64, align 64, offset 0] [from ]
!830 = metadata !{i32 786445, metadata !17, metadata !827, metadata !"total_byte", i32 230, i64 32, i64 32, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [total_byte] [line 230, size 32, align 32, offset 64] [from int]
!831 = metadata !{i32 786445, metadata !17, metadata !827, metadata !"itu_t_t35_country_code", i32 231, i64 32, i64 32, i64 96, i32 0, metadata !68} ; [ DW_TAG_member ] [itu_t_t35_country_code] [line 231, size 32, align 32, offset 96] [from int]
!832 = metadata !{i32 786445, metadata !17, metadata !827, metadata !"itu_t_t35_country_code_extension_byte", i32 232, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [itu_t_t35_country_code_extension_byte] [line 232, size 32, align 32, offset 128] [from int]
!833 = metadata !{i32 786445, metadata !17, metadata !827, metadata !"data", i32 233, i64 64, i64 64, i64 192, i32 0, metadata !102} ; [ DW_TAG_member ] [data] [line 233, size 64, align 64, offset 192] [from ]
!834 = metadata !{i32 786445, metadata !17, metadata !827, metadata !"payloadSize", i32 234, i64 32, i64 32, i64 256, i32 0, metadata !68} ; [ DW_TAG_member ] [payloadSize] [line 234, size 32, align 32, offset 256] [from int]
!835 = metadata !{i32 786484, i32 0, null, metadata !"seiHasRandomAccess_info", metadata !"seiHasRandomAccess_info", metadata !"", metadata !63, i32 1565, metadata !75, i32 0, i32 1, i32* @seiHasRandomAccess_info, null} ; [ DW_TAG_variable ] [seiHasRandomAccess_info] [line 1565] [def]
!836 = metadata !{i32 786484, i32 0, null, metadata !"seiRandomAccess", metadata !"seiRandomAccess", metadata !"", metadata !63, i32 1566, metadata !837, i32 0, i32 1, %struct.randomaccess_information_struct* @seiRandomAccess, null} ; [ DW_TAG_variable ] [seiRandomAccess] [line 1566] [def]
!837 = metadata !{i32 786454, metadata !1, null, metadata !"randomaccess_information_struct", i32 259, i64 0, i64 0, i64 0, i32 0, metadata !838} ; [ DW_TAG_typedef ] [randomaccess_information_struct] [line 259, size 0, align 0, offset 0] [from ]
!838 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 251, i64 192, i64 64, i32 0, i32 0, null, metadata !839, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 251, size 192, align 64, offset 0] [from ]
!839 = metadata !{metadata !840, metadata !841, metadata !842, metadata !843, metadata !844}
!840 = metadata !{i32 786445, metadata !17, metadata !838, metadata !"recovery_point_flag", i32 253, i64 8, i64 8, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [recovery_point_flag] [line 253, size 8, align 8, offset 0] [from unsigned char]
!841 = metadata !{i32 786445, metadata !17, metadata !838, metadata !"exact_match_flag", i32 254, i64 8, i64 8, i64 8, i32 0, metadata !81} ; [ DW_TAG_member ] [exact_match_flag] [line 254, size 8, align 8, offset 8] [from unsigned char]
!842 = metadata !{i32 786445, metadata !17, metadata !838, metadata !"broken_link_flag", i32 255, i64 8, i64 8, i64 16, i32 0, metadata !81} ; [ DW_TAG_member ] [broken_link_flag] [line 255, size 8, align 8, offset 16] [from unsigned char]
!843 = metadata !{i32 786445, metadata !17, metadata !838, metadata !"data", i32 257, i64 64, i64 64, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [data] [line 257, size 64, align 64, offset 64] [from ]
!844 = metadata !{i32 786445, metadata !17, metadata !838, metadata !"payloadSize", i32 258, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [payloadSize] [line 258, size 32, align 32, offset 128] [from int]
!845 = metadata !{i32 786484, i32 0, null, metadata !"sei_message", metadata !"sei_message", metadata !"", metadata !63, i32 63, metadata !846, i32 0, i32 1, [2 x %struct.sei_struct]* @sei_message, null} ; [ DW_TAG_variable ] [sei_message] [line 63] [def]
!846 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !847, metadata !408, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from sei_struct]
!847 = metadata !{i32 786454, metadata !1, null, metadata !"sei_struct", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !848} ; [ DW_TAG_typedef ] [sei_struct] [line 58, size 0, align 0, offset 0] [from ]
!848 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 52, i64 192, i64 64, i32 0, i32 0, null, metadata !849, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 52, size 192, align 64, offset 0] [from ]
!849 = metadata !{metadata !850, metadata !851, metadata !852, metadata !853}
!850 = metadata !{i32 786445, metadata !17, metadata !848, metadata !"available", i32 54, i64 32, i64 32, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ] [available] [line 54, size 32, align 32, offset 0] [from Boolean]
!851 = metadata !{i32 786445, metadata !17, metadata !848, metadata !"payloadSize", i32 55, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [payloadSize] [line 55, size 32, align 32, offset 32] [from int]
!852 = metadata !{i32 786445, metadata !17, metadata !848, metadata !"subPacketType", i32 56, i64 8, i64 8, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [subPacketType] [line 56, size 8, align 8, offset 64] [from unsigned char]
!853 = metadata !{i32 786445, metadata !17, metadata !848, metadata !"data", i32 57, i64 64, i64 64, i64 128, i32 0, metadata !79} ; [ DW_TAG_member ] [data] [line 57, size 64, align 64, offset 128] [from ]
!854 = metadata !{i32 786484, i32 0, null, metadata !"seiSparePicturePayload", metadata !"seiSparePicturePayload", metadata !"", metadata !63, i32 305, metadata !855, i32 0, i32 1, %struct.spare_picture_struct* @seiSparePicturePayload, null} ; [ DW_TAG_variable ] [seiSparePicturePayload] [line 305] [def]
!855 = metadata !{i32 786454, metadata !1, null, metadata !"spare_picture_struct", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !856} ; [ DW_TAG_typedef ] [spare_picture_struct] [line 82, size 0, align 0, offset 0] [from ]
!856 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 76, i64 192, i64 64, i32 0, i32 0, null, metadata !857, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 76, size 192, align 64, offset 0] [from ]
!857 = metadata !{metadata !858, metadata !859, metadata !860, metadata !861}
!858 = metadata !{i32 786445, metadata !17, metadata !856, metadata !"target_frame_num", i32 78, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [target_frame_num] [line 78, size 32, align 32, offset 0] [from int]
!859 = metadata !{i32 786445, metadata !17, metadata !856, metadata !"num_spare_pics", i32 79, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [num_spare_pics] [line 79, size 32, align 32, offset 32] [from int]
!860 = metadata !{i32 786445, metadata !17, metadata !856, metadata !"payloadSize", i32 80, i64 32, i64 32, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [payloadSize] [line 80, size 32, align 32, offset 64] [from int]
!861 = metadata !{i32 786445, metadata !17, metadata !856, metadata !"data", i32 81, i64 64, i64 64, i64 128, i32 0, metadata !102} ; [ DW_TAG_member ] [data] [line 81, size 64, align 64, offset 128] [from ]
!862 = metadata !{i32 786484, i32 0, null, metadata !"seiSubseqInfo", metadata !"seiSubseqInfo", metadata !"", metadata !63, i32 793, metadata !863, i32 0, i32 1, [2 x %struct.subseq_information_struct]* @seiSubseqInfo, null} ; [ DW_TAG_variable ] [seiSubseqInfo] [line 793] [def]
!863 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !864, metadata !408, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from subseq_information_struct]
!864 = metadata !{i32 786454, metadata !1, null, metadata !"subseq_information_struct", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !865} ; [ DW_TAG_typedef ] [subseq_information_struct] [line 105, size 0, align 0, offset 0] [from ]
!865 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 96, i64 256, i64 64, i32 0, i32 0, null, metadata !866, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 96, size 256, align 64, offset 0] [from ]
!866 = metadata !{metadata !867, metadata !868, metadata !869, metadata !870, metadata !871, metadata !872}
!867 = metadata !{i32 786445, metadata !17, metadata !865, metadata !"subseq_layer_num", i32 98, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [subseq_layer_num] [line 98, size 32, align 32, offset 0] [from int]
!868 = metadata !{i32 786445, metadata !17, metadata !865, metadata !"subseq_id", i32 99, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [subseq_id] [line 99, size 32, align 32, offset 32] [from int]
!869 = metadata !{i32 786445, metadata !17, metadata !865, metadata !"last_picture_flag", i32 100, i64 32, i64 32, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [last_picture_flag] [line 100, size 32, align 32, offset 64] [from unsigned int]
!870 = metadata !{i32 786445, metadata !17, metadata !865, metadata !"stored_frame_cnt", i32 101, i64 32, i64 32, i64 96, i32 0, metadata !145} ; [ DW_TAG_member ] [stored_frame_cnt] [line 101, size 32, align 32, offset 96] [from unsigned int]
!871 = metadata !{i32 786445, metadata !17, metadata !865, metadata !"payloadSize", i32 103, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [payloadSize] [line 103, size 32, align 32, offset 128] [from int]
!872 = metadata !{i32 786445, metadata !17, metadata !865, metadata !"data", i32 104, i64 64, i64 64, i64 192, i32 0, metadata !102} ; [ DW_TAG_member ] [data] [line 104, size 64, align 64, offset 192] [from ]
!873 = metadata !{i32 786484, i32 0, null, metadata !"seiSubseqLayerInfo", metadata !"seiSubseqLayerInfo", metadata !"", metadata !63, i32 935, metadata !874, i32 0, i32 1, %struct.subseq_layer_information_struct* @seiSubseqLayerInfo, null} ; [ DW_TAG_variable ] [seiSubseqLayerInfo] [line 935] [def]
!874 = metadata !{i32 786454, metadata !1, null, metadata !"subseq_layer_information_struct", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !875} ; [ DW_TAG_typedef ] [subseq_layer_information_struct] [line 124, size 0, align 0, offset 0] [from ]
!875 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 117, i64 192, i64 32, i32 0, i32 0, null, metadata !876, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 192, align 32, offset 0] [from ]
!876 = metadata !{metadata !877, metadata !879, metadata !880, metadata !882, metadata !883}
!877 = metadata !{i32 786445, metadata !17, metadata !875, metadata !"bit_rate", i32 119, i64 32, i64 16, i64 0, i32 0, metadata !878} ; [ DW_TAG_member ] [bit_rate] [line 119, size 32, align 16, offset 0] [from ]
!878 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 16, i32 0, i32 0, metadata !326, metadata !408, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 16, offset 0] [from unsigned short]
!879 = metadata !{i32 786445, metadata !17, metadata !875, metadata !"frame_rate", i32 120, i64 32, i64 16, i64 32, i32 0, metadata !878} ; [ DW_TAG_member ] [frame_rate] [line 120, size 32, align 16, offset 32] [from ]
!880 = metadata !{i32 786445, metadata !17, metadata !875, metadata !"data", i32 121, i64 64, i64 8, i64 64, i32 0, metadata !881} ; [ DW_TAG_member ] [data] [line 121, size 64, align 8, offset 64] [from ]
!881 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !80, metadata !487, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from byte]
!882 = metadata !{i32 786445, metadata !17, metadata !875, metadata !"layer_number", i32 122, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [layer_number] [line 122, size 32, align 32, offset 128] [from int]
!883 = metadata !{i32 786445, metadata !17, metadata !875, metadata !"payloadSize", i32 123, i64 32, i64 32, i64 160, i32 0, metadata !68} ; [ DW_TAG_member ] [payloadSize] [line 123, size 32, align 32, offset 160] [from int]
!884 = metadata !{i32 786484, i32 0, null, metadata !"seiSubseqChar", metadata !"seiSubseqChar", metadata !"", metadata !63, i32 998, metadata !885, i32 0, i32 1, %struct.subseq_char_information_struct* @seiSubseqChar, null} ; [ DW_TAG_variable ] [seiSubseqChar] [line 998] [def]
!885 = metadata !{i32 786454, metadata !1, null, metadata !"subseq_char_information_struct", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !886} ; [ DW_TAG_typedef ] [subseq_char_information_struct] [line 149, size 0, align 0, offset 0] [from ]
!886 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 134, i64 704, i64 64, i32 0, i32 0, null, metadata !887, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 134, size 704, align 64, offset 0] [from ]
!887 = metadata !{metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !899, metadata !900, metadata !901}
!888 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"subseq_layer_num", i32 136, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [subseq_layer_num] [line 136, size 32, align 32, offset 0] [from int]
!889 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"subseq_id", i32 137, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [subseq_id] [line 137, size 32, align 32, offset 32] [from int]
!890 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"duration_flag", i32 138, i64 32, i64 32, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [duration_flag] [line 138, size 32, align 32, offset 64] [from int]
!891 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"subseq_duration", i32 139, i64 32, i64 32, i64 96, i32 0, metadata !145} ; [ DW_TAG_member ] [subseq_duration] [line 139, size 32, align 32, offset 96] [from unsigned int]
!892 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"average_rate_flag", i32 140, i64 32, i64 32, i64 128, i32 0, metadata !145} ; [ DW_TAG_member ] [average_rate_flag] [line 140, size 32, align 32, offset 128] [from unsigned int]
!893 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"average_bit_rate", i32 141, i64 32, i64 32, i64 160, i32 0, metadata !145} ; [ DW_TAG_member ] [average_bit_rate] [line 141, size 32, align 32, offset 160] [from unsigned int]
!894 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"average_frame_rate", i32 142, i64 32, i64 32, i64 192, i32 0, metadata !145} ; [ DW_TAG_member ] [average_frame_rate] [line 142, size 32, align 32, offset 192] [from unsigned int]
!895 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"num_referenced_subseqs", i32 143, i64 32, i64 32, i64 224, i32 0, metadata !68} ; [ DW_TAG_member ] [num_referenced_subseqs] [line 143, size 32, align 32, offset 224] [from int]
!896 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"ref_subseq_layer_num", i32 144, i64 160, i64 32, i64 256, i32 0, metadata !897} ; [ DW_TAG_member ] [ref_subseq_layer_num] [line 144, size 160, align 32, offset 256] [from ]
!897 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !68, metadata !898, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from int]
!898 = metadata !{metadata !424}
!899 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"ref_subseq_id", i32 145, i64 160, i64 32, i64 416, i32 0, metadata !897} ; [ DW_TAG_member ] [ref_subseq_id] [line 145, size 160, align 32, offset 416] [from ]
!900 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"data", i32 147, i64 64, i64 64, i64 576, i32 0, metadata !102} ; [ DW_TAG_member ] [data] [line 147, size 64, align 64, offset 576] [from ]
!901 = metadata !{i32 786445, metadata !17, metadata !886, metadata !"payloadSize", i32 148, i64 32, i64 32, i64 640, i32 0, metadata !68} ; [ DW_TAG_member ] [payloadSize] [line 148, size 32, align 32, offset 640] [from int]
!902 = metadata !{i32 786484, i32 0, null, metadata !"seiSceneInformation", metadata !"seiSceneInformation", metadata !"", metadata !63, i32 1123, metadata !903, i32 0, i32 1, %struct.scene_information_struct* @seiSceneInformation, null} ; [ DW_TAG_variable ] [seiSceneInformation] [line 1123] [def]
!903 = metadata !{i32 786454, metadata !1, null, metadata !"scene_information_struct", i32 170, i64 0, i64 0, i64 0, i32 0, metadata !904} ; [ DW_TAG_typedef ] [scene_information_struct] [line 170, size 0, align 0, offset 0] [from ]
!904 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 162, i64 256, i64 64, i32 0, i32 0, null, metadata !905, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 162, size 256, align 64, offset 0] [from ]
!905 = metadata !{metadata !906, metadata !907, metadata !908, metadata !909, metadata !910}
!906 = metadata !{i32 786445, metadata !17, metadata !904, metadata !"scene_id", i32 164, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [scene_id] [line 164, size 32, align 32, offset 0] [from int]
!907 = metadata !{i32 786445, metadata !17, metadata !904, metadata !"scene_transition_type", i32 165, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [scene_transition_type] [line 165, size 32, align 32, offset 32] [from int]
!908 = metadata !{i32 786445, metadata !17, metadata !904, metadata !"second_scene_id", i32 166, i64 32, i64 32, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [second_scene_id] [line 166, size 32, align 32, offset 64] [from int]
!909 = metadata !{i32 786445, metadata !17, metadata !904, metadata !"data", i32 168, i64 64, i64 64, i64 128, i32 0, metadata !102} ; [ DW_TAG_member ] [data] [line 168, size 64, align 64, offset 128] [from ]
!910 = metadata !{i32 786445, metadata !17, metadata !904, metadata !"payloadSize", i32 169, i64 32, i64 32, i64 192, i32 0, metadata !68} ; [ DW_TAG_member ] [payloadSize] [line 169, size 32, align 32, offset 192] [from int]
!911 = metadata !{i32 786484, i32 0, null, metadata !"seiPanScanRectInfo", metadata !"seiPanScanRectInfo", metadata !"", metadata !63, i32 1222, metadata !912, i32 0, i32 1, %struct.panscanrect_information_struct* @seiPanScanRectInfo, null} ; [ DW_TAG_variable ] [seiPanScanRectInfo] [line 1222] [def]
!912 = metadata !{i32 786454, metadata !1, null, metadata !"panscanrect_information_struct", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !913} ; [ DW_TAG_typedef ] [panscanrect_information_struct] [line 193, size 0, align 0, offset 0] [from ]
!913 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 183, i64 320, i64 64, i32 0, i32 0, null, metadata !914, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 183, size 320, align 64, offset 0] [from ]
!914 = metadata !{metadata !915, metadata !916, metadata !917, metadata !918, metadata !919, metadata !920, metadata !921}
!915 = metadata !{i32 786445, metadata !17, metadata !913, metadata !"pan_scan_rect_id", i32 185, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [pan_scan_rect_id] [line 185, size 32, align 32, offset 0] [from int]
!916 = metadata !{i32 786445, metadata !17, metadata !913, metadata !"pan_scan_rect_left_offset", i32 186, i64 32, i64 32, i64 32, i32 0, metadata !68} ; [ DW_TAG_member ] [pan_scan_rect_left_offset] [line 186, size 32, align 32, offset 32] [from int]
!917 = metadata !{i32 786445, metadata !17, metadata !913, metadata !"pan_scan_rect_right_offset", i32 187, i64 32, i64 32, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [pan_scan_rect_right_offset] [line 187, size 32, align 32, offset 64] [from int]
!918 = metadata !{i32 786445, metadata !17, metadata !913, metadata !"pan_scan_rect_top_offset", i32 188, i64 32, i64 32, i64 96, i32 0, metadata !68} ; [ DW_TAG_member ] [pan_scan_rect_top_offset] [line 188, size 32, align 32, offset 96] [from int]
!919 = metadata !{i32 786445, metadata !17, metadata !913, metadata !"pan_scan_rect_bottom_offset", i32 189, i64 32, i64 32, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [pan_scan_rect_bottom_offset] [line 189, size 32, align 32, offset 128] [from int]
!920 = metadata !{i32 786445, metadata !17, metadata !913, metadata !"data", i32 191, i64 64, i64 64, i64 192, i32 0, metadata !102} ; [ DW_TAG_member ] [data] [line 191, size 64, align 64, offset 192] [from ]
!921 = metadata !{i32 786445, metadata !17, metadata !913, metadata !"payloadSize", i32 192, i64 32, i64 32, i64 256, i32 0, metadata !68} ; [ DW_TAG_member ] [payloadSize] [line 192, size 32, align 32, offset 256] [from int]
!922 = metadata !{i32 68, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !62, i32 68, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!924 = metadata !{i32 70, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !923, i32 69, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!926 = metadata !{metadata !"any pointer", metadata !927}
!927 = metadata !{metadata !"omnipotent char", metadata !928}
!928 = metadata !{metadata !"Simple C/C++ TBAA"}
!929 = metadata !{i32 71, i32 0, metadata !925, null}
!930 = metadata !{i32 223, i32 0, metadata !96, metadata !931}
!931 = metadata !{i32 73, i32 0, metadata !925, null}
!932 = metadata !{i32 72, i32 0, metadata !925, null}
!933 = metadata !{i32 undef}
!934 = metadata !{i32 786689, metadata !96, metadata !"id", metadata !63, i32 16777437, metadata !68, i32 0, metadata !931} ; [ DW_TAG_arg_variable ] [id] [line 221]
!935 = metadata !{i32 221, i32 0, metadata !96, metadata !931}
!936 = metadata !{i32 224, i32 0, metadata !96, metadata !931}
!937 = metadata !{metadata !"int", metadata !927}
!938 = metadata !{i32 225, i32 0, metadata !96, metadata !931}
!939 = metadata !{i32 77, i32 0, metadata !62, null}
!940 = metadata !{i32 78, i32 0, metadata !62, null}
!941 = metadata !{i32 79, i32 0, metadata !62, null}
!942 = metadata !{i32 80, i32 0, metadata !62, null}
!943 = metadata !{i32 946, i32 0, metadata !233, metadata !944}
!944 = metadata !{i32 81, i32 0, metadata !62, null}
!945 = metadata !{i32 947, i32 0, metadata !233, metadata !944}
!946 = metadata !{i32 786688, metadata !233, metadata !"i", metadata !63, i32 945, metadata !68, i32 0, metadata !944} ; [ DW_TAG_auto_variable ] [i] [line 945]
!947 = metadata !{i32 948, i32 0, metadata !948, metadata !944}
!948 = metadata !{i32 786443, metadata !1, metadata !233, i32 948, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!949 = metadata !{i32 950, i32 0, metadata !950, metadata !944}
!950 = metadata !{i32 786443, metadata !1, metadata !948, i32 949, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!951 = metadata !{metadata !"short", metadata !927}
!952 = metadata !{i32 951, i32 0, metadata !950, metadata !944}
!953 = metadata !{i32 952, i32 0, metadata !950, metadata !944}
!954 = metadata !{i32 82, i32 0, metadata !62, null}
!955 = metadata !{i32 84, i32 0, metadata !62, null}
!956 = metadata !{i32 86, i32 0, metadata !62, null}
!957 = metadata !{i32 88, i32 0, metadata !62, null}
!958 = metadata !{i32 90, i32 0, metadata !62, null}
!959 = metadata !{i32 91, i32 0, metadata !62, null}
!960 = metadata !{i32 221, i32 0, metadata !96, null}
!961 = metadata !{i32 223, i32 0, metadata !96, null}
!962 = metadata !{i32 224, i32 0, metadata !96, null}
!963 = metadata !{i32 225, i32 0, metadata !96, null}
!964 = metadata !{i32 226, i32 0, metadata !96, null}
!965 = metadata !{i32 100, i32 0, metadata !69, null}
!966 = metadata !{i32 101, i32 0, metadata !69, null}
!967 = metadata !{i32 102, i32 0, metadata !69, null}
!968 = metadata !{i32 104, i32 0, metadata !69, null}
!969 = metadata !{i32 105, i32 0, metadata !69, null}
!970 = metadata !{i32 106, i32 0, metadata !69, null}
!971 = metadata !{i32 107, i32 0, metadata !69, null}
!972 = metadata !{i32 109, i32 0, metadata !973, null}
!973 = metadata !{i32 786443, metadata !1, metadata !69, i32 109, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!974 = metadata !{i32 111, i32 0, metadata !975, null}
!975 = metadata !{i32 786443, metadata !1, metadata !973, i32 110, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!976 = metadata !{i32 112, i32 0, metadata !975, null}
!977 = metadata !{i32 114, i32 0, metadata !69, null}
!978 = metadata !{i32 118, i32 0, metadata !72, null}
!979 = metadata !{i32 120, i32 0, metadata !72, null}
!980 = metadata !{i32 122, i32 0, metadata !72, null}
!981 = metadata !{i32 124, i32 0, metadata !72, null}
!982 = metadata !{i32 126, i32 0, metadata !72, null}
!983 = metadata !{i32 128, i32 0, metadata !72, null}
!984 = metadata !{i32 130, i32 0, metadata !72, null}
!985 = metadata !{i32 132, i32 0, metadata !72, null}
!986 = metadata !{i32 134, i32 0, metadata !72, null}
!987 = metadata !{i32 136, i32 0, metadata !72, null}
!988 = metadata !{i32 159, i32 0, metadata !76, null}
!989 = metadata !{i32 162, i32 0, metadata !76, null}
!990 = metadata !{i32 164, i32 0, metadata !76, null}
!991 = metadata !{i32 165, i32 0, metadata !76, null}
!992 = metadata !{i32 166, i32 0, metadata !76, null}
!993 = metadata !{i32 173, i32 0, metadata !76, null}
!994 = metadata !{i32 175, i32 0, metadata !76, null}
!995 = metadata !{i32 177, i32 0, metadata !996, null}
!996 = metadata !{i32 786443, metadata !1, metadata !76, i32 176, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!997 = metadata !{i32 178, i32 0, metadata !996, null}
!998 = metadata !{i32 180, i32 0, metadata !76, null}
!999 = metadata !{i32 182, i32 0, metadata !76, null}
!1000 = metadata !{i32 183, i32 0, metadata !76, null}
!1001 = metadata !{i32 185, i32 0, metadata !76, null}
!1002 = metadata !{i32 186, i32 0, metadata !76, null}
!1003 = metadata !{i32 199, i32 0, metadata !90, null}
!1004 = metadata !{i32 201, i32 0, metadata !90, null}
!1005 = metadata !{i32 203, i32 0, metadata !90, null}
!1006 = metadata !{i32 204, i32 0, metadata !90, null}
!1007 = metadata !{i32 206, i32 0, metadata !90, null}
!1008 = metadata !{i32 207, i32 0, metadata !90, null}
!1009 = metadata !{i32 240, i32 0, metadata !99, null}
!1010 = metadata !{i32 247, i32 0, metadata !1011, null}
!1011 = metadata !{i32 786443, metadata !1, metadata !99, i32 247, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1012 = metadata !{i32 252, i32 0, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !1, metadata !1014, i32 251, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1014 = metadata !{i32 786443, metadata !1, metadata !1015, i32 250, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1015 = metadata !{i32 786443, metadata !1, metadata !1011, i32 248, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1016 = metadata !{i32 253, i32 0, metadata !1013, null}
!1017 = metadata !{i32 255, i32 0, metadata !1013, null}
!1018 = metadata !{i32 260, i32 0, metadata !1019, null}
!1019 = metadata !{i32 786443, metadata !1, metadata !1013, i32 258, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1020 = metadata !{i32 250, i32 0, metadata !1014, null}
!1021 = metadata !{i32 254, i32 0, metadata !1013, null}
!1022 = metadata !{i32 256, i32 0, metadata !1013, null}
!1023 = metadata !{i32 257, i32 0, metadata !1013, null}
!1024 = metadata !{i32 259, i32 0, metadata !1019, null}
!1025 = metadata !{i32 261, i32 0, metadata !1019, null}
!1026 = metadata !{i32 262, i32 0, metadata !1019, null}
!1027 = metadata !{i32 266, i32 0, metadata !99, null}
!1028 = metadata !{i32 267, i32 0, metadata !99, null}
!1029 = metadata !{i32 270, i32 0, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !1, metadata !1031, i32 270, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1031 = metadata !{i32 786443, metadata !1, metadata !99, i32 268, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1032 = metadata !{i32 269, i32 0, metadata !1031, null}
!1033 = metadata !{i32 272, i32 0, metadata !1034, null}
!1034 = metadata !{i32 786443, metadata !1, metadata !1030, i32 271, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1035 = metadata !{i32 273, i32 0, metadata !1034, null}
!1036 = metadata !{i32 275, i32 0, metadata !1034, null}
!1037 = metadata !{i32 280, i32 0, metadata !1038, null}
!1038 = metadata !{i32 786443, metadata !1, metadata !1034, i32 278, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1039 = metadata !{i32 274, i32 0, metadata !1034, null}
!1040 = metadata !{i32 276, i32 0, metadata !1034, null}
!1041 = metadata !{i32 277, i32 0, metadata !1034, null}
!1042 = metadata !{i32 279, i32 0, metadata !1038, null}
!1043 = metadata !{i32 281, i32 0, metadata !1038, null}
!1044 = metadata !{i32 282, i32 0, metadata !1038, null}
!1045 = metadata !{i32 285, i32 0, metadata !99, null}
!1046 = metadata !{i32 315, i32 0, metadata !124, null}
!1047 = metadata !{i32 317, i32 0, metadata !124, null}
!1048 = metadata !{i32 318, i32 0, metadata !124, null}
!1049 = metadata !{i32 319, i32 0, metadata !124, null}
!1050 = metadata !{i32 320, i32 0, metadata !124, null}
!1051 = metadata !{i32 321, i32 0, metadata !124, null}
!1052 = metadata !{i32 322, i32 0, metadata !124, null}
!1053 = metadata !{i32 323, i32 0, metadata !124, null}
!1054 = metadata !{i32 325, i32 0, metadata !124, null}
!1055 = metadata !{i32 326, i32 0, metadata !124, null}
!1056 = metadata !{i32 327, i32 0, metadata !124, null}
!1057 = metadata !{i32 328, i32 0, metadata !124, null}
!1058 = metadata !{i32 338, i32 0, metadata !125, null}
!1059 = metadata !{i32 339, i32 0, metadata !125, null}
!1060 = metadata !{i32 340, i32 0, metadata !125, null}
!1061 = metadata !{i32 341, i32 0, metadata !125, null}
!1062 = metadata !{i32 342, i32 0, metadata !125, null}
!1063 = metadata !{i32 343, i32 0, metadata !125, null}
!1064 = metadata !{i32 344, i32 0, metadata !125, null}
!1065 = metadata !{i32 345, i32 0, metadata !125, null}
!1066 = metadata !{i32 346, i32 0, metadata !125, null}
!1067 = metadata !{i32 523, i32 0, metadata !126, null}
!1068 = metadata !{i32 540, i32 0, metadata !127, null}
!1069 = metadata !{i32 542, i32 0, metadata !127, null}
!1070 = metadata !{i32 543, i32 0, metadata !127, null}
!1071 = metadata !{i32 545, i32 0, metadata !127, null}
!1072 = metadata !{i32 546, i32 0, metadata !127, null}
!1073 = metadata !{i32 548, i32 0, metadata !127, null}
!1074 = metadata !{i32 549, i32 0, metadata !127, null}
!1075 = metadata !{i32 550, i32 0, metadata !127, null}
!1076 = metadata !{i32 551, i32 0, metadata !127, null}
!1077 = metadata !{i32 553, i32 0, metadata !127, null}
!1078 = metadata !{i32 554, i32 0, metadata !127, null}
!1079 = metadata !{i32 570, i32 0, metadata !183, null}
!1080 = metadata !{i32 574, i32 0, metadata !183, null}
!1081 = metadata !{i32 578, i32 0, metadata !183, null}
!1082 = metadata !{i32 579, i32 0, metadata !183, null}
!1083 = metadata !{i32 583, i32 0, metadata !183, null}
!1084 = metadata !{i32 584, i32 0, metadata !183, null}
!1085 = metadata !{i32 585, i32 0, metadata !183, null}
!1086 = metadata !{i32 586, i32 0, metadata !183, null}
!1087 = metadata !{i32 1}
!1088 = metadata !{i32 587, i32 0, metadata !183, null}
!1089 = metadata !{i32 588, i32 0, metadata !183, null}
!1090 = metadata !{i32 591, i32 0, metadata !183, null}
!1091 = metadata !{i32 592, i32 0, metadata !183, null}
!1092 = metadata !{i32 593, i32 0, metadata !183, null}
!1093 = metadata !{i32 594, i32 0, metadata !183, null}
!1094 = metadata !{i32 595, i32 0, metadata !183, null}
!1095 = metadata !{i32 596, i32 0, metadata !183, null}
!1096 = metadata !{i32 597, i32 0, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !1, metadata !183, i32 597, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1098 = metadata !{i32 604, i32 0, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !1, metadata !1100, i32 603, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1100 = metadata !{i32 786443, metadata !1, metadata !1101, i32 599, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1101 = metadata !{i32 786443, metadata !1, metadata !1097, i32 598, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1102 = metadata !{i32 598, i32 0, metadata !1101, null}
!1103 = metadata !{i32 601, i32 0, metadata !1100, null}
!1104 = metadata !{i32 605, i32 0, metadata !1099, null}
!1105 = metadata !{i32 606, i32 0, metadata !1099, null}
!1106 = metadata !{i32 609, i32 0, metadata !1100, null}
!1107 = metadata !{i32 611, i32 0, metadata !1108, null}
!1108 = metadata !{i32 786443, metadata !1, metadata !1100, i32 610, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1109 = metadata !{i32 612, i32 0, metadata !1108, null}
!1110 = metadata !{i32 614, i32 0, metadata !1111, null}
!1111 = metadata !{i32 786443, metadata !1, metadata !1108, i32 613, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1112 = metadata !{i32 615, i32 0, metadata !1111, null}
!1113 = metadata !{i32 616, i32 0, metadata !1111, null}
!1114 = metadata !{i32 617, i32 0, metadata !1111, null}
!1115 = metadata !{i32 618, i32 0, metadata !1111, null}
!1116 = metadata !{i32 619, i32 0, metadata !1108, null}
!1117 = metadata !{i32 621, i32 0, metadata !1118, null}
!1118 = metadata !{i32 786443, metadata !1, metadata !1108, i32 620, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1119 = metadata !{i32 622, i32 0, metadata !1118, null}
!1120 = metadata !{i32 623, i32 0, metadata !1118, null}
!1121 = metadata !{i32 624, i32 0, metadata !1118, null}
!1122 = metadata !{i32 627, i32 0, metadata !1100, null}
!1123 = metadata !{i32 629, i32 0, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !1, metadata !1100, i32 628, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1125 = metadata !{i32 630, i32 0, metadata !1124, null}
!1126 = metadata !{i32 632, i32 0, metadata !1127, null}
!1127 = metadata !{i32 786443, metadata !1, metadata !1124, i32 631, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1128 = metadata !{i32 633, i32 0, metadata !1127, null}
!1129 = metadata !{i32 -1}
!1130 = metadata !{i32 634, i32 0, metadata !1127, null}
!1131 = metadata !{i32 635, i32 0, metadata !1127, null}
!1132 = metadata !{i32 636, i32 0, metadata !1127, null}
!1133 = metadata !{i32 637, i32 0, metadata !1124, null}
!1134 = metadata !{i32 639, i32 0, metadata !1135, null}
!1135 = metadata !{i32 786443, metadata !1, metadata !1124, i32 638, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1136 = metadata !{i32 640, i32 0, metadata !1135, null}
!1137 = metadata !{i32 641, i32 0, metadata !1135, null}
!1138 = metadata !{i32 642, i32 0, metadata !1135, null}
!1139 = metadata !{i32 645, i32 0, metadata !1100, null}
!1140 = metadata !{i32 647, i32 0, metadata !1141, null}
!1141 = metadata !{i32 786443, metadata !1, metadata !1100, i32 646, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1142 = metadata !{i32 648, i32 0, metadata !1141, null}
!1143 = metadata !{i32 650, i32 0, metadata !1144, null}
!1144 = metadata !{i32 786443, metadata !1, metadata !1141, i32 649, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1145 = metadata !{i32 651, i32 0, metadata !1144, null}
!1146 = metadata !{i32 652, i32 0, metadata !1144, null}
!1147 = metadata !{i32 653, i32 0, metadata !1144, null}
!1148 = metadata !{i32 654, i32 0, metadata !1144, null}
!1149 = metadata !{i32 655, i32 0, metadata !1141, null}
!1150 = metadata !{i32 657, i32 0, metadata !1151, null}
!1151 = metadata !{i32 786443, metadata !1, metadata !1141, i32 656, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1152 = metadata !{i32 658, i32 0, metadata !1151, null}
!1153 = metadata !{i32 659, i32 0, metadata !1151, null}
!1154 = metadata !{i32 660, i32 0, metadata !1151, null}
!1155 = metadata !{i32 663, i32 0, metadata !1100, null}
!1156 = metadata !{i32 665, i32 0, metadata !1157, null}
!1157 = metadata !{i32 786443, metadata !1, metadata !1100, i32 664, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1158 = metadata !{i32 666, i32 0, metadata !1157, null}
!1159 = metadata !{i32 668, i32 0, metadata !1160, null}
!1160 = metadata !{i32 786443, metadata !1, metadata !1157, i32 667, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1161 = metadata !{i32 669, i32 0, metadata !1160, null}
!1162 = metadata !{i32 670, i32 0, metadata !1160, null}
!1163 = metadata !{i32 671, i32 0, metadata !1160, null}
!1164 = metadata !{i32 672, i32 0, metadata !1160, null}
!1165 = metadata !{i32 673, i32 0, metadata !1157, null}
!1166 = metadata !{i32 675, i32 0, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !1, metadata !1157, i32 674, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1168 = metadata !{i32 676, i32 0, metadata !1167, null}
!1169 = metadata !{i32 677, i32 0, metadata !1167, null}
!1170 = metadata !{i32 678, i32 0, metadata !1167, null}
!1171 = metadata !{i32 682, i32 0, metadata !183, null}
!1172 = metadata !{i32 684, i32 0, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !1, metadata !183, i32 683, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1174 = metadata !{i32 685, i32 0, metadata !1173, null}
!1175 = metadata !{i32 686, i32 0, metadata !1173, null}
!1176 = metadata !{i32 688, i32 0, metadata !183, null}
!1177 = metadata !{i32 689, i32 0, metadata !183, null}
!1178 = metadata !{i32 692, i32 0, metadata !1179, null}
!1179 = metadata !{i32 786443, metadata !1, metadata !183, i32 690, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1180 = metadata !{i32 693, i32 0, metadata !1179, null}
!1181 = metadata !{i32 694, i32 0, metadata !1179, null}
!1182 = metadata !{i32 695, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !1179, i32 695, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1184 = metadata !{i32 705, i32 0, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !1, metadata !1186, i32 703, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1186 = metadata !{i32 786443, metadata !1, metadata !1187, i32 698, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1187 = metadata !{i32 786443, metadata !1, metadata !1188, i32 697, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1188 = metadata !{i32 786443, metadata !1, metadata !1183, i32 696, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1189 = metadata !{i32 697, i32 0, metadata !1187, null}
!1190 = metadata !{i32 700, i32 0, metadata !1186, null}
!1191 = metadata !{i32 699, i32 0, metadata !1186, null}
!1192 = metadata !{i32 701, i32 0, metadata !1186, null}
!1193 = metadata !{i32 702, i32 0, metadata !1186, null}
!1194 = metadata !{i32 704, i32 0, metadata !1185, null}
!1195 = metadata !{i32 706, i32 0, metadata !1185, null}
!1196 = metadata !{i32 707, i32 0, metadata !1185, null}
!1197 = metadata !{i32 713, i32 0, metadata !183, null}
!1198 = metadata !{i32 732, i32 0, metadata !209, null}
!1199 = metadata !{i32 734, i32 0, metadata !209, null}
!1200 = metadata !{i32 737, i32 0, metadata !209, null}
!1201 = metadata !{i32 738, i32 0, metadata !209, null}
!1202 = metadata !{i32 740, i32 0, metadata !209, null}
!1203 = metadata !{i32 741, i32 0, metadata !209, null}
!1204 = metadata !{i32 742, i32 0, metadata !209, null}
!1205 = metadata !{i32 743, i32 0, metadata !209, null}
!1206 = metadata !{i32 744, i32 0, metadata !209, null}
!1207 = metadata !{i32 748, i32 0, metadata !209, null}
!1208 = metadata !{i32 745, i32 0, metadata !209, null}
!1209 = metadata !{i32 746, i32 0, metadata !209, null}
!1210 = metadata !{i32 747, i32 0, metadata !209, null}
!1211 = metadata !{i32 751, i32 0, metadata !209, null}
!1212 = metadata !{i32 752, i32 0, metadata !209, null}
!1213 = metadata !{i32 753, i32 0, metadata !209, null}
!1214 = metadata !{i32 754, i32 0, metadata !209, null}
!1215 = metadata !{i32 757, i32 0, metadata !209, null}
!1216 = metadata !{i32 758, i32 0, metadata !209, null}
!1217 = metadata !{i32 761, i32 0, metadata !209, null}
!1218 = metadata !{i32 764, i32 0, metadata !209, null}
!1219 = metadata !{i32 766, i32 0, metadata !1220, null}
!1220 = metadata !{i32 786443, metadata !1, metadata !209, i32 765, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1221 = metadata !{i32 767, i32 0, metadata !1220, null}
!1222 = metadata !{i32 768, i32 0, metadata !1220, null}
!1223 = metadata !{i32 769, i32 0, metadata !1220, null}
!1224 = metadata !{i32 770, i32 0, metadata !1220, null}
!1225 = metadata !{i32 771, i32 0, metadata !1220, null}
!1226 = metadata !{i32 772, i32 0, metadata !1220, null}
!1227 = metadata !{i32 773, i32 0, metadata !1220, null}
!1228 = metadata !{i32 774, i32 0, metadata !209, null}
!1229 = metadata !{i32 777, i32 0, metadata !209, null}
!1230 = metadata !{i32 778, i32 0, metadata !209, null}
!1231 = metadata !{i32 779, i32 0, metadata !209, null}
!1232 = metadata !{i32 780, i32 0, metadata !209, null}
!1233 = metadata !{i32 801, i32 0, metadata !216, null}
!1234 = metadata !{i32 805, i32 0, metadata !216, null}
!1235 = metadata !{i32 806, i32 0, metadata !216, null}
!1236 = metadata !{i32 807, i32 0, metadata !216, null}
!1237 = metadata !{i32 808, i32 0, metadata !216, null}
!1238 = metadata !{i32 809, i32 0, metadata !216, null}
!1239 = metadata !{i32 810, i32 0, metadata !216, null}
!1240 = metadata !{i32 812, i32 0, metadata !216, null}
!1241 = metadata !{i32 813, i32 0, metadata !216, null}
!1242 = metadata !{i32 814, i32 0, metadata !216, null}
!1243 = metadata !{i32 815, i32 0, metadata !216, null}
!1244 = metadata !{i32 816, i32 0, metadata !216, null}
!1245 = metadata !{i32 817, i32 0, metadata !216, null}
!1246 = metadata !{i32 818, i32 0, metadata !216, null}
!1247 = metadata !{i32 819, i32 0, metadata !216, null}
!1248 = metadata !{i32 820, i32 0, metadata !216, null}
!1249 = metadata !{i32 828, i32 0, metadata !219, null}
!1250 = metadata !{i32 830, i32 0, metadata !219, null}
!1251 = metadata !{i32 832, i32 0, metadata !1252, null}
!1252 = metadata !{i32 786443, metadata !1, metadata !219, i32 831, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1253 = metadata !{i32 833, i32 0, metadata !1252, null}
!1254 = metadata !{i32 834, i32 0, metadata !1252, null}
!1255 = metadata !{i32 836, i32 0, metadata !219, null}
!1256 = metadata !{i32 838, i32 0, metadata !1257, null}
!1257 = metadata !{i32 786443, metadata !1, metadata !219, i32 837, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1258 = metadata !{i32 841, i32 0, metadata !1257, null}
!1259 = metadata !{i32 843, i32 0, metadata !219, null}
!1260 = metadata !{i32 839, i32 0, metadata !1257, null}
!1261 = metadata !{i32 845, i32 0, metadata !1262, null}
!1262 = metadata !{i32 786443, metadata !1, metadata !219, i32 844, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1263 = metadata !{i32 848, i32 0, metadata !1262, null}
!1264 = metadata !{i32 850, i32 0, metadata !1262, null}
!1265 = metadata !{i32 852, i32 0, metadata !219, null}
!1266 = metadata !{i32 860, i32 0, metadata !222, null}
!1267 = metadata !{i32 862, i32 0, metadata !222, null}
!1268 = metadata !{i32 863, i32 0, metadata !222, null}
!1269 = metadata !{i32 865, i32 0, metadata !222, null}
!1270 = metadata !{i32 866, i32 0, metadata !222, null}
!1271 = metadata !{i32 868, i32 0, metadata !222, null}
!1272 = metadata !{i32 869, i32 0, metadata !222, null}
!1273 = metadata !{i32 870, i32 0, metadata !222, null}
!1274 = metadata !{i32 871, i32 0, metadata !222, null}
!1275 = metadata !{i32 872, i32 0, metadata !222, null}
!1276 = metadata !{i32 873, i32 0, metadata !222, null}
!1277 = metadata !{i32 874, i32 0, metadata !222, null}
!1278 = metadata !{i32 875, i32 0, metadata !222, null}
!1279 = metadata !{i32 876, i32 0, metadata !222, null}
!1280 = metadata !{i32 879, i32 0, metadata !222, null}
!1281 = metadata !{i32 889, i32 0, metadata !222, null}
!1282 = metadata !{i32 881, i32 0, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !1, metadata !222, i32 880, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1284 = metadata !{i32 882, i32 0, metadata !1283, null}
!1285 = metadata !{i32 883, i32 0, metadata !1283, null}
!1286 = metadata !{i32 884, i32 0, metadata !1283, null}
!1287 = metadata !{i32 885, i32 0, metadata !1283, null}
!1288 = metadata !{i32 886, i32 0, metadata !1283, null}
!1289 = metadata !{i32 887, i32 0, metadata !1283, null}
!1290 = metadata !{i32 888, i32 0, metadata !1283, null}
!1291 = metadata !{i32 892, i32 0, metadata !222, null}
!1292 = metadata !{i32 900, i32 0, metadata !227, null}
!1293 = metadata !{i32 902, i32 0, metadata !227, null}
!1294 = metadata !{i32 903, i32 0, metadata !227, null}
!1295 = metadata !{i32 904, i32 0, metadata !227, null}
!1296 = metadata !{i32 905, i32 0, metadata !227, null}
!1297 = metadata !{i32 906, i32 0, metadata !227, null}
!1298 = metadata !{i32 907, i32 0, metadata !227, null}
!1299 = metadata !{i32 915, i32 0, metadata !230, null}
!1300 = metadata !{i32 917, i32 0, metadata !230, null}
!1301 = metadata !{i32 918, i32 0, metadata !230, null}
!1302 = metadata !{i32 920, i32 0, metadata !230, null}
!1303 = metadata !{i32 921, i32 0, metadata !230, null}
!1304 = metadata !{i32 922, i32 0, metadata !230, null}
!1305 = metadata !{i32 946, i32 0, metadata !233, null}
!1306 = metadata !{i32 947, i32 0, metadata !233, null}
!1307 = metadata !{i32 948, i32 0, metadata !948, null}
!1308 = metadata !{i32 950, i32 0, metadata !950, null}
!1309 = metadata !{i32 951, i32 0, metadata !950, null}
!1310 = metadata !{i32 952, i32 0, metadata !950, null}
!1311 = metadata !{i32 954, i32 0, metadata !233, null}
!1312 = metadata !{i32 964, i32 0, metadata !236, null}
!1313 = metadata !{i32 975, i32 0, metadata !237, null}
!1314 = metadata !{i32 976, i32 0, metadata !237, null}
!1315 = metadata !{i32 977, i32 0, metadata !1316, null}
!1316 = metadata !{i32 786443, metadata !1, metadata !237, i32 977, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1317 = metadata !{i32 979, i32 0, metadata !1318, null}
!1318 = metadata !{i32 786443, metadata !1, metadata !1316, i32 978, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1319 = metadata !{i32 980, i32 0, metadata !1318, null}
!1320 = metadata !{i32 981, i32 0, metadata !1318, null}
!1321 = metadata !{i32 983, i32 0, metadata !1318, null}
!1322 = metadata !{i32 985, i32 0, metadata !237, null}
!1323 = metadata !{i32 1002, i32 0, metadata !241, null}
!1324 = metadata !{i32 1003, i32 0, metadata !241, null}
!1325 = metadata !{i32 1004, i32 0, metadata !241, null}
!1326 = metadata !{i32 1005, i32 0, metadata !241, null}
!1327 = metadata !{i32 1017, i32 0, metadata !242, metadata !1328}
!1328 = metadata !{i32 1006, i32 0, metadata !241, null}
!1329 = metadata !{i32 1018, i32 0, metadata !242, metadata !1328}
!1330 = metadata !{i32 1019, i32 0, metadata !242, metadata !1328}
!1331 = metadata !{i32 1020, i32 0, metadata !242, metadata !1328}
!1332 = metadata !{i32 1021, i32 0, metadata !242, metadata !1328}
!1333 = metadata !{i32 1023, i32 0, metadata !242, metadata !1328}
!1334 = metadata !{i32 1008, i32 0, metadata !241, null}
!1335 = metadata !{i32 1009, i32 0, metadata !241, null}
!1336 = metadata !{i32 1010, i32 0, metadata !241, null}
!1337 = metadata !{i32 1011, i32 0, metadata !241, null}
!1338 = metadata !{i32 1012, i32 0, metadata !241, null}
!1339 = metadata !{i32 1013, i32 0, metadata !241, null}
!1340 = metadata !{i32 1017, i32 0, metadata !242, null}
!1341 = metadata !{i32 1018, i32 0, metadata !242, null}
!1342 = metadata !{i32 1019, i32 0, metadata !242, null}
!1343 = metadata !{i32 1020, i32 0, metadata !242, null}
!1344 = metadata !{i32 1021, i32 0, metadata !242, null}
!1345 = metadata !{i32 1023, i32 0, metadata !242, null}
!1346 = metadata !{i32 1024, i32 0, metadata !242, null}
!1347 = metadata !{i32 1028, i32 0, metadata !243, null}
!1348 = metadata !{i32 1029, i32 0, metadata !243, null}
!1349 = metadata !{i32 1030, i32 0, metadata !243, null}
!1350 = metadata !{i32 1031, i32 0, metadata !243, null}
!1351 = metadata !{i32 1032, i32 0, metadata !243, null}
!1352 = metadata !{i32 1033, i32 0, metadata !243, null}
!1353 = metadata !{i32 1034, i32 0, metadata !243, null}
!1354 = metadata !{i32 1035, i32 0, metadata !243, null}
!1355 = metadata !{i32 1036, i32 0, metadata !243, null}
!1356 = metadata !{i32 1037, i32 0, metadata !243, null}
!1357 = metadata !{i32 1038, i32 0, metadata !243, null}
!1358 = metadata !{i32 1040, i32 0, metadata !243, null}
!1359 = metadata !{i32 1041, i32 0, metadata !243, null}
!1360 = metadata !{i32 1046, i32 0, metadata !244, null}
!1361 = metadata !{i32 1047, i32 0, metadata !244, null}
!1362 = metadata !{i32 1049, i32 0, metadata !244, null}
!1363 = metadata !{i32 1050, i32 0, metadata !244, null}
!1364 = metadata !{i32 1052, i32 0, metadata !244, null}
!1365 = metadata !{i32 1053, i32 0, metadata !244, null}
!1366 = metadata !{i32 1054, i32 0, metadata !244, null}
!1367 = metadata !{i32 1055, i32 0, metadata !244, null}
!1368 = metadata !{i32 1056, i32 0, metadata !244, null}
!1369 = metadata !{i32 1057, i32 0, metadata !244, null}
!1370 = metadata !{i32 1058, i32 0, metadata !244, null}
!1371 = metadata !{i32 1059, i32 0, metadata !244, null}
!1372 = metadata !{i32 1061, i32 0, metadata !1373, null}
!1373 = metadata !{i32 786443, metadata !1, metadata !244, i32 1060, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1374 = metadata !{i32 1062, i32 0, metadata !1373, null}
!1375 = metadata !{i32 1063, i32 0, metadata !1373, null}
!1376 = metadata !{i32 1064, i32 0, metadata !1373, null}
!1377 = metadata !{i32 1065, i32 0, metadata !244, null}
!1378 = metadata !{i32 1066, i32 0, metadata !244, null}
!1379 = metadata !{i32 1067, i32 0, metadata !244, null}
!1380 = metadata !{i32 1068, i32 0, metadata !244, null}
!1381 = metadata !{i32 1070, i32 0, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !1, metadata !244, i32 1069, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1383 = metadata !{i32 1071, i32 0, metadata !1382, null}
!1384 = metadata !{i32 1072, i32 0, metadata !1382, null}
!1385 = metadata !{i32 1073, i32 0, metadata !1382, null}
!1386 = metadata !{i32 1074, i32 0, metadata !1382, null}
!1387 = metadata !{i32 1075, i32 0, metadata !1382, null}
!1388 = metadata !{i32 1076, i32 0, metadata !1382, null}
!1389 = metadata !{i32 1077, i32 0, metadata !244, null}
!1390 = metadata !{i32 1078, i32 0, metadata !244, null}
!1391 = metadata !{i32 1079, i32 0, metadata !1392, null}
!1392 = metadata !{i32 786443, metadata !1, metadata !244, i32 1079, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1393 = metadata !{i32 1081, i32 0, metadata !1394, null}
!1394 = metadata !{i32 786443, metadata !1, metadata !1392, i32 1080, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1395 = metadata !{i32 1082, i32 0, metadata !1394, null}
!1396 = metadata !{i32 1083, i32 0, metadata !1394, null}
!1397 = metadata !{i32 1084, i32 0, metadata !1394, null}
!1398 = metadata !{i32 1088, i32 0, metadata !244, null}
!1399 = metadata !{i32 1098, i32 0, metadata !244, null}
!1400 = metadata !{i32 1090, i32 0, metadata !1401, null}
!1401 = metadata !{i32 786443, metadata !1, metadata !244, i32 1089, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1402 = metadata !{i32 1091, i32 0, metadata !1401, null}
!1403 = metadata !{i32 1092, i32 0, metadata !1401, null}
!1404 = metadata !{i32 1093, i32 0, metadata !1401, null}
!1405 = metadata !{i32 1094, i32 0, metadata !1401, null}
!1406 = metadata !{i32 1095, i32 0, metadata !1401, null}
!1407 = metadata !{i32 1096, i32 0, metadata !1401, null}
!1408 = metadata !{i32 1097, i32 0, metadata !1401, null}
!1409 = metadata !{i32 1099, i32 0, metadata !244, null}
!1410 = metadata !{i32 1103, i32 0, metadata !249, null}
!1411 = metadata !{i32 1105, i32 0, metadata !1412, null}
!1412 = metadata !{i32 786443, metadata !1, metadata !249, i32 1104, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1413 = metadata !{i32 1106, i32 0, metadata !1412, null}
!1414 = metadata !{i32 1107, i32 0, metadata !1412, null}
!1415 = metadata !{i32 1108, i32 0, metadata !249, null}
!1416 = metadata !{i32 1109, i32 0, metadata !249, null}
!1417 = metadata !{i32 1127, i32 0, metadata !250, null}
!1418 = metadata !{i32 1129, i32 0, metadata !250, null}
!1419 = metadata !{i32 1130, i32 0, metadata !250, null}
!1420 = metadata !{i32 1131, i32 0, metadata !250, null}
!1421 = metadata !{i32 1133, i32 0, metadata !250, null}
!1422 = metadata !{i32 1134, i32 0, metadata !250, null}
!1423 = metadata !{i32 1135, i32 0, metadata !250, null}
!1424 = metadata !{i32 1136, i32 0, metadata !250, null}
!1425 = metadata !{i32 1137, i32 0, metadata !250, null}
!1426 = metadata !{i32 1138, i32 0, metadata !250, null}
!1427 = metadata !{i32 1139, i32 0, metadata !250, null}
!1428 = metadata !{i32 1140, i32 0, metadata !250, null}
!1429 = metadata !{i32 1141, i32 0, metadata !250, null}
!1430 = metadata !{i32 1145, i32 0, metadata !251, null}
!1431 = metadata !{i32 1147, i32 0, metadata !1432, null}
!1432 = metadata !{i32 786443, metadata !1, metadata !251, i32 1146, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1433 = metadata !{i32 1148, i32 0, metadata !1432, null}
!1434 = metadata !{i32 1149, i32 0, metadata !1432, null}
!1435 = metadata !{i32 1150, i32 0, metadata !251, null}
!1436 = metadata !{i32 1151, i32 0, metadata !251, null}
!1437 = metadata !{i32 1155, i32 0, metadata !252, null}
!1438 = metadata !{i32 1156, i32 0, metadata !252, null}
!1439 = metadata !{i32 1158, i32 0, metadata !252, null}
!1440 = metadata !{i32 1159, i32 0, metadata !252, null}
!1441 = metadata !{i32 1161, i32 0, metadata !252, null}
!1442 = metadata !{i32 1162, i32 0, metadata !252, null}
!1443 = metadata !{i32 1163, i32 0, metadata !252, null}
!1444 = metadata !{i32 1165, i32 0, metadata !252, null}
!1445 = metadata !{i32 1166, i32 0, metadata !252, null}
!1446 = metadata !{i32 1168, i32 0, metadata !252, null}
!1447 = metadata !{i32 1170, i32 0, metadata !1448, null}
!1448 = metadata !{i32 786443, metadata !1, metadata !252, i32 1169, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1449 = metadata !{i32 1171, i32 0, metadata !1448, null}
!1450 = metadata !{i32 1172, i32 0, metadata !1448, null}
!1451 = metadata !{i32 1173, i32 0, metadata !1448, null}
!1452 = metadata !{i32 1176, i32 0, metadata !252, null}
!1453 = metadata !{i32 1186, i32 0, metadata !252, null}
!1454 = metadata !{i32 1178, i32 0, metadata !1455, null}
!1455 = metadata !{i32 786443, metadata !1, metadata !252, i32 1177, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1456 = metadata !{i32 1179, i32 0, metadata !1455, null}
!1457 = metadata !{i32 1180, i32 0, metadata !1455, null}
!1458 = metadata !{i32 1181, i32 0, metadata !1455, null}
!1459 = metadata !{i32 1182, i32 0, metadata !1455, null}
!1460 = metadata !{i32 1183, i32 0, metadata !1455, null}
!1461 = metadata !{i32 1184, i32 0, metadata !1455, null}
!1462 = metadata !{i32 1185, i32 0, metadata !1455, null}
!1463 = metadata !{i32 1187, i32 0, metadata !252, null}
!1464 = metadata !{i32 1192, i32 0, metadata !256, null}
!1465 = metadata !{i32 1194, i32 0, metadata !256, null}
!1466 = metadata !{i32 1196, i32 0, metadata !256, null}
!1467 = metadata !{i32 1197, i32 0, metadata !256, null}
!1468 = metadata !{i32 1199, i32 0, metadata !256, null}
!1469 = metadata !{i32 1200, i32 0, metadata !256, null}
!1470 = metadata !{i32 1202, i32 0, metadata !256, null}
!1471 = metadata !{i32 1204, i32 0, metadata !1472, null}
!1472 = metadata !{i32 786443, metadata !1, metadata !256, i32 1203, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1473 = metadata !{i32 1205, i32 0, metadata !1472, null}
!1474 = metadata !{i32 1206, i32 0, metadata !1472, null}
!1475 = metadata !{i32 1207, i32 0, metadata !256, null}
!1476 = metadata !{i32 1227, i32 0, metadata !264, null}
!1477 = metadata !{i32 1228, i32 0, metadata !264, null}
!1478 = metadata !{i32 1229, i32 0, metadata !264, null}
!1479 = metadata !{i32 1230, i32 0, metadata !264, null}
!1480 = metadata !{i32 1243, i32 0, metadata !265, metadata !1481}
!1481 = metadata !{i32 1231, i32 0, metadata !264, null}
!1482 = metadata !{i32 1244, i32 0, metadata !265, metadata !1481}
!1483 = metadata !{i32 1245, i32 0, metadata !265, metadata !1481}
!1484 = metadata !{i32 1246, i32 0, metadata !265, metadata !1481}
!1485 = metadata !{i32 1247, i32 0, metadata !265, metadata !1481}
!1486 = metadata !{i32 1249, i32 0, metadata !265, metadata !1481}
!1487 = metadata !{i32 1234, i32 0, metadata !264, null}
!1488 = metadata !{i32 1238, i32 0, metadata !264, null}
!1489 = metadata !{i32 1243, i32 0, metadata !265, null}
!1490 = metadata !{i32 1244, i32 0, metadata !265, null}
!1491 = metadata !{i32 1245, i32 0, metadata !265, null}
!1492 = metadata !{i32 1246, i32 0, metadata !265, null}
!1493 = metadata !{i32 1247, i32 0, metadata !265, null}
!1494 = metadata !{i32 1249, i32 0, metadata !265, null}
!1495 = metadata !{i32 1250, i32 0, metadata !265, null}
!1496 = metadata !{i32 1254, i32 0, metadata !266, null}
!1497 = metadata !{i32 1255, i32 0, metadata !266, null}
!1498 = metadata !{i32 1256, i32 0, metadata !266, null}
!1499 = metadata !{i32 1257, i32 0, metadata !266, null}
!1500 = metadata !{i32 1258, i32 0, metadata !266, null}
!1501 = metadata !{i32 1259, i32 0, metadata !266, null}
!1502 = metadata !{i32 1260, i32 0, metadata !266, null}
!1503 = metadata !{i32 1264, i32 0, metadata !267, null}
!1504 = metadata !{i32 1265, i32 0, metadata !267, null}
!1505 = metadata !{i32 1268, i32 0, metadata !267, null}
!1506 = metadata !{i32 1269, i32 0, metadata !267, null}
!1507 = metadata !{i32 1271, i32 0, metadata !267, null}
!1508 = metadata !{i32 1272, i32 0, metadata !267, null}
!1509 = metadata !{i32 1273, i32 0, metadata !267, null}
!1510 = metadata !{i32 1274, i32 0, metadata !267, null}
!1511 = metadata !{i32 1275, i32 0, metadata !267, null}
!1512 = metadata !{i32 1276, i32 0, metadata !267, null}
!1513 = metadata !{i32 1277, i32 0, metadata !267, null}
!1514 = metadata !{i32 1278, i32 0, metadata !267, null}
!1515 = metadata !{i32 1279, i32 0, metadata !267, null}
!1516 = metadata !{i32 1280, i32 0, metadata !267, null}
!1517 = metadata !{i32 1290, i32 0, metadata !267, null}
!1518 = metadata !{i32 1300, i32 0, metadata !267, null}
!1519 = metadata !{i32 1292, i32 0, metadata !1520, null}
!1520 = metadata !{i32 786443, metadata !1, metadata !267, i32 1291, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1521 = metadata !{i32 1293, i32 0, metadata !1520, null}
!1522 = metadata !{i32 1294, i32 0, metadata !1520, null}
!1523 = metadata !{i32 1295, i32 0, metadata !1520, null}
!1524 = metadata !{i32 1296, i32 0, metadata !1520, null}
!1525 = metadata !{i32 1297, i32 0, metadata !1520, null}
!1526 = metadata !{i32 1298, i32 0, metadata !1520, null}
!1527 = metadata !{i32 1299, i32 0, metadata !1520, null}
!1528 = metadata !{i32 1301, i32 0, metadata !267, null}
!1529 = metadata !{i32 1307, i32 0, metadata !271, null}
!1530 = metadata !{i32 1309, i32 0, metadata !1531, null}
!1531 = metadata !{i32 786443, metadata !1, metadata !271, i32 1308, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1532 = metadata !{i32 1310, i32 0, metadata !1531, null}
!1533 = metadata !{i32 1311, i32 0, metadata !1531, null}
!1534 = metadata !{i32 1312, i32 0, metadata !271, null}
!1535 = metadata !{i32 1313, i32 0, metadata !271, null}
!1536 = metadata !{i32 1329, i32 0, metadata !272, null}
!1537 = metadata !{i32 1330, i32 0, metadata !272, null}
!1538 = metadata !{i32 1331, i32 0, metadata !272, null}
!1539 = metadata !{i32 1332, i32 0, metadata !272, null}
!1540 = metadata !{i32 1333, i32 0, metadata !272, null}
!1541 = metadata !{i32 1334, i32 0, metadata !272, null}
!1542 = metadata !{i32 1342, i32 0, metadata !273, metadata !1543}
!1543 = metadata !{i32 1335, i32 0, metadata !272, null}
!1544 = metadata !{i32 1343, i32 0, metadata !273, metadata !1543}
!1545 = metadata !{i32 1344, i32 0, metadata !273, metadata !1543}
!1546 = metadata !{i32 1345, i32 0, metadata !273, metadata !1543}
!1547 = metadata !{i32 1346, i32 0, metadata !273, metadata !1543}
!1548 = metadata !{i32 1348, i32 0, metadata !273, metadata !1543}
!1549 = metadata !{i32 1349, i32 0, metadata !273, metadata !1543}
!1550 = metadata !{i32 1351, i32 0, metadata !273, metadata !1543}
!1551 = metadata !{i32 1337, i32 0, metadata !272, null}
!1552 = metadata !{i32 1342, i32 0, metadata !273, null}
!1553 = metadata !{i32 1343, i32 0, metadata !273, null}
!1554 = metadata !{i32 1344, i32 0, metadata !273, null}
!1555 = metadata !{i32 1345, i32 0, metadata !273, null}
!1556 = metadata !{i32 1346, i32 0, metadata !273, null}
!1557 = metadata !{i32 1348, i32 0, metadata !273, null}
!1558 = metadata !{i32 1349, i32 0, metadata !273, null}
!1559 = metadata !{i32 1351, i32 0, metadata !273, null}
!1560 = metadata !{i32 1352, i32 0, metadata !273, null}
!1561 = metadata !{i32 7}
!1562 = metadata !{i32 1360, i32 0, metadata !274, null}
!1563 = metadata !{i32 1361, i32 0, metadata !1564, null}
!1564 = metadata !{i32 786443, metadata !1, metadata !274, i32 1361, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1565 = metadata !{i32 1363, i32 0, metadata !1566, null}
!1566 = metadata !{i32 786443, metadata !1, metadata !1564, i32 1362, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1567 = metadata !{i32 1364, i32 0, metadata !1566, null}
!1568 = metadata !{i32 1366, i32 0, metadata !274, null}
!1569 = metadata !{i32 1367, i32 0, metadata !274, null}
!1570 = metadata !{i32 1372, i32 0, metadata !279, null}
!1571 = metadata !{i32 1373, i32 0, metadata !279, null}
!1572 = metadata !{i32 1375, i32 0, metadata !279, null}
!1573 = metadata !{i32 1376, i32 0, metadata !279, null}
!1574 = metadata !{i32 1379, i32 0, metadata !1575, null}
!1575 = metadata !{i32 786443, metadata !1, metadata !279, i32 1379, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1576 = metadata !{i32 1381, i32 0, metadata !1577, null}
!1577 = metadata !{i32 786443, metadata !1, metadata !1575, i32 1380, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1578 = metadata !{i32 1382, i32 0, metadata !1577, null}
!1579 = metadata !{i32 1383, i32 0, metadata !1577, null}
!1580 = metadata !{i32 1392, i32 0, metadata !279, null}
!1581 = metadata !{i32 1402, i32 0, metadata !279, null}
!1582 = metadata !{i32 1394, i32 0, metadata !1583, null}
!1583 = metadata !{i32 786443, metadata !1, metadata !279, i32 1393, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1584 = metadata !{i32 1395, i32 0, metadata !1583, null}
!1585 = metadata !{i32 1396, i32 0, metadata !1583, null}
!1586 = metadata !{i32 1397, i32 0, metadata !1583, null}
!1587 = metadata !{i32 1398, i32 0, metadata !1583, null}
!1588 = metadata !{i32 1399, i32 0, metadata !1583, null}
!1589 = metadata !{i32 1400, i32 0, metadata !1583, null}
!1590 = metadata !{i32 1401, i32 0, metadata !1583, null}
!1591 = metadata !{i32 1403, i32 0, metadata !279, null}
!1592 = metadata !{i32 1407, i32 0, metadata !284, null}
!1593 = metadata !{i32 1409, i32 0, metadata !1594, null}
!1594 = metadata !{i32 786443, metadata !1, metadata !284, i32 1408, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1595 = metadata !{i32 1410, i32 0, metadata !1594, null}
!1596 = metadata !{i32 1411, i32 0, metadata !1594, null}
!1597 = metadata !{i32 1412, i32 0, metadata !284, null}
!1598 = metadata !{i32 1413, i32 0, metadata !284, null}
!1599 = metadata !{i32 1415, i32 0, metadata !1600, null}
!1600 = metadata !{i32 786443, metadata !1, metadata !284, i32 1414, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1601 = metadata !{i32 1416, i32 0, metadata !1600, null}
!1602 = metadata !{i32 1417, i32 0, metadata !284, null}
!1603 = metadata !{i32 1434, i32 0, metadata !285, null}
!1604 = metadata !{i32 1435, i32 0, metadata !285, null}
!1605 = metadata !{i32 1436, i32 0, metadata !285, null}
!1606 = metadata !{i32 1437, i32 0, metadata !285, null}
!1607 = metadata !{i32 1439, i32 0, metadata !285, null}
!1608 = metadata !{i32 1438, i32 0, metadata !285, null}
!1609 = metadata !{i32 1447, i32 0, metadata !286, metadata !1610}
!1610 = metadata !{i32 1440, i32 0, metadata !285, null}
!1611 = metadata !{i32 1448, i32 0, metadata !286, metadata !1610}
!1612 = metadata !{i32 1449, i32 0, metadata !286, metadata !1610}
!1613 = metadata !{i32 1450, i32 0, metadata !286, metadata !1610}
!1614 = metadata !{i32 1451, i32 0, metadata !286, metadata !1610}
!1615 = metadata !{i32 1453, i32 0, metadata !286, metadata !1610}
!1616 = metadata !{i32 1454, i32 0, metadata !286, metadata !1610}
!1617 = metadata !{i32 1455, i32 0, metadata !286, metadata !1610}
!1618 = metadata !{i32 1456, i32 0, metadata !286, metadata !1610}
!1619 = metadata !{i32 1458, i32 0, metadata !286, metadata !1610}
!1620 = metadata !{i32 1442, i32 0, metadata !285, null}
!1621 = metadata !{i32 1447, i32 0, metadata !286, null}
!1622 = metadata !{i32 1448, i32 0, metadata !286, null}
!1623 = metadata !{i32 1449, i32 0, metadata !286, null}
!1624 = metadata !{i32 1450, i32 0, metadata !286, null}
!1625 = metadata !{i32 1451, i32 0, metadata !286, null}
!1626 = metadata !{i32 1453, i32 0, metadata !286, null}
!1627 = metadata !{i32 1454, i32 0, metadata !286, null}
!1628 = metadata !{i32 1455, i32 0, metadata !286, null}
!1629 = metadata !{i32 1456, i32 0, metadata !286, null}
!1630 = metadata !{i32 1458, i32 0, metadata !286, null}
!1631 = metadata !{i32 1459, i32 0, metadata !286, null}
!1632 = metadata !{i32 82}
!1633 = metadata !{i32 1467, i32 0, metadata !287, null}
!1634 = metadata !{i32 1471, i32 0, metadata !1635, null}
!1635 = metadata !{i32 786443, metadata !1, metadata !287, i32 1470, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1636 = metadata !{i32 1479, i32 0, metadata !287, null}
!1637 = metadata !{i32 1480, i32 0, metadata !1638, null}
!1638 = metadata !{i32 786443, metadata !1, metadata !287, i32 1480, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1639 = metadata !{i32 1482, i32 0, metadata !1640, null}
!1640 = metadata !{i32 786443, metadata !1, metadata !1638, i32 1481, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1641 = metadata !{i32 1483, i32 0, metadata !1640, null}
!1642 = metadata !{i32 1485, i32 0, metadata !287, null}
!1643 = metadata !{i32 1486, i32 0, metadata !287, null}
!1644 = metadata !{i32 1491, i32 0, metadata !293, null}
!1645 = metadata !{i32 1492, i32 0, metadata !293, null}
!1646 = metadata !{i32 1494, i32 0, metadata !293, null}
!1647 = metadata !{i32 1495, i32 0, metadata !293, null}
!1648 = metadata !{i32 1497, i32 0, metadata !293, null}
!1649 = metadata !{i32 1498, i32 0, metadata !293, null}
!1650 = metadata !{i32 1499, i32 0, metadata !293, null}
!1651 = metadata !{i32 1506, i32 0, metadata !293, null}
!1652 = metadata !{i32 1508, i32 0, metadata !1653, null}
!1653 = metadata !{i32 786443, metadata !1, metadata !293, i32 1507, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1654 = metadata !{i32 1509, i32 0, metadata !1653, null}
!1655 = metadata !{i32 1510, i32 0, metadata !1653, null}
!1656 = metadata !{i32 1514, i32 0, metadata !1653, null}
!1657 = metadata !{i32 1516, i32 0, metadata !1658, null}
!1658 = metadata !{i32 786443, metadata !1, metadata !293, i32 1516, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1659 = metadata !{i32 1518, i32 0, metadata !1660, null}
!1660 = metadata !{i32 786443, metadata !1, metadata !1658, i32 1517, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1661 = metadata !{i32 1519, i32 0, metadata !1660, null}
!1662 = metadata !{i32 1520, i32 0, metadata !1660, null}
!1663 = metadata !{i32 1529, i32 0, metadata !293, null}
!1664 = metadata !{i32 1539, i32 0, metadata !293, null}
!1665 = metadata !{i32 1531, i32 0, metadata !1666, null}
!1666 = metadata !{i32 786443, metadata !1, metadata !293, i32 1530, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1667 = metadata !{i32 1532, i32 0, metadata !1666, null}
!1668 = metadata !{i32 1533, i32 0, metadata !1666, null}
!1669 = metadata !{i32 1534, i32 0, metadata !1666, null}
!1670 = metadata !{i32 1535, i32 0, metadata !1666, null}
!1671 = metadata !{i32 1536, i32 0, metadata !1666, null}
!1672 = metadata !{i32 1537, i32 0, metadata !1666, null}
!1673 = metadata !{i32 1538, i32 0, metadata !1666, null}
!1674 = metadata !{i32 1540, i32 0, metadata !293, null}
!1675 = metadata !{i32 1544, i32 0, metadata !298, null}
!1676 = metadata !{i32 1546, i32 0, metadata !1677, null}
!1677 = metadata !{i32 786443, metadata !1, metadata !298, i32 1545, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1678 = metadata !{i32 1547, i32 0, metadata !1677, null}
!1679 = metadata !{i32 1548, i32 0, metadata !1677, null}
!1680 = metadata !{i32 1549, i32 0, metadata !298, null}
!1681 = metadata !{i32 1550, i32 0, metadata !298, null}
!1682 = metadata !{i32 1552, i32 0, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !1, metadata !298, i32 1551, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1684 = metadata !{i32 1553, i32 0, metadata !1683, null}
!1685 = metadata !{i32 1554, i32 0, metadata !298, null}
!1686 = metadata !{i32 1570, i32 0, metadata !299, null}
!1687 = metadata !{i32 1571, i32 0, metadata !299, null}
!1688 = metadata !{i32 1572, i32 0, metadata !299, null}
!1689 = metadata !{i32 1573, i32 0, metadata !299, null}
!1690 = metadata !{i32 1581, i32 0, metadata !300, metadata !1691}
!1691 = metadata !{i32 1574, i32 0, metadata !299, null}
!1692 = metadata !{i32 1582, i32 0, metadata !300, metadata !1691}
!1693 = metadata !{i32 1583, i32 0, metadata !300, metadata !1691}
!1694 = metadata !{i32 1584, i32 0, metadata !300, metadata !1691}
!1695 = metadata !{i32 1585, i32 0, metadata !300, metadata !1691}
!1696 = metadata !{i32 1587, i32 0, metadata !300, metadata !1691}
!1697 = metadata !{i32 1588, i32 0, metadata !300, metadata !1691}
!1698 = metadata !{i32 1589, i32 0, metadata !300, metadata !1691}
!1699 = metadata !{i32 1591, i32 0, metadata !300, metadata !1691}
!1700 = metadata !{i32 1576, i32 0, metadata !299, null}
!1701 = metadata !{i32 1581, i32 0, metadata !300, null}
!1702 = metadata !{i32 1582, i32 0, metadata !300, null}
!1703 = metadata !{i32 1583, i32 0, metadata !300, null}
!1704 = metadata !{i32 1584, i32 0, metadata !300, null}
!1705 = metadata !{i32 1585, i32 0, metadata !300, null}
!1706 = metadata !{i32 1587, i32 0, metadata !300, null}
!1707 = metadata !{i32 1588, i32 0, metadata !300, null}
!1708 = metadata !{i32 1589, i32 0, metadata !300, null}
!1709 = metadata !{i32 1591, i32 0, metadata !300, null}
!1710 = metadata !{i32 1592, i32 0, metadata !300, null}
!1711 = metadata !{i32 1597, i32 0, metadata !301, null}
!1712 = metadata !{i32 1599, i32 0, metadata !1713, null}
!1713 = metadata !{i32 786443, metadata !1, metadata !301, i32 1598, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1714 = metadata !{i32 1600, i32 0, metadata !1713, null}
!1715 = metadata !{i32 1601, i32 0, metadata !1713, null}
!1716 = metadata !{i32 1603, i32 0, metadata !1713, null}
!1717 = metadata !{i32 1602, i32 0, metadata !1713, null}
!1718 = metadata !{i32 1608, i32 0, metadata !301, null}
!1719 = metadata !{i32 1612, i32 0, metadata !302, null}
!1720 = metadata !{i32 1613, i32 0, metadata !302, null}
!1721 = metadata !{i32 1615, i32 0, metadata !302, null}
!1722 = metadata !{i32 1616, i32 0, metadata !302, null}
!1723 = metadata !{i32 1618, i32 0, metadata !302, null}
!1724 = metadata !{i32 1619, i32 0, metadata !302, null}
!1725 = metadata !{i32 1621, i32 0, metadata !302, null}
!1726 = metadata !{i32 1622, i32 0, metadata !302, null}
!1727 = metadata !{i32 1623, i32 0, metadata !302, null}
!1728 = metadata !{i32 1625, i32 0, metadata !302, null}
!1729 = metadata !{i32 1626, i32 0, metadata !302, null}
!1730 = metadata !{i32 1627, i32 0, metadata !302, null}
!1731 = metadata !{i32 1638, i32 0, metadata !302, null}
!1732 = metadata !{i32 1648, i32 0, metadata !302, null}
!1733 = metadata !{i32 1640, i32 0, metadata !1734, null}
!1734 = metadata !{i32 786443, metadata !1, metadata !302, i32 1639, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1735 = metadata !{i32 1641, i32 0, metadata !1734, null}
!1736 = metadata !{i32 1642, i32 0, metadata !1734, null}
!1737 = metadata !{i32 1643, i32 0, metadata !1734, null}
!1738 = metadata !{i32 1644, i32 0, metadata !1734, null}
!1739 = metadata !{i32 1645, i32 0, metadata !1734, null}
!1740 = metadata !{i32 1646, i32 0, metadata !1734, null}
!1741 = metadata !{i32 1647, i32 0, metadata !1734, null}
!1742 = metadata !{i32 1649, i32 0, metadata !302, null}
!1743 = metadata !{i32 1653, i32 0, metadata !306, null}
!1744 = metadata !{i32 1655, i32 0, metadata !1745, null}
!1745 = metadata !{i32 786443, metadata !1, metadata !306, i32 1654, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/sei.c]
!1746 = metadata !{i32 1656, i32 0, metadata !1745, null}
!1747 = metadata !{i32 1657, i32 0, metadata !1745, null}
!1748 = metadata !{i32 1658, i32 0, metadata !306, null}
!1749 = metadata !{i32 1659, i32 0, metadata !306, null}
