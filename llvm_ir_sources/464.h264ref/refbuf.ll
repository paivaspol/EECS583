; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

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

; Function Attrs: nounwind optsize uwtable
define void @PutPel_14(i16** nocapture %Pic, i32 %y, i32 %x, i16 zeroext %val) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16** %Pic}, i64 0, metadata !19), !dbg !625
  tail call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !20), !dbg !625
  tail call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !21), !dbg !625
  tail call void @llvm.dbg.value(metadata !{i16 %val}, i64 0, metadata !22), !dbg !625
  %add = add nsw i32 %x, 16, !dbg !626
  %idxprom = sext i32 %add to i64, !dbg !626
  %add1 = add nsw i32 %y, 16, !dbg !626
  %idxprom2 = sext i32 %add1 to i64, !dbg !626
  %arrayidx = getelementptr inbounds i16** %Pic, i64 %idxprom2, !dbg !626
  %0 = load i16** %arrayidx, align 8, !dbg !626, !tbaa !627
  %arrayidx3 = getelementptr inbounds i16* %0, i64 %idxprom, !dbg !626
  store i16 %val, i16* %arrayidx3, align 2, !dbg !626, !tbaa !630
  ret void, !dbg !631
}

; Function Attrs: nounwind optsize uwtable
define void @PutPel_11(i16* nocapture %Pic, i32 %y, i32 %x, i16 zeroext %val, i32 %width) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16* %Pic}, i64 0, metadata !27), !dbg !632
  tail call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !28), !dbg !632
  tail call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !29), !dbg !632
  tail call void @llvm.dbg.value(metadata !{i16 %val}, i64 0, metadata !30), !dbg !632
  tail call void @llvm.dbg.value(metadata !{i32 %width}, i64 0, metadata !31), !dbg !632
  %mul = mul nsw i32 %width, %y, !dbg !633
  %add = add nsw i32 %mul, %x, !dbg !633
  %idxprom = sext i32 %add to i64, !dbg !633
  %arrayidx = getelementptr inbounds i16* %Pic, i64 %idxprom, !dbg !633
  store i16 %val, i16* %arrayidx, align 2, !dbg !633, !tbaa !630
  ret void, !dbg !634
}

; Function Attrs: nounwind optsize readnone uwtable
define i16* @FastLine16Y_11(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16* %Pic}, i64 0, metadata !36), !dbg !635
  tail call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !37), !dbg !635
  tail call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !38), !dbg !635
  tail call void @llvm.dbg.value(metadata !{i32 %height}, i64 0, metadata !39), !dbg !635
  tail call void @llvm.dbg.value(metadata !{i32 %width}, i64 0, metadata !40), !dbg !635
  %mul = mul nsw i32 %width, %y, !dbg !636
  %add = add nsw i32 %mul, %x, !dbg !636
  %idxprom = sext i32 %add to i64, !dbg !636
  %arrayidx = getelementptr inbounds i16* %Pic, i64 %idxprom, !dbg !636
  ret i16* %arrayidx, !dbg !636
}

; Function Attrs: nounwind optsize uwtable
define i16* @UMVLine16Y_11(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16* %Pic}, i64 0, metadata !43), !dbg !637
  tail call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !44), !dbg !637
  tail call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !45), !dbg !637
  tail call void @llvm.dbg.value(metadata !{i32 %height}, i64 0, metadata !46), !dbg !637
  tail call void @llvm.dbg.value(metadata !{i32 %width}, i64 0, metadata !47), !dbg !637
  %sub = add nsw i32 %height, -1, !dbg !638
  %cmp = icmp sle i32 %height, %y, !dbg !638
  %sub.y = select i1 %cmp, i32 %sub, i32 %y, !dbg !638
  %cmp2 = icmp slt i32 %sub.y, 0, !dbg !638
  %.sub.y = select i1 %cmp2, i32 0, i32 %sub.y, !dbg !638
  %mul = mul nsw i32 %.sub.y, %width, !dbg !638
  %idxprom = sext i32 %mul to i64, !dbg !638
  %arrayidx = getelementptr inbounds i16* %Pic, i64 %idxprom, !dbg !638
  tail call void @llvm.dbg.value(metadata !{i16* %arrayidx}, i64 0, metadata !50), !dbg !638
  %cmp14 = icmp slt i32 %x, 0, !dbg !639
  br i1 %cmp14, label %if.then, label %if.else, !dbg !639

if.then:                                          ; preds = %entry
  %add = add i32 %x, 16, !dbg !640
  %cmp15 = icmp sgt i32 %add, 0, !dbg !640
  %.add = select i1 %cmp15, i32 0, i32 %add, !dbg !640
  tail call void @llvm.dbg.value(metadata !{i32 %.add}, i64 0, metadata !49), !dbg !640
  tail call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !48), !dbg !642
  %cmp21124 = icmp sgt i32 %.add, %x, !dbg !642
  br i1 %cmp21124, label %for.body.lr.ph, label %for.cond27.preheader, !dbg !642

for.body.lr.ph:                                   ; preds = %if.then
  %0 = sext i32 %x to i64
  br label %for.body, !dbg !642

for.cond27.preheader:                             ; preds = %for.body, %if.then
  br i1 %cmp15, label %for.body29, label %return, !dbg !644

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv131 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next132, %for.body ]
  %1 = load i16* %arrayidx, align 2, !dbg !646, !tbaa !630
  %2 = trunc i64 %indvars.iv131 to i32, !dbg !646
  %sub23 = sub nsw i32 %2, %x, !dbg !646
  %idxprom24 = sext i32 %sub23 to i64, !dbg !646
  %arrayidx25 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom24, !dbg !646
  store i16 %1, i16* %arrayidx25, align 2, !dbg !646, !tbaa !630
  %indvars.iv.next132 = add i64 %indvars.iv131, 1, !dbg !642
  %3 = trunc i64 %indvars.iv.next132 to i32, !dbg !642
  %cmp21 = icmp slt i32 %3, %.add, !dbg !642
  br i1 %cmp21, label %for.body, label %for.cond27.preheader, !dbg !642

for.body29:                                       ; preds = %for.cond27.preheader, %for.body29
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body29 ], [ 0, %for.cond27.preheader ]
  %arrayidx.sum120 = add i64 %indvars.iv, %idxprom, !dbg !647
  %arrayidx31 = getelementptr inbounds i16* %Pic, i64 %arrayidx.sum120, !dbg !647
  %4 = load i16* %arrayidx31, align 2, !dbg !647, !tbaa !630
  %5 = trunc i64 %indvars.iv to i32, !dbg !647
  %sub32 = sub nsw i32 %5, %x, !dbg !647
  %idxprom33 = sext i32 %sub32 to i64, !dbg !647
  %arrayidx34 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom33, !dbg !647
  store i16 %4, i16* %arrayidx34, align 2, !dbg !647, !tbaa !630
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !644
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !644
  %exitcond = icmp eq i32 %lftr.wideiv, %add, !dbg !644
  br i1 %exitcond, label %return, label %for.body29, !dbg !644

if.else:                                          ; preds = %entry
  %sub38 = add nsw i32 %width, -16, !dbg !648
  %cmp39 = icmp slt i32 %sub38, %x, !dbg !648
  br i1 %cmp39, label %for.cond41.preheader, label %if.else70, !dbg !648

for.cond41.preheader:                             ; preds = %if.else
  %cmp42129 = icmp slt i32 %x, %width, !dbg !649
  br i1 %cmp42129, label %for.body43.lr.ph, label %for.end51, !dbg !649

for.body43.lr.ph:                                 ; preds = %for.cond41.preheader
  %6 = sext i32 %x to i64
  br label %for.body43, !dbg !649

for.body43:                                       ; preds = %for.body43.lr.ph, %for.body43
  %indvars.iv135 = phi i64 [ %6, %for.body43.lr.ph ], [ %indvars.iv.next136, %for.body43 ]
  %arrayidx.sum119 = add i64 %indvars.iv135, %idxprom, !dbg !652
  %arrayidx45 = getelementptr inbounds i16* %Pic, i64 %arrayidx.sum119, !dbg !652
  %7 = load i16* %arrayidx45, align 2, !dbg !652, !tbaa !630
  %8 = trunc i64 %indvars.iv135 to i32, !dbg !652
  %sub46 = sub nsw i32 %8, %x, !dbg !652
  %idxprom47 = sext i32 %sub46 to i64, !dbg !652
  %arrayidx48 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom47, !dbg !652
  store i16 %7, i16* %arrayidx48, align 2, !dbg !652, !tbaa !630
  %indvars.iv.next136 = add i64 %indvars.iv135, 1, !dbg !649
  %9 = trunc i64 %indvars.iv.next136 to i32, !dbg !649
  %cmp42 = icmp slt i32 %9, %width, !dbg !649
  br i1 %cmp42, label %for.body43, label %for.end51, !dbg !649

