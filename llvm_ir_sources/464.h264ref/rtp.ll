; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/rtp.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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
@__func__.ComposeRTPPacket = private unnamed_addr constant [17 x i8] c"ComposeRTPPacket\00", align 1
@.str = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/rtp.c\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"p->v == 2\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"p->p == 0\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"p->x == 0\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"p->cc == 0\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"p->m == 0 || p->m == 1\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"p->pt < 128\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"p->seq < 65536\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"p->payload != NULL\00", align 1
@.str9 = private unnamed_addr constant [23 x i8] c"p->paylen < 65536 - 40\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"p->packet != NULL\00", align 1
@__func__.WriteRTPPacket = private unnamed_addr constant [15 x i8] c"WriteRTPPacket\00", align 1
@.str11 = private unnamed_addr constant [10 x i8] c"f != NULL\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"p != NULL\00", align 1
@f = common global %struct.__sFILE* null, align 8
@__func__.WriteRTPNALU = private unnamed_addr constant [13 x i8] c"WriteRTPNALU\00", align 1
@.str13 = private unnamed_addr constant [10 x i8] c"n != NULL\00", align 1
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

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ComposeRTPPacket(%struct.RTPpacket_t* %p) #0 {
  tail call void @llvm.dbg.value(metadata %struct.RTPpacket_t* %p, i64 0, metadata !39, metadata !628), !dbg !629
  %1 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 0, !dbg !630
  %2 = load i32* %1, align 4, !dbg !630, !tbaa !631
  %3 = icmp eq i32 %2, 2, !dbg !630
  br i1 %3, label %5, label %4, !dbg !630, !prof !637

; <label>:4                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.ComposeRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 74, i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !630
  unreachable, !dbg !630

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 1, !dbg !638
  %7 = load i32* %6, align 4, !dbg !638, !tbaa !639
  %8 = icmp eq i32 %7, 0, !dbg !638
  br i1 %8, label %10, label %9, !dbg !638, !prof !637

; <label>:9                                       ; preds = %5
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.ComposeRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !638
  unreachable, !dbg !638

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 2, !dbg !640
  %12 = load i32* %11, align 4, !dbg !640, !tbaa !641
  %13 = icmp eq i32 %12, 0, !dbg !640
  br i1 %13, label %15, label %14, !dbg !640, !prof !637

; <label>:14                                      ; preds = %10
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.ComposeRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 76, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !640
  unreachable, !dbg !640

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 3, !dbg !642
  %17 = load i32* %16, align 4, !dbg !642, !tbaa !643
  %18 = icmp eq i32 %17, 0, !dbg !642
  br i1 %18, label %20, label %19, !dbg !642, !prof !637

; <label>:19                                      ; preds = %15
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.ComposeRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 77, i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !642
  unreachable, !dbg !642

; <label>:20                                      ; preds = %15
  %21 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 4, !dbg !644
  %22 = load i32* %21, align 4, !dbg !644, !tbaa !645
  %.cmp = icmp ugt i32 %22, 1, !dbg !644
  br i1 %.cmp, label %23, label %24, !dbg !644, !prof !646

; <label>:23                                      ; preds = %20
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.ComposeRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !644
  unreachable, !dbg !644

; <label>:24                                      ; preds = %20
  %25 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 5, !dbg !647
  %26 = load i32* %25, align 4, !dbg !647, !tbaa !648
  %27 = icmp ugt i32 %26, 127, !dbg !647
  br i1 %27, label %28, label %29, !dbg !647, !prof !646

; <label>:28                                      ; preds = %24
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.ComposeRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !647
  unreachable, !dbg !647

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 6, !dbg !649
  %31 = load i32* %30, align 4, !dbg !649, !tbaa !650
  %32 = icmp ugt i32 %31, 65535, !dbg !649
  br i1 %32, label %33, label %34, !dbg !649, !prof !646

; <label>:33                                      ; preds = %29
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.ComposeRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !649
  unreachable, !dbg !649

; <label>:34                                      ; preds = %29
  %35 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 9, !dbg !651
  %36 = load i8** %35, align 8, !dbg !651, !tbaa !652
  %37 = icmp eq i8* %36, null, !dbg !651
  br i1 %37, label %38, label %39, !dbg !651, !prof !646

; <label>:38                                      ; preds = %34
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.ComposeRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 81, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !651
  unreachable, !dbg !651

; <label>:39                                      ; preds = %34
  %40 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 10, !dbg !653
  %41 = load i32* %40, align 4, !dbg !653, !tbaa !654
  %42 = icmp ugt i32 %41, 65495, !dbg !653
  br i1 %42, label %43, label %44, !dbg !653, !prof !646

; <label>:43                                      ; preds = %39
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.ComposeRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 82, i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !653
  unreachable, !dbg !653

; <label>:44                                      ; preds = %39
  %45 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 11, !dbg !655
  %46 = load i8** %45, align 8, !dbg !655, !tbaa !656
  %47 = icmp eq i8* %46, null, !dbg !655
  br i1 %47, label %48, label %49, !dbg !655, !prof !646

; <label>:48                                      ; preds = %44
  tail call void @__assert_rtn(i8* getelementptr inbounds ([17 x i8]* @__func__.ComposeRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 83, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !655
  unreachable, !dbg !655

; <label>:49                                      ; preds = %44
  store i8 2, i8* %46, align 1, !dbg !657, !tbaa !658
  %50 = load i32* %21, align 4, !dbg !659, !tbaa !645
  %51 = load i32* %25, align 4, !dbg !660, !tbaa !648
  %52 = shl i32 %51, 1, !dbg !661
  %53 = or i32 %52, %50, !dbg !662
  %54 = trunc i32 %53 to i8, !dbg !663
  %55 = load i8** %45, align 8, !dbg !664, !tbaa !656
  %56 = getelementptr inbounds i8* %55, i64 1, !dbg !665
  store i8 %54, i8* %56, align 1, !dbg !666, !tbaa !658
  %57 = load i32* %30, align 4, !dbg !667, !tbaa !650
  %58 = trunc i32 %57 to i8, !dbg !668
  %59 = load i8** %45, align 8, !dbg !669, !tbaa !656
  %60 = getelementptr inbounds i8* %59, i64 2, !dbg !670
  store i8 %58, i8* %60, align 1, !dbg !671, !tbaa !658
  %61 = load i32* %30, align 4, !dbg !672, !tbaa !650
  %62 = lshr i32 %61, 8, !dbg !673
  %63 = trunc i32 %62 to i8, !dbg !674
  %64 = load i8** %45, align 8, !dbg !675, !tbaa !656
  %65 = getelementptr inbounds i8* %64, i64 3, !dbg !676
  store i8 %63, i8* %65, align 1, !dbg !677, !tbaa !658
  %66 = load i8** %45, align 8, !dbg !678, !tbaa !656
  %67 = getelementptr inbounds i8* %66, i64 4, !dbg !678
  %68 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 7, !dbg !678
  %69 = bitcast i32* %68 to i8*, !dbg !678
  %70 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %67, i1 false), !dbg !678
  %71 = tail call i8* @__memcpy_chk(i8* %67, i8* %69, i64 4, i64 %70) #6, !dbg !678
  %72 = load i8** %45, align 8, !dbg !679, !tbaa !656
  %73 = getelementptr inbounds i8* %72, i64 8, !dbg !679
  %74 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 8, !dbg !679
  %75 = bitcast i32* %74 to i8*, !dbg !679
  %76 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %73, i1 false), !dbg !679
  %77 = tail call i8* @__memcpy_chk(i8* %73, i8* %75, i64 4, i64 %76) #6, !dbg !679
  %78 = load i8** %45, align 8, !dbg !680, !tbaa !656
  %79 = getelementptr inbounds i8* %78, i64 12, !dbg !680
  %80 = load i8** %35, align 8, !dbg !680, !tbaa !652
  %81 = load i32* %40, align 4, !dbg !680, !tbaa !654
  %82 = zext i32 %81 to i64, !dbg !680
  %83 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %79, i1 false), !dbg !680
  %84 = tail call i8* @__memcpy_chk(i8* %79, i8* %80, i64 %82, i64 %83) #6, !dbg !680
  %85 = load i32* %40, align 4, !dbg !681, !tbaa !654
  %86 = add i32 %85, 12, !dbg !682
  %87 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 12, !dbg !683
  store i32 %86, i32* %87, align 4, !dbg !684, !tbaa !685
  ret i32 0, !dbg !686
}

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @WriteRTPPacket(%struct.RTPpacket_t* %p, %struct.__sFILE* %f) #0 {
  %intime = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.RTPpacket_t* %p, i64 0, metadata !105, metadata !628), !dbg !687
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %f, i64 0, metadata !106, metadata !628), !dbg !688
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !107, metadata !628), !dbg !689
  store i32 -1, i32* %intime, align 4, !dbg !689, !tbaa !690
  %1 = icmp eq %struct.__sFILE* %f, null, !dbg !691
  br i1 %1, label %2, label %3, !dbg !691, !prof !646

