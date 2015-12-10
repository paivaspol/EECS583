; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/refbuf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@line = internal global [16 x i16] zeroinitializer, align 16
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
define void @PutPel_14(i16** nocapture readonly %Pic, i32 %y, i32 %x, i16 zeroext %val) #0 {
  tail call void @llvm.dbg.value(metadata i16** %Pic, i64 0, metadata !18, metadata !635), !dbg !636
  tail call void @llvm.dbg.value(metadata i32 %y, i64 0, metadata !19, metadata !635), !dbg !637
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !20, metadata !635), !dbg !638
  tail call void @llvm.dbg.value(metadata i16 %val, i64 0, metadata !21, metadata !635), !dbg !639
  %1 = add nsw i32 %x, 16, !dbg !640
  %2 = sext i32 %1 to i64, !dbg !641
  %3 = add nsw i32 %y, 16, !dbg !642
  %4 = sext i32 %3 to i64, !dbg !641
  %5 = getelementptr inbounds i16** %Pic, i64 %4, !dbg !641
  %6 = load i16** %5, align 8, !dbg !641, !tbaa !643
  %7 = getelementptr inbounds i16* %6, i64 %2, !dbg !641
  store i16 %val, i16* %7, align 2, !dbg !647, !tbaa !648
  ret void, !dbg !650
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PutPel_11(i16* nocapture %Pic, i32 %y, i32 %x, i16 zeroext %val, i32 %width) #0 {
  tail call void @llvm.dbg.value(metadata i16* %Pic, i64 0, metadata !26, metadata !635), !dbg !651
  tail call void @llvm.dbg.value(metadata i32 %y, i64 0, metadata !27, metadata !635), !dbg !652
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !28, metadata !635), !dbg !653
  tail call void @llvm.dbg.value(metadata i16 %val, i64 0, metadata !29, metadata !635), !dbg !654
  tail call void @llvm.dbg.value(metadata i32 %width, i64 0, metadata !30, metadata !635), !dbg !655
  %1 = mul nsw i32 %width, %y, !dbg !656
  %2 = add nsw i32 %1, %x, !dbg !657
  %3 = sext i32 %2 to i64, !dbg !658
  %4 = getelementptr inbounds i16* %Pic, i64 %3, !dbg !658
  store i16 %val, i16* %4, align 2, !dbg !659, !tbaa !648
  ret void, !dbg !660
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i16* @FastLine16Y_11(i16* readnone %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #1 {
  tail call void @llvm.dbg.value(metadata i16* %Pic, i64 0, metadata !35, metadata !635), !dbg !661
  tail call void @llvm.dbg.value(metadata i32 %y, i64 0, metadata !36, metadata !635), !dbg !662
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !37, metadata !635), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 %height, i64 0, metadata !38, metadata !635), !dbg !664
  tail call void @llvm.dbg.value(metadata i32 %width, i64 0, metadata !39, metadata !635), !dbg !665
  %1 = mul nsw i32 %width, %y, !dbg !666
  %2 = add nsw i32 %1, %x, !dbg !667
  %3 = sext i32 %2 to i64, !dbg !668
  %4 = getelementptr inbounds i16* %Pic, i64 %3, !dbg !668
  ret i16* %4, !dbg !669
}

; Function Attrs: nounwind optsize ssp uwtable
define i16* @UMVLine16Y_11(i16* readonly %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
  tail call void @llvm.dbg.value(metadata i16* %Pic, i64 0, metadata !42, metadata !635), !dbg !670
  tail call void @llvm.dbg.value(metadata i32 %y, i64 0, metadata !43, metadata !635), !dbg !671
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !44, metadata !635), !dbg !672
  tail call void @llvm.dbg.value(metadata i32 %height, i64 0, metadata !45, metadata !635), !dbg !673
  tail call void @llvm.dbg.value(metadata i32 %width, i64 0, metadata !46, metadata !635), !dbg !674
  %1 = add nsw i32 %height, -1, !dbg !675
  %2 = icmp sle i32 %height, %y, !dbg !675
  %.y = select i1 %2, i32 %1, i32 %y, !dbg !675
  %3 = icmp slt i32 %.y, 0, !dbg !675
  %..y = select i1 %3, i32 0, i32 %.y, !dbg !675
  %4 = mul nsw i32 %..y, %width, !dbg !676
  %5 = sext i32 %4 to i64, !dbg !677
  %6 = getelementptr inbounds i16* %Pic, i64 %5, !dbg !677
  tail call void @llvm.dbg.value(metadata i16* %6, i64 0, metadata !49, metadata !635), !dbg !678
  %7 = icmp slt i32 %x, 0, !dbg !679
  br i1 %7, label %8, label %27, !dbg !681

; <label>:8                                       ; preds = %0
  %9 = add nsw i32 %x, 16, !dbg !682
  %10 = icmp sgt i32 %x, -16, !dbg !682
  %. = select i1 %10, i32 0, i32 %9, !dbg !682
  tail call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !48, metadata !635), !dbg !684
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !47, metadata !635), !dbg !685
  %11 = icmp sgt i32 %., %x, !dbg !686
  br i1 %11, label %.lr.ph9, label %.preheader, !dbg !689

.lr.ph9:                                          ; preds = %8
  %12 = sext i32 %x to i64
  %13 = icmp slt i32 %x, -16
  %.op = add i32 %x, 15, !dbg !689
  %14 = select i1 %13, i32 %.op, i32 -1, !dbg !689
  br label %17, !dbg !689

.preheader:                                       ; preds = %17, %8
  br i1 %10, label %.lr.ph, label %.loopexit, !dbg !690

.lr.ph:                                           ; preds = %.preheader
  %15 = sext i32 %9 to i64, !dbg !690
  %16 = sext i32 %x to i64, !dbg !690
  br label %21, !dbg !690

; <label>:17                                      ; preds = %17, %.lr.ph9
  %indvars.iv15 = phi i64 [ %12, %.lr.ph9 ], [ %indvars.iv.next16, %17 ]
  %18 = load i16* %6, align 2, !dbg !692, !tbaa !648
  %19 = sub nsw i64 %indvars.iv15, %12, !dbg !693
  %20 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %19, !dbg !694
  store i16 %18, i16* %20, align 2, !dbg !695, !tbaa !648
  %indvars.iv.next16 = add nsw i64 %indvars.iv15, 1, !dbg !689
  %lftr.wideiv = trunc i64 %indvars.iv15 to i32, !dbg !689
  %exitcond = icmp eq i32 %lftr.wideiv, %14, !dbg !689
  br i1 %exitcond, label %.preheader, label %17, !dbg !689

; <label>:21                                      ; preds = %.lr.ph, %21
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %21 ]
  %.sum3 = add nsw i64 %indvars.iv, %5, !dbg !696
  %22 = getelementptr inbounds i16* %Pic, i64 %.sum3, !dbg !696
  %23 = load i16* %22, align 2, !dbg !696, !tbaa !648
  %24 = sub nsw i64 %indvars.iv, %16, !dbg !698
  %25 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %24, !dbg !699
  store i16 %23, i16* %25, align 2, !dbg !700, !tbaa !648
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !690
  %26 = icmp slt i64 %indvars.iv.next, %15, !dbg !701
  br i1 %26, label %21, label %.loopexit, !dbg !690

; <label>:27                                      ; preds = %0
  %28 = add nsw i32 %width, -16, !dbg !702
  %29 = icmp slt i32 %28, %x, !dbg !704
  br i1 %29, label %.preheader6, label %51, !dbg !705

.preheader6:                                      ; preds = %27
  %30 = icmp slt i32 %x, %width, !dbg !706
  br i1 %30, label %.lr.ph13, label %._crit_edge, !dbg !710

.lr.ph13:                                         ; preds = %.preheader6
  %31 = sext i32 %x to i64
  %32 = add i32 %width, -1, !dbg !710
  br label %33, !dbg !710

; <label>:33                                      ; preds = %33, %.lr.ph13
  %indvars.iv22 = phi i64 [ %31, %.lr.ph13 ], [ %indvars.iv.next23, %33 ]
  %.sum2 = add nsw i64 %indvars.iv22, %5, !dbg !711
  %34 = getelementptr inbounds i16* %Pic, i64 %.sum2, !dbg !711
  %35 = load i16* %34, align 2, !dbg !711, !tbaa !648
  %36 = sub nsw i64 %indvars.iv22, %31, !dbg !712
  %37 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %36, !dbg !713
  store i16 %35, i16* %37, align 2, !dbg !714, !tbaa !648
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1, !dbg !710
  %lftr.wideiv24 = trunc i64 %indvars.iv22 to i32, !dbg !710
  %exitcond25 = icmp eq i32 %lftr.wideiv24, %32, !dbg !710
  br i1 %exitcond25, label %._crit_edge, label %33, !dbg !710

._crit_edge:                                      ; preds = %33, %.preheader6
  %38 = add nsw i32 %x, 16, !dbg !715
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !48, metadata !635), !dbg !684
  %39 = select i1 %30, i32 %width, i32 %x, !dbg !716
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !47, metadata !635), !dbg !685
  %40 = icmp slt i32 %39, %38, !dbg !718
  br i1 %40, label %.lr.ph11, label %.loopexit, !dbg !720

.lr.ph11:                                         ; preds = %._crit_edge
  %41 = add nsw i32 %width, -1, !dbg !721
  %42 = sext i32 %41 to i64, !dbg !722
  %.sum1 = add nsw i64 %5, %42, !dbg !722
  %43 = getelementptr inbounds i16* %Pic, i64 %.sum1, !dbg !722
  %44 = sext i32 %39 to i64
  %45 = sext i32 %x to i64, !dbg !720
  %46 = add i32 %x, 15, !dbg !720
  br label %47, !dbg !720

; <label>:47                                      ; preds = %47, %.lr.ph11
  %indvars.iv18 = phi i64 [ %44, %.lr.ph11 ], [ %indvars.iv.next19, %47 ]
  %48 = load i16* %43, align 2, !dbg !722, !tbaa !648
  %49 = sub nsw i64 %indvars.iv18, %45, !dbg !723
  %50 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %49, !dbg !724
  store i16 %48, i16* %50, align 2, !dbg !725, !tbaa !648
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1, !dbg !720
  %lftr.wideiv20 = trunc i64 %indvars.iv18 to i32, !dbg !720
  %exitcond21 = icmp eq i32 %lftr.wideiv20, %46, !dbg !720
  br i1 %exitcond21, label %.loopexit, label %47, !dbg !720

