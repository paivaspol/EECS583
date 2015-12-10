; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/rtp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.RTPpacket_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }

@CurrentRTPTimestamp = global i32 0, align 4
@CurrentRTPSequenceNumber = global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"p->v == 2\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/464.h264ref/src/rtp.c\00", align 1
@__PRETTY_FUNCTION__.ComposeRTPPacket = private unnamed_addr constant [36 x i8] c"int ComposeRTPPacket(RTPpacket_t *)\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"p->p == 0\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"p->x == 0\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"p->cc == 0\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"p->m == 0 || p->m == 1\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"p->pt < 128\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"p->seq < 65536\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"p->payload != ((void*)0)\00", align 1
@.str9 = private unnamed_addr constant [23 x i8] c"p->paylen < 65536 - 40\00", align 1
@.str10 = private unnamed_addr constant [24 x i8] c"p->packet != ((void*)0)\00", align 1
@.str11 = private unnamed_addr constant [16 x i8] c"f != ((void*)0)\00", align 1
@__PRETTY_FUNCTION__.WriteRTPPacket = private unnamed_addr constant [42 x i8] c"int WriteRTPPacket(RTPpacket_t *, FILE *)\00", align 1
@.str12 = private unnamed_addr constant [16 x i8] c"p != ((void*)0)\00", align 1
@f = common global %struct._IO_FILE* null, align 8
@__PRETTY_FUNCTION__.WriteRTPNALU = private unnamed_addr constant [27 x i8] c"int WriteRTPNALU(NALU_t *)\00", align 1
@.str13 = private unnamed_addr constant [16 x i8] c"n != ((void*)0)\00", align 1
@.str14 = private unnamed_addr constant [15 x i8] c"n->len < 65000\00", align 1
@.str15 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-1\00", align 1
@.str16 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-2\00", align 1
@.str17 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-3\00", align 1
@.str19 = private unnamed_addr constant [54 x i8] c"Cannot write %d bytes of RTP packet to outfile, exit\0A\00", align 1
@RTPUpdateTimestamp.oldtr = internal unnamed_addr global i32 -1, align 4
@.str20 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str21 = private unnamed_addr constant [51 x i8] c"Fatal: cannot open bitstream file '%s', exit (-1)\0A\00", align 1
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
define i32 @ComposeRTPPacket(%struct.RTPpacket_t* nocapture %p) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.RTPpacket_t* %p}, i64 0, metadata !38), !dbg !618
  %v = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 0, !dbg !619
  %0 = load i32* %v, align 4, !dbg !619, !tbaa !620
  %cmp = icmp eq i32 %0, 2, !dbg !619
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !619

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 74, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__.ComposeRTPPacket, i64 0, i64 0)) #6, !dbg !619
  unreachable, !dbg !619

cond.end:                                         ; preds = %entry
  %p1 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 1, !dbg !623
  %1 = load i32* %p1, align 4, !dbg !623, !tbaa !620
  %cmp2 = icmp eq i32 %1, 0, !dbg !623
  br i1 %cmp2, label %cond.end5, label %cond.false4, !dbg !623

cond.false4:                                      ; preds = %cond.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__.ComposeRTPPacket, i64 0, i64 0)) #6, !dbg !623
  unreachable, !dbg !623

cond.end5:                                        ; preds = %cond.end
  %x = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 2, !dbg !624
  %2 = load i32* %x, align 4, !dbg !624, !tbaa !620
  %cmp6 = icmp eq i32 %2, 0, !dbg !624
  br i1 %cmp6, label %cond.end9, label %cond.false8, !dbg !624

cond.false8:                                      ; preds = %cond.end5
  tail call void @__assert_fail(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 76, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__.ComposeRTPPacket, i64 0, i64 0)) #6, !dbg !624
  unreachable, !dbg !624

cond.end9:                                        ; preds = %cond.end5
  %cc = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 3, !dbg !625
  %3 = load i32* %cc, align 4, !dbg !625, !tbaa !620
  %cmp10 = icmp eq i32 %3, 0, !dbg !625
  br i1 %cmp10, label %cond.end13, label %cond.false12, !dbg !625

cond.false12:                                     ; preds = %cond.end9
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 77, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__.ComposeRTPPacket, i64 0, i64 0)) #6, !dbg !625
  unreachable, !dbg !625

cond.end13:                                       ; preds = %cond.end9
  %m = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 4, !dbg !626
  %4 = load i32* %m, align 4, !dbg !626, !tbaa !620
  %switch = icmp ult i32 %4, 2, !dbg !626
  br i1 %switch, label %cond.end19, label %cond.false18, !dbg !626

cond.false18:                                     ; preds = %cond.end13
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__.ComposeRTPPacket, i64 0, i64 0)) #6, !dbg !626
  unreachable, !dbg !626

cond.end19:                                       ; preds = %cond.end13
  %pt = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 5, !dbg !627
  %5 = load i32* %pt, align 4, !dbg !627, !tbaa !620
  %cmp20 = icmp ult i32 %5, 128, !dbg !627
  br i1 %cmp20, label %cond.end23, label %cond.false22, !dbg !627

cond.false22:                                     ; preds = %cond.end19
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__.ComposeRTPPacket, i64 0, i64 0)) #6, !dbg !627
  unreachable, !dbg !627

cond.end23:                                       ; preds = %cond.end19
  %seq = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 6, !dbg !628
  %6 = load i32* %seq, align 4, !dbg !628, !tbaa !620
  %cmp24 = icmp ult i32 %6, 65536, !dbg !628
  br i1 %cmp24, label %cond.end27, label %cond.false26, !dbg !628

cond.false26:                                     ; preds = %cond.end23
  tail call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__.ComposeRTPPacket, i64 0, i64 0)) #6, !dbg !628
  unreachable, !dbg !628

cond.end27:                                       ; preds = %cond.end23
  %payload = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 9, !dbg !629
  %7 = load i8** %payload, align 8, !dbg !629, !tbaa !630
  %cmp28 = icmp eq i8* %7, null, !dbg !629
  br i1 %cmp28, label %cond.false30, label %cond.end31, !dbg !629

cond.false30:                                     ; preds = %cond.end27
  tail call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 81, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__.ComposeRTPPacket, i64 0, i64 0)) #6, !dbg !629
  unreachable, !dbg !629

cond.end31:                                       ; preds = %cond.end27
  %paylen = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 10, !dbg !631
  %8 = load i32* %paylen, align 4, !dbg !631, !tbaa !620
  %cmp32 = icmp ult i32 %8, 65496, !dbg !631
  br i1 %cmp32, label %cond.end35, label %cond.false34, !dbg !631

cond.false34:                                     ; preds = %cond.end31
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 82, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__.ComposeRTPPacket, i64 0, i64 0)) #6, !dbg !631
  unreachable, !dbg !631

cond.end35:                                       ; preds = %cond.end31
  %packet = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 11, !dbg !632
  %9 = load i8** %packet, align 8, !dbg !632, !tbaa !630
  %cmp36 = icmp eq i8* %9, null, !dbg !632
  br i1 %cmp36, label %cond.false38, label %cond.end39, !dbg !632

cond.false38:                                     ; preds = %cond.end35
  tail call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 83, i8* getelementptr inbounds ([36 x i8]* @__PRETTY_FUNCTION__.ComposeRTPPacket, i64 0, i64 0)) #6, !dbg !632
  unreachable, !dbg !632

