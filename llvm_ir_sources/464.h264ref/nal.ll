; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nal.c'
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
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@NAL_Payload_buffer = internal unnamed_addr global i8* null, align 8
@img = external global %struct.ImageParameters*
@stats = external global %struct.StatParameters*
@input = external global %struct.InputParameters*
@__func__.AllocNalPayloadBuffer = private unnamed_addr constant [22 x i8] c"AllocNalPayloadBuffer\00", align 1
@.str = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nal.c\00", align 1
@.str1 = private unnamed_addr constant [27 x i8] c"NAL_Payload_buffer != NULL\00", align 1
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

; Function Attrs: nounwind optsize ssp uwtable
define void @SODBtoRBSP(%struct.Bitstream* nocapture %currStream) #0 {
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %currStream, i64 0, metadata !36, metadata !583), !dbg !584
  %1 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 2, !dbg !585
  %2 = load i8* %1, align 1, !dbg !586, !tbaa !587
  %3 = shl i8 %2, 1, !dbg !586
  %4 = or i8 %3, 1, !dbg !593
  %5 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 1, !dbg !594
  %6 = load i32* %5, align 4, !dbg !595, !tbaa !596
  %7 = add nsw i32 %6, -1, !dbg !595
  %8 = zext i8 %4 to i32, !dbg !597
  %9 = shl i32 %8, %7, !dbg !597
  %10 = trunc i32 %9 to i8, !dbg !597
  %11 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 0, !dbg !598
  %12 = load i32* %11, align 4, !dbg !599, !tbaa !600
  %13 = add nsw i32 %12, 1, !dbg !599
  store i32 %13, i32* %11, align 4, !dbg !599, !tbaa !600
  %14 = sext i32 %12 to i64, !dbg !601
  %15 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 9, !dbg !602
  %16 = load i8** %15, align 8, !dbg !602, !tbaa !603
  %17 = getelementptr inbounds i8* %16, i64 %14, !dbg !601
  store i8 %10, i8* %17, align 1, !dbg !604, !tbaa !605
  store i32 8, i32* %5, align 4, !dbg !606, !tbaa !596
  store i8 0, i8* %1, align 1, !dbg !607, !tbaa !587
  ret void, !dbg !608
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @RBSPtoEBSP(i8* nocapture %streamBuffer, i32 %begin_bytepos, i32 %end_bytepos, i32 %min_num_bytes) #0 {
  tail call void @llvm.dbg.value(metadata i8* %streamBuffer, i64 0, metadata !41, metadata !583), !dbg !609
  tail call void @llvm.dbg.value(metadata i32 %begin_bytepos, i64 0, metadata !42, metadata !583), !dbg !610
  tail call void @llvm.dbg.value(metadata i32 %end_bytepos, i64 0, metadata !43, metadata !583), !dbg !611
  tail call void @llvm.dbg.value(metadata i32 %min_num_bytes, i64 0, metadata !44, metadata !583), !dbg !612
  tail call void @llvm.dbg.value(metadata i32 %begin_bytepos, i64 0, metadata !45, metadata !583), !dbg !613
  %1 = icmp slt i32 %begin_bytepos, %end_bytepos, !dbg !614
  br i1 %1, label %.lr.ph10, label %.preheader, !dbg !617

.lr.ph10:                                         ; preds = %0
  %2 = sext i32 %begin_bytepos to i64
  %3 = add i32 %end_bytepos, -1, !dbg !617
  br label %6, !dbg !617

.preheader1:                                      ; preds = %6
  br i1 %1, label %.lr.ph6, label %.preheader, !dbg !618

.lr.ph6:                                          ; preds = %.preheader1
  %4 = sext i32 %begin_bytepos to i64
  %5 = add i32 %end_bytepos, -1, !dbg !618
  br label %20, !dbg !618

; <label>:6                                       ; preds = %6, %.lr.ph10
  %indvars.iv14 = phi i64 [ %2, %.lr.ph10 ], [ %indvars.iv.next15, %6 ]
  %7 = getelementptr inbounds i8* %streamBuffer, i64 %indvars.iv14, !dbg !620
  %8 = load i8* %7, align 1, !dbg !620, !tbaa !605
  %9 = load i8** @NAL_Payload_buffer, align 8, !dbg !621, !tbaa !622
  %10 = getelementptr inbounds i8* %9, i64 %indvars.iv14, !dbg !621
  store i8 %8, i8* %10, align 1, !dbg !623, !tbaa !605
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1, !dbg !617
  %lftr.wideiv16 = trunc i64 %indvars.iv14 to i32, !dbg !617
  %exitcond17 = icmp eq i32 %lftr.wideiv16, %3, !dbg !617
  br i1 %exitcond17, label %.preheader1, label %6, !dbg !617

.preheader:                                       ; preds = %31, %0, %.preheader1
  %j.0.lcssa = phi i32 [ %begin_bytepos, %.preheader1 ], [ %begin_bytepos, %0 ], [ %42, %31 ]
  %11 = add i32 %min_num_bytes, %begin_bytepos, !dbg !624
  %12 = icmp slt i32 %j.0.lcssa, %11, !dbg !625
  br i1 %12, label %.lr.ph, label %59, !dbg !626

.lr.ph:                                           ; preds = %.preheader
  %13 = sext i32 %j.0.lcssa to i64
  %14 = sext i32 %11 to i64, !dbg !626
  %15 = add i32 %11, -1, !dbg !626
  %16 = sub i32 %15, %j.0.lcssa, !dbg !626
  %17 = urem i32 %16, 3, !dbg !626
  %18 = sub i32 %16, %17, !dbg !626
  %19 = add i32 %18, %j.0.lcssa, !dbg !626
  br label %43, !dbg !626

; <label>:20                                      ; preds = %31, %.lr.ph6
  %indvars.iv12 = phi i64 [ %4, %.lr.ph6 ], [ %indvars.iv.next13, %31 ]
  %count.05 = phi i32 [ 0, %.lr.ph6 ], [ %count.2, %31 ]
  %j.04 = phi i32 [ %begin_bytepos, %.lr.ph6 ], [ %42, %31 ]
  %21 = icmp eq i32 %count.05, 2, !dbg !627
  br i1 %21, label %22, label %31, !dbg !631

; <label>:22                                      ; preds = %20
  %23 = load i8** @NAL_Payload_buffer, align 8, !dbg !632, !tbaa !622
  %24 = getelementptr inbounds i8* %23, i64 %indvars.iv12, !dbg !632
  %25 = load i8* %24, align 1, !dbg !632, !tbaa !605
  %26 = icmp ugt i8 %25, 3, !dbg !633
  br i1 %26, label %31, label %27, !dbg !634

; <label>:27                                      ; preds = %22
  %28 = sext i32 %j.04 to i64, !dbg !635
  %29 = getelementptr inbounds i8* %streamBuffer, i64 %28, !dbg !635
  store i8 3, i8* %29, align 1, !dbg !637, !tbaa !605
  %30 = add nsw i32 %j.04, 1, !dbg !638
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !46, metadata !583), !dbg !639
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !47, metadata !583), !dbg !640
  br label %31, !dbg !641