for.end51:                                        ; preds = %for.body43, %for.cond41.preheader
  %add52 = add nsw i32 %x, 16, !dbg !653
  tail call void @llvm.dbg.value(metadata !{i32 %add52}, i64 0, metadata !49), !dbg !653
  %cond57 = select i1 %cmp42129, i32 %width, i32 %x, !dbg !654
  tail call void @llvm.dbg.value(metadata !{i32 %cond57}, i64 0, metadata !48), !dbg !654
  %cmp59127 = icmp slt i32 %cond57, %add52, !dbg !654
  br i1 %cmp59127, label %for.body60.lr.ph, label %return, !dbg !654

for.body60.lr.ph:                                 ; preds = %for.end51
  %sub61 = add nsw i32 %width, -1, !dbg !656
  %idxprom62 = sext i32 %sub61 to i64, !dbg !656
  %arrayidx.sum118 = add i64 %idxprom, %idxprom62, !dbg !656
  %arrayidx63 = getelementptr inbounds i16* %Pic, i64 %arrayidx.sum118, !dbg !656
  %10 = sext i32 %cond57 to i64
  br label %for.body60, !dbg !654

for.body60:                                       ; preds = %for.body60.lr.ph, %for.body60
  %indvars.iv133 = phi i64 [ %10, %for.body60.lr.ph ], [ %indvars.iv.next134, %for.body60 ]
  %11 = load i16* %arrayidx63, align 2, !dbg !656, !tbaa !630
  %12 = trunc i64 %indvars.iv133 to i32, !dbg !656
  %sub64 = sub nsw i32 %12, %x, !dbg !656
  %idxprom65 = sext i32 %sub64 to i64, !dbg !656
  %arrayidx66 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom65, !dbg !656
  store i16 %11, i16* %arrayidx66, align 2, !dbg !656, !tbaa !630
  %indvars.iv.next134 = add i64 %indvars.iv133, 1, !dbg !654
  %13 = trunc i64 %indvars.iv.next134 to i32, !dbg !654
  %cmp59 = icmp slt i32 %13, %add52, !dbg !654
  br i1 %cmp59, label %for.body60, label %return, !dbg !654

if.else70:                                        ; preds = %if.else
  %idxprom71 = sext i32 %x to i64, !dbg !657
  %arrayidx.sum = add i64 %idxprom, %idxprom71, !dbg !657
  %arrayidx72 = getelementptr inbounds i16* %Pic, i64 %arrayidx.sum, !dbg !657
  br label %return, !dbg !657

return:                                           ; preds = %for.end51, %for.body60, %for.cond27.preheader, %for.body29, %if.else70
  %retval.0 = phi i16* [ %arrayidx72, %if.else70 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.body29 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.cond27.preheader ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.body60 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.end51 ]
  ret i16* %retval.0, !dbg !658
}

; Function Attrs: nounwind optsize readnone uwtable
define i16* @FastLineX(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dummy}, i64 0, metadata !55), !dbg !659
  tail call void @llvm.dbg.value(metadata !{i16* %Pic}, i64 0, metadata !56), !dbg !659
  tail call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !57), !dbg !659
  tail call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !58), !dbg !659
  tail call void @llvm.dbg.value(metadata !{i32 %height}, i64 0, metadata !59), !dbg !659
  tail call void @llvm.dbg.value(metadata !{i32 %width}, i64 0, metadata !60), !dbg !659
  %mul = mul nsw i32 %width, %y, !dbg !660
  %idx.ext = sext i32 %mul to i64, !dbg !660
  %idx.ext1 = sext i32 %x to i64, !dbg !660
  %add.ptr.sum = add i64 %idx.ext, %idx.ext1, !dbg !660
  %add.ptr2 = getelementptr inbounds i16* %Pic, i64 %add.ptr.sum, !dbg !660
  ret i16* %add.ptr2, !dbg !660
}

; Function Attrs: nounwind optsize uwtable
define i16* @UMVLineX(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !63), !dbg !661
  tail call void @llvm.dbg.value(metadata !{i16* %Pic}, i64 0, metadata !64), !dbg !661
  tail call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !65), !dbg !661
  tail call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !66), !dbg !661
  tail call void @llvm.dbg.value(metadata !{i32 %height}, i64 0, metadata !67), !dbg !661
  tail call void @llvm.dbg.value(metadata !{i32 %width}, i64 0, metadata !68), !dbg !661
  %sub = add nsw i32 %height, -1, !dbg !662
  %cmp = icmp sle i32 %height, %y, !dbg !662
  %sub.y = select i1 %cmp, i32 %sub, i32 %y, !dbg !662
  %cmp2 = icmp slt i32 %sub.y, 0, !dbg !662
  %.sub.y = select i1 %cmp2, i32 0, i32 %sub.y, !dbg !662
  %mul = mul nsw i32 %.sub.y, %width, !dbg !662
  %idx.ext = sext i32 %mul to i64, !dbg !662
  %add.ptr = getelementptr inbounds i16* %Pic, i64 %idx.ext, !dbg !662
  tail call void @llvm.dbg.value(metadata !{i16* %add.ptr}, i64 0, metadata !71), !dbg !662
  %cmp14 = icmp slt i32 %x, 0, !dbg !663
  br i1 %cmp14, label %if.then, label %if.else, !dbg !663

if.then:                                          ; preds = %entry
  %add = add i32 %x, %size, !dbg !664
  %cmp15 = icmp sgt i32 %add, 0, !dbg !664
  %.add = select i1 %cmp15, i32 0, i32 %add, !dbg !664
  tail call void @llvm.dbg.value(metadata !{i32 %.add}, i64 0, metadata !70), !dbg !664
  tail call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !69), !dbg !666
  %cmp21126 = icmp sgt i32 %.add, %x, !dbg !666
  br i1 %cmp21126, label %for.body.lr.ph, label %for.cond25.preheader, !dbg !666

for.body.lr.ph:                                   ; preds = %if.then
  %0 = sext i32 %x to i64
  br label %for.body, !dbg !666

for.cond25.preheader:                             ; preds = %for.body, %if.then
  br i1 %cmp15, label %for.body27, label %return, !dbg !668

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv133 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next134, %for.body ]
  %1 = load i16* %add.ptr, align 2, !dbg !670, !tbaa !630
  %2 = trunc i64 %indvars.iv133 to i32, !dbg !670
  %sub22 = sub nsw i32 %2, %x, !dbg !670
  %idxprom = sext i32 %sub22 to i64, !dbg !670
  %arrayidx23 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom, !dbg !670
  store i16 %1, i16* %arrayidx23, align 2, !dbg !670, !tbaa !630
  %indvars.iv.next134 = add i64 %indvars.iv133, 1, !dbg !666
  %3 = trunc i64 %indvars.iv.next134 to i32, !dbg !666
  %cmp21 = icmp slt i32 %3, %.add, !dbg !666
  br i1 %cmp21, label %for.body, label %for.cond25.preheader, !dbg !666

for.body27:                                       ; preds = %for.cond25.preheader, %for.body27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body27 ], [ 0, %for.cond25.preheader ]
  %add.ptr.sum122 = add i64 %indvars.iv, %idx.ext, !dbg !672
  %arrayidx29 = getelementptr inbounds i16* %Pic, i64 %add.ptr.sum122, !dbg !672
  %4 = load i16* %arrayidx29, align 2, !dbg !672, !tbaa !630
  %5 = trunc i64 %indvars.iv to i32, !dbg !672
  %sub30 = sub nsw i32 %5, %x, !dbg !672
  %idxprom31 = sext i32 %sub30 to i64, !dbg !672
  %arrayidx32 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom31, !dbg !672
  store i16 %4, i16* %arrayidx32, align 2, !dbg !672, !tbaa !630
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !668
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !668
  %exitcond = icmp eq i32 %lftr.wideiv, %add, !dbg !668
  br i1 %exitcond, label %return, label %for.body27, !dbg !668