; <label>:2                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([15 x i8]* @__func__.WriteRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 135, i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !691
  unreachable, !dbg !691

; <label>:3                                       ; preds = %0
  %4 = icmp eq %struct.RTPpacket_t* %p, null, !dbg !692
  br i1 %4, label %5, label %6, !dbg !692, !prof !646

; <label>:5                                       ; preds = %3
  tail call void @__assert_rtn(i8* getelementptr inbounds ([15 x i8]* @__func__.WriteRTPPacket, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 136, i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !692
  unreachable, !dbg !692

; <label>:6                                       ; preds = %3
  %7 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 12, !dbg !693
  %8 = bitcast i32* %7 to i8*, !dbg !695
  %9 = tail call i64 @"\01_fwrite"(i8* %8, i64 4, i64 1, %struct.__sFILE* %f) #6, !dbg !696
  %10 = icmp eq i64 %9, 1, !dbg !697
  br i1 %10, label %11, label %21, !dbg !698

; <label>:11                                      ; preds = %6
  %12 = bitcast i32* %intime to i8*, !dbg !699
  %13 = call i64 @"\01_fwrite"(i8* %12, i64 4, i64 1, %struct.__sFILE* %f) #6, !dbg !701
  %14 = icmp eq i64 %13, 1, !dbg !702
  br i1 %14, label %15, label %21, !dbg !703

; <label>:15                                      ; preds = %11
  %16 = getelementptr inbounds %struct.RTPpacket_t* %p, i64 0, i32 11, !dbg !704
  %17 = load i8** %16, align 8, !dbg !704, !tbaa !656
  %18 = load i32* %7, align 4, !dbg !706, !tbaa !685
  %19 = zext i32 %18 to i64, !dbg !707
  %20 = call i64 @"\01_fwrite"(i8* %17, i64 %19, i64 1, %struct.__sFILE* %f) #6, !dbg !708
  %not. = icmp ne i64 %20, 1, !dbg !709
  %. = sext i1 %not. to i32, !dbg !709
  br label %21, !dbg !709

; <label>:21                                      ; preds = %15, %11, %6
  %.0 = phi i32 [ -1, %6 ], [ -1, %11 ], [ %., %15 ]
  ret i32 %.0, !dbg !710
}

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @WriteRTPNALU(%struct.NALU_t* readonly %n) #0 {
  tail call void @llvm.dbg.value(metadata %struct.NALU_t* %n, i64 0, metadata !124, metadata !628), !dbg !711
  %1 = load %struct.__sFILE** @f, align 8, !dbg !712, !tbaa !713
  %2 = icmp eq %struct.__sFILE* %1, null, !dbg !712
  br i1 %2, label %3, label %4, !dbg !712, !prof !646

; <label>:3                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([13 x i8]* @__func__.WriteRTPNALU, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 176, i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !712
  unreachable, !dbg !712

; <label>:4                                       ; preds = %0
  %5 = icmp eq %struct.NALU_t* %n, null, !dbg !714
  br i1 %5, label %6, label %7, !dbg !714, !prof !646

; <label>:6                                       ; preds = %4
  tail call void @__assert_rtn(i8* getelementptr inbounds ([13 x i8]* @__func__.WriteRTPNALU, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 177, i8* getelementptr inbounds ([10 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !714
  unreachable, !dbg !714

; <label>:7                                       ; preds = %4
  %8 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 1, !dbg !715
  %9 = load i32* %8, align 4, !dbg !715, !tbaa !716
  %10 = icmp ugt i32 %9, 64999, !dbg !715
  br i1 %10, label %11, label %12, !dbg !715, !prof !646

; <label>:11                                      ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([13 x i8]* @__func__.WriteRTPNALU, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 178, i8* getelementptr inbounds ([15 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !715
  unreachable, !dbg !715

; <label>:12                                      ; preds = %7
  %13 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 5, !dbg !718
  %14 = load i32* %13, align 4, !dbg !718, !tbaa !719
  %15 = shl i32 %14, 7, !dbg !720
  %16 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 4, !dbg !721
  %17 = load i32* %16, align 4, !dbg !721, !tbaa !722
  %18 = shl i32 %17, 5, !dbg !723
  %19 = or i32 %18, %15, !dbg !724
  %20 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 3, !dbg !725
  %21 = load i32* %20, align 4, !dbg !725, !tbaa !726
  %22 = or i32 %19, %21, !dbg !727
  %23 = trunc i32 %22 to i8, !dbg !728
  %24 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 6, !dbg !729
  %25 = load i8** %24, align 8, !dbg !729, !tbaa !730
  store i8 %23, i8* %25, align 1, !dbg !731, !tbaa !658
  %26 = tail call i8* @malloc(i64 72) #6, !dbg !732
  %27 = bitcast i8* %26 to %struct.RTPpacket_t*, !dbg !734
  tail call void @llvm.dbg.value(metadata %struct.RTPpacket_t* %27, i64 0, metadata !125, metadata !628), !dbg !735
  %28 = icmp eq i8* %26, null, !dbg !736
  br i1 %28, label %29, label %30, !dbg !737

; <label>:29                                      ; preds = %12
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !738
  br label %30, !dbg !738

; <label>:30                                      ; preds = %29, %12
  %31 = tail call i8* @malloc(i64 65508) #6, !dbg !739
  %32 = getelementptr inbounds i8* %26, i64 56, !dbg !741
  %33 = bitcast i8* %32 to i8**, !dbg !741
  store i8* %31, i8** %33, align 8, !dbg !742, !tbaa !656
  %34 = icmp eq i8* %31, null, !dbg !743
  br i1 %34, label %35, label %36, !dbg !744

; <label>:35                                      ; preds = %30
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str16, i64 0, i64 0)) #6, !dbg !745
  br label %36, !dbg !745

; <label>:36                                      ; preds = %35, %30
  %37 = tail call i8* @malloc(i64 65508) #6, !dbg !746
  %38 = getelementptr inbounds i8* %26, i64 40, !dbg !748
  %39 = bitcast i8* %38 to i8**, !dbg !748
  store i8* %37, i8** %39, align 8, !dbg !749, !tbaa !652
  %40 = icmp eq i8* %37, null, !dbg !750
  br i1 %40, label %41, label %42, !dbg !751

; <label>:41                                      ; preds = %36
  tail call void @no_mem_exit(i8* getelementptr inbounds ([15 x i8]* @.str17, i64 0, i64 0)) #6, !dbg !752
  %.pre = load i8** %39, align 8, !dbg !753, !tbaa !652
  br label %42, !dbg !752

; <label>:42                                      ; preds = %41, %36
  %43 = phi i8* [ %.pre, %41 ], [ %37, %36 ]
  %44 = bitcast i8* %26 to i32*, !dbg !754
  store i32 2, i32* %44, align 4, !dbg !755, !tbaa !631
  %45 = getelementptr inbounds i8* %26, i64 4, !dbg !756
  %46 = bitcast i8* %45 to i32*, !dbg !756
  store i32 0, i32* %46, align 4, !dbg !757, !tbaa !639
  %47 = getelementptr inbounds i8* %26, i64 8, !dbg !758
  %48 = bitcast i8* %47 to i32*, !dbg !758
  store i32 0, i32* %48, align 4, !dbg !759, !tbaa !641
  %49 = getelementptr inbounds i8* %26, i64 12, !dbg !760
  %50 = bitcast i8* %49 to i32*, !dbg !760
  store i32 0, i32* %50, align 4, !dbg !761, !tbaa !643
  %51 = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 0, !dbg !762
  %52 = load i32* %51, align 4, !dbg !762, !tbaa !763
  %53 = icmp eq i32 %52, 4, !dbg !764
  %54 = zext i1 %53 to i32, !dbg !764
  %55 = getelementptr inbounds i8* %26, i64 16, !dbg !765
  %56 = bitcast i8* %55 to i32*, !dbg !765
  store i32 %54, i32* %56, align 4, !dbg !766, !tbaa !645
  %57 = getelementptr inbounds i8* %26, i64 20, !dbg !767
  %58 = bitcast i8* %57 to i32*, !dbg !767
  store i32 105, i32* %58, align 4, !dbg !768, !tbaa !648
  %59 = load i32* @CurrentRTPSequenceNumber, align 4, !dbg !769, !tbaa !690
  %60 = add nsw i32 %59, 1, !dbg !769
  store i32 %60, i32* @CurrentRTPSequenceNumber, align 4, !dbg !769, !tbaa !690
  %61 = getelementptr inbounds i8* %26, i64 24, !dbg !770
  %62 = bitcast i8* %61 to i32*, !dbg !770
  store i32 %59, i32* %62, align 4, !dbg !771, !tbaa !650
  %63 = load i32* @CurrentRTPTimestamp, align 4, !dbg !772, !tbaa !690
  %64 = getelementptr inbounds i8* %26, i64 28, !dbg !773
  %65 = bitcast i8* %64 to i32*, !dbg !773
  store i32 %63, i32* %65, align 4, !dbg !774, !tbaa !775
  %66 = getelementptr inbounds i8* %26, i64 32, !dbg !776
  %67 = bitcast i8* %66 to i32*, !dbg !776
  store i32 305419896, i32* %67, align 4, !dbg !777, !tbaa !778
  %68 = load i32* %8, align 4, !dbg !779, !tbaa !716
  %69 = getelementptr inbounds i8* %26, i64 48, !dbg !780
  %70 = bitcast i8* %69 to i32*, !dbg !780
  store i32 %68, i32* %70, align 4, !dbg !781, !tbaa !654
  %71 = load i8** %24, align 8, !dbg !753, !tbaa !730
  %72 = zext i32 %68 to i64, !dbg !753
  %73 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %43, i1 false), !dbg !753
  %74 = tail call i8* @__memcpy_chk(i8* %43, i8* %71, i64 %72, i64 %73) #6, !dbg !753
  %75 = tail call i32 @ComposeRTPPacket(%struct.RTPpacket_t* %27) #7, !dbg !782
  %76 = load %struct.__sFILE** @f, align 8, !dbg !784, !tbaa !713
  %77 = tail call i32 @WriteRTPPacket(%struct.RTPpacket_t* %27, %struct.__sFILE* %76) #7, !dbg !786
  %78 = icmp slt i32 %77, 0, !dbg !787
  br i1 %78, label %79, label %84, !dbg !788

; <label>:79                                      ; preds = %42
  %80 = getelementptr inbounds i8* %26, i64 64, !dbg !789
  %81 = bitcast i8* %80 to i32*, !dbg !789
  %82 = load i32* %81, align 4, !dbg !789, !tbaa !685
  %83 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str19, i64 0, i64 0), i32 %82) #6, !dbg !791
  tail call void @exit(i32 -1) #5, !dbg !792
  unreachable, !dbg !792

; <label>:84                                      ; preds = %42
  %85 = load i8** %33, align 8, !dbg !793, !tbaa !656
  tail call void @free(i8* %85) #7, !dbg !794
  %86 = load i8** %39, align 8, !dbg !795, !tbaa !652
  tail call void @free(i8* %86) #7, !dbg !796
  tail call void @free(i8* %26) #7, !dbg !797
  %87 = load i32* %8, align 4, !dbg !798, !tbaa !716
  %88 = shl i32 %87, 3, !dbg !799
  ret i32 %88, !dbg !800
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #4

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: noreturn optsize
declare void @exit(i32) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @RTPUpdateTimestamp(i32 %tr) #0 {
  tail call void @llvm.dbg.value(metadata i32 %tr, i64 0, metadata !130, metadata !628), !dbg !801
  %1 = load i32* @RTPUpdateTimestamp.oldtr, align 4, !dbg !802, !tbaa !690
  %2 = icmp eq i32 %1, -1, !dbg !804
  br i1 %2, label %10, label %3, !dbg !805

; <label>:3                                       ; preds = %0
  %4 = sub nsw i32 %tr, %1, !dbg !806
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !131, metadata !628), !dbg !807
  %5 = icmp slt i32 %4, -10, !dbg !808
  %6 = add nsw i32 %4, 256, !dbg !810
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !131, metadata !628), !dbg !807
  %. = select i1 %5, i32 %6, i32 %4, !dbg !811
  %7 = mul nsw i32 %., 1000, !dbg !812
  %8 = load i32* @CurrentRTPTimestamp, align 4, !dbg !813, !tbaa !690
  %9 = add nsw i32 %8, %7, !dbg !813
  br label %10, !dbg !814

; <label>:10                                      ; preds = %0, %3
  %storemerge1 = phi i32 [ %9, %3 ], [ 0, %0 ]
  %storemerge = phi i32 [ %tr, %3 ], [ 0, %0 ]
  store i32 %storemerge1, i32* @CurrentRTPTimestamp, align 4, !dbg !813, !tbaa !690
  store i32 %storemerge, i32* @RTPUpdateTimestamp.oldtr, align 4, !dbg !815, !tbaa !690
  ret void, !dbg !814
}

; Function Attrs: nounwind optsize ssp uwtable
define void @OpenRTPFile(i8* %Filename) #0 {
  tail call void @llvm.dbg.value(metadata i8* %Filename, i64 0, metadata !136, metadata !628), !dbg !817
  %1 = tail call %struct.__sFILE* @"\01_fopen"(i8* %Filename, i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0)) #6, !dbg !818
  store %struct.__sFILE* %1, %struct.__sFILE** @f, align 8, !dbg !820, !tbaa !713
  %2 = icmp eq %struct.__sFILE* %1, null, !dbg !821
  br i1 %2, label %3, label %5, !dbg !822

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str21, i64 0, i64 0), i8* %Filename) #6, !dbg !823
  tail call void @exit(i32 -1) #5, !dbg !825
  unreachable, !dbg !825