cond.end39:                                       ; preds = %cond.end35
  store i8 2, i8* %9, align 1, !dbg !633, !tbaa !621
  %10 = load i32* %m, align 4, !dbg !634, !tbaa !620
  %11 = load i32* %pt, align 4, !dbg !634, !tbaa !620
  %shl51 = shl i32 %11, 1, !dbg !634
  %or52 = or i32 %shl51, %10, !dbg !634
  %conv53 = trunc i32 %or52 to i8, !dbg !634
  %12 = load i8** %packet, align 8, !dbg !634, !tbaa !630
  %arrayidx55 = getelementptr inbounds i8* %12, i64 1, !dbg !634
  store i8 %conv53, i8* %arrayidx55, align 1, !dbg !634, !tbaa !621
  %13 = load i32* %seq, align 4, !dbg !635, !tbaa !620
  %conv57 = trunc i32 %13 to i8, !dbg !635
  %14 = load i8** %packet, align 8, !dbg !635, !tbaa !630
  %arrayidx59 = getelementptr inbounds i8* %14, i64 2, !dbg !635
  store i8 %conv57, i8* %arrayidx59, align 1, !dbg !635, !tbaa !621
  %15 = load i32* %seq, align 4, !dbg !636, !tbaa !620
  %shr = lshr i32 %15, 8, !dbg !636
  %conv62 = trunc i32 %shr to i8, !dbg !636
  %16 = load i8** %packet, align 8, !dbg !636, !tbaa !630
  %arrayidx64 = getelementptr inbounds i8* %16, i64 3, !dbg !636
  store i8 %conv62, i8* %arrayidx64, align 1, !dbg !636, !tbaa !621
  %17 = load i8** %packet, align 8, !dbg !637, !tbaa !630
  %arrayidx66 = getelementptr inbounds i8* %17, i64 4, !dbg !637
  %timestamp = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 7, !dbg !637
  %18 = bitcast i8* %arrayidx66 to i32*, !dbg !637
  %19 = load i32* %timestamp, align 1, !dbg !637
  store i32 %19, i32* %18, align 1, !dbg !637
  %20 = load i8** %packet, align 8, !dbg !638, !tbaa !630
  %arrayidx68 = getelementptr inbounds i8* %20, i64 8, !dbg !638
  %ssrc = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 8, !dbg !638
  %21 = bitcast i8* %arrayidx68 to i32*, !dbg !638
  %22 = load i32* %ssrc, align 1, !dbg !638
  store i32 %22, i32* %21, align 1, !dbg !638
  %23 = load i8** %packet, align 8, !dbg !639, !tbaa !630
  %arrayidx70 = getelementptr inbounds i8* %23, i64 12, !dbg !639
  %24 = load i8** %payload, align 8, !dbg !639, !tbaa !630
  %25 = load i32* %paylen, align 4, !dbg !639, !tbaa !620
  %conv73 = zext i32 %25 to i64, !dbg !639
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx70, i8* %24, i64 %conv73, i32 1, i1 false), !dbg !639
  %26 = load i32* %paylen, align 4, !dbg !640, !tbaa !620
  %add = add i32 %26, 12, !dbg !640
  %packlen = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 12, !dbg !640
  store i32 %add, i32* %packlen, align 4, !dbg !640, !tbaa !620
  ret i32 0, !dbg !641
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define i32 @WriteRTPPacket(%struct.RTPpacket_t* %p, %struct._IO_FILE* %f) #0 {
entry:
  %intime = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.RTPpacket_t* %p}, i64 0, metadata !100), !dbg !642
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %f}, i64 0, metadata !101), !dbg !642
  call void @llvm.dbg.declare(metadata !{i32* %intime}, metadata !102), !dbg !643
  call void @llvm.dbg.value(metadata !644, i64 0, metadata !102), !dbg !643
  store i32 -1, i32* %intime, align 4, !dbg !643, !tbaa !620
  %cmp = icmp eq %struct._IO_FILE* %f, null, !dbg !645
  br i1 %cmp, label %cond.false, label %cond.end, !dbg !645

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 135, i8* getelementptr inbounds ([42 x i8]* @__PRETTY_FUNCTION__.WriteRTPPacket, i64 0, i64 0)) #6, !dbg !645
  unreachable, !dbg !645

cond.end:                                         ; preds = %entry
  %cmp1 = icmp eq %struct.RTPpacket_t* %p, null, !dbg !646
  br i1 %cmp1, label %cond.false3, label %cond.end4, !dbg !646

cond.false3:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 136, i8* getelementptr inbounds ([42 x i8]* @__PRETTY_FUNCTION__.WriteRTPPacket, i64 0, i64 0)) #6, !dbg !646
  unreachable, !dbg !646

cond.end4:                                        ; preds = %cond.end
  %packlen = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 12, !dbg !647
  %0 = bitcast i32* %packlen to i8*, !dbg !647
  %call = call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %f) #7, !dbg !647
  %cmp5 = icmp eq i64 %call, 1, !dbg !647
  br i1 %cmp5, label %if.end, label %return, !dbg !647

if.end:                                           ; preds = %cond.end4
  %1 = bitcast i32* %intime to i8*, !dbg !648
  %call6 = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %f) #7, !dbg !648
  %cmp7 = icmp eq i64 %call6, 1, !dbg !648
  br i1 %cmp7, label %if.end9, label %return, !dbg !648

if.end9:                                          ; preds = %if.end
  %packet = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 11, !dbg !649
  %2 = load i8** %packet, align 8, !dbg !649, !tbaa !630
  %3 = load i32* %packlen, align 4, !dbg !649, !tbaa !620
  %conv = zext i32 %3 to i64, !dbg !649
  %call11 = call i64 @fwrite(i8* %2, i64 %conv, i64 1, %struct._IO_FILE* %f) #7, !dbg !649
  %not.cmp12 = icmp ne i64 %call11, 1, !dbg !650
  %. = sext i1 %not.cmp12 to i32, !dbg !650
  br label %return, !dbg !650

return:                                           ; preds = %if.end9, %if.end, %cond.end4
  %retval.0 = phi i32 [ -1, %cond.end4 ], [ -1, %if.end ], [ %., %if.end9 ]
  ret i32 %retval.0, !dbg !650
}

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @WriteRTPNALU(%struct.NALU_t* %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.NALU_t* %n}, i64 0, metadata !119), !dbg !651
  %0 = load %struct._IO_FILE** @f, align 8, !dbg !652, !tbaa !630
  %cmp = icmp eq %struct._IO_FILE* %0, null, !dbg !652
  br i1 %cmp, label %cond.false, label %cond.end, !dbg !652

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 176, i8* getelementptr inbounds ([27 x i8]* @__PRETTY_FUNCTION__.WriteRTPNALU, i64 0, i64 0)) #6, !dbg !652
  unreachable, !dbg !652

cond.end:                                         ; preds = %entry
  %cmp1 = icmp eq %struct.NALU_t* %n, null, !dbg !653
  br i1 %cmp1, label %cond.false3, label %cond.end4, !dbg !653

cond.false3:                                      ; preds = %cond.end
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 177, i8* getelementptr inbounds ([27 x i8]* @__PRETTY_FUNCTION__.WriteRTPNALU, i64 0, i64 0)) #6, !dbg !653
  unreachable, !dbg !653