; <label>:31                                      ; preds = %27, %22, %20
  %j.1 = phi i32 [ %j.04, %22 ], [ %30, %27 ], [ %j.04, %20 ]
  %count.1 = phi i32 [ 2, %22 ], [ 0, %27 ], [ %count.05, %20 ]
  %32 = load i8** @NAL_Payload_buffer, align 8, !dbg !642, !tbaa !622
  %33 = getelementptr inbounds i8* %32, i64 %indvars.iv12, !dbg !642
  %34 = load i8* %33, align 1, !dbg !642, !tbaa !605
  %35 = sext i32 %j.1 to i64, !dbg !643
  %36 = getelementptr inbounds i8* %streamBuffer, i64 %35, !dbg !643
  store i8 %34, i8* %36, align 1, !dbg !644, !tbaa !605
  %37 = load i8** @NAL_Payload_buffer, align 8, !dbg !645, !tbaa !622
  %38 = getelementptr inbounds i8* %37, i64 %indvars.iv12, !dbg !645
  %39 = load i8* %38, align 1, !dbg !645, !tbaa !605
  %40 = icmp eq i8 %39, 0, !dbg !647
  %41 = add nsw i32 %count.1, 1, !dbg !648
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !47, metadata !583), !dbg !640
  %count.2 = select i1 %40, i32 %41, i32 0, !dbg !649
  %42 = add nsw i32 %j.1, 1, !dbg !650
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !46, metadata !583), !dbg !639
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1, !dbg !618
  %lftr.wideiv = trunc i64 %indvars.iv12 to i32, !dbg !618
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !618
  br i1 %exitcond, label %.preheader, label %20, !dbg !618

; <label>:43                                      ; preds = %.lr.ph, %43
  %indvars.iv = phi i64 [ %13, %.lr.ph ], [ %indvars.iv.next, %43 ]
  %44 = getelementptr inbounds i8* %streamBuffer, i64 %indvars.iv, !dbg !651
  store i8 0, i8* %44, align 1, !dbg !653, !tbaa !605
  %45 = add nsw i64 %indvars.iv, 1, !dbg !654
  %46 = getelementptr inbounds i8* %streamBuffer, i64 %45, !dbg !655
  store i8 0, i8* %46, align 1, !dbg !656, !tbaa !605
  %47 = add nsw i64 %indvars.iv, 2, !dbg !657
  %48 = getelementptr inbounds i8* %streamBuffer, i64 %47, !dbg !658
  store i8 3, i8* %48, align 1, !dbg !659, !tbaa !605
  %indvars.iv.next = add nsw i64 %indvars.iv, 3, !dbg !626
  %49 = load %struct.ImageParameters** @img, align 8, !dbg !660, !tbaa !622
  %50 = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 6, !dbg !661
  %51 = load i32* %50, align 4, !dbg !661, !tbaa !662
  %52 = sext i32 %51 to i64, !dbg !666
  %53 = load %struct.StatParameters** @stats, align 8, !dbg !666, !tbaa !622
  %54 = getelementptr inbounds %struct.StatParameters* %53, i64 0, i32 22, i64 %52, !dbg !666
  %55 = load i32* %54, align 4, !dbg !667, !tbaa !668
  %56 = add nsw i32 %55, 16, !dbg !667
  store i32 %56, i32* %54, align 4, !dbg !667, !tbaa !668
  %57 = icmp slt i64 %indvars.iv.next, %14, !dbg !625
  br i1 %57, label %43, label %._crit_edge, !dbg !626

._crit_edge:                                      ; preds = %43
  %58 = add i32 %19, 3, !dbg !626
  br label %59, !dbg !626

; <label>:59                                      ; preds = %._crit_edge, %.preheader
  %j.2.lcssa = phi i32 [ %58, %._crit_edge ], [ %j.0.lcssa, %.preheader ]
  ret i32 %j.2.lcssa, !dbg !669
}

; Function Attrs: nounwind optsize ssp uwtable
define void @AllocNalPayloadBuffer() #0 {
  %1 = load %struct.InputParameters** @input, align 8, !dbg !670, !tbaa !622
  %2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 16, !dbg !671
  %3 = load i32* %2, align 4, !dbg !671, !tbaa !672
  %4 = load %struct.ImageParameters** @img, align 8, !dbg !674, !tbaa !622
  %5 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 165, !dbg !675
  %6 = load i32* %5, align 4, !dbg !675, !tbaa !676
  %7 = add nsw i32 %6, %3, !dbg !677
  %8 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 17, !dbg !678
  %9 = load i32* %8, align 4, !dbg !678, !tbaa !679
  %10 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 166, !dbg !680
  %11 = load i32* %10, align 4, !dbg !680, !tbaa !681
  %12 = add nsw i32 %11, %9, !dbg !682
  %13 = shl i32 %7, 2, !dbg !683
  %14 = mul i32 %13, %12, !dbg !684
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !52, metadata !583), !dbg !685
  %15 = load i8** @NAL_Payload_buffer, align 8, !dbg !686, !tbaa !622
  %16 = icmp eq i8* %15, null, !dbg !686
  br i1 %16, label %FreeNalPayloadBuffer.exit, label %17, !dbg !689

; <label>:17                                      ; preds = %0
  tail call void @free(i8* %15) #4, !dbg !690
  store i8* null, i8** @NAL_Payload_buffer, align 8, !dbg !692, !tbaa !622
  br label %FreeNalPayloadBuffer.exit, !dbg !693

FreeNalPayloadBuffer.exit:                        ; preds = %0, %17
  %18 = sext i32 %14 to i64, !dbg !694
  %19 = tail call i8* @calloc(i64 %18, i64 1) #4, !dbg !695
  store i8* %19, i8** @NAL_Payload_buffer, align 8, !dbg !696, !tbaa !622
  %20 = icmp eq i8* %19, null, !dbg !697
  br i1 %20, label %21, label %22, !dbg !697, !prof !698