; <label>:51                                      ; preds = %27
  %52 = sext i32 %x to i64, !dbg !726
  %.sum = add nsw i64 %5, %52, !dbg !726
  %53 = getelementptr inbounds i16* %Pic, i64 %.sum, !dbg !726
  br label %.loopexit, !dbg !727

.loopexit:                                        ; preds = %47, %21, %._crit_edge, %.preheader, %51
  %.0 = phi i16* [ %53, %51 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %.preheader ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %._crit_edge ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %21 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %47 ]
  ret i16* %.0, !dbg !728
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i16* @FastLineX(i32 %dummy, i16* readnone %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #1 {
  tail call void @llvm.dbg.value(metadata i32 %dummy, i64 0, metadata !54, metadata !635), !dbg !729
  tail call void @llvm.dbg.value(metadata i16* %Pic, i64 0, metadata !55, metadata !635), !dbg !730
  tail call void @llvm.dbg.value(metadata i32 %y, i64 0, metadata !56, metadata !635), !dbg !731
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !57, metadata !635), !dbg !732
  tail call void @llvm.dbg.value(metadata i32 %height, i64 0, metadata !58, metadata !635), !dbg !733
  tail call void @llvm.dbg.value(metadata i32 %width, i64 0, metadata !59, metadata !635), !dbg !734
  %1 = mul nsw i32 %width, %y, !dbg !735
  %2 = sext i32 %1 to i64, !dbg !736
  %3 = sext i32 %x to i64, !dbg !737
  %.sum = add nsw i64 %2, %3, !dbg !737
  %4 = getelementptr inbounds i16* %Pic, i64 %.sum, !dbg !737
  ret i16* %4, !dbg !738
}

; Function Attrs: nounwind optsize ssp uwtable
define i16* @UMVLineX(i32 %size, i16* readonly %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !62, metadata !635), !dbg !739
  tail call void @llvm.dbg.value(metadata i16* %Pic, i64 0, metadata !63, metadata !635), !dbg !740
  tail call void @llvm.dbg.value(metadata i32 %y, i64 0, metadata !64, metadata !635), !dbg !741
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !65, metadata !635), !dbg !742
  tail call void @llvm.dbg.value(metadata i32 %height, i64 0, metadata !66, metadata !635), !dbg !743
  tail call void @llvm.dbg.value(metadata i32 %width, i64 0, metadata !67, metadata !635), !dbg !744
  %1 = add nsw i32 %height, -1, !dbg !745
  %2 = icmp sle i32 %height, %y, !dbg !745
  %.y = select i1 %2, i32 %1, i32 %y, !dbg !745
  %3 = icmp slt i32 %.y, 0, !dbg !745
  %..y = select i1 %3, i32 0, i32 %.y, !dbg !745
  %4 = mul nsw i32 %..y, %width, !dbg !746
  %5 = sext i32 %4 to i64, !dbg !747
  %6 = getelementptr inbounds i16* %Pic, i64 %5, !dbg !747
  tail call void @llvm.dbg.value(metadata i16* %6, i64 0, metadata !70, metadata !635), !dbg !748
  %7 = icmp slt i32 %x, 0, !dbg !749
  br i1 %7, label %8, label %26, !dbg !751

; <label>:8                                       ; preds = %0
  %9 = add i32 %x, %size, !dbg !752
  %10 = icmp sgt i32 %9, 0, !dbg !752
  %. = select i1 %10, i32 0, i32 %9, !dbg !752
  tail call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !69, metadata !635), !dbg !754
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !68, metadata !635), !dbg !755
  %11 = icmp sgt i32 %., %x, !dbg !756
  br i1 %11, label %.lr.ph9, label %.preheader, !dbg !759

.lr.ph9:                                          ; preds = %8
  %12 = sext i32 %x to i64
  %13 = icmp slt i32 %9, 0
  %.op = add i32 %9, -1, !dbg !759
  %14 = select i1 %13, i32 %.op, i32 -1, !dbg !759
  br label %17, !dbg !759

.preheader:                                       ; preds = %17, %8
  br i1 %10, label %.lr.ph, label %.loopexit, !dbg !760

.lr.ph:                                           ; preds = %.preheader
  %15 = sext i32 %x to i64, !dbg !760
  %16 = add i32 %9, -1, !dbg !760
  br label %21, !dbg !760

; <label>:17                                      ; preds = %17, %.lr.ph9
  %indvars.iv15 = phi i64 [ %12, %.lr.ph9 ], [ %indvars.iv.next16, %17 ]
  %18 = load i16* %6, align 2, !dbg !762, !tbaa !648
  %19 = sub nsw i64 %indvars.iv15, %12, !dbg !764
  %20 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %19, !dbg !765
  store i16 %18, i16* %20, align 2, !dbg !766, !tbaa !648
  %indvars.iv.next16 = add nsw i64 %indvars.iv15, 1, !dbg !759
  %lftr.wideiv17 = trunc i64 %indvars.iv15 to i32, !dbg !759
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %14, !dbg !759
  br i1 %exitcond18, label %.preheader, label %17, !dbg !759

; <label>:21                                      ; preds = %21, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %21 ]
  %.sum3 = add nsw i64 %indvars.iv, %5, !dbg !767
  %22 = getelementptr inbounds i16* %Pic, i64 %.sum3, !dbg !767
  %23 = load i16* %22, align 2, !dbg !767, !tbaa !648
  %24 = sub nsw i64 %indvars.iv, %15, !dbg !769
  %25 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %24, !dbg !770
  store i16 %23, i16* %25, align 2, !dbg !771, !tbaa !648
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !760
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !760
  %exitcond = icmp eq i32 %lftr.wideiv, %16, !dbg !760
  br i1 %exitcond, label %.loopexit, label %21, !dbg !760

; <label>:26                                      ; preds = %0
  %27 = sub nsw i32 %width, %size, !dbg !772
  %28 = icmp slt i32 %27, %x, !dbg !774
  br i1 %28, label %.preheader6, label %50, !dbg !775

.preheader6:                                      ; preds = %26
  %29 = icmp slt i32 %x, %width, !dbg !776
  br i1 %29, label %.lr.ph13, label %._crit_edge, !dbg !780

.lr.ph13:                                         ; preds = %.preheader6
  %30 = sext i32 %x to i64
  %31 = add i32 %width, -1, !dbg !780
  br label %32, !dbg !780

; <label>:32                                      ; preds = %32, %.lr.ph13
  %indvars.iv24 = phi i64 [ %30, %.lr.ph13 ], [ %indvars.iv.next25, %32 ]
  %.sum2 = add nsw i64 %indvars.iv24, %5, !dbg !781
  %33 = getelementptr inbounds i16* %Pic, i64 %.sum2, !dbg !781
  %34 = load i16* %33, align 2, !dbg !781, !tbaa !648
  %35 = sub nsw i64 %indvars.iv24, %30, !dbg !783
  %36 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %35, !dbg !784
  store i16 %34, i16* %36, align 2, !dbg !785, !tbaa !648
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, 1, !dbg !780
  %lftr.wideiv26 = trunc i64 %indvars.iv24 to i32, !dbg !780
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %31, !dbg !780
  br i1 %exitcond27, label %._crit_edge, label %32, !dbg !780

._crit_edge:                                      ; preds = %32, %.preheader6
  %37 = add i32 %x, %size, !dbg !786
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !69, metadata !635), !dbg !754
  %38 = select i1 %29, i32 %width, i32 %x, !dbg !787
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !68, metadata !635), !dbg !755
  %39 = icmp slt i32 %38, %37, !dbg !789
  br i1 %39, label %.lr.ph11, label %.loopexit, !dbg !791

.lr.ph11:                                         ; preds = %._crit_edge
  %40 = add nsw i32 %width, -1, !dbg !792
  %41 = sext i32 %40 to i64, !dbg !794
  %.sum1 = add nsw i64 %5, %41, !dbg !794
  %42 = getelementptr inbounds i16* %Pic, i64 %.sum1, !dbg !794
  %43 = sext i32 %38 to i64
  %44 = sext i32 %x to i64, !dbg !791
  %45 = add i32 %37, -1, !dbg !791
  br label %46, !dbg !791

; <label>:46                                      ; preds = %46, %.lr.ph11
  %indvars.iv20 = phi i64 [ %43, %.lr.ph11 ], [ %indvars.iv.next21, %46 ]
  %47 = load i16* %42, align 2, !dbg !794, !tbaa !648
  %48 = sub nsw i64 %indvars.iv20, %44, !dbg !795
  %49 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %48, !dbg !796
  store i16 %47, i16* %49, align 2, !dbg !797, !tbaa !648
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, 1, !dbg !791
  %lftr.wideiv22 = trunc i64 %indvars.iv20 to i32, !dbg !791
  %exitcond23 = icmp eq i32 %lftr.wideiv22, %45, !dbg !791
  br i1 %exitcond23, label %.loopexit, label %46, !dbg !791

; <label>:50                                      ; preds = %26
  %51 = sext i32 %x to i64, !dbg !798
  %.sum = add nsw i64 %5, %51, !dbg !798
  %52 = getelementptr inbounds i16* %Pic, i64 %.sum, !dbg !798
  br label %.loopexit, !dbg !800

.loopexit:                                        ; preds = %46, %21, %._crit_edge, %.preheader, %50
  %.0 = phi i16* [ %52, %50 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %.preheader ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %._crit_edge ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %21 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %46 ]
  ret i16* %.0, !dbg !801
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define zeroext i16 @UMVPelY_14(i16** nocapture readonly %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #2 {
  tail call void @llvm.dbg.value(metadata i16** %Pic, i64 0, metadata !75, metadata !635), !dbg !802
  tail call void @llvm.dbg.value(metadata i32 %y, i64 0, metadata !76, metadata !635), !dbg !803
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !77, metadata !635), !dbg !804
  tail call void @llvm.dbg.value(metadata i32 %height, i64 0, metadata !78, metadata !635), !dbg !805
  tail call void @llvm.dbg.value(metadata i32 %width, i64 0, metadata !79, metadata !635), !dbg !806
  %1 = shl i32 %width, 2, !dbg !807
  %2 = add i32 %1, 28, !dbg !807
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !80, metadata !635), !dbg !808
  %3 = shl i32 %height, 2, !dbg !809
  %4 = add i32 %3, 28, !dbg !809
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !81, metadata !635), !dbg !810
  %5 = add nsw i32 %x, 16, !dbg !811
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !77, metadata !635), !dbg !804
  %6 = add nsw i32 %y, 16, !dbg !812
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !76, metadata !635), !dbg !803
  %7 = icmp slt i32 %x, -16, !dbg !813
  br i1 %7, label %8, label %34, !dbg !815