if.else:                                          ; preds = %entry
  %sub36 = sub nsw i32 %width, %size, !dbg !673
  %cmp37 = icmp slt i32 %sub36, %x, !dbg !673
  br i1 %cmp37, label %for.cond39.preheader, label %if.else68, !dbg !673

for.cond39.preheader:                             ; preds = %if.else
  %cmp40131 = icmp slt i32 %x, %width, !dbg !674
  br i1 %cmp40131, label %for.body41.lr.ph, label %for.end49, !dbg !674

for.body41.lr.ph:                                 ; preds = %for.cond39.preheader
  %6 = sext i32 %x to i64
  br label %for.body41, !dbg !674

for.body41:                                       ; preds = %for.body41.lr.ph, %for.body41
  %indvars.iv137 = phi i64 [ %6, %for.body41.lr.ph ], [ %indvars.iv.next138, %for.body41 ]
  %add.ptr.sum121 = add i64 %indvars.iv137, %idx.ext, !dbg !677
  %arrayidx43 = getelementptr inbounds i16* %Pic, i64 %add.ptr.sum121, !dbg !677
  %7 = load i16* %arrayidx43, align 2, !dbg !677, !tbaa !630
  %8 = trunc i64 %indvars.iv137 to i32, !dbg !677
  %sub44 = sub nsw i32 %8, %x, !dbg !677
  %idxprom45 = sext i32 %sub44 to i64, !dbg !677
  %arrayidx46 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom45, !dbg !677
  store i16 %7, i16* %arrayidx46, align 2, !dbg !677, !tbaa !630
  %indvars.iv.next138 = add i64 %indvars.iv137, 1, !dbg !674
  %9 = trunc i64 %indvars.iv.next138 to i32, !dbg !674
  %cmp40 = icmp slt i32 %9, %width, !dbg !674
  br i1 %cmp40, label %for.body41, label %for.end49, !dbg !674

for.end49:                                        ; preds = %for.body41, %for.cond39.preheader
  %add50 = add nsw i32 %x, %size, !dbg !679
  tail call void @llvm.dbg.value(metadata !{i32 %add50}, i64 0, metadata !70), !dbg !679
  %cond55 = select i1 %cmp40131, i32 %width, i32 %x, !dbg !680
  tail call void @llvm.dbg.value(metadata !{i32 %cond55}, i64 0, metadata !69), !dbg !680
  %cmp57129 = icmp slt i32 %cond55, %add50, !dbg !680
  br i1 %cmp57129, label %for.body58.lr.ph, label %return, !dbg !680

for.body58.lr.ph:                                 ; preds = %for.end49
  %sub59 = add nsw i32 %width, -1, !dbg !682
  %idxprom60 = sext i32 %sub59 to i64, !dbg !682
  %add.ptr.sum120 = add i64 %idx.ext, %idxprom60, !dbg !682
  %arrayidx61 = getelementptr inbounds i16* %Pic, i64 %add.ptr.sum120, !dbg !682
  %10 = sext i32 %cond55 to i64
  br label %for.body58, !dbg !680

for.body58:                                       ; preds = %for.body58.lr.ph, %for.body58
  %indvars.iv135 = phi i64 [ %10, %for.body58.lr.ph ], [ %indvars.iv.next136, %for.body58 ]
  %11 = load i16* %arrayidx61, align 2, !dbg !682, !tbaa !630
  %12 = trunc i64 %indvars.iv135 to i32, !dbg !682
  %sub62 = sub nsw i32 %12, %x, !dbg !682
  %idxprom63 = sext i32 %sub62 to i64, !dbg !682
  %arrayidx64 = getelementptr inbounds [16 x i16]* @line, i64 0, i64 %idxprom63, !dbg !682
  store i16 %11, i16* %arrayidx64, align 2, !dbg !682, !tbaa !630
  %indvars.iv.next136 = add i64 %indvars.iv135, 1, !dbg !680
  %13 = trunc i64 %indvars.iv.next136 to i32, !dbg !680
  %cmp57 = icmp slt i32 %13, %add50, !dbg !680
  br i1 %cmp57, label %for.body58, label %return, !dbg !680

if.else68:                                        ; preds = %if.else
  %idx.ext69 = sext i32 %x to i64, !dbg !684
  %add.ptr.sum = add i64 %idx.ext, %idx.ext69, !dbg !684
  %add.ptr70 = getelementptr inbounds i16* %Pic, i64 %add.ptr.sum, !dbg !684
  br label %return, !dbg !684

return:                                           ; preds = %for.end49, %for.body58, %for.cond25.preheader, %for.body27, %if.else68
  %retval.0 = phi i16* [ %add.ptr70, %if.else68 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.body27 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.cond25.preheader ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.body58 ], [ getelementptr inbounds ([16 x i16]* @line, i64 0, i64 0), %for.end49 ]
  ret i16* %retval.0, !dbg !686
}

; Function Attrs: nounwind optsize readonly uwtable
define zeroext i16 @UMVPelY_14(i16** nocapture %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16** %Pic}, i64 0, metadata !76), !dbg !687
  tail call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !77), !dbg !687
  tail call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !78), !dbg !687
  tail call void @llvm.dbg.value(metadata !{i32 %height}, i64 0, metadata !79), !dbg !687
  tail call void @llvm.dbg.value(metadata !{i32 %width}, i64 0, metadata !80), !dbg !687
  %sub = shl i32 %width, 2, !dbg !688
  %shl = add i32 %sub, 28, !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !81), !dbg !688
  %sub2 = shl i32 %height, 2, !dbg !689
  %shl3 = add i32 %sub2, 28, !dbg !689
  tail call void @llvm.dbg.value(metadata !{i32 %shl3}, i64 0, metadata !82), !dbg !689
  %add4 = add nsw i32 %x, 16, !dbg !690
  tail call void @llvm.dbg.value(metadata !{i32 %add4}, i64 0, metadata !78), !dbg !690
  %add5 = add nsw i32 %y, 16, !dbg !691
  tail call void @llvm.dbg.value(metadata !{i32 %add5}, i64 0, metadata !77), !dbg !691
  %cmp = icmp slt i32 %add4, 0, !dbg !692
  br i1 %cmp, label %if.then, label %if.end26, !dbg !692

if.then:                                          ; preds = %entry
  %cmp6 = icmp slt i32 %add5, 0, !dbg !693
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !693

if.then7:                                         ; preds = %if.then
  %and = and i32 %add4, 3, !dbg !695
  %idxprom118 = zext i32 %and to i64, !dbg !695
  %and8 = and i32 %add5, 3, !dbg !695
  %idxprom9119 = zext i32 %and8 to i64, !dbg !695
  %arrayidx = getelementptr inbounds i16** %Pic, i64 %idxprom9119, !dbg !695
  %0 = load i16** %arrayidx, align 8, !dbg !695, !tbaa !627
  %arrayidx10 = getelementptr inbounds i16* %0, i64 %idxprom118, !dbg !695
  br label %return, !dbg !695

if.end:                                           ; preds = %if.then
  %cmp11 = icmp sgt i32 %add5, %shl3, !dbg !696
  %and13 = and i32 %add4, 3, !dbg !697
  %idxprom14117 = zext i32 %and13 to i64, !dbg !697
  br i1 %cmp11, label %if.then12, label %if.end20, !dbg !696

if.then12:                                        ; preds = %if.end
  %and15 = and i32 %add5, 3, !dbg !697
  %add16 = or i32 %shl3, %and15, !dbg !697
  %idxprom17 = sext i32 %add16 to i64, !dbg !697
  %arrayidx18 = getelementptr inbounds i16** %Pic, i64 %idxprom17, !dbg !697
  %1 = load i16** %arrayidx18, align 8, !dbg !697, !tbaa !627
  %arrayidx19 = getelementptr inbounds i16* %1, i64 %idxprom14117, !dbg !697
  br label %return, !dbg !697

if.end20:                                         ; preds = %if.end
  %idxprom23 = sext i32 %add5 to i64, !dbg !698
  %arrayidx24 = getelementptr inbounds i16** %Pic, i64 %idxprom23, !dbg !698
  %2 = load i16** %arrayidx24, align 8, !dbg !698, !tbaa !627
  %arrayidx25 = getelementptr inbounds i16* %2, i64 %idxprom14117, !dbg !698
  br label %return, !dbg !698