; <label>:21                                      ; preds = %FreeNalPayloadBuffer.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([22 x i8]* @__func__.AllocNalPayloadBuffer, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([27 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !697
  unreachable, !dbg !697

; <label>:22                                      ; preds = %FreeNalPayloadBuffer.exit
  ret void, !dbg !699
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @FreeNalPayloadBuffer() #0 {
  %1 = load i8** @NAL_Payload_buffer, align 8, !dbg !700, !tbaa !622
  %2 = icmp eq i8* %1, null, !dbg !700
  br i1 %2, label %4, label %3, !dbg !701

; <label>:3                                       ; preds = %0
  tail call void @free(i8* %1) #6, !dbg !702
  store i8* null, i8** @NAL_Payload_buffer, align 8, !dbg !703, !tbaa !622
  br label %4, !dbg !704

; <label>:4                                       ; preds = %0, %3
  ret void, !dbg !705
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!579, !580, !581}
!llvm.ident = !{!582}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !14, globals: !56, imports: !55)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/nal.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{!9, !13}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !11, line: 30, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!14 = !{!15, !37, !48, !54}
!15 = !DISubprogram(name: "SODBtoRBSP", scope: !1, file: !1, line: 41, type: !16, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.Bitstream*)* @SODBtoRBSP, variables: !35)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !20, line: 427, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 411, size: 384, align: 64, elements: !22)
!22 = !{!23, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !21, file: !20, line: 413, baseType: !24, size: 32, align: 32)
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !21, file: !20, line: 414, baseType: !24, size: 32, align: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !21, file: !20, line: 415, baseType: !10, size: 8, align: 8, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !21, file: !20, line: 416, baseType: !24, size: 32, align: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !21, file: !20, line: 417, baseType: !24, size: 32, align: 32, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !21, file: !20, line: 418, baseType: !10, size: 8, align: 8, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !21, file: !20, line: 420, baseType: !10, size: 8, align: 8, offset: 168)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !21, file: !20, line: 421, baseType: !24, size: 32, align: 32, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !21, file: !20, line: 422, baseType: !24, size: 32, align: 32, offset: 224)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !21, file: !20, line: 424, baseType: !9, size: 64, align: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !21, file: !20, line: 425, baseType: !24, size: 32, align: 32, offset: 320)
!35 = !{!36}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "currStream", arg: 1, scope: !15, file: !1, line: 41, type: !18)
!37 = !DISubprogram(name: "RBSPtoEBSP", scope: !1, file: !1, line: 77, type: !38, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, i32, i32)* @RBSPtoEBSP, variables: !40)
!38 = !DISubroutineType(types: !39)
!39 = !{!24, !9, !24, !24, !24}
!40 = !{!41, !42, !43, !44, !45, !46, !47}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "streamBuffer", arg: 1, scope: !37, file: !1, line: 77, type: !9)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "begin_bytepos", arg: 2, scope: !37, file: !1, line: 77, type: !24)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "end_bytepos", arg: 3, scope: !37, file: !1, line: 77, type: !24)
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "min_num_bytes", arg: 4, scope: !37, file: !1, line: 77, type: !24)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !37, file: !1, line: 80, type: !24)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !37, file: !1, line: 80, type: !24)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !37, file: !1, line: 80, type: !24)
!48 = !DISubprogram(name: "AllocNalPayloadBuffer", scope: !1, file: !1, line: 119, type: !49, isLocal: false, isDefinition: true, scopeLine: 120, isOptimized: true, function: void ()* @AllocNalPayloadBuffer, variables: !51)
!49 = !DISubroutineType(types: !50)
!50 = !{null}
!51 = !{!52}
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer_size", scope: !48, file: !1, line: 121, type: !53)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!54 = !DISubprogram(name: "FreeNalPayloadBuffer", scope: !1, file: !1, line: 138, type: !49, isLocal: false, isDefinition: true, scopeLine: 139, isOptimized: true, function: void ()* @FreeNalPayloadBuffer, variables: !55)
!55 = !{}
!56 = !{!57, !234, !235, !236, !237, !238, !241, !243, !245, !246, !247, !248, !249, !288, !383, !384, !385, !387, !388, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !407, !408, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !424, !428, !429, !430, !431, !432, !433, !436, !439, !440, !441, !442, !445, !448, !459, !501, !502, !503, !504, !505, !562, !563, !564, !565, !566, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!57 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !20, line: 558, type: !58, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !20, line: 484, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 475, size: 6592, align: 64, elements: !61)
!61 = !{!62, !63, !64, !229, !230, !232, !233}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !60, file: !20, line: 477, baseType: !24, size: 32, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !60, file: !20, line: 478, baseType: !24, size: 32, align: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !60, file: !20, line: 479, baseType: !65, size: 6400, align: 64, offset: 64)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 6400, align: 64, elements: !227)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !20, line: 471, baseType: !68)
!68 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 443, size: 1216, align: 64, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !136, !175, !202, !211, !212, !213, !214, !215, !216, !217, !218, !219, !224}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !68, file: !20, line: 445, baseType: !24, size: 32, align: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !68, file: !20, line: 446, baseType: !24, size: 32, align: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !68, file: !20, line: 447, baseType: !24, size: 32, align: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !68, file: !20, line: 448, baseType: !24, size: 32, align: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !68, file: !20, line: 449, baseType: !24, size: 32, align: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !68, file: !20, line: 450, baseType: !24, size: 32, align: 32, offset: 160)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !68, file: !20, line: 451, baseType: !77, size: 64, align: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !20, line: 440, baseType: !79)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !20, line: 430, size: 960, align: 64, elements: !80)
!80 = !{!81, !82, !108}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !79, file: !20, line: 433, baseType: !18, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !79, file: !20, line: 434, baseType: !83, size: 832, align: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !20, line: 226, baseType: !84)
!84 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 207, size: 832, align: 64, elements: !85)
!85 = !{!86, !88, !89, !90, !91, !92, !93, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !84, file: !20, line: 209, baseType: !87, size: 32, align: 32)
!87 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !84, file: !20, line: 209, baseType: !87, size: 32, align: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !84, file: !20, line: 210, baseType: !87, size: 32, align: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !84, file: !20, line: 211, baseType: !87, size: 32, align: 32, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !84, file: !20, line: 212, baseType: !87, size: 32, align: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !84, file: !20, line: 213, baseType: !9, size: 64, align: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !84, file: !20, line: 214, baseType: !94, size: 64, align: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !84, file: !20, line: 217, baseType: !87, size: 32, align: 32, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !84, file: !20, line: 217, baseType: !87, size: 32, align: 32, offset: 352)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !84, file: !20, line: 218, baseType: !87, size: 32, align: 32, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !84, file: !20, line: 219, baseType: !87, size: 32, align: 32, offset: 416)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !84, file: !20, line: 220, baseType: !87, size: 32, align: 32, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !84, file: !20, line: 221, baseType: !9, size: 64, align: 64, offset: 512)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !84, file: !20, line: 222, baseType: !94, size: 64, align: 64, offset: 576)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !84, file: !20, line: 223, baseType: !24, size: 32, align: 32, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !84, file: !20, line: 223, baseType: !24, size: 32, align: 32, offset: 672)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !84, file: !20, line: 224, baseType: !24, size: 32, align: 32, offset: 704)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !84, file: !20, line: 224, baseType: !24, size: 32, align: 32, offset: 736)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !84, file: !20, line: 225, baseType: !24, size: 32, align: 32, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !84, file: !20, line: 225, baseType: !24, size: 32, align: 32, offset: 800)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !79, file: !20, line: 436, baseType: !109, size: 64, align: 64, offset: 896)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!24, !112, !135}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !20, line: 348, baseType: !114)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !20, line: 327, size: 384, align: 64, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !128}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !20, line: 329, baseType: !24, size: 32, align: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !114, file: !20, line: 330, baseType: !24, size: 32, align: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !114, file: !20, line: 331, baseType: !24, size: 32, align: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !114, file: !20, line: 332, baseType: !24, size: 32, align: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !114, file: !20, line: 333, baseType: !24, size: 32, align: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !114, file: !20, line: 334, baseType: !87, size: 32, align: 32, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !114, file: !20, line: 335, baseType: !24, size: 32, align: 32, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !114, file: !20, line: 336, baseType: !24, size: 32, align: 32, offset: 224)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !114, file: !20, line: 344, baseType: !125, size: 64, align: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !24, !24, !94, !94}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !114, file: !20, line: 346, baseType: !129, size: 64, align: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !132, !133}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !20, line: 228, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !68, file: !20, line: 452, baseType: !137, size: 64, align: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !20, line: 268, baseType: !139)
!139 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 258, size: 12032, align: 64, elements: !140)
!140 = !{!141, !154, !159, !163, !167, !171, !172}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !139, file: !20, line: 260, baseType: !142, size: 4224, align: 64)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 4224, align: 64, elements: !151)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !20, line: 238, baseType: !144)
!144 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 231, size: 128, align: 64, elements: !145)
!145 = !{!146, !148, !149}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !144, file: !20, line: 233, baseType: !147, size: 16, align: 16)
!147 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !144, file: !20, line: 234, baseType: !12, size: 8, align: 8, offset: 16)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !144, file: !20, line: 236, baseType: !150, size: 64, align: 64, offset: 64)
!150 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!151 = !{!152, !153}
!152 = !DISubrange(count: 3)
!153 = !DISubrange(count: 11)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !139, file: !20, line: 261, baseType: !155, size: 2304, align: 64, offset: 4224)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 2304, align: 64, elements: !156)
!156 = !{!157, !158}
!157 = !DISubrange(count: 2)
!158 = !DISubrange(count: 9)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !139, file: !20, line: 262, baseType: !160, size: 2560, align: 64, offset: 6528)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 2560, align: 64, elements: !161)
!161 = !{!157, !162}
!162 = !DISubrange(count: 10)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !139, file: !20, line: 263, baseType: !164, size: 1536, align: 64, offset: 9088)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1536, align: 64, elements: !165)
!165 = !{!157, !166}
!166 = !DISubrange(count: 6)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !139, file: !20, line: 264, baseType: !168, size: 512, align: 64, offset: 10624)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 512, align: 64, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 4)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !139, file: !20, line: 265, baseType: !168, size: 512, align: 64, offset: 11136)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !139, file: !20, line: 266, baseType: !173, size: 384, align: 64, offset: 11648)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 384, align: 64, elements: !174)
!174 = !{!152}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !68, file: !20, line: 453, baseType: !176, size: 64, align: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !20, line: 293, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 281, size: 97024, align: 64, elements: !179)
!179 = !{!180, !183, !184, !187, !190, !194, !195, !199, !200, !201}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !178, file: !20, line: 283, baseType: !181, size: 256, align: 64)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, align: 64, elements: !182)
!182 = !{!157}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !178, file: !20, line: 284, baseType: !168, size: 512, align: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !178, file: !20, line: 285, baseType: !185, size: 1536, align: 64, offset: 768)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1536, align: 64, elements: !186)
!186 = !{!152, !170}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !178, file: !20, line: 286, baseType: !188, size: 5120, align: 64, offset: 2304)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 5120, align: 64, elements: !189)
!189 = !{!162, !170}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !178, file: !20, line: 287, baseType: !191, size: 19200, align: 64, offset: 7424)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 19200, align: 64, elements: !192)
!192 = !{!162, !193}
!193 = !DISubrange(count: 15)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !178, file: !20, line: 288, baseType: !191, size: 19200, align: 64, offset: 26624)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !178, file: !20, line: 289, baseType: !196, size: 6400, align: 64, offset: 45824)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 6400, align: 64, elements: !197)
!197 = !{!162, !198}
!198 = !DISubrange(count: 5)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !178, file: !20, line: 290, baseType: !196, size: 6400, align: 64, offset: 52224)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !178, file: !20, line: 291, baseType: !191, size: 19200, align: 64, offset: 58624)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !178, file: !20, line: 292, baseType: !191, size: 19200, align: 64, offset: 77824)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !68, file: !20, line: 456, baseType: !203, size: 64, align: 64, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !20, line: 313, baseType: !205)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !20, line: 308, size: 128, align: 64, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !205, file: !20, line: 310, baseType: !24, size: 32, align: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !205, file: !20, line: 311, baseType: !24, size: 32, align: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !205, file: !20, line: 312, baseType: !210, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !68, file: !20, line: 458, baseType: !24, size: 32, align: 32, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !68, file: !20, line: 459, baseType: !94, size: 64, align: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !68, file: !20, line: 460, baseType: !94, size: 64, align: 64, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !68, file: !20, line: 461, baseType: !94, size: 64, align: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !68, file: !20, line: 462, baseType: !24, size: 32, align: 32, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !68, file: !20, line: 463, baseType: !94, size: 64, align: 64, offset: 768)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !68, file: !20, line: 464, baseType: !94, size: 64, align: 64, offset: 832)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !68, file: !20, line: 465, baseType: !94, size: 64, align: 64, offset: 896)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !68, file: !20, line: 467, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !24}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !4, line: 45, baseType: !3)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !68, file: !20, line: 469, baseType: !225, size: 192, align: 32, offset: 1024)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, align: 32, elements: !226)
!226 = !{!152, !157}
!227 = !{!228}
!228 = !DISubrange(count: 100)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !60, file: !20, line: 480, baseType: !24, size: 32, align: 32, offset: 6464)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !60, file: !20, line: 481, baseType: !231, size: 32, align: 32, offset: 6496)
!231 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !60, file: !20, line: 482, baseType: !231, size: 32, align: 32, offset: 6528)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !60, file: !20, line: 483, baseType: !231, size: 32, align: 32, offset: 6560)
!234 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !20, line: 559, type: !58, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!235 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !20, line: 560, type: !58, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!236 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !20, line: 561, type: !58, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!237 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !20, line: 562, type: !58, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!238 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !20, line: 565, type: !239, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!241 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !20, line: 566, type: !242, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!243 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !20, line: 567, type: !244, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!245 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !20, line: 569, type: !87, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!246 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !20, line: 570, type: !87, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!247 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !20, line: 572, type: !24, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!248 = !DIGlobalVariable(name: "me_time", scope: !0, file: !20, line: 572, type: !24, isLocal: false, isDefinition: true, variable: i32* @me_time)
!249 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !20, line: 573, type: !250, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !4, line: 145, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 103, size: 1920, align: 64, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !264, !265, !266, !267, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !252, file: !4, line: 105, baseType: !223, size: 32, align: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !252, file: !4, line: 106, baseType: !87, size: 32, align: 32, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !252, file: !4, line: 107, baseType: !87, size: 32, align: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !252, file: !4, line: 108, baseType: !223, size: 32, align: 32, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !252, file: !4, line: 110, baseType: !223, size: 32, align: 32, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !252, file: !4, line: 111, baseType: !223, size: 32, align: 32, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !252, file: !4, line: 112, baseType: !261, size: 256, align: 32, offset: 192)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, align: 32, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 8)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !252, file: !4, line: 115, baseType: !223, size: 32, align: 32, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !252, file: !4, line: 116, baseType: !87, size: 32, align: 32, offset: 480)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !252, file: !4, line: 117, baseType: !87, size: 32, align: 32, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !252, file: !4, line: 119, baseType: !268, size: 256, align: 32, offset: 544)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, align: 32, elements: !262)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !252, file: !4, line: 121, baseType: !268, size: 256, align: 32, offset: 800)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !252, file: !4, line: 122, baseType: !268, size: 256, align: 32, offset: 1056)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !252, file: !4, line: 124, baseType: !223, size: 32, align: 32, offset: 1312)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !252, file: !4, line: 125, baseType: !87, size: 32, align: 32, offset: 1344)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !252, file: !4, line: 127, baseType: !87, size: 32, align: 32, offset: 1376)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !252, file: !4, line: 128, baseType: !9, size: 64, align: 64, offset: 1408)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !252, file: !4, line: 130, baseType: !24, size: 32, align: 32, offset: 1472)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !252, file: !4, line: 131, baseType: !24, size: 32, align: 32, offset: 1504)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !252, file: !4, line: 132, baseType: !223, size: 32, align: 32, offset: 1536)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !252, file: !4, line: 133, baseType: !87, size: 32, align: 32, offset: 1568)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !252, file: !4, line: 134, baseType: !24, size: 32, align: 32, offset: 1600)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !252, file: !4, line: 135, baseType: !24, size: 32, align: 32, offset: 1632)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !252, file: !4, line: 136, baseType: !24, size: 32, align: 32, offset: 1664)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !252, file: !4, line: 138, baseType: !24, size: 32, align: 32, offset: 1696)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !252, file: !4, line: 139, baseType: !24, size: 32, align: 32, offset: 1728)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !252, file: !4, line: 141, baseType: !223, size: 32, align: 32, offset: 1760)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !252, file: !4, line: 142, baseType: !223, size: 32, align: 32, offset: 1792)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !252, file: !4, line: 143, baseType: !223, size: 32, align: 32, offset: 1824)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !252, file: !4, line: 144, baseType: !223, size: 32, align: 32, offset: 1856)
!288 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !20, line: 574, type: !289, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !4, line: 193, baseType: !291)
!291 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 149, size: 17056, align: 32, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !291, file: !4, line: 151, baseType: !223, size: 32, align: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !291, file: !4, line: 153, baseType: !87, size: 32, align: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !291, file: !4, line: 154, baseType: !223, size: 32, align: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !291, file: !4, line: 155, baseType: !223, size: 32, align: 32, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !291, file: !4, line: 156, baseType: !223, size: 32, align: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !291, file: !4, line: 157, baseType: !223, size: 32, align: 32, offset: 160)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !291, file: !4, line: 158, baseType: !87, size: 32, align: 32, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !291, file: !4, line: 159, baseType: !87, size: 32, align: 32, offset: 224)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !291, file: !4, line: 160, baseType: !87, size: 32, align: 32, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !291, file: !4, line: 162, baseType: !223, size: 32, align: 32, offset: 288)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !291, file: !4, line: 163, baseType: !261, size: 256, align: 32, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !291, file: !4, line: 165, baseType: !87, size: 32, align: 32, offset: 576)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !291, file: !4, line: 166, baseType: !87, size: 32, align: 32, offset: 608)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !291, file: !4, line: 167, baseType: !87, size: 32, align: 32, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !291, file: !4, line: 168, baseType: !87, size: 32, align: 32, offset: 672)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !291, file: !4, line: 170, baseType: !87, size: 32, align: 32, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !291, file: !4, line: 172, baseType: !223, size: 32, align: 32, offset: 736)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !291, file: !4, line: 173, baseType: !24, size: 32, align: 32, offset: 768)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !291, file: !4, line: 174, baseType: !24, size: 32, align: 32, offset: 800)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !291, file: !4, line: 175, baseType: !87, size: 32, align: 32, offset: 832)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !291, file: !4, line: 177, baseType: !314, size: 8192, align: 32, offset: 864)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8192, align: 32, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !291, file: !4, line: 178, baseType: !87, size: 32, align: 32, offset: 9056)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !291, file: !4, line: 179, baseType: !223, size: 32, align: 32, offset: 9088)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !291, file: !4, line: 180, baseType: !87, size: 32, align: 32, offset: 9120)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !291, file: !4, line: 181, baseType: !87, size: 32, align: 32, offset: 9152)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !291, file: !4, line: 182, baseType: !223, size: 32, align: 32, offset: 9184)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !291, file: !4, line: 184, baseType: !223, size: 32, align: 32, offset: 9216)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !291, file: !4, line: 185, baseType: !223, size: 32, align: 32, offset: 9248)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !291, file: !4, line: 186, baseType: !223, size: 32, align: 32, offset: 9280)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !291, file: !4, line: 187, baseType: !87, size: 32, align: 32, offset: 9312)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !291, file: !4, line: 188, baseType: !87, size: 32, align: 32, offset: 9344)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !291, file: !4, line: 189, baseType: !87, size: 32, align: 32, offset: 9376)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !291, file: !4, line: 190, baseType: !87, size: 32, align: 32, offset: 9408)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !291, file: !4, line: 191, baseType: !223, size: 32, align: 32, offset: 9440)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !291, file: !4, line: 192, baseType: !331, size: 7584, align: 32, offset: 9472)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !4, line: 99, baseType: !332)
!332 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 63, size: 7584, align: 32, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !332, file: !4, line: 65, baseType: !223, size: 32, align: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !332, file: !4, line: 66, baseType: !87, size: 32, align: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !332, file: !4, line: 67, baseType: !87, size: 32, align: 32, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !332, file: !4, line: 68, baseType: !87, size: 32, align: 32, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !332, file: !4, line: 69, baseType: !223, size: 32, align: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !332, file: !4, line: 70, baseType: !223, size: 32, align: 32, offset: 160)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !332, file: !4, line: 71, baseType: !223, size: 32, align: 32, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !332, file: !4, line: 72, baseType: !87, size: 32, align: 32, offset: 224)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !332, file: !4, line: 73, baseType: !223, size: 32, align: 32, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !332, file: !4, line: 74, baseType: !223, size: 32, align: 32, offset: 288)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !332, file: !4, line: 75, baseType: !87, size: 32, align: 32, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !332, file: !4, line: 76, baseType: !87, size: 32, align: 32, offset: 352)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !332, file: !4, line: 77, baseType: !87, size: 32, align: 32, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !332, file: !4, line: 78, baseType: !223, size: 32, align: 32, offset: 416)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !332, file: !4, line: 79, baseType: !87, size: 32, align: 32, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !332, file: !4, line: 80, baseType: !87, size: 32, align: 32, offset: 480)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !332, file: !4, line: 81, baseType: !223, size: 32, align: 32, offset: 512)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !332, file: !4, line: 82, baseType: !87, size: 32, align: 32, offset: 544)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !332, file: !4, line: 83, baseType: !87, size: 32, align: 32, offset: 576)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !332, file: !4, line: 84, baseType: !223, size: 32, align: 32, offset: 608)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !332, file: !4, line: 85, baseType: !223, size: 32, align: 32, offset: 640)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !332, file: !4, line: 86, baseType: !356, size: 3296, align: 32, offset: 672)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !4, line: 60, baseType: !357)
!357 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 3296, align: 32, elements: !358)
!358 = !{!359, !360, !361, !362, !366, !367, !368, !369, !370, !371}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !357, file: !4, line: 50, baseType: !87, size: 32, align: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !357, file: !4, line: 51, baseType: !87, size: 32, align: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !357, file: !4, line: 52, baseType: !87, size: 32, align: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !357, file: !4, line: 53, baseType: !363, size: 1024, align: 32, offset: 96)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 1024, align: 32, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !357, file: !4, line: 54, baseType: !363, size: 1024, align: 32, offset: 1120)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !357, file: !4, line: 55, baseType: !363, size: 1024, align: 32, offset: 2144)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !357, file: !4, line: 56, baseType: !87, size: 32, align: 32, offset: 3168)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !357, file: !4, line: 57, baseType: !87, size: 32, align: 32, offset: 3200)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !357, file: !4, line: 58, baseType: !87, size: 32, align: 32, offset: 3232)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !357, file: !4, line: 59, baseType: !87, size: 32, align: 32, offset: 3264)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !332, file: !4, line: 87, baseType: !223, size: 32, align: 32, offset: 3968)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !332, file: !4, line: 88, baseType: !356, size: 3296, align: 32, offset: 4000)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !332, file: !4, line: 90, baseType: !223, size: 32, align: 32, offset: 7296)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !332, file: !4, line: 91, baseType: !223, size: 32, align: 32, offset: 7328)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !332, file: !4, line: 92, baseType: !223, size: 32, align: 32, offset: 7360)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !332, file: !4, line: 93, baseType: !87, size: 32, align: 32, offset: 7392)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !332, file: !4, line: 94, baseType: !87, size: 32, align: 32, offset: 7424)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !332, file: !4, line: 95, baseType: !87, size: 32, align: 32, offset: 7456)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !332, file: !4, line: 96, baseType: !87, size: 32, align: 32, offset: 7488)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !332, file: !4, line: 97, baseType: !87, size: 32, align: 32, offset: 7520)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !332, file: !4, line: 98, baseType: !87, size: 32, align: 32, offset: 7552)
!383 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !20, line: 578, type: !24, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!384 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !20, line: 579, type: !24, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!385 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !20, line: 583, type: !386, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!387 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !20, line: 584, type: !386, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!388 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !20, line: 585, type: !389, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!390 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !20, line: 586, type: !24, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!391 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !20, line: 587, type: !24, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!392 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !20, line: 588, type: !24, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!393 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !20, line: 589, type: !24, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!394 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !20, line: 592, type: !239, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!395 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !20, line: 593, type: !239, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!396 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !20, line: 595, type: !242, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!397 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !20, line: 596, type: !242, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!398 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !20, line: 598, type: !239, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!399 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !20, line: 599, type: !242, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!400 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !20, line: 601, type: !239, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!401 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !20, line: 602, type: !242, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!402 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !20, line: 604, type: !403, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!407 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !20, line: 605, type: !404, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!408 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !20, line: 608, type: !409, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!410 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !20, line: 609, type: !409, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!411 = !DIGlobalVariable(name: "intras", scope: !0, file: !20, line: 610, type: !24, isLocal: false, isDefinition: true, variable: i32* @intras)
!412 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !20, line: 612, type: !24, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!413 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !20, line: 612, type: !24, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!414 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !20, line: 612, type: !24, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!415 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !20, line: 613, type: !24, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!416 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !20, line: 613, type: !24, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!417 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !20, line: 613, type: !24, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!418 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !20, line: 614, type: !24, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!419 = !DIGlobalVariable(name: "errortext", scope: !0, file: !20, line: 617, type: !420, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 2400, align: 8, elements: !422)
!421 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!422 = !{!423}
!423 = !DISubrange(count: 300)
!424 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !20, line: 620, type: !425, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8192, align: 32, elements: !426)
!426 = !{!427, !427}
!427 = !DISubrange(count: 16)
!428 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !20, line: 620, type: !425, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!429 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !20, line: 620, type: !425, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!430 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !20, line: 621, type: !425, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!431 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !20, line: 621, type: !425, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!432 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !20, line: 621, type: !425, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!433 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !20, line: 622, type: !434, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 24576, align: 32, elements: !435)
!435 = !{!152, !427, !427}
!436 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !20, line: 623, type: !437, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1024, align: 32, elements: !438)
!438 = !{!157, !170, !170}
!439 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !20, line: 623, type: !437, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!440 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !20, line: 624, type: !437, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!441 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !20, line: 624, type: !437, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!442 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !20, line: 625, type: !443, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, align: 32, elements: !444)
!444 = !{!170, !170}
!445 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !20, line: 625, type: !446, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, align: 32, elements: !447)
!447 = !{!427}
!448 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !20, line: 1201, type: !449, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !20, line: 1190, baseType: !451)
!451 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 1182, size: 192, align: 32, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !451, file: !20, line: 1184, baseType: !24, size: 32, align: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !451, file: !20, line: 1185, baseType: !24, size: 32, align: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !451, file: !20, line: 1186, baseType: !24, size: 32, align: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !451, file: !20, line: 1187, baseType: !24, size: 32, align: 32, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !451, file: !20, line: 1188, baseType: !24, size: 32, align: 32, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !451, file: !20, line: 1189, baseType: !24, size: 32, align: 32, offset: 160)
!459 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !20, line: 1202, type: !460, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !20, line: 1177, baseType: !462)
!462 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 1145, size: 26880, align: 64, elements: !463)
!463 = !{!464, !466, !467, !468, !469, !470, !471, !472, !473, !475, !476, !477, !478, !479, !484, !485, !489, !490, !491, !492, !494, !495, !496, !497, !498, !499, !500}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !462, file: !20, line: 1147, baseType: !465, size: 64, align: 64)
!465 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !462, file: !20, line: 1149, baseType: !425, size: 8192, align: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !462, file: !20, line: 1150, baseType: !425, size: 8192, align: 32, offset: 8256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !462, file: !20, line: 1150, baseType: !425, size: 8192, align: 32, offset: 16448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !462, file: !20, line: 1151, baseType: !389, size: 64, align: 64, offset: 24640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !462, file: !20, line: 1152, baseType: !386, size: 64, align: 64, offset: 24704)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !462, file: !20, line: 1153, baseType: !24, size: 32, align: 32, offset: 24768)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !462, file: !20, line: 1155, baseType: !24, size: 32, align: 32, offset: 24800)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !462, file: !20, line: 1157, baseType: !474, size: 128, align: 32, offset: 24832)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, align: 32, elements: !169)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !462, file: !20, line: 1157, baseType: !474, size: 128, align: 32, offset: 24960)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !462, file: !20, line: 1158, baseType: !244, size: 64, align: 64, offset: 25088)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !462, file: !20, line: 1159, baseType: !446, size: 512, align: 32, offset: 25152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !462, file: !20, line: 1160, baseType: !24, size: 32, align: 32, offset: 25664)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !462, file: !20, line: 1161, baseType: !480, size: 64, align: 64, offset: 25728)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !20, line: 62, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !482, line: 30, baseType: !483)
!482 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!483 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !462, file: !20, line: 1162, baseType: !24, size: 32, align: 32, offset: 25792)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !462, file: !20, line: 1163, baseType: !486, size: 64, align: 64, offset: 25856)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !462, file: !20, line: 1164, baseType: !486, size: 64, align: 64, offset: 25920)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !462, file: !20, line: 1165, baseType: !486, size: 64, align: 64, offset: 25984)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !462, file: !20, line: 1166, baseType: !486, size: 64, align: 64, offset: 26048)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !462, file: !20, line: 1167, baseType: !493, size: 512, align: 16, offset: 26112)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 512, align: 16, elements: !438)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !462, file: !20, line: 1168, baseType: !24, size: 32, align: 32, offset: 26624)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !462, file: !20, line: 1169, baseType: !24, size: 32, align: 32, offset: 26656)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !462, file: !20, line: 1171, baseType: !24, size: 32, align: 32, offset: 26688)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !462, file: !20, line: 1172, baseType: !24, size: 32, align: 32, offset: 26720)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !462, file: !20, line: 1174, baseType: !24, size: 32, align: 32, offset: 26752)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !462, file: !20, line: 1175, baseType: !24, size: 32, align: 32, offset: 26784)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !462, file: !20, line: 1176, baseType: !24, size: 32, align: 32, offset: 26816)
!501 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !20, line: 1203, type: !461, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!502 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !20, line: 1203, type: !461, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!503 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !20, line: 1204, type: !461, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!504 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !20, line: 1204, type: !461, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!505 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !20, line: 1230, type: !506, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !508, line: 153, baseType: !509)
!508 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !508, line: 122, size: 1216, align: 64, elements: !510)
!510 = !{!511, !513, !514, !515, !516, !517, !522, !523, !524, !528, !533, !542, !548, !549, !552, !553, !555, !559, !560, !561}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !509, file: !508, line: 123, baseType: !512, size: 64, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !509, file: !508, line: 124, baseType: !24, size: 32, align: 32, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !509, file: !508, line: 125, baseType: !24, size: 32, align: 32, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !509, file: !508, line: 126, baseType: !406, size: 16, align: 16, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !509, file: !508, line: 127, baseType: !406, size: 16, align: 16, offset: 144)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !509, file: !508, line: 128, baseType: !518, size: 128, align: 64, offset: 192)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !508, line: 88, size: 128, align: 64, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !518, file: !508, line: 89, baseType: !512, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !518, file: !508, line: 90, baseType: !24, size: 32, align: 32, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !509, file: !508, line: 129, baseType: !24, size: 32, align: 32, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !509, file: !508, line: 132, baseType: !13, size: 64, align: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !509, file: !508, line: 133, baseType: !525, size: 64, align: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!24, !13}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !509, file: !508, line: 134, baseType: !529, size: 64, align: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!24, !13, !532, !24}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !509, file: !508, line: 135, baseType: !534, size: 64, align: 64, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!537, !13, !537, !24}
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !508, line: 77, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !539, line: 71, baseType: !540)
!539 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !541, line: 46, baseType: !483)
!541 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !509, file: !508, line: 136, baseType: !543, size: 64, align: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!24, !13, !546, !24}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !509, file: !508, line: 139, baseType: !518, size: 128, align: 64, offset: 704)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !509, file: !508, line: 140, baseType: !550, size: 64, align: 64, offset: 832)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !508, line: 94, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !509, file: !508, line: 141, baseType: !24, size: 32, align: 32, offset: 896)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !509, file: !508, line: 144, baseType: !554, size: 24, align: 8, offset: 928)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 24, align: 8, elements: !174)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !509, file: !508, line: 145, baseType: !556, size: 8, align: 8, offset: 952)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, align: 8, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 1)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !509, file: !508, line: 148, baseType: !518, size: 128, align: 64, offset: 960)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !509, file: !508, line: 151, baseType: !24, size: 32, align: 32, offset: 1088)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !509, file: !508, line: 152, baseType: !537, size: 64, align: 64, offset: 1152)
!562 = !DIGlobalVariable(name: "p_log", scope: !0, file: !20, line: 1231, type: !506, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!563 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !20, line: 1232, type: !506, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!564 = !DIGlobalVariable(name: "p_in", scope: !0, file: !20, line: 1233, type: !24, isLocal: false, isDefinition: true, variable: i32* @p_in)
!565 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !20, line: 1234, type: !24, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!566 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !20, line: 1237, type: !567, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 640, align: 32, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 20)
!570 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !20, line: 1238, type: !567, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!571 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !20, line: 1239, type: !567, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!572 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !20, line: 1240, type: !567, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!573 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !20, line: 1241, type: !567, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!574 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !20, line: 1242, type: !567, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!575 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !20, line: 1456, type: !24, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!576 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !20, line: 1465, type: !24, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!577 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !20, line: 1466, type: !24, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!578 = !DIGlobalVariable(name: "NAL_Payload_buffer", scope: !0, file: !1, line: 39, type: !9, isLocal: true, isDefinition: true, variable: i8** @NAL_Payload_buffer)
!579 = !{i32 2, !"Dwarf Version", i32 2}
!580 = !{i32 2, !"Debug Info Version", i32 700000003}
!581 = !{i32 1, !"PIC Level", i32 2}
!582 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!583 = !DIExpression()
!584 = !DILocation(line: 41, column: 28, scope: !15)
!585 = !DILocation(line: 43, column: 15, scope: !15)
!586 = !DILocation(line: 43, column: 24, scope: !15)
!587 = !{!588, !590, i64 8}
!588 = !{!"", !589, i64 0, !589, i64 4, !590, i64 8, !589, i64 12, !589, i64 16, !590, i64 20, !590, i64 21, !589, i64 24, !589, i64 28, !592, i64 32, !589, i64 40}
!589 = !{!"int", !590, i64 0}
!590 = !{!"omnipotent char", !591, i64 0}
!591 = !{!"Simple C/C++ TBAA"}
!592 = !{!"any pointer", !590, i64 0}
!593 = !DILocation(line: 44, column: 24, scope: !15)
!594 = !DILocation(line: 45, column: 15, scope: !15)
!595 = !DILocation(line: 45, column: 25, scope: !15)
!596 = !{!588, !589, i64 4}
!597 = !DILocation(line: 46, column: 24, scope: !15)
!598 = !DILocation(line: 47, column: 40, scope: !15)
!599 = !DILocation(line: 47, column: 48, scope: !15)
!600 = !{!588, !589, i64 0}
!601 = !DILocation(line: 47, column: 3, scope: !15)
!602 = !DILocation(line: 47, column: 15, scope: !15)
!603 = !{!588, !592, i64 32}
!604 = !DILocation(line: 47, column: 52, scope: !15)
!605 = !{!590, !590, i64 0}
!606 = !DILocation(line: 48, column: 26, scope: !15)
!607 = !DILocation(line: 49, column: 24, scope: !15)
!608 = !DILocation(line: 50, column: 1, scope: !15)
!609 = !DILocation(line: 77, column: 22, scope: !37)
!610 = !DILocation(line: 77, column: 40, scope: !37)
!611 = !DILocation(line: 77, column: 59, scope: !37)
!612 = !DILocation(line: 77, column: 76, scope: !37)
!613 = !DILocation(line: 80, column: 7, scope: !37)
!614 = !DILocation(line: 82, column: 28, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 82, column: 3)
!616 = distinct !DILexicalBlock(scope: !37, file: !1, line: 82, column: 3)
!617 = !DILocation(line: 82, column: 3, scope: !616)
!618 = !DILocation(line: 87, column: 3, scope: !619)
!619 = distinct !DILexicalBlock(scope: !37, file: !1, line: 87, column: 3)
!620 = !DILocation(line: 83, column: 29, scope: !615)
!621 = !DILocation(line: 83, column: 5, scope: !615)
!622 = !{!592, !592, i64 0}
!623 = !DILocation(line: 83, column: 27, scope: !615)
!624 = !DILocation(line: 102, column: 27, scope: !37)
!625 = !DILocation(line: 102, column: 12, scope: !37)
!626 = !DILocation(line: 102, column: 3, scope: !37)
!627 = !DILocation(line: 89, column: 14, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !1, line: 89, column: 8)
!629 = distinct !DILexicalBlock(scope: !630, file: !1, line: 88, column: 3)
!630 = distinct !DILexicalBlock(scope: !619, file: !1, line: 87, column: 3)
!631 = !DILocation(line: 89, column: 42, scope: !628)
!632 = !DILocation(line: 89, column: 47, scope: !628)
!633 = !DILocation(line: 89, column: 69, scope: !628)
!634 = !DILocation(line: 89, column: 8, scope: !629)
!635 = !DILocation(line: 91, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !628, file: !1, line: 90, column: 5)
!637 = !DILocation(line: 91, column: 23, scope: !636)
!638 = !DILocation(line: 92, column: 8, scope: !636)
!639 = !DILocation(line: 80, column: 10, scope: !37)
!640 = !DILocation(line: 80, column: 13, scope: !37)
!641 = !DILocation(line: 94, column: 5, scope: !636)
!642 = !DILocation(line: 95, column: 23, scope: !629)
!643 = !DILocation(line: 95, column: 5, scope: !629)
!644 = !DILocation(line: 95, column: 21, scope: !629)
!645 = !DILocation(line: 96, column: 8, scope: !646)
!646 = distinct !DILexicalBlock(scope: !629, file: !1, line: 96, column: 8)
!647 = !DILocation(line: 96, column: 30, scope: !646)
!648 = !DILocation(line: 97, column: 12, scope: !646)
!649 = !DILocation(line: 96, column: 8, scope: !629)
!650 = !DILocation(line: 100, column: 6, scope: !629)
!651 = !DILocation(line: 103, column: 5, scope: !652)
!652 = distinct !DILexicalBlock(scope: !37, file: !1, line: 102, column: 43)
!653 = !DILocation(line: 103, column: 21, scope: !652)
!654 = !DILocation(line: 104, column: 19, scope: !652)
!655 = !DILocation(line: 104, column: 5, scope: !652)
!656 = !DILocation(line: 104, column: 23, scope: !652)
!657 = !DILocation(line: 105, column: 19, scope: !652)
!658 = !DILocation(line: 105, column: 5, scope: !652)
!659 = !DILocation(line: 105, column: 23, scope: !652)
!660 = !DILocation(line: 107, column: 33, scope: !652)
!661 = !DILocation(line: 107, column: 38, scope: !652)
!662 = !{!663, !589, i64 24}
!663 = !{!"", !589, i64 0, !589, i64 4, !589, i64 8, !589, i64 12, !589, i64 16, !589, i64 20, !589, i64 24, !589, i64 28, !589, i64 32, !589, i64 36, !589, i64 40, !589, i64 44, !664, i64 48, !589, i64 52, !589, i64 56, !589, i64 60, !589, i64 64, !589, i64 68, !589, i64 72, !589, i64 76, !589, i64 80, !589, i64 84, !589, i64 88, !589, i64 92, !589, i64 96, !592, i64 104, !592, i64 112, !589, i64 120, !592, i64 128, !589, i64 136, !589, i64 140, !589, i64 144, !589, i64 148, !589, i64 152, !589, i64 156, !589, i64 160, !589, i64 164, !589, i64 168, !589, i64 172, !589, i64 176, !589, i64 180, !590, i64 184, !590, i64 4792, !590, i64 7352, !590, i64 8504, !590, i64 12600, !590, i64 13112, !592, i64 14136, !592, i64 14144, !592, i64 14152, !592, i64 14160, !592, i64 14168, !590, i64 14176, !592, i64 71776, !592, i64 71784, !589, i64 71792, !589, i64 71796, !589, i64 71800, !589, i64 71804, !590, i64 71808, !589, i64 71872, !589, i64 71876, !589, i64 71880, !589, i64 71884, !589, i64 71888, !665, i64 71896, !589, i64 71904, !589, i64 71908, !589, i64 71912, !589, i64 71916, !592, i64 71920, !592, i64 71928, !592, i64 71936, !592, i64 71944, !590, i64 71952, !589, i64 71984, !589, i64 71988, !589, i64 71992, !589, i64 71996, !589, i64 72000, !589, i64 72004, !589, i64 72008, !589, i64 72012, !590, i64 72016, !589, i64 72376, !589, i64 72380, !589, i64 72384, !589, i64 72388, !589, i64 72392, !589, i64 72396, !589, i64 72400, !589, i64 72404, !589, i64 72408, !589, i64 72412, !589, i64 72416, !589, i64 72420, !590, i64 72424, !589, i64 72428, !589, i64 72432, !590, i64 72436, !589, i64 72444, !589, i64 72448, !589, i64 72452, !589, i64 72456, !589, i64 72460, !589, i64 72464, !589, i64 72468, !589, i64 72472, !589, i64 72476, !589, i64 72480, !589, i64 72484, !589, i64 72488, !589, i64 72492, !589, i64 72496, !589, i64 72500, !589, i64 72504, !589, i64 72508, !592, i64 72512, !589, i64 72520, !589, i64 72524, !589, i64 72528, !589, i64 72532, !589, i64 72536, !665, i64 72544, !589, i64 72552, !589, i64 72556, !589, i64 72560, !589, i64 72564, !589, i64 72568, !589, i64 72572, !589, i64 72576, !592, i64 72584, !589, i64 72592, !589, i64 72596, !589, i64 72600, !589, i64 72604, !589, i64 72608, !589, i64 72612, !589, i64 72616, !589, i64 72620, !589, i64 72624, !589, i64 72628, !589, i64 72632, !589, i64 72636, !589, i64 72640, !589, i64 72644, !589, i64 72648, !589, i64 72652, !589, i64 72656, !589, i64 72660, !589, i64 72664, !589, i64 72668, !589, i64 72672, !589, i64 72676, !589, i64 72680, !589, i64 72684, !589, i64 72688, !589, i64 72692, !589, i64 72696, !589, i64 72700, !589, i64 72704, !589, i64 72708, !589, i64 72712, !590, i64 72716, !589, i64 72724, !589, i64 72728, !589, i64 72732}
!664 = !{!"float", !590, i64 0}
!665 = !{!"double", !590, i64 0}
!666 = !DILocation(line: 107, column: 5, scope: !652)
!667 = !DILocation(line: 107, column: 43, scope: !652)
!668 = !{!589, !589, i64 0}
!669 = !DILocation(line: 109, column: 3, scope: !37)
!670 = !DILocation(line: 121, column: 29, scope: !48)
!671 = !DILocation(line: 121, column: 36, scope: !48)
!672 = !{!673, !589, i64 64}
!673 = !{!"", !589, i64 0, !589, i64 4, !589, i64 8, !589, i64 12, !589, i64 16, !589, i64 20, !589, i64 24, !589, i64 28, !589, i64 32, !589, i64 36, !589, i64 40, !589, i64 44, !589, i64 48, !589, i64 52, !589, i64 56, !589, i64 60, !589, i64 64, !589, i64 68, !589, i64 72, !589, i64 76, !590, i64 80, !590, i64 144, !589, i64 208, !589, i64 212, !589, i64 216, !589, i64 220, !590, i64 224, !590, i64 424, !590, i64 624, !590, i64 824, !590, i64 1024, !589, i64 1224, !589, i64 1228, !589, i64 1232, !589, i64 1236, !589, i64 1240, !589, i64 1244, !589, i64 1248, !589, i64 1252, !589, i64 1256, !589, i64 1260, !589, i64 1264, !589, i64 1268, !589, i64 1272, !589, i64 1276, !589, i64 1280, !589, i64 1284, !589, i64 1288, !589, i64 1292, !589, i64 1296, !589, i64 1300, !589, i64 1304, !589, i64 1308, !589, i64 1312, !589, i64 1316, !589, i64 1320, !590, i64 1324, !589, i64 2348, !589, i64 2352, !589, i64 2356, !589, i64 2360, !589, i64 2364, !589, i64 2368, !589, i64 2372, !589, i64 2376, !589, i64 2380, !589, i64 2384, !589, i64 2388, !589, i64 2392, !589, i64 2396, !589, i64 2400, !589, i64 2404, !589, i64 2408, !589, i64 2412, !589, i64 2416, !589, i64 2420, !665, i64 2424, !589, i64 2432, !589, i64 2436, !589, i64 2440, !589, i64 2444, !589, i64 2448, !589, i64 2452, !589, i64 2456, !589, i64 2460, !589, i64 2464, !589, i64 2468, !589, i64 2472, !589, i64 2476, !590, i64 2480, !590, i64 2680, !589, i64 2880, !589, i64 2884, !589, i64 2888, !589, i64 2892, !589, i64 2896, !589, i64 2900, !589, i64 2904, !589, i64 2908, !589, i64 2912, !589, i64 2916, !589, i64 2920, !589, i64 2924, !589, i64 2928, !589, i64 2932, !589, i64 2936, !589, i64 2940, !589, i64 2944, !589, i64 2948, !590, i64 2952, !589, i64 3152, !589, i64 3156, !592, i64 3160, !592, i64 3168, !592, i64 3176, !592, i64 3184, !589, i64 3192, !589, i64 3196, !589, i64 3200, !589, i64 3204, !589, i64 3208, !589, i64 3212, !589, i64 3216, !589, i64 3220, !589, i64 3224, !589, i64 3228, !589, i64 3232, !589, i64 3236, !589, i64 3240, !589, i64 3244, !589, i64 3248, !589, i64 3252, !589, i64 3256, !590, i64 3260, !589, i64 3292, !589, i64 3296, !589, i64 3300, !589, i64 3304, !589, i64 3308, !589, i64 3312, !589, i64 3316, !589, i64 3320, !589, i64 3324, !589, i64 3328, !589, i64 3332, !590, i64 3336, !590, i64 3384, !589, i64 3584}
!674 = !DILocation(line: 121, column: 46, scope: !48)
!675 = !DILocation(line: 121, column: 51, scope: !48)
!676 = !{!663, !589, i64 72728}
!677 = !DILocation(line: 121, column: 45, scope: !48)
!678 = !DILocation(line: 121, column: 78, scope: !48)
!679 = !{!673, !589, i64 68}
!680 = !DILocation(line: 121, column: 94, scope: !48)
!681 = !{!663, !589, i64 72732}
!682 = !DILocation(line: 121, column: 88, scope: !48)
!683 = !DILocation(line: 121, column: 68, scope: !48)
!684 = !DILocation(line: 121, column: 112, scope: !48)
!685 = !DILocation(line: 121, column: 13, scope: !48)
!686 = !DILocation(line: 140, column: 6, scope: !687, inlinedAt: !688)
!687 = distinct !DILexicalBlock(scope: !54, file: !1, line: 140, column: 6)
!688 = distinct !DILocation(line: 124, column: 3, scope: !48)
!689 = !DILocation(line: 140, column: 6, scope: !54, inlinedAt: !688)
!690 = !DILocation(line: 142, column: 5, scope: !691, inlinedAt: !688)
!691 = distinct !DILexicalBlock(scope: !687, file: !1, line: 141, column: 3)
!692 = !DILocation(line: 143, column: 23, scope: !691, inlinedAt: !688)
!693 = !DILocation(line: 144, column: 3, scope: !691, inlinedAt: !688)
!694 = !DILocation(line: 126, column: 40, scope: !48)
!695 = !DILocation(line: 126, column: 33, scope: !48)
!696 = !DILocation(line: 126, column: 22, scope: !48)
!697 = !DILocation(line: 127, column: 3, scope: !48)
!698 = !{!"branch_weights", i32 4, i32 64}
!699 = !DILocation(line: 128, column: 1, scope: !48)
!700 = !DILocation(line: 140, column: 6, scope: !687)
!701 = !DILocation(line: 140, column: 6, scope: !54)
!702 = !DILocation(line: 142, column: 5, scope: !691)
!703 = !DILocation(line: 143, column: 23, scope: !691)
!704 = !DILocation(line: 144, column: 3, scope: !691)
!705 = !DILocation(line: 145, column: 1, scope: !54)