; <label>:8                                       ; preds = %0
  %9 = icmp slt i32 %y, -16, !dbg !816
  br i1 %9, label %10, label %18, !dbg !819

; <label>:10                                      ; preds = %8
  %11 = and i32 %5, 3, !dbg !820
  %12 = zext i32 %11 to i64, !dbg !821
  %13 = and i32 %6, 3, !dbg !822
  %14 = zext i32 %13 to i64, !dbg !821
  %15 = getelementptr inbounds i16** %Pic, i64 %14, !dbg !821
  %16 = load i16** %15, align 8, !dbg !821, !tbaa !643
  %17 = getelementptr inbounds i16* %16, i64 %12, !dbg !821
  br label %87, !dbg !823

; <label>:18                                      ; preds = %8
  %19 = icmp sgt i32 %6, %4, !dbg !824
  %20 = and i32 %5, 3, !dbg !826
  %21 = zext i32 %20 to i64, !dbg !827
  br i1 %19, label %22, label %29, !dbg !828

; <label>:22                                      ; preds = %18
  %23 = and i32 %6, 3, !dbg !829
  %24 = or i32 %4, %23, !dbg !830
  %25 = sext i32 %24 to i64, !dbg !827
  %26 = getelementptr inbounds i16** %Pic, i64 %25, !dbg !827
  %27 = load i16** %26, align 8, !dbg !827, !tbaa !643
  %28 = getelementptr inbounds i16* %27, i64 %21, !dbg !827
  br label %87, !dbg !831

; <label>:29                                      ; preds = %18
  %30 = sext i32 %6 to i64, !dbg !832
  %31 = getelementptr inbounds i16** %Pic, i64 %30, !dbg !832
  %32 = load i16** %31, align 8, !dbg !832, !tbaa !643
  %33 = getelementptr inbounds i16* %32, i64 %21, !dbg !832
  br label %87, !dbg !833

; <label>:34                                      ; preds = %0
  %35 = icmp sgt i32 %5, %2, !dbg !834
  %36 = icmp slt i32 %y, -16, !dbg !836
  br i1 %35, label %37, label %64, !dbg !839

; <label>:37                                      ; preds = %34
  br i1 %36, label %38, label %47, !dbg !840

; <label>:38                                      ; preds = %37
  %39 = and i32 %5, 3, !dbg !841
  %40 = or i32 %2, %39, !dbg !842
  %41 = sext i32 %40 to i64, !dbg !843
  %42 = and i32 %6, 3, !dbg !844
  %43 = zext i32 %42 to i64, !dbg !843
  %44 = getelementptr inbounds i16** %Pic, i64 %43, !dbg !843
  %45 = load i16** %44, align 8, !dbg !843, !tbaa !643
  %46 = getelementptr inbounds i16* %45, i64 %41, !dbg !843
  br label %87, !dbg !845

; <label>:47                                      ; preds = %37
  %48 = icmp sgt i32 %6, %4, !dbg !846
  %49 = and i32 %5, 3, !dbg !848
  %50 = or i32 %2, %49, !dbg !849
  %51 = sext i32 %50 to i64, !dbg !850
  br i1 %48, label %52, label %59, !dbg !851

; <label>:52                                      ; preds = %47
  %53 = and i32 %6, 3, !dbg !852
  %54 = or i32 %4, %53, !dbg !853
  %55 = sext i32 %54 to i64, !dbg !850
  %56 = getelementptr inbounds i16** %Pic, i64 %55, !dbg !850
  %57 = load i16** %56, align 8, !dbg !850, !tbaa !643
  %58 = getelementptr inbounds i16* %57, i64 %51, !dbg !850
  br label %87, !dbg !854

; <label>:59                                      ; preds = %47
  %60 = sext i32 %6 to i64, !dbg !855
  %61 = getelementptr inbounds i16** %Pic, i64 %60, !dbg !855
  %62 = load i16** %61, align 8, !dbg !855, !tbaa !643
  %63 = getelementptr inbounds i16* %62, i64 %51, !dbg !855
  br label %87, !dbg !856

; <label>:64                                      ; preds = %34
  br i1 %36, label %65, label %72, !dbg !857

; <label>:65                                      ; preds = %64
  %66 = sext i32 %5 to i64, !dbg !858
  %67 = and i32 %6, 3, !dbg !860
  %68 = zext i32 %67 to i64, !dbg !858
  %69 = getelementptr inbounds i16** %Pic, i64 %68, !dbg !858
  %70 = load i16** %69, align 8, !dbg !858, !tbaa !643
  %71 = getelementptr inbounds i16* %70, i64 %66, !dbg !858
  br label %87, !dbg !861

; <label>:72                                      ; preds = %64
  %73 = icmp sgt i32 %6, %4, !dbg !862
  %74 = sext i32 %5 to i64, !dbg !864
  br i1 %73, label %75, label %82, !dbg !865

; <label>:75                                      ; preds = %72
  %76 = and i32 %6, 3, !dbg !866
  %77 = or i32 %4, %76, !dbg !867
  %78 = sext i32 %77 to i64, !dbg !864
  %79 = getelementptr inbounds i16** %Pic, i64 %78, !dbg !864
  %80 = load i16** %79, align 8, !dbg !864, !tbaa !643
  %81 = getelementptr inbounds i16* %80, i64 %74, !dbg !864
  br label %87, !dbg !868

; <label>:82                                      ; preds = %72
  %83 = sext i32 %6 to i64, !dbg !869
  %84 = getelementptr inbounds i16** %Pic, i64 %83, !dbg !869
  %85 = load i16** %84, align 8, !dbg !869, !tbaa !643
  %86 = getelementptr inbounds i16* %85, i64 %74, !dbg !869
  br label %87, !dbg !870