cond.end4:                                        ; preds = %cond.end
  %len = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 1, !dbg !654
  %1 = load i32* %len, align 4, !dbg !654, !tbaa !620
  %cmp5 = icmp ult i32 %1, 65000, !dbg !654
  br i1 %cmp5, label %cond.end8, label %cond.false7, !dbg !654

cond.false7:                                      ; preds = %cond.end4
  tail call void @__assert_fail(i8* getelementptr inbounds ([15 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 178, i8* getelementptr inbounds ([27 x i8]* @__PRETTY_FUNCTION__.WriteRTPNALU, i64 0, i64 0)) #6, !dbg !654
  unreachable, !dbg !654

cond.end8:                                        ; preds = %cond.end4
  %forbidden_bit = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 5, !dbg !655
  %2 = load i32* %forbidden_bit, align 4, !dbg !655, !tbaa !620
  %shl = shl i32 %2, 7, !dbg !655
  %nal_reference_idc = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 4, !dbg !655
  %3 = load i32* %nal_reference_idc, align 4, !dbg !655, !tbaa !620
  %shl9 = shl i32 %3, 5, !dbg !655
  %or = or i32 %shl9, %shl, !dbg !655
  %nal_unit_type = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 3, !dbg !655
  %4 = load i32* %nal_unit_type, align 4, !dbg !655, !tbaa !620
  %or10 = or i32 %or, %4, !dbg !655
  %conv = trunc i32 %or10 to i8, !dbg !655
  %buf = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 6, !dbg !655
  %5 = load i8** %buf, align 8, !dbg !655, !tbaa !630
  store i8 %conv, i8* %5, align 1, !dbg !655, !tbaa !621
  %call = tail call noalias i8* @malloc(i64 72) #7, !dbg !656
  %6 = bitcast i8* %call to %struct.RTPpacket_t*, !dbg !656
  tail call void @llvm.dbg.value(metadata !{%struct.RTPpacket_t* %6}, i64 0, metadata !120), !dbg !656
  %cmp11 = icmp eq i8* %call, null, !dbg !656
  br i1 %cmp11, label %if.then, label %if.end, !dbg !656

if.then:                                          ; preds = %cond.end8
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !657
  br label %if.end, !dbg !657

if.end:                                           ; preds = %if.then, %cond.end8
  %call13 = tail call noalias i8* @malloc(i64 65508) #7, !dbg !658
  %packet = getelementptr inbounds i8* %call, i64 56, !dbg !658
  %7 = bitcast i8* %packet to i8**, !dbg !658
  store i8* %call13, i8** %7, align 8, !dbg !658, !tbaa !630
  %cmp14 = icmp eq i8* %call13, null, !dbg !658
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !658

if.then16:                                        ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !659
  br label %if.end17, !dbg !659

if.end17:                                         ; preds = %if.then16, %if.end
  %call18 = tail call noalias i8* @malloc(i64 65508) #7, !dbg !660
  %payload = getelementptr inbounds i8* %call, i64 40, !dbg !660
  %8 = bitcast i8* %payload to i8**, !dbg !660
  store i8* %call18, i8** %8, align 8, !dbg !660, !tbaa !630
  %cmp19 = icmp eq i8* %call18, null, !dbg !660
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !660

if.then21:                                        ; preds = %if.end17
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str17, i64 0, i64 0)) #7, !dbg !661
  %.pre = load i8** %8, align 8, !dbg !662, !tbaa !630
  br label %if.end22, !dbg !661

if.end22:                                         ; preds = %if.then21, %if.end17
  %9 = phi i8* [ %.pre, %if.then21 ], [ %call18, %if.end17 ]
  %v = bitcast i8* %call to i32*, !dbg !663
  store i32 2, i32* %v, align 4, !dbg !663, !tbaa !620
  %p23 = getelementptr inbounds i8* %call, i64 4, !dbg !664
  %10 = bitcast i8* %p23 to i32*, !dbg !664
  store i32 0, i32* %10, align 4, !dbg !664, !tbaa !620
  %x = getelementptr inbounds i8* %call, i64 8, !dbg !665
  %11 = bitcast i8* %x to i32*, !dbg !665
  store i32 0, i32* %11, align 4, !dbg !665, !tbaa !620
  %cc = getelementptr inbounds i8* %call, i64 12, !dbg !666
  %12 = bitcast i8* %cc to i32*, !dbg !666
  store i32 0, i32* %12, align 4, !dbg !666, !tbaa !620
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 0, !dbg !667
  %13 = load i32* %startcodeprefix_len, align 4, !dbg !667, !tbaa !620
  %cmp24 = icmp eq i32 %13, 4, !dbg !667
  %conv25 = zext i1 %cmp24 to i32, !dbg !667
  %m = getelementptr inbounds i8* %call, i64 16, !dbg !667
  %14 = bitcast i8* %m to i32*, !dbg !667
  store i32 %conv25, i32* %14, align 4, !dbg !667, !tbaa !620
  %pt = getelementptr inbounds i8* %call, i64 20, !dbg !668
  %15 = bitcast i8* %pt to i32*, !dbg !668
  store i32 105, i32* %15, align 4, !dbg !668, !tbaa !620
  %16 = load i32* @CurrentRTPSequenceNumber, align 4, !dbg !669, !tbaa !620
  %inc = add nsw i32 %16, 1, !dbg !669
  store i32 %inc, i32* @CurrentRTPSequenceNumber, align 4, !dbg !669, !tbaa !620
  %seq = getelementptr inbounds i8* %call, i64 24, !dbg !669
  %17 = bitcast i8* %seq to i32*, !dbg !669
  store i32 %16, i32* %17, align 4, !dbg !669, !tbaa !620
  %18 = load i32* @CurrentRTPTimestamp, align 4, !dbg !670, !tbaa !620
  %timestamp = getelementptr inbounds i8* %call, i64 28, !dbg !670
  %19 = bitcast i8* %timestamp to i32*, !dbg !670
  store i32 %18, i32* %19, align 4, !dbg !670, !tbaa !620
  %ssrc = getelementptr inbounds i8* %call, i64 32, !dbg !671
  %20 = bitcast i8* %ssrc to i32*, !dbg !671
  store i32 305419896, i32* %20, align 4, !dbg !671, !tbaa !620
  %21 = load i32* %len, align 4, !dbg !672, !tbaa !620
  %paylen = getelementptr inbounds i8* %call, i64 48, !dbg !672
  %22 = bitcast i8* %paylen to i32*, !dbg !672
  store i32 %21, i32* %22, align 4, !dbg !672, !tbaa !620
  %23 = load i8** %buf, align 8, !dbg !662, !tbaa !630
  %conv30 = zext i32 %21 to i64, !dbg !662
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %23, i64 %conv30, i32 1, i1 false), !dbg !662
  %call31 = tail call i32 @ComposeRTPPacket(%struct.RTPpacket_t* %6) #8, !dbg !673
  %24 = load %struct._IO_FILE** @f, align 8, !dbg !674, !tbaa !630
  %call37 = tail call i32 @WriteRTPPacket(%struct.RTPpacket_t* %6, %struct._IO_FILE* %24) #8, !dbg !674
  %cmp38 = icmp slt i32 %call37, 0, !dbg !674
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !674