if.end26:                                         ; preds = %entry
  %cmp27 = icmp sgt i32 %add4, %shl, !dbg !699
  %cmp29 = icmp slt i32 %add5, 0, !dbg !700
  br i1 %cmp27, label %if.then28, label %if.end56, !dbg !699

if.then28:                                        ; preds = %if.end26
  br i1 %cmp29, label %if.then30, label %if.end38, !dbg !700

if.then30:                                        ; preds = %if.then28
  %and31 = and i32 %add4, 3, !dbg !702
  %add32 = or i32 %shl, %and31, !dbg !702
  %idxprom33 = sext i32 %add32 to i64, !dbg !702
  %and34 = and i32 %add5, 3, !dbg !702
  %idxprom35116 = zext i32 %and34 to i64, !dbg !702
  %arrayidx36 = getelementptr inbounds i16** %Pic, i64 %idxprom35116, !dbg !702
  %3 = load i16** %arrayidx36, align 8, !dbg !702, !tbaa !627
  %arrayidx37 = getelementptr inbounds i16* %3, i64 %idxprom33, !dbg !702
  br label %return, !dbg !702

if.end38:                                         ; preds = %if.then28
  %cmp39 = icmp sgt i32 %add5, %shl3, !dbg !703
  %and41 = and i32 %add4, 3, !dbg !704
  %add42 = or i32 %shl, %and41, !dbg !704
  %idxprom43 = sext i32 %add42 to i64, !dbg !704
  br i1 %cmp39, label %if.then40, label %if.end49, !dbg !703

if.then40:                                        ; preds = %if.end38
  %and44 = and i32 %add5, 3, !dbg !704
  %add45 = or i32 %shl3, %and44, !dbg !704
  %idxprom46 = sext i32 %add45 to i64, !dbg !704
  %arrayidx47 = getelementptr inbounds i16** %Pic, i64 %idxprom46, !dbg !704
  %4 = load i16** %arrayidx47, align 8, !dbg !704, !tbaa !627
  %arrayidx48 = getelementptr inbounds i16* %4, i64 %idxprom43, !dbg !704
  br label %return, !dbg !704

if.end49:                                         ; preds = %if.end38
  %idxprom53 = sext i32 %add5 to i64, !dbg !705
  %arrayidx54 = getelementptr inbounds i16** %Pic, i64 %idxprom53, !dbg !705
  %5 = load i16** %arrayidx54, align 8, !dbg !705, !tbaa !627
  %arrayidx55 = getelementptr inbounds i16* %5, i64 %idxprom43, !dbg !705
  br label %return, !dbg !705

if.end56:                                         ; preds = %if.end26
  br i1 %cmp29, label %if.then58, label %if.end64, !dbg !706

if.then58:                                        ; preds = %if.end56
  %idxprom59 = sext i32 %add4 to i64, !dbg !707
  %and60 = and i32 %add5, 3, !dbg !707
  %idxprom61115 = zext i32 %and60 to i64, !dbg !707
  %arrayidx62 = getelementptr inbounds i16** %Pic, i64 %idxprom61115, !dbg !707
  %6 = load i16** %arrayidx62, align 8, !dbg !707, !tbaa !627
  %arrayidx63 = getelementptr inbounds i16* %6, i64 %idxprom59, !dbg !707
  br label %return, !dbg !707

if.end64:                                         ; preds = %if.end56
  %cmp65 = icmp sgt i32 %add5, %shl3, !dbg !708
  %idxprom67 = sext i32 %add4 to i64, !dbg !709
  br i1 %cmp65, label %if.then66, label %if.end73, !dbg !708

if.then66:                                        ; preds = %if.end64
  %and68 = and i32 %add5, 3, !dbg !709
  %add69 = or i32 %shl3, %and68, !dbg !709
  %idxprom70 = sext i32 %add69 to i64, !dbg !709
  %arrayidx71 = getelementptr inbounds i16** %Pic, i64 %idxprom70, !dbg !709
  %7 = load i16** %arrayidx71, align 8, !dbg !709, !tbaa !627
  %arrayidx72 = getelementptr inbounds i16* %7, i64 %idxprom67, !dbg !709
  br label %return, !dbg !709

if.end73:                                         ; preds = %if.end64
  %idxprom75 = sext i32 %add5 to i64, !dbg !710
  %arrayidx76 = getelementptr inbounds i16** %Pic, i64 %idxprom75, !dbg !710
  %8 = load i16** %arrayidx76, align 8, !dbg !710, !tbaa !627
  %arrayidx77 = getelementptr inbounds i16* %8, i64 %idxprom67, !dbg !710
  br label %return, !dbg !710

return:                                           ; preds = %if.end73, %if.then66, %if.then58, %if.end49, %if.then40, %if.then30, %if.end20, %if.then12, %if.then7
  %retval.0.in = phi i16* [ %arrayidx10, %if.then7 ], [ %arrayidx19, %if.then12 ], [ %arrayidx25, %if.end20 ], [ %arrayidx37, %if.then30 ], [ %arrayidx48, %if.then40 ], [ %arrayidx55, %if.end49 ], [ %arrayidx63, %if.then58 ], [ %arrayidx72, %if.then66 ], [ %arrayidx77, %if.end73 ]
  %retval.0 = load i16* %retval.0.in, align 2, !dbg !695
  ret i16 %retval.0, !dbg !711
}