; <label>:87                                      ; preds = %82, %75, %65, %59, %52, %38, %29, %22, %10
  %.0.in = phi i16* [ %17, %10 ], [ %28, %22 ], [ %33, %29 ], [ %46, %38 ], [ %58, %52 ], [ %63, %59 ], [ %71, %65 ], [ %81, %75 ], [ %86, %82 ]
  %.0 = load i16* %.0.in, align 2, !dbg !821
  ret i16 %.0, !dbg !871
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define zeroext i16 @FastPelY_14(i16** nocapture readonly %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #2 {
  tail call void @llvm.dbg.value(metadata i16** %Pic, i64 0, metadata !84, metadata !635), !dbg !872
  tail call void @llvm.dbg.value(metadata i32 %y, i64 0, metadata !85, metadata !635), !dbg !873
  tail call void @llvm.dbg.value(metadata i32 %x, i64 0, metadata !86, metadata !635), !dbg !874
  tail call void @llvm.dbg.value(metadata i32 %height, i64 0, metadata !87, metadata !635), !dbg !875
  tail call void @llvm.dbg.value(metadata i32 %width, i64 0, metadata !88, metadata !635), !dbg !876
  %1 = add nsw i32 %x, 16, !dbg !877
  %2 = sext i32 %1 to i64, !dbg !878
  %3 = add nsw i32 %y, 16, !dbg !879
  %4 = sext i32 %3 to i64, !dbg !878
  %5 = getelementptr inbounds i16** %Pic, i64 %4, !dbg !878
  %6 = load i16** %5, align 8, !dbg !878, !tbaa !643
  %7 = getelementptr inbounds i16* %6, i64 %2, !dbg !878
  %8 = load i16* %7, align 2, !dbg !878, !tbaa !648
  ret i16 %8, !dbg !880
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!631, !632, !633}
!llvm.ident = !{!634}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !9, globals: !89, imports: !8)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/refbuf.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{}
!9 = !{!10, !22, !31, !40, !50, !60, !71, !82}
!10 = !DISubprogram(name: "PutPel_14", scope: !1, file: !1, line: 23, type: !11, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: void (i16**, i32, i32, i16)* @PutPel_14, variables: !17)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !16, !16, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !21}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Pic", arg: 1, scope: !10, file: !1, line: 23, type: !13)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !10, file: !1, line: 23, type: !16)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !10, file: !1, line: 23, type: !16)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 4, scope: !10, file: !1, line: 23, type: !15)
!22 = !DISubprogram(name: "PutPel_11", scope: !1, file: !1, line: 28, type: !23, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: void (i16*, i32, i32, i16, i32)* @PutPel_11, variables: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !14, !16, !16, !15, !16}
!25 = !{!26, !27, !28, !29, !30}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Pic", arg: 1, scope: !22, file: !1, line: 28, type: !14)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !22, file: !1, line: 28, type: !16)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !22, file: !1, line: 28, type: !16)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 4, scope: !22, file: !1, line: 28, type: !15)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "width", arg: 5, scope: !22, file: !1, line: 28, type: !16)
!31 = !DISubprogram(name: "FastLine16Y_11", scope: !1, file: !1, line: 42, type: !32, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: i16* (i16*, i32, i32, i32, i32)* @FastLine16Y_11, variables: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{!14, !14, !16, !16, !16, !16}
!34 = !{!35, !36, !37, !38, !39}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Pic", arg: 1, scope: !31, file: !1, line: 42, type: !14)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !31, file: !1, line: 42, type: !16)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !31, file: !1, line: 42, type: !16)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "height", arg: 4, scope: !31, file: !1, line: 42, type: !16)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "width", arg: 5, scope: !31, file: !1, line: 42, type: !16)
!40 = !DISubprogram(name: "UMVLine16Y_11", scope: !1, file: !1, line: 48, type: !32, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: i16* (i16*, i32, i32, i32, i32)* @UMVLine16Y_11, variables: !41)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Pic", arg: 1, scope: !40, file: !1, line: 48, type: !14)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !40, file: !1, line: 48, type: !16)
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !40, file: !1, line: 48, type: !16)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "height", arg: 4, scope: !40, file: !1, line: 48, type: !16)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "width", arg: 5, scope: !40, file: !1, line: 48, type: !16)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !40, file: !1, line: 50, type: !16)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxx", scope: !40, file: !1, line: 50, type: !16)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Picy", scope: !40, file: !1, line: 51, type: !14)
!50 = !DISubprogram(name: "FastLineX", scope: !1, file: !1, line: 82, type: !51, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: i16* (i32, i16*, i32, i32, i32, i32)* @FastLineX, variables: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{!14, !16, !14, !16, !16, !16, !16}
!53 = !{!54, !55, !56, !57, !58, !59}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dummy", arg: 1, scope: !50, file: !1, line: 82, type: !16)
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Pic", arg: 2, scope: !50, file: !1, line: 82, type: !14)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 3, scope: !50, file: !1, line: 82, type: !16)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !50, file: !1, line: 82, type: !16)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "height", arg: 5, scope: !50, file: !1, line: 82, type: !16)
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "width", arg: 6, scope: !50, file: !1, line: 82, type: !16)
!60 = !DISubprogram(name: "UMVLineX", scope: !1, file: !1, line: 88, type: !51, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, function: i16* (i32, i16*, i32, i32, i32, i32)* @UMVLineX, variables: !61)
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70}
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !60, file: !1, line: 88, type: !16)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Pic", arg: 2, scope: !60, file: !1, line: 88, type: !14)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 3, scope: !60, file: !1, line: 88, type: !16)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !60, file: !1, line: 88, type: !16)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "height", arg: 5, scope: !60, file: !1, line: 88, type: !16)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "width", arg: 6, scope: !60, file: !1, line: 88, type: !16)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !60, file: !1, line: 90, type: !16)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxx", scope: !60, file: !1, line: 90, type: !16)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Picy", scope: !60, file: !1, line: 91, type: !14)
!71 = !DISubprogram(name: "UMVPelY_14", scope: !1, file: !1, line: 133, type: !72, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, function: i16 (i16**, i32, i32, i32, i32)* @UMVPelY_14, variables: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{!15, !13, !16, !16, !16, !16}
!74 = !{!75, !76, !77, !78, !79, !80, !81}
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Pic", arg: 1, scope: !71, file: !1, line: 133, type: !13)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !71, file: !1, line: 133, type: !16)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !71, file: !1, line: 133, type: !16)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "height", arg: 4, scope: !71, file: !1, line: 133, type: !16)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "width", arg: 5, scope: !71, file: !1, line: 133, type: !16)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "width4", scope: !71, file: !1, line: 135, type: !16)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "height4", scope: !71, file: !1, line: 136, type: !16)
!82 = !DISubprogram(name: "FastPelY_14", scope: !1, file: !1, line: 167, type: !72, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: i16 (i16**, i32, i32, i32, i32)* @FastPelY_14, variables: !83)
!83 = !{!84, !85, !86, !87, !88}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Pic", arg: 1, scope: !82, file: !1, line: 167, type: !13)
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !82, file: !1, line: 167, type: !16)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !82, file: !1, line: 167, type: !16)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "height", arg: 4, scope: !82, file: !1, line: 167, type: !16)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "width", arg: 5, scope: !82, file: !1, line: 167, type: !16)
!89 = !{!90, !286, !287, !288, !289, !290, !291, !293, !295, !296, !297, !298, !299, !338, !433, !434, !435, !437, !438, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !457, !458, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !474, !478, !479, !480, !481, !482, !483, !486, !489, !490, !491, !492, !495, !498, !509, !551, !552, !553, !554, !555, !613, !614, !615, !616, !617, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!90 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !91, line: 558, type: !92, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!91 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !91, line: 484, baseType: !94)
!94 = !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 475, size: 6592, align: 64, elements: !95)
!95 = !{!96, !97, !98, !281, !282, !284, !285}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !94, file: !91, line: 477, baseType: !16, size: 32, align: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !94, file: !91, line: 478, baseType: !16, size: 32, align: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !94, file: !91, line: 479, baseType: !99, size: 6400, align: 64, offset: 64)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 6400, align: 64, elements: !279)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !91, line: 471, baseType: !102)
!102 = !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 443, size: 1216, align: 64, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !189, !227, !254, !263, !264, !265, !266, !267, !268, !269, !270, !271, !276}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !102, file: !91, line: 445, baseType: !16, size: 32, align: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !102, file: !91, line: 446, baseType: !16, size: 32, align: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !102, file: !91, line: 447, baseType: !16, size: 32, align: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !102, file: !91, line: 448, baseType: !16, size: 32, align: 32, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !102, file: !91, line: 449, baseType: !16, size: 32, align: 32, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !102, file: !91, line: 450, baseType: !16, size: 32, align: 32, offset: 160)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !102, file: !91, line: 451, baseType: !111, size: 64, align: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !91, line: 440, baseType: !113)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !91, line: 430, size: 960, align: 64, elements: !114)
!114 = !{!115, !135, !161}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !113, file: !91, line: 433, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !91, line: 427, baseType: !118)
!118 = !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 411, size: 384, align: 64, elements: !119)
!119 = !{!120, !121, !122, !126, !127, !128, !129, !130, !131, !132, !134}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !118, file: !91, line: 413, baseType: !16, size: 32, align: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !118, file: !91, line: 414, baseType: !16, size: 32, align: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !118, file: !91, line: 415, baseType: !123, size: 8, align: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !124, line: 30, baseType: !125)
!124 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!125 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !118, file: !91, line: 416, baseType: !16, size: 32, align: 32, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !118, file: !91, line: 417, baseType: !16, size: 32, align: 32, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !118, file: !91, line: 418, baseType: !123, size: 8, align: 8, offset: 160)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !118, file: !91, line: 420, baseType: !123, size: 8, align: 8, offset: 168)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !118, file: !91, line: 421, baseType: !16, size: 32, align: 32, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !118, file: !91, line: 422, baseType: !16, size: 32, align: 32, offset: 224)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !118, file: !91, line: 424, baseType: !133, size: 64, align: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !118, file: !91, line: 425, baseType: !16, size: 32, align: 32, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !113, file: !91, line: 434, baseType: !136, size: 832, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !91, line: 226, baseType: !137)
!137 = !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 207, size: 832, align: 64, elements: !138)
!138 = !{!139, !141, !142, !143, !144, !145, !146, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !137, file: !91, line: 209, baseType: !140, size: 32, align: 32)
!140 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !137, file: !91, line: 209, baseType: !140, size: 32, align: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !137, file: !91, line: 210, baseType: !140, size: 32, align: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !137, file: !91, line: 211, baseType: !140, size: 32, align: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !137, file: !91, line: 212, baseType: !140, size: 32, align: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !137, file: !91, line: 213, baseType: !133, size: 64, align: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !137, file: !91, line: 214, baseType: !147, size: 64, align: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !137, file: !91, line: 217, baseType: !140, size: 32, align: 32, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !137, file: !91, line: 217, baseType: !140, size: 32, align: 32, offset: 352)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !137, file: !91, line: 218, baseType: !140, size: 32, align: 32, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !137, file: !91, line: 219, baseType: !140, size: 32, align: 32, offset: 416)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !137, file: !91, line: 220, baseType: !140, size: 32, align: 32, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !137, file: !91, line: 221, baseType: !133, size: 64, align: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !137, file: !91, line: 222, baseType: !147, size: 64, align: 64, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !137, file: !91, line: 223, baseType: !16, size: 32, align: 32, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !137, file: !91, line: 223, baseType: !16, size: 32, align: 32, offset: 672)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !137, file: !91, line: 224, baseType: !16, size: 32, align: 32, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !137, file: !91, line: 224, baseType: !16, size: 32, align: 32, offset: 736)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !137, file: !91, line: 225, baseType: !16, size: 32, align: 32, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !137, file: !91, line: 225, baseType: !16, size: 32, align: 32, offset: 800)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !113, file: !91, line: 436, baseType: !162, size: 64, align: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!16, !165, !188}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !91, line: 348, baseType: !167)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !91, line: 327, size: 384, align: 64, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !181}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !167, file: !91, line: 329, baseType: !16, size: 32, align: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !167, file: !91, line: 330, baseType: !16, size: 32, align: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !167, file: !91, line: 331, baseType: !16, size: 32, align: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !167, file: !91, line: 332, baseType: !16, size: 32, align: 32, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !167, file: !91, line: 333, baseType: !16, size: 32, align: 32, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !167, file: !91, line: 334, baseType: !140, size: 32, align: 32, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !167, file: !91, line: 335, baseType: !16, size: 32, align: 32, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !167, file: !91, line: 336, baseType: !16, size: 32, align: 32, offset: 224)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !167, file: !91, line: 344, baseType: !178, size: 64, align: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !16, !16, !147, !147}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !167, file: !91, line: 346, baseType: !182, size: 64, align: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !185, !186}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !91, line: 228, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !102, file: !91, line: 452, baseType: !190, size: 64, align: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !91, line: 268, baseType: !192)
!192 = !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 258, size: 12032, align: 64, elements: !193)
!193 = !{!194, !206, !211, !215, !219, !223, !224}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !192, file: !91, line: 260, baseType: !195, size: 4224, align: 64)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 4224, align: 64, elements: !203)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !91, line: 238, baseType: !197)
!197 = !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 231, size: 128, align: 64, elements: !198)
!198 = !{!199, !200, !201}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !197, file: !91, line: 233, baseType: !15, size: 16, align: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !197, file: !91, line: 234, baseType: !125, size: 8, align: 8, offset: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !197, file: !91, line: 236, baseType: !202, size: 64, align: 64, offset: 64)
!202 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!203 = !{!204, !205}
!204 = !DISubrange(count: 3)
!205 = !DISubrange(count: 11)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !192, file: !91, line: 261, baseType: !207, size: 2304, align: 64, offset: 4224)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 2304, align: 64, elements: !208)
!208 = !{!209, !210}
!209 = !DISubrange(count: 2)
!210 = !DISubrange(count: 9)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !192, file: !91, line: 262, baseType: !212, size: 2560, align: 64, offset: 6528)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 2560, align: 64, elements: !213)
!213 = !{!209, !214}
!214 = !DISubrange(count: 10)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !192, file: !91, line: 263, baseType: !216, size: 1536, align: 64, offset: 9088)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1536, align: 64, elements: !217)
!217 = !{!209, !218}
!218 = !DISubrange(count: 6)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !192, file: !91, line: 264, baseType: !220, size: 512, align: 64, offset: 10624)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 512, align: 64, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 4)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !192, file: !91, line: 265, baseType: !220, size: 512, align: 64, offset: 11136)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !192, file: !91, line: 266, baseType: !225, size: 384, align: 64, offset: 11648)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 384, align: 64, elements: !226)
!226 = !{!204}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !102, file: !91, line: 453, baseType: !228, size: 64, align: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !91, line: 293, baseType: !230)
!230 = !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 281, size: 97024, align: 64, elements: !231)
!231 = !{!232, !235, !236, !239, !242, !246, !247, !251, !252, !253}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !230, file: !91, line: 283, baseType: !233, size: 256, align: 64)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 256, align: 64, elements: !234)
!234 = !{!209}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !230, file: !91, line: 284, baseType: !220, size: 512, align: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !230, file: !91, line: 285, baseType: !237, size: 1536, align: 64, offset: 768)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1536, align: 64, elements: !238)
!238 = !{!204, !222}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !230, file: !91, line: 286, baseType: !240, size: 5120, align: 64, offset: 2304)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 5120, align: 64, elements: !241)
!241 = !{!214, !222}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !230, file: !91, line: 287, baseType: !243, size: 19200, align: 64, offset: 7424)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 19200, align: 64, elements: !244)
!244 = !{!214, !245}
!245 = !DISubrange(count: 15)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !230, file: !91, line: 288, baseType: !243, size: 19200, align: 64, offset: 26624)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !230, file: !91, line: 289, baseType: !248, size: 6400, align: 64, offset: 45824)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 6400, align: 64, elements: !249)
!249 = !{!214, !250}
!250 = !DISubrange(count: 5)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !230, file: !91, line: 290, baseType: !248, size: 6400, align: 64, offset: 52224)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !230, file: !91, line: 291, baseType: !243, size: 19200, align: 64, offset: 58624)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !230, file: !91, line: 292, baseType: !243, size: 19200, align: 64, offset: 77824)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !102, file: !91, line: 456, baseType: !255, size: 64, align: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !91, line: 313, baseType: !257)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !91, line: 308, size: 128, align: 64, elements: !258)
!258 = !{!259, !260, !261}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !257, file: !91, line: 310, baseType: !16, size: 32, align: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !257, file: !91, line: 311, baseType: !16, size: 32, align: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !257, file: !91, line: 312, baseType: !262, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !102, file: !91, line: 458, baseType: !16, size: 32, align: 32, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !102, file: !91, line: 459, baseType: !147, size: 64, align: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !102, file: !91, line: 460, baseType: !147, size: 64, align: 64, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !102, file: !91, line: 461, baseType: !147, size: 64, align: 64, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !102, file: !91, line: 462, baseType: !16, size: 32, align: 32, offset: 704)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !102, file: !91, line: 463, baseType: !147, size: 64, align: 64, offset: 768)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !102, file: !91, line: 464, baseType: !147, size: 64, align: 64, offset: 832)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !102, file: !91, line: 465, baseType: !147, size: 64, align: 64, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !102, file: !91, line: 467, baseType: !272, size: 64, align: 64, offset: 960)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !16}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !4, line: 45, baseType: !3)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !102, file: !91, line: 469, baseType: !277, size: 192, align: 32, offset: 1024)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, align: 32, elements: !278)
!278 = !{!204, !209}
!279 = !{!280}
!280 = !DISubrange(count: 100)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !94, file: !91, line: 480, baseType: !16, size: 32, align: 32, offset: 6464)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !94, file: !91, line: 481, baseType: !283, size: 32, align: 32, offset: 6496)
!283 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !94, file: !91, line: 482, baseType: !283, size: 32, align: 32, offset: 6528)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !94, file: !91, line: 483, baseType: !283, size: 32, align: 32, offset: 6560)
!286 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !91, line: 559, type: !92, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!287 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !91, line: 560, type: !92, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!288 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !91, line: 561, type: !92, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!289 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !91, line: 562, type: !92, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!290 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !91, line: 565, type: !13, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!291 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !91, line: 566, type: !292, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!293 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !91, line: 567, type: !294, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!295 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !91, line: 569, type: !140, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!296 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !91, line: 570, type: !140, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!297 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !91, line: 572, type: !16, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!298 = !DIGlobalVariable(name: "me_time", scope: !0, file: !91, line: 572, type: !16, isLocal: false, isDefinition: true, variable: i32* @me_time)
!299 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !91, line: 573, type: !300, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !4, line: 145, baseType: !302)
!302 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 103, size: 1920, align: 64, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !314, !315, !316, !317, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !302, file: !4, line: 105, baseType: !275, size: 32, align: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !302, file: !4, line: 106, baseType: !140, size: 32, align: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !302, file: !4, line: 107, baseType: !140, size: 32, align: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !302, file: !4, line: 108, baseType: !275, size: 32, align: 32, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !302, file: !4, line: 110, baseType: !275, size: 32, align: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !302, file: !4, line: 111, baseType: !275, size: 32, align: 32, offset: 160)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !302, file: !4, line: 112, baseType: !311, size: 256, align: 32, offset: 192)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, align: 32, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 8)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !302, file: !4, line: 115, baseType: !275, size: 32, align: 32, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !302, file: !4, line: 116, baseType: !140, size: 32, align: 32, offset: 480)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !302, file: !4, line: 117, baseType: !140, size: 32, align: 32, offset: 512)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !302, file: !4, line: 119, baseType: !318, size: 256, align: 32, offset: 544)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, align: 32, elements: !312)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !302, file: !4, line: 121, baseType: !318, size: 256, align: 32, offset: 800)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !302, file: !4, line: 122, baseType: !318, size: 256, align: 32, offset: 1056)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !302, file: !4, line: 124, baseType: !275, size: 32, align: 32, offset: 1312)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !302, file: !4, line: 125, baseType: !140, size: 32, align: 32, offset: 1344)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !302, file: !4, line: 127, baseType: !140, size: 32, align: 32, offset: 1376)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !302, file: !4, line: 128, baseType: !133, size: 64, align: 64, offset: 1408)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !302, file: !4, line: 130, baseType: !16, size: 32, align: 32, offset: 1472)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !302, file: !4, line: 131, baseType: !16, size: 32, align: 32, offset: 1504)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !302, file: !4, line: 132, baseType: !275, size: 32, align: 32, offset: 1536)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !302, file: !4, line: 133, baseType: !140, size: 32, align: 32, offset: 1568)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !302, file: !4, line: 134, baseType: !16, size: 32, align: 32, offset: 1600)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !302, file: !4, line: 135, baseType: !16, size: 32, align: 32, offset: 1632)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !302, file: !4, line: 136, baseType: !16, size: 32, align: 32, offset: 1664)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !302, file: !4, line: 138, baseType: !16, size: 32, align: 32, offset: 1696)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !302, file: !4, line: 139, baseType: !16, size: 32, align: 32, offset: 1728)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !302, file: !4, line: 141, baseType: !275, size: 32, align: 32, offset: 1760)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !302, file: !4, line: 142, baseType: !275, size: 32, align: 32, offset: 1792)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !302, file: !4, line: 143, baseType: !275, size: 32, align: 32, offset: 1824)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !302, file: !4, line: 144, baseType: !275, size: 32, align: 32, offset: 1856)
!338 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !91, line: 574, type: !339, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !4, line: 193, baseType: !341)
!341 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 149, size: 17056, align: 32, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !341, file: !4, line: 151, baseType: !275, size: 32, align: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !341, file: !4, line: 153, baseType: !140, size: 32, align: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !341, file: !4, line: 154, baseType: !275, size: 32, align: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !341, file: !4, line: 155, baseType: !275, size: 32, align: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !341, file: !4, line: 156, baseType: !275, size: 32, align: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !341, file: !4, line: 157, baseType: !275, size: 32, align: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !341, file: !4, line: 158, baseType: !140, size: 32, align: 32, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !341, file: !4, line: 159, baseType: !140, size: 32, align: 32, offset: 224)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !341, file: !4, line: 160, baseType: !140, size: 32, align: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !341, file: !4, line: 162, baseType: !275, size: 32, align: 32, offset: 288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !341, file: !4, line: 163, baseType: !311, size: 256, align: 32, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !341, file: !4, line: 165, baseType: !140, size: 32, align: 32, offset: 576)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !341, file: !4, line: 166, baseType: !140, size: 32, align: 32, offset: 608)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !341, file: !4, line: 167, baseType: !140, size: 32, align: 32, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !341, file: !4, line: 168, baseType: !140, size: 32, align: 32, offset: 672)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !341, file: !4, line: 170, baseType: !140, size: 32, align: 32, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !341, file: !4, line: 172, baseType: !275, size: 32, align: 32, offset: 736)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !341, file: !4, line: 173, baseType: !16, size: 32, align: 32, offset: 768)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !341, file: !4, line: 174, baseType: !16, size: 32, align: 32, offset: 800)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !341, file: !4, line: 175, baseType: !140, size: 32, align: 32, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !341, file: !4, line: 177, baseType: !364, size: 8192, align: 32, offset: 864)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8192, align: 32, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !341, file: !4, line: 178, baseType: !140, size: 32, align: 32, offset: 9056)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !341, file: !4, line: 179, baseType: !275, size: 32, align: 32, offset: 9088)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !341, file: !4, line: 180, baseType: !140, size: 32, align: 32, offset: 9120)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !341, file: !4, line: 181, baseType: !140, size: 32, align: 32, offset: 9152)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !341, file: !4, line: 182, baseType: !275, size: 32, align: 32, offset: 9184)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !341, file: !4, line: 184, baseType: !275, size: 32, align: 32, offset: 9216)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !341, file: !4, line: 185, baseType: !275, size: 32, align: 32, offset: 9248)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !341, file: !4, line: 186, baseType: !275, size: 32, align: 32, offset: 9280)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !341, file: !4, line: 187, baseType: !140, size: 32, align: 32, offset: 9312)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !341, file: !4, line: 188, baseType: !140, size: 32, align: 32, offset: 9344)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !341, file: !4, line: 189, baseType: !140, size: 32, align: 32, offset: 9376)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !341, file: !4, line: 190, baseType: !140, size: 32, align: 32, offset: 9408)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !341, file: !4, line: 191, baseType: !275, size: 32, align: 32, offset: 9440)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !341, file: !4, line: 192, baseType: !381, size: 7584, align: 32, offset: 9472)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !4, line: 99, baseType: !382)
!382 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 63, size: 7584, align: 32, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !382, file: !4, line: 65, baseType: !275, size: 32, align: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !382, file: !4, line: 66, baseType: !140, size: 32, align: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !382, file: !4, line: 67, baseType: !140, size: 32, align: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !382, file: !4, line: 68, baseType: !140, size: 32, align: 32, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !382, file: !4, line: 69, baseType: !275, size: 32, align: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !382, file: !4, line: 70, baseType: !275, size: 32, align: 32, offset: 160)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !382, file: !4, line: 71, baseType: !275, size: 32, align: 32, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !382, file: !4, line: 72, baseType: !140, size: 32, align: 32, offset: 224)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !382, file: !4, line: 73, baseType: !275, size: 32, align: 32, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !382, file: !4, line: 74, baseType: !275, size: 32, align: 32, offset: 288)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !382, file: !4, line: 75, baseType: !140, size: 32, align: 32, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !382, file: !4, line: 76, baseType: !140, size: 32, align: 32, offset: 352)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !382, file: !4, line: 77, baseType: !140, size: 32, align: 32, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !382, file: !4, line: 78, baseType: !275, size: 32, align: 32, offset: 416)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !382, file: !4, line: 79, baseType: !140, size: 32, align: 32, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !382, file: !4, line: 80, baseType: !140, size: 32, align: 32, offset: 480)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !382, file: !4, line: 81, baseType: !275, size: 32, align: 32, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !382, file: !4, line: 82, baseType: !140, size: 32, align: 32, offset: 544)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !382, file: !4, line: 83, baseType: !140, size: 32, align: 32, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !382, file: !4, line: 84, baseType: !275, size: 32, align: 32, offset: 608)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !382, file: !4, line: 85, baseType: !275, size: 32, align: 32, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !382, file: !4, line: 86, baseType: !406, size: 3296, align: 32, offset: 672)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !4, line: 60, baseType: !407)
!407 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 3296, align: 32, elements: !408)
!408 = !{!409, !410, !411, !412, !416, !417, !418, !419, !420, !421}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !407, file: !4, line: 50, baseType: !140, size: 32, align: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !407, file: !4, line: 51, baseType: !140, size: 32, align: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !407, file: !4, line: 52, baseType: !140, size: 32, align: 32, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !407, file: !4, line: 53, baseType: !413, size: 1024, align: 32, offset: 96)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 1024, align: 32, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !407, file: !4, line: 54, baseType: !413, size: 1024, align: 32, offset: 1120)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !407, file: !4, line: 55, baseType: !413, size: 1024, align: 32, offset: 2144)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !407, file: !4, line: 56, baseType: !140, size: 32, align: 32, offset: 3168)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !407, file: !4, line: 57, baseType: !140, size: 32, align: 32, offset: 3200)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !407, file: !4, line: 58, baseType: !140, size: 32, align: 32, offset: 3232)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !407, file: !4, line: 59, baseType: !140, size: 32, align: 32, offset: 3264)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !382, file: !4, line: 87, baseType: !275, size: 32, align: 32, offset: 3968)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !382, file: !4, line: 88, baseType: !406, size: 3296, align: 32, offset: 4000)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !382, file: !4, line: 90, baseType: !275, size: 32, align: 32, offset: 7296)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !382, file: !4, line: 91, baseType: !275, size: 32, align: 32, offset: 7328)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !382, file: !4, line: 92, baseType: !275, size: 32, align: 32, offset: 7360)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !382, file: !4, line: 93, baseType: !140, size: 32, align: 32, offset: 7392)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !382, file: !4, line: 94, baseType: !140, size: 32, align: 32, offset: 7424)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !382, file: !4, line: 95, baseType: !140, size: 32, align: 32, offset: 7456)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !382, file: !4, line: 96, baseType: !140, size: 32, align: 32, offset: 7488)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !382, file: !4, line: 97, baseType: !140, size: 32, align: 32, offset: 7520)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !382, file: !4, line: 98, baseType: !140, size: 32, align: 32, offset: 7552)
!433 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !91, line: 578, type: !16, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!434 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !91, line: 579, type: !16, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!435 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !91, line: 583, type: !436, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!437 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !91, line: 584, type: !436, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!438 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !91, line: 585, type: !439, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!440 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !91, line: 586, type: !16, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!441 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !91, line: 587, type: !16, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!442 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !91, line: 588, type: !16, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!443 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !91, line: 589, type: !16, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!444 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !91, line: 592, type: !13, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!445 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !91, line: 593, type: !13, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!446 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !91, line: 595, type: !292, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!447 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !91, line: 596, type: !292, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!448 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !91, line: 598, type: !13, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!449 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !91, line: 599, type: !292, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!450 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !91, line: 601, type: !13, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!451 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !91, line: 602, type: !292, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!452 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !91, line: 604, type: !453, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!456 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!457 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !91, line: 605, type: !454, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!458 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !91, line: 608, type: !459, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!460 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !91, line: 609, type: !459, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!461 = !DIGlobalVariable(name: "intras", scope: !0, file: !91, line: 610, type: !16, isLocal: false, isDefinition: true, variable: i32* @intras)
!462 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !91, line: 612, type: !16, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!463 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !91, line: 612, type: !16, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!464 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !91, line: 612, type: !16, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!465 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !91, line: 613, type: !16, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!466 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !91, line: 613, type: !16, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!467 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !91, line: 613, type: !16, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!468 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !91, line: 614, type: !16, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!469 = !DIGlobalVariable(name: "errortext", scope: !0, file: !91, line: 617, type: !470, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 2400, align: 8, elements: !472)
!471 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!472 = !{!473}
!473 = !DISubrange(count: 300)
!474 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !91, line: 620, type: !475, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8192, align: 32, elements: !476)
!476 = !{!477, !477}
!477 = !DISubrange(count: 16)
!478 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !91, line: 620, type: !475, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!479 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !91, line: 620, type: !475, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!480 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !91, line: 621, type: !475, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!481 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !91, line: 621, type: !475, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!482 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !91, line: 621, type: !475, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!483 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !91, line: 622, type: !484, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 24576, align: 32, elements: !485)
!485 = !{!204, !477, !477}
!486 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !91, line: 623, type: !487, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1024, align: 32, elements: !488)
!488 = !{!209, !222, !222}
!489 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !91, line: 623, type: !487, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!490 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !91, line: 624, type: !487, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!491 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !91, line: 624, type: !487, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!492 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !91, line: 625, type: !493, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, align: 32, elements: !494)
!494 = !{!222, !222}
!495 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !91, line: 625, type: !496, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, align: 32, elements: !497)
!497 = !{!477}
!498 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !91, line: 1201, type: !499, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !91, line: 1190, baseType: !501)
!501 = !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 1182, size: 192, align: 32, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !501, file: !91, line: 1184, baseType: !16, size: 32, align: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !501, file: !91, line: 1185, baseType: !16, size: 32, align: 32, offset: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !501, file: !91, line: 1186, baseType: !16, size: 32, align: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !501, file: !91, line: 1187, baseType: !16, size: 32, align: 32, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !501, file: !91, line: 1188, baseType: !16, size: 32, align: 32, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !501, file: !91, line: 1189, baseType: !16, size: 32, align: 32, offset: 160)
!509 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !91, line: 1202, type: !510, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !91, line: 1177, baseType: !512)
!512 = !DICompositeType(tag: DW_TAG_structure_type, file: !91, line: 1145, size: 26880, align: 64, elements: !513)
!513 = !{!514, !516, !517, !518, !519, !520, !521, !522, !523, !525, !526, !527, !528, !529, !534, !535, !539, !540, !541, !542, !544, !545, !546, !547, !548, !549, !550}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !512, file: !91, line: 1147, baseType: !515, size: 64, align: 64)
!515 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !512, file: !91, line: 1149, baseType: !475, size: 8192, align: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !512, file: !91, line: 1150, baseType: !475, size: 8192, align: 32, offset: 8256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !512, file: !91, line: 1150, baseType: !475, size: 8192, align: 32, offset: 16448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !512, file: !91, line: 1151, baseType: !439, size: 64, align: 64, offset: 24640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !512, file: !91, line: 1152, baseType: !436, size: 64, align: 64, offset: 24704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !512, file: !91, line: 1153, baseType: !16, size: 32, align: 32, offset: 24768)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !512, file: !91, line: 1155, baseType: !16, size: 32, align: 32, offset: 24800)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !512, file: !91, line: 1157, baseType: !524, size: 128, align: 32, offset: 24832)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, align: 32, elements: !221)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !512, file: !91, line: 1157, baseType: !524, size: 128, align: 32, offset: 24960)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !512, file: !91, line: 1158, baseType: !294, size: 64, align: 64, offset: 25088)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !512, file: !91, line: 1159, baseType: !496, size: 512, align: 32, offset: 25152)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !512, file: !91, line: 1160, baseType: !16, size: 32, align: 32, offset: 25664)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !512, file: !91, line: 1161, baseType: !530, size: 64, align: 64, offset: 25728)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !91, line: 62, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !532, line: 30, baseType: !533)
!532 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!533 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !512, file: !91, line: 1162, baseType: !16, size: 32, align: 32, offset: 25792)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !512, file: !91, line: 1163, baseType: !536, size: 64, align: 64, offset: 25856)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !512, file: !91, line: 1164, baseType: !536, size: 64, align: 64, offset: 25920)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !512, file: !91, line: 1165, baseType: !536, size: 64, align: 64, offset: 25984)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !512, file: !91, line: 1166, baseType: !536, size: 64, align: 64, offset: 26048)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !512, file: !91, line: 1167, baseType: !543, size: 512, align: 16, offset: 26112)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 512, align: 16, elements: !488)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !512, file: !91, line: 1168, baseType: !16, size: 32, align: 32, offset: 26624)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !512, file: !91, line: 1169, baseType: !16, size: 32, align: 32, offset: 26656)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !512, file: !91, line: 1171, baseType: !16, size: 32, align: 32, offset: 26688)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !512, file: !91, line: 1172, baseType: !16, size: 32, align: 32, offset: 26720)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !512, file: !91, line: 1174, baseType: !16, size: 32, align: 32, offset: 26752)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !512, file: !91, line: 1175, baseType: !16, size: 32, align: 32, offset: 26784)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !512, file: !91, line: 1176, baseType: !16, size: 32, align: 32, offset: 26816)
!551 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !91, line: 1203, type: !511, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!552 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !91, line: 1203, type: !511, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!553 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !91, line: 1204, type: !511, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!554 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !91, line: 1204, type: !511, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!555 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !91, line: 1230, type: !556, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !558, line: 153, baseType: !559)
!558 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !558, line: 122, size: 1216, align: 64, elements: !560)
!560 = !{!561, !563, !564, !565, !566, !567, !572, !573, !575, !579, !584, !593, !599, !600, !603, !604, !606, !610, !611, !612}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !559, file: !558, line: 123, baseType: !562, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !559, file: !558, line: 124, baseType: !16, size: 32, align: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !559, file: !558, line: 125, baseType: !16, size: 32, align: 32, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !559, file: !558, line: 126, baseType: !456, size: 16, align: 16, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !559, file: !558, line: 127, baseType: !456, size: 16, align: 16, offset: 144)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !559, file: !558, line: 128, baseType: !568, size: 128, align: 64, offset: 192)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !558, line: 88, size: 128, align: 64, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !568, file: !558, line: 89, baseType: !562, size: 64, align: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !568, file: !558, line: 90, baseType: !16, size: 32, align: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !559, file: !558, line: 129, baseType: !16, size: 32, align: 32, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !559, file: !558, line: 132, baseType: !574, size: 64, align: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !559, file: !558, line: 133, baseType: !576, size: 64, align: 64, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!16, !574}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !559, file: !558, line: 134, baseType: !580, size: 64, align: 64, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!16, !574, !583, !16}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !559, file: !558, line: 135, baseType: !585, size: 64, align: 64, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64, align: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!588, !574, !588, !16}
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !558, line: 77, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !590, line: 71, baseType: !591)
!590 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !592, line: 46, baseType: !533)
!592 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !559, file: !558, line: 136, baseType: !594, size: 64, align: 64, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!16, !574, !597, !16}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !559, file: !558, line: 139, baseType: !568, size: 128, align: 64, offset: 704)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !559, file: !558, line: 140, baseType: !601, size: 64, align: 64, offset: 832)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64, align: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !558, line: 94, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !559, file: !558, line: 141, baseType: !16, size: 32, align: 32, offset: 896)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !559, file: !558, line: 144, baseType: !605, size: 24, align: 8, offset: 928)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 24, align: 8, elements: !226)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !559, file: !558, line: 145, baseType: !607, size: 8, align: 8, offset: 952)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 8, align: 8, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 1)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !559, file: !558, line: 148, baseType: !568, size: 128, align: 64, offset: 960)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !559, file: !558, line: 151, baseType: !16, size: 32, align: 32, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !559, file: !558, line: 152, baseType: !588, size: 64, align: 64, offset: 1152)
!613 = !DIGlobalVariable(name: "p_log", scope: !0, file: !91, line: 1231, type: !556, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!614 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !91, line: 1232, type: !556, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!615 = !DIGlobalVariable(name: "p_in", scope: !0, file: !91, line: 1233, type: !16, isLocal: false, isDefinition: true, variable: i32* @p_in)
!616 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !91, line: 1234, type: !16, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!617 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !91, line: 1237, type: !618, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 640, align: 32, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 20)
!621 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !91, line: 1238, type: !618, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!622 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !91, line: 1239, type: !618, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!623 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !91, line: 1240, type: !618, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!624 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !91, line: 1241, type: !618, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!625 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !91, line: 1242, type: !618, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!626 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !91, line: 1456, type: !16, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!627 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !91, line: 1465, type: !16, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!628 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !91, line: 1466, type: !16, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!629 = !DIGlobalVariable(name: "line", scope: !0, file: !1, line: 40, type: !630, isLocal: true, isDefinition: true, variable: [16 x i16]* @line)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, align: 16, elements: !497)
!631 = !{i32 2, !"Dwarf Version", i32 2}
!632 = !{i32 2, !"Debug Info Version", i32 700000003}
!633 = !{i32 1, !"PIC Level", i32 2}
!634 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!635 = !DIExpression()
!636 = !DILocation(line: 23, column: 25, scope: !10)
!637 = !DILocation(line: 23, column: 34, scope: !10)
!638 = !DILocation(line: 23, column: 41, scope: !10)
!639 = !DILocation(line: 23, column: 50, scope: !10)
!640 = !DILocation(line: 25, column: 40, scope: !10)
!641 = !DILocation(line: 25, column: 3, scope: !10)
!642 = !DILocation(line: 25, column: 22, scope: !10)
!643 = !{!644, !644, i64 0}
!644 = !{!"any pointer", !645, i64 0}
!645 = !{!"omnipotent char", !646, i64 0}
!646 = !{!"Simple C/C++ TBAA"}
!647 = !DILocation(line: 25, column: 44, scope: !10)
!648 = !{!649, !649, i64 0}
!649 = !{!"short", !645, i64 0}
!650 = !DILocation(line: 26, column: 1, scope: !10)
!651 = !DILocation(line: 28, column: 24, scope: !22)
!652 = !DILocation(line: 28, column: 33, scope: !22)
!653 = !DILocation(line: 28, column: 40, scope: !22)
!654 = !DILocation(line: 28, column: 49, scope: !22)
!655 = !DILocation(line: 28, column: 58, scope: !22)
!656 = !DILocation(line: 30, column: 9, scope: !22)
!657 = !DILocation(line: 30, column: 15, scope: !22)
!658 = !DILocation(line: 30, column: 3, scope: !22)
!659 = !DILocation(line: 30, column: 19, scope: !22)
!660 = !DILocation(line: 31, column: 1, scope: !22)
!661 = !DILocation(line: 42, column: 31, scope: !31)
!662 = !DILocation(line: 42, column: 40, scope: !31)
!663 = !DILocation(line: 42, column: 47, scope: !31)
!664 = !DILocation(line: 42, column: 54, scope: !31)
!665 = !DILocation(line: 42, column: 66, scope: !31)
!666 = !DILocation(line: 44, column: 17, scope: !31)
!667 = !DILocation(line: 44, column: 23, scope: !31)
!668 = !DILocation(line: 44, column: 11, scope: !31)
!669 = !DILocation(line: 44, column: 3, scope: !31)
!670 = !DILocation(line: 48, column: 30, scope: !40)
!671 = !DILocation(line: 48, column: 39, scope: !40)
!672 = !DILocation(line: 48, column: 46, scope: !40)
!673 = !DILocation(line: 48, column: 53, scope: !40)
!674 = !DILocation(line: 48, column: 65, scope: !40)
!675 = !DILocation(line: 53, column: 16, scope: !40)
!676 = !DILocation(line: 53, column: 39, scope: !40)
!677 = !DILocation(line: 53, column: 11, scope: !40)
!678 = !DILocation(line: 51, column: 10, scope: !40)
!679 = !DILocation(line: 55, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !40, file: !1, line: 55, column: 7)
!681 = !DILocation(line: 55, column: 7, scope: !40)
!682 = !DILocation(line: 57, column: 12, scope: !683)
!683 = distinct !DILexicalBlock(scope: !680, file: !1, line: 55, column: 14)
!684 = !DILocation(line: 50, column: 10, scope: !40)
!685 = !DILocation(line: 50, column: 7, scope: !40)
!686 = !DILocation(line: 58, column: 19, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !1, line: 58, column: 5)
!688 = distinct !DILexicalBlock(scope: !683, file: !1, line: 58, column: 5)
!689 = !DILocation(line: 58, column: 5, scope: !688)
!690 = !DILocation(line: 62, column: 5, scope: !691)
!691 = distinct !DILexicalBlock(scope: !683, file: !1, line: 62, column: 5)
!692 = !DILocation(line: 59, column: 19, scope: !687)
!693 = !DILocation(line: 59, column: 13, scope: !687)
!694 = !DILocation(line: 59, column: 7, scope: !687)
!695 = !DILocation(line: 59, column: 17, scope: !687)
!696 = !DILocation(line: 63, column: 19, scope: !697)
!697 = distinct !DILexicalBlock(scope: !691, file: !1, line: 62, column: 5)
!698 = !DILocation(line: 63, column: 13, scope: !697)
!699 = !DILocation(line: 63, column: 7, scope: !697)
!700 = !DILocation(line: 63, column: 17, scope: !697)
!701 = !DILocation(line: 62, column: 19, scope: !697)
!702 = !DILocation(line: 65, column: 21, scope: !703)
!703 = distinct !DILexicalBlock(scope: !680, file: !1, line: 65, column: 12)
!704 = !DILocation(line: 65, column: 14, scope: !703)
!705 = !DILocation(line: 65, column: 12, scope: !680)
!706 = !DILocation(line: 68, column: 19, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !1, line: 68, column: 5)
!708 = distinct !DILexicalBlock(scope: !709, file: !1, line: 68, column: 5)
!709 = distinct !DILexicalBlock(scope: !703, file: !1, line: 65, column: 27)
!710 = !DILocation(line: 68, column: 5, scope: !708)
!711 = !DILocation(line: 69, column: 19, scope: !707)
!712 = !DILocation(line: 69, column: 13, scope: !707)
!713 = !DILocation(line: 69, column: 7, scope: !707)
!714 = !DILocation(line: 69, column: 17, scope: !707)
!715 = !DILocation(line: 71, column: 13, scope: !709)
!716 = !DILocation(line: 72, column: 14, scope: !717)
!717 = distinct !DILexicalBlock(scope: !709, file: !1, line: 72, column: 5)
!718 = !DILocation(line: 72, column: 30, scope: !719)
!719 = distinct !DILexicalBlock(scope: !717, file: !1, line: 72, column: 5)
!720 = !DILocation(line: 72, column: 5, scope: !717)
!721 = !DILocation(line: 73, column: 30, scope: !719)
!722 = !DILocation(line: 73, column: 19, scope: !719)
!723 = !DILocation(line: 73, column: 13, scope: !719)
!724 = !DILocation(line: 73, column: 7, scope: !719)
!725 = !DILocation(line: 73, column: 17, scope: !719)
!726 = !DILocation(line: 76, column: 13, scope: !703)
!727 = !DILocation(line: 76, column: 5, scope: !703)
!728 = !DILocation(line: 79, column: 1, scope: !40)
!729 = !DILocation(line: 82, column: 23, scope: !50)
!730 = !DILocation(line: 82, column: 37, scope: !50)
!731 = !DILocation(line: 82, column: 46, scope: !50)
!732 = !DILocation(line: 82, column: 53, scope: !50)
!733 = !DILocation(line: 82, column: 60, scope: !50)
!734 = !DILocation(line: 82, column: 72, scope: !50)
!735 = !DILocation(line: 84, column: 17, scope: !50)
!736 = !DILocation(line: 84, column: 14, scope: !50)
!737 = !DILocation(line: 84, column: 24, scope: !50)
!738 = !DILocation(line: 84, column: 3, scope: !50)
!739 = !DILocation(line: 88, column: 22, scope: !60)
!740 = !DILocation(line: 88, column: 35, scope: !60)
!741 = !DILocation(line: 88, column: 44, scope: !60)
!742 = !DILocation(line: 88, column: 51, scope: !60)
!743 = !DILocation(line: 88, column: 58, scope: !60)
!744 = !DILocation(line: 88, column: 70, scope: !60)
!745 = !DILocation(line: 93, column: 16, scope: !60)
!746 = !DILocation(line: 93, column: 39, scope: !60)
!747 = !DILocation(line: 93, column: 14, scope: !60)
!748 = !DILocation(line: 91, column: 10, scope: !60)
!749 = !DILocation(line: 95, column: 9, scope: !750)
!750 = distinct !DILexicalBlock(scope: !60, file: !1, line: 95, column: 7)
!751 = !DILocation(line: 95, column: 7, scope: !60)
!752 = !DILocation(line: 97, column: 12, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !1, line: 96, column: 3)
!754 = !DILocation(line: 90, column: 10, scope: !60)
!755 = !DILocation(line: 90, column: 7, scope: !60)
!756 = !DILocation(line: 98, column: 19, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !1, line: 98, column: 5)
!758 = distinct !DILexicalBlock(scope: !753, file: !1, line: 98, column: 5)
!759 = !DILocation(line: 98, column: 5, scope: !758)
!760 = !DILocation(line: 103, column: 5, scope: !761)
!761 = distinct !DILexicalBlock(scope: !753, file: !1, line: 103, column: 5)
!762 = !DILocation(line: 100, column: 19, scope: !763)
!763 = distinct !DILexicalBlock(scope: !757, file: !1, line: 99, column: 5)
!764 = !DILocation(line: 100, column: 13, scope: !763)
!765 = !DILocation(line: 100, column: 7, scope: !763)
!766 = !DILocation(line: 100, column: 17, scope: !763)
!767 = !DILocation(line: 104, column: 19, scope: !768)
!768 = distinct !DILexicalBlock(scope: !761, file: !1, line: 103, column: 5)
!769 = !DILocation(line: 104, column: 13, scope: !768)
!770 = !DILocation(line: 104, column: 7, scope: !768)
!771 = !DILocation(line: 104, column: 17, scope: !768)
!772 = !DILocation(line: 106, column: 21, scope: !773)
!773 = distinct !DILexicalBlock(scope: !750, file: !1, line: 106, column: 12)
!774 = !DILocation(line: 106, column: 14, scope: !773)
!775 = !DILocation(line: 106, column: 12, scope: !750)
!776 = !DILocation(line: 109, column: 19, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !1, line: 109, column: 5)
!778 = distinct !DILexicalBlock(scope: !779, file: !1, line: 109, column: 5)
!779 = distinct !DILexicalBlock(scope: !773, file: !1, line: 107, column: 3)
!780 = !DILocation(line: 109, column: 5, scope: !778)
!781 = !DILocation(line: 111, column: 19, scope: !782)
!782 = distinct !DILexicalBlock(scope: !777, file: !1, line: 110, column: 5)
!783 = !DILocation(line: 111, column: 13, scope: !782)
!784 = !DILocation(line: 111, column: 7, scope: !782)
!785 = !DILocation(line: 111, column: 17, scope: !782)
!786 = !DILocation(line: 113, column: 13, scope: !779)
!787 = !DILocation(line: 114, column: 14, scope: !788)
!788 = distinct !DILexicalBlock(scope: !779, file: !1, line: 114, column: 5)
!789 = !DILocation(line: 114, column: 30, scope: !790)
!790 = distinct !DILexicalBlock(scope: !788, file: !1, line: 114, column: 5)
!791 = !DILocation(line: 114, column: 5, scope: !788)
!792 = !DILocation(line: 116, column: 30, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !1, line: 115, column: 5)
!794 = !DILocation(line: 116, column: 19, scope: !793)
!795 = !DILocation(line: 116, column: 13, scope: !793)
!796 = !DILocation(line: 116, column: 7, scope: !793)
!797 = !DILocation(line: 116, column: 17, scope: !793)
!798 = !DILocation(line: 121, column: 17, scope: !799)
!799 = distinct !DILexicalBlock(scope: !773, file: !1, line: 120, column: 3)
!800 = !DILocation(line: 121, column: 5, scope: !799)
!801 = !DILocation(line: 125, column: 1, scope: !60)
!802 = !DILocation(line: 133, column: 27, scope: !71)
!803 = !DILocation(line: 133, column: 36, scope: !71)
!804 = !DILocation(line: 133, column: 43, scope: !71)
!805 = !DILocation(line: 133, column: 50, scope: !71)
!806 = !DILocation(line: 133, column: 62, scope: !71)
!807 = !DILocation(line: 135, column: 42, scope: !71)
!808 = !DILocation(line: 135, column: 7, scope: !71)
!809 = !DILocation(line: 136, column: 43, scope: !71)
!810 = !DILocation(line: 136, column: 7, scope: !71)
!811 = !DILocation(line: 138, column: 9, scope: !71)
!812 = !DILocation(line: 139, column: 9, scope: !71)
!813 = !DILocation(line: 141, column: 9, scope: !814)
!814 = distinct !DILexicalBlock(scope: !71, file: !1, line: 141, column: 7)
!815 = !DILocation(line: 141, column: 7, scope: !71)
!816 = !DILocation(line: 143, column: 11, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !1, line: 143, column: 9)
!818 = distinct !DILexicalBlock(scope: !814, file: !1, line: 142, column: 3)
!819 = !DILocation(line: 143, column: 9, scope: !818)
!820 = !DILocation(line: 144, column: 25, scope: !817)
!821 = !DILocation(line: 144, column: 14, scope: !817)
!822 = !DILocation(line: 144, column: 20, scope: !817)
!823 = !DILocation(line: 144, column: 7, scope: !817)
!824 = !DILocation(line: 145, column: 11, scope: !825)
!825 = distinct !DILexicalBlock(scope: !818, file: !1, line: 145, column: 9)
!826 = !DILocation(line: 146, column: 35, scope: !825)
!827 = !DILocation(line: 146, column: 14, scope: !825)
!828 = !DILocation(line: 145, column: 9, scope: !818)
!829 = !DILocation(line: 146, column: 29, scope: !825)
!830 = !DILocation(line: 146, column: 26, scope: !825)
!831 = !DILocation(line: 146, column: 7, scope: !825)
!832 = !DILocation(line: 147, column: 12, scope: !818)
!833 = !DILocation(line: 147, column: 5, scope: !818)
!834 = !DILocation(line: 150, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !71, file: !1, line: 150, column: 7)
!836 = !DILocation(line: 152, column: 11, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !1, line: 152, column: 9)
!838 = distinct !DILexicalBlock(scope: !835, file: !1, line: 151, column: 3)
!839 = !DILocation(line: 150, column: 7, scope: !71)
!840 = !DILocation(line: 152, column: 9, scope: !838)
!841 = !DILocation(line: 153, column: 33, scope: !837)
!842 = !DILocation(line: 153, column: 30, scope: !837)
!843 = !DILocation(line: 153, column: 14, scope: !837)
!844 = !DILocation(line: 153, column: 20, scope: !837)
!845 = !DILocation(line: 153, column: 7, scope: !837)
!846 = !DILocation(line: 154, column: 11, scope: !847)
!847 = distinct !DILexicalBlock(scope: !838, file: !1, line: 154, column: 9)
!848 = !DILocation(line: 155, column: 43, scope: !847)
!849 = !DILocation(line: 155, column: 40, scope: !847)
!850 = !DILocation(line: 155, column: 14, scope: !847)
!851 = !DILocation(line: 154, column: 9, scope: !838)
!852 = !DILocation(line: 155, column: 29, scope: !847)
!853 = !DILocation(line: 155, column: 26, scope: !847)
!854 = !DILocation(line: 155, column: 7, scope: !847)
!855 = !DILocation(line: 156, column: 12, scope: !838)
!856 = !DILocation(line: 156, column: 5, scope: !838)
!857 = !DILocation(line: 159, column: 7, scope: !71)
!858 = !DILocation(line: 160, column: 12, scope: !859)
!859 = distinct !DILexicalBlock(scope: !71, file: !1, line: 159, column: 7)
!860 = !DILocation(line: 160, column: 18, scope: !859)
!861 = !DILocation(line: 160, column: 5, scope: !859)
!862 = !DILocation(line: 161, column: 9, scope: !863)
!863 = distinct !DILexicalBlock(scope: !71, file: !1, line: 161, column: 7)
!864 = !DILocation(line: 162, column: 12, scope: !863)
!865 = !DILocation(line: 161, column: 7, scope: !71)
!866 = !DILocation(line: 162, column: 27, scope: !863)
!867 = !DILocation(line: 162, column: 24, scope: !863)
!868 = !DILocation(line: 162, column: 5, scope: !863)
!869 = !DILocation(line: 164, column: 10, scope: !71)
!870 = !DILocation(line: 164, column: 3, scope: !71)
!871 = !DILocation(line: 165, column: 1, scope: !71)
!872 = !DILocation(line: 167, column: 28, scope: !82)
!873 = !DILocation(line: 167, column: 37, scope: !82)
!874 = !DILocation(line: 167, column: 44, scope: !82)
!875 = !DILocation(line: 167, column: 51, scope: !82)
!876 = !DILocation(line: 167, column: 63, scope: !82)
!877 = !DILocation(line: 169, column: 47, scope: !82)
!878 = !DILocation(line: 169, column: 10, scope: !82)
!879 = !DILocation(line: 169, column: 29, scope: !82)
!880 = !DILocation(line: 169, column: 3, scope: !82)