if.then40:                                        ; preds = %if.end22
  %packlen = getelementptr inbounds i8* %call, i64 64, !dbg !675
  %25 = bitcast i8* %packlen to i32*, !dbg !675
  %26 = load i32* %25, align 4, !dbg !675, !tbaa !620
  %call41 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str19, i64 0, i64 0), i32 %26) #7, !dbg !675
  tail call void @exit(i32 -1) #6, !dbg !677
  unreachable, !dbg !677

if.end42:                                         ; preds = %if.end22
  %27 = load i8** %7, align 8, !dbg !678, !tbaa !630
  tail call void @free(i8* %27) #7, !dbg !678
  %28 = load i8** %8, align 8, !dbg !679, !tbaa !630
  tail call void @free(i8* %28) #7, !dbg !679
  tail call void @free(i8* %call) #7, !dbg !680
  %29 = load i32* %len, align 4, !dbg !681, !tbaa !620
  %mul = shl i32 %29, 3, !dbg !681
  ret i32 %mul, !dbg !681
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #5

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @RTPUpdateTimestamp(i32 %tr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %tr}, i64 0, metadata !125), !dbg !682
  %0 = load i32* @RTPUpdateTimestamp.oldtr, align 4, !dbg !683, !tbaa !620
  %cmp = icmp eq i32 %0, -1, !dbg !683
  br i1 %cmp, label %return, label %if.end, !dbg !683

if.end:                                           ; preds = %entry
  %sub = sub nsw i32 %tr, %0, !dbg !684
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !126), !dbg !684
  %cmp1 = icmp slt i32 %sub, -10, !dbg !685
  %add = add nsw i32 %sub, 256, !dbg !686
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !126), !dbg !686
  %add.sub = select i1 %cmp1, i32 %add, i32 %sub, !dbg !685
  %mul = mul nsw i32 %add.sub, 1000, !dbg !687
  %1 = load i32* @CurrentRTPTimestamp, align 4, !dbg !687, !tbaa !620
  %add4 = add nsw i32 %1, %mul, !dbg !687
  br label %return, !dbg !688

return:                                           ; preds = %entry, %if.end
  %storemerge8 = phi i32 [ %add4, %if.end ], [ 0, %entry ]
  %storemerge = phi i32 [ %tr, %if.end ], [ 0, %entry ]
  store i32 %storemerge8, i32* @CurrentRTPTimestamp, align 4, !dbg !687, !tbaa !620
  store i32 %storemerge, i32* @RTPUpdateTimestamp.oldtr, align 4, !dbg !689, !tbaa !620
  ret void, !dbg !688
}

; Function Attrs: nounwind optsize uwtable
define void @OpenRTPFile(i8* %Filename) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %Filename}, i64 0, metadata !131), !dbg !691
  %call = tail call %struct._IO_FILE* @fopen(i8* %Filename, i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !692
  store %struct._IO_FILE* %call, %struct._IO_FILE** @f, align 8, !dbg !692, !tbaa !630
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !692
  br i1 %cmp, label %if.then, label %if.end, !dbg !692

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str21, i64 0, i64 0), i8* %Filename) #7, !dbg !693
  tail call void @exit(i32 -1) #6, !dbg !695
  unreachable, !dbg !695