; Function Attrs: nounwind optsize readonly uwtable
define zeroext i16 @FastPelY_14(i16** nocapture %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16** %Pic}, i64 0, metadata !85), !dbg !712
  tail call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !86), !dbg !712
  tail call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !87), !dbg !712
  tail call void @llvm.dbg.value(metadata !{i32 %height}, i64 0, metadata !88), !dbg !712
  tail call void @llvm.dbg.value(metadata !{i32 %width}, i64 0, metadata !89), !dbg !712
  %add = add nsw i32 %x, 16, !dbg !713
  %idxprom = sext i32 %add to i64, !dbg !713
  %add1 = add nsw i32 %y, 16, !dbg !713
  %idxprom2 = sext i32 %add1 to i64, !dbg !713
  %arrayidx = getelementptr inbounds i16** %Pic, i64 %idxprom2, !dbg !713
  %0 = load i16** %arrayidx, align 8, !dbg !713, !tbaa !627
  %arrayidx3 = getelementptr inbounds i16* %0, i64 %idxprom, !dbg !713
  %1 = load i16* %arrayidx3, align 2, !dbg !713, !tbaa !630
  ret i16 %1, !dbg !713
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !90, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !23, metadata !32, metadata !41, metadata !51, metadata !61, metadata !72, metadata !83}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"PutPel_14", metadata !"PutPel_14", metadata !"", i32 23, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i16**, i32, i32, i16)* @PutPel_14, null, null, metadata !18, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [PutPel_14]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !14, metadata !17, metadata !17, metadata !16}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!16 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!17 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!18 = metadata !{metadata !19, metadata !20, metadata !21, metadata !22}
!19 = metadata !{i32 786689, metadata !10, metadata !"Pic", metadata !11, i32 16777239, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Pic] [line 23]
!20 = metadata !{i32 786689, metadata !10, metadata !"y", metadata !11, i32 33554455, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 23]
!21 = metadata !{i32 786689, metadata !10, metadata !"x", metadata !11, i32 50331671, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 23]
!22 = metadata !{i32 786689, metadata !10, metadata !"val", metadata !11, i32 67108887, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 23]
!23 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"PutPel_11", metadata !"PutPel_11", metadata !"", i32 28, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i16*, i32, i32, i16, i32)* @PutPel_11, null, null, metadata !26, i32 29} ; [ DW_TAG_subprogram ] [line 28] [def] [scope 29] [PutPel_11]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !15, metadata !17, metadata !17, metadata !16, metadata !17}
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30, metadata !31}
!27 = metadata !{i32 786689, metadata !23, metadata !"Pic", metadata !11, i32 16777244, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Pic] [line 28]
!28 = metadata !{i32 786689, metadata !23, metadata !"y", metadata !11, i32 33554460, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 28]
!29 = metadata !{i32 786689, metadata !23, metadata !"x", metadata !11, i32 50331676, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 28]
!30 = metadata !{i32 786689, metadata !23, metadata !"val", metadata !11, i32 67108892, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 28]
!31 = metadata !{i32 786689, metadata !23, metadata !"width", metadata !11, i32 83886108, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [width] [line 28]
!32 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"FastLine16Y_11", metadata !"FastLine16Y_11", metadata !"", i32 42, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16* (i16*, i32, i32, i32, i32)* @FastLine16Y_11, null, null, metadata !35, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [FastLine16Y_11]
!33 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !15, metadata !15, metadata !17, metadata !17, metadata !17, metadata !17}
!35 = metadata !{metadata !36, metadata !37, metadata !38, metadata !39, metadata !40}
!36 = metadata !{i32 786689, metadata !32, metadata !"Pic", metadata !11, i32 16777258, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Pic] [line 42]
!37 = metadata !{i32 786689, metadata !32, metadata !"y", metadata !11, i32 33554474, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 42]
!38 = metadata !{i32 786689, metadata !32, metadata !"x", metadata !11, i32 50331690, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 42]
!39 = metadata !{i32 786689, metadata !32, metadata !"height", metadata !11, i32 67108906, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [height] [line 42]
!40 = metadata !{i32 786689, metadata !32, metadata !"width", metadata !11, i32 83886122, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [width] [line 42]
!41 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"UMVLine16Y_11", metadata !"UMVLine16Y_11", metadata !"", i32 48, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16* (i16*, i32, i32, i32, i32)* @UMVLine16Y_11, null, null, metadata !42, i32 49} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 49] [UMVLine16Y_11]
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50}
!43 = metadata !{i32 786689, metadata !41, metadata !"Pic", metadata !11, i32 16777264, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Pic] [line 48]
!44 = metadata !{i32 786689, metadata !41, metadata !"y", metadata !11, i32 33554480, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 48]
!45 = metadata !{i32 786689, metadata !41, metadata !"x", metadata !11, i32 50331696, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 48]
!46 = metadata !{i32 786689, metadata !41, metadata !"height", metadata !11, i32 67108912, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [height] [line 48]
!47 = metadata !{i32 786689, metadata !41, metadata !"width", metadata !11, i32 83886128, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [width] [line 48]
!48 = metadata !{i32 786688, metadata !41, metadata !"i", metadata !11, i32 50, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 50]
!49 = metadata !{i32 786688, metadata !41, metadata !"maxx", metadata !11, i32 50, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxx] [line 50]
!50 = metadata !{i32 786688, metadata !41, metadata !"Picy", metadata !11, i32 51, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Picy] [line 51]
!51 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"FastLineX", metadata !"FastLineX", metadata !"", i32 82, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16* (i32, i16*, i32, i32, i32, i32)* @FastLineX, null, null, metadata !54, i32 83} ; [ DW_TAG_subprogram ] [line 82] [def] [scope 83] [FastLineX]
!52 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{metadata !15, metadata !17, metadata !15, metadata !17, metadata !17, metadata !17, metadata !17}
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!55 = metadata !{i32 786689, metadata !51, metadata !"dummy", metadata !11, i32 16777298, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dummy] [line 82]
!56 = metadata !{i32 786689, metadata !51, metadata !"Pic", metadata !11, i32 33554514, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Pic] [line 82]
!57 = metadata !{i32 786689, metadata !51, metadata !"y", metadata !11, i32 50331730, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 82]
!58 = metadata !{i32 786689, metadata !51, metadata !"x", metadata !11, i32 67108946, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 82]
!59 = metadata !{i32 786689, metadata !51, metadata !"height", metadata !11, i32 83886162, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [height] [line 82]
!60 = metadata !{i32 786689, metadata !51, metadata !"width", metadata !11, i32 100663378, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [width] [line 82]
!61 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"UMVLineX", metadata !"UMVLineX", metadata !"", i32 88, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16* (i32, i16*, i32, i32, i32, i32)* @UMVLineX, null, null, metadata !62, i32 89} ; [ DW_TAG_subprogram ] [line 88] [def] [scope 89] [UMVLineX]
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71}
!63 = metadata !{i32 786689, metadata !61, metadata !"size", metadata !11, i32 16777304, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 88]
!64 = metadata !{i32 786689, metadata !61, metadata !"Pic", metadata !11, i32 33554520, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Pic] [line 88]
!65 = metadata !{i32 786689, metadata !61, metadata !"y", metadata !11, i32 50331736, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 88]
!66 = metadata !{i32 786689, metadata !61, metadata !"x", metadata !11, i32 67108952, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 88]
!67 = metadata !{i32 786689, metadata !61, metadata !"height", metadata !11, i32 83886168, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [height] [line 88]
!68 = metadata !{i32 786689, metadata !61, metadata !"width", metadata !11, i32 100663384, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [width] [line 88]
!69 = metadata !{i32 786688, metadata !61, metadata !"i", metadata !11, i32 90, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 90]
!70 = metadata !{i32 786688, metadata !61, metadata !"maxx", metadata !11, i32 90, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxx] [line 90]
!71 = metadata !{i32 786688, metadata !61, metadata !"Picy", metadata !11, i32 91, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Picy] [line 91]
!72 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"UMVPelY_14", metadata !"UMVPelY_14", metadata !"", i32 133, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16 (i16**, i32, i32, i32, i32)* @UMVPelY_14, null, null, metadata !75, i32 134} ; [ DW_TAG_subprogram ] [line 133] [def] [scope 134] [UMVPelY_14]
!73 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{metadata !16, metadata !14, metadata !17, metadata !17, metadata !17, metadata !17}
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82}
!76 = metadata !{i32 786689, metadata !72, metadata !"Pic", metadata !11, i32 16777349, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Pic] [line 133]
!77 = metadata !{i32 786689, metadata !72, metadata !"y", metadata !11, i32 33554565, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 133]
!78 = metadata !{i32 786689, metadata !72, metadata !"x", metadata !11, i32 50331781, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 133]
!79 = metadata !{i32 786689, metadata !72, metadata !"height", metadata !11, i32 67108997, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [height] [line 133]
!80 = metadata !{i32 786689, metadata !72, metadata !"width", metadata !11, i32 83886213, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [width] [line 133]
!81 = metadata !{i32 786688, metadata !72, metadata !"width4", metadata !11, i32 135, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [width4] [line 135]
!82 = metadata !{i32 786688, metadata !72, metadata !"height4", metadata !11, i32 136, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [height4] [line 136]
!83 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"FastPelY_14", metadata !"FastPelY_14", metadata !"", i32 167, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16 (i16**, i32, i32, i32, i32)* @FastPelY_14, null, null, metadata !84, i32 168} ; [ DW_TAG_subprogram ] [line 167] [def] [scope 168] [FastPelY_14]
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89}
!85 = metadata !{i32 786689, metadata !83, metadata !"Pic", metadata !11, i32 16777383, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Pic] [line 167]
!86 = metadata !{i32 786689, metadata !83, metadata !"y", metadata !11, i32 33554599, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 167]
!87 = metadata !{i32 786689, metadata !83, metadata !"x", metadata !11, i32 50331815, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 167]
!88 = metadata !{i32 786689, metadata !83, metadata !"height", metadata !11, i32 67109031, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [height] [line 167]
!89 = metadata !{i32 786689, metadata !83, metadata !"width", metadata !11, i32 83886247, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [width] [line 167]
!90 = metadata !{metadata !91, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !294, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !339, metadata !434, metadata !435, metadata !436, metadata !438, metadata !439, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !458, metadata !459, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !475, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !487, metadata !490, metadata !491, metadata !492, metadata !493, metadata !496, metadata !499, metadata !510, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623}
!91 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !92, i32 558, metadata !94, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!92 = metadata !{i32 786473, metadata !93}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!93 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!94 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!95 = metadata !{i32 786454, metadata !93, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!96 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !97, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !282, metadata !283, metadata !285, metadata !286}
!98 = metadata !{i32 786445, metadata !93, metadata !96, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!99 = metadata !{i32 786445, metadata !93, metadata !96, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !17} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!100 = metadata !{i32 786445, metadata !93, metadata !96, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !101} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!101 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !102, metadata !280, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!102 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!103 = metadata !{i32 786454, metadata !93, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!104 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !105, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !190, metadata !228, metadata !255, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !277}
!106 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!107 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !17} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!108 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!109 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !17} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!110 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!111 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !17} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!112 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !113} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!114 = metadata !{i32 786454, metadata !93, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!115 = metadata !{i32 786451, metadata !93, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !116, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!116 = metadata !{metadata !117, metadata !136, metadata !162}
!117 = metadata !{i32 786445, metadata !93, metadata !115, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!119 = metadata !{i32 786454, metadata !93, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!120 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !121, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !135}
!122 = metadata !{i32 786445, metadata !93, metadata !120, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!123 = metadata !{i32 786445, metadata !93, metadata !120, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !17} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!124 = metadata !{i32 786445, metadata !93, metadata !120, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !125} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!125 = metadata !{i32 786454, metadata !93, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!126 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!127 = metadata !{i32 786445, metadata !93, metadata !120, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !17} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!128 = metadata !{i32 786445, metadata !93, metadata !120, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!129 = metadata !{i32 786445, metadata !93, metadata !120, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !125} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!130 = metadata !{i32 786445, metadata !93, metadata !120, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !125} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!131 = metadata !{i32 786445, metadata !93, metadata !120, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!132 = metadata !{i32 786445, metadata !93, metadata !120, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !17} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!133 = metadata !{i32 786445, metadata !93, metadata !120, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !134} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!134 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!135 = metadata !{i32 786445, metadata !93, metadata !120, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !17} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!136 = metadata !{i32 786445, metadata !93, metadata !115, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!137 = metadata !{i32 786454, metadata !93, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!138 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !139, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!139 = metadata !{metadata !140, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161}
!140 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!141 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!142 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!143 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!144 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !141} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!145 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!146 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !134} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!147 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !148} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!149 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !141} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!150 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !141} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!151 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !141} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!152 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !141} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!153 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !141} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!154 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !134} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!155 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !148} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!156 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !17} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!157 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !17} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!158 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !17} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!159 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !17} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!160 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !17} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!161 = metadata !{i32 786445, metadata !93, metadata !138, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !17} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!162 = metadata !{i32 786445, metadata !93, metadata !115, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !163} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!163 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!164 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!165 = metadata !{metadata !17, metadata !166, metadata !189}
!166 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!167 = metadata !{i32 786454, metadata !93, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!168 = metadata !{i32 786451, metadata !93, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !169, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!169 = metadata !{metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !182}
!170 = metadata !{i32 786445, metadata !93, metadata !168, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!171 = metadata !{i32 786445, metadata !93, metadata !168, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !17} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!172 = metadata !{i32 786445, metadata !93, metadata !168, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!173 = metadata !{i32 786445, metadata !93, metadata !168, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !17} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!174 = metadata !{i32 786445, metadata !93, metadata !168, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!175 = metadata !{i32 786445, metadata !93, metadata !168, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !141} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!176 = metadata !{i32 786445, metadata !93, metadata !168, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!177 = metadata !{i32 786445, metadata !93, metadata !168, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !17} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!178 = metadata !{i32 786445, metadata !93, metadata !168, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !179} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !180} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!180 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!181 = metadata !{null, metadata !17, metadata !17, metadata !148, metadata !148}
!182 = metadata !{i32 786445, metadata !93, metadata !168, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !183} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!184 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!185 = metadata !{null, metadata !186, metadata !187}
!186 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!187 = metadata !{i32 786454, metadata !93, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!188 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!190 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !191} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!191 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !192} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!192 = metadata !{i32 786454, metadata !93, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !193} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!193 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !194, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!194 = metadata !{metadata !195, metadata !207, metadata !212, metadata !216, metadata !220, metadata !224, metadata !225}
!195 = metadata !{i32 786445, metadata !93, metadata !193, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !196} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!196 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !197, metadata !204, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!197 = metadata !{i32 786454, metadata !93, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!198 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !199, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!199 = metadata !{metadata !200, metadata !201, metadata !202}
!200 = metadata !{i32 786445, metadata !93, metadata !198, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!201 = metadata !{i32 786445, metadata !93, metadata !198, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !126} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!202 = metadata !{i32 786445, metadata !93, metadata !198, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !203} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!203 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!204 = metadata !{metadata !205, metadata !206}
!205 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!206 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!207 = metadata !{i32 786445, metadata !93, metadata !193, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !208} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!208 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !197, metadata !209, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!209 = metadata !{metadata !210, metadata !211}
!210 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!211 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!212 = metadata !{i32 786445, metadata !93, metadata !193, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !213} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!213 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !197, metadata !214, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!214 = metadata !{metadata !210, metadata !215}
!215 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!216 = metadata !{i32 786445, metadata !93, metadata !193, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !217} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!217 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !197, metadata !218, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!218 = metadata !{metadata !210, metadata !219}
!219 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!220 = metadata !{i32 786445, metadata !93, metadata !193, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !221} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!221 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !197, metadata !222, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!222 = metadata !{metadata !223}
!223 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!224 = metadata !{i32 786445, metadata !93, metadata !193, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !221} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!225 = metadata !{i32 786445, metadata !93, metadata !193, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !226} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!226 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !197, metadata !227, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!227 = metadata !{metadata !205}
!228 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !229} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!229 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !230} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!230 = metadata !{i32 786454, metadata !93, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !231} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!231 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !232, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!232 = metadata !{metadata !233, metadata !236, metadata !237, metadata !240, metadata !243, metadata !247, metadata !248, metadata !252, metadata !253, metadata !254}
!233 = metadata !{i32 786445, metadata !93, metadata !231, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !234} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!234 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !197, metadata !235, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!235 = metadata !{metadata !210}
!236 = metadata !{i32 786445, metadata !93, metadata !231, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !221} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!237 = metadata !{i32 786445, metadata !93, metadata !231, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !238} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!238 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !197, metadata !239, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!239 = metadata !{metadata !205, metadata !223}
!240 = metadata !{i32 786445, metadata !93, metadata !231, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !241} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!241 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !197, metadata !242, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!242 = metadata !{metadata !215, metadata !223}
!243 = metadata !{i32 786445, metadata !93, metadata !231, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !244} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!244 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !197, metadata !245, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!245 = metadata !{metadata !215, metadata !246}
!246 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!247 = metadata !{i32 786445, metadata !93, metadata !231, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !244} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!248 = metadata !{i32 786445, metadata !93, metadata !231, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !249} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!249 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !197, metadata !250, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!250 = metadata !{metadata !215, metadata !251}
!251 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!252 = metadata !{i32 786445, metadata !93, metadata !231, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !249} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!253 = metadata !{i32 786445, metadata !93, metadata !231, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !244} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!254 = metadata !{i32 786445, metadata !93, metadata !231, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !244} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!255 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !256} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!256 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !257} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!257 = metadata !{i32 786454, metadata !93, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !258} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!258 = metadata !{i32 786451, metadata !93, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !259, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!259 = metadata !{metadata !260, metadata !261, metadata !262}
!260 = metadata !{i32 786445, metadata !93, metadata !258, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!261 = metadata !{i32 786445, metadata !93, metadata !258, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !17} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!262 = metadata !{i32 786445, metadata !93, metadata !258, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !263} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!263 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !258} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!264 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !17} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!265 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !148} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!266 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !148} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!267 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !148} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!268 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !17} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!269 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !148} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!270 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !148} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!271 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !148} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!272 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !273} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!273 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !274} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!274 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !275, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!275 = metadata !{metadata !276, metadata !17}
!276 = metadata !{i32 786454, metadata !93, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!277 = metadata !{i32 786445, metadata !93, metadata !104, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !278} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!278 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !17, metadata !279, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!279 = metadata !{metadata !205, metadata !210}
!280 = metadata !{metadata !281}
!281 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!282 = metadata !{i32 786445, metadata !93, metadata !96, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !17} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!283 = metadata !{i32 786445, metadata !93, metadata !96, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !284} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!284 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!285 = metadata !{i32 786445, metadata !93, metadata !96, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !284} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!286 = metadata !{i32 786445, metadata !93, metadata !96, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !284} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!287 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !92, i32 559, metadata !94, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!288 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !92, i32 560, metadata !94, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!289 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !92, i32 561, metadata !94, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!290 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !92, i32 562, metadata !94, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!291 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !92, i32 565, metadata !14, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!292 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !92, i32 566, metadata !293, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!293 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!294 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !92, i32 567, metadata !295, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!295 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!296 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !92, i32 569, metadata !141, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!297 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !92, i32 570, metadata !141, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!298 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !92, i32 572, metadata !17, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!299 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !92, i32 572, metadata !17, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!300 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !92, i32 573, metadata !301, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!301 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !302} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!302 = metadata !{i32 786454, metadata !93, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !303} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!303 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !304, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!304 = metadata !{metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !315, metadata !316, metadata !317, metadata !318, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338}
!305 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !276} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!306 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!307 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!308 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !276} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!309 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !276} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!310 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !276} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!311 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !312} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!312 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !17, metadata !313, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!313 = metadata !{metadata !314}
!314 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!315 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !276} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!316 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !141} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!317 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !141} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!318 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !319} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!319 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !141, metadata !313, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!320 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !319} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!321 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !319} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!322 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !276} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!323 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !141} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!324 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !141} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!325 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !134} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!326 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !17} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!327 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !17} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!328 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !276} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!329 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !141} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!330 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !17} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!331 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !17} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!332 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !17} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!333 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !17} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!334 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !17} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!335 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !276} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!336 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !276} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!337 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !276} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!338 = metadata !{i32 786445, metadata !4, metadata !303, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !276} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!339 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !92, i32 574, metadata !340, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!340 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !341} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!341 = metadata !{i32 786454, metadata !93, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !342} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!342 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !343, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!343 = metadata !{metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381}
!344 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !276} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!345 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!346 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !276} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!347 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !276} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!348 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !276} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!349 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !276} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!350 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !141} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!351 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !141} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!352 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !141} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!353 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !276} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!354 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !312} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!355 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !141} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!356 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !141} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!357 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !141} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!358 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !141} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!359 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !141} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!360 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !276} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!361 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !17} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!362 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !17} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!363 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !141} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!364 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !365} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!365 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !17, metadata !366, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!366 = metadata !{metadata !367}
!367 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!368 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !141} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!369 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !276} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!370 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !141} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!371 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !141} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!372 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !276} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!373 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !276} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!374 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !276} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!375 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !276} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!376 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !141} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!377 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !141} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!378 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !141} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!379 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !141} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!380 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !276} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!381 = metadata !{i32 786445, metadata !4, metadata !342, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !382} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!382 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !383} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!383 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !384, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!384 = metadata !{metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433}
!385 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !276} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!386 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!387 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!388 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !141} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!389 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !276} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!390 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !276} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!391 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !276} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!392 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !141} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!393 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !276} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!394 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !276} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!395 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !141} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!396 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !141} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!397 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !141} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!398 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !276} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!399 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !141} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!400 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !141} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!401 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !276} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!402 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !141} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!403 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !141} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!404 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !276} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!405 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !276} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!406 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !407} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!407 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !408} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!408 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !409, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!409 = metadata !{metadata !410, metadata !411, metadata !412, metadata !413, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422}
!410 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!411 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !141} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!412 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!413 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !414} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!414 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !141, metadata !415, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!415 = metadata !{metadata !416}
!416 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!417 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !414} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!418 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !414} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!419 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !141} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!420 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !141} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!421 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !141} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!422 = metadata !{i32 786445, metadata !4, metadata !408, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !141} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!423 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !276} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!424 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !407} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!425 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !276} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!426 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !276} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!427 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !276} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!428 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !141} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!429 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !141} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!430 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !141} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!431 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !141} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!432 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !141} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!433 = metadata !{i32 786445, metadata !4, metadata !383, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !141} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!434 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !92, i32 578, metadata !17, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!435 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !92, i32 579, metadata !17, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!436 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !92, i32 583, metadata !437, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!437 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !295} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!438 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !92, i32 584, metadata !437, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!439 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !92, i32 585, metadata !440, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!440 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !437} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!441 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !92, i32 586, metadata !17, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!442 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !92, i32 587, metadata !17, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!443 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !92, i32 588, metadata !17, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!444 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !92, i32 589, metadata !17, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!445 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !92, i32 592, metadata !14, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!446 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !92, i32 593, metadata !14, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!447 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !92, i32 595, metadata !293, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!448 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !92, i32 596, metadata !293, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!449 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !92, i32 598, metadata !14, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!450 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !92, i32 599, metadata !293, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!451 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !92, i32 601, metadata !14, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!452 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !92, i32 602, metadata !293, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!453 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !92, i32 604, metadata !454, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!454 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !455} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!455 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !456} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!456 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !457} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!457 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!458 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !92, i32 605, metadata !455, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!459 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !92, i32 608, metadata !460, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!460 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !134} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!461 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !92, i32 609, metadata !460, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!462 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !92, i32 610, metadata !17, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!463 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !92, i32 612, metadata !17, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!464 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !92, i32 612, metadata !17, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!465 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !92, i32 612, metadata !17, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!466 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !92, i32 613, metadata !17, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!467 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !92, i32 613, metadata !17, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!468 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !92, i32 613, metadata !17, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!469 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !92, i32 614, metadata !17, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!470 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !92, i32 617, metadata !471, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!471 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !472, metadata !473, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!472 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!473 = metadata !{metadata !474}
!474 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!475 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !92, i32 620, metadata !476, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!476 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !17, metadata !477, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!477 = metadata !{metadata !478, metadata !478}
!478 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!479 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !92, i32 620, metadata !476, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!480 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !92, i32 620, metadata !476, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!481 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !92, i32 621, metadata !476, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!482 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !92, i32 621, metadata !476, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!483 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !92, i32 621, metadata !476, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!484 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !92, i32 622, metadata !485, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!485 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !17, metadata !486, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!486 = metadata !{metadata !205, metadata !478, metadata !478}
!487 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !92, i32 623, metadata !488, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!488 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !17, metadata !489, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!489 = metadata !{metadata !210, metadata !223, metadata !223}
!490 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !92, i32 623, metadata !488, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!491 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !92, i32 624, metadata !488, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!492 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !92, i32 624, metadata !488, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!493 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !92, i32 625, metadata !494, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!494 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !17, metadata !495, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!495 = metadata !{metadata !223, metadata !223}
!496 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !92, i32 625, metadata !497, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!497 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !17, metadata !498, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!498 = metadata !{metadata !478}
!499 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !92, i32 1201, metadata !500, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!500 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !501} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!501 = metadata !{i32 786454, metadata !93, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !502} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!502 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !503, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!503 = metadata !{metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509}
!504 = metadata !{i32 786445, metadata !93, metadata !502, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!505 = metadata !{i32 786445, metadata !93, metadata !502, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !17} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!506 = metadata !{i32 786445, metadata !93, metadata !502, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!507 = metadata !{i32 786445, metadata !93, metadata !502, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !17} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!508 = metadata !{i32 786445, metadata !93, metadata !502, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!509 = metadata !{i32 786445, metadata !93, metadata !502, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !17} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!510 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !92, i32 1202, metadata !511, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!511 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !512} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!512 = metadata !{i32 786454, metadata !93, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !513} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!513 = metadata !{i32 786451, metadata !93, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !514, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!514 = metadata !{metadata !515, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !534, metadata !535, metadata !539, metadata !540, metadata !541, metadata !542, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550}
!515 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !516} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!516 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!517 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !476} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!518 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !476} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!519 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !476} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!520 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !440} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!521 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !437} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!522 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !17} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!523 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !17} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!524 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !525} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!525 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !17, metadata !222, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!526 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !525} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!527 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !295} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!528 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !497} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!529 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !17} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!530 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !531} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!531 = metadata !{i32 786454, metadata !93, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !532} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!532 = metadata !{i32 786454, metadata !93, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !533} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!533 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!534 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !17} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!535 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !536} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!536 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !537} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!537 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !538} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!538 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !454} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!539 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !536} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!540 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !536} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!541 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !536} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!542 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !543} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!543 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !457, metadata !489, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!544 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !17} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!545 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !17} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!546 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !17} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!547 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !17} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!548 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !17} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!549 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !17} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!550 = metadata !{i32 786445, metadata !93, metadata !513, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !17} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!551 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !92, i32 1203, metadata !512, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!552 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !92, i32 1203, metadata !512, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!553 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !92, i32 1204, metadata !512, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!554 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !92, i32 1204, metadata !512, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!555 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !92, i32 1230, metadata !556, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!556 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !557} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!557 = metadata !{i32 786454, metadata !93, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !558} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!558 = metadata !{i32 786451, metadata !559, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !560, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!559 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!560 = metadata !{metadata !561, metadata !562, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !582, metadata !583, metadata !584, metadata !585, metadata !587, metadata !588, metadata !590, metadata !594, metadata !596, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !604, metadata !605}
!561 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!562 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !563} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!563 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !472} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!564 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !563} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!565 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !563} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!566 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !563} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!567 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !563} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!568 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !563} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!569 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !563} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!570 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !563} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!571 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !563} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!572 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !563} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!573 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !563} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!574 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !575} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!575 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !576} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!576 = metadata !{i32 786451, metadata !559, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !577, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!577 = metadata !{metadata !578, metadata !579, metadata !581}
!578 = metadata !{i32 786445, metadata !559, metadata !576, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !575} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!579 = metadata !{i32 786445, metadata !559, metadata !576, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !580} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!580 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !558} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!581 = metadata !{i32 786445, metadata !559, metadata !576, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!582 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !580} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!583 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !17} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!584 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !17} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!585 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !586} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!586 = metadata !{i32 786454, metadata !559, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !533} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!587 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !16} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!588 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !589} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!589 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!590 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !591} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!591 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !472, metadata !592, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!592 = metadata !{metadata !593}
!593 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!594 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !595} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!595 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!596 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !597} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!597 = metadata !{i32 786454, metadata !559, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !533} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!598 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !595} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!599 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !595} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!600 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !595} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!601 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !595} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!602 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !603} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!603 = metadata !{i32 786454, metadata !559, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!604 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !17} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!605 = metadata !{i32 786445, metadata !559, metadata !558, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !606} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!606 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !472, metadata !607, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!607 = metadata !{metadata !608}
!608 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!609 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !92, i32 1231, metadata !556, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!610 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !92, i32 1232, metadata !556, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!611 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !92, i32 1233, metadata !17, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!612 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !92, i32 1234, metadata !17, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!613 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !92, i32 1237, metadata !614, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!614 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !17, metadata !607, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!615 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !92, i32 1238, metadata !614, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!616 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !92, i32 1239, metadata !614, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!617 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !92, i32 1240, metadata !614, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!618 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !92, i32 1241, metadata !614, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!619 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !92, i32 1242, metadata !614, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!620 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !92, i32 1456, metadata !17, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!621 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !92, i32 1465, metadata !17, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!622 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !92, i32 1466, metadata !17, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!623 = metadata !{i32 786484, i32 0, null, metadata !"line", metadata !"line", metadata !"", metadata !11, i32 40, metadata !624, i32 1, i32 1, [16 x i16]* @line, null} ; [ DW_TAG_variable ] [line] [line 40] [local] [def]
!624 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 16, i32 0, i32 0, metadata !16, metadata !498, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 16, offset 0] [from unsigned short]
!625 = metadata !{i32 23, i32 0, metadata !10, null}
!626 = metadata !{i32 25, i32 0, metadata !10, null}
!627 = metadata !{metadata !"any pointer", metadata !628}
!628 = metadata !{metadata !"omnipotent char", metadata !629}
!629 = metadata !{metadata !"Simple C/C++ TBAA"}
!630 = metadata !{metadata !"short", metadata !628}
!631 = metadata !{i32 26, i32 0, metadata !10, null}
!632 = metadata !{i32 28, i32 0, metadata !23, null}
!633 = metadata !{i32 30, i32 0, metadata !23, null}
!634 = metadata !{i32 31, i32 0, metadata !23, null}
!635 = metadata !{i32 42, i32 0, metadata !32, null}
!636 = metadata !{i32 44, i32 0, metadata !32, null}
!637 = metadata !{i32 48, i32 0, metadata !41, null}
!638 = metadata !{i32 53, i32 0, metadata !41, null}
!639 = metadata !{i32 55, i32 0, metadata !41, null}
!640 = metadata !{i32 57, i32 0, metadata !641, null}
!641 = metadata !{i32 786443, metadata !1, metadata !41, i32 55, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!642 = metadata !{i32 58, i32 0, metadata !643, null} ; [ DW_TAG_imported_module ]
!643 = metadata !{i32 786443, metadata !1, metadata !641, i32 58, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!644 = metadata !{i32 62, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !641, i32 62, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!646 = metadata !{i32 59, i32 0, metadata !643, null}
!647 = metadata !{i32 63, i32 0, metadata !645, null}
!648 = metadata !{i32 65, i32 0, metadata !41, null}
!649 = metadata !{i32 68, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !651, i32 68, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!651 = metadata !{i32 786443, metadata !1, metadata !41, i32 65, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!652 = metadata !{i32 69, i32 0, metadata !650, null}
!653 = metadata !{i32 71, i32 0, metadata !651, null}
!654 = metadata !{i32 72, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !651, i32 72, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!656 = metadata !{i32 73, i32 0, metadata !655, null}
!657 = metadata !{i32 76, i32 0, metadata !41, null}
!658 = metadata !{i32 79, i32 0, metadata !41, null}
!659 = metadata !{i32 82, i32 0, metadata !51, null}
!660 = metadata !{i32 84, i32 0, metadata !51, null}
!661 = metadata !{i32 88, i32 0, metadata !61, null}
!662 = metadata !{i32 93, i32 0, metadata !61, null}
!663 = metadata !{i32 95, i32 0, metadata !61, null}
!664 = metadata !{i32 97, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !61, i32 96, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!666 = metadata !{i32 98, i32 0, metadata !667, null}
!667 = metadata !{i32 786443, metadata !1, metadata !665, i32 98, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!668 = metadata !{i32 103, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !1, metadata !665, i32 103, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!670 = metadata !{i32 100, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !667, i32 99, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!672 = metadata !{i32 104, i32 0, metadata !669, null}
!673 = metadata !{i32 106, i32 0, metadata !61, null}
!674 = metadata !{i32 109, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !676, i32 109, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!676 = metadata !{i32 786443, metadata !1, metadata !61, i32 107, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!677 = metadata !{i32 111, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !675, i32 110, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!679 = metadata !{i32 113, i32 0, metadata !676, null}
!680 = metadata !{i32 114, i32 0, metadata !681, null}
!681 = metadata !{i32 786443, metadata !1, metadata !676, i32 114, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!682 = metadata !{i32 116, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !681, i32 115, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!684 = metadata !{i32 121, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !61, i32 120, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!686 = metadata !{i32 125, i32 0, metadata !61, null}
!687 = metadata !{i32 133, i32 0, metadata !72, null}
!688 = metadata !{i32 135, i32 0, metadata !72, null}
!689 = metadata !{i32 136, i32 0, metadata !72, null}
!690 = metadata !{i32 138, i32 0, metadata !72, null}
!691 = metadata !{i32 139, i32 0, metadata !72, null}
!692 = metadata !{i32 141, i32 0, metadata !72, null}
!693 = metadata !{i32 143, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !72, i32 142, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!695 = metadata !{i32 144, i32 0, metadata !694, null}
!696 = metadata !{i32 145, i32 0, metadata !694, null}
!697 = metadata !{i32 146, i32 0, metadata !694, null}
!698 = metadata !{i32 147, i32 0, metadata !694, null}
!699 = metadata !{i32 150, i32 0, metadata !72, null}
!700 = metadata !{i32 152, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !72, i32 151, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/refbuf.c]
!702 = metadata !{i32 153, i32 0, metadata !701, null}
!703 = metadata !{i32 154, i32 0, metadata !701, null}
!704 = metadata !{i32 155, i32 0, metadata !701, null}
!705 = metadata !{i32 156, i32 0, metadata !701, null}
!706 = metadata !{i32 159, i32 0, metadata !72, null}
!707 = metadata !{i32 160, i32 0, metadata !72, null}
!708 = metadata !{i32 161, i32 0, metadata !72, null}
!709 = metadata !{i32 162, i32 0, metadata !72, null}
!710 = metadata !{i32 164, i32 0, metadata !72, null}
!711 = metadata !{i32 165, i32 0, metadata !72, null}
!712 = metadata !{i32 167, i32 0, metadata !83, null}
!713 = metadata !{i32 169, i32 0, metadata !83, null}