; <label>:5                                       ; preds = %0
  ret void, !dbg !826
}

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @CloseRTPFile() #0 {
  %1 = load %struct.__sFILE** @f, align 8, !dbg !827, !tbaa !713
  %2 = tail call i32 @fclose(%struct.__sFILE* %1) #6, !dbg !828
  ret void, !dbg !829
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!624, !625, !626}
!llvm.ident = !{!627}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !33, globals: !141, imports: !140)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/rtp.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{!9, !10}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "RTPpacket_t", file: !12, line: 46, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/rtp.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 29, size: 576, align: 64, elements: !14)
!14 = !{!15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !30, !31, !32}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !13, file: !12, line: 31, baseType: !16, size: 32, align: 32)
!16 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !13, file: !12, line: 32, baseType: !16, size: 32, align: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !13, file: !12, line: 33, baseType: !16, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !13, file: !12, line: 34, baseType: !16, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !13, file: !12, line: 36, baseType: !16, size: 32, align: 32, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !13, file: !12, line: 37, baseType: !16, size: 32, align: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !13, file: !12, line: 38, baseType: !16, size: 32, align: 32, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !13, file: !12, line: 40, baseType: !16, size: 32, align: 32, offset: 224)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ssrc", scope: !13, file: !12, line: 41, baseType: !16, size: 32, align: 32, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !13, file: !12, line: 42, baseType: !26, size: 64, align: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !28, line: 30, baseType: !29)
!28 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!29 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "paylen", scope: !13, file: !12, line: 43, baseType: !16, size: 32, align: 32, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !13, file: !12, line: 44, baseType: !26, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "packlen", scope: !13, file: !12, line: 45, baseType: !16, size: 32, align: 32, offset: 512)
!33 = !{!34, !40, !108, !126, !132, !137}
!34 = !DISubprogram(name: "ComposeRTPPacket", scope: !1, file: !1, line: 70, type: !35, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.RTPpacket_t*)* @ComposeRTPPacket, variables: !38)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !10}
!37 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!38 = !{!39}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !34, file: !1, line: 70, type: !10)
!40 = !DISubprogram(name: "WriteRTPPacket", scope: !1, file: !1, line: 130, type: !41, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.RTPpacket_t*, %struct.__sFILE*)* @WriteRTPPacket, variables: !104)
!41 = !DISubroutineType(types: !42)
!42 = !{!37, !10, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !45, line: 153, baseType: !46)
!45 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !45, line: 122, size: 1216, align: 64, elements: !47)
!47 = !{!48, !50, !51, !52, !54, !55, !60, !61, !62, !66, !72, !82, !88, !89, !92, !93, !97, !101, !102, !103}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !46, file: !45, line: 123, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !46, file: !45, line: 124, baseType: !37, size: 32, align: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !46, file: !45, line: 125, baseType: !37, size: 32, align: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !45, line: 126, baseType: !53, size: 16, align: 16, offset: 128)
!53 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !46, file: !45, line: 127, baseType: !53, size: 16, align: 16, offset: 144)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !46, file: !45, line: 128, baseType: !56, size: 128, align: 64, offset: 192)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !45, line: 88, size: 128, align: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !56, file: !45, line: 89, baseType: !49, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !56, file: !45, line: 90, baseType: !37, size: 32, align: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !46, file: !45, line: 129, baseType: !37, size: 32, align: 32, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !46, file: !45, line: 132, baseType: !9, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !46, file: !45, line: 133, baseType: !63, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!37, !9}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !46, file: !45, line: 134, baseType: !67, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!37, !9, !70, !37}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !46, file: !45, line: 135, baseType: !73, size: 64, align: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !9, !76, !37}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !45, line: 77, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !78, line: 71, baseType: !79)
!78 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !80, line: 46, baseType: !81)
!80 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!81 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !46, file: !45, line: 136, baseType: !83, size: 64, align: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!37, !9, !86, !37}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !46, file: !45, line: 139, baseType: !56, size: 128, align: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !46, file: !45, line: 140, baseType: !90, size: 64, align: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !45, line: 94, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !46, file: !45, line: 141, baseType: !37, size: 32, align: 32, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !46, file: !45, line: 144, baseType: !94, size: 24, align: 8, offset: 928)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, align: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 3)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !46, file: !45, line: 145, baseType: !98, size: 8, align: 8, offset: 952)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !46, file: !45, line: 148, baseType: !56, size: 128, align: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !46, file: !45, line: 151, baseType: !37, size: 32, align: 32, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !45, line: 152, baseType: !76, size: 64, align: 64, offset: 1152)
!104 = !{!105, !106, !107}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !40, file: !1, line: 130, type: !10)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 2, scope: !40, file: !1, line: 130, type: !43)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intime", scope: !40, file: !1, line: 133, type: !37)
!108 = !DISubprogram(name: "WriteRTPNALU", scope: !1, file: !1, line: 172, type: !109, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.NALU_t*)* @WriteRTPNALU, variables: !123)
!109 = !DISubroutineType(types: !110)
!110 = !{!37, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "NALU_t", file: !113, line: 49, baseType: !114)
!113 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nalucommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!114 = !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 40, size: 256, align: 64, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "startcodeprefix_len", scope: !114, file: !113, line: 42, baseType: !37, size: 32, align: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !114, file: !113, line: 43, baseType: !16, size: 32, align: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !114, file: !113, line: 44, baseType: !16, size: 32, align: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "nal_unit_type", scope: !114, file: !113, line: 45, baseType: !37, size: 32, align: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "nal_reference_idc", scope: !114, file: !113, line: 46, baseType: !37, size: 32, align: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "forbidden_bit", scope: !114, file: !113, line: 47, baseType: !37, size: 32, align: 32, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !114, file: !113, line: 48, baseType: !26, size: 64, align: 64, offset: 192)
!123 = !{!124, !125}
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !108, file: !1, line: 172, type: !111)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !108, file: !1, line: 174, type: !10)
!126 = !DISubprogram(name: "RTPUpdateTimestamp", scope: !1, file: !1, line: 245, type: !127, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @RTPUpdateTimestamp, variables: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !37}
!129 = !{!130, !131}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tr", arg: 1, scope: !126, file: !1, line: 245, type: !37)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delta", scope: !126, file: !1, line: 247, type: !37)
!132 = !DISubprogram(name: "OpenRTPFile", scope: !1, file: !1, line: 292, type: !133, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @OpenRTPFile, variables: !135)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !70}
!135 = !{!136}
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Filename", arg: 1, scope: !132, file: !1, line: 292, type: !70)
!137 = !DISubprogram(name: "CloseRTPFile", scope: !1, file: !1, line: 313, type: !138, isLocal: false, isDefinition: true, scopeLine: 314, isOptimized: true, function: void ()* @CloseRTPFile, variables: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{null}
!140 = !{}
!141 = !{!142, !143, !144, !145, !335, !336, !337, !338, !339, !342, !344, !346, !347, !348, !349, !350, !389, !484, !485, !486, !488, !489, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !507, !508, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !523, !527, !528, !529, !530, !531, !532, !535, !538, !539, !540, !541, !544, !547, !558, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !612, !613, !614, !615, !616, !617, !618, !619, !620, !623}
!142 = !DIGlobalVariable(name: "CurrentRTPTimestamp", scope: !0, file: !1, line: 34, type: !37, isLocal: false, isDefinition: true, variable: i32* @CurrentRTPTimestamp)
!143 = !DIGlobalVariable(name: "CurrentRTPSequenceNumber", scope: !0, file: !1, line: 36, type: !37, isLocal: false, isDefinition: true, variable: i32* @CurrentRTPSequenceNumber)
!144 = !DIGlobalVariable(name: "oldtr", scope: !126, file: !1, line: 248, type: !37, isLocal: true, isDefinition: true, variable: i32* @RTPUpdateTimestamp.oldtr)
!145 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !146, line: 558, type: !147, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!146 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !146, line: 484, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 475, size: 6592, align: 64, elements: !150)
!150 = !{!151, !152, !153, !330, !331, !333, !334}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !149, file: !146, line: 477, baseType: !37, size: 32, align: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !149, file: !146, line: 478, baseType: !37, size: 32, align: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !149, file: !146, line: 479, baseType: !154, size: 6400, align: 64, offset: 64)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 6400, align: 64, elements: !328)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !146, line: 471, baseType: !157)
!157 = !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 443, size: 1216, align: 64, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !239, !276, !303, !312, !313, !314, !315, !316, !317, !318, !319, !320, !325}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !157, file: !146, line: 445, baseType: !37, size: 32, align: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !157, file: !146, line: 446, baseType: !37, size: 32, align: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !157, file: !146, line: 447, baseType: !37, size: 32, align: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !157, file: !146, line: 448, baseType: !37, size: 32, align: 32, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !157, file: !146, line: 449, baseType: !37, size: 32, align: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !157, file: !146, line: 450, baseType: !37, size: 32, align: 32, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !157, file: !146, line: 451, baseType: !166, size: 64, align: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !146, line: 440, baseType: !168)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !146, line: 430, size: 960, align: 64, elements: !169)
!169 = !{!170, !186, !211}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !168, file: !146, line: 433, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !146, line: 427, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 411, size: 384, align: 64, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !173, file: !146, line: 413, baseType: !37, size: 32, align: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !173, file: !146, line: 414, baseType: !37, size: 32, align: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !173, file: !146, line: 415, baseType: !27, size: 8, align: 8, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !173, file: !146, line: 416, baseType: !37, size: 32, align: 32, offset: 96)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !173, file: !146, line: 417, baseType: !37, size: 32, align: 32, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !173, file: !146, line: 418, baseType: !27, size: 8, align: 8, offset: 160)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !173, file: !146, line: 420, baseType: !27, size: 8, align: 8, offset: 168)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !173, file: !146, line: 421, baseType: !37, size: 32, align: 32, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !173, file: !146, line: 422, baseType: !37, size: 32, align: 32, offset: 224)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !173, file: !146, line: 424, baseType: !26, size: 64, align: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !173, file: !146, line: 425, baseType: !37, size: 32, align: 32, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !168, file: !146, line: 434, baseType: !187, size: 832, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !146, line: 226, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 207, size: 832, align: 64, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !188, file: !146, line: 209, baseType: !16, size: 32, align: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !188, file: !146, line: 209, baseType: !16, size: 32, align: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !188, file: !146, line: 210, baseType: !16, size: 32, align: 32, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !188, file: !146, line: 211, baseType: !16, size: 32, align: 32, offset: 96)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !188, file: !146, line: 212, baseType: !16, size: 32, align: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !188, file: !146, line: 213, baseType: !26, size: 64, align: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !188, file: !146, line: 214, baseType: !197, size: 64, align: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !188, file: !146, line: 217, baseType: !16, size: 32, align: 32, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !188, file: !146, line: 217, baseType: !16, size: 32, align: 32, offset: 352)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !188, file: !146, line: 218, baseType: !16, size: 32, align: 32, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !188, file: !146, line: 219, baseType: !16, size: 32, align: 32, offset: 416)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !188, file: !146, line: 220, baseType: !16, size: 32, align: 32, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !188, file: !146, line: 221, baseType: !26, size: 64, align: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !188, file: !146, line: 222, baseType: !197, size: 64, align: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !188, file: !146, line: 223, baseType: !37, size: 32, align: 32, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !188, file: !146, line: 223, baseType: !37, size: 32, align: 32, offset: 672)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !188, file: !146, line: 224, baseType: !37, size: 32, align: 32, offset: 704)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !188, file: !146, line: 224, baseType: !37, size: 32, align: 32, offset: 736)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !188, file: !146, line: 225, baseType: !37, size: 32, align: 32, offset: 768)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !188, file: !146, line: 225, baseType: !37, size: 32, align: 32, offset: 800)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !168, file: !146, line: 436, baseType: !212, size: 64, align: 64, offset: 896)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!37, !215, !238}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !146, line: 348, baseType: !217)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !146, line: 327, size: 384, align: 64, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !231}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !217, file: !146, line: 329, baseType: !37, size: 32, align: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !217, file: !146, line: 330, baseType: !37, size: 32, align: 32, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !217, file: !146, line: 331, baseType: !37, size: 32, align: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !217, file: !146, line: 332, baseType: !37, size: 32, align: 32, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !217, file: !146, line: 333, baseType: !37, size: 32, align: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !217, file: !146, line: 334, baseType: !16, size: 32, align: 32, offset: 160)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !217, file: !146, line: 335, baseType: !37, size: 32, align: 32, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !217, file: !146, line: 336, baseType: !37, size: 32, align: 32, offset: 224)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !217, file: !146, line: 344, baseType: !228, size: 64, align: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !37, !37, !197, !197}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !217, file: !146, line: 346, baseType: !232, size: 64, align: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !235, !236}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !146, line: 228, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !157, file: !146, line: 452, baseType: !240, size: 64, align: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !146, line: 268, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 258, size: 12032, align: 64, elements: !243)
!243 = !{!244, !256, !261, !265, !269, !273, !274}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !242, file: !146, line: 260, baseType: !245, size: 4224, align: 64)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 4224, align: 64, elements: !254)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !146, line: 238, baseType: !247)
!247 = !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 231, size: 128, align: 64, elements: !248)
!248 = !{!249, !251, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !247, file: !146, line: 233, baseType: !250, size: 16, align: 16)
!250 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !247, file: !146, line: 234, baseType: !29, size: 8, align: 8, offset: 16)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !247, file: !146, line: 236, baseType: !253, size: 64, align: 64, offset: 64)
!253 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!254 = !{!96, !255}
!255 = !DISubrange(count: 11)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !242, file: !146, line: 261, baseType: !257, size: 2304, align: 64, offset: 4224)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 2304, align: 64, elements: !258)
!258 = !{!259, !260}
!259 = !DISubrange(count: 2)
!260 = !DISubrange(count: 9)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !242, file: !146, line: 262, baseType: !262, size: 2560, align: 64, offset: 6528)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 2560, align: 64, elements: !263)
!263 = !{!259, !264}
!264 = !DISubrange(count: 10)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !242, file: !146, line: 263, baseType: !266, size: 1536, align: 64, offset: 9088)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 1536, align: 64, elements: !267)
!267 = !{!259, !268}
!268 = !DISubrange(count: 6)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !242, file: !146, line: 264, baseType: !270, size: 512, align: 64, offset: 10624)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 512, align: 64, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 4)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !242, file: !146, line: 265, baseType: !270, size: 512, align: 64, offset: 11136)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !242, file: !146, line: 266, baseType: !275, size: 384, align: 64, offset: 11648)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 384, align: 64, elements: !95)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !157, file: !146, line: 453, baseType: !277, size: 64, align: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !146, line: 293, baseType: !279)
!279 = !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 281, size: 97024, align: 64, elements: !280)
!280 = !{!281, !284, !285, !288, !291, !295, !296, !300, !301, !302}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !279, file: !146, line: 283, baseType: !282, size: 256, align: 64)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, align: 64, elements: !283)
!283 = !{!259}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !279, file: !146, line: 284, baseType: !270, size: 512, align: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !279, file: !146, line: 285, baseType: !286, size: 1536, align: 64, offset: 768)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 1536, align: 64, elements: !287)
!287 = !{!96, !272}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !279, file: !146, line: 286, baseType: !289, size: 5120, align: 64, offset: 2304)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 5120, align: 64, elements: !290)
!290 = !{!264, !272}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !279, file: !146, line: 287, baseType: !292, size: 19200, align: 64, offset: 7424)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 19200, align: 64, elements: !293)
!293 = !{!264, !294}
!294 = !DISubrange(count: 15)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !279, file: !146, line: 288, baseType: !292, size: 19200, align: 64, offset: 26624)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !279, file: !146, line: 289, baseType: !297, size: 6400, align: 64, offset: 45824)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 6400, align: 64, elements: !298)
!298 = !{!264, !299}
!299 = !DISubrange(count: 5)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !279, file: !146, line: 290, baseType: !297, size: 6400, align: 64, offset: 52224)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !279, file: !146, line: 291, baseType: !292, size: 19200, align: 64, offset: 58624)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !279, file: !146, line: 292, baseType: !292, size: 19200, align: 64, offset: 77824)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !157, file: !146, line: 456, baseType: !304, size: 64, align: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !146, line: 313, baseType: !306)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !146, line: 308, size: 128, align: 64, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !306, file: !146, line: 310, baseType: !37, size: 32, align: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !306, file: !146, line: 311, baseType: !37, size: 32, align: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !306, file: !146, line: 312, baseType: !311, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !157, file: !146, line: 458, baseType: !37, size: 32, align: 32, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !157, file: !146, line: 459, baseType: !197, size: 64, align: 64, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !157, file: !146, line: 460, baseType: !197, size: 64, align: 64, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !157, file: !146, line: 461, baseType: !197, size: 64, align: 64, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !157, file: !146, line: 462, baseType: !37, size: 32, align: 32, offset: 704)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !157, file: !146, line: 463, baseType: !197, size: 64, align: 64, offset: 768)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !157, file: !146, line: 464, baseType: !197, size: 64, align: 64, offset: 832)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !157, file: !146, line: 465, baseType: !197, size: 64, align: 64, offset: 896)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !157, file: !146, line: 467, baseType: !321, size: 64, align: 64, offset: 960)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!324, !37}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !4, line: 45, baseType: !3)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !157, file: !146, line: 469, baseType: !326, size: 192, align: 32, offset: 1024)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 192, align: 32, elements: !327)
!327 = !{!96, !259}
!328 = !{!329}
!329 = !DISubrange(count: 100)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !149, file: !146, line: 480, baseType: !37, size: 32, align: 32, offset: 6464)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !149, file: !146, line: 481, baseType: !332, size: 32, align: 32, offset: 6496)
!332 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !149, file: !146, line: 482, baseType: !332, size: 32, align: 32, offset: 6528)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !149, file: !146, line: 483, baseType: !332, size: 32, align: 32, offset: 6560)
!335 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !146, line: 559, type: !147, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!336 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !146, line: 560, type: !147, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!337 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !146, line: 561, type: !147, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!338 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !146, line: 562, type: !147, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!339 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !146, line: 565, type: !340, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!342 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !146, line: 566, type: !343, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!344 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !146, line: 567, type: !345, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!346 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !146, line: 569, type: !16, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!347 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !146, line: 570, type: !16, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!348 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !146, line: 572, type: !37, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!349 = !DIGlobalVariable(name: "me_time", scope: !0, file: !146, line: 572, type: !37, isLocal: false, isDefinition: true, variable: i32* @me_time)
!350 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !146, line: 573, type: !351, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !4, line: 145, baseType: !353)
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 103, size: 1920, align: 64, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !365, !366, !367, !368, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !353, file: !4, line: 105, baseType: !324, size: 32, align: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !353, file: !4, line: 106, baseType: !16, size: 32, align: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !353, file: !4, line: 107, baseType: !16, size: 32, align: 32, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !353, file: !4, line: 108, baseType: !324, size: 32, align: 32, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !353, file: !4, line: 110, baseType: !324, size: 32, align: 32, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !353, file: !4, line: 111, baseType: !324, size: 32, align: 32, offset: 160)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !353, file: !4, line: 112, baseType: !362, size: 256, align: 32, offset: 192)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, align: 32, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 8)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !353, file: !4, line: 115, baseType: !324, size: 32, align: 32, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !353, file: !4, line: 116, baseType: !16, size: 32, align: 32, offset: 480)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !353, file: !4, line: 117, baseType: !16, size: 32, align: 32, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !353, file: !4, line: 119, baseType: !369, size: 256, align: 32, offset: 544)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, align: 32, elements: !363)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !353, file: !4, line: 121, baseType: !369, size: 256, align: 32, offset: 800)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !353, file: !4, line: 122, baseType: !369, size: 256, align: 32, offset: 1056)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !353, file: !4, line: 124, baseType: !324, size: 32, align: 32, offset: 1312)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !353, file: !4, line: 125, baseType: !16, size: 32, align: 32, offset: 1344)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !353, file: !4, line: 127, baseType: !16, size: 32, align: 32, offset: 1376)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !353, file: !4, line: 128, baseType: !26, size: 64, align: 64, offset: 1408)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !353, file: !4, line: 130, baseType: !37, size: 32, align: 32, offset: 1472)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !353, file: !4, line: 131, baseType: !37, size: 32, align: 32, offset: 1504)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !353, file: !4, line: 132, baseType: !324, size: 32, align: 32, offset: 1536)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !353, file: !4, line: 133, baseType: !16, size: 32, align: 32, offset: 1568)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !353, file: !4, line: 134, baseType: !37, size: 32, align: 32, offset: 1600)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !353, file: !4, line: 135, baseType: !37, size: 32, align: 32, offset: 1632)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !353, file: !4, line: 136, baseType: !37, size: 32, align: 32, offset: 1664)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !353, file: !4, line: 138, baseType: !37, size: 32, align: 32, offset: 1696)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !353, file: !4, line: 139, baseType: !37, size: 32, align: 32, offset: 1728)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !353, file: !4, line: 141, baseType: !324, size: 32, align: 32, offset: 1760)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !353, file: !4, line: 142, baseType: !324, size: 32, align: 32, offset: 1792)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !353, file: !4, line: 143, baseType: !324, size: 32, align: 32, offset: 1824)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !353, file: !4, line: 144, baseType: !324, size: 32, align: 32, offset: 1856)
!389 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !146, line: 574, type: !390, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !4, line: 193, baseType: !392)
!392 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 149, size: 17056, align: 32, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !392, file: !4, line: 151, baseType: !324, size: 32, align: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !392, file: !4, line: 153, baseType: !16, size: 32, align: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !392, file: !4, line: 154, baseType: !324, size: 32, align: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !392, file: !4, line: 155, baseType: !324, size: 32, align: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !392, file: !4, line: 156, baseType: !324, size: 32, align: 32, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !392, file: !4, line: 157, baseType: !324, size: 32, align: 32, offset: 160)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !392, file: !4, line: 158, baseType: !16, size: 32, align: 32, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !392, file: !4, line: 159, baseType: !16, size: 32, align: 32, offset: 224)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !392, file: !4, line: 160, baseType: !16, size: 32, align: 32, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !392, file: !4, line: 162, baseType: !324, size: 32, align: 32, offset: 288)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !392, file: !4, line: 163, baseType: !362, size: 256, align: 32, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !392, file: !4, line: 165, baseType: !16, size: 32, align: 32, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !392, file: !4, line: 166, baseType: !16, size: 32, align: 32, offset: 608)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !392, file: !4, line: 167, baseType: !16, size: 32, align: 32, offset: 640)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !392, file: !4, line: 168, baseType: !16, size: 32, align: 32, offset: 672)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !392, file: !4, line: 170, baseType: !16, size: 32, align: 32, offset: 704)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !392, file: !4, line: 172, baseType: !324, size: 32, align: 32, offset: 736)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !392, file: !4, line: 173, baseType: !37, size: 32, align: 32, offset: 768)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !392, file: !4, line: 174, baseType: !37, size: 32, align: 32, offset: 800)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !392, file: !4, line: 175, baseType: !16, size: 32, align: 32, offset: 832)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !392, file: !4, line: 177, baseType: !415, size: 8192, align: 32, offset: 864)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8192, align: 32, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !392, file: !4, line: 178, baseType: !16, size: 32, align: 32, offset: 9056)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !392, file: !4, line: 179, baseType: !324, size: 32, align: 32, offset: 9088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !392, file: !4, line: 180, baseType: !16, size: 32, align: 32, offset: 9120)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !392, file: !4, line: 181, baseType: !16, size: 32, align: 32, offset: 9152)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !392, file: !4, line: 182, baseType: !324, size: 32, align: 32, offset: 9184)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !392, file: !4, line: 184, baseType: !324, size: 32, align: 32, offset: 9216)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !392, file: !4, line: 185, baseType: !324, size: 32, align: 32, offset: 9248)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !392, file: !4, line: 186, baseType: !324, size: 32, align: 32, offset: 9280)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !392, file: !4, line: 187, baseType: !16, size: 32, align: 32, offset: 9312)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !392, file: !4, line: 188, baseType: !16, size: 32, align: 32, offset: 9344)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !392, file: !4, line: 189, baseType: !16, size: 32, align: 32, offset: 9376)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !392, file: !4, line: 190, baseType: !16, size: 32, align: 32, offset: 9408)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !392, file: !4, line: 191, baseType: !324, size: 32, align: 32, offset: 9440)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !392, file: !4, line: 192, baseType: !432, size: 7584, align: 32, offset: 9472)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !4, line: 99, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 63, size: 7584, align: 32, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !433, file: !4, line: 65, baseType: !324, size: 32, align: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !433, file: !4, line: 66, baseType: !16, size: 32, align: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !433, file: !4, line: 67, baseType: !16, size: 32, align: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !433, file: !4, line: 68, baseType: !16, size: 32, align: 32, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !433, file: !4, line: 69, baseType: !324, size: 32, align: 32, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !433, file: !4, line: 70, baseType: !324, size: 32, align: 32, offset: 160)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !433, file: !4, line: 71, baseType: !324, size: 32, align: 32, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !433, file: !4, line: 72, baseType: !16, size: 32, align: 32, offset: 224)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !433, file: !4, line: 73, baseType: !324, size: 32, align: 32, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !433, file: !4, line: 74, baseType: !324, size: 32, align: 32, offset: 288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !433, file: !4, line: 75, baseType: !16, size: 32, align: 32, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !433, file: !4, line: 76, baseType: !16, size: 32, align: 32, offset: 352)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !433, file: !4, line: 77, baseType: !16, size: 32, align: 32, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !433, file: !4, line: 78, baseType: !324, size: 32, align: 32, offset: 416)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !433, file: !4, line: 79, baseType: !16, size: 32, align: 32, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !433, file: !4, line: 80, baseType: !16, size: 32, align: 32, offset: 480)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !433, file: !4, line: 81, baseType: !324, size: 32, align: 32, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !433, file: !4, line: 82, baseType: !16, size: 32, align: 32, offset: 544)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !433, file: !4, line: 83, baseType: !16, size: 32, align: 32, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !433, file: !4, line: 84, baseType: !324, size: 32, align: 32, offset: 608)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !433, file: !4, line: 85, baseType: !324, size: 32, align: 32, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !433, file: !4, line: 86, baseType: !457, size: 3296, align: 32, offset: 672)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !4, line: 60, baseType: !458)
!458 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 3296, align: 32, elements: !459)
!459 = !{!460, !461, !462, !463, !467, !468, !469, !470, !471, !472}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !458, file: !4, line: 50, baseType: !16, size: 32, align: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !458, file: !4, line: 51, baseType: !16, size: 32, align: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !458, file: !4, line: 52, baseType: !16, size: 32, align: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !458, file: !4, line: 53, baseType: !464, size: 1024, align: 32, offset: 96)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1024, align: 32, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !458, file: !4, line: 54, baseType: !464, size: 1024, align: 32, offset: 1120)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !458, file: !4, line: 55, baseType: !464, size: 1024, align: 32, offset: 2144)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !458, file: !4, line: 56, baseType: !16, size: 32, align: 32, offset: 3168)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !458, file: !4, line: 57, baseType: !16, size: 32, align: 32, offset: 3200)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !458, file: !4, line: 58, baseType: !16, size: 32, align: 32, offset: 3232)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !458, file: !4, line: 59, baseType: !16, size: 32, align: 32, offset: 3264)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !433, file: !4, line: 87, baseType: !324, size: 32, align: 32, offset: 3968)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !433, file: !4, line: 88, baseType: !457, size: 3296, align: 32, offset: 4000)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !433, file: !4, line: 90, baseType: !324, size: 32, align: 32, offset: 7296)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !433, file: !4, line: 91, baseType: !324, size: 32, align: 32, offset: 7328)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !433, file: !4, line: 92, baseType: !324, size: 32, align: 32, offset: 7360)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !433, file: !4, line: 93, baseType: !16, size: 32, align: 32, offset: 7392)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !433, file: !4, line: 94, baseType: !16, size: 32, align: 32, offset: 7424)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !433, file: !4, line: 95, baseType: !16, size: 32, align: 32, offset: 7456)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !433, file: !4, line: 96, baseType: !16, size: 32, align: 32, offset: 7488)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !433, file: !4, line: 97, baseType: !16, size: 32, align: 32, offset: 7520)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !433, file: !4, line: 98, baseType: !16, size: 32, align: 32, offset: 7552)
!484 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !146, line: 578, type: !37, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!485 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !146, line: 579, type: !37, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!486 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !146, line: 583, type: !487, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!488 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !146, line: 584, type: !487, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!489 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !146, line: 585, type: !490, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!491 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !146, line: 586, type: !37, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!492 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !146, line: 587, type: !37, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!493 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !146, line: 588, type: !37, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!494 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !146, line: 589, type: !37, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!495 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !146, line: 592, type: !340, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!496 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !146, line: 593, type: !340, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!497 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !146, line: 595, type: !343, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!498 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !146, line: 596, type: !343, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!499 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !146, line: 598, type: !340, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!500 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !146, line: 599, type: !343, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!501 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !146, line: 601, type: !340, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!502 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !146, line: 602, type: !343, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!503 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !146, line: 604, type: !504, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!507 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !146, line: 605, type: !505, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!508 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !146, line: 608, type: !509, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!510 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !146, line: 609, type: !509, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!511 = !DIGlobalVariable(name: "intras", scope: !0, file: !146, line: 610, type: !37, isLocal: false, isDefinition: true, variable: i32* @intras)
!512 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !146, line: 612, type: !37, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!513 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !146, line: 612, type: !37, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!514 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !146, line: 612, type: !37, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!515 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !146, line: 613, type: !37, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!516 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !146, line: 613, type: !37, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!517 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !146, line: 613, type: !37, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!518 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !146, line: 614, type: !37, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!519 = !DIGlobalVariable(name: "errortext", scope: !0, file: !146, line: 617, type: !520, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 2400, align: 8, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 300)
!523 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !146, line: 620, type: !524, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8192, align: 32, elements: !525)
!525 = !{!526, !526}
!526 = !DISubrange(count: 16)
!527 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !146, line: 620, type: !524, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!528 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !146, line: 620, type: !524, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!529 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !146, line: 621, type: !524, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!530 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !146, line: 621, type: !524, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!531 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !146, line: 621, type: !524, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!532 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !146, line: 622, type: !533, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24576, align: 32, elements: !534)
!534 = !{!96, !526, !526}
!535 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !146, line: 623, type: !536, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 1024, align: 32, elements: !537)
!537 = !{!259, !272, !272}
!538 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !146, line: 623, type: !536, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!539 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !146, line: 624, type: !536, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!540 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !146, line: 624, type: !536, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!541 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !146, line: 625, type: !542, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, align: 32, elements: !543)
!543 = !{!272, !272}
!544 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !146, line: 625, type: !545, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, align: 32, elements: !546)
!546 = !{!526}
!547 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !146, line: 1201, type: !548, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !146, line: 1190, baseType: !550)
!550 = !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 1182, size: 192, align: 32, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !550, file: !146, line: 1184, baseType: !37, size: 32, align: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !550, file: !146, line: 1185, baseType: !37, size: 32, align: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !550, file: !146, line: 1186, baseType: !37, size: 32, align: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !550, file: !146, line: 1187, baseType: !37, size: 32, align: 32, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !550, file: !146, line: 1188, baseType: !37, size: 32, align: 32, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !550, file: !146, line: 1189, baseType: !37, size: 32, align: 32, offset: 160)
!558 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !146, line: 1202, type: !559, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !146, line: 1177, baseType: !561)
!561 = !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 1145, size: 26880, align: 64, elements: !562)
!562 = !{!563, !565, !566, !567, !568, !569, !570, !571, !572, !574, !575, !576, !577, !578, !582, !583, !587, !588, !589, !590, !592, !593, !594, !595, !596, !597, !598}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !561, file: !146, line: 1147, baseType: !564, size: 64, align: 64)
!564 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !561, file: !146, line: 1149, baseType: !524, size: 8192, align: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !561, file: !146, line: 1150, baseType: !524, size: 8192, align: 32, offset: 8256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !561, file: !146, line: 1150, baseType: !524, size: 8192, align: 32, offset: 16448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !561, file: !146, line: 1151, baseType: !490, size: 64, align: 64, offset: 24640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !561, file: !146, line: 1152, baseType: !487, size: 64, align: 64, offset: 24704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !561, file: !146, line: 1153, baseType: !37, size: 32, align: 32, offset: 24768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !561, file: !146, line: 1155, baseType: !37, size: 32, align: 32, offset: 24800)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !561, file: !146, line: 1157, baseType: !573, size: 128, align: 32, offset: 24832)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, align: 32, elements: !271)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !561, file: !146, line: 1157, baseType: !573, size: 128, align: 32, offset: 24960)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !561, file: !146, line: 1158, baseType: !345, size: 64, align: 64, offset: 25088)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !561, file: !146, line: 1159, baseType: !545, size: 512, align: 32, offset: 25152)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !561, file: !146, line: 1160, baseType: !37, size: 32, align: 32, offset: 25664)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !561, file: !146, line: 1161, baseType: !579, size: 64, align: 64, offset: 25728)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !146, line: 62, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !581, line: 30, baseType: !81)
!581 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !561, file: !146, line: 1162, baseType: !37, size: 32, align: 32, offset: 25792)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !561, file: !146, line: 1163, baseType: !584, size: 64, align: 64, offset: 25856)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !561, file: !146, line: 1164, baseType: !584, size: 64, align: 64, offset: 25920)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !561, file: !146, line: 1165, baseType: !584, size: 64, align: 64, offset: 25984)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !561, file: !146, line: 1166, baseType: !584, size: 64, align: 64, offset: 26048)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !561, file: !146, line: 1167, baseType: !591, size: 512, align: 16, offset: 26112)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 512, align: 16, elements: !537)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !561, file: !146, line: 1168, baseType: !37, size: 32, align: 32, offset: 26624)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !561, file: !146, line: 1169, baseType: !37, size: 32, align: 32, offset: 26656)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !561, file: !146, line: 1171, baseType: !37, size: 32, align: 32, offset: 26688)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !561, file: !146, line: 1172, baseType: !37, size: 32, align: 32, offset: 26720)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !561, file: !146, line: 1174, baseType: !37, size: 32, align: 32, offset: 26752)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !561, file: !146, line: 1175, baseType: !37, size: 32, align: 32, offset: 26784)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !561, file: !146, line: 1176, baseType: !37, size: 32, align: 32, offset: 26816)
!599 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !146, line: 1203, type: !560, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!600 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !146, line: 1203, type: !560, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!601 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !146, line: 1204, type: !560, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!602 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !146, line: 1204, type: !560, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!603 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !146, line: 1230, type: !43, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!604 = !DIGlobalVariable(name: "p_log", scope: !0, file: !146, line: 1231, type: !43, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!605 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !146, line: 1232, type: !43, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!606 = !DIGlobalVariable(name: "p_in", scope: !0, file: !146, line: 1233, type: !37, isLocal: false, isDefinition: true, variable: i32* @p_in)
!607 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !146, line: 1234, type: !37, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!608 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !146, line: 1237, type: !609, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, align: 32, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 20)
!612 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !146, line: 1238, type: !609, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!613 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !146, line: 1239, type: !609, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!614 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !146, line: 1240, type: !609, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!615 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !146, line: 1241, type: !609, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!616 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !146, line: 1242, type: !609, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!617 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !146, line: 1456, type: !37, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!618 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !146, line: 1465, type: !37, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!619 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !146, line: 1466, type: !37, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!620 = !DIGlobalVariable(name: "WriteNALU", scope: !0, file: !621, line: 28, type: !622, isLocal: false, isDefinition: true, variable: i32 (%struct.NALU_t*)** @WriteNALU)
!621 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nalu.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!623 = !DIGlobalVariable(name: "f", scope: !0, file: !1, line: 39, type: !43, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @f)
!624 = !{i32 2, !"Dwarf Version", i32 2}
!625 = !{i32 2, !"Debug Info Version", i32 700000003}
!626 = !{i32 1, !"PIC Level", i32 2}
!627 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!628 = !DIExpression()
!629 = !DILocation(line: 70, column: 36, scope: !34)
!630 = !DILocation(line: 74, column: 3, scope: !34)
!631 = !{!632, !633, i64 0}
!632 = !{!"", !633, i64 0, !633, i64 4, !633, i64 8, !633, i64 12, !633, i64 16, !633, i64 20, !633, i64 24, !633, i64 28, !633, i64 32, !636, i64 40, !633, i64 48, !636, i64 56, !633, i64 64}
!633 = !{!"int", !634, i64 0}
!634 = !{!"omnipotent char", !635, i64 0}
!635 = !{!"Simple C/C++ TBAA"}
!636 = !{!"any pointer", !634, i64 0}
!637 = !{!"branch_weights", i32 64, i32 4}
!638 = !DILocation(line: 75, column: 3, scope: !34)
!639 = !{!632, !633, i64 4}
!640 = !DILocation(line: 76, column: 3, scope: !34)
!641 = !{!632, !633, i64 8}
!642 = !DILocation(line: 77, column: 3, scope: !34)
!643 = !{!632, !633, i64 12}
!644 = !DILocation(line: 78, column: 3, scope: !34)
!645 = !{!632, !633, i64 16}
!646 = !{!"branch_weights", i32 4, i32 64}
!647 = !DILocation(line: 79, column: 3, scope: !34)
!648 = !{!632, !633, i64 20}
!649 = !DILocation(line: 80, column: 3, scope: !34)
!650 = !{!632, !633, i64 24}
!651 = !DILocation(line: 81, column: 3, scope: !34)
!652 = !{!632, !636, i64 40}
!653 = !DILocation(line: 82, column: 3, scope: !34)
!654 = !{!632, !633, i64 48}
!655 = !DILocation(line: 83, column: 3, scope: !34)
!656 = !{!632, !636, i64 56}
!657 = !DILocation(line: 87, column: 16, scope: !34)
!658 = !{!634, !634, i64 0}
!659 = !DILocation(line: 91, column: 26, scope: !34)
!660 = !DILocation(line: 92, column: 26, scope: !34)
!661 = !DILocation(line: 92, column: 29, scope: !34)
!662 = !DILocation(line: 92, column: 19, scope: !34)
!663 = !DILocation(line: 91, column: 18, scope: !34)
!664 = !DILocation(line: 91, column: 6, scope: !34)
!665 = !DILocation(line: 91, column: 3, scope: !34)
!666 = !DILocation(line: 91, column: 16, scope: !34)
!667 = !DILocation(line: 93, column: 21, scope: !34)
!668 = !DILocation(line: 93, column: 18, scope: !34)
!669 = !DILocation(line: 93, column: 6, scope: !34)
!670 = !DILocation(line: 93, column: 3, scope: !34)
!671 = !DILocation(line: 93, column: 16, scope: !34)
!672 = !DILocation(line: 94, column: 22, scope: !34)
!673 = !DILocation(line: 94, column: 26, scope: !34)
!674 = !DILocation(line: 94, column: 18, scope: !34)
!675 = !DILocation(line: 94, column: 6, scope: !34)
!676 = !DILocation(line: 94, column: 3, scope: !34)
!677 = !DILocation(line: 94, column: 16, scope: !34)
!678 = !DILocation(line: 96, column: 3, scope: !34)
!679 = !DILocation(line: 97, column: 3, scope: !34)
!680 = !DILocation(line: 101, column: 3, scope: !34)
!681 = !DILocation(line: 102, column: 19, scope: !34)
!682 = !DILocation(line: 102, column: 25, scope: !34)
!683 = !DILocation(line: 102, column: 6, scope: !34)
!684 = !DILocation(line: 102, column: 14, scope: !34)
!685 = !{!632, !633, i64 64}
!686 = !DILocation(line: 103, column: 3, scope: !34)
!687 = !DILocation(line: 130, column: 34, scope: !40)
!688 = !DILocation(line: 130, column: 43, scope: !40)
!689 = !DILocation(line: 133, column: 7, scope: !40)
!690 = !{!633, !633, i64 0}
!691 = !DILocation(line: 135, column: 3, scope: !40)
!692 = !DILocation(line: 136, column: 3, scope: !40)
!693 = !DILocation(line: 139, column: 24, scope: !694)
!694 = distinct !DILexicalBlock(scope: !40, file: !1, line: 139, column: 7)
!695 = !DILocation(line: 139, column: 20, scope: !694)
!696 = !DILocation(line: 139, column: 12, scope: !694)
!697 = !DILocation(line: 139, column: 9, scope: !694)
!698 = !DILocation(line: 139, column: 7, scope: !40)
!699 = !DILocation(line: 141, column: 20, scope: !700)
!700 = distinct !DILexicalBlock(scope: !40, file: !1, line: 141, column: 7)
!701 = !DILocation(line: 141, column: 12, scope: !700)
!702 = !DILocation(line: 141, column: 9, scope: !700)
!703 = !DILocation(line: 141, column: 7, scope: !40)
!704 = !DILocation(line: 143, column: 23, scope: !705)
!705 = distinct !DILexicalBlock(scope: !40, file: !1, line: 143, column: 7)
!706 = !DILocation(line: 143, column: 34, scope: !705)
!707 = !DILocation(line: 143, column: 31, scope: !705)
!708 = !DILocation(line: 143, column: 12, scope: !705)
!709 = !DILocation(line: 145, column: 3, scope: !40)
!710 = !DILocation(line: 146, column: 1, scope: !40)
!711 = !DILocation(line: 172, column: 27, scope: !108)
!712 = !DILocation(line: 176, column: 3, scope: !108)
!713 = !{!636, !636, i64 0}
!714 = !DILocation(line: 177, column: 3, scope: !108)
!715 = !DILocation(line: 178, column: 3, scope: !108)
!716 = !{!717, !633, i64 4}
!717 = !{!"", !633, i64 0, !633, i64 4, !633, i64 8, !633, i64 12, !633, i64 16, !633, i64 20, !636, i64 24}
!718 = !DILocation(line: 181, column: 8, scope: !108)
!719 = !{!717, !633, i64 20}
!720 = !DILocation(line: 181, column: 22, scope: !108)
!721 = !DILocation(line: 182, column: 8, scope: !108)
!722 = !{!717, !633, i64 16}
!723 = !DILocation(line: 182, column: 26, scope: !108)
!724 = !DILocation(line: 181, column: 32, scope: !108)
!725 = !DILocation(line: 183, column: 8, scope: !108)
!726 = !{!717, !633, i64 12}
!727 = !DILocation(line: 182, column: 32, scope: !108)
!728 = !DILocation(line: 181, column: 5, scope: !108)
!729 = !DILocation(line: 180, column: 6, scope: !108)
!730 = !{!717, !636, i64 24}
!731 = !DILocation(line: 180, column: 13, scope: !108)
!732 = !DILocation(line: 186, column: 28, scope: !733)
!733 = distinct !DILexicalBlock(scope: !108, file: !1, line: 186, column: 7)
!734 = !DILocation(line: 186, column: 12, scope: !733)
!735 = !DILocation(line: 174, column: 16, scope: !108)
!736 = !DILocation(line: 186, column: 59, scope: !733)
!737 = !DILocation(line: 186, column: 7, scope: !108)
!738 = !DILocation(line: 187, column: 5, scope: !733)
!739 = !DILocation(line: 188, column: 20, scope: !740)
!740 = distinct !DILexicalBlock(scope: !108, file: !1, line: 188, column: 7)
!741 = !DILocation(line: 188, column: 11, scope: !740)
!742 = !DILocation(line: 188, column: 18, scope: !740)
!743 = !DILocation(line: 188, column: 47, scope: !740)
!744 = !DILocation(line: 188, column: 7, scope: !108)
!745 = !DILocation(line: 189, column: 5, scope: !740)
!746 = !DILocation(line: 190, column: 21, scope: !747)
!747 = distinct !DILexicalBlock(scope: !108, file: !1, line: 190, column: 7)
!748 = !DILocation(line: 190, column: 11, scope: !747)
!749 = !DILocation(line: 190, column: 19, scope: !747)
!750 = !DILocation(line: 190, column: 48, scope: !747)
!751 = !DILocation(line: 190, column: 7, scope: !108)
!752 = !DILocation(line: 191, column: 5, scope: !747)
!753 = !DILocation(line: 208, column: 3, scope: !108)
!754 = !DILocation(line: 193, column: 6, scope: !108)
!755 = !DILocation(line: 193, column: 7, scope: !108)
!756 = !DILocation(line: 194, column: 6, scope: !108)
!757 = !DILocation(line: 194, column: 7, scope: !108)
!758 = !DILocation(line: 195, column: 6, scope: !108)
!759 = !DILocation(line: 195, column: 7, scope: !108)
!760 = !DILocation(line: 196, column: 6, scope: !108)
!761 = !DILocation(line: 196, column: 8, scope: !108)
!762 = !DILocation(line: 197, column: 12, scope: !108)
!763 = !{!717, !633, i64 0}
!764 = !DILocation(line: 197, column: 31, scope: !108)
!765 = !DILocation(line: 197, column: 6, scope: !108)
!766 = !DILocation(line: 197, column: 7, scope: !108)
!767 = !DILocation(line: 203, column: 6, scope: !108)
!768 = !DILocation(line: 203, column: 8, scope: !108)
!769 = !DILocation(line: 204, column: 34, scope: !108)
!770 = !DILocation(line: 204, column: 6, scope: !108)
!771 = !DILocation(line: 204, column: 9, scope: !108)
!772 = !DILocation(line: 205, column: 16, scope: !108)
!773 = !DILocation(line: 205, column: 6, scope: !108)
!774 = !DILocation(line: 205, column: 15, scope: !108)
!775 = !{!632, !633, i64 28}
!776 = !DILocation(line: 206, column: 6, scope: !108)
!777 = !DILocation(line: 206, column: 10, scope: !108)
!778 = !{!632, !633, i64 32}
!779 = !DILocation(line: 207, column: 18, scope: !108)
!780 = !DILocation(line: 207, column: 6, scope: !108)
!781 = !DILocation(line: 207, column: 13, scope: !108)
!782 = !DILocation(line: 213, column: 7, scope: !783)
!783 = distinct !DILexicalBlock(scope: !108, file: !1, line: 213, column: 7)
!784 = !DILocation(line: 218, column: 26, scope: !785)
!785 = distinct !DILexicalBlock(scope: !108, file: !1, line: 218, column: 7)
!786 = !DILocation(line: 218, column: 7, scope: !785)
!787 = !DILocation(line: 218, column: 29, scope: !785)
!788 = !DILocation(line: 218, column: 7, scope: !108)
!789 = !DILocation(line: 220, column: 74, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !1, line: 219, column: 3)
!791 = !DILocation(line: 220, column: 5, scope: !790)
!792 = !DILocation(line: 221, column: 5, scope: !790)
!793 = !DILocation(line: 223, column: 12, scope: !108)
!794 = !DILocation(line: 223, column: 3, scope: !108)
!795 = !DILocation(line: 224, column: 12, scope: !108)
!796 = !DILocation(line: 224, column: 3, scope: !108)
!797 = !DILocation(line: 225, column: 3, scope: !108)
!798 = !DILocation(line: 226, column: 14, scope: !108)
!799 = !DILocation(line: 226, column: 18, scope: !108)
!800 = !DILocation(line: 226, column: 3, scope: !108)
!801 = !DILocation(line: 245, column: 30, scope: !126)
!802 = !DILocation(line: 250, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !126, file: !1, line: 250, column: 7)
!804 = !DILocation(line: 250, column: 13, scope: !803)
!805 = !DILocation(line: 250, column: 7, scope: !126)
!806 = !DILocation(line: 268, column: 14, scope: !126)
!807 = !DILocation(line: 247, column: 7, scope: !126)
!808 = !DILocation(line: 270, column: 13, scope: !809)
!809 = distinct !DILexicalBlock(scope: !126, file: !1, line: 270, column: 7)
!810 = !DILocation(line: 271, column: 10, scope: !809)
!811 = !DILocation(line: 270, column: 7, scope: !126)
!812 = !DILocation(line: 273, column: 32, scope: !126)
!813 = !DILocation(line: 273, column: 23, scope: !126)
!814 = !DILocation(line: 275, column: 1, scope: !126)
!815 = !DILocation(line: 254, column: 11, scope: !816)
!816 = distinct !DILexicalBlock(scope: !803, file: !1, line: 251, column: 3)
!817 = !DILocation(line: 292, column: 25, scope: !132)
!818 = !DILocation(line: 294, column: 12, scope: !819)
!819 = distinct !DILexicalBlock(scope: !132, file: !1, line: 294, column: 7)
!820 = !DILocation(line: 294, column: 10, scope: !819)
!821 = !DILocation(line: 294, column: 36, scope: !819)
!822 = !DILocation(line: 294, column: 7, scope: !132)
!823 = !DILocation(line: 296, column: 5, scope: !824)
!824 = distinct !DILexicalBlock(scope: !819, file: !1, line: 295, column: 3)
!825 = !DILocation(line: 297, column: 5, scope: !824)
!826 = !DILocation(line: 299, column: 1, scope: !132)
!827 = !DILocation(line: 315, column: 10, scope: !137)
!828 = !DILocation(line: 315, column: 3, scope: !137)
!829 = !DILocation(line: 316, column: 1, scope: !137)