if.end:                                           ; preds = %entry
  ret void, !dbg !696
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @CloseRTPFile() #0 {
entry:
  %0 = load %struct._IO_FILE** @f, align 8, !dbg !697, !tbaa !630
  %call = tail call i32 @fclose(%struct._IO_FILE* %0) #7, !dbg !697
  ret void, !dbg !698
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !135, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rtp.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/rtp.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !39, metadata !103, metadata !121, metadata !127, metadata !132}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"ComposeRTPPacket", metadata !"ComposeRTPPacket", metadata !"", i32 70, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.RTPpacket_t*)* @ComposeRTPPacket, null, null, metadata !37, i32 72} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 72] [ComposeRTPPacket]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rtp.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RTPpacket_t]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"RTPpacket_t", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [RTPpacket_t] [line 46, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 29, i64 576, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 29, size 576, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/rtp.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !34, metadata !35, metadata !36}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"v", i32 31, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [v] [line 31, size 32, align 32, offset 0] [from unsigned int]
!21 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"p", i32 32, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [p] [line 32, size 32, align 32, offset 32] [from unsigned int]
!23 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"x", i32 33, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [x] [line 33, size 32, align 32, offset 64] [from unsigned int]
!24 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cc", i32 34, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [cc] [line 34, size 32, align 32, offset 96] [from unsigned int]
!25 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"m", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [m] [line 36, size 32, align 32, offset 128] [from unsigned int]
!26 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"pt", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !21} ; [ DW_TAG_member ] [pt] [line 37, size 32, align 32, offset 160] [from unsigned int]
!27 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"seq", i32 38, i64 32, i64 32, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [seq] [line 38, size 32, align 32, offset 192] [from unsigned int]
!28 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"timestamp", i32 40, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ] [timestamp] [line 40, size 32, align 32, offset 224] [from unsigned int]
!29 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"ssrc", i32 41, i64 32, i64 32, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [ssrc] [line 41, size 32, align 32, offset 256] [from unsigned int]
!30 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"payload", i32 42, i64 64, i64 64, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [payload] [line 42, size 64, align 64, offset 320] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!32 = metadata !{i32 786454, metadata !18, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!33 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!34 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"paylen", i32 43, i64 32, i64 32, i64 384, i32 0, metadata !21} ; [ DW_TAG_member ] [paylen] [line 43, size 32, align 32, offset 384] [from unsigned int]
!35 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"packet", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [packet] [line 44, size 64, align 64, offset 448] [from ]
!36 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"packlen", i32 45, i64 32, i64 32, i64 512, i32 0, metadata !21} ; [ DW_TAG_member ] [packlen] [line 45, size 32, align 32, offset 512] [from unsigned int]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786689, metadata !10, metadata !"p", metadata !11, i32 16777286, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 70]
!39 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"WriteRTPPacket", metadata !"WriteRTPPacket", metadata !"", i32 130, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.RTPpacket_t*, %struct._IO_FILE*)* @WriteRTPPacket, null, null, metadata !99, i32 132} ; [ DW_TAG_subprogram ] [line 130] [def] [scope 132] [WriteRTPPacket]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{metadata !14, metadata !15, metadata !42}
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!43 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!44 = metadata !{i32 786451, metadata !45, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !46, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!45 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!46 = metadata !{metadata !47, metadata !48, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !69, metadata !70, metadata !71, metadata !72, metadata !75, metadata !77, metadata !79, metadata !83, metadata !85, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !94, metadata !95}
!47 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!48 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!50 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!51 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!52 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!53 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!54 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!55 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!56 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!57 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!58 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!59 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!60 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !49} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!61 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !62} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!63 = metadata !{i32 786451, metadata !45, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !64, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!64 = metadata !{metadata !65, metadata !66, metadata !68}
!65 = metadata !{i32 786445, metadata !45, metadata !63, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!66 = metadata !{i32 786445, metadata !45, metadata !63, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !67} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!68 = metadata !{i32 786445, metadata !45, metadata !63, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!69 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !67} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!70 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!71 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!72 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !73} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!73 = metadata !{i32 786454, metadata !45, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!74 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!75 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !76} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!76 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!77 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !78} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!78 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!79 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !80} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!80 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !50, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!83 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !84} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!85 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !86} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!86 = metadata !{i32 786454, metadata !45, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!87 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!88 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!89 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!90 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!91 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !92} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!92 = metadata !{i32 786454, metadata !45, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!93 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!94 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!95 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !96} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!96 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !50, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!99 = metadata !{metadata !100, metadata !101, metadata !102}
!100 = metadata !{i32 786689, metadata !39, metadata !"p", metadata !11, i32 16777346, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 130]
!101 = metadata !{i32 786689, metadata !39, metadata !"f", metadata !11, i32 33554562, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 130]
!102 = metadata !{i32 786688, metadata !39, metadata !"intime", metadata !11, i32 133, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [intime] [line 133]
!103 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"WriteRTPNALU", metadata !"WriteRTPNALU", metadata !"", i32 172, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.NALU_t*)* @WriteRTPNALU, null, null, metadata !118, i32 173} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 173] [WriteRTPNALU]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{metadata !14, metadata !106}
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from NALU_t]
!107 = metadata !{i32 786454, metadata !1, null, metadata !"NALU_t", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [NALU_t] [line 49, size 0, align 0, offset 0] [from ]
!108 = metadata !{i32 786451, metadata !109, null, metadata !"", i32 40, i64 256, i64 64, i32 0, i32 0, null, metadata !110, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 256, align 64, offset 0] [from ]
!109 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalucommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!111 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"startcodeprefix_len", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [startcodeprefix_len] [line 42, size 32, align 32, offset 0] [from int]
!112 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"len", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [len] [line 43, size 32, align 32, offset 32] [from unsigned int]
!113 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"max_size", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [max_size] [line 44, size 32, align 32, offset 64] [from unsigned int]
!114 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"nal_unit_type", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nal_unit_type] [line 45, size 32, align 32, offset 96] [from int]
!115 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"nal_reference_idc", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nal_reference_idc] [line 46, size 32, align 32, offset 128] [from int]
!116 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"forbidden_bit", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [forbidden_bit] [line 47, size 32, align 32, offset 160] [from int]
!117 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"buf", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [buf] [line 48, size 64, align 64, offset 192] [from ]
!118 = metadata !{metadata !119, metadata !120}
!119 = metadata !{i32 786689, metadata !103, metadata !"n", metadata !11, i32 16777388, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 172]
!120 = metadata !{i32 786688, metadata !103, metadata !"p", metadata !11, i32 174, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 174]
!121 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"RTPUpdateTimestamp", metadata !"RTPUpdateTimestamp", metadata !"", i32 245, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @RTPUpdateTimestamp, null, null, metadata !124, i32 246} ; [ DW_TAG_subprogram ] [line 245] [def] [scope 246] [RTPUpdateTimestamp]
!122 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{null, metadata !14}
!124 = metadata !{metadata !125, metadata !126}
!125 = metadata !{i32 786689, metadata !121, metadata !"tr", metadata !11, i32 16777461, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 245]
!126 = metadata !{i32 786688, metadata !121, metadata !"delta", metadata !11, i32 247, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta] [line 247]
!127 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"OpenRTPFile", metadata !"OpenRTPFile", metadata !"", i32 292, metadata !128, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @OpenRTPFile, null, null, metadata !130, i32 293} ; [ DW_TAG_subprogram ] [line 292] [def] [scope 293] [OpenRTPFile]
!128 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{null, metadata !49}
!130 = metadata !{metadata !131}
!131 = metadata !{i32 786689, metadata !127, metadata !"Filename", metadata !11, i32 16777508, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Filename] [line 292]
!132 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"CloseRTPFile", metadata !"CloseRTPFile", metadata !"", i32 313, metadata !133, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @CloseRTPFile, null, null, metadata !8, i32 314} ; [ DW_TAG_subprogram ] [line 313] [def] [scope 314] [CloseRTPFile]
!133 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!134 = metadata !{null}
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !337, metadata !339, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !384, metadata !479, metadata !480, metadata !481, metadata !483, metadata !484, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !503, metadata !504, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !519, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !531, metadata !534, metadata !535, metadata !536, metadata !537, metadata !540, metadata !543, metadata !554, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !617}
!136 = metadata !{i32 786484, i32 0, null, metadata !"CurrentRTPTimestamp", metadata !"CurrentRTPTimestamp", metadata !"", metadata !11, i32 34, metadata !14, i32 0, i32 1, i32* @CurrentRTPTimestamp, null} ; [ DW_TAG_variable ] [CurrentRTPTimestamp] [line 34] [def]
!137 = metadata !{i32 786484, i32 0, null, metadata !"CurrentRTPSequenceNumber", metadata !"CurrentRTPSequenceNumber", metadata !"", metadata !11, i32 36, metadata !14, i32 0, i32 1, i32* @CurrentRTPSequenceNumber, null} ; [ DW_TAG_variable ] [CurrentRTPSequenceNumber] [line 36] [def]
!138 = metadata !{i32 786484, i32 0, metadata !121, metadata !"oldtr", metadata !"oldtr", metadata !"", metadata !11, i32 248, metadata !14, i32 1, i32 1, i32* @RTPUpdateTimestamp.oldtr, null} ; [ DW_TAG_variable ] [oldtr] [line 248] [local] [def]
!139 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !140, i32 558, metadata !142, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!140 = metadata !{i32 786473, metadata !141}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!141 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!143 = metadata !{i32 786454, metadata !141, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!144 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !145, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !325, metadata !326, metadata !328, metadata !329}
!146 = metadata !{i32 786445, metadata !141, metadata !144, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!147 = metadata !{i32 786445, metadata !141, metadata !144, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!148 = metadata !{i32 786445, metadata !141, metadata !144, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !149} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!149 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !150, metadata !323, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!151 = metadata !{i32 786454, metadata !141, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !152} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!152 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !153, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!153 = metadata !{metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !234, metadata !271, metadata !298, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !320}
!154 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!155 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!156 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!157 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!158 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!159 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!160 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !161} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!161 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !162} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!162 = metadata !{i32 786454, metadata !141, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !163} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!163 = metadata !{i32 786451, metadata !141, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !164, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!164 = metadata !{metadata !165, metadata !181, metadata !206}
!165 = metadata !{i32 786445, metadata !141, metadata !163, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !166} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!166 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!167 = metadata !{i32 786454, metadata !141, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!168 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !169, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!169 = metadata !{metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!170 = metadata !{i32 786445, metadata !141, metadata !168, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!171 = metadata !{i32 786445, metadata !141, metadata !168, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!172 = metadata !{i32 786445, metadata !141, metadata !168, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!173 = metadata !{i32 786445, metadata !141, metadata !168, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!174 = metadata !{i32 786445, metadata !141, metadata !168, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!175 = metadata !{i32 786445, metadata !141, metadata !168, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !32} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!176 = metadata !{i32 786445, metadata !141, metadata !168, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !32} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!177 = metadata !{i32 786445, metadata !141, metadata !168, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!178 = metadata !{i32 786445, metadata !141, metadata !168, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!179 = metadata !{i32 786445, metadata !141, metadata !168, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!180 = metadata !{i32 786445, metadata !141, metadata !168, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!181 = metadata !{i32 786445, metadata !141, metadata !163, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !182} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!182 = metadata !{i32 786454, metadata !141, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!183 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !184, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!184 = metadata !{metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205}
!185 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!186 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!187 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!188 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!189 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!190 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!191 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !192} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!192 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!193 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!194 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !21} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!195 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !21} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!196 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !21} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!197 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !21} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!198 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!199 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !192} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!200 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !14} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!201 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !14} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!202 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!203 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!204 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!205 = metadata !{i32 786445, metadata !141, metadata !183, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!206 = metadata !{i32 786445, metadata !141, metadata !163, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !207} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!207 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !208} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!208 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{metadata !14, metadata !210, metadata !233}
!210 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !211} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!211 = metadata !{i32 786454, metadata !141, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !212} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!212 = metadata !{i32 786451, metadata !141, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !213, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!213 = metadata !{metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !226}
!214 = metadata !{i32 786445, metadata !141, metadata !212, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!215 = metadata !{i32 786445, metadata !141, metadata !212, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!216 = metadata !{i32 786445, metadata !141, metadata !212, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!217 = metadata !{i32 786445, metadata !141, metadata !212, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!218 = metadata !{i32 786445, metadata !141, metadata !212, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!219 = metadata !{i32 786445, metadata !141, metadata !212, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !21} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!220 = metadata !{i32 786445, metadata !141, metadata !212, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!221 = metadata !{i32 786445, metadata !141, metadata !212, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!222 = metadata !{i32 786445, metadata !141, metadata !212, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !223} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!223 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !224} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!224 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!225 = metadata !{null, metadata !14, metadata !14, metadata !192, metadata !192}
!226 = metadata !{i32 786445, metadata !141, metadata !212, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !227} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!227 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!228 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!229 = metadata !{null, metadata !230, metadata !231}
!230 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !212} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!231 = metadata !{i32 786454, metadata !141, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !232} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!232 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!233 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!234 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !235} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!236 = metadata !{i32 786454, metadata !141, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!237 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !238, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!238 = metadata !{metadata !239, metadata !250, metadata !255, metadata !259, metadata !263, metadata !267, metadata !268}
!239 = metadata !{i32 786445, metadata !141, metadata !237, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !240} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!240 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !241, metadata !247, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!241 = metadata !{i32 786454, metadata !141, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !242} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!242 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !243, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!243 = metadata !{metadata !244, metadata !245, metadata !246}
!244 = metadata !{i32 786445, metadata !141, metadata !242, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!245 = metadata !{i32 786445, metadata !141, metadata !242, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !33} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!246 = metadata !{i32 786445, metadata !141, metadata !242, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !93} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!247 = metadata !{metadata !248, metadata !249}
!248 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!249 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!250 = metadata !{i32 786445, metadata !141, metadata !237, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !251} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!251 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !241, metadata !252, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!252 = metadata !{metadata !253, metadata !254}
!253 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!254 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!255 = metadata !{i32 786445, metadata !141, metadata !237, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !256} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!256 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !241, metadata !257, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!257 = metadata !{metadata !253, metadata !258}
!258 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!259 = metadata !{i32 786445, metadata !141, metadata !237, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !260} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!260 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !241, metadata !261, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!261 = metadata !{metadata !253, metadata !262}
!262 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!263 = metadata !{i32 786445, metadata !141, metadata !237, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !264} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!264 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !241, metadata !265, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!265 = metadata !{metadata !266}
!266 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!267 = metadata !{i32 786445, metadata !141, metadata !237, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !264} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!268 = metadata !{i32 786445, metadata !141, metadata !237, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !269} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!269 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !241, metadata !270, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!270 = metadata !{metadata !248}
!271 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !272} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!272 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !273} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!273 = metadata !{i32 786454, metadata !141, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!274 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !275, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!275 = metadata !{metadata !276, metadata !279, metadata !280, metadata !283, metadata !286, metadata !290, metadata !291, metadata !295, metadata !296, metadata !297}
!276 = metadata !{i32 786445, metadata !141, metadata !274, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !277} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!277 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !241, metadata !278, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!278 = metadata !{metadata !253}
!279 = metadata !{i32 786445, metadata !141, metadata !274, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !264} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!280 = metadata !{i32 786445, metadata !141, metadata !274, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !281} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!281 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !241, metadata !282, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!282 = metadata !{metadata !248, metadata !266}
!283 = metadata !{i32 786445, metadata !141, metadata !274, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !284} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!284 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !241, metadata !285, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!285 = metadata !{metadata !258, metadata !266}
!286 = metadata !{i32 786445, metadata !141, metadata !274, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !287} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!287 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !241, metadata !288, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!288 = metadata !{metadata !258, metadata !289}
!289 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!290 = metadata !{i32 786445, metadata !141, metadata !274, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !287} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!291 = metadata !{i32 786445, metadata !141, metadata !274, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !292} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!292 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !241, metadata !293, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!293 = metadata !{metadata !258, metadata !294}
!294 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!295 = metadata !{i32 786445, metadata !141, metadata !274, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !292} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!296 = metadata !{i32 786445, metadata !141, metadata !274, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !287} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!297 = metadata !{i32 786445, metadata !141, metadata !274, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !287} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!298 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !299} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!299 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !300} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!300 = metadata !{i32 786454, metadata !141, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !301} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!301 = metadata !{i32 786451, metadata !141, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !302, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!302 = metadata !{metadata !303, metadata !304, metadata !305}
!303 = metadata !{i32 786445, metadata !141, metadata !301, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!304 = metadata !{i32 786445, metadata !141, metadata !301, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!305 = metadata !{i32 786445, metadata !141, metadata !301, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !306} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!306 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !301} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!307 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!308 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !192} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!309 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !192} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!310 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !192} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!311 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!312 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !192} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!313 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !192} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!314 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !192} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!315 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !316} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!316 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !317} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!317 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!318 = metadata !{metadata !319, metadata !14}
!319 = metadata !{i32 786454, metadata !141, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!320 = metadata !{i32 786445, metadata !141, metadata !152, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !321} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!321 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !14, metadata !322, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!322 = metadata !{metadata !248, metadata !253}
!323 = metadata !{metadata !324}
!324 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!325 = metadata !{i32 786445, metadata !141, metadata !144, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !14} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!326 = metadata !{i32 786445, metadata !141, metadata !144, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !327} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!327 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!328 = metadata !{i32 786445, metadata !141, metadata !144, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !327} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!329 = metadata !{i32 786445, metadata !141, metadata !144, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !327} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!330 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !140, i32 559, metadata !142, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!331 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !140, i32 560, metadata !142, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!332 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !140, i32 561, metadata !142, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!333 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !140, i32 562, metadata !142, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!334 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !140, i32 565, metadata !335, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!335 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !336} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!336 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!337 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !140, i32 566, metadata !338, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!338 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !335} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!339 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !140, i32 567, metadata !340, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!340 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !192} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!341 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !140, i32 569, metadata !21, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!342 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !140, i32 570, metadata !21, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!343 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !140, i32 572, metadata !14, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!344 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !140, i32 572, metadata !14, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!345 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !140, i32 573, metadata !346, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!346 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !347} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!347 = metadata !{i32 786454, metadata !141, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !348} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!348 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !349, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!349 = metadata !{metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !360, metadata !361, metadata !362, metadata !363, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383}
!350 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !319} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!351 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!352 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!353 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !319} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!354 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !319} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!355 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !319} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!356 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !357} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!357 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !14, metadata !358, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!358 = metadata !{metadata !359}
!359 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!360 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !319} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!361 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !21} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!362 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !21} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!363 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !364} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!364 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !21, metadata !358, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!365 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !364} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!366 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !364} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!367 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !319} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!368 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !21} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!369 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !21} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!370 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !31} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!371 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !14} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!372 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !14} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!373 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !319} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!374 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !21} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!375 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !14} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!376 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !14} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!377 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !14} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!378 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !14} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!379 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !14} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!380 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !319} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!381 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !319} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!382 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !319} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!383 = metadata !{i32 786445, metadata !4, metadata !348, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !319} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!384 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !140, i32 574, metadata !385, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!385 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !386} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!386 = metadata !{i32 786454, metadata !141, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !387} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!387 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !388, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!388 = metadata !{metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426}
!389 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !319} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!390 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!391 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !319} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!392 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !319} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!393 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !319} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!394 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !319} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!395 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!396 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!397 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!398 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !319} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!399 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !357} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!400 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !21} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!401 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !21} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!402 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !21} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!403 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !21} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!404 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !21} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!405 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !319} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!406 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!407 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!408 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !21} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!409 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !410} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!410 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !411, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!411 = metadata !{metadata !412}
!412 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!413 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !21} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!414 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !319} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!415 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !21} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!416 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !21} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!417 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !319} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!418 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !319} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!419 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !319} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!420 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !319} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!421 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !21} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!422 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !21} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!423 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !21} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!424 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !21} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!425 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !319} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!426 = metadata !{i32 786445, metadata !4, metadata !387, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !427} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!427 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !428} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!428 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !429, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!429 = metadata !{metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478}
!430 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !319} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!431 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!432 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!433 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!434 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !319} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!435 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !319} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!436 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !319} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!437 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!438 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !319} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!439 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !319} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!440 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!441 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !21} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!442 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !21} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!443 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !319} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!444 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !21} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!445 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !21} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!446 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !319} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!447 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !21} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!448 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !21} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!449 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !319} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!450 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !319} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!451 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !452} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!452 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !453} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!453 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !454, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!454 = metadata !{metadata !455, metadata !456, metadata !457, metadata !458, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467}
!455 = metadata !{i32 786445, metadata !4, metadata !453, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!456 = metadata !{i32 786445, metadata !4, metadata !453, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!457 = metadata !{i32 786445, metadata !4, metadata !453, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!458 = metadata !{i32 786445, metadata !4, metadata !453, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !459} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!459 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !21, metadata !460, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!460 = metadata !{metadata !461}
!461 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!462 = metadata !{i32 786445, metadata !4, metadata !453, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !459} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!463 = metadata !{i32 786445, metadata !4, metadata !453, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !459} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!464 = metadata !{i32 786445, metadata !4, metadata !453, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !21} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!465 = metadata !{i32 786445, metadata !4, metadata !453, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !21} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!466 = metadata !{i32 786445, metadata !4, metadata !453, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !21} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!467 = metadata !{i32 786445, metadata !4, metadata !453, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !21} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!468 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !319} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!469 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !452} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!470 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !319} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!471 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !319} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!472 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !319} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!473 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !21} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!474 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !21} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!475 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !21} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!476 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !21} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!477 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !21} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!478 = metadata !{i32 786445, metadata !4, metadata !428, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !21} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!479 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !140, i32 578, metadata !14, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!480 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !140, i32 579, metadata !14, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!481 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !140, i32 583, metadata !482, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!482 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !340} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!483 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !140, i32 584, metadata !482, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!484 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !140, i32 585, metadata !485, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!485 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !482} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!486 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !140, i32 586, metadata !14, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!487 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !140, i32 587, metadata !14, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!488 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !140, i32 588, metadata !14, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!489 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !140, i32 589, metadata !14, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!490 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !140, i32 592, metadata !335, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!491 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !140, i32 593, metadata !335, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!492 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !140, i32 595, metadata !338, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!493 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !140, i32 596, metadata !338, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!494 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !140, i32 598, metadata !335, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!495 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !140, i32 599, metadata !338, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!496 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !140, i32 601, metadata !335, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!497 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !140, i32 602, metadata !338, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!498 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !140, i32 604, metadata !499, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!499 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !500} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!500 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !501} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!501 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !502} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!502 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!503 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !140, i32 605, metadata !500, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!504 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !140, i32 608, metadata !505, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!505 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!506 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !140, i32 609, metadata !505, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!507 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !140, i32 610, metadata !14, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!508 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !140, i32 612, metadata !14, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!509 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !140, i32 612, metadata !14, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!510 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !140, i32 612, metadata !14, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!511 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !140, i32 613, metadata !14, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!512 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !140, i32 613, metadata !14, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!513 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !140, i32 613, metadata !14, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!514 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !140, i32 614, metadata !14, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!515 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !140, i32 617, metadata !516, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!516 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !50, metadata !517, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!517 = metadata !{metadata !518}
!518 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!519 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !140, i32 620, metadata !520, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!520 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !521, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!521 = metadata !{metadata !522, metadata !522}
!522 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!523 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !140, i32 620, metadata !520, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!524 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !140, i32 620, metadata !520, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!525 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !140, i32 621, metadata !520, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!526 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !140, i32 621, metadata !520, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!527 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !140, i32 621, metadata !520, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!528 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !140, i32 622, metadata !529, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!529 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !14, metadata !530, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!530 = metadata !{metadata !248, metadata !522, metadata !522}
!531 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !140, i32 623, metadata !532, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!532 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !14, metadata !533, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!533 = metadata !{metadata !253, metadata !266, metadata !266}
!534 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !140, i32 623, metadata !532, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!535 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !140, i32 624, metadata !532, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!536 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !140, i32 624, metadata !532, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!537 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !140, i32 625, metadata !538, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!538 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !14, metadata !539, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!539 = metadata !{metadata !266, metadata !266}
!540 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !140, i32 625, metadata !541, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!541 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !14, metadata !542, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!542 = metadata !{metadata !522}
!543 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !140, i32 1201, metadata !544, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!544 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !545} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!545 = metadata !{i32 786454, metadata !141, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !546} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!546 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !547, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!547 = metadata !{metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553}
!548 = metadata !{i32 786445, metadata !141, metadata !546, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!549 = metadata !{i32 786445, metadata !141, metadata !546, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!550 = metadata !{i32 786445, metadata !141, metadata !546, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!551 = metadata !{i32 786445, metadata !141, metadata !546, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!552 = metadata !{i32 786445, metadata !141, metadata !546, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!553 = metadata !{i32 786445, metadata !141, metadata !546, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!554 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !140, i32 1202, metadata !555, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!555 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !556} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!556 = metadata !{i32 786454, metadata !141, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !557} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!557 = metadata !{i32 786451, metadata !141, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !558, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!558 = metadata !{metadata !559, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !577, metadata !578, metadata !582, metadata !583, metadata !584, metadata !585, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593}
!559 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !560} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!560 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!561 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !520} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!562 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !520} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!563 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !520} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!564 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !485} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!565 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !482} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!566 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !14} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!567 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !14} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!568 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !569} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!569 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !14, metadata !265, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!570 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !569} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!571 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !340} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!572 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !541} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!573 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !14} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!574 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !575} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!575 = metadata !{i32 786454, metadata !141, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !576} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!576 = metadata !{i32 786454, metadata !141, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!577 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!578 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !579} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!579 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !580} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!580 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !581} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!581 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !499} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!582 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !579} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!583 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !579} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!584 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !579} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!585 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !586} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!586 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !502, metadata !533, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!587 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !14} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!588 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !14} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!589 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !14} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!590 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !14} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!591 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !14} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!592 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!593 = metadata !{i32 786445, metadata !141, metadata !557, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !14} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!594 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !140, i32 1203, metadata !556, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!595 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !140, i32 1203, metadata !556, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!596 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !140, i32 1204, metadata !556, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!597 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !140, i32 1204, metadata !556, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!598 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !140, i32 1230, metadata !42, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!599 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !140, i32 1231, metadata !42, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!600 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !140, i32 1232, metadata !42, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!601 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !140, i32 1233, metadata !14, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!602 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !140, i32 1234, metadata !14, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!603 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !140, i32 1237, metadata !604, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!604 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !14, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!605 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !140, i32 1238, metadata !604, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!606 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !140, i32 1239, metadata !604, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!607 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !140, i32 1240, metadata !604, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!608 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !140, i32 1241, metadata !604, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!609 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !140, i32 1242, metadata !604, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!610 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !140, i32 1456, metadata !14, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!611 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !140, i32 1465, metadata !14, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!612 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !140, i32 1466, metadata !14, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!613 = metadata !{i32 786484, i32 0, null, metadata !"WriteNALU", metadata !"WriteNALU", metadata !"", metadata !614, i32 28, metadata !616, i32 0, i32 1, i32 (%struct.NALU_t*)** @WriteNALU, null} ; [ DW_TAG_variable ] [WriteNALU] [line 28] [def]
!614 = metadata !{i32 786473, metadata !615}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h]
!615 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!616 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!617 = metadata !{i32 786484, i32 0, null, metadata !"f", metadata !"f", metadata !"", metadata !11, i32 39, metadata !42, i32 0, i32 1, %struct._IO_FILE** @f, null} ; [ DW_TAG_variable ] [f] [line 39] [def]
!618 = metadata !{i32 70, i32 0, metadata !10, null}
!619 = metadata !{i32 74, i32 0, metadata !10, null}
!620 = metadata !{metadata !"int", metadata !621}
!621 = metadata !{metadata !"omnipotent char", metadata !622}
!622 = metadata !{metadata !"Simple C/C++ TBAA"}
!623 = metadata !{i32 75, i32 0, metadata !10, null}
!624 = metadata !{i32 76, i32 0, metadata !10, null}
!625 = metadata !{i32 77, i32 0, metadata !10, null}
!626 = metadata !{i32 78, i32 0, metadata !10, null}
!627 = metadata !{i32 79, i32 0, metadata !10, null}
!628 = metadata !{i32 80, i32 0, metadata !10, null}
!629 = metadata !{i32 81, i32 0, metadata !10, null}
!630 = metadata !{metadata !"any pointer", metadata !621}
!631 = metadata !{i32 82, i32 0, metadata !10, null}
!632 = metadata !{i32 83, i32 0, metadata !10, null}
!633 = metadata !{i32 87, i32 0, metadata !10, null}
!634 = metadata !{i32 91, i32 0, metadata !10, null}
!635 = metadata !{i32 93, i32 0, metadata !10, null}
!636 = metadata !{i32 94, i32 0, metadata !10, null}
!637 = metadata !{i32 96, i32 0, metadata !10, null}
!638 = metadata !{i32 97, i32 0, metadata !10, null}
!639 = metadata !{i32 101, i32 0, metadata !10, null}
!640 = metadata !{i32 102, i32 0, metadata !10, null}
!641 = metadata !{i32 103, i32 0, metadata !10, null}
!642 = metadata !{i32 130, i32 0, metadata !39, null}
!643 = metadata !{i32 133, i32 0, metadata !39, null}
!644 = metadata !{i32 -1}
!645 = metadata !{i32 135, i32 0, metadata !39, null}
!646 = metadata !{i32 136, i32 0, metadata !39, null}
!647 = metadata !{i32 139, i32 0, metadata !39, null}
!648 = metadata !{i32 141, i32 0, metadata !39, null}
!649 = metadata !{i32 143, i32 0, metadata !39, null}
!650 = metadata !{i32 145, i32 0, metadata !39, null}
!651 = metadata !{i32 172, i32 0, metadata !103, null}
!652 = metadata !{i32 176, i32 0, metadata !103, null}
!653 = metadata !{i32 177, i32 0, metadata !103, null}
!654 = metadata !{i32 178, i32 0, metadata !103, null}
!655 = metadata !{i32 180, i32 0, metadata !103, null}
!656 = metadata !{i32 186, i32 0, metadata !103, null}
!657 = metadata !{i32 187, i32 0, metadata !103, null}
!658 = metadata !{i32 188, i32 0, metadata !103, null}
!659 = metadata !{i32 189, i32 0, metadata !103, null}
!660 = metadata !{i32 190, i32 0, metadata !103, null}
!661 = metadata !{i32 191, i32 0, metadata !103, null}
!662 = metadata !{i32 208, i32 0, metadata !103, null}
!663 = metadata !{i32 193, i32 0, metadata !103, null}
!664 = metadata !{i32 194, i32 0, metadata !103, null}
!665 = metadata !{i32 195, i32 0, metadata !103, null}
!666 = metadata !{i32 196, i32 0, metadata !103, null}
!667 = metadata !{i32 197, i32 0, metadata !103, null}
!668 = metadata !{i32 203, i32 0, metadata !103, null}
!669 = metadata !{i32 204, i32 0, metadata !103, null}
!670 = metadata !{i32 205, i32 0, metadata !103, null}
!671 = metadata !{i32 206, i32 0, metadata !103, null}
!672 = metadata !{i32 207, i32 0, metadata !103, null}
!673 = metadata !{i32 213, i32 0, metadata !103, null}
!674 = metadata !{i32 218, i32 0, metadata !103, null}
!675 = metadata !{i32 220, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !103, i32 219, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rtp.c]
!677 = metadata !{i32 221, i32 0, metadata !676, null}
!678 = metadata !{i32 223, i32 0, metadata !103, null}
!679 = metadata !{i32 224, i32 0, metadata !103, null}
!680 = metadata !{i32 225, i32 0, metadata !103, null}
!681 = metadata !{i32 226, i32 0, metadata !103, null}
!682 = metadata !{i32 245, i32 0, metadata !121, null}
!683 = metadata !{i32 250, i32 0, metadata !121, null}
!684 = metadata !{i32 268, i32 0, metadata !121, null}
!685 = metadata !{i32 270, i32 0, metadata !121, null}
!686 = metadata !{i32 271, i32 0, metadata !121, null}
!687 = metadata !{i32 273, i32 0, metadata !121, null}
!688 = metadata !{i32 274, i32 0, metadata !121, null}
!689 = metadata !{i32 254, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !121, i32 251, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rtp.c]
!691 = metadata !{i32 292, i32 0, metadata !127, null}
!692 = metadata !{i32 294, i32 0, metadata !127, null}
!693 = metadata !{i32 296, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !127, i32 295, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/rtp.c]
!695 = metadata !{i32 297, i32 0, metadata !694, null}
!696 = metadata !{i32 299, i32 0, metadata !127, null}
!697 = metadata !{i32 315, i32 0, metadata !132, null}
!698 = metadata !{i32 316, i32 0, metadata !132, null}
